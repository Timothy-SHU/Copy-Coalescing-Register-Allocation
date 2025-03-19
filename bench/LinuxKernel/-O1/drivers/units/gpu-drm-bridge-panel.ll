; ModuleID = 'drivers/gpu/drm/bridge/panel.c'
source_filename = "drivers/gpu/drm/bridge/panel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_bridge_is_panel: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_bridge_is_panel ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_panel_bridge_add: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_panel_bridge_add ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_panel_bridge_add_typed: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_panel_bridge_add_typed ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_panel_bridge_remove: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_panel_bridge_remove ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_panel_bridge_set_orientation: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_panel_bridge_set_orientation ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_drm_panel_bridge_add: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_drm_panel_bridge_add ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_drm_panel_bridge_add_typed: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_drm_panel_bridge_add_typed ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drmm_panel_bridge_add: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drmm_panel_bridge_add ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_panel_bridge_connector: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_panel_bridge_connector ; .previous"

%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.mutex, i8, i8, i8 }
%struct.panel_bridge = type { %struct.drm_bridge, %struct.drm_connector, ptr, i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, ptr, %struct.mutex, i64, i32, ptr, [128 x i8], %struct.mutex, [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.13 }
%union.anon.13 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.14, ptr, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.mutex, %struct.list_head }
%struct.anon.14 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_bridge_state = type { %struct.drm_private_state, ptr, %struct.drm_bus_cfg, %struct.drm_bus_cfg }
%struct.drm_private_state = type { ptr, ptr }
%struct.drm_bus_cfg = type { i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i64, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i64, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }

@panel_bridge_bridge_funcs = internal constant %struct.drm_bridge_funcs { ptr @panel_bridge_attach, ptr @panel_bridge_detach, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @panel_bridge_atomic_pre_enable, ptr @panel_bridge_atomic_enable, ptr @panel_bridge_atomic_disable, ptr @panel_bridge_atomic_post_disable, ptr @drm_atomic_helper_bridge_duplicate_state, ptr @drm_atomic_helper_bridge_destroy_state, ptr null, ptr @drm_atomic_helper_bridge_propagate_bus_fmt, ptr null, ptr @drm_atomic_helper_bridge_reset, ptr null, ptr @panel_bridge_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @panel_bridge_debugfs_init }, align 8, !dbg !0
@__UNIQUE_ID___addressable_drm_bridge_is_panel309 = internal global ptr @drm_bridge_is_panel, section ".discard.addressable", align 8, !dbg !6192
@.str = private unnamed_addr constant [31 x i8] c"drivers/gpu/drm/bridge/panel.c\00", align 1, !dbg !6194
@__UNIQUE_ID___addressable_drm_panel_bridge_add310 = internal global ptr @drm_panel_bridge_add, section ".discard.addressable", align 8, !dbg !6199
@__UNIQUE_ID___addressable_drm_panel_bridge_add_typed311 = internal global ptr @drm_panel_bridge_add_typed, section ".discard.addressable", align 8, !dbg !6201
@__UNIQUE_ID___addressable_drm_panel_bridge_remove312 = internal global ptr @drm_panel_bridge_remove, section ".discard.addressable", align 8, !dbg !6203
@__UNIQUE_ID___addressable_drm_panel_bridge_set_orientation313 = internal global ptr @drm_panel_bridge_set_orientation, section ".discard.addressable", align 8, !dbg !6205
@__UNIQUE_ID___addressable_devm_drm_panel_bridge_add314 = internal global ptr @devm_drm_panel_bridge_add, section ".discard.addressable", align 8, !dbg !6207
@.str.1 = private unnamed_addr constant [30 x i8] c"devm_drm_panel_bridge_release\00", align 1, !dbg !6209
@__UNIQUE_ID___addressable_devm_drm_panel_bridge_add_typed315 = internal global ptr @devm_drm_panel_bridge_add_typed, section ".discard.addressable", align 8, !dbg !6214
@.str.2 = private unnamed_addr constant [30 x i8] c"drmm_drm_panel_bridge_release\00", align 1, !dbg !6216
@__UNIQUE_ID___addressable_drmm_panel_bridge_add316 = internal global ptr @drmm_panel_bridge_add, section ".discard.addressable", align 8, !dbg !6218
@__UNIQUE_ID___addressable_drm_panel_bridge_connector317 = internal global ptr @drm_panel_bridge_connector, section ".discard.addressable", align 8, !dbg !6220
@.str.3 = private unnamed_addr constant [17 x i8] c"Missing encoder\0A\00", align 1, !dbg !6222
@panel_bridge_connector_helper_funcs = internal constant %struct.drm_connector_helper_funcs { ptr @panel_bridge_connector_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !6229
@panel_bridge_connector_funcs = internal constant %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !6231
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to initialize connector\0A\00", align 1, !dbg !6227
@.str.5 = private unnamed_addr constant [6 x i8] c"panel\00", align 1, !dbg !6233
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID___addressable_drm_bridge_is_panel309, ptr @__UNIQUE_ID___addressable_drm_panel_bridge_add310, ptr @__UNIQUE_ID___addressable_drm_panel_bridge_add_typed311, ptr @__UNIQUE_ID___addressable_drm_panel_bridge_remove312, ptr @__UNIQUE_ID___addressable_drm_panel_bridge_set_orientation313, ptr @__UNIQUE_ID___addressable_devm_drm_panel_bridge_add314, ptr @__UNIQUE_ID___addressable_devm_drm_panel_bridge_add_typed315, ptr @__UNIQUE_ID___addressable_drmm_panel_bridge_add316, ptr @__UNIQUE_ID___addressable_drm_panel_bridge_connector317], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @drm_bridge_is_panel(ptr noundef %bridge) #0 align 16 !dbg !6244 {
entry:
  %bridge.addr = alloca ptr, align 8
  store ptr %bridge, ptr %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bridge.addr, metadata !6250, metadata !DIExpression()), !dbg !6251
  %0 = load ptr, ptr %bridge.addr, align 8, !dbg !6252
  %funcs = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 6, !dbg !6253
  %1 = load ptr, ptr %funcs, align 8, !dbg !6253
  %cmp = icmp eq ptr %1, @panel_bridge_bridge_funcs, !dbg !6254
  ret i1 %cmp, !dbg !6255
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @drm_panel_bridge_add(ptr noundef %panel) #0 align 16 !dbg !6256 {
entry:
  %retval = alloca ptr, align 8
  %panel.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %panel, ptr %panel.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %panel.addr, metadata !6260, metadata !DIExpression()), !dbg !6267
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !6268
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6261, metadata !DIExpression()), !dbg !6268
  %0 = load ptr, ptr %panel.addr, align 8, !dbg !6268
  %connector_type = getelementptr inbounds %struct.drm_panel, ptr %0, i32 0, i32 3, !dbg !6268
  %1 = load i32, ptr %connector_type, align 8, !dbg !6268
  %cmp = icmp eq i32 %1, 0, !dbg !6268
  %lnot = xor i1 %cmp, true, !dbg !6268
  %lnot1 = xor i1 %lnot, true, !dbg !6268
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6268
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6268
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !6269
  %tobool = icmp ne i32 %2, 0, !dbg !6269
  %lnot2 = xor i1 %tobool, true, !dbg !6269
  %lnot4 = xor i1 %lnot2, true, !dbg !6269
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !6269
  %conv = sext i32 %lnot.ext5 to i64, !dbg !6269
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6269
  %tobool6 = icmp ne i64 %expval, 0, !dbg !6269
  br i1 %tobool6, label %if.then, label %if.end, !dbg !6268

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6269

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #7, !dbg !6270
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6264, metadata !DIExpression()), !dbg !6270
  store i32 2305, ptr %__flags, align 4, !dbg !6270
  br label %do.body7, !dbg !6270

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !6271

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !6271

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !6270

do.body8:                                         ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !6273
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 268, i32 %3, i64 12) #7, !dbg !6273, !srcloc !6275
  br label %do.cond9, !dbg !6273

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !6273

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !6270

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !6276

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6276

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #7, !dbg !6269
  br label %do.cond14, !dbg !6270

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !6270

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !6270

if.end:                                           ; preds = %do.end15, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !6268
  %tobool16 = icmp ne i32 %4, 0, !dbg !6268
  %lnot17 = xor i1 %tobool16, true, !dbg !6268
  %lnot19 = xor i1 %lnot17, true, !dbg !6268
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !6268
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !6268
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !6268
  store i64 %expval22, ptr %tmp, align 8, !dbg !6269
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !6278
  %5 = load i64, ptr %tmp, align 8, !dbg !6268
  %tobool23 = icmp ne i64 %5, 0, !dbg !6278
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !6279

if.then24:                                        ; preds = %if.end
  %call = call ptr @ERR_PTR(i64 noundef -22) #8, !dbg !6280
  store ptr %call, ptr %retval, align 8, !dbg !6281
  br label %return, !dbg !6281

if.end25:                                         ; preds = %if.end
  %6 = load ptr, ptr %panel.addr, align 8, !dbg !6282
  %7 = load ptr, ptr %panel.addr, align 8, !dbg !6283
  %connector_type26 = getelementptr inbounds %struct.drm_panel, ptr %7, i32 0, i32 3, !dbg !6284
  %8 = load i32, ptr %connector_type26, align 8, !dbg !6284
  %call27 = call ptr @drm_panel_bridge_add_typed(ptr noundef %6, i32 noundef %8) #8, !dbg !6285
  store ptr %call27, ptr %retval, align 8, !dbg !6286
  br label %return, !dbg !6286

return:                                           ; preds = %if.end25, %if.then24
  %9 = load ptr, ptr %retval, align 8, !dbg !6287
  ret ptr %9, !dbg !6287
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #4 align 16 !dbg !6288 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !6293, metadata !DIExpression()), !dbg !6294
  %0 = load i64, ptr %error.addr, align 8, !dbg !6295
  %1 = inttoptr i64 %0 to ptr, !dbg !6296
  ret ptr %1, !dbg !6297
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @drm_panel_bridge_add_typed(ptr noundef %panel, i32 noundef %connector_type) #0 align 16 !dbg !6298 {
entry:
  %retval = alloca ptr, align 8
  %panel.addr = alloca ptr, align 8
  %connector_type.addr = alloca i32, align 4
  %panel_bridge = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %panel, ptr %panel.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %panel.addr, metadata !6302, metadata !DIExpression()), !dbg !6305
  store i32 %connector_type, ptr %connector_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %connector_type.addr, metadata !6303, metadata !DIExpression()), !dbg !6306
  call void @llvm.lifetime.start.p0(i64 8, ptr %panel_bridge) #7, !dbg !6307
  call void @llvm.dbg.declare(metadata ptr %panel_bridge, metadata !6304, metadata !DIExpression()), !dbg !6308
  %0 = load ptr, ptr %panel.addr, align 8, !dbg !6309
  %tobool = icmp ne ptr %0, null, !dbg !6309
  br i1 %tobool, label %if.end, label %if.then, !dbg !6311

if.then:                                          ; preds = %entry
  %call = call ptr @ERR_PTR(i64 noundef -22) #8, !dbg !6312
  store ptr %call, ptr %retval, align 8, !dbg !6313
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6313

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %panel.addr, align 8, !dbg !6314
  %dev = getelementptr inbounds %struct.drm_panel, ptr %1, i32 0, i32 0, !dbg !6315
  %2 = load ptr, ptr %dev, align 8, !dbg !6315
  %call1 = call ptr @devm_kzalloc(ptr noundef %2, i64 noundef 1608, i32 noundef 3264) #8, !dbg !6316
  store ptr %call1, ptr %panel_bridge, align 8, !dbg !6317
  %3 = load ptr, ptr %panel_bridge, align 8, !dbg !6318
  %tobool2 = icmp ne ptr %3, null, !dbg !6318
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !6320

if.then3:                                         ; preds = %if.end
  %call4 = call ptr @ERR_PTR(i64 noundef -12) #8, !dbg !6321
  store ptr %call4, ptr %retval, align 8, !dbg !6322
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6322

if.end5:                                          ; preds = %if.end
  %4 = load i32, ptr %connector_type.addr, align 4, !dbg !6323
  %5 = load ptr, ptr %panel_bridge, align 8, !dbg !6324
  %connector_type6 = getelementptr inbounds %struct.panel_bridge, ptr %5, i32 0, i32 3, !dbg !6325
  store i32 %4, ptr %connector_type6, align 8, !dbg !6326
  %6 = load ptr, ptr %panel.addr, align 8, !dbg !6327
  %7 = load ptr, ptr %panel_bridge, align 8, !dbg !6328
  %panel7 = getelementptr inbounds %struct.panel_bridge, ptr %7, i32 0, i32 2, !dbg !6329
  store ptr %6, ptr %panel7, align 8, !dbg !6330
  %8 = load ptr, ptr %panel_bridge, align 8, !dbg !6331
  %bridge = getelementptr inbounds %struct.panel_bridge, ptr %8, i32 0, i32 0, !dbg !6332
  %funcs = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 6, !dbg !6333
  store ptr @panel_bridge_bridge_funcs, ptr %funcs, align 8, !dbg !6334
  %9 = load ptr, ptr %panel_bridge, align 8, !dbg !6335
  %bridge8 = getelementptr inbounds %struct.panel_bridge, ptr %9, i32 0, i32 0, !dbg !6336
  %ops = getelementptr inbounds %struct.drm_bridge, ptr %bridge8, i32 0, i32 8, !dbg !6337
  store i32 8, ptr %ops, align 8, !dbg !6338
  %10 = load i32, ptr %connector_type.addr, align 4, !dbg !6339
  %11 = load ptr, ptr %panel_bridge, align 8, !dbg !6340
  %bridge9 = getelementptr inbounds %struct.panel_bridge, ptr %11, i32 0, i32 0, !dbg !6341
  %type = getelementptr inbounds %struct.drm_bridge, ptr %bridge9, i32 0, i32 9, !dbg !6342
  store i32 %10, ptr %type, align 4, !dbg !6343
  %12 = load ptr, ptr %panel_bridge, align 8, !dbg !6344
  %bridge10 = getelementptr inbounds %struct.panel_bridge, ptr %12, i32 0, i32 0, !dbg !6345
  call void @drm_bridge_add(ptr noundef %bridge10) #8, !dbg !6346
  %13 = load ptr, ptr %panel_bridge, align 8, !dbg !6347
  %bridge11 = getelementptr inbounds %struct.panel_bridge, ptr %13, i32 0, i32 0, !dbg !6348
  store ptr %bridge11, ptr %retval, align 8, !dbg !6349
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6349

cleanup:                                          ; preds = %if.end5, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %panel_bridge) #7, !dbg !6350
  %14 = load ptr, ptr %retval, align 8, !dbg !6350
  ret ptr %14, !dbg !6350
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @devm_kzalloc(ptr noundef %dev, i64 noundef %size, i32 noundef %gfp) #4 align 16 !dbg !6351 {
entry:
  %dev.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6355, metadata !DIExpression()), !dbg !6358
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6356, metadata !DIExpression()), !dbg !6359
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !6357, metadata !DIExpression()), !dbg !6360
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6361
  %1 = load i64, ptr %size.addr, align 8, !dbg !6362
  %2 = load i32, ptr %gfp.addr, align 4, !dbg !6363
  %or = or i32 %2, 256, !dbg !6364
  %call = call noalias ptr @devm_kmalloc(ptr noundef %0, i64 noundef %1, i32 noundef %or) #9, !dbg !6365
  ret ptr %call, !dbg !6366
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6367 dso_local void @drm_bridge_add(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_panel_bridge_remove(ptr noundef %bridge) #0 align 16 !dbg !6368 {
entry:
  %bridge.addr = alloca ptr, align 8
  %panel_bridge = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bridge, ptr %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bridge.addr, metadata !6370, metadata !DIExpression()), !dbg !6372
  call void @llvm.lifetime.start.p0(i64 8, ptr %panel_bridge) #7, !dbg !6373
  call void @llvm.dbg.declare(metadata ptr %panel_bridge, metadata !6371, metadata !DIExpression()), !dbg !6374
  %0 = load ptr, ptr %bridge.addr, align 8, !dbg !6375
  %tobool = icmp ne ptr %0, null, !dbg !6375
  br i1 %tobool, label %if.end, label %if.then, !dbg !6377

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6378

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %bridge.addr, align 8, !dbg !6379
  %funcs = getelementptr inbounds %struct.drm_bridge, ptr %1, i32 0, i32 6, !dbg !6381
  %2 = load ptr, ptr %funcs, align 8, !dbg !6381
  %cmp = icmp ne ptr %2, @panel_bridge_bridge_funcs, !dbg !6382
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6383

if.then1:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6384

if.end2:                                          ; preds = %if.end
  %3 = load ptr, ptr %bridge.addr, align 8, !dbg !6385
  %call = call ptr @drm_bridge_to_panel_bridge(ptr noundef %3) #8, !dbg !6386
  store ptr %call, ptr %panel_bridge, align 8, !dbg !6387
  %4 = load ptr, ptr %bridge.addr, align 8, !dbg !6388
  call void @drm_bridge_remove(ptr noundef %4) #8, !dbg !6389
  %5 = load ptr, ptr %panel_bridge, align 8, !dbg !6390
  %panel = getelementptr inbounds %struct.panel_bridge, ptr %5, i32 0, i32 2, !dbg !6391
  %6 = load ptr, ptr %panel, align 8, !dbg !6391
  %dev = getelementptr inbounds %struct.drm_panel, ptr %6, i32 0, i32 0, !dbg !6392
  %7 = load ptr, ptr %dev, align 8, !dbg !6392
  %8 = load ptr, ptr %bridge.addr, align 8, !dbg !6393
  call void @devm_kfree(ptr noundef %7, ptr noundef %8) #8, !dbg !6394
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6395
  br label %cleanup, !dbg !6395

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %panel_bridge) #7, !dbg !6395
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6395

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @drm_bridge_to_panel_bridge(ptr noundef %bridge) #4 align 16 !dbg !6396 {
entry:
  %bridge.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %bridge, ptr %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bridge.addr, metadata !6400, metadata !DIExpression()), !dbg !6403
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !6404
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6401, metadata !DIExpression()), !dbg !6404
  %0 = load ptr, ptr %bridge.addr, align 8, !dbg !6404
  store ptr %0, ptr %__mptr, align 8, !dbg !6404
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6404
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6404
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6404
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !6405
  %2 = load ptr, ptr %tmp, align 8, !dbg !6404
  ret ptr %2, !dbg !6406
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6407 dso_local void @drm_bridge_remove(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6408 dso_local void @devm_kfree(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_panel_bridge_set_orientation(ptr noundef %connector, ptr noundef %bridge) #0 align 16 !dbg !6411 {
entry:
  %connector.addr = alloca ptr, align 8
  %bridge.addr = alloca ptr, align 8
  %panel_bridge = alloca ptr, align 8
  store ptr %connector, ptr %connector.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %connector.addr, metadata !6415, metadata !DIExpression()), !dbg !6418
  store ptr %bridge, ptr %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bridge.addr, metadata !6416, metadata !DIExpression()), !dbg !6419
  call void @llvm.lifetime.start.p0(i64 8, ptr %panel_bridge) #7, !dbg !6420
  call void @llvm.dbg.declare(metadata ptr %panel_bridge, metadata !6417, metadata !DIExpression()), !dbg !6421
  %0 = load ptr, ptr %bridge.addr, align 8, !dbg !6422
  %call = call ptr @drm_bridge_to_panel_bridge(ptr noundef %0) #8, !dbg !6423
  store ptr %call, ptr %panel_bridge, align 8, !dbg !6424
  %1 = load ptr, ptr %connector.addr, align 8, !dbg !6425
  %2 = load ptr, ptr %panel_bridge, align 8, !dbg !6426
  %panel = getelementptr inbounds %struct.panel_bridge, ptr %2, i32 0, i32 2, !dbg !6427
  %3 = load ptr, ptr %panel, align 8, !dbg !6427
  %call1 = call i32 @drm_connector_set_orientation_from_panel(ptr noundef %1, ptr noundef %3) #8, !dbg !6428
  call void @llvm.lifetime.end.p0(i64 8, ptr %panel_bridge) #7, !dbg !6429
  ret i32 %call1, !dbg !6430
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6431 dso_local i32 @drm_connector_set_orientation_from_panel(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @devm_drm_panel_bridge_add(ptr noundef %dev, ptr noundef %panel) #0 align 16 !dbg !6434 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %panel.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6438, metadata !DIExpression()), !dbg !6446
  store ptr %panel, ptr %panel.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %panel.addr, metadata !6439, metadata !DIExpression()), !dbg !6447
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !6448
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6440, metadata !DIExpression()), !dbg !6448
  %0 = load ptr, ptr %panel.addr, align 8, !dbg !6448
  %connector_type = getelementptr inbounds %struct.drm_panel, ptr %0, i32 0, i32 3, !dbg !6448
  %1 = load i32, ptr %connector_type, align 8, !dbg !6448
  %cmp = icmp eq i32 %1, 0, !dbg !6448
  %lnot = xor i1 %cmp, true, !dbg !6448
  %lnot1 = xor i1 %lnot, true, !dbg !6448
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6448
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6448
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !6449
  %tobool = icmp ne i32 %2, 0, !dbg !6449
  %lnot2 = xor i1 %tobool, true, !dbg !6449
  %lnot4 = xor i1 %lnot2, true, !dbg !6449
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !6449
  %conv = sext i32 %lnot.ext5 to i64, !dbg !6449
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6449
  %tobool6 = icmp ne i64 %expval, 0, !dbg !6449
  br i1 %tobool6, label %if.then, label %if.end, !dbg !6448

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6449

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #7, !dbg !6450
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6443, metadata !DIExpression()), !dbg !6450
  store i32 2305, ptr %__flags, align 4, !dbg !6450
  br label %do.body7, !dbg !6450

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !6451

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !6451

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !6450

do.body8:                                         ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !6453
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 383, i32 %3, i64 12) #7, !dbg !6453, !srcloc !6455
  br label %do.cond9, !dbg !6453

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !6453

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !6450

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !6456

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6456

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #7, !dbg !6449
  br label %do.cond14, !dbg !6450

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !6450

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !6450

if.end:                                           ; preds = %do.end15, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !6448
  %tobool16 = icmp ne i32 %4, 0, !dbg !6448
  %lnot17 = xor i1 %tobool16, true, !dbg !6448
  %lnot19 = xor i1 %lnot17, true, !dbg !6448
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !6448
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !6448
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !6448
  store i64 %expval22, ptr %tmp, align 8, !dbg !6449
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !6458
  %5 = load i64, ptr %tmp, align 8, !dbg !6448
  %tobool23 = icmp ne i64 %5, 0, !dbg !6458
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !6459

if.then24:                                        ; preds = %if.end
  %call = call ptr @ERR_PTR(i64 noundef -22) #8, !dbg !6460
  store ptr %call, ptr %retval, align 8, !dbg !6461
  br label %return, !dbg !6461

if.end25:                                         ; preds = %if.end
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !6462
  %7 = load ptr, ptr %panel.addr, align 8, !dbg !6463
  %8 = load ptr, ptr %panel.addr, align 8, !dbg !6464
  %connector_type26 = getelementptr inbounds %struct.drm_panel, ptr %8, i32 0, i32 3, !dbg !6465
  %9 = load i32, ptr %connector_type26, align 8, !dbg !6465
  %call27 = call ptr @devm_drm_panel_bridge_add_typed(ptr noundef %6, ptr noundef %7, i32 noundef %9) #8, !dbg !6466
  store ptr %call27, ptr %retval, align 8, !dbg !6467
  br label %return, !dbg !6467

return:                                           ; preds = %if.end25, %if.then24
  %10 = load ptr, ptr %retval, align 8, !dbg !6468
  ret ptr %10, !dbg !6468
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @devm_drm_panel_bridge_add_typed(ptr noundef %dev, ptr noundef %panel, i32 noundef %connector_type) #0 align 16 !dbg !6469 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %panel.addr = alloca ptr, align 8
  %connector_type.addr = alloca i32, align 4
  %ptr = alloca ptr, align 8
  %bridge = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6473, metadata !DIExpression()), !dbg !6478
  store ptr %panel, ptr %panel.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %panel.addr, metadata !6474, metadata !DIExpression()), !dbg !6479
  store i32 %connector_type, ptr %connector_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %connector_type.addr, metadata !6475, metadata !DIExpression()), !dbg !6480
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #7, !dbg !6481
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !6476, metadata !DIExpression()), !dbg !6482
  call void @llvm.lifetime.start.p0(i64 8, ptr %bridge) #7, !dbg !6481
  call void @llvm.dbg.declare(metadata ptr %bridge, metadata !6477, metadata !DIExpression()), !dbg !6483
  %call = call noalias ptr @__devres_alloc_node(ptr noundef @devm_drm_panel_bridge_release, i64 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef @.str.1) #8, !dbg !6484
  store ptr %call, ptr %ptr, align 8, !dbg !6485
  %0 = load ptr, ptr %ptr, align 8, !dbg !6486
  %tobool = icmp ne ptr %0, null, !dbg !6486
  br i1 %tobool, label %if.end, label %if.then, !dbg !6488

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -12) #8, !dbg !6489
  store ptr %call1, ptr %retval, align 8, !dbg !6490
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6490

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %panel.addr, align 8, !dbg !6491
  %2 = load i32, ptr %connector_type.addr, align 4, !dbg !6492
  %call2 = call ptr @drm_panel_bridge_add_typed(ptr noundef %1, i32 noundef %2) #8, !dbg !6493
  store ptr %call2, ptr %bridge, align 8, !dbg !6494
  %3 = load ptr, ptr %bridge, align 8, !dbg !6495
  %call3 = call zeroext i1 @IS_ERR(ptr noundef %3) #8, !dbg !6497
  br i1 %call3, label %if.then4, label %if.end5, !dbg !6498

if.then4:                                         ; preds = %if.end
  %4 = load ptr, ptr %ptr, align 8, !dbg !6499
  call void @devres_free(ptr noundef %4) #8, !dbg !6501
  %5 = load ptr, ptr %bridge, align 8, !dbg !6502
  store ptr %5, ptr %retval, align 8, !dbg !6503
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6503

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %panel.addr, align 8, !dbg !6504
  %prepare_prev_first = getelementptr inbounds %struct.drm_panel, ptr %6, i32 0, i32 7, !dbg !6505
  %7 = load i8, ptr %prepare_prev_first, align 8, !dbg !6505, !range !6506, !noundef !760
  %tobool6 = trunc i8 %7 to i1, !dbg !6505
  %8 = load ptr, ptr %bridge, align 8, !dbg !6507
  %pre_enable_prev_first = getelementptr inbounds %struct.drm_bridge, ptr %8, i32 0, i32 11, !dbg !6508
  %frombool = zext i1 %tobool6 to i8, !dbg !6509
  store i8 %frombool, ptr %pre_enable_prev_first, align 1, !dbg !6509
  %9 = load ptr, ptr %bridge, align 8, !dbg !6510
  %10 = load ptr, ptr %ptr, align 8, !dbg !6511
  store ptr %9, ptr %10, align 8, !dbg !6512
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !6513
  %12 = load ptr, ptr %ptr, align 8, !dbg !6514
  call void @devres_add(ptr noundef %11, ptr noundef %12) #8, !dbg !6515
  %13 = load ptr, ptr %bridge, align 8, !dbg !6516
  store ptr %13, ptr %retval, align 8, !dbg !6517
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6517

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bridge) #7, !dbg !6518
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #7, !dbg !6518
  %14 = load ptr, ptr %retval, align 8, !dbg !6518
  ret ptr %14, !dbg !6518
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6519 dso_local noalias ptr @__devres_alloc_node(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @devm_drm_panel_bridge_release(ptr noundef %dev, ptr noundef %res) #0 align 16 !dbg !6526 {
entry:
  %dev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %bridge = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6528, metadata !DIExpression()), !dbg !6531
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6529, metadata !DIExpression()), !dbg !6532
  call void @llvm.lifetime.start.p0(i64 8, ptr %bridge) #7, !dbg !6533
  call void @llvm.dbg.declare(metadata ptr %bridge, metadata !6530, metadata !DIExpression()), !dbg !6534
  %0 = load ptr, ptr %res.addr, align 8, !dbg !6535
  %1 = load ptr, ptr %0, align 8, !dbg !6536
  store ptr %1, ptr %bridge, align 8, !dbg !6534
  %2 = load ptr, ptr %bridge, align 8, !dbg !6537
  %tobool = icmp ne ptr %2, null, !dbg !6537
  br i1 %tobool, label %if.end, label %if.then, !dbg !6539

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6540

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %bridge, align 8, !dbg !6541
  call void @drm_bridge_remove(ptr noundef %3) #8, !dbg !6542
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6543
  br label %cleanup, !dbg !6543

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bridge) #7, !dbg !6543
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6543

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !6544 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6548, metadata !DIExpression()), !dbg !6549
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6550
  %1 = ptrtoint ptr %0 to i64, !dbg !6550
  %2 = inttoptr i64 %1 to ptr, !dbg !6550
  %3 = ptrtoint ptr %2 to i64, !dbg !6550
  %cmp = icmp uge i64 %3, -4095, !dbg !6550
  %lnot = xor i1 %cmp, true, !dbg !6550
  %lnot1 = xor i1 %lnot, true, !dbg !6550
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6550
  %conv = sext i32 %lnot.ext to i64, !dbg !6550
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6550
  %tobool = icmp ne i64 %expval, 0, !dbg !6550
  ret i1 %tobool, !dbg !6551
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6552 dso_local void @devres_free(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6553 dso_local void @devres_add(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @drmm_panel_bridge_add(ptr noundef %drm, ptr noundef %panel) #0 align 16 !dbg !6554 {
entry:
  %retval = alloca ptr, align 8
  %drm.addr = alloca ptr, align 8
  %panel.addr = alloca ptr, align 8
  %bridge = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %drm, ptr %drm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drm.addr, metadata !6558, metadata !DIExpression()), !dbg !6562
  store ptr %panel, ptr %panel.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %panel.addr, metadata !6559, metadata !DIExpression()), !dbg !6563
  call void @llvm.lifetime.start.p0(i64 8, ptr %bridge) #7, !dbg !6564
  call void @llvm.dbg.declare(metadata ptr %bridge, metadata !6560, metadata !DIExpression()), !dbg !6565
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !6566
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6561, metadata !DIExpression()), !dbg !6567
  %0 = load ptr, ptr %panel.addr, align 8, !dbg !6568
  %1 = load ptr, ptr %panel.addr, align 8, !dbg !6569
  %connector_type = getelementptr inbounds %struct.drm_panel, ptr %1, i32 0, i32 3, !dbg !6570
  %2 = load i32, ptr %connector_type, align 8, !dbg !6570
  %call = call ptr @drm_panel_bridge_add_typed(ptr noundef %0, i32 noundef %2) #8, !dbg !6571
  store ptr %call, ptr %bridge, align 8, !dbg !6572
  %3 = load ptr, ptr %bridge, align 8, !dbg !6573
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %3) #8, !dbg !6575
  br i1 %call1, label %if.then, label %if.end, !dbg !6576

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %bridge, align 8, !dbg !6577
  store ptr %4, ptr %retval, align 8, !dbg !6578
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6578

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %drm.addr, align 8, !dbg !6579
  %6 = load ptr, ptr %bridge, align 8, !dbg !6579
  %call2 = call i32 @__drmm_add_action_or_reset(ptr noundef %5, ptr noundef @drmm_drm_panel_bridge_release, ptr noundef %6, ptr noundef @.str.2) #8, !dbg !6579
  store i32 %call2, ptr %ret, align 4, !dbg !6580
  %7 = load i32, ptr %ret, align 4, !dbg !6581
  %tobool = icmp ne i32 %7, 0, !dbg !6581
  br i1 %tobool, label %if.then3, label %if.end5, !dbg !6583

if.then3:                                         ; preds = %if.end
  %8 = load i32, ptr %ret, align 4, !dbg !6584
  %conv = sext i32 %8 to i64, !dbg !6584
  %call4 = call ptr @ERR_PTR(i64 noundef %conv) #8, !dbg !6585
  store ptr %call4, ptr %retval, align 8, !dbg !6586
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6586

if.end5:                                          ; preds = %if.end
  %9 = load ptr, ptr %panel.addr, align 8, !dbg !6587
  %prepare_prev_first = getelementptr inbounds %struct.drm_panel, ptr %9, i32 0, i32 7, !dbg !6588
  %10 = load i8, ptr %prepare_prev_first, align 8, !dbg !6588, !range !6506, !noundef !760
  %tobool6 = trunc i8 %10 to i1, !dbg !6588
  %11 = load ptr, ptr %bridge, align 8, !dbg !6589
  %pre_enable_prev_first = getelementptr inbounds %struct.drm_bridge, ptr %11, i32 0, i32 11, !dbg !6590
  %frombool = zext i1 %tobool6 to i8, !dbg !6591
  store i8 %frombool, ptr %pre_enable_prev_first, align 1, !dbg !6591
  %12 = load ptr, ptr %bridge, align 8, !dbg !6592
  store ptr %12, ptr %retval, align 8, !dbg !6593
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6593

cleanup:                                          ; preds = %if.end5, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !6594
  call void @llvm.lifetime.end.p0(i64 8, ptr %bridge) #7, !dbg !6594
  %13 = load ptr, ptr %retval, align 8, !dbg !6594
  ret ptr %13, !dbg !6594
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6595 dso_local i32 @__drmm_add_action_or_reset(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drmm_drm_panel_bridge_release(ptr noundef %drm, ptr noundef %ptr) #0 align 16 !dbg !6603 {
entry:
  %drm.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %bridge = alloca ptr, align 8
  store ptr %drm, ptr %drm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drm.addr, metadata !6605, metadata !DIExpression()), !dbg !6608
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6606, metadata !DIExpression()), !dbg !6609
  call void @llvm.lifetime.start.p0(i64 8, ptr %bridge) #7, !dbg !6610
  call void @llvm.dbg.declare(metadata ptr %bridge, metadata !6607, metadata !DIExpression()), !dbg !6611
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6612
  store ptr %0, ptr %bridge, align 8, !dbg !6611
  %1 = load ptr, ptr %bridge, align 8, !dbg !6613
  call void @drm_panel_bridge_remove(ptr noundef %1) #8, !dbg !6614
  call void @llvm.lifetime.end.p0(i64 8, ptr %bridge) #7, !dbg !6615
  ret void, !dbg !6615
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @drm_panel_bridge_connector(ptr noundef %bridge) #0 align 16 !dbg !6616 {
entry:
  %bridge.addr = alloca ptr, align 8
  %panel_bridge = alloca ptr, align 8
  store ptr %bridge, ptr %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bridge.addr, metadata !6620, metadata !DIExpression()), !dbg !6622
  call void @llvm.lifetime.start.p0(i64 8, ptr %panel_bridge) #7, !dbg !6623
  call void @llvm.dbg.declare(metadata ptr %panel_bridge, metadata !6621, metadata !DIExpression()), !dbg !6624
  %0 = load ptr, ptr %bridge.addr, align 8, !dbg !6625
  %call = call ptr @drm_bridge_to_panel_bridge(ptr noundef %0) #8, !dbg !6626
  store ptr %call, ptr %panel_bridge, align 8, !dbg !6627
  %1 = load ptr, ptr %panel_bridge, align 8, !dbg !6628
  %connector = getelementptr inbounds %struct.panel_bridge, ptr %1, i32 0, i32 1, !dbg !6629
  call void @llvm.lifetime.end.p0(i64 8, ptr %panel_bridge) #7, !dbg !6630
  ret ptr %connector, !dbg !6631
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @panel_bridge_attach(ptr noundef %bridge, i32 noundef %flags) #0 align 16 !dbg !6632 {
entry:
  %retval = alloca i32, align 4
  %bridge.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %panel_bridge = alloca ptr, align 8
  %connector = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bridge, ptr %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bridge.addr, metadata !6634, metadata !DIExpression()), !dbg !6639
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6635, metadata !DIExpression()), !dbg !6640
  call void @llvm.lifetime.start.p0(i64 8, ptr %panel_bridge) #7, !dbg !6641
  call void @llvm.dbg.declare(metadata ptr %panel_bridge, metadata !6636, metadata !DIExpression()), !dbg !6642
  %0 = load ptr, ptr %bridge.addr, align 8, !dbg !6643
  %call = call ptr @drm_bridge_to_panel_bridge(ptr noundef %0) #8, !dbg !6644
  store ptr %call, ptr %panel_bridge, align 8, !dbg !6642
  call void @llvm.lifetime.start.p0(i64 8, ptr %connector) #7, !dbg !6645
  call void @llvm.dbg.declare(metadata ptr %connector, metadata !6637, metadata !DIExpression()), !dbg !6646
  %1 = load ptr, ptr %panel_bridge, align 8, !dbg !6647
  %connector1 = getelementptr inbounds %struct.panel_bridge, ptr %1, i32 0, i32 1, !dbg !6648
  store ptr %connector1, ptr %connector, align 8, !dbg !6646
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !6649
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6638, metadata !DIExpression()), !dbg !6650
  %2 = load i32, ptr %flags.addr, align 4, !dbg !6651
  %and = and i32 %2, 1, !dbg !6653
  %tobool = icmp ne i32 %and, 0, !dbg !6653
  br i1 %tobool, label %if.then, label %if.end, !dbg !6654

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6655
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6655

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %bridge.addr, align 8, !dbg !6656
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %3, i32 0, i32 2, !dbg !6658
  %4 = load ptr, ptr %encoder, align 8, !dbg !6658
  %tobool2 = icmp ne ptr %4, null, !dbg !6656
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !6659

if.then3:                                         ; preds = %if.end
  call void (ptr, ...) @__drm_err(ptr noundef @.str.3) #8, !dbg !6660
  store i32 -19, ptr %retval, align 4, !dbg !6662
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6662

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %connector, align 8, !dbg !6663
  call void @drm_connector_helper_add(ptr noundef %5, ptr noundef @panel_bridge_connector_helper_funcs) #8, !dbg !6664
  %6 = load ptr, ptr %bridge.addr, align 8, !dbg !6665
  %dev = getelementptr inbounds %struct.drm_bridge, ptr %6, i32 0, i32 1, !dbg !6666
  %7 = load ptr, ptr %dev, align 8, !dbg !6666
  %8 = load ptr, ptr %connector, align 8, !dbg !6667
  %9 = load ptr, ptr %panel_bridge, align 8, !dbg !6668
  %connector_type = getelementptr inbounds %struct.panel_bridge, ptr %9, i32 0, i32 3, !dbg !6669
  %10 = load i32, ptr %connector_type, align 8, !dbg !6669
  %call5 = call i32 @drm_connector_init(ptr noundef %7, ptr noundef %8, ptr noundef @panel_bridge_connector_funcs, i32 noundef %10) #8, !dbg !6670
  store i32 %call5, ptr %ret, align 4, !dbg !6671
  %11 = load i32, ptr %ret, align 4, !dbg !6672
  %tobool6 = icmp ne i32 %11, 0, !dbg !6672
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !6674

if.then7:                                         ; preds = %if.end4
  call void (ptr, ...) @__drm_err(ptr noundef @.str.4) #8, !dbg !6675
  %12 = load i32, ptr %ret, align 4, !dbg !6677
  store i32 %12, ptr %retval, align 4, !dbg !6678
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6678

if.end8:                                          ; preds = %if.end4
  %13 = load ptr, ptr %connector, align 8, !dbg !6679
  %14 = load ptr, ptr %bridge.addr, align 8, !dbg !6680
  %call9 = call i32 @drm_panel_bridge_set_orientation(ptr noundef %13, ptr noundef %14) #8, !dbg !6681
  %15 = load ptr, ptr %panel_bridge, align 8, !dbg !6682
  %connector10 = getelementptr inbounds %struct.panel_bridge, ptr %15, i32 0, i32 1, !dbg !6683
  %16 = load ptr, ptr %bridge.addr, align 8, !dbg !6684
  %encoder11 = getelementptr inbounds %struct.drm_bridge, ptr %16, i32 0, i32 2, !dbg !6685
  %17 = load ptr, ptr %encoder11, align 8, !dbg !6685
  %call12 = call i32 @drm_connector_attach_encoder(ptr noundef %connector10, ptr noundef %17) #8, !dbg !6686
  %18 = load ptr, ptr %bridge.addr, align 8, !dbg !6687
  %dev13 = getelementptr inbounds %struct.drm_bridge, ptr %18, i32 0, i32 1, !dbg !6689
  %19 = load ptr, ptr %dev13, align 8, !dbg !6689
  %registered = getelementptr inbounds %struct.drm_device, ptr %19, i32 0, i32 9, !dbg !6690
  %20 = load i8, ptr %registered, align 8, !dbg !6690, !range !6506, !noundef !760
  %tobool14 = trunc i8 %20 to i1, !dbg !6690
  br i1 %tobool14, label %if.then15, label %if.end22, !dbg !6691

if.then15:                                        ; preds = %if.end8
  %21 = load ptr, ptr %connector, align 8, !dbg !6692
  %funcs = getelementptr inbounds %struct.drm_connector, ptr %21, i32 0, i32 21, !dbg !6695
  %22 = load ptr, ptr %funcs, align 8, !dbg !6695
  %reset = getelementptr inbounds %struct.drm_connector_funcs, ptr %22, i32 0, i32 1, !dbg !6696
  %23 = load ptr, ptr %reset, align 8, !dbg !6696
  %tobool16 = icmp ne ptr %23, null, !dbg !6692
  br i1 %tobool16, label %if.then17, label %if.end20, !dbg !6697

if.then17:                                        ; preds = %if.then15
  %24 = load ptr, ptr %connector, align 8, !dbg !6698
  %funcs18 = getelementptr inbounds %struct.drm_connector, ptr %24, i32 0, i32 21, !dbg !6699
  %25 = load ptr, ptr %funcs18, align 8, !dbg !6699
  %reset19 = getelementptr inbounds %struct.drm_connector_funcs, ptr %25, i32 0, i32 1, !dbg !6700
  %26 = load ptr, ptr %reset19, align 8, !dbg !6700
  %27 = load ptr, ptr %connector, align 8, !dbg !6701
  call void %26(ptr noundef %27) #8, !dbg !6698
  br label %if.end20, !dbg !6698

if.end20:                                         ; preds = %if.then17, %if.then15
  %28 = load ptr, ptr %connector, align 8, !dbg !6702
  %call21 = call i32 @drm_connector_register(ptr noundef %28) #8, !dbg !6703
  br label %if.end22, !dbg !6704

if.end22:                                         ; preds = %if.end20, %if.end8
  store i32 0, ptr %retval, align 4, !dbg !6705
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6705

cleanup:                                          ; preds = %if.end22, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !6706
  call void @llvm.lifetime.end.p0(i64 8, ptr %connector) #7, !dbg !6706
  call void @llvm.lifetime.end.p0(i64 8, ptr %panel_bridge) #7, !dbg !6706
  %29 = load i32, ptr %retval, align 4, !dbg !6706
  ret i32 %29, !dbg !6706
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @panel_bridge_detach(ptr noundef %bridge) #0 align 16 !dbg !6707 {
entry:
  %bridge.addr = alloca ptr, align 8
  %panel_bridge = alloca ptr, align 8
  %connector = alloca ptr, align 8
  store ptr %bridge, ptr %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bridge.addr, metadata !6709, metadata !DIExpression()), !dbg !6712
  call void @llvm.lifetime.start.p0(i64 8, ptr %panel_bridge) #7, !dbg !6713
  call void @llvm.dbg.declare(metadata ptr %panel_bridge, metadata !6710, metadata !DIExpression()), !dbg !6714
  %0 = load ptr, ptr %bridge.addr, align 8, !dbg !6715
  %call = call ptr @drm_bridge_to_panel_bridge(ptr noundef %0) #8, !dbg !6716
  store ptr %call, ptr %panel_bridge, align 8, !dbg !6714
  call void @llvm.lifetime.start.p0(i64 8, ptr %connector) #7, !dbg !6717
  call void @llvm.dbg.declare(metadata ptr %connector, metadata !6711, metadata !DIExpression()), !dbg !6718
  %1 = load ptr, ptr %panel_bridge, align 8, !dbg !6719
  %connector1 = getelementptr inbounds %struct.panel_bridge, ptr %1, i32 0, i32 1, !dbg !6720
  store ptr %connector1, ptr %connector, align 8, !dbg !6718
  %2 = load ptr, ptr %connector, align 8, !dbg !6721
  %dev = getelementptr inbounds %struct.drm_connector, ptr %2, i32 0, i32 0, !dbg !6723
  %3 = load ptr, ptr %dev, align 8, !dbg !6723
  %tobool = icmp ne ptr %3, null, !dbg !6721
  br i1 %tobool, label %if.then, label %if.end, !dbg !6724

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %connector, align 8, !dbg !6725
  call void @drm_connector_cleanup(ptr noundef %4) #8, !dbg !6726
  br label %if.end, !dbg !6726

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %connector) #7, !dbg !6727
  call void @llvm.lifetime.end.p0(i64 8, ptr %panel_bridge) #7, !dbg !6727
  ret void, !dbg !6727
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @panel_bridge_atomic_pre_enable(ptr noundef %bridge, ptr noundef %old_bridge_state) #0 align 16 !dbg !6728 {
entry:
  %bridge.addr = alloca ptr, align 8
  %old_bridge_state.addr = alloca ptr, align 8
  %panel_bridge = alloca ptr, align 8
  %atomic_state = alloca ptr, align 8
  %encoder = alloca ptr, align 8
  %crtc = alloca ptr, align 8
  %old_crtc_state = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bridge, ptr %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bridge.addr, metadata !6730, metadata !DIExpression()), !dbg !6737
  store ptr %old_bridge_state, ptr %old_bridge_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old_bridge_state.addr, metadata !6731, metadata !DIExpression()), !dbg !6738
  call void @llvm.lifetime.start.p0(i64 8, ptr %panel_bridge) #7, !dbg !6739
  call void @llvm.dbg.declare(metadata ptr %panel_bridge, metadata !6732, metadata !DIExpression()), !dbg !6740
  %0 = load ptr, ptr %bridge.addr, align 8, !dbg !6741
  %call = call ptr @drm_bridge_to_panel_bridge(ptr noundef %0) #8, !dbg !6742
  store ptr %call, ptr %panel_bridge, align 8, !dbg !6740
  call void @llvm.lifetime.start.p0(i64 8, ptr %atomic_state) #7, !dbg !6743
  call void @llvm.dbg.declare(metadata ptr %atomic_state, metadata !6733, metadata !DIExpression()), !dbg !6744
  %1 = load ptr, ptr %old_bridge_state.addr, align 8, !dbg !6745
  %base = getelementptr inbounds %struct.drm_bridge_state, ptr %1, i32 0, i32 0, !dbg !6746
  %state = getelementptr inbounds %struct.drm_private_state, ptr %base, i32 0, i32 0, !dbg !6747
  %2 = load ptr, ptr %state, align 8, !dbg !6747
  store ptr %2, ptr %atomic_state, align 8, !dbg !6744
  call void @llvm.lifetime.start.p0(i64 8, ptr %encoder) #7, !dbg !6748
  call void @llvm.dbg.declare(metadata ptr %encoder, metadata !6734, metadata !DIExpression()), !dbg !6749
  %3 = load ptr, ptr %bridge.addr, align 8, !dbg !6750
  %encoder1 = getelementptr inbounds %struct.drm_bridge, ptr %3, i32 0, i32 2, !dbg !6751
  %4 = load ptr, ptr %encoder1, align 8, !dbg !6751
  store ptr %4, ptr %encoder, align 8, !dbg !6749
  call void @llvm.lifetime.start.p0(i64 8, ptr %crtc) #7, !dbg !6752
  call void @llvm.dbg.declare(metadata ptr %crtc, metadata !6735, metadata !DIExpression()), !dbg !6753
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_crtc_state) #7, !dbg !6754
  call void @llvm.dbg.declare(metadata ptr %old_crtc_state, metadata !6736, metadata !DIExpression()), !dbg !6755
  %5 = load ptr, ptr %atomic_state, align 8, !dbg !6756
  %6 = load ptr, ptr %encoder, align 8, !dbg !6757
  %call2 = call ptr @drm_atomic_get_new_crtc_for_encoder(ptr noundef %5, ptr noundef %6) #8, !dbg !6758
  store ptr %call2, ptr %crtc, align 8, !dbg !6759
  %7 = load ptr, ptr %crtc, align 8, !dbg !6760
  %tobool = icmp ne ptr %7, null, !dbg !6760
  br i1 %tobool, label %if.end, label %if.then, !dbg !6762

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6763

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %atomic_state, align 8, !dbg !6764
  %9 = load ptr, ptr %crtc, align 8, !dbg !6765
  %call3 = call ptr @drm_atomic_get_old_crtc_state(ptr noundef %8, ptr noundef %9) #8, !dbg !6766
  store ptr %call3, ptr %old_crtc_state, align 8, !dbg !6767
  %10 = load ptr, ptr %old_crtc_state, align 8, !dbg !6768
  %tobool4 = icmp ne ptr %10, null, !dbg !6768
  br i1 %tobool4, label %land.lhs.true, label %if.end7, !dbg !6770

land.lhs.true:                                    ; preds = %if.end
  %11 = load ptr, ptr %old_crtc_state, align 8, !dbg !6771
  %self_refresh_active = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 16, !dbg !6772
  %12 = load i8, ptr %self_refresh_active, align 2, !dbg !6772, !range !6506, !noundef !760
  %tobool5 = trunc i8 %12 to i1, !dbg !6772
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !6773

if.then6:                                         ; preds = %land.lhs.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6774

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %13 = load ptr, ptr %panel_bridge, align 8, !dbg !6775
  %panel = getelementptr inbounds %struct.panel_bridge, ptr %13, i32 0, i32 2, !dbg !6776
  %14 = load ptr, ptr %panel, align 8, !dbg !6776
  %call8 = call i32 @drm_panel_prepare(ptr noundef %14) #8, !dbg !6777
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6778
  br label %cleanup, !dbg !6778

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_crtc_state) #7, !dbg !6778
  call void @llvm.lifetime.end.p0(i64 8, ptr %crtc) #7, !dbg !6778
  call void @llvm.lifetime.end.p0(i64 8, ptr %encoder) #7, !dbg !6778
  call void @llvm.lifetime.end.p0(i64 8, ptr %atomic_state) #7, !dbg !6778
  call void @llvm.lifetime.end.p0(i64 8, ptr %panel_bridge) #7, !dbg !6778
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6778

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @panel_bridge_atomic_enable(ptr noundef %bridge, ptr noundef %old_bridge_state) #0 align 16 !dbg !6779 {
entry:
  %bridge.addr = alloca ptr, align 8
  %old_bridge_state.addr = alloca ptr, align 8
  %panel_bridge = alloca ptr, align 8
  %atomic_state = alloca ptr, align 8
  %encoder = alloca ptr, align 8
  %crtc = alloca ptr, align 8
  %old_crtc_state = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bridge, ptr %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bridge.addr, metadata !6781, metadata !DIExpression()), !dbg !6788
  store ptr %old_bridge_state, ptr %old_bridge_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old_bridge_state.addr, metadata !6782, metadata !DIExpression()), !dbg !6789
  call void @llvm.lifetime.start.p0(i64 8, ptr %panel_bridge) #7, !dbg !6790
  call void @llvm.dbg.declare(metadata ptr %panel_bridge, metadata !6783, metadata !DIExpression()), !dbg !6791
  %0 = load ptr, ptr %bridge.addr, align 8, !dbg !6792
  %call = call ptr @drm_bridge_to_panel_bridge(ptr noundef %0) #8, !dbg !6793
  store ptr %call, ptr %panel_bridge, align 8, !dbg !6791
  call void @llvm.lifetime.start.p0(i64 8, ptr %atomic_state) #7, !dbg !6794
  call void @llvm.dbg.declare(metadata ptr %atomic_state, metadata !6784, metadata !DIExpression()), !dbg !6795
  %1 = load ptr, ptr %old_bridge_state.addr, align 8, !dbg !6796
  %base = getelementptr inbounds %struct.drm_bridge_state, ptr %1, i32 0, i32 0, !dbg !6797
  %state = getelementptr inbounds %struct.drm_private_state, ptr %base, i32 0, i32 0, !dbg !6798
  %2 = load ptr, ptr %state, align 8, !dbg !6798
  store ptr %2, ptr %atomic_state, align 8, !dbg !6795
  call void @llvm.lifetime.start.p0(i64 8, ptr %encoder) #7, !dbg !6799
  call void @llvm.dbg.declare(metadata ptr %encoder, metadata !6785, metadata !DIExpression()), !dbg !6800
  %3 = load ptr, ptr %bridge.addr, align 8, !dbg !6801
  %encoder1 = getelementptr inbounds %struct.drm_bridge, ptr %3, i32 0, i32 2, !dbg !6802
  %4 = load ptr, ptr %encoder1, align 8, !dbg !6802
  store ptr %4, ptr %encoder, align 8, !dbg !6800
  call void @llvm.lifetime.start.p0(i64 8, ptr %crtc) #7, !dbg !6803
  call void @llvm.dbg.declare(metadata ptr %crtc, metadata !6786, metadata !DIExpression()), !dbg !6804
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_crtc_state) #7, !dbg !6805
  call void @llvm.dbg.declare(metadata ptr %old_crtc_state, metadata !6787, metadata !DIExpression()), !dbg !6806
  %5 = load ptr, ptr %atomic_state, align 8, !dbg !6807
  %6 = load ptr, ptr %encoder, align 8, !dbg !6808
  %call2 = call ptr @drm_atomic_get_new_crtc_for_encoder(ptr noundef %5, ptr noundef %6) #8, !dbg !6809
  store ptr %call2, ptr %crtc, align 8, !dbg !6810
  %7 = load ptr, ptr %crtc, align 8, !dbg !6811
  %tobool = icmp ne ptr %7, null, !dbg !6811
  br i1 %tobool, label %if.end, label %if.then, !dbg !6813

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6814

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %atomic_state, align 8, !dbg !6815
  %9 = load ptr, ptr %crtc, align 8, !dbg !6816
  %call3 = call ptr @drm_atomic_get_old_crtc_state(ptr noundef %8, ptr noundef %9) #8, !dbg !6817
  store ptr %call3, ptr %old_crtc_state, align 8, !dbg !6818
  %10 = load ptr, ptr %old_crtc_state, align 8, !dbg !6819
  %tobool4 = icmp ne ptr %10, null, !dbg !6819
  br i1 %tobool4, label %land.lhs.true, label %if.end7, !dbg !6821

land.lhs.true:                                    ; preds = %if.end
  %11 = load ptr, ptr %old_crtc_state, align 8, !dbg !6822
  %self_refresh_active = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 16, !dbg !6823
  %12 = load i8, ptr %self_refresh_active, align 2, !dbg !6823, !range !6506, !noundef !760
  %tobool5 = trunc i8 %12 to i1, !dbg !6823
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !6824

if.then6:                                         ; preds = %land.lhs.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6825

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %13 = load ptr, ptr %panel_bridge, align 8, !dbg !6826
  %panel = getelementptr inbounds %struct.panel_bridge, ptr %13, i32 0, i32 2, !dbg !6827
  %14 = load ptr, ptr %panel, align 8, !dbg !6827
  %call8 = call i32 @drm_panel_enable(ptr noundef %14) #8, !dbg !6828
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6829
  br label %cleanup, !dbg !6829

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_crtc_state) #7, !dbg !6829
  call void @llvm.lifetime.end.p0(i64 8, ptr %crtc) #7, !dbg !6829
  call void @llvm.lifetime.end.p0(i64 8, ptr %encoder) #7, !dbg !6829
  call void @llvm.lifetime.end.p0(i64 8, ptr %atomic_state) #7, !dbg !6829
  call void @llvm.lifetime.end.p0(i64 8, ptr %panel_bridge) #7, !dbg !6829
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6829

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @panel_bridge_atomic_disable(ptr noundef %bridge, ptr noundef %old_bridge_state) #0 align 16 !dbg !6830 {
entry:
  %bridge.addr = alloca ptr, align 8
  %old_bridge_state.addr = alloca ptr, align 8
  %panel_bridge = alloca ptr, align 8
  %atomic_state = alloca ptr, align 8
  %encoder = alloca ptr, align 8
  %crtc = alloca ptr, align 8
  %new_crtc_state = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bridge, ptr %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bridge.addr, metadata !6832, metadata !DIExpression()), !dbg !6839
  store ptr %old_bridge_state, ptr %old_bridge_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old_bridge_state.addr, metadata !6833, metadata !DIExpression()), !dbg !6840
  call void @llvm.lifetime.start.p0(i64 8, ptr %panel_bridge) #7, !dbg !6841
  call void @llvm.dbg.declare(metadata ptr %panel_bridge, metadata !6834, metadata !DIExpression()), !dbg !6842
  %0 = load ptr, ptr %bridge.addr, align 8, !dbg !6843
  %call = call ptr @drm_bridge_to_panel_bridge(ptr noundef %0) #8, !dbg !6844
  store ptr %call, ptr %panel_bridge, align 8, !dbg !6842
  call void @llvm.lifetime.start.p0(i64 8, ptr %atomic_state) #7, !dbg !6845
  call void @llvm.dbg.declare(metadata ptr %atomic_state, metadata !6835, metadata !DIExpression()), !dbg !6846
  %1 = load ptr, ptr %old_bridge_state.addr, align 8, !dbg !6847
  %base = getelementptr inbounds %struct.drm_bridge_state, ptr %1, i32 0, i32 0, !dbg !6848
  %state = getelementptr inbounds %struct.drm_private_state, ptr %base, i32 0, i32 0, !dbg !6849
  %2 = load ptr, ptr %state, align 8, !dbg !6849
  store ptr %2, ptr %atomic_state, align 8, !dbg !6846
  call void @llvm.lifetime.start.p0(i64 8, ptr %encoder) #7, !dbg !6850
  call void @llvm.dbg.declare(metadata ptr %encoder, metadata !6836, metadata !DIExpression()), !dbg !6851
  %3 = load ptr, ptr %bridge.addr, align 8, !dbg !6852
  %encoder1 = getelementptr inbounds %struct.drm_bridge, ptr %3, i32 0, i32 2, !dbg !6853
  %4 = load ptr, ptr %encoder1, align 8, !dbg !6853
  store ptr %4, ptr %encoder, align 8, !dbg !6851
  call void @llvm.lifetime.start.p0(i64 8, ptr %crtc) #7, !dbg !6854
  call void @llvm.dbg.declare(metadata ptr %crtc, metadata !6837, metadata !DIExpression()), !dbg !6855
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_crtc_state) #7, !dbg !6856
  call void @llvm.dbg.declare(metadata ptr %new_crtc_state, metadata !6838, metadata !DIExpression()), !dbg !6857
  %5 = load ptr, ptr %atomic_state, align 8, !dbg !6858
  %6 = load ptr, ptr %encoder, align 8, !dbg !6859
  %call2 = call ptr @drm_atomic_get_old_crtc_for_encoder(ptr noundef %5, ptr noundef %6) #8, !dbg !6860
  store ptr %call2, ptr %crtc, align 8, !dbg !6861
  %7 = load ptr, ptr %crtc, align 8, !dbg !6862
  %tobool = icmp ne ptr %7, null, !dbg !6862
  br i1 %tobool, label %if.end, label %if.then, !dbg !6864

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6865

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %atomic_state, align 8, !dbg !6866
  %9 = load ptr, ptr %crtc, align 8, !dbg !6867
  %call3 = call ptr @drm_atomic_get_new_crtc_state(ptr noundef %8, ptr noundef %9) #8, !dbg !6868
  store ptr %call3, ptr %new_crtc_state, align 8, !dbg !6869
  %10 = load ptr, ptr %new_crtc_state, align 8, !dbg !6870
  %tobool4 = icmp ne ptr %10, null, !dbg !6870
  br i1 %tobool4, label %land.lhs.true, label %if.end7, !dbg !6872

land.lhs.true:                                    ; preds = %if.end
  %11 = load ptr, ptr %new_crtc_state, align 8, !dbg !6873
  %self_refresh_active = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 16, !dbg !6874
  %12 = load i8, ptr %self_refresh_active, align 2, !dbg !6874, !range !6506, !noundef !760
  %tobool5 = trunc i8 %12 to i1, !dbg !6874
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !6875

if.then6:                                         ; preds = %land.lhs.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6876

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %13 = load ptr, ptr %panel_bridge, align 8, !dbg !6877
  %panel = getelementptr inbounds %struct.panel_bridge, ptr %13, i32 0, i32 2, !dbg !6878
  %14 = load ptr, ptr %panel, align 8, !dbg !6878
  %call8 = call i32 @drm_panel_disable(ptr noundef %14) #8, !dbg !6879
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6880
  br label %cleanup, !dbg !6880

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_crtc_state) #7, !dbg !6880
  call void @llvm.lifetime.end.p0(i64 8, ptr %crtc) #7, !dbg !6880
  call void @llvm.lifetime.end.p0(i64 8, ptr %encoder) #7, !dbg !6880
  call void @llvm.lifetime.end.p0(i64 8, ptr %atomic_state) #7, !dbg !6880
  call void @llvm.lifetime.end.p0(i64 8, ptr %panel_bridge) #7, !dbg !6880
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6880

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @panel_bridge_atomic_post_disable(ptr noundef %bridge, ptr noundef %old_bridge_state) #0 align 16 !dbg !6881 {
entry:
  %bridge.addr = alloca ptr, align 8
  %old_bridge_state.addr = alloca ptr, align 8
  %panel_bridge = alloca ptr, align 8
  %atomic_state = alloca ptr, align 8
  %encoder = alloca ptr, align 8
  %crtc = alloca ptr, align 8
  %new_crtc_state = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bridge, ptr %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bridge.addr, metadata !6883, metadata !DIExpression()), !dbg !6890
  store ptr %old_bridge_state, ptr %old_bridge_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old_bridge_state.addr, metadata !6884, metadata !DIExpression()), !dbg !6891
  call void @llvm.lifetime.start.p0(i64 8, ptr %panel_bridge) #7, !dbg !6892
  call void @llvm.dbg.declare(metadata ptr %panel_bridge, metadata !6885, metadata !DIExpression()), !dbg !6893
  %0 = load ptr, ptr %bridge.addr, align 8, !dbg !6894
  %call = call ptr @drm_bridge_to_panel_bridge(ptr noundef %0) #8, !dbg !6895
  store ptr %call, ptr %panel_bridge, align 8, !dbg !6893
  call void @llvm.lifetime.start.p0(i64 8, ptr %atomic_state) #7, !dbg !6896
  call void @llvm.dbg.declare(metadata ptr %atomic_state, metadata !6886, metadata !DIExpression()), !dbg !6897
  %1 = load ptr, ptr %old_bridge_state.addr, align 8, !dbg !6898
  %base = getelementptr inbounds %struct.drm_bridge_state, ptr %1, i32 0, i32 0, !dbg !6899
  %state = getelementptr inbounds %struct.drm_private_state, ptr %base, i32 0, i32 0, !dbg !6900
  %2 = load ptr, ptr %state, align 8, !dbg !6900
  store ptr %2, ptr %atomic_state, align 8, !dbg !6897
  call void @llvm.lifetime.start.p0(i64 8, ptr %encoder) #7, !dbg !6901
  call void @llvm.dbg.declare(metadata ptr %encoder, metadata !6887, metadata !DIExpression()), !dbg !6902
  %3 = load ptr, ptr %bridge.addr, align 8, !dbg !6903
  %encoder1 = getelementptr inbounds %struct.drm_bridge, ptr %3, i32 0, i32 2, !dbg !6904
  %4 = load ptr, ptr %encoder1, align 8, !dbg !6904
  store ptr %4, ptr %encoder, align 8, !dbg !6902
  call void @llvm.lifetime.start.p0(i64 8, ptr %crtc) #7, !dbg !6905
  call void @llvm.dbg.declare(metadata ptr %crtc, metadata !6888, metadata !DIExpression()), !dbg !6906
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_crtc_state) #7, !dbg !6907
  call void @llvm.dbg.declare(metadata ptr %new_crtc_state, metadata !6889, metadata !DIExpression()), !dbg !6908
  %5 = load ptr, ptr %atomic_state, align 8, !dbg !6909
  %6 = load ptr, ptr %encoder, align 8, !dbg !6910
  %call2 = call ptr @drm_atomic_get_old_crtc_for_encoder(ptr noundef %5, ptr noundef %6) #8, !dbg !6911
  store ptr %call2, ptr %crtc, align 8, !dbg !6912
  %7 = load ptr, ptr %crtc, align 8, !dbg !6913
  %tobool = icmp ne ptr %7, null, !dbg !6913
  br i1 %tobool, label %if.end, label %if.then, !dbg !6915

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6916

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %atomic_state, align 8, !dbg !6917
  %9 = load ptr, ptr %crtc, align 8, !dbg !6918
  %call3 = call ptr @drm_atomic_get_new_crtc_state(ptr noundef %8, ptr noundef %9) #8, !dbg !6919
  store ptr %call3, ptr %new_crtc_state, align 8, !dbg !6920
  %10 = load ptr, ptr %new_crtc_state, align 8, !dbg !6921
  %tobool4 = icmp ne ptr %10, null, !dbg !6921
  br i1 %tobool4, label %land.lhs.true, label %if.end7, !dbg !6923

land.lhs.true:                                    ; preds = %if.end
  %11 = load ptr, ptr %new_crtc_state, align 8, !dbg !6924
  %self_refresh_active = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 16, !dbg !6925
  %12 = load i8, ptr %self_refresh_active, align 2, !dbg !6925, !range !6506, !noundef !760
  %tobool5 = trunc i8 %12 to i1, !dbg !6925
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !6926

if.then6:                                         ; preds = %land.lhs.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6927

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %13 = load ptr, ptr %panel_bridge, align 8, !dbg !6928
  %panel = getelementptr inbounds %struct.panel_bridge, ptr %13, i32 0, i32 2, !dbg !6929
  %14 = load ptr, ptr %panel, align 8, !dbg !6929
  %call8 = call i32 @drm_panel_unprepare(ptr noundef %14) #8, !dbg !6930
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6931
  br label %cleanup, !dbg !6931

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_crtc_state) #7, !dbg !6931
  call void @llvm.lifetime.end.p0(i64 8, ptr %crtc) #7, !dbg !6931
  call void @llvm.lifetime.end.p0(i64 8, ptr %encoder) #7, !dbg !6931
  call void @llvm.lifetime.end.p0(i64 8, ptr %atomic_state) #7, !dbg !6931
  call void @llvm.lifetime.end.p0(i64 8, ptr %panel_bridge) #7, !dbg !6931
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6931

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_duplicate_state(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_atomic_helper_bridge_destroy_state(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_propagate_bus_fmt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_reset(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @panel_bridge_get_modes(ptr noundef %bridge, ptr noundef %connector) #0 align 16 !dbg !6932 {
entry:
  %bridge.addr = alloca ptr, align 8
  %connector.addr = alloca ptr, align 8
  %panel_bridge = alloca ptr, align 8
  store ptr %bridge, ptr %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bridge.addr, metadata !6934, metadata !DIExpression()), !dbg !6937
  store ptr %connector, ptr %connector.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %connector.addr, metadata !6935, metadata !DIExpression()), !dbg !6938
  call void @llvm.lifetime.start.p0(i64 8, ptr %panel_bridge) #7, !dbg !6939
  call void @llvm.dbg.declare(metadata ptr %panel_bridge, metadata !6936, metadata !DIExpression()), !dbg !6940
  %0 = load ptr, ptr %bridge.addr, align 8, !dbg !6941
  %call = call ptr @drm_bridge_to_panel_bridge(ptr noundef %0) #8, !dbg !6942
  store ptr %call, ptr %panel_bridge, align 8, !dbg !6940
  %1 = load ptr, ptr %panel_bridge, align 8, !dbg !6943
  %panel = getelementptr inbounds %struct.panel_bridge, ptr %1, i32 0, i32 2, !dbg !6944
  %2 = load ptr, ptr %panel, align 8, !dbg !6944
  %3 = load ptr, ptr %connector.addr, align 8, !dbg !6945
  %call1 = call i32 @drm_panel_get_modes(ptr noundef %2, ptr noundef %3) #8, !dbg !6946
  call void @llvm.lifetime.end.p0(i64 8, ptr %panel_bridge) #7, !dbg !6947
  ret i32 %call1, !dbg !6948
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @panel_bridge_debugfs_init(ptr noundef %bridge, ptr noundef %root) #0 align 16 !dbg !6949 {
entry:
  %bridge.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %panel_bridge = alloca ptr, align 8
  %panel = alloca ptr, align 8
  store ptr %bridge, ptr %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bridge.addr, metadata !6951, metadata !DIExpression()), !dbg !6955
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !6952, metadata !DIExpression()), !dbg !6956
  call void @llvm.lifetime.start.p0(i64 8, ptr %panel_bridge) #7, !dbg !6957
  call void @llvm.dbg.declare(metadata ptr %panel_bridge, metadata !6953, metadata !DIExpression()), !dbg !6958
  %0 = load ptr, ptr %bridge.addr, align 8, !dbg !6959
  %call = call ptr @drm_bridge_to_panel_bridge(ptr noundef %0) #8, !dbg !6960
  store ptr %call, ptr %panel_bridge, align 8, !dbg !6958
  call void @llvm.lifetime.start.p0(i64 8, ptr %panel) #7, !dbg !6961
  call void @llvm.dbg.declare(metadata ptr %panel, metadata !6954, metadata !DIExpression()), !dbg !6962
  %1 = load ptr, ptr %panel_bridge, align 8, !dbg !6963
  %panel1 = getelementptr inbounds %struct.panel_bridge, ptr %1, i32 0, i32 2, !dbg !6964
  %2 = load ptr, ptr %panel1, align 8, !dbg !6964
  store ptr %2, ptr %panel, align 8, !dbg !6962
  %3 = load ptr, ptr %root.addr, align 8, !dbg !6965
  %call2 = call ptr @debugfs_create_dir(ptr noundef @.str.5, ptr noundef %3) #8, !dbg !6966
  store ptr %call2, ptr %root.addr, align 8, !dbg !6967
  %4 = load ptr, ptr %panel, align 8, !dbg !6968
  %funcs = getelementptr inbounds %struct.drm_panel, ptr %4, i32 0, i32 2, !dbg !6970
  %5 = load ptr, ptr %funcs, align 8, !dbg !6970
  %debugfs_init = getelementptr inbounds %struct.drm_panel_funcs, ptr %5, i32 0, i32 7, !dbg !6971
  %6 = load ptr, ptr %debugfs_init, align 8, !dbg !6971
  %tobool = icmp ne ptr %6, null, !dbg !6968
  br i1 %tobool, label %if.then, label %if.end, !dbg !6972

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %panel, align 8, !dbg !6973
  %funcs3 = getelementptr inbounds %struct.drm_panel, ptr %7, i32 0, i32 2, !dbg !6974
  %8 = load ptr, ptr %funcs3, align 8, !dbg !6974
  %debugfs_init4 = getelementptr inbounds %struct.drm_panel_funcs, ptr %8, i32 0, i32 7, !dbg !6975
  %9 = load ptr, ptr %debugfs_init4, align 8, !dbg !6975
  %10 = load ptr, ptr %panel, align 8, !dbg !6976
  %11 = load ptr, ptr %root.addr, align 8, !dbg !6977
  call void %9(ptr noundef %10, ptr noundef %11) #8, !dbg !6973
  br label %if.end, !dbg !6973

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %panel) #7, !dbg !6978
  call void @llvm.lifetime.end.p0(i64 8, ptr %panel_bridge) #7, !dbg !6978
  ret void, !dbg !6978
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6979 dso_local void @__drm_err(ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_connector_helper_add(ptr noundef %connector, ptr noundef %funcs) #4 align 16 !dbg !6982 {
entry:
  %connector.addr = alloca ptr, align 8
  %funcs.addr = alloca ptr, align 8
  store ptr %connector, ptr %connector.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %connector.addr, metadata !6986, metadata !DIExpression()), !dbg !6988
  store ptr %funcs, ptr %funcs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %funcs.addr, metadata !6987, metadata !DIExpression()), !dbg !6989
  %0 = load ptr, ptr %funcs.addr, align 8, !dbg !6990
  %1 = load ptr, ptr %connector.addr, align 8, !dbg !6991
  %helper_private = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 35, !dbg !6992
  store ptr %0, ptr %helper_private, align 8, !dbg !6993
  ret void, !dbg !6994
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6995 dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6998 dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7001 dso_local i32 @drm_connector_register(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @panel_bridge_connector_get_modes(ptr noundef %connector) #0 align 16 !dbg !7002 {
entry:
  %connector.addr = alloca ptr, align 8
  %panel_bridge = alloca ptr, align 8
  store ptr %connector, ptr %connector.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %connector.addr, metadata !7004, metadata !DIExpression()), !dbg !7006
  call void @llvm.lifetime.start.p0(i64 8, ptr %panel_bridge) #7, !dbg !7007
  call void @llvm.dbg.declare(metadata ptr %panel_bridge, metadata !7005, metadata !DIExpression()), !dbg !7008
  %0 = load ptr, ptr %connector.addr, align 8, !dbg !7009
  %call = call ptr @drm_connector_to_panel_bridge(ptr noundef %0) #8, !dbg !7010
  store ptr %call, ptr %panel_bridge, align 8, !dbg !7008
  %1 = load ptr, ptr %panel_bridge, align 8, !dbg !7011
  %panel = getelementptr inbounds %struct.panel_bridge, ptr %1, i32 0, i32 2, !dbg !7012
  %2 = load ptr, ptr %panel, align 8, !dbg !7012
  %3 = load ptr, ptr %connector.addr, align 8, !dbg !7013
  %call1 = call i32 @drm_panel_get_modes(ptr noundef %2, ptr noundef %3) #8, !dbg !7014
  call void @llvm.lifetime.end.p0(i64 8, ptr %panel_bridge) #7, !dbg !7015
  ret i32 %call1, !dbg !7016
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @drm_connector_to_panel_bridge(ptr noundef %connector) #4 align 16 !dbg !7017 {
entry:
  %connector.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %connector, ptr %connector.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %connector.addr, metadata !7021, metadata !DIExpression()), !dbg !7024
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !7025
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7022, metadata !DIExpression()), !dbg !7025
  %0 = load ptr, ptr %connector.addr, align 8, !dbg !7025
  store ptr %0, ptr %__mptr, align 8, !dbg !7025
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7025
  %add.ptr = getelementptr i8, ptr %1, i64 -232, !dbg !7025
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7025
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !7026
  %2 = load ptr, ptr %tmp, align 8, !dbg !7025
  ret ptr %2, !dbg !7027
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7028 dso_local i32 @drm_panel_get_modes(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7029 dso_local void @drm_connector_cleanup(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7030 dso_local ptr @drm_atomic_get_new_crtc_for_encoder(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @drm_atomic_get_old_crtc_state(ptr noundef %state, ptr noundef %crtc) #4 align 16 !dbg !7033 {
entry:
  %state.addr = alloca ptr, align 8
  %crtc.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !7039, metadata !DIExpression()), !dbg !7041
  store ptr %crtc, ptr %crtc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %crtc.addr, metadata !7040, metadata !DIExpression()), !dbg !7042
  %0 = load ptr, ptr %state.addr, align 8, !dbg !7043
  %crtcs = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 4, !dbg !7044
  %1 = load ptr, ptr %crtcs, align 8, !dbg !7044
  %2 = load ptr, ptr %crtc.addr, align 8, !dbg !7045
  %call = call i32 @drm_crtc_index(ptr noundef %2) #8, !dbg !7046
  %idxprom = zext i32 %call to i64, !dbg !7043
  %arrayidx = getelementptr %struct.__drm_crtcs_state, ptr %1, i64 %idxprom, !dbg !7043
  %old_state = getelementptr inbounds %struct.__drm_crtcs_state, ptr %arrayidx, i32 0, i32 2, !dbg !7047
  %3 = load ptr, ptr %old_state, align 8, !dbg !7047
  ret ptr %3, !dbg !7048
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7049 dso_local i32 @drm_panel_prepare(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_crtc_index(ptr noundef %crtc) #4 align 16 !dbg !7050 {
entry:
  %crtc.addr = alloca ptr, align 8
  store ptr %crtc, ptr %crtc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %crtc.addr, metadata !7056, metadata !DIExpression()), !dbg !7057
  %0 = load ptr, ptr %crtc.addr, align 8, !dbg !7058
  %index = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8, !dbg !7059
  %1 = load i32, ptr %index, align 8, !dbg !7059
  ret i32 %1, !dbg !7060
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7061 dso_local i32 @drm_panel_enable(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7062 dso_local ptr @drm_atomic_get_old_crtc_for_encoder(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @drm_atomic_get_new_crtc_state(ptr noundef %state, ptr noundef %crtc) #4 align 16 !dbg !7063 {
entry:
  %state.addr = alloca ptr, align 8
  %crtc.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !7065, metadata !DIExpression()), !dbg !7067
  store ptr %crtc, ptr %crtc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %crtc.addr, metadata !7066, metadata !DIExpression()), !dbg !7068
  %0 = load ptr, ptr %state.addr, align 8, !dbg !7069
  %crtcs = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 4, !dbg !7070
  %1 = load ptr, ptr %crtcs, align 8, !dbg !7070
  %2 = load ptr, ptr %crtc.addr, align 8, !dbg !7071
  %call = call i32 @drm_crtc_index(ptr noundef %2) #8, !dbg !7072
  %idxprom = zext i32 %call to i64, !dbg !7069
  %arrayidx = getelementptr %struct.__drm_crtcs_state, ptr %1, i64 %idxprom, !dbg !7069
  %new_state = getelementptr inbounds %struct.__drm_crtcs_state, ptr %arrayidx, i32 0, i32 3, !dbg !7073
  %3 = load ptr, ptr %new_state, align 8, !dbg !7073
  ret ptr %3, !dbg !7074
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7075 dso_local i32 @drm_panel_disable(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7076 dso_local i32 @drm_panel_unprepare(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7077 dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare !dbg !7081 dso_local noalias ptr @devm_kmalloc(ptr noundef, i64 noundef, i32 noundef) #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noredzone }
attributes #9 = { noredzone allocsize(1) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!6235, !6236, !6237, !6238, !6239, !6240, !6241, !6242}
!llvm.ident = !{!6243}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "panel_bridge_bridge_funcs", scope: !2, file: !3, line: 213, type: !6036, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/bridge/.panel.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/drm_kms_helper\22 -D KBUILD_BASENAME=\22panel\22 -D KBUILD_MODNAME=\22drm_kms_helper\22 -D __KBUILD_MODNAME=kmod_drm_kms_helper -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/bridge/panel.ll drivers/gpu/drm/bridge/panel.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !325, globals: !6191, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/bridge/panel.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0fb2444f4e0899c2a63afd64fc5890e2")
!4 = !{!5, !11, !19, !26, !34, !50, !57, !63, !68, !74, !80, !87, !93, !100, !108, !116, !125, !130, !135, !141, !184, !193, !200, !206, !211, !219, !224, !228, !244, !264, !270, !276, !283, !293, !298, !305, !310, !315, !319}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !6, line: 65, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!10 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !12, line: 9, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!13 = !{!14, !15, !16, !17, !18}
!14 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!15 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!16 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!17 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!18 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !20, line: 312, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!23 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!24 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!25 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !27, line: 68, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!28 = !{!29, !30, !31, !32, !33}
!29 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!30 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!31 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!32 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!33 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !35, line: 1325, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!37 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!38 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!39 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!40 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!41 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!42 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!43 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!44 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!45 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!46 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!47 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!48 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!49 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
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
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !64, line: 2052, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!65 = !{!66, !67}
!66 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!67 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !69, line: 54, baseType: !7, size: 32, elements: !70)
!69 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!70 = !{!71, !72, !73}
!71 = !DIEnumerator(name: "USRQUOTA", value: 0)
!72 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!73 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !75, line: 16, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!76 = !{!77, !78, !79}
!77 = !DIEnumerator(name: "TT_NONE", value: 0)
!78 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!79 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !81, line: 51, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!84 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!85 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!86 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
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
!219 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_scaling_filter", file: !220, line: 38, baseType: !7, size: 32, elements: !221)
!220 = !DIFile(filename: "./include/drm/drm_plane.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "45cb1a1ff150429e63de6789c017e03a")
!221 = !{!222, !223}
!222 = !DIEnumerator(name: "DRM_SCALING_FILTER_DEFAULT", value: 0)
!223 = !DIEnumerator(name: "DRM_SCALING_FILTER_NEAREST_NEIGHBOR", value: 1)
!224 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_link_status", file: !201, line: 337, baseType: !7, size: 32, elements: !225)
!225 = !{!226, !227}
!226 = !DIEnumerator(name: "DRM_LINK_STATUS_GOOD", value: 0)
!227 = !DIEnumerator(name: "DRM_LINK_STATUS_BAD", value: 1)
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_subconnector", file: !229, line: 387, baseType: !7, size: 32, elements: !230)
!229 = !DIFile(filename: "./include/uapi/drm/drm_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "357a7211aa80668185b31e7330dddd63")
!230 = !{!231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243}
!231 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Automatic", value: 0)
!232 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Unknown", value: 0)
!233 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_VGA", value: 1)
!234 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DVID", value: 3)
!235 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DVIA", value: 4)
!236 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Composite", value: 5)
!237 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_SVIDEO", value: 6)
!238 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Component", value: 8)
!239 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_SCART", value: 9)
!240 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DisplayPort", value: 10)
!241 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_HDMIA", value: 11)
!242 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Native", value: 15)
!243 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Wireless", value: 18)
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_colorspace", file: !201, line: 502, baseType: !7, size: 32, elements: !245)
!245 = !{!246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263}
!246 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_DEFAULT", value: 0)
!247 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_NO_DATA", value: 0)
!248 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_SMPTE_170M_YCC", value: 1)
!249 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT709_YCC", value: 2)
!250 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_XVYCC_601", value: 3)
!251 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_XVYCC_709", value: 4)
!252 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_SYCC_601", value: 5)
!253 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_OPYCC_601", value: 6)
!254 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_OPRGB", value: 7)
!255 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT2020_CYCC", value: 8)
!256 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT2020_RGB", value: 9)
!257 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT2020_YCC", value: 10)
!258 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_DCI_P3_RGB_D65", value: 11)
!259 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_DCI_P3_RGB_THEATER", value: 12)
!260 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_RGB_WIDE_FIXED", value: 13)
!261 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_RGB_WIDE_FLOAT", value: 14)
!262 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT601_YCC", value: 15)
!263 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_COUNT", value: 16)
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_privacy_screen_status", file: !201, line: 421, baseType: !7, size: 32, elements: !265)
!265 = !{!266, !267, !268, !269}
!266 = !DIEnumerator(name: "PRIVACY_SCREEN_DISABLED", value: 0)
!267 = !DIEnumerator(name: "PRIVACY_SCREEN_ENABLED", value: 1)
!268 = !DIEnumerator(name: "PRIVACY_SCREEN_DISABLED_LOCKED", value: 2)
!269 = !DIEnumerator(name: "PRIVACY_SCREEN_ENABLED_LOCKED", value: 3)
!270 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_force", file: !201, line: 50, baseType: !7, size: 32, elements: !271)
!271 = !{!272, !273, !274, !275}
!272 = !DIEnumerator(name: "DRM_FORCE_UNSPECIFIED", value: 0)
!273 = !DIEnumerator(name: "DRM_FORCE_OFF", value: 1)
!274 = !DIEnumerator(name: "DRM_FORCE_ON", value: 2)
!275 = !DIEnumerator(name: "DRM_FORCE_ON_DIGITAL", value: 3)
!276 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_panel_orientation", file: !201, line: 363, baseType: !109, size: 32, elements: !277)
!277 = !{!278, !279, !280, !281, !282}
!278 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_UNKNOWN", value: -1)
!279 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_NORMAL", value: 0)
!280 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP", value: 1)
!281 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_LEFT_UP", value: 2)
!282 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_RIGHT_UP", value: 3)
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_tv_mode", file: !201, line: 156, baseType: !7, size: 32, elements: !284)
!284 = !{!285, !286, !287, !288, !289, !290, !291, !292}
!285 = !DIEnumerator(name: "DRM_MODE_TV_MODE_NTSC", value: 0)
!286 = !DIEnumerator(name: "DRM_MODE_TV_MODE_NTSC_443", value: 1)
!287 = !DIEnumerator(name: "DRM_MODE_TV_MODE_NTSC_J", value: 2)
!288 = !DIEnumerator(name: "DRM_MODE_TV_MODE_PAL", value: 3)
!289 = !DIEnumerator(name: "DRM_MODE_TV_MODE_PAL_M", value: 4)
!290 = !DIEnumerator(name: "DRM_MODE_TV_MODE_PAL_N", value: 5)
!291 = !DIEnumerator(name: "DRM_MODE_TV_MODE_SECAM", value: 6)
!292 = !DIEnumerator(name: "DRM_MODE_TV_MODE_MAX", value: 7)
!293 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mode_set_atomic", file: !294, line: 54, baseType: !7, size: 32, elements: !295)
!294 = !DIFile(filename: "./include/drm/drm_modeset_helper_vtables.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c76c951af964ace4726c40f2de2c86a8")
!295 = !{!296, !297}
!296 = !DIEnumerator(name: "LEAVE_ATOMIC_MODE_SET", value: 0)
!297 = !DIEnumerator(name: "ENTER_ATOMIC_MODE_SET", value: 1)
!298 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_color_encoding", file: !299, line: 78, baseType: !7, size: 32, elements: !300)
!299 = !DIFile(filename: "./include/drm/drm_color_mgmt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b92cd49d1b3f8dcc5c490e9b8b1a997a")
!300 = !{!301, !302, !303, !304}
!301 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT601", value: 0)
!302 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT709", value: 1)
!303 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT2020", value: 2)
!304 = !DIEnumerator(name: "DRM_COLOR_ENCODING_MAX", value: 3)
!305 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_color_range", file: !299, line: 85, baseType: !7, size: 32, elements: !306)
!306 = !{!307, !308, !309}
!307 = !DIEnumerator(name: "DRM_COLOR_YCBCR_LIMITED_RANGE", value: 0)
!308 = !DIEnumerator(name: "DRM_COLOR_YCBCR_FULL_RANGE", value: 1)
!309 = !DIEnumerator(name: "DRM_COLOR_RANGE_MAX", value: 2)
!310 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_plane_type", file: !220, line: 563, baseType: !7, size: 32, elements: !311)
!311 = !{!312, !313, !314}
!312 = !DIEnumerator(name: "DRM_PLANE_TYPE_OVERLAY", value: 0)
!313 = !DIEnumerator(name: "DRM_PLANE_TYPE_PRIMARY", value: 1)
!314 = !DIEnumerator(name: "DRM_PLANE_TYPE_CURSOR", value: 2)
!315 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_bridge_attach_flags", file: !316, line: 47, baseType: !7, size: 32, elements: !317)
!316 = !DIFile(filename: "./include/drm/drm_bridge.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f87e7db46b7f2406c2b269e9d6e0a148")
!317 = !{!318}
!318 = !DIEnumerator(name: "DRM_BRIDGE_ATTACH_NO_CONNECTOR", value: 1)
!319 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_bridge_ops", file: !316, line: 708, baseType: !7, size: 32, elements: !320)
!320 = !{!321, !322, !323, !324}
!321 = !DIEnumerator(name: "DRM_BRIDGE_OP_DETECT", value: 1)
!322 = !DIEnumerator(name: "DRM_BRIDGE_OP_EDID", value: 2)
!323 = !DIEnumerator(name: "DRM_BRIDGE_OP_HPD", value: 4)
!324 = !DIEnumerator(name: "DRM_BRIDGE_OP_MODES", value: 8)
!325 = !{!326, !327, !329, !6190, !423}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !328, line: 154, baseType: !7)
!328 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "panel_bridge", file: !3, line: 18, size: 12864, elements: !331)
!331 = !{!332, !6142, !6143, !6189}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !330, file: !3, line: 19, baseType: !333, size: 1856)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_bridge", file: !316, line: 741, size: 1856, elements: !334)
!334 = !{!335, !6021, !6022, !6023, !6024, !6025, !6034, !6130, !6131, !6132, !6133, !6134, !6135, !6136, !6137, !6141}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !333, file: !316, line: 743, baseType: !336, size: 704)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_private_obj", file: !337, line: 286, size: 704, elements: !338)
!337 = !DIFile(filename: "./include/drm/drm_atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28de65f10f2586a2044f2cca3eae067c")
!338 = !{!339, !345, !4374, !6002}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !336, file: !337, line: 291, baseType: !340, size: 128)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !328, line: 190, size: 128, elements: !341)
!341 = !{!342, !344}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !340, file: !328, line: 191, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !340, file: !328, line: 191, baseType: !343, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !336, file: !337, line: 296, baseType: !346, size: 448, offset: 128)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_lock", file: !347, line: 85, size: 448, elements: !348)
!347 = !DIFile(filename: "./include/drm/drm_modeset_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90e902ea14584677125d9e33023828e6")
!348 = !{!349, !4373}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !346, file: !347, line: 89, baseType: !350, size: 320)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !351, line: 47, size: 320, elements: !352)
!351 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a05845e2a030669ed50c8f228f8c6582")
!352 = !{!353, !409}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !350, file: !351, line: 48, baseType: !354, size: 256)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !355, line: 66, size: 256, elements: !356)
!355 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!356 = !{!357, !369, !403, !408}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !354, file: !355, line: 67, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !359, line: 13, baseType: !360)
!359 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !328, line: 181, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !328, line: 179, size: 64, elements: !362)
!362 = !{!363}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !361, file: !328, line: 180, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !365, line: 22, baseType: !366)
!365 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !367, line: 30, baseType: !368)
!367 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!368 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !354, file: !355, line: 68, baseType: !370, size: 32, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !371, line: 23, baseType: !372)
!371 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !371, line: 14, size: 32, elements: !373)
!373 = !{!374}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !372, file: !371, line: 15, baseType: !375, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !376, line: 44, baseType: !377)
!376 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !376, line: 14, size: 32, elements: !378)
!378 = !{!379}
!379 = !DIDerivedType(tag: DW_TAG_member, scope: !377, file: !376, line: 15, baseType: !380, size: 32)
!380 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !377, file: !376, line: 15, size: 32, elements: !381)
!381 = !{!382, !387, !395}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !380, file: !376, line: 16, baseType: !383, size: 32)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !328, line: 174, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !328, line: 172, size: 32, elements: !385)
!385 = !{!386}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !384, file: !328, line: 173, baseType: !109, size: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !376, line: 24, baseType: !388, size: 16)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !380, file: !376, line: 24, size: 16, elements: !389)
!389 = !{!390, !394}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !388, file: !376, line: 25, baseType: !391, size: 8)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !365, line: 17, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !367, line: 21, baseType: !393)
!393 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !388, file: !376, line: 26, baseType: !391, size: 8, offset: 8)
!395 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !376, line: 28, baseType: !396, size: 32)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !380, file: !376, line: 28, size: 32, elements: !397)
!397 = !{!398, !402}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !396, file: !376, line: 29, baseType: !399, size: 16)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !365, line: 19, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !367, line: 24, baseType: !401)
!401 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !396, file: !376, line: 30, baseType: !399, size: 16, offset: 16)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !354, file: !355, line: 70, baseType: !404, size: 32, offset: 96)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !405, line: 15, size: 32, elements: !406)
!405 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !404, file: !405, line: 20, baseType: !383, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !354, file: !355, line: 72, baseType: !340, size: 128, offset: 128)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !350, file: !351, line: 49, baseType: !410, size: 64, offset: 256)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !351, line: 55, size: 192, elements: !412)
!412 = !{!413, !4369, !4370, !4371, !4372}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !411, file: !351, line: 56, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !416, line: 746, size: 58368, elements: !417)
!416 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!417 = !{!418, !429, !430, !431, !437, !438, !439, !440, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !521, !532, !633, !637, !640, !671, !672, !673, !674, !685, !687, !688, !689, !690, !691, !692, !703, !704, !707, !708, !709, !710, !711, !712, !713, !714, !721, !722, !729, !730, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3534, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3582, !3588, !3589, !3590, !3591, !3592, !3594, !3597, !3604, !3609, !3612, !3615, !3618, !3644, !3782, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3820, !3821, !3822, !3831, !3839, !3840, !3841, !3842, !3843, !3848, !3849, !3850, !3854, !3855, !3858, !3861, !3864, !3872, !3875, !3876, !3962, !3963, !3964, !3965, !3966, !3972, !3973, !3974, !3975, !3978, !3979, !3982, !3985, !3986, !3989, !3990, !3991, !3994, !3995, !3996, !3997, !3998, !3999, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4031, !4032, !4038, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4050, !4122, !4124, !4125, !4126, !4127, !4128, !4129, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4146, !4147, !4148}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !415, file: !416, line: 752, baseType: !419, size: 192)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !420, line: 56, size: 192, elements: !421)
!420 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!421 = !{!422, !424, !425, !428}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !419, file: !420, line: 57, baseType: !423, size: 64)
!423 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !419, file: !420, line: 58, baseType: !423, size: 64, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !419, file: !420, line: 59, baseType: !426, size: 32, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !365, line: 21, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !367, line: 27, baseType: !7)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !419, file: !420, line: 61, baseType: !426, size: 32, offset: 160)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !415, file: !416, line: 754, baseType: !7, size: 32, offset: 192)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !415, file: !416, line: 767, baseType: !326, size: 64, offset: 256)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !415, file: !416, line: 768, baseType: !432, size: 32, offset: 320)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !433, line: 113, baseType: !434)
!433 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !433, line: 111, size: 32, elements: !435)
!435 = !{!436}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !434, file: !433, line: 112, baseType: !383, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !415, file: !416, line: 770, baseType: !7, size: 32, offset: 352)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !415, file: !416, line: 771, baseType: !7, size: 32, offset: 384)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !415, file: !416, line: 774, baseType: !109, size: 32, offset: 416)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !415, file: !416, line: 775, baseType: !441, size: 128, offset: 448)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !442, line: 58, size: 128, elements: !443)
!442 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!443 = !{!444, !450, !455, !456}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !441, file: !442, line: 59, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !446, line: 60, size: 64, elements: !447)
!446 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!447 = !{!448}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !445, file: !446, line: 61, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, scope: !441, file: !442, line: 60, baseType: !451, size: 32, offset: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !441, file: !442, line: 60, size: 32, elements: !452)
!452 = !{!453, !454}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !451, file: !442, line: 61, baseType: !7, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !451, file: !442, line: 62, baseType: !383, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !441, file: !442, line: 65, baseType: !399, size: 16, offset: 96)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !441, file: !442, line: 65, baseType: !399, size: 16, offset: 112)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !415, file: !416, line: 776, baseType: !7, size: 32, offset: 576)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !415, file: !416, line: 777, baseType: !423, size: 64, offset: 640)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !415, file: !416, line: 778, baseType: !414, size: 64, offset: 704)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !415, file: !416, line: 787, baseType: !109, size: 32, offset: 768)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !415, file: !416, line: 788, baseType: !109, size: 32, offset: 800)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !415, file: !416, line: 790, baseType: !109, size: 32, offset: 832)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !415, file: !416, line: 792, baseType: !109, size: 32, offset: 864)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !415, file: !416, line: 793, baseType: !109, size: 32, offset: 896)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !415, file: !416, line: 794, baseType: !109, size: 32, offset: 928)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !415, file: !416, line: 795, baseType: !7, size: 32, offset: 960)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !415, file: !416, line: 797, baseType: !468, size: 2048, offset: 1024)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !416, line: 551, size: 2048, elements: !469)
!469 = !{!470, !475, !483, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !500, !503, !504, !505}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !468, file: !416, line: 553, baseType: !471, size: 128)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !416, line: 411, size: 128, elements: !472)
!472 = !{!473, !474}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !471, file: !416, line: 412, baseType: !423, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !471, file: !416, line: 413, baseType: !426, size: 32, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !468, file: !416, line: 554, baseType: !476, size: 192, align: 64, offset: 128)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !477, line: 5, size: 192, align: 64, elements: !478)
!477 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!478 = !{!479, !480, !482}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !476, file: !477, line: 6, baseType: !423, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !476, file: !477, line: 7, baseType: !481, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !476, file: !477, line: 8, baseType: !481, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !468, file: !416, line: 555, baseType: !484, size: 64, offset: 320)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !365, line: 23, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !367, line: 31, baseType: !486)
!486 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !468, file: !416, line: 556, baseType: !484, size: 64, offset: 384)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !468, file: !416, line: 558, baseType: !340, size: 128, offset: 448)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !468, file: !416, line: 559, baseType: !7, size: 32, offset: 576)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !468, file: !416, line: 561, baseType: !484, size: 64, offset: 640)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !468, file: !416, line: 562, baseType: !484, size: 64, offset: 704)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !468, file: !416, line: 563, baseType: !484, size: 64, offset: 768)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !468, file: !416, line: 564, baseType: !484, size: 64, offset: 832)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !468, file: !416, line: 565, baseType: !364, size: 64, offset: 896)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !468, file: !416, line: 566, baseType: !484, size: 64, offset: 960)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !468, file: !416, line: 568, baseType: !484, size: 64, offset: 1024)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !468, file: !416, line: 571, baseType: !109, size: 32, offset: 1088)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !468, file: !416, line: 572, baseType: !499, size: 64, offset: 1152)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !468, file: !416, line: 574, baseType: !501, size: 64, offset: 1216)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !416, line: 49, flags: DIFlagFwdDecl)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !468, file: !416, line: 576, baseType: !501, size: 64, offset: 1280)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !468, file: !416, line: 578, baseType: !423, size: 64, offset: 1344)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !468, file: !416, line: 588, baseType: !506, size: 512, align: 512, offset: 1536)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !416, line: 497, size: 512, align: 512, elements: !507)
!507 = !{!508, !509, !510, !511, !512, !513, !514, !515, !516}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !506, file: !416, line: 498, baseType: !484, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !506, file: !416, line: 499, baseType: !484, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !506, file: !416, line: 500, baseType: !484, size: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !506, file: !416, line: 501, baseType: !426, size: 32, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !506, file: !416, line: 502, baseType: !426, size: 32, offset: 224)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !506, file: !416, line: 503, baseType: !423, size: 64, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !506, file: !416, line: 504, baseType: !423, size: 64, offset: 320)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !506, file: !416, line: 505, baseType: !423, size: 64, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !506, file: !416, line: 506, baseType: !517, size: 64, align: 64, offset: 448)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !416, line: 445, size: 64, align: 64, elements: !518)
!518 = !{!519, !520}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !517, file: !416, line: 446, baseType: !7, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !517, file: !416, line: 447, baseType: !7, size: 32, offset: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !415, file: !416, line: 798, baseType: !522, size: 384, offset: 3072)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !416, line: 592, size: 384, elements: !523)
!523 = !{!524, !525, !526, !527, !528, !529, !530}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !522, file: !416, line: 593, baseType: !340, size: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !522, file: !416, line: 594, baseType: !423, size: 64, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !522, file: !416, line: 595, baseType: !423, size: 64, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !522, file: !416, line: 596, baseType: !7, size: 32, offset: 256)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !522, file: !416, line: 597, baseType: !401, size: 16, offset: 288)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !522, file: !416, line: 598, baseType: !401, size: 16, offset: 304)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !522, file: !416, line: 600, baseType: !531, size: 64, offset: 320)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !415, file: !416, line: 799, baseType: !533, size: 1792, offset: 3456)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !416, line: 610, size: 1792, elements: !534)
!534 = !{!535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !630, !631}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !533, file: !416, line: 611, baseType: !476, size: 192, align: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !533, file: !416, line: 618, baseType: !484, size: 64, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !533, file: !416, line: 619, baseType: !484, size: 64, offset: 256)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !533, file: !416, line: 620, baseType: !484, size: 64, offset: 320)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !533, file: !416, line: 621, baseType: !484, size: 64, offset: 384)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !533, file: !416, line: 622, baseType: !484, size: 64, offset: 448)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !533, file: !416, line: 629, baseType: !364, size: 64, offset: 512)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !533, file: !416, line: 630, baseType: !484, size: 64, offset: 576)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !533, file: !416, line: 631, baseType: !7, size: 32, offset: 640)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !533, file: !416, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !533, file: !416, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !533, file: !416, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !533, file: !416, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !533, file: !416, line: 662, baseType: !549, size: 512, offset: 704)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !550)
!550 = !{!551, !559, !560, !565, !626, !627, !628, !629}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !549, file: !6, line: 119, baseType: !552, size: 256)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !553, line: 9, size: 256, elements: !554)
!553 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!554 = !{!555, !556}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !552, file: !553, line: 10, baseType: !476, size: 192, align: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !552, file: !553, line: 11, baseType: !557, size: 64, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !558, line: 29, baseType: !364)
!558 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !549, file: !6, line: 120, baseType: !557, size: 64, offset: 256)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !549, file: !6, line: 121, baseType: !561, size: 64, offset: 320)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!5, !564}
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !549, file: !6, line: 122, baseType: !566, size: 64, offset: 384)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !568)
!568 = !{!569, !594, !595, !599, !609, !610, !621, !625}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !567, file: !6, line: 160, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !572)
!572 = !{!573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !571, file: !6, line: 216, baseType: !370, size: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !571, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !571, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !571, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !571, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !571, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !571, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !571, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !571, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !571, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !571, file: !6, line: 227, baseType: !401, size: 16, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !571, file: !6, line: 228, baseType: !401, size: 16, offset: 208)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !571, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !571, file: !6, line: 235, baseType: !557, size: 64, offset: 256)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !571, file: !6, line: 236, baseType: !564, size: 64, offset: 320)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !571, file: !6, line: 237, baseType: !557, size: 64, offset: 384)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !571, file: !6, line: 238, baseType: !564, size: 64, offset: 448)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !571, file: !6, line: 239, baseType: !591, size: 4096, align: 512, offset: 512)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !567, size: 4096, align: 512, elements: !592)
!592 = !{!593}
!593 = !DISubrange(count: 8)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !567, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !567, file: !6, line: 162, baseType: !596, size: 32, offset: 96)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !328, line: 32, baseType: !597)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !598, line: 96, baseType: !109)
!598 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!599 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !567, file: !6, line: 163, baseType: !600, size: 32, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !601, line: 274, baseType: !602)
!601 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !601, line: 274, size: 32, elements: !603)
!603 = !{!604}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !602, file: !601, line: 274, baseType: !605, size: 32)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !601, line: 69, baseType: !606)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !601, line: 64, size: 32, elements: !607)
!607 = !{!608}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !606, file: !601, line: 65, baseType: !7, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !567, file: !6, line: 164, baseType: !564, size: 64, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !567, file: !6, line: 165, baseType: !611, size: 128, offset: 256)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !553, line: 14, size: 128, elements: !612)
!612 = !{!613}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !611, file: !553, line: 15, baseType: !614, size: 128)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !477, line: 26, size: 128, elements: !615)
!615 = !{!616, !620}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !614, file: !477, line: 27, baseType: !617, size: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !477, line: 12, size: 64, elements: !618)
!618 = !{!619}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !617, file: !477, line: 13, baseType: !481, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !614, file: !477, line: 28, baseType: !481, size: 64, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !567, file: !6, line: 166, baseType: !622, size: 64, offset: 384)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!557}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !567, file: !6, line: 167, baseType: !557, size: 64, offset: 448)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !549, file: !6, line: 123, baseType: !391, size: 8, offset: 448)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !549, file: !6, line: 124, baseType: !391, size: 8, offset: 456)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !549, file: !6, line: 125, baseType: !391, size: 8, offset: 464)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !549, file: !6, line: 126, baseType: !391, size: 8, offset: 472)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !533, file: !416, line: 671, baseType: !549, size: 512, offset: 1216)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !533, file: !416, line: 679, baseType: !632, size: 64, offset: 1728)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !415, file: !416, line: 800, baseType: !634, size: 64, offset: 5248)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !636)
!636 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !416, line: 800, flags: DIFlagFwdDecl)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !415, file: !416, line: 809, baseType: !638, size: 64, offset: 5312)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !416, line: 70, flags: DIFlagFwdDecl)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !415, file: !416, line: 825, baseType: !641, size: 2048, align: 512, offset: 5632)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !416, line: 509, size: 2048, align: 512, elements: !642)
!642 = !{!643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !641, file: !416, line: 511, baseType: !484, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !641, file: !416, line: 512, baseType: !484, size: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !641, file: !416, line: 513, baseType: !484, size: 64, offset: 128)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !641, file: !416, line: 514, baseType: !484, size: 64, offset: 192)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !641, file: !416, line: 515, baseType: !484, size: 64, offset: 256)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !641, file: !416, line: 516, baseType: !484, size: 64, offset: 320)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !641, file: !416, line: 518, baseType: !484, size: 64, offset: 384)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !641, file: !416, line: 519, baseType: !484, size: 64, offset: 448)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !641, file: !416, line: 520, baseType: !364, size: 64, offset: 512)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !641, file: !416, line: 522, baseType: !484, size: 64, offset: 576)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !641, file: !416, line: 523, baseType: !484, size: 64, offset: 640)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !641, file: !416, line: 524, baseType: !364, size: 64, offset: 704)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !641, file: !416, line: 526, baseType: !364, size: 64, offset: 768)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !641, file: !416, line: 527, baseType: !484, size: 64, offset: 832)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !641, file: !416, line: 529, baseType: !484, size: 64, offset: 896)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !641, file: !416, line: 530, baseType: !484, size: 64, offset: 960)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !641, file: !416, line: 531, baseType: !484, size: 64, offset: 1024)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !641, file: !416, line: 532, baseType: !484, size: 64, offset: 1088)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !641, file: !416, line: 533, baseType: !484, size: 64, offset: 1152)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !641, file: !416, line: 535, baseType: !484, size: 64, offset: 1216)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !641, file: !416, line: 536, baseType: !484, size: 64, offset: 1280)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !641, file: !416, line: 537, baseType: !484, size: 64, offset: 1344)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !641, file: !416, line: 538, baseType: !484, size: 64, offset: 1408)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !641, file: !416, line: 539, baseType: !484, size: 64, offset: 1472)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !641, file: !416, line: 540, baseType: !484, size: 64, offset: 1536)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !641, file: !416, line: 541, baseType: !484, size: 64, offset: 1600)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !641, file: !416, line: 542, baseType: !484, size: 64, offset: 1664)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !641, file: !416, line: 543, baseType: !484, size: 64, offset: 1728)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !415, file: !416, line: 833, baseType: !7, size: 32, offset: 7680)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !415, file: !416, line: 836, baseType: !7, size: 32, offset: 7712)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !415, file: !416, line: 837, baseType: !109, size: 32, offset: 7744)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !415, file: !416, line: 838, baseType: !675, size: 64, offset: 7808)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !677)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !678, line: 19, baseType: !679)
!678 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !678, line: 19, size: 64, elements: !680)
!680 = !{!681}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !679, file: !678, line: 19, baseType: !682, size: 64)
!682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 64, elements: !683)
!683 = !{!684}
!684 = !DISubrange(count: 1)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !415, file: !416, line: 839, baseType: !686, size: 64, offset: 7872)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !415, file: !416, line: 840, baseType: !677, size: 64, offset: 7936)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !415, file: !416, line: 841, baseType: !326, size: 64, offset: 8000)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !415, file: !416, line: 843, baseType: !401, size: 16, offset: 8064)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !415, file: !416, line: 845, baseType: !401, size: 16, offset: 8080)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !415, file: !416, line: 848, baseType: !109, size: 32, offset: 8096)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !415, file: !416, line: 849, baseType: !693, size: 32, offset: 8128)
!693 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !416, line: 718, size: 32, elements: !694)
!694 = !{!695, !702}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !693, file: !416, line: 724, baseType: !696, size: 32)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !693, file: !416, line: 719, size: 32, elements: !697)
!697 = !{!698, !699, !700, !701}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !696, file: !416, line: 720, baseType: !391, size: 8)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !696, file: !416, line: 721, baseType: !391, size: 8, offset: 8)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !696, file: !416, line: 722, baseType: !391, size: 8, offset: 16)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !696, file: !416, line: 723, baseType: !391, size: 8, offset: 24)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !693, file: !416, line: 725, baseType: !426, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !415, file: !416, line: 850, baseType: !340, size: 128, offset: 8192)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !415, file: !416, line: 851, baseType: !705, size: 64, offset: 8320)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !416, line: 60, flags: DIFlagFwdDecl)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !415, file: !416, line: 855, baseType: !423, size: 64, offset: 8384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !415, file: !416, line: 856, baseType: !391, size: 8, offset: 8448)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !415, file: !416, line: 857, baseType: !391, size: 8, offset: 8456)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !415, file: !416, line: 858, baseType: !109, size: 32, offset: 8480)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !415, file: !416, line: 859, baseType: !340, size: 128, offset: 8512)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !415, file: !416, line: 860, baseType: !109, size: 32, offset: 8640)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !415, file: !416, line: 861, baseType: !340, size: 128, offset: 8704)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !415, file: !416, line: 873, baseType: !715, size: 256, offset: 8832)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !416, line: 376, size: 256, elements: !716)
!716 = !{!717, !718, !719, !720}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !715, file: !416, line: 381, baseType: !423, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !715, file: !416, line: 384, baseType: !486, size: 64, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !715, file: !416, line: 389, baseType: !486, size: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !715, file: !416, line: 392, baseType: !486, size: 64, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !415, file: !416, line: 875, baseType: !340, size: 128, offset: 9088)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !415, file: !416, line: 877, baseType: !723, size: 320, offset: 9216)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !724, line: 86, size: 320, elements: !725)
!724 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!725 = !{!726, !727, !728}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !723, file: !724, line: 87, baseType: !109, size: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !723, file: !724, line: 88, baseType: !340, size: 128, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !723, file: !724, line: 89, baseType: !340, size: 128, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !415, file: !416, line: 878, baseType: !476, size: 192, align: 64, offset: 9536)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !415, file: !416, line: 881, baseType: !731, size: 64, offset: 9728)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !35, line: 733, size: 10240, elements: !733)
!733 = !{!734, !3453}
!734 = !DIDerivedType(tag: DW_TAG_member, scope: !732, file: !35, line: 734, baseType: !735, size: 10240)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !732, file: !35, line: 734, size: 10240, elements: !736)
!736 = !{!737, !741, !763, !3332, !3333, !3334, !3335, !3336, !3337, !3344, !3345, !3346, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3385, !3387, !3390, !3433, !3434, !3435, !3438, !3439, !3440, !3443, !3444, !3445, !3451, !3452}
!737 = !DIDerivedType(tag: DW_TAG_member, scope: !735, file: !35, line: 739, baseType: !738, size: 512, align: 512)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !735, file: !35, line: 739, size: 512, align: 512, elements: !739)
!739 = !{!740}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !738, file: !35, line: 747, baseType: !383, size: 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !735, file: !35, line: 750, baseType: !742, size: 128, offset: 512)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !743, line: 218, size: 128, elements: !744)
!743 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!744 = !{!745, !761, !762}
!745 = !DIDerivedType(tag: DW_TAG_member, scope: !742, file: !743, line: 219, baseType: !746, size: 32)
!746 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !742, file: !743, line: 219, size: 32, elements: !747)
!747 = !{!748, !757}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !746, file: !743, line: 220, baseType: !749, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !750, line: 29, baseType: !751)
!750 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !750, line: 17, size: 32, elements: !752)
!752 = !{!753}
!753 = !DIDerivedType(tag: DW_TAG_member, scope: !751, file: !750, line: 18, baseType: !754, size: 32)
!754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !751, file: !750, line: 18, size: 32, elements: !755)
!755 = !{!756}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !754, file: !750, line: 19, baseType: !372, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !746, file: !743, line: 221, baseType: !758)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !743, line: 197, baseType: !759)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !743, line: 197, elements: !760)
!760 = !{}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !742, file: !743, line: 223, baseType: !7, size: 32, offset: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !742, file: !743, line: 224, baseType: !326, size: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !735, file: !35, line: 752, baseType: !764, size: 64, offset: 640)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!423, !767, !423, !423, !423, !423}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !64, line: 994, size: 1856, align: 64, elements: !769)
!769 = !{!770, !784, !785, !787, !788, !789, !792, !793, !916, !1126, !1135, !3322, !3323, !3324, !3325, !3326, !3327, !3329, !3330, !3331}
!770 = !DIDerivedType(tag: DW_TAG_member, scope: !768, file: !64, line: 995, baseType: !771, size: 128)
!771 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !768, file: !64, line: 995, size: 128, elements: !772)
!772 = !{!773, !774, !783}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !771, file: !64, line: 996, baseType: !445, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !771, file: !64, line: 997, baseType: !775, size: 128, align: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !328, line: 232, size: 128, align: 64, elements: !776)
!776 = !{!777, !779}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !775, file: !328, line: 233, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !775, file: !328, line: 234, baseType: !780, size: 64, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{null, !778}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !771, file: !64, line: 998, baseType: !7, size: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !768, file: !64, line: 1005, baseType: !749, size: 32, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !768, file: !64, line: 1006, baseType: !786, size: 32, offset: 160)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !328, line: 156, baseType: !7)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !768, file: !64, line: 1007, baseType: !358, size: 64, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !768, file: !64, line: 1008, baseType: !354, size: 256, offset: 256)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !768, file: !64, line: 1009, baseType: !790, size: 64, offset: 512)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !328, line: 52, baseType: !791)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !598, line: 88, baseType: !368)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !768, file: !64, line: 1010, baseType: !7, size: 32, offset: 576)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !768, file: !64, line: 1011, baseType: !794, size: 256, offset: 640)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !64, line: 948, size: 256, elements: !795)
!795 = !{!796, !819, !905, !906, !914, !915}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !794, file: !64, line: 949, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !798, line: 34, baseType: !799)
!798 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !798, line: 25, size: 64, elements: !800)
!800 = !{!801}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !799, file: !798, line: 26, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !803, line: 27, baseType: !804)
!803 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !803, line: 13, size: 64, elements: !805)
!805 = !{!806, !818}
!806 = !DIDerivedType(tag: DW_TAG_member, scope: !804, file: !803, line: 14, baseType: !807, size: 32)
!807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !804, file: !803, line: 14, size: 32, elements: !808)
!808 = !{!809, !810}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !807, file: !803, line: 15, baseType: !383, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, scope: !807, file: !803, line: 16, baseType: !811, size: 32)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !807, file: !803, line: 16, size: 32, elements: !812)
!812 = !{!813, !814}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !811, file: !803, line: 18, baseType: !391, size: 8)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !811, file: !803, line: 19, baseType: !815, size: 24, offset: 8)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 24, elements: !816)
!816 = !{!817}
!817 = !DISubrange(count: 3)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !804, file: !803, line: 26, baseType: !375, size: 32, offset: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !794, file: !64, line: 950, baseType: !820, size: 64, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !12, line: 59, size: 768, elements: !822)
!822 = !{!823, !824, !825, !826, !839, !840, !847, !848}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !821, file: !12, line: 61, baseType: !432, size: 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !821, file: !12, line: 62, baseType: !7, size: 32, offset: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !821, file: !12, line: 63, baseType: !749, size: 32, offset: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !821, file: !12, line: 65, baseType: !827, size: 256, offset: 128)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !828, size: 256, elements: !837)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !328, line: 194, size: 64, elements: !829)
!829 = !{!830}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !828, file: !328, line: 195, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !328, line: 198, size: 128, elements: !833)
!833 = !{!834, !835}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !832, file: !328, line: 199, baseType: !831, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !832, file: !328, line: 199, baseType: !836, size: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!837 = !{!838}
!838 = !DISubrange(count: 4)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !821, file: !12, line: 66, baseType: !828, size: 64, offset: 384)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !821, file: !12, line: 68, baseType: !841, size: 192, offset: 448)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !842, line: 41, baseType: !843)
!842 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !842, line: 37, size: 192, elements: !844)
!844 = !{!845, !846}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !843, file: !842, line: 38, baseType: !749, size: 32)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !843, file: !842, line: 39, baseType: !340, size: 128, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !821, file: !12, line: 69, baseType: !775, size: 128, align: 64, offset: 640)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !821, file: !12, line: 70, baseType: !849, offset: 768)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !850, elements: !903)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !12, line: 54, size: 128, elements: !851)
!851 = !{!852, !853}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !850, file: !12, line: 55, baseType: !109, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !850, file: !12, line: 56, baseType: !854, size: 64, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !856, line: 26, size: 1152, elements: !857)
!856 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!857 = !{!858, !871, !872, !873, !874, !878, !879, !880, !883, !886, !890, !891, !902}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !855, file: !856, line: 27, baseType: !859, size: 192)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !860, line: 19, size: 192, elements: !861)
!860 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!861 = !{!862, !869, !870}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !859, file: !860, line: 20, baseType: !863, size: 128)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !864, line: 296, size: 128, elements: !865)
!864 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!865 = !{!866, !867, !868}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !863, file: !864, line: 297, baseType: !749, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !863, file: !864, line: 299, baseType: !327, size: 32, offset: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !863, file: !864, line: 300, baseType: !326, size: 64, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !859, file: !860, line: 21, baseType: !7, size: 32, offset: 128)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !859, file: !860, line: 22, baseType: !7, size: 32, offset: 160)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !855, file: !856, line: 28, baseType: !775, size: 128, align: 64, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !855, file: !856, line: 29, baseType: !7, size: 32, offset: 320)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !855, file: !856, line: 30, baseType: !414, size: 64, offset: 384)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !855, file: !856, line: 31, baseType: !875, size: 64, offset: 448)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !877, line: 11, flags: DIFlagFwdDecl)
!877 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!878 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !855, file: !856, line: 32, baseType: !7, size: 32, offset: 512)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !855, file: !856, line: 33, baseType: !854, size: 64, offset: 576)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !855, file: !856, line: 35, baseType: !881, size: 64, offset: 640)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !856, line: 17, flags: DIFlagFwdDecl)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !855, file: !856, line: 37, baseType: !884, size: 64, offset: 704)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !35, line: 901, flags: DIFlagFwdDecl)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !855, file: !856, line: 38, baseType: !887, size: 64, offset: 768)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !889, line: 16, flags: DIFlagFwdDecl)
!889 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!890 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !855, file: !856, line: 39, baseType: !109, size: 32, offset: 832)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !855, file: !856, line: 40, baseType: !892, size: 192, offset: 896)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !893, line: 9, size: 192, elements: !894)
!893 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!894 = !{!895, !896, !900, !901}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !892, file: !893, line: 10, baseType: !358, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !892, file: !893, line: 11, baseType: !897, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !899)
!899 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !893, line: 7, flags: DIFlagFwdDecl)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !892, file: !893, line: 12, baseType: !7, size: 32, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !892, file: !893, line: 13, baseType: !432, size: 32, offset: 160)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !855, file: !856, line: 42, baseType: !109, size: 32, offset: 1088)
!903 = !{!904}
!904 = !DISubrange(count: -1)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !794, file: !64, line: 951, baseType: !11, size: 32, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !794, file: !64, line: 952, baseType: !907, size: 32, offset: 160)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !908, line: 23, baseType: !909)
!908 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !908, line: 21, size: 32, elements: !910)
!910 = !{!911}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !909, file: !908, line: 22, baseType: !912, size: 32)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !328, line: 37, baseType: !913)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !598, line: 49, baseType: !7)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !794, file: !64, line: 952, baseType: !907, size: 32, offset: 192)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !794, file: !64, line: 953, baseType: !109, size: 32, offset: 224)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !768, file: !64, line: 1012, baseType: !917, size: 64, offset: 896)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !919)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !920, line: 110, size: 1472, elements: !921)
!920 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!921 = !{!922, !923, !924, !931, !932, !933, !934, !935, !936, !937, !938, !944, !945, !946, !947, !948, !949, !1076, !1077, !1078, !1079, !1080, !1111, !1112, !1113, !1121}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !919, file: !920, line: 111, baseType: !358, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !919, file: !920, line: 112, baseType: !907, size: 32, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !919, file: !920, line: 113, baseType: !925, size: 32, offset: 96)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !908, line: 28, baseType: !926)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !908, line: 26, size: 32, elements: !927)
!927 = !{!928}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !926, file: !908, line: 27, baseType: !929, size: 32)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !328, line: 38, baseType: !930)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !598, line: 50, baseType: !7)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !919, file: !920, line: 114, baseType: !907, size: 32, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !919, file: !920, line: 115, baseType: !925, size: 32, offset: 160)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !919, file: !920, line: 116, baseType: !907, size: 32, offset: 192)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !919, file: !920, line: 117, baseType: !925, size: 32, offset: 224)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !919, file: !920, line: 118, baseType: !907, size: 32, offset: 256)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !919, file: !920, line: 119, baseType: !925, size: 32, offset: 288)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !919, file: !920, line: 120, baseType: !7, size: 32, offset: 320)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !919, file: !920, line: 121, baseType: !939, size: 64, offset: 384)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !940, line: 24, baseType: !941)
!940 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !940, line: 24, size: 64, elements: !942)
!942 = !{!943}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !941, file: !940, line: 24, baseType: !484, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !919, file: !920, line: 122, baseType: !939, size: 64, offset: 448)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !919, file: !920, line: 123, baseType: !939, size: 64, offset: 512)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !919, file: !920, line: 124, baseType: !939, size: 64, offset: 576)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !919, file: !920, line: 125, baseType: !939, size: 64, offset: 640)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !919, file: !920, line: 127, baseType: !393, size: 8, offset: 704)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !919, file: !920, line: 129, baseType: !950, size: 64, offset: 768)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !952, line: 195, size: 1728, elements: !953)
!952 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!953 = !{!954, !955, !960, !965, !974, !977, !978, !985, !986, !987, !988, !991, !992, !993, !995, !996, !1040, !1061}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !951, file: !952, line: 196, baseType: !432, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !951, file: !952, line: 197, baseType: !956, size: 32, offset: 32)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !952, line: 28, baseType: !957)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !328, line: 104, baseType: !958)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !365, line: 20, baseType: !959)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !367, line: 26, baseType: !109)
!960 = !DIDerivedType(tag: DW_TAG_member, scope: !951, file: !952, line: 198, baseType: !961, size: 192, offset: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !951, file: !952, line: 198, size: 192, elements: !962)
!962 = !{!963, !964}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !961, file: !952, line: 199, baseType: !340, size: 128)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !961, file: !952, line: 200, baseType: !476, size: 192, align: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !951, file: !952, line: 205, baseType: !966, size: 320, offset: 256)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !967, line: 48, size: 320, elements: !968)
!967 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!968 = !{!969, !970, !971, !972, !973}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !966, file: !967, line: 49, baseType: !358, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !966, file: !967, line: 55, baseType: !358, size: 64, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !966, file: !967, line: 57, baseType: !404, size: 32, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !966, file: !967, line: 59, baseType: !370, size: 32, offset: 160)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !966, file: !967, line: 60, baseType: !340, size: 128, offset: 192)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !951, file: !952, line: 206, baseType: !975, size: 64, offset: 576)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !952, line: 206, flags: DIFlagFwdDecl)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !951, file: !952, line: 207, baseType: !326, size: 64, offset: 640)
!978 = !DIDerivedType(tag: DW_TAG_member, scope: !951, file: !952, line: 208, baseType: !979, size: 64, offset: 704)
!979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !951, file: !952, line: 208, size: 64, elements: !980)
!980 = !{!981, !984}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !979, file: !952, line: 209, baseType: !982, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !983, line: 8, baseType: !366)
!983 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!984 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !979, file: !952, line: 210, baseType: !982, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !951, file: !952, line: 212, baseType: !982, size: 64, offset: 768)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !951, file: !952, line: 213, baseType: !907, size: 32, offset: 832)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !951, file: !952, line: 214, baseType: !925, size: 32, offset: 864)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !951, file: !952, line: 215, baseType: !989, size: 32, offset: 896)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !952, line: 31, baseType: !990)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !328, line: 110, baseType: !426)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !951, file: !952, line: 216, baseType: !401, size: 16, offset: 928)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !951, file: !952, line: 217, baseType: !401, size: 16, offset: 944)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !951, file: !952, line: 221, baseType: !994, size: 16, offset: 960)
!994 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !951, file: !952, line: 228, baseType: !423, size: 64, offset: 1024)
!996 = !DIDerivedType(tag: DW_TAG_member, scope: !951, file: !952, line: 245, baseType: !997, size: 320, offset: 1088)
!997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !951, file: !952, line: 245, size: 320, elements: !998)
!998 = !{!999, !1031}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !997, file: !952, line: 246, baseType: !1000, size: 320)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !952, line: 114, size: 320, elements: !1001)
!1001 = !{!1002, !1003, !1016, !1019, !1028}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1000, file: !952, line: 116, baseType: !423, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !952, line: 117, baseType: !1004, size: 64, offset: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1000, file: !952, line: 117, size: 64, elements: !1005)
!1005 = !{!1006, !1015}
!1006 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !952, line: 118, baseType: !1007, size: 64)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1004, file: !952, line: 118, size: 64, elements: !1008)
!1008 = !{!1009, !1010}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1007, file: !952, line: 120, baseType: !399, size: 16)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1007, file: !952, line: 121, baseType: !1011, size: 48, offset: 16)
!1011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1012, size: 48, elements: !1013)
!1012 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!1013 = !{!1014}
!1014 = !DISubrange(count: 6)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1004, file: !952, line: 127, baseType: !423, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1000, file: !952, line: 129, baseType: !1017, size: 64, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !952, line: 102, flags: DIFlagFwdDecl)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1000, file: !952, line: 130, baseType: !1020, size: 64, offset: 192)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !952, line: 108, size: 192, elements: !1022)
!1022 = !{!1023, !1024, !1025}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1021, file: !952, line: 109, baseType: !775, size: 128, align: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1021, file: !952, line: 110, baseType: !432, size: 32, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1021, file: !952, line: 111, baseType: !1026, size: 8, offset: 160)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !328, line: 35, baseType: !1027)
!1027 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1000, file: !952, line: 131, baseType: !1029, size: 64, offset: 256)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1012)
!1031 = !DIDerivedType(tag: DW_TAG_member, scope: !997, file: !952, line: 247, baseType: !1032, size: 320)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !997, file: !952, line: 247, size: 320, elements: !1033)
!1033 = !{!1034, !1035, !1036, !1037, !1038}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1032, file: !952, line: 248, baseType: !423, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1032, file: !952, line: 249, baseType: !423, size: 64, offset: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1032, file: !952, line: 250, baseType: !1017, size: 64, offset: 128)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1032, file: !952, line: 251, baseType: !1020, size: 64, offset: 192)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1032, file: !952, line: 252, baseType: !1039, size: 64, offset: 256)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, scope: !951, file: !952, line: 260, baseType: !1041, size: 256, offset: 1408)
!1041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !951, file: !952, line: 260, size: 256, elements: !1042)
!1042 = !{!1043, !1049}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1041, file: !952, line: 261, baseType: !1044, size: 256)
!1044 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !952, line: 134, size: 256, elements: !1045)
!1045 = !{!1046, !1047}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1044, file: !952, line: 135, baseType: !326, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1044, file: !952, line: 136, baseType: !1048, size: 256)
!1048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 256, elements: !837)
!1049 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !952, line: 262, baseType: !1050, size: 256)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !952, line: 262, size: 256, elements: !1051)
!1051 = !{!1052, !1053}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1050, file: !952, line: 264, baseType: !340, size: 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1050, file: !952, line: 265, baseType: !1054, size: 128, offset: 128)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1055, line: 22, size: 128, elements: !1056)
!1055 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1056 = !{!1057, !1060}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1054, file: !1055, line: 23, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1055, line: 23, flags: DIFlagFwdDecl)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1054, file: !1055, line: 24, baseType: !423, size: 64, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !951, file: !952, line: 280, baseType: !1062, size: 64, offset: 1664)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !952, line: 176, size: 192, elements: !1064)
!1064 = !{!1065, !1074, !1075}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1063, file: !952, line: 177, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !952, line: 171, baseType: !1067)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!109, !950, !1070, !1072, !950}
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1018)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1044)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1063, file: !952, line: 178, baseType: !950, size: 64, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1063, file: !952, line: 179, baseType: !1017, size: 64, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !919, file: !920, line: 130, baseType: !950, size: 64, offset: 832)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !919, file: !920, line: 131, baseType: !950, size: 64, offset: 896)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !919, file: !920, line: 132, baseType: !950, size: 64, offset: 960)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !919, file: !920, line: 135, baseType: !326, size: 64, offset: 1024)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !919, file: !920, line: 137, baseType: !1081, size: 64, offset: 1088)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1083, line: 14, size: 1088, elements: !1084)
!1083 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1084 = !{!1085, !1086, !1095, !1096, !1097, !1098, !1099, !1100}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1082, file: !1083, line: 15, baseType: !432, size: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1082, file: !1083, line: 17, baseType: !1087, size: 320, offset: 64)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1088, line: 22, size: 320, elements: !1089)
!1088 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1089 = !{!1090, !1091, !1092, !1093}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1087, file: !1088, line: 23, baseType: !370, size: 32)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1087, file: !1088, line: 24, baseType: !364, size: 64, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1087, file: !1088, line: 26, baseType: !340, size: 128, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1087, file: !1088, line: 28, baseType: !1094, size: 64, offset: 256)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1082, file: !1083, line: 19, baseType: !423, size: 64, offset: 384)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1082, file: !1083, line: 20, baseType: !358, size: 64, offset: 448)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1082, file: !1083, line: 23, baseType: !832, size: 128, offset: 512)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1082, file: !1083, line: 24, baseType: !907, size: 32, offset: 640)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1082, file: !1083, line: 29, baseType: !358, size: 64, offset: 704)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1082, file: !1083, line: 36, baseType: !1101, size: 320, offset: 768)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1102, line: 15, size: 320, elements: !1103)
!1102 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1103 = !{!1104, !1105, !1106, !1107, !1108, !1109, !1110}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1101, file: !1102, line: 16, baseType: !370, size: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1101, file: !1102, line: 18, baseType: !109, size: 32, offset: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1101, file: !1102, line: 19, baseType: !109, size: 32, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1101, file: !1102, line: 20, baseType: !109, size: 32, offset: 96)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1101, file: !1102, line: 21, baseType: !109, size: 32, offset: 128)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1101, file: !1102, line: 22, baseType: !423, size: 64, offset: 192)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1101, file: !1102, line: 23, baseType: !423, size: 64, offset: 256)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !919, file: !920, line: 138, baseType: !884, size: 64, offset: 1152)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !919, file: !920, line: 139, baseType: !887, size: 64, offset: 1216)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !919, file: !920, line: 140, baseType: !1114, size: 64, offset: 1280)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !920, line: 25, size: 64, elements: !1116)
!1116 = !{!1117, !1118, !1119}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1115, file: !920, line: 26, baseType: !383, size: 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1115, file: !920, line: 27, baseType: !109, size: 32, offset: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1115, file: !920, line: 28, baseType: !1120, offset: 64)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !925, elements: !903)
!1121 = !DIDerivedType(tag: DW_TAG_member, scope: !919, file: !920, line: 142, baseType: !1122, size: 128, offset: 1344)
!1122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !919, file: !920, line: 142, size: 128, elements: !1123)
!1123 = !{!1124, !1125}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1122, file: !920, line: 143, baseType: !109, size: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1122, file: !920, line: 144, baseType: !775, size: 128, align: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !768, file: !64, line: 1013, baseType: !1127, size: 256, offset: 960)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !64, line: 970, size: 256, elements: !1128)
!1128 = !{!1129, !1130, !1131, !1132, !1133, !1134}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1127, file: !64, line: 971, baseType: !423, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1127, file: !64, line: 972, baseType: !7, size: 32, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1127, file: !64, line: 973, baseType: !7, size: 32, offset: 96)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1127, file: !64, line: 974, baseType: !7, size: 32, offset: 128)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1127, file: !64, line: 975, baseType: !7, size: 32, offset: 160)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1127, file: !64, line: 976, baseType: !790, size: 64, offset: 192)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !768, file: !64, line: 1014, baseType: !1136, size: 128, offset: 1216)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1137, line: 8, size: 128, elements: !1138)
!1137 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1138 = !{!1139, !3321}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1136, file: !1137, line: 9, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1142, line: 70, size: 256, elements: !1143)
!1142 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1143 = !{!1144, !3318, !3319, !3320}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1141, file: !1142, line: 71, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1147, line: 82, size: 1536, elements: !1148)
!1147 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1148 = !{!1149, !1150, !1155, !1163, !1164, !1179, !3285, !3287, !3300, !3301, !3302, !3303, !3304, !3310, !3311, !3312}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1146, file: !1147, line: 84, baseType: !7, size: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1146, file: !1147, line: 85, baseType: !1151, size: 32, offset: 32)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !601, line: 275, baseType: !1152)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !601, line: 275, size: 32, elements: !1153)
!1153 = !{!1154}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1152, file: !601, line: 275, baseType: !605, size: 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1146, file: !1147, line: 86, baseType: !1156, size: 128, offset: 64)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1157, line: 38, size: 128, elements: !1158)
!1157 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1158 = !{!1159, !1161}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1156, file: !1157, line: 39, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1156, file: !1157, line: 39, baseType: !1162, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1146, file: !1147, line: 87, baseType: !1145, size: 64, offset: 192)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1146, file: !1147, line: 88, baseType: !1165, size: 128, offset: 256)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1147, line: 49, size: 128, elements: !1166)
!1166 = !{!1167, !1176}
!1167 = !DIDerivedType(tag: DW_TAG_member, scope: !1165, file: !1147, line: 50, baseType: !1168, size: 64)
!1168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1165, file: !1147, line: 50, size: 64, elements: !1169)
!1169 = !{!1170, !1175}
!1170 = !DIDerivedType(tag: DW_TAG_member, scope: !1168, file: !1147, line: 51, baseType: !1171, size: 64)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1168, file: !1147, line: 51, size: 64, elements: !1172)
!1172 = !{!1173, !1174}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1171, file: !1147, line: 52, baseType: !426, size: 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1171, file: !1147, line: 52, baseType: !426, size: 32, offset: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1168, file: !1147, line: 54, baseType: !484, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1165, file: !1147, line: 56, baseType: !1177, size: 64, offset: 64)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1146, file: !1147, line: 89, baseType: !1180, size: 64, offset: 384)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !64, line: 641, size: 4800, elements: !1182)
!1182 = !{!1183, !1185, !1186, !1187, !1188, !1189, !1190, !1193, !1194, !1385, !3099, !3100, !3101, !3102, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3267, !3270, !3271, !3272, !3281, !3282, !3283, !3284}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1181, file: !64, line: 642, baseType: !1184, size: 16)
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !328, line: 24, baseType: !401)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1181, file: !64, line: 643, baseType: !401, size: 16, offset: 16)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1181, file: !64, line: 644, baseType: !907, size: 32, offset: 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1181, file: !64, line: 645, baseType: !340, size: 128, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1181, file: !64, line: 646, baseType: !925, size: 32, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1181, file: !64, line: 647, baseType: !7, size: 32, offset: 224)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1181, file: !64, line: 650, baseType: !1191, size: 64, offset: 256)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !64, line: 607, flags: DIFlagFwdDecl)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1181, file: !64, line: 651, baseType: !1191, size: 64, offset: 320)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1181, file: !64, line: 654, baseType: !1195, size: 64, offset: 384)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1197)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !64, line: 1966, size: 2048, align: 512, elements: !1198)
!1198 = !{!1199, !1203, !1216, !1222, !1226, !1230, !1234, !1238, !1242, !1246, !1250, !1251, !1257, !1261, !1299, !1330, !1340, !1346, !1350, !1354, !1358, !1362, !1366, !1372, !1376}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1197, file: !64, line: 1967, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!1145, !1180, !1145, !7}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1197, file: !64, line: 1968, baseType: !1204, size: 64, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!1029, !1145, !1180, !1207}
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1209, line: 10, size: 128, elements: !1210)
!1209 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1210 = !{!1211, !1215}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1208, file: !1209, line: 11, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{null, !326}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1208, file: !1209, line: 12, baseType: !326, size: 64, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1197, file: !64, line: 1969, baseType: !1217, size: 64, offset: 128)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!109, !1220, !1180, !109}
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !940, line: 42, flags: DIFlagFwdDecl)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1197, file: !64, line: 1970, baseType: !1223, size: 64, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!1191, !1180, !109, !1026}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1197, file: !64, line: 1972, baseType: !1227, size: 64, offset: 256)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!109, !1145, !1039, !109}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1197, file: !64, line: 1974, baseType: !1231, size: 64, offset: 320)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!109, !1220, !1180, !1145, !1184, !1026}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1197, file: !64, line: 1976, baseType: !1235, size: 64, offset: 384)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!109, !1145, !1180, !1145}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1197, file: !64, line: 1977, baseType: !1239, size: 64, offset: 448)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!109, !1180, !1145}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1197, file: !64, line: 1978, baseType: !1243, size: 64, offset: 512)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!109, !1220, !1180, !1145, !1029}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1197, file: !64, line: 1980, baseType: !1247, size: 64, offset: 576)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!109, !1220, !1180, !1145, !1184}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1197, file: !64, line: 1982, baseType: !1239, size: 64, offset: 640)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1197, file: !64, line: 1983, baseType: !1252, size: 64, offset: 704)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!109, !1220, !1180, !1145, !1184, !1255}
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !328, line: 21, baseType: !1256)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !328, line: 18, baseType: !426)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1197, file: !64, line: 1985, baseType: !1258, size: 64, offset: 768)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!109, !1220, !1180, !1145, !1180, !1145, !7}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1197, file: !64, line: 1987, baseType: !1262, size: 64, offset: 832)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!109, !1220, !1145, !1265}
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !64, line: 226, size: 640, elements: !1267)
!1267 = !{!1268, !1269, !1270, !1280, !1289, !1290, !1296, !1297, !1298}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1266, file: !64, line: 227, baseType: !7, size: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1266, file: !64, line: 228, baseType: !1184, size: 16, offset: 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, scope: !1266, file: !64, line: 241, baseType: !1271, size: 32, offset: 64)
!1271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1266, file: !64, line: 241, size: 32, elements: !1272)
!1272 = !{!1273, !1274}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1271, file: !64, line: 242, baseType: !907, size: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1271, file: !64, line: 243, baseType: !1275, size: 32)
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1276, line: 16, baseType: !1277)
!1276 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1276, line: 14, size: 32, elements: !1278)
!1278 = !{!1279}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1277, file: !1276, line: 15, baseType: !912, size: 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, scope: !1266, file: !64, line: 245, baseType: !1281, size: 32, offset: 96)
!1281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1266, file: !64, line: 245, size: 32, elements: !1282)
!1282 = !{!1283, !1284}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1281, file: !64, line: 246, baseType: !925, size: 32)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1281, file: !64, line: 247, baseType: !1285, size: 32)
!1285 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1276, line: 20, baseType: !1286)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1276, line: 18, size: 32, elements: !1287)
!1287 = !{!1288}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1286, file: !1276, line: 19, baseType: !929, size: 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1266, file: !64, line: 249, baseType: !790, size: 64, offset: 128)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1266, file: !64, line: 250, baseType: !1291, size: 128, offset: 192)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !983, line: 13, size: 128, elements: !1292)
!1292 = !{!1293, !1294}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1291, file: !983, line: 14, baseType: !982, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1291, file: !983, line: 15, baseType: !1295, size: 64, offset: 64)
!1295 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1266, file: !64, line: 251, baseType: !1291, size: 128, offset: 320)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1266, file: !64, line: 252, baseType: !1291, size: 128, offset: 448)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1266, file: !64, line: 259, baseType: !767, size: 64, offset: 576)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1197, file: !64, line: 1988, baseType: !1300, size: 64, offset: 896)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!109, !1220, !1303, !1305, !426, !7}
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1136)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1307, line: 22, size: 1280, elements: !1308)
!1307 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1308 = !{!1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1306, file: !1307, line: 23, baseType: !426, size: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1306, file: !1307, line: 24, baseType: !1184, size: 16, offset: 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1306, file: !1307, line: 25, baseType: !7, size: 32, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1306, file: !1307, line: 26, baseType: !990, size: 32, offset: 96)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1306, file: !1307, line: 27, baseType: !484, size: 64, offset: 128)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1306, file: !1307, line: 28, baseType: !484, size: 64, offset: 192)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1306, file: !1307, line: 41, baseType: !484, size: 64, offset: 256)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1306, file: !1307, line: 42, baseType: !1255, size: 32, offset: 320)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1306, file: !1307, line: 43, baseType: !1255, size: 32, offset: 352)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1306, file: !1307, line: 44, baseType: !907, size: 32, offset: 384)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1306, file: !1307, line: 45, baseType: !925, size: 32, offset: 416)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1306, file: !1307, line: 46, baseType: !790, size: 64, offset: 448)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1306, file: !1307, line: 47, baseType: !1291, size: 128, offset: 512)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1306, file: !1307, line: 48, baseType: !1291, size: 128, offset: 640)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1306, file: !1307, line: 49, baseType: !1291, size: 128, offset: 768)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1306, file: !1307, line: 50, baseType: !1291, size: 128, offset: 896)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1306, file: !1307, line: 51, baseType: !484, size: 64, offset: 1024)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1306, file: !1307, line: 52, baseType: !484, size: 64, offset: 1088)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1306, file: !1307, line: 53, baseType: !426, size: 32, offset: 1152)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1306, file: !1307, line: 54, baseType: !426, size: 32, offset: 1184)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1306, file: !1307, line: 55, baseType: !484, size: 64, offset: 1216)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1197, file: !64, line: 1990, baseType: !1331, size: 64, offset: 960)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!1334, !1145, !1039, !1337}
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !328, line: 66, baseType: !1335)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !598, line: 73, baseType: !1336)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !598, line: 15, baseType: !1295)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !328, line: 61, baseType: !1338)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !598, line: 72, baseType: !1339)
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !598, line: 16, baseType: !423)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1197, file: !64, line: 1991, baseType: !1341, size: 64, offset: 1024)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!109, !1180, !1344, !484, !484}
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !64, line: 55, flags: DIFlagFwdDecl)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1197, file: !64, line: 1993, baseType: !1347, size: 64, offset: 1088)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!109, !1180, !109}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1197, file: !64, line: 1994, baseType: !1351, size: 64, offset: 1152)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!109, !1180, !1145, !767, !7, !1184}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1197, file: !64, line: 1997, baseType: !1355, size: 64, offset: 1216)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!109, !1220, !1180, !767, !1184}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1197, file: !64, line: 1999, baseType: !1359, size: 64, offset: 1280)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!1191, !1220, !1145, !109}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1197, file: !64, line: 2001, baseType: !1363, size: 64, offset: 1344)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!109, !1220, !1145, !1191, !109}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1197, file: !64, line: 2003, baseType: !1367, size: 64, offset: 1408)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!109, !1220, !1145, !1370}
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !64, line: 76, flags: DIFlagFwdDecl)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1197, file: !64, line: 2005, baseType: !1373, size: 64, offset: 1472)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!109, !1145, !1370}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1197, file: !64, line: 2006, baseType: !1377, size: 64, offset: 1536)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!1380, !1180}
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !64, line: 3192, size: 192, elements: !1382)
!1382 = !{!1383, !1384}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1381, file: !64, line: 3193, baseType: !863, size: 128)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1381, file: !64, line: 3194, baseType: !426, size: 32, offset: 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1181, file: !64, line: 655, baseType: !1386, size: 64, offset: 448)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !64, line: 1190, size: 10752, elements: !1388)
!1388 = !{!1389, !1390, !1391, !1392, !1393, !1394, !2612, !2744, !2784, !2867, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2884, !2888, !2889, !2892, !2895, !2898, !2901, !2902, !2903, !2944, !2970, !2971, !2972, !2973, !2974, !2975, !2978, !2982, !2991, !2992, !2993, !2994, !3053, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1387, file: !64, line: 1191, baseType: !340, size: 128)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1387, file: !64, line: 1192, baseType: !1255, size: 32, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1387, file: !64, line: 1193, baseType: !393, size: 8, offset: 160)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1387, file: !64, line: 1194, baseType: !423, size: 64, offset: 192)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1387, file: !64, line: 1195, baseType: !790, size: 64, offset: 256)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1387, file: !64, line: 1196, baseType: !1395, size: 64, offset: 320)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !64, line: 2366, size: 576, elements: !1397)
!1397 = !{!1398, !1399, !1400, !1407, !1411, !1415, !1419, !2600, !2601, !2602, !2604, !2605, !2606, !2608, !2609, !2610, !2611}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1396, file: !64, line: 2367, baseType: !1029, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1396, file: !64, line: 2368, baseType: !109, size: 32, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1396, file: !64, line: 2376, baseType: !1401, size: 64, offset: 128)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!109, !1404}
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1406, line: 32, flags: DIFlagFwdDecl)
!1406 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1396, file: !64, line: 2377, baseType: !1408, size: 64, offset: 192)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1410)
!1410 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !64, line: 75, flags: DIFlagFwdDecl)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1396, file: !64, line: 2378, baseType: !1412, size: 64, offset: 256)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!1145, !1395, !109, !1029, !326}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1396, file: !64, line: 2380, baseType: !1416, size: 64, offset: 320)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{null, !1386}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1396, file: !64, line: 2381, baseType: !1420, size: 64, offset: 384)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !20, line: 402, size: 9216, align: 512, elements: !1422)
!1422 = !{!1423, !1424, !1425, !1429, !2243, !2269, !2270, !2271, !2272, !2276, !2279, !2280, !2281, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2349, !2353, !2373, !2393, !2394, !2395, !2396, !2405, !2428, !2429, !2432, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2446, !2447, !2558, !2566, !2567, !2568, !2570, !2574, !2575, !2579, !2580, !2581, !2582, !2584, !2585, !2586, !2593, !2594, !2595, !2599}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1421, file: !20, line: 403, baseType: !19, size: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1421, file: !20, line: 406, baseType: !340, size: 128, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1421, file: !20, line: 409, baseType: !1426, size: 448, offset: 192)
!1426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1012, size: 448, elements: !1427)
!1427 = !{!1428}
!1428 = !DISubrange(count: 56)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1421, file: !20, line: 417, baseType: !1430, size: 768, offset: 640)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !20, line: 45, size: 768, elements: !1431)
!1431 = !{!1432, !2236, !2237, !2238, !2241}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1430, file: !20, line: 46, baseType: !1433, size: 512)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1434, line: 64, size: 512, elements: !1435)
!1434 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1435 = !{!1436, !1437, !1438, !1440, !1484, !2092, !2226, !2231, !2232, !2233, !2234, !2235}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1433, file: !1434, line: 65, baseType: !1029, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1433, file: !1434, line: 66, baseType: !340, size: 128, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1433, file: !1434, line: 67, baseType: !1439, size: 64, offset: 192)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1433, file: !1434, line: 68, baseType: !1441, size: 64, offset: 256)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1434, line: 168, size: 768, elements: !1443)
!1443 = !{!1444, !1445, !1446, !1447}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1442, file: !1434, line: 169, baseType: !340, size: 128)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1442, file: !1434, line: 170, baseType: !749, size: 32, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1442, file: !1434, line: 171, baseType: !1433, size: 512, offset: 192)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1442, file: !1434, line: 172, baseType: !1448, size: 64, offset: 704)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1450)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1434, line: 133, size: 192, elements: !1451)
!1451 = !{!1452, !1459, !1464}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1450, file: !1434, line: 134, baseType: !1453, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1454)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!109, !1457}
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1433)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1450, file: !1434, line: 135, baseType: !1460, size: 64, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1461)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!1029, !1457}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1450, file: !1434, line: 136, baseType: !1465, size: 64, offset: 128)
!1465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1466)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!109, !1457, !1469}
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1434, line: 125, size: 20736, elements: !1471)
!1471 = !{!1472, !1474, !1478, !1479, !1483}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1470, file: !1434, line: 126, baseType: !1473, size: 192)
!1473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1039, size: 192, elements: !816)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1470, file: !1434, line: 127, baseType: !1475, size: 4096, offset: 192)
!1475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1039, size: 4096, elements: !1476)
!1476 = !{!1477}
!1477 = !DISubrange(count: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1470, file: !1434, line: 128, baseType: !109, size: 32, offset: 4288)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1470, file: !1434, line: 129, baseType: !1480, size: 16384, offset: 4320)
!1480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1012, size: 16384, elements: !1481)
!1481 = !{!1482}
!1482 = !DISubrange(count: 2048)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1470, file: !1434, line: 130, baseType: !109, size: 32, offset: 20704)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1433, file: !1434, line: 69, baseType: !1485, size: 64, offset: 320)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1487)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1434, line: 116, size: 384, elements: !1488)
!1488 = !{!1489, !1493, !1512, !2052, !2082, !2086}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1487, file: !1434, line: 117, baseType: !1490, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{null, !1439}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1487, file: !1434, line: 118, baseType: !1494, size: 64, offset: 64)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1496)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1497, line: 254, size: 128, elements: !1498)
!1497 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1498 = !{!1499, !1508}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1496, file: !1497, line: 255, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!1334, !1439, !1503, !1039}
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1497, line: 30, size: 128, elements: !1505)
!1505 = !{!1506, !1507}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1504, file: !1497, line: 31, baseType: !1029, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1504, file: !1497, line: 32, baseType: !1184, size: 16, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1496, file: !1497, line: 256, baseType: !1509, size: 64, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!1334, !1439, !1503, !1029, !1337}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1487, file: !1434, line: 119, baseType: !1513, size: 64, offset: 128)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1516)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1497, line: 84, size: 320, elements: !1517)
!1517 = !{!1518, !1519, !1523, !2048, !2050}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1516, file: !1497, line: 85, baseType: !1029, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1516, file: !1497, line: 86, baseType: !1520, size: 64, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!1184, !1439, !1503, !109}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1516, file: !1497, line: 88, baseType: !1524, size: 64, offset: 128)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!1184, !1439, !1527, !109}
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1497, line: 175, size: 512, elements: !1529)
!1529 = !{!1530, !1531, !1532, !1533, !2039, !2043, !2044}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1528, file: !1497, line: 176, baseType: !1504, size: 128)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1528, file: !1497, line: 177, baseType: !1337, size: 64, offset: 128)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1528, file: !1497, line: 178, baseType: !326, size: 64, offset: 192)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1528, file: !1497, line: 179, baseType: !1534, size: 64, offset: 256)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!1537}
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !64, line: 472, size: 1536, align: 64, elements: !1539)
!1539 = !{!1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !2031, !2032, !2033, !2036, !2037, !2038}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1538, file: !64, line: 473, baseType: !1180, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1538, file: !64, line: 474, baseType: !863, size: 128, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1538, file: !64, line: 475, baseType: !966, size: 320, offset: 192)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1538, file: !64, line: 476, baseType: !327, size: 32, offset: 512)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1538, file: !64, line: 477, baseType: !383, size: 32, offset: 544)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1538, file: !64, line: 482, baseType: !614, size: 128, offset: 576)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1538, file: !64, line: 483, baseType: !423, size: 64, offset: 704)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1538, file: !64, line: 484, baseType: !423, size: 64, offset: 768)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1538, file: !64, line: 485, baseType: !1549, size: 64, offset: 832)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1551)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !64, line: 404, size: 1280, elements: !1552)
!1552 = !{!1553, !1856, !1926, !1930, !1934, !1940, !1946, !1950, !1955, !1959, !1963, !1967, !1995, !1999, !2003, !2007, !2012, !2016, !2023, !2027}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1551, file: !64, line: 405, baseType: !1554, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!109, !1557, !1854}
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !35, line: 74, size: 512, align: 128, elements: !1559)
!1559 = !{!1560, !1561, !1848, !1853}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1558, file: !35, line: 75, baseType: !423, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, scope: !1558, file: !35, line: 83, baseType: !1562, size: 320, offset: 64)
!1562 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1558, file: !35, line: 83, size: 320, elements: !1563)
!1563 = !{!1564, !1585, !1599, !1603, !1847}
!1564 = !DIDerivedType(tag: DW_TAG_member, scope: !1562, file: !35, line: 84, baseType: !1565, size: 320)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1562, file: !35, line: 84, size: 320, elements: !1566)
!1566 = !{!1567, !1578, !1579, !1584}
!1567 = !DIDerivedType(tag: DW_TAG_member, scope: !1565, file: !35, line: 90, baseType: !1568, size: 128)
!1568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1565, file: !35, line: 90, size: 128, elements: !1569)
!1569 = !{!1570, !1571, !1576, !1577}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1568, file: !35, line: 91, baseType: !340, size: 128)
!1571 = !DIDerivedType(tag: DW_TAG_member, scope: !1568, file: !35, line: 94, baseType: !1572, size: 128)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1568, file: !35, line: 94, size: 128, elements: !1573)
!1573 = !{!1574, !1575}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1572, file: !35, line: 96, baseType: !326, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1572, file: !35, line: 98, baseType: !7, size: 32, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1568, file: !35, line: 102, baseType: !340, size: 128)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1568, file: !35, line: 103, baseType: !340, size: 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1565, file: !35, line: 106, baseType: !1537, size: 64, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, scope: !1565, file: !35, line: 107, baseType: !1580, size: 64, offset: 192)
!1580 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1565, file: !35, line: 107, size: 64, elements: !1581)
!1581 = !{!1582, !1583}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1580, file: !35, line: 108, baseType: !423, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1580, file: !35, line: 109, baseType: !423, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1565, file: !35, line: 117, baseType: !423, size: 64, offset: 256)
!1585 = !DIDerivedType(tag: DW_TAG_member, scope: !1562, file: !35, line: 119, baseType: !1586, size: 320)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1562, file: !35, line: 119, size: 320, elements: !1587)
!1587 = !{!1588, !1589, !1592, !1593, !1594}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1586, file: !35, line: 124, baseType: !423, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1586, file: !35, line: 125, baseType: !1590, size: 64, offset: 64)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !35, line: 125, flags: DIFlagFwdDecl)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1586, file: !35, line: 126, baseType: !423, size: 64, offset: 128)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1586, file: !35, line: 127, baseType: !423, size: 64, offset: 192)
!1594 = !DIDerivedType(tag: DW_TAG_member, scope: !1586, file: !35, line: 128, baseType: !1595, size: 64, offset: 256)
!1595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1586, file: !35, line: 128, size: 64, elements: !1596)
!1596 = !{!1597, !1598}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1595, file: !35, line: 133, baseType: !423, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1595, file: !35, line: 138, baseType: !358, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, scope: !1562, file: !35, line: 141, baseType: !1600, size: 64)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1562, file: !35, line: 141, size: 64, elements: !1601)
!1601 = !{!1602}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1600, file: !35, line: 142, baseType: !423, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, scope: !1562, file: !35, line: 144, baseType: !1604, size: 128)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1562, file: !35, line: 144, size: 128, elements: !1605)
!1605 = !{!1606, !1846}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1604, file: !35, line: 146, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !27, line: 126, size: 1216, elements: !1609)
!1609 = !{!1610, !1620, !1641, !1652, !1653, !1654, !1655, !1828, !1829, !1830}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1608, file: !27, line: 127, baseType: !1611, size: 384)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !27, line: 21, size: 384, elements: !1612)
!1612 = !{!1613, !1614, !1616, !1617, !1618, !1619}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1611, file: !27, line: 22, baseType: !423, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1611, file: !27, line: 23, baseType: !1615, size: 64, offset: 64)
!1615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !423)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1611, file: !27, line: 24, baseType: !1615, size: 64, offset: 128)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1611, file: !27, line: 25, baseType: !423, size: 64, offset: 192)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1611, file: !27, line: 26, baseType: !423, size: 64, offset: 256)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1611, file: !27, line: 27, baseType: !423, size: 64, offset: 320)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1608, file: !27, line: 128, baseType: !1621, size: 128, offset: 384)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1622, line: 105, size: 128, elements: !1623)
!1622 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1623 = !{!1624, !1625}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1621, file: !1622, line: 110, baseType: !423, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1621, file: !1622, line: 118, baseType: !1626, size: 64, offset: 64)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1622, line: 95, size: 448, elements: !1628)
!1628 = !{!1629, !1630, !1636, !1637, !1638, !1639, !1640}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1627, file: !1622, line: 96, baseType: !358, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1627, file: !1622, line: 97, baseType: !1631, size: 64, offset: 64)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1622, line: 60, baseType: !1633)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{null, !1635}
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1627, file: !1622, line: 98, baseType: !1631, size: 64, offset: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1627, file: !1622, line: 99, baseType: !1026, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1627, file: !1622, line: 100, baseType: !1026, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1627, file: !1622, line: 101, baseType: !775, size: 128, align: 64, offset: 256)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1627, file: !1622, line: 102, baseType: !1635, size: 64, offset: 384)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1608, file: !27, line: 129, baseType: !1642, size: 256, offset: 512)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1643, line: 26, size: 256, elements: !1644)
!1643 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1644 = !{!1645, !1646}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1642, file: !1643, line: 27, baseType: !7, size: 32)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1642, file: !1643, line: 28, baseType: !1647, size: 192, offset: 64)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1648, line: 43, size: 192, elements: !1649)
!1648 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1649 = !{!1650, !1651}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1647, file: !1648, line: 44, baseType: !370, size: 32)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1647, file: !1648, line: 45, baseType: !340, size: 128, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1608, file: !27, line: 130, baseType: !26, size: 32, offset: 768)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1608, file: !27, line: 131, baseType: !7, size: 32, offset: 800)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1608, file: !27, line: 132, baseType: !423, size: 64, offset: 832)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1608, file: !27, line: 133, baseType: !1656, size: 64, offset: 896)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1658)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !27, line: 77, size: 192, elements: !1659)
!1659 = !{!1660, !1664, !1824}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1658, file: !27, line: 83, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{null, !1557}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1658, file: !27, line: 89, baseType: !1665, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!1668, !1669}
!1668 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !35, line: 1184, baseType: !7)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1671, line: 512, size: 896, elements: !1672)
!1671 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1672 = !{!1673, !1791, !1792, !1799, !1806, !1816, !1817, !1818, !1820, !1822}
!1673 = !DIDerivedType(tag: DW_TAG_member, scope: !1670, file: !1671, line: 513, baseType: !1674, size: 320)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1670, file: !1671, line: 513, size: 320, elements: !1675)
!1675 = !{!1676, !1787, !1788, !1789, !1790}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1674, file: !1671, line: 514, baseType: !1677, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !35, line: 625, size: 1344, elements: !1679)
!1679 = !{!1680, !1689, !1690, !1698, !1705, !1706, !1711, !1712, !1717, !1718, !1721, !1780, !1781, !1782, !1783, !1784, !1785}
!1680 = !DIDerivedType(tag: DW_TAG_member, scope: !1678, file: !35, line: 628, baseType: !1681, size: 128)
!1681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1678, file: !35, line: 628, size: 128, elements: !1682)
!1682 = !{!1683, !1688}
!1683 = !DIDerivedType(tag: DW_TAG_member, scope: !1681, file: !35, line: 629, baseType: !1684, size: 128)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1681, file: !35, line: 629, size: 128, elements: !1685)
!1685 = !{!1686, !1687}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1684, file: !35, line: 631, baseType: !423, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1684, file: !35, line: 632, baseType: !423, size: 64, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1681, file: !35, line: 635, baseType: !775, size: 128, align: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1678, file: !35, line: 639, baseType: !731, size: 64, offset: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1678, file: !35, line: 640, baseType: !1691, size: 64, offset: 192)
!1691 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1692, line: 297, baseType: !1693)
!1692 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1692, line: 297, size: 64, elements: !1694)
!1694 = !{!1695}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1693, file: !1692, line: 297, baseType: !1696, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1697, line: 19, baseType: !423)
!1697 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1698 = !DIDerivedType(tag: DW_TAG_member, scope: !1678, file: !35, line: 646, baseType: !1699, size: 64, offset: 256)
!1699 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1678, file: !35, line: 646, size: 64, elements: !1700)
!1700 = !{!1701, !1704}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1699, file: !35, line: 647, baseType: !1702, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1703)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !35, line: 542, baseType: !423)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1699, file: !35, line: 648, baseType: !1703, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1678, file: !35, line: 666, baseType: !109, size: 32, offset: 320)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1678, file: !35, line: 667, baseType: !1707, size: 64, offset: 384)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !35, line: 579, size: 320, elements: !1709)
!1709 = !{!1710}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1708, file: !35, line: 580, baseType: !966, size: 320)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1678, file: !35, line: 670, baseType: !1026, size: 8, offset: 448)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1678, file: !35, line: 681, baseType: !1713, size: 256, offset: 512)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1678, file: !35, line: 678, size: 256, elements: !1714)
!1714 = !{!1715, !1716}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1713, file: !35, line: 679, baseType: !476, size: 192, align: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1713, file: !35, line: 680, baseType: !423, size: 64, offset: 192)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1678, file: !35, line: 689, baseType: !340, size: 128, offset: 768)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1678, file: !35, line: 691, baseType: !1719, size: 64, offset: 896)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !35, line: 691, flags: DIFlagFwdDecl)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1678, file: !35, line: 694, baseType: !1722, size: 64, offset: 960)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1724)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1671, line: 563, size: 1024, elements: !1725)
!1725 = !{!1726, !1730, !1731, !1735, !1739, !1743, !1744, !1748, !1752, !1756, !1757, !1758, !1762, !1766, !1772, !1776}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1724, file: !1671, line: 564, baseType: !1727, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{null, !1677}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1724, file: !1671, line: 569, baseType: !1727, size: 64, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1724, file: !1671, line: 571, baseType: !1732, size: 64, offset: 128)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!109, !1677, !423}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1724, file: !1671, line: 572, baseType: !1736, size: 64, offset: 192)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!109, !1677}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1724, file: !1671, line: 578, baseType: !1740, size: 64, offset: 256)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!109, !1677, !423, !423, !423}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1724, file: !1671, line: 580, baseType: !1665, size: 64, offset: 320)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1724, file: !1671, line: 581, baseType: !1745, size: 64, offset: 384)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!1668, !1669, !7}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1724, file: !1671, line: 582, baseType: !1749, size: 64, offset: 448)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!1668, !1669, !423, !423}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1724, file: !1671, line: 584, baseType: !1753, size: 64, offset: 512)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!423, !1677}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1724, file: !1671, line: 588, baseType: !1665, size: 64, offset: 576)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1724, file: !1671, line: 591, baseType: !1665, size: 64, offset: 640)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1724, file: !1671, line: 597, baseType: !1759, size: 64, offset: 704)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!109, !1677, !423, !326, !109, !109}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1724, file: !1671, line: 603, baseType: !1763, size: 64, offset: 768)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!1029, !1677}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1724, file: !1671, line: 613, baseType: !1767, size: 64, offset: 832)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!109, !1677, !1770}
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !35, line: 717, flags: DIFlagFwdDecl)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1724, file: !1671, line: 625, baseType: !1773, size: 64, offset: 896)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!1770, !1677, !423}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1724, file: !1671, line: 633, baseType: !1777, size: 64, offset: 960)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!1557, !1677, !423}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1678, file: !35, line: 697, baseType: !423, size: 64, offset: 1024)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1678, file: !35, line: 699, baseType: !767, size: 64, offset: 1088)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1678, file: !35, line: 700, baseType: !326, size: 64, offset: 1152)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1678, file: !35, line: 711, baseType: !358, size: 64, offset: 1216)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1678, file: !35, line: 717, baseType: !1770, size: 64, offset: 1280)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1678, file: !35, line: 722, baseType: !1786, offset: 1344)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !35, line: 570, elements: !760)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1674, file: !1671, line: 515, baseType: !327, size: 32, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1674, file: !1671, line: 516, baseType: !423, size: 64, offset: 128)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1674, file: !1671, line: 517, baseType: !423, size: 64, offset: 192)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1674, file: !1671, line: 518, baseType: !423, size: 64, offset: 256)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1670, file: !1671, line: 520, baseType: !34, size: 32, offset: 320)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1670, file: !1671, line: 522, baseType: !1793, size: 64, offset: 384)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1697, line: 22, baseType: !1795)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1697, line: 22, size: 64, elements: !1796)
!1796 = !{!1797}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1795, file: !1697, line: 22, baseType: !1798, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1697, line: 15, baseType: !423)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1670, file: !1671, line: 524, baseType: !1800, size: 64, offset: 448)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1692, line: 372, baseType: !1802)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1692, line: 372, size: 64, elements: !1803)
!1803 = !{!1804}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1802, file: !1692, line: 372, baseType: !1805, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1697, line: 16, baseType: !423)
!1806 = !DIDerivedType(tag: DW_TAG_member, scope: !1670, file: !1671, line: 527, baseType: !1807, size: 64, offset: 512)
!1807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1670, file: !1671, line: 527, size: 64, elements: !1808)
!1808 = !{!1809, !1815}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1807, file: !1671, line: 528, baseType: !1810, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1697, line: 21, baseType: !1811)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1697, line: 21, size: 64, elements: !1812)
!1812 = !{!1813}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1811, file: !1697, line: 21, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1697, line: 14, baseType: !423)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1807, file: !1671, line: 529, baseType: !1794, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1670, file: !1671, line: 534, baseType: !1557, size: 64, offset: 576)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1670, file: !1671, line: 535, baseType: !1557, size: 64, offset: 640)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1670, file: !1671, line: 541, baseType: !1819, size: 64, offset: 704)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1670, file: !1671, line: 545, baseType: !1821, size: 64, offset: 768)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1670, file: !1671, line: 549, baseType: !1823, size: 64, offset: 832)
!1823 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1692, line: 520, baseType: !1557)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1658, file: !27, line: 100, baseType: !1825, size: 64, offset: 128)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!109, !1607, !423, !423, !109}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1608, file: !27, line: 134, baseType: !326, size: 64, offset: 960)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1608, file: !27, line: 135, baseType: !109, size: 32, offset: 1024)
!1830 = !DIDerivedType(tag: DW_TAG_member, scope: !1608, file: !27, line: 136, baseType: !1831, size: 128, offset: 1088)
!1831 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1608, file: !27, line: 136, size: 128, elements: !1832)
!1832 = !{!1833, !1839}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1831, file: !27, line: 137, baseType: !1834, size: 128)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1835, line: 6, size: 128, elements: !1836)
!1835 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1836 = !{!1837, !1838}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1834, file: !1835, line: 7, baseType: !484, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1834, file: !1835, line: 8, baseType: !484, size: 64, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, scope: !1831, file: !27, line: 138, baseType: !1840)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1831, file: !27, line: 138, elements: !1841)
!1841 = !{!1842, !1844}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1840, file: !27, line: 138, baseType: !1843)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1840, file: !27, line: 138, elements: !760)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1840, file: !27, line: 138, baseType: !1845)
!1845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1834, elements: !903)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1604, file: !35, line: 147, baseType: !326, size: 64, offset: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1562, file: !35, line: 161, baseType: !775, size: 128, align: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, scope: !1558, file: !35, line: 164, baseType: !1849, size: 32, offset: 384)
!1849 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1558, file: !35, line: 164, size: 32, elements: !1850)
!1850 = !{!1851, !1852}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1849, file: !35, line: 169, baseType: !383, size: 32)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1849, file: !35, line: 177, baseType: !7, size: 32)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1558, file: !35, line: 181, baseType: !383, size: 32, offset: 416)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !64, line: 309, flags: DIFlagFwdDecl)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1551, file: !64, line: 406, baseType: !1857, size: 64, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!109, !767, !1860}
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !35, line: 293, size: 1536, elements: !1862)
!1862 = !{!1863, !1893, !1907}
!1863 = !DIDerivedType(tag: DW_TAG_member, scope: !1861, file: !35, line: 295, baseType: !1864, size: 512)
!1864 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1861, file: !35, line: 295, size: 512, elements: !1865)
!1865 = !{!1866, !1892}
!1866 = !DIDerivedType(tag: DW_TAG_member, scope: !1864, file: !35, line: 296, baseType: !1867, size: 448)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1864, file: !35, line: 296, size: 448, elements: !1868)
!1868 = !{!1869, !1870, !1879, !1880, !1881, !1890, !1891}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1867, file: !35, line: 298, baseType: !423, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, scope: !1867, file: !35, line: 299, baseType: !1871, size: 128, offset: 64)
!1871 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1867, file: !35, line: 299, size: 128, elements: !1872)
!1872 = !{!1873, !1874}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1871, file: !35, line: 300, baseType: !340, size: 128)
!1874 = !DIDerivedType(tag: DW_TAG_member, scope: !1871, file: !35, line: 302, baseType: !1875, size: 128)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1871, file: !35, line: 302, size: 128, elements: !1876)
!1876 = !{!1877, !1878}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1875, file: !35, line: 303, baseType: !326, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1875, file: !35, line: 305, baseType: !7, size: 32, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1867, file: !35, line: 310, baseType: !1537, size: 64, offset: 192)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1867, file: !35, line: 311, baseType: !423, size: 64, offset: 256)
!1881 = !DIDerivedType(tag: DW_TAG_member, scope: !1867, file: !35, line: 312, baseType: !1882, size: 64, offset: 320)
!1882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1867, file: !35, line: 312, size: 64, elements: !1883)
!1883 = !{!1884, !1885}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1882, file: !35, line: 313, baseType: !326, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1882, file: !35, line: 314, baseType: !1886, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !35, line: 257, baseType: !1887)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 255, size: 64, elements: !1888)
!1888 = !{!1889}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1887, file: !35, line: 256, baseType: !423, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1867, file: !35, line: 316, baseType: !383, size: 32, offset: 384)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1867, file: !35, line: 317, baseType: !383, size: 32, offset: 416)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1864, file: !35, line: 323, baseType: !1558, size: 512, align: 128)
!1893 = !DIDerivedType(tag: DW_TAG_member, scope: !1861, file: !35, line: 325, baseType: !1894, size: 512, offset: 512)
!1894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1861, file: !35, line: 325, size: 512, elements: !1895)
!1895 = !{!1896, !1906}
!1896 = !DIDerivedType(tag: DW_TAG_member, scope: !1894, file: !35, line: 326, baseType: !1897, size: 320)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1894, file: !35, line: 326, size: 320, elements: !1898)
!1898 = !{!1899, !1900, !1901, !1902, !1903, !1904, !1905}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1897, file: !35, line: 327, baseType: !423, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1897, file: !35, line: 328, baseType: !423, size: 64, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1897, file: !35, line: 329, baseType: !423, size: 64, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1897, file: !35, line: 331, baseType: !383, size: 32, offset: 192)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1897, file: !35, line: 332, baseType: !383, size: 32, offset: 224)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1897, file: !35, line: 333, baseType: !383, size: 32, offset: 256)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1897, file: !35, line: 335, baseType: !7, size: 32, offset: 288)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1894, file: !35, line: 339, baseType: !1558, size: 512, align: 128)
!1907 = !DIDerivedType(tag: DW_TAG_member, scope: !1861, file: !35, line: 341, baseType: !1908, size: 512, offset: 1024)
!1908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1861, file: !35, line: 341, size: 512, elements: !1909)
!1909 = !{!1910, !1919, !1925}
!1910 = !DIDerivedType(tag: DW_TAG_member, scope: !1908, file: !35, line: 342, baseType: !1911, size: 384)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1908, file: !35, line: 342, size: 384, elements: !1912)
!1912 = !{!1913, !1914, !1915, !1916, !1917, !1918}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1911, file: !35, line: 343, baseType: !423, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1911, file: !35, line: 344, baseType: !423, size: 64, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1911, file: !35, line: 346, baseType: !326, size: 64, offset: 128)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1911, file: !35, line: 347, baseType: !326, size: 64, offset: 192)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1911, file: !35, line: 348, baseType: !326, size: 64, offset: 256)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1911, file: !35, line: 349, baseType: !326, size: 64, offset: 320)
!1919 = !DIDerivedType(tag: DW_TAG_member, scope: !1908, file: !35, line: 352, baseType: !1920, size: 256)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1908, file: !35, line: 352, size: 256, elements: !1921)
!1921 = !{!1922, !1923, !1924}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1920, file: !35, line: 353, baseType: !423, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1920, file: !35, line: 354, baseType: !423, size: 64, offset: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1920, file: !35, line: 356, baseType: !340, size: 128, offset: 128)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1908, file: !35, line: 359, baseType: !1558, size: 512, align: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1551, file: !64, line: 409, baseType: !1927, size: 64, offset: 128)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!109, !1537, !1854}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1551, file: !64, line: 412, baseType: !1931, size: 64, offset: 192)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!1026, !1537, !1860}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1551, file: !64, line: 414, baseType: !1935, size: 64, offset: 256)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{null, !1938}
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !64, line: 310, flags: DIFlagFwdDecl)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1551, file: !64, line: 416, baseType: !1941, size: 64, offset: 320)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!109, !767, !1537, !790, !7, !1944, !1945}
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1551, file: !64, line: 419, baseType: !1947, size: 64, offset: 384)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!109, !767, !1537, !790, !7, !7, !1557, !326}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1551, file: !64, line: 424, baseType: !1951, size: 64, offset: 448)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!1954, !1537, !1954}
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !328, line: 131, baseType: !484)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1551, file: !64, line: 425, baseType: !1956, size: 64, offset: 512)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{null, !1860, !1337, !1337}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1551, file: !64, line: 426, baseType: !1960, size: 64, offset: 576)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!1026, !1860, !327}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1551, file: !64, line: 427, baseType: !1964, size: 64, offset: 640)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{null, !1860}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1551, file: !64, line: 428, baseType: !1968, size: 64, offset: 704)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!1334, !1971, !1993}
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !64, line: 373, size: 384, elements: !1973)
!1973 = !{!1974, !1975, !1976, !1980, !1981, !1982, !1983}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1972, file: !64, line: 374, baseType: !767, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1972, file: !64, line: 375, baseType: !790, size: 64, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1972, file: !64, line: 376, baseType: !1977, size: 64, offset: 128)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{null, !1971, !1295}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1972, file: !64, line: 377, baseType: !326, size: 64, offset: 192)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1972, file: !64, line: 378, baseType: !109, size: 32, offset: 256)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1972, file: !64, line: 379, baseType: !399, size: 16, offset: 288)
!1983 = !DIDerivedType(tag: DW_TAG_member, scope: !1972, file: !64, line: 380, baseType: !1984, size: 64, offset: 320)
!1984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1972, file: !64, line: 380, size: 64, elements: !1985)
!1985 = !{!1986, !1989}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1984, file: !64, line: 386, baseType: !1987, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !64, line: 386, flags: DIFlagFwdDecl)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1984, file: !64, line: 395, baseType: !1990, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!1334, !326}
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !64, line: 69, flags: DIFlagFwdDecl)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1551, file: !64, line: 433, baseType: !1996, size: 64, offset: 768)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!109, !1537, !1860, !1860, !50}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1551, file: !64, line: 435, baseType: !2000, size: 64, offset: 832)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!109, !1860}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1551, file: !64, line: 436, baseType: !2004, size: 64, offset: 896)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!1026, !1860, !1337, !1337}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1551, file: !64, line: 438, baseType: !2008, size: 64, offset: 960)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{null, !1860, !2011, !2011}
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1551, file: !64, line: 439, baseType: !2013, size: 64, offset: 1024)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!109, !1537, !1557}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1551, file: !64, line: 442, baseType: !2017, size: 64, offset: 1088)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!109, !2020, !767, !2022}
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !64, line: 66, flags: DIFlagFwdDecl)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1551, file: !64, line: 444, baseType: !2024, size: 64, offset: 1152)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{null, !767}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1551, file: !64, line: 445, baseType: !2028, size: 64, offset: 1216)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!109, !1971, !1993}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1538, file: !64, line: 486, baseType: !423, size: 64, offset: 896)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1538, file: !64, line: 487, baseType: !966, size: 320, offset: 960)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1538, file: !64, line: 488, baseType: !2034, size: 32, offset: 1280)
!2034 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2035, line: 8, baseType: !426)
!2035 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1538, file: !64, line: 489, baseType: !749, size: 32, offset: 1312)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1538, file: !64, line: 490, baseType: !340, size: 128, offset: 1344)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1538, file: !64, line: 491, baseType: !326, size: 64, offset: 1472)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1528, file: !1497, line: 180, baseType: !2040, size: 64, offset: 320)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!1334, !767, !1439, !1527, !1039, !790, !1337}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1528, file: !1497, line: 182, baseType: !2040, size: 64, offset: 384)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1528, file: !1497, line: 184, baseType: !2045, size: 64, offset: 448)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!109, !767, !1439, !1527, !1677}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1516, file: !1497, line: 90, baseType: !2049, size: 64, offset: 192)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1516, file: !1497, line: 91, baseType: !2051, size: 64, offset: 256)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1487, file: !1434, line: 120, baseType: !2053, size: 64, offset: 192)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!2056, !1457}
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2058)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !58, line: 39, size: 384, elements: !2059)
!2059 = !{!2060, !2061, !2065, !2069, !2077, !2081}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2058, file: !58, line: 40, baseType: !57, size: 32)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2058, file: !58, line: 41, baseType: !2062, size: 64, offset: 64)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!1026}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2058, file: !58, line: 42, baseType: !2066, size: 64, offset: 128)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!326}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2058, file: !58, line: 43, baseType: !2070, size: 64, offset: 192)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!2073, !2075}
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !58, line: 19, flags: DIFlagFwdDecl)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2058, file: !58, line: 44, baseType: !2078, size: 64, offset: 256)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!2073}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2058, file: !58, line: 45, baseType: !1212, size: 64, offset: 320)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1487, file: !1434, line: 121, baseType: !2083, size: 64, offset: 256)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!2073, !1457}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1487, file: !1434, line: 122, baseType: !2087, size: 64, offset: 320)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{null, !1457, !2090, !2091}
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1433, file: !1434, line: 70, baseType: !2093, size: 64, offset: 384)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1406, line: 190, size: 1152, elements: !2095)
!2095 = !{!2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2218, !2219, !2220, !2221, !2222, !2225}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2094, file: !1406, line: 191, baseType: !383, size: 32)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2094, file: !1406, line: 192, baseType: !383, size: 32, offset: 32)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2094, file: !1406, line: 202, baseType: !2093, size: 64, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2094, file: !1406, line: 203, baseType: !1029, size: 64, offset: 128)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2094, file: !1406, line: 205, baseType: !476, size: 192, align: 64, offset: 192)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2094, file: !1406, line: 207, baseType: !2073, size: 64, offset: 384)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2094, file: !1406, line: 208, baseType: !7, size: 32, offset: 448)
!2103 = !DIDerivedType(tag: DW_TAG_member, scope: !2094, file: !1406, line: 209, baseType: !2104, size: 256, offset: 512)
!2104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2094, file: !1406, line: 209, size: 256, elements: !2105)
!2105 = !{!2106, !2115, !2119}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2104, file: !1406, line: 210, baseType: !2107, size: 256)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1406, line: 153, size: 256, elements: !2108)
!2108 = !{!2109, !2110, !2111, !2114}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2107, file: !1406, line: 154, baseType: !423, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2107, file: !1406, line: 156, baseType: !617, size: 64, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2107, file: !1406, line: 162, baseType: !2112, size: 64, offset: 128)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1406, line: 162, flags: DIFlagFwdDecl)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2107, file: !1406, line: 167, baseType: !423, size: 64, offset: 192)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2104, file: !1406, line: 211, baseType: !2116, size: 64)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1406, line: 170, size: 64, elements: !2117)
!2117 = !{!2118}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2116, file: !1406, line: 171, baseType: !2093, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2104, file: !1406, line: 212, baseType: !2120, size: 256)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1406, line: 174, size: 256, elements: !2121)
!2121 = !{!2122, !2213, !2216, !2217}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2120, file: !1406, line: 175, baseType: !2123, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2125)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1406, line: 271, size: 768, elements: !2126)
!2126 = !{!2127, !2186, !2190, !2191, !2192, !2193, !2194, !2198, !2199, !2200, !2201, !2209}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2125, file: !1406, line: 276, baseType: !2128, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!109, !2131}
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1406, line: 251, size: 1216, elements: !2133)
!2133 = !{!2134, !2135, !2136, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2132, file: !1406, line: 253, baseType: !2093, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2132, file: !1406, line: 254, baseType: !767, size: 64, offset: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2132, file: !1406, line: 255, baseType: !2137, size: 64, offset: 128)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2139, line: 17, size: 960, elements: !2140)
!2139 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2140 = !{!2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2171, !2172, !2175}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2138, file: !2139, line: 18, baseType: !1039, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2138, file: !2139, line: 19, baseType: !1337, size: 64, offset: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2138, file: !2139, line: 20, baseType: !1337, size: 64, offset: 128)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2138, file: !2139, line: 21, baseType: !1337, size: 64, offset: 192)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2138, file: !2139, line: 22, baseType: !1337, size: 64, offset: 256)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2138, file: !2139, line: 23, baseType: !790, size: 64, offset: 320)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2138, file: !2139, line: 24, baseType: !790, size: 64, offset: 384)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2138, file: !2139, line: 25, baseType: !354, size: 256, offset: 448)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2138, file: !2139, line: 26, baseType: !2150, size: 64, offset: 704)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2152)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2139, line: 32, size: 256, elements: !2153)
!2153 = !{!2154, !2159, !2163, !2167}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2152, file: !2139, line: 33, baseType: !2155, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!326, !2137, !2158}
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2152, file: !2139, line: 34, baseType: !2160, size: 64, offset: 64)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{null, !2137, !326}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2152, file: !2139, line: 35, baseType: !2164, size: 64, offset: 128)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!326, !2137, !326, !2158}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2152, file: !2139, line: 36, baseType: !2168, size: 64, offset: 192)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!109, !2137, !326}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2138, file: !2139, line: 27, baseType: !109, size: 32, offset: 768)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2138, file: !2139, line: 28, baseType: !2173, size: 64, offset: 832)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !768)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2138, file: !2139, line: 29, baseType: !326, size: 64, offset: 896)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2132, file: !1406, line: 256, baseType: !326, size: 64, offset: 192)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2132, file: !1406, line: 259, baseType: !354, size: 256, offset: 256)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2132, file: !1406, line: 260, baseType: !354, size: 256, offset: 512)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2132, file: !1406, line: 261, baseType: !109, size: 32, offset: 768)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2132, file: !1406, line: 262, baseType: !340, size: 128, offset: 832)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2132, file: !1406, line: 263, baseType: !1039, size: 64, offset: 960)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2132, file: !1406, line: 265, baseType: !1337, size: 64, offset: 1024)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2132, file: !1406, line: 266, baseType: !1026, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2132, file: !1406, line: 267, baseType: !1026, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2132, file: !1406, line: 268, baseType: !1722, size: 64, offset: 1152)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2125, file: !1406, line: 277, baseType: !2187, size: 64, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{null, !2131}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2125, file: !1406, line: 290, baseType: !2168, size: 64, offset: 128)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2125, file: !1406, line: 292, baseType: !2155, size: 64, offset: 192)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2125, file: !1406, line: 293, baseType: !2164, size: 64, offset: 256)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2125, file: !1406, line: 294, baseType: !2160, size: 64, offset: 320)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2125, file: !1406, line: 296, baseType: !2195, size: 64, offset: 384)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!1334, !2131, !1039, !1337, !790}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2125, file: !1406, line: 306, baseType: !1337, size: 64, offset: 448)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2125, file: !1406, line: 313, baseType: !1026, size: 8, offset: 512)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2125, file: !1406, line: 314, baseType: !2195, size: 64, offset: 576)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2125, file: !1406, line: 317, baseType: !2202, size: 64, offset: 640)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!2205, !2131, !2207}
!2205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2206, line: 59, baseType: !7)
!2206 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1406, line: 31, flags: DIFlagFwdDecl)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2125, file: !1406, line: 320, baseType: !2210, size: 64, offset: 704)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!109, !2131, !1677}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2120, file: !1406, line: 176, baseType: !2214, size: 64, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1406, line: 35, flags: DIFlagFwdDecl)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2120, file: !1406, line: 177, baseType: !790, size: 64, offset: 128)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2120, file: !1406, line: 178, baseType: !2093, size: 64, offset: 192)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2094, file: !1406, line: 215, baseType: !326, size: 64, offset: 768)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2094, file: !1406, line: 221, baseType: !484, size: 64, offset: 832)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2094, file: !1406, line: 223, baseType: !401, size: 16, offset: 896)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2094, file: !1406, line: 224, baseType: !1184, size: 16, offset: 912)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2094, file: !1406, line: 225, baseType: !2223, size: 64, offset: 960)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1406, line: 36, flags: DIFlagFwdDecl)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2094, file: !1406, line: 227, baseType: !775, size: 128, align: 64, offset: 1024)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1433, file: !1434, line: 71, baseType: !2227, size: 32, offset: 448)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2228, line: 19, size: 32, elements: !2229)
!2228 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2229 = !{!2230}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2227, file: !2228, line: 20, baseType: !432, size: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1433, file: !1434, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1433, file: !1434, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1433, file: !1434, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1433, file: !1434, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1433, file: !1434, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1430, file: !20, line: 47, baseType: !1420, size: 64, offset: 512)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1430, file: !20, line: 48, baseType: !1439, size: 64, offset: 576)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1430, file: !20, line: 49, baseType: !2239, size: 64, offset: 640)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !20, line: 49, flags: DIFlagFwdDecl)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1430, file: !20, line: 50, baseType: !2242, size: 64, offset: 704)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1421, file: !20, line: 418, baseType: !2244, size: 64, offset: 1408)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !20, line: 53, size: 448, elements: !2246)
!2246 = !{!2247, !2248, !2253, !2257, !2261, !2265}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2245, file: !20, line: 54, baseType: !1504, size: 128)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2245, file: !20, line: 55, baseType: !2249, size: 64, offset: 128)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!1334, !2244, !2252, !1039}
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2245, file: !20, line: 57, baseType: !2254, size: 64, offset: 192)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!1334, !2244, !2252, !1029, !1337}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2245, file: !20, line: 59, baseType: !2258, size: 64, offset: 256)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{null, !1420, !1029}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2245, file: !20, line: 60, baseType: !2262, size: 64, offset: 320)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!109, !1420}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2245, file: !20, line: 61, baseType: !2266, size: 64, offset: 384)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{null, !1420}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1421, file: !20, line: 419, baseType: !1029, size: 64, offset: 1472)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1421, file: !20, line: 420, baseType: !1029, size: 64, offset: 1536)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1421, file: !20, line: 421, baseType: !1439, size: 64, offset: 1600)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1421, file: !20, line: 424, baseType: !2273, size: 64, offset: 1664)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2275)
!2275 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !20, line: 424, flags: DIFlagFwdDecl)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1421, file: !20, line: 425, baseType: !2277, size: 64, offset: 1728)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !958)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1421, file: !20, line: 426, baseType: !7, size: 32, offset: 1792)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1421, file: !20, line: 435, baseType: !354, size: 256, offset: 1856)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1421, file: !20, line: 437, baseType: !2282, size: 64, offset: 2112)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2284, line: 69, size: 320, elements: !2285)
!2284 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2285 = !{!2286, !2287, !2288, !2305, !2307, !2311, !2312}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2283, file: !2284, line: 70, baseType: !1029, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2283, file: !2284, line: 71, baseType: !1420, size: 64, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2283, file: !2284, line: 72, baseType: !2289, size: 64, offset: 128)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2291)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2284, line: 47, size: 256, elements: !2292)
!2292 = !{!2293, !2294, !2300, !2304}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2291, file: !2284, line: 49, baseType: !7, size: 32)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2291, file: !2284, line: 51, baseType: !2295, size: 64, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!109, !1029, !2298}
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2283)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2291, file: !2284, line: 53, baseType: !2301, size: 64, offset: 128)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!109, !1039, !2298}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2291, file: !2284, line: 55, baseType: !1212, size: 64, offset: 192)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2283, file: !2284, line: 73, baseType: !2306, size: 16, offset: 192)
!2306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2283, file: !2284, line: 74, baseType: !2308, size: 8, offset: 208)
!2308 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !365, line: 16, baseType: !2309)
!2309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !367, line: 20, baseType: !2310)
!2310 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2283, file: !2284, line: 75, baseType: !391, size: 8, offset: 216)
!2312 = !DIDerivedType(tag: DW_TAG_member, scope: !2283, file: !2284, line: 76, baseType: !2313, size: 64, offset: 256)
!2313 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2283, file: !2284, line: 76, size: 64, elements: !2314)
!2314 = !{!2315, !2316, !2323}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2313, file: !2284, line: 77, baseType: !326, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2313, file: !2284, line: 78, baseType: !2317, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2319)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2284, line: 86, size: 128, elements: !2320)
!2320 = !{!2321, !2322}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2319, file: !2284, line: 87, baseType: !7, size: 32)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2319, file: !2284, line: 88, baseType: !1039, size: 64, offset: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2313, file: !2284, line: 79, baseType: !2324, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2326)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2284, line: 92, size: 256, elements: !2327)
!2327 = !{!2328, !2329, !2330, !2332, !2333}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2326, file: !2284, line: 94, baseType: !7, size: 32)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2326, file: !2284, line: 95, baseType: !7, size: 32, offset: 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2326, file: !2284, line: 96, baseType: !2331, size: 64, offset: 64)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2326, file: !2284, line: 97, baseType: !2289, size: 64, offset: 128)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2326, file: !2284, line: 98, baseType: !326, size: 64, offset: 192)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1421, file: !20, line: 438, baseType: !7, size: 32, offset: 2176)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1421, file: !20, line: 441, baseType: !7, size: 32, offset: 2208)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1421, file: !20, line: 442, baseType: !2273, size: 64, offset: 2240)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1421, file: !20, line: 443, baseType: !2277, size: 64, offset: 2304)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1421, file: !20, line: 444, baseType: !1026, size: 8, offset: 2368)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1421, file: !20, line: 451, baseType: !1026, size: 8, offset: 2376)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1421, file: !20, line: 454, baseType: !7, size: 32, offset: 2400)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1421, file: !20, line: 455, baseType: !2342, size: 64, offset: 2432)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2344, line: 23, size: 96, elements: !2345)
!2344 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2345 = !{!2346, !2347, !2348}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2343, file: !2344, line: 24, baseType: !109, size: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2343, file: !2344, line: 24, baseType: !109, size: 32, offset: 32)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2343, file: !2344, line: 24, baseType: !109, size: 32, offset: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1421, file: !20, line: 458, baseType: !2350, size: 64, offset: 2496)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!109}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1421, file: !20, line: 460, baseType: !2354, size: 4032, align: 512, offset: 2560)
!2354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2355, size: 4032, elements: !2371)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !20, line: 362, size: 576, elements: !2356)
!2356 = !{!2357, !2358, !2359}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2355, file: !20, line: 363, baseType: !326, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2355, file: !20, line: 364, baseType: !7, size: 32, offset: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2355, file: !20, line: 367, baseType: !2360, size: 448, offset: 128)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !20, line: 319, size: 448, elements: !2361)
!2361 = !{!2362, !2363}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2360, file: !20, line: 320, baseType: !1420, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2360, file: !20, line: 321, baseType: !2364, size: 384, offset: 64)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2365, line: 40, size: 384, elements: !2366)
!2365 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2366 = !{!2367}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2364, file: !2365, line: 41, baseType: !2368, size: 384, align: 64)
!2368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 384, align: 64, elements: !2369)
!2369 = !{!2370}
!2370 = !DISubrange(count: 2)
!2371 = !{!2372}
!2372 = !DISubrange(count: 7)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1421, file: !20, line: 463, baseType: !2374, size: 192, offset: 6592)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2375, line: 8, size: 192, elements: !2376)
!2375 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2376 = !{!2377, !2378, !2380}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2374, file: !2375, line: 10, baseType: !7, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2374, file: !2375, line: 11, baseType: !2379, size: 64, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2374, file: !2375, line: 12, baseType: !2381, size: 64, offset: 128)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2383, line: 59, size: 48, elements: !2384)
!2383 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2384 = !{!2385, !2388, !2389, !2390, !2391, !2392}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2382, file: !2383, line: 60, baseType: !2386, size: 16)
!2386 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !365, line: 18, baseType: !2387)
!2387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !367, line: 23, baseType: !994)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2382, file: !2383, line: 61, baseType: !2386, size: 16, offset: 16)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2382, file: !2383, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2382, file: !2383, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2382, file: !2383, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2382, file: !2383, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1421, file: !20, line: 465, baseType: !423, size: 64, offset: 6784)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1421, file: !20, line: 469, baseType: !7, size: 32, offset: 6848)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1421, file: !20, line: 470, baseType: !340, size: 128, offset: 6912)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1421, file: !20, line: 471, baseType: !2397, size: 64, offset: 7040)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2399, line: 33, size: 96, elements: !2400)
!2399 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2400 = !{!2401, !2402, !2403, !2404}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2398, file: !2399, line: 37, baseType: !109, size: 32)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2398, file: !2399, line: 43, baseType: !109, size: 32, offset: 32)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2398, file: !2399, line: 45, baseType: !401, size: 16, offset: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2398, file: !2399, line: 47, baseType: !401, size: 16, offset: 80)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1421, file: !20, line: 476, baseType: !2406, size: 64, offset: 7104)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !20, line: 378, size: 256, elements: !2408)
!2408 = !{!2409, !2425, !2426, !2427}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2407, file: !20, line: 379, baseType: !2410, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2412, line: 204, baseType: !2413)
!2412 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2412, line: 197, size: 192, elements: !2414)
!2414 = !{!2415, !2417, !2418, !2419, !2421, !2423}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2413, file: !2412, line: 198, baseType: !2416, size: 32)
!2416 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2412, line: 21, baseType: !427)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2413, file: !2412, line: 199, baseType: !393, size: 8, offset: 32)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2413, file: !2412, line: 200, baseType: !393, size: 8, offset: 40)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2413, file: !2412, line: 201, baseType: !2420, size: 16, offset: 48)
!2420 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2412, line: 17, baseType: !400)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2413, file: !2412, line: 202, baseType: !2422, size: 64, offset: 64)
!2422 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2412, line: 16, baseType: !485)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2413, file: !2412, line: 203, baseType: !2424, size: 64, offset: 128)
!2424 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2412, line: 22, baseType: !485)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2407, file: !20, line: 380, baseType: !7, size: 32, offset: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2407, file: !20, line: 381, baseType: !1039, size: 64, offset: 128)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2407, file: !20, line: 382, baseType: !1039, size: 64, offset: 192)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1421, file: !20, line: 477, baseType: !2407, size: 256, offset: 7168)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1421, file: !20, line: 480, baseType: !2430, size: 64, offset: 7424)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !20, line: 480, flags: DIFlagFwdDecl)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1421, file: !20, line: 483, baseType: !2433, size: 64, offset: 7488)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !20, line: 483, flags: DIFlagFwdDecl)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1421, file: !20, line: 488, baseType: !1039, size: 64, offset: 7552)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1421, file: !20, line: 492, baseType: !326, size: 64, offset: 7616)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1421, file: !20, line: 493, baseType: !7, size: 32, offset: 7680)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1421, file: !20, line: 495, baseType: !326, size: 64, offset: 7744)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1421, file: !20, line: 496, baseType: !7, size: 32, offset: 7808)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1421, file: !20, line: 499, baseType: !7, size: 32, offset: 7840)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1421, file: !20, line: 500, baseType: !2442, size: 64, offset: 7872)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2444, line: 45, baseType: !2445)
!2444 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1421, file: !20, line: 503, baseType: !7, size: 32, offset: 7936)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1421, file: !20, line: 504, baseType: !2448, size: 64, offset: 8000)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2451, line: 96, size: 192, elements: !2452)
!2451 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2452 = !{!2453, !2454, !2519, !2522}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2450, file: !2451, line: 97, baseType: !7, size: 32)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2450, file: !2451, line: 98, baseType: !2455, size: 64, offset: 64)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2451, line: 24, size: 3072, elements: !2457)
!2457 = !{!2458, !2460, !2461, !2462, !2463, !2477, !2478, !2479, !2480, !2492, !2504, !2505, !2516, !2517, !2518}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2456, file: !2451, line: 26, baseType: !2459, size: 128)
!2459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, size: 128, elements: !2369)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2456, file: !2451, line: 27, baseType: !2459, size: 128, offset: 128)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2456, file: !2451, line: 28, baseType: !109, size: 32, offset: 256)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2456, file: !2451, line: 31, baseType: !749, size: 32, align: 512, offset: 512)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2456, file: !2451, line: 32, baseType: !2464, size: 960, offset: 576)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2465, line: 206, size: 960, elements: !2466)
!2465 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2466 = !{!2467, !2468, !2471, !2473, !2474, !2476}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2464, file: !2465, line: 207, baseType: !778, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2464, file: !2465, line: 208, baseType: !2469, size: 256, offset: 64)
!2469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2470, size: 256, elements: !837)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2464, file: !2465, line: 209, baseType: !2472, size: 256, offset: 320)
!2472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 256, elements: !837)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2464, file: !2465, line: 213, baseType: !1295, size: 64, offset: 576)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2464, file: !2465, line: 215, baseType: !2475, size: 256, offset: 640)
!2475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1295, size: 256, elements: !837)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2464, file: !2465, line: 216, baseType: !391, size: 8, offset: 896)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2456, file: !2451, line: 33, baseType: !423, size: 64, offset: 1536)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2456, file: !2451, line: 34, baseType: !423, size: 64, offset: 1600)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2456, file: !2451, line: 35, baseType: !1026, size: 8, offset: 1664)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2456, file: !2451, line: 36, baseType: !2481, size: 320, offset: 1728)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2482, line: 11, size: 320, elements: !2483)
!2482 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2483 = !{!2484, !2485, !2486, !2491}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2481, file: !2482, line: 16, baseType: !832, size: 128)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2481, file: !2482, line: 17, baseType: !423, size: 64, offset: 128)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2481, file: !2482, line: 18, baseType: !2487, size: 64, offset: 192)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{null, !2490}
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2481, file: !2482, line: 19, baseType: !426, size: 32, offset: 256)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2456, file: !2451, line: 37, baseType: !2493, size: 256, offset: 2048)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2494, line: 98, size: 256, elements: !2495)
!2494 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2495 = !{!2496, !2497, !2498}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2493, file: !2494, line: 99, baseType: !358, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2493, file: !2494, line: 100, baseType: !340, size: 128, offset: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2493, file: !2494, line: 101, baseType: !2499, size: 64, offset: 192)
!2499 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2494, line: 21, baseType: !2500)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{null, !2503}
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2456, file: !2451, line: 38, baseType: !775, size: 128, align: 64, offset: 2304)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2456, file: !2451, line: 39, baseType: !2506, size: 64, offset: 2432)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2451, line: 49, size: 768, elements: !2508)
!2508 = !{!2509, !2510, !2511, !2512, !2513, !2514, !2515}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2507, file: !2451, line: 50, baseType: !749, size: 32)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2507, file: !2451, line: 51, baseType: !2472, size: 256, offset: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2507, file: !2451, line: 53, baseType: !2472, size: 256, offset: 320)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2507, file: !2451, line: 54, baseType: !423, size: 64, offset: 576)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2507, file: !2451, line: 55, baseType: !2506, size: 64, offset: 640)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2507, file: !2451, line: 56, baseType: !109, size: 32, offset: 704)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2507, file: !2451, line: 57, baseType: !109, size: 32, offset: 736)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2456, file: !2451, line: 40, baseType: !423, size: 64, offset: 2496)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2456, file: !2451, line: 42, baseType: !109, size: 32, offset: 2560)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2456, file: !2451, line: 43, baseType: !2449, size: 64, offset: 2624)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2450, file: !2451, line: 99, baseType: !2520, offset: 128)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2521, line: 211, elements: !760)
!2521 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2450, file: !2451, line: 100, baseType: !2523, size: 64, offset: 128)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2451, line: 63, size: 3008, elements: !2525)
!2525 = !{!2526, !2527, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2557}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2524, file: !2451, line: 64, baseType: !2506, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2524, file: !2451, line: 65, baseType: !2528, size: 192, offset: 64)
!2528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2506, size: 192, elements: !816)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2524, file: !2451, line: 67, baseType: !109, size: 32, offset: 256)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2524, file: !2451, line: 68, baseType: !354, size: 256, offset: 320)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2524, file: !2451, line: 69, baseType: !749, size: 32, offset: 576)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2524, file: !2451, line: 70, baseType: !354, size: 256, offset: 640)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2524, file: !2451, line: 71, baseType: !423, size: 64, offset: 896)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2524, file: !2451, line: 72, baseType: !423, size: 64, offset: 960)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2524, file: !2451, line: 73, baseType: !423, size: 64, offset: 1024)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2524, file: !2451, line: 74, baseType: !423, size: 64, offset: 1088)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2524, file: !2451, line: 75, baseType: !423, size: 64, offset: 1152)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2524, file: !2451, line: 76, baseType: !423, size: 64, offset: 1216)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2524, file: !2451, line: 77, baseType: !423, size: 64, offset: 1280)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2524, file: !2451, line: 78, baseType: !423, size: 64, offset: 1344)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2524, file: !2451, line: 79, baseType: !1026, size: 8, offset: 1408)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2524, file: !2451, line: 80, baseType: !423, size: 64, offset: 1472)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2524, file: !2451, line: 81, baseType: !354, size: 256, offset: 1536)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2524, file: !2451, line: 82, baseType: !1642, size: 256, offset: 1792)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2524, file: !2451, line: 84, baseType: !383, size: 32, offset: 2048)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2524, file: !2451, line: 87, baseType: !423, size: 64, offset: 2112)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2524, file: !2451, line: 88, baseType: !423, size: 64, offset: 2176)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2524, file: !2451, line: 89, baseType: !2549, size: 704, offset: 2240)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2494, line: 111, size: 704, elements: !2550)
!2550 = !{!2551, !2552, !2553, !2556}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2549, file: !2494, line: 112, baseType: !2493, size: 256)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2549, file: !2494, line: 113, baseType: !2481, size: 320, offset: 256)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2549, file: !2494, line: 116, baseType: !2554, size: 64, offset: 576)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2494, line: 18, flags: DIFlagFwdDecl)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2549, file: !2494, line: 117, baseType: !109, size: 32, offset: 640)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2524, file: !2451, line: 90, baseType: !2449, size: 64, offset: 2944)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1421, file: !20, line: 515, baseType: !2559, size: 64, offset: 8064)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2561, line: 117, size: 128, elements: !2562)
!2561 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2562 = !{!2563, !2564, !2565}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2560, file: !2561, line: 118, baseType: !958, size: 32)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2560, file: !2561, line: 119, baseType: !958, size: 32, offset: 32)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2560, file: !2561, line: 120, baseType: !1295, size: 64, offset: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1421, file: !20, line: 516, baseType: !7, size: 32, offset: 8128)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1421, file: !20, line: 519, baseType: !7, size: 32, offset: 8160)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1421, file: !20, line: 520, baseType: !2569, size: 64, offset: 8192)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1421, file: !20, line: 523, baseType: !2571, size: 64, offset: 8256)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !20, line: 523, flags: DIFlagFwdDecl)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1421, file: !20, line: 524, baseType: !7, size: 32, offset: 8320)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1421, file: !20, line: 525, baseType: !2576, size: 64, offset: 8384)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !20, line: 525, flags: DIFlagFwdDecl)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1421, file: !20, line: 526, baseType: !7, size: 32, offset: 8448)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1421, file: !20, line: 533, baseType: !326, size: 64, offset: 8512)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1421, file: !20, line: 534, baseType: !7, size: 32, offset: 8576)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1421, file: !20, line: 535, baseType: !2583, size: 64, offset: 8640)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1421, file: !20, line: 536, baseType: !7, size: 32, offset: 8704)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1421, file: !20, line: 539, baseType: !109, size: 32, offset: 8736)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1421, file: !20, line: 540, baseType: !2587, size: 64, offset: 8768)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2589, line: 32, size: 64, elements: !2590)
!2589 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2590 = !{!2591, !2592}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2588, file: !2589, line: 33, baseType: !958, size: 32)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2588, file: !2589, line: 34, baseType: !958, size: 32, offset: 32)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1421, file: !20, line: 563, baseType: !340, size: 128, offset: 8832)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1421, file: !20, line: 565, baseType: !340, size: 128, offset: 8960)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1421, file: !20, line: 568, baseType: !2596, size: 64, offset: 9088)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{null}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1421, file: !20, line: 570, baseType: !383, size: 32, offset: 9152)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1396, file: !64, line: 2382, baseType: !1395, size: 64, offset: 448)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1396, file: !64, line: 2383, baseType: !828, size: 64, offset: 512)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1396, file: !64, line: 2385, baseType: !2603, offset: 576)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2521, line: 206, elements: !760)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1396, file: !64, line: 2386, baseType: !2603, offset: 576)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1396, file: !64, line: 2387, baseType: !2603, offset: 576)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1396, file: !64, line: 2388, baseType: !2607, offset: 576)
!2607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2603, elements: !816)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1396, file: !64, line: 2390, baseType: !2603, offset: 576)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1396, file: !64, line: 2391, baseType: !2603, offset: 576)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1396, file: !64, line: 2392, baseType: !2603, offset: 576)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1396, file: !64, line: 2393, baseType: !2603, offset: 576)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1387, file: !64, line: 1197, baseType: !2613, size: 64, offset: 384)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2615)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !64, line: 2057, size: 1664, elements: !2616)
!2616 = !{!2617, !2621, !2625, !2626, !2630, !2634, !2638, !2639, !2640, !2644, !2648, !2652, !2653, !2654, !2660, !2664, !2665, !2669, !2670, !2671, !2672, !2676, !2680, !2727, !2742, !2743}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2615, file: !64, line: 2058, baseType: !2618, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!1180, !1386}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2615, file: !64, line: 2059, baseType: !2622, size: 64, offset: 64)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{null, !1180}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2615, file: !64, line: 2060, baseType: !2622, size: 64, offset: 128)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2615, file: !64, line: 2062, baseType: !2627, size: 64, offset: 192)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{null, !1180, !109}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2615, file: !64, line: 2063, baseType: !2631, size: 64, offset: 256)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!109, !1180, !1854}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2615, file: !64, line: 2064, baseType: !2635, size: 64, offset: 320)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!109, !1180}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2615, file: !64, line: 2065, baseType: !2622, size: 64, offset: 384)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2615, file: !64, line: 2066, baseType: !1416, size: 64, offset: 448)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2615, file: !64, line: 2067, baseType: !2641, size: 64, offset: 512)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!109, !1386, !109}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2615, file: !64, line: 2068, baseType: !2645, size: 64, offset: 576)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{!109, !1386, !63}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2615, file: !64, line: 2069, baseType: !2649, size: 64, offset: 640)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{!109, !1386}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2615, file: !64, line: 2070, baseType: !2645, size: 64, offset: 704)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2615, file: !64, line: 2071, baseType: !2649, size: 64, offset: 768)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2615, file: !64, line: 2072, baseType: !2655, size: 64, offset: 832)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!109, !1145, !2658}
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !64, line: 62, flags: DIFlagFwdDecl)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2615, file: !64, line: 2073, baseType: !2661, size: 64, offset: 896)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!109, !1386, !2379, !1039}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2615, file: !64, line: 2074, baseType: !1416, size: 64, offset: 960)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2615, file: !64, line: 2076, baseType: !2666, size: 64, offset: 1024)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!109, !2137, !1145}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2615, file: !64, line: 2077, baseType: !2666, size: 64, offset: 1088)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2615, file: !64, line: 2078, baseType: !2666, size: 64, offset: 1152)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2615, file: !64, line: 2079, baseType: !2666, size: 64, offset: 1216)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2615, file: !64, line: 2081, baseType: !2673, size: 64, offset: 1280)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!1334, !1386, !109, !1039, !1337, !790}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2615, file: !64, line: 2082, baseType: !2677, size: 64, offset: 1344)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!1334, !1386, !109, !1029, !1337, !790}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2615, file: !64, line: 2083, baseType: !2681, size: 64, offset: 1408)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!2684, !1180}
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !69, line: 296, size: 1664, elements: !2687)
!2687 = !{!2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2712, !2713, !2714}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2686, file: !69, line: 297, baseType: !832, size: 128)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2686, file: !69, line: 298, baseType: !340, size: 128, offset: 128)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2686, file: !69, line: 299, baseType: !340, size: 128, offset: 256)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2686, file: !69, line: 300, baseType: !340, size: 128, offset: 384)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2686, file: !69, line: 301, baseType: !354, size: 256, offset: 512)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2686, file: !69, line: 302, baseType: !749, size: 32, offset: 768)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2686, file: !69, line: 303, baseType: !383, size: 32, offset: 800)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2686, file: !69, line: 304, baseType: !1386, size: 64, offset: 832)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2686, file: !69, line: 305, baseType: !2697, size: 64, offset: 896)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !69, line: 68, size: 64, elements: !2698)
!2698 = !{!2699, !2711}
!2699 = !DIDerivedType(tag: DW_TAG_member, scope: !2697, file: !69, line: 69, baseType: !2700, size: 32)
!2700 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2697, file: !69, line: 69, size: 32, elements: !2701)
!2701 = !{!2702, !2703, !2704}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2700, file: !69, line: 70, baseType: !907, size: 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2700, file: !69, line: 71, baseType: !925, size: 32)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2700, file: !69, line: 72, baseType: !2705, size: 32)
!2705 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2706, line: 24, baseType: !2707)
!2706 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2706, line: 22, size: 32, elements: !2708)
!2708 = !{!2709}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2707, file: !2706, line: 23, baseType: !2710, size: 32)
!2710 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2706, line: 20, baseType: !913)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2697, file: !69, line: 74, baseType: !68, size: 32, offset: 32)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2686, file: !69, line: 306, baseType: !790, size: 64, offset: 960)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2686, file: !69, line: 307, baseType: !423, size: 64, offset: 1024)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2686, file: !69, line: 308, baseType: !2715, size: 576, offset: 1088)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !69, line: 205, size: 576, elements: !2716)
!2716 = !{!2717, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2715, file: !69, line: 206, baseType: !2718, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !69, line: 66, baseType: !368)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2715, file: !69, line: 207, baseType: !2718, size: 64, offset: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2715, file: !69, line: 208, baseType: !2718, size: 64, offset: 128)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2715, file: !69, line: 209, baseType: !2718, size: 64, offset: 192)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2715, file: !69, line: 210, baseType: !2718, size: 64, offset: 256)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2715, file: !69, line: 211, baseType: !2718, size: 64, offset: 320)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2715, file: !69, line: 212, baseType: !2718, size: 64, offset: 384)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2715, file: !69, line: 213, baseType: !982, size: 64, offset: 448)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2715, file: !69, line: 214, baseType: !982, size: 64, offset: 512)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2615, file: !64, line: 2085, baseType: !2728, size: 64, offset: 1472)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!1295, !1386, !2731}
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2733, line: 15, size: 256, elements: !2734)
!2733 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2734 = !{!2735, !2736, !2737, !2738, !2739}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2732, file: !2733, line: 16, baseType: !327, size: 32)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2732, file: !2733, line: 19, baseType: !109, size: 32, offset: 32)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2732, file: !2733, line: 26, baseType: !423, size: 64, offset: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2732, file: !2733, line: 33, baseType: !423, size: 64, offset: 128)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2732, file: !2733, line: 36, baseType: !2740, size: 64, offset: 192)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !35, line: 33, flags: DIFlagFwdDecl)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2615, file: !64, line: 2087, baseType: !2728, size: 64, offset: 1536)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2615, file: !64, line: 2089, baseType: !1416, size: 64, offset: 1600)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1387, file: !64, line: 1198, baseType: !2745, size: 64, offset: 448)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2747)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !69, line: 324, size: 704, elements: !2748)
!2748 = !{!2749, !2753, !2757, !2761, !2762, !2763, !2764, !2765, !2770, !2775, !2779}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2747, file: !69, line: 325, baseType: !2750, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!109, !2685}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2747, file: !69, line: 326, baseType: !2754, size: 64, offset: 64)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!2685, !1386, !109}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2747, file: !69, line: 327, baseType: !2758, size: 64, offset: 128)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{null, !2685}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2747, file: !69, line: 328, baseType: !2750, size: 64, offset: 192)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2747, file: !69, line: 329, baseType: !2750, size: 64, offset: 256)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2747, file: !69, line: 330, baseType: !2750, size: 64, offset: 320)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2747, file: !69, line: 331, baseType: !2641, size: 64, offset: 384)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2747, file: !69, line: 334, baseType: !2766, size: 64, offset: 448)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!2769, !1180}
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2747, file: !69, line: 335, baseType: !2771, size: 64, offset: 512)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!109, !1180, !2774}
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2747, file: !69, line: 337, baseType: !2776, size: 64, offset: 576)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!109, !1180, !2769}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2747, file: !69, line: 339, baseType: !2780, size: 64, offset: 640)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!109, !1386, !2783}
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1387, file: !64, line: 1199, baseType: !2785, size: 64, offset: 512)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2787)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !69, line: 430, size: 704, elements: !2788)
!2788 = !{!2789, !2793, !2794, !2798, !2799, !2800, !2815, !2838, !2842, !2843, !2866}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2787, file: !69, line: 431, baseType: !2790, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!109, !1386, !109, !109, !1303}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2787, file: !69, line: 432, baseType: !2641, size: 64, offset: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2787, file: !69, line: 433, baseType: !2795, size: 64, offset: 128)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{!109, !1386, !7}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2787, file: !69, line: 434, baseType: !2795, size: 64, offset: 192)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2787, file: !69, line: 435, baseType: !2641, size: 64, offset: 256)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2787, file: !69, line: 436, baseType: !2801, size: 64, offset: 320)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!109, !1386, !109, !2804}
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !69, line: 417, size: 256, elements: !2806)
!2806 = !{!2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2805, file: !69, line: 418, baseType: !109, size: 32)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2805, file: !69, line: 419, baseType: !7, size: 32, offset: 32)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2805, file: !69, line: 420, baseType: !7, size: 32, offset: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2805, file: !69, line: 422, baseType: !7, size: 32, offset: 96)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2805, file: !69, line: 423, baseType: !7, size: 32, offset: 128)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2805, file: !69, line: 424, baseType: !7, size: 32, offset: 160)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2805, file: !69, line: 425, baseType: !7, size: 32, offset: 192)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2805, file: !69, line: 426, baseType: !7, size: 32, offset: 224)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2787, file: !69, line: 437, baseType: !2816, size: 64, offset: 384)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!109, !1386, !2697, !2819}
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !69, line: 345, size: 960, elements: !2821)
!2821 = !{!2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2820, file: !69, line: 346, baseType: !109, size: 32)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2820, file: !69, line: 347, baseType: !484, size: 64, offset: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2820, file: !69, line: 348, baseType: !484, size: 64, offset: 128)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2820, file: !69, line: 349, baseType: !484, size: 64, offset: 192)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2820, file: !69, line: 350, baseType: !484, size: 64, offset: 256)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2820, file: !69, line: 351, baseType: !484, size: 64, offset: 320)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2820, file: !69, line: 352, baseType: !484, size: 64, offset: 384)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2820, file: !69, line: 353, baseType: !364, size: 64, offset: 448)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2820, file: !69, line: 355, baseType: !364, size: 64, offset: 512)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2820, file: !69, line: 356, baseType: !109, size: 32, offset: 576)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2820, file: !69, line: 357, baseType: !109, size: 32, offset: 608)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2820, file: !69, line: 358, baseType: !484, size: 64, offset: 640)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2820, file: !69, line: 359, baseType: !484, size: 64, offset: 704)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2820, file: !69, line: 360, baseType: !484, size: 64, offset: 768)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2820, file: !69, line: 361, baseType: !364, size: 64, offset: 832)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2820, file: !69, line: 362, baseType: !109, size: 32, offset: 896)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2787, file: !69, line: 438, baseType: !2839, size: 64, offset: 448)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!109, !1386, !2783, !2819}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2787, file: !69, line: 440, baseType: !2816, size: 64, offset: 512)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2787, file: !69, line: 441, baseType: !2844, size: 64, offset: 576)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!109, !1386, !2847}
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !69, line: 411, size: 1408, elements: !2849)
!2849 = !{!2850, !2851}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2848, file: !69, line: 412, baseType: !7, size: 32)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2848, file: !69, line: 413, baseType: !2852, size: 1344, offset: 64)
!2852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2853, size: 1344, elements: !816)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !69, line: 397, size: 448, elements: !2854)
!2854 = !{!2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2865}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2853, file: !69, line: 398, baseType: !7, size: 32)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2853, file: !69, line: 399, baseType: !7, size: 32, offset: 32)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2853, file: !69, line: 401, baseType: !7, size: 32, offset: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2853, file: !69, line: 402, baseType: !7, size: 32, offset: 96)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2853, file: !69, line: 403, baseType: !7, size: 32, offset: 128)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2853, file: !69, line: 404, baseType: !7, size: 32, offset: 160)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2853, file: !69, line: 405, baseType: !7, size: 32, offset: 192)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2853, file: !69, line: 406, baseType: !486, size: 64, offset: 256)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2853, file: !69, line: 407, baseType: !2864, size: 64, offset: 320)
!2864 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !328, line: 132, baseType: !484)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2853, file: !69, line: 408, baseType: !2864, size: 64, offset: 384)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2787, file: !69, line: 442, baseType: !2795, size: 64, offset: 640)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1387, file: !64, line: 1200, baseType: !2868, size: 64, offset: 576)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2870)
!2870 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !64, line: 54, flags: DIFlagFwdDecl)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1387, file: !64, line: 1201, baseType: !423, size: 64, offset: 640)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1387, file: !64, line: 1202, baseType: !423, size: 64, offset: 704)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1387, file: !64, line: 1203, baseType: !423, size: 64, offset: 768)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1387, file: !64, line: 1204, baseType: !1145, size: 64, offset: 832)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1387, file: !64, line: 1205, baseType: !966, size: 320, offset: 896)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1387, file: !64, line: 1206, baseType: !109, size: 32, offset: 1216)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1387, file: !64, line: 1207, baseType: !383, size: 32, offset: 1248)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1387, file: !64, line: 1209, baseType: !326, size: 64, offset: 1280)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1387, file: !64, line: 1211, baseType: !2880, size: 64, offset: 1344)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2883)
!2883 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !64, line: 1211, flags: DIFlagFwdDecl)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1387, file: !64, line: 1223, baseType: !2885, size: 64, offset: 1408)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1157, line: 34, size: 64, elements: !2886)
!2886 = !{!2887}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2885, file: !1157, line: 35, baseType: !1160, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1387, file: !64, line: 1224, baseType: !340, size: 128, offset: 1472)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1387, file: !64, line: 1225, baseType: !2890, size: 64, offset: 1600)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !64, line: 1225, flags: DIFlagFwdDecl)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1387, file: !64, line: 1226, baseType: !2893, size: 64, offset: 1664)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !64, line: 1226, flags: DIFlagFwdDecl)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1387, file: !64, line: 1227, baseType: !2896, size: 64, offset: 1728)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !64, line: 50, flags: DIFlagFwdDecl)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1387, file: !64, line: 1228, baseType: !2899, size: 64, offset: 1792)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !64, line: 1228, flags: DIFlagFwdDecl)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1387, file: !64, line: 1229, baseType: !832, size: 128, offset: 1856)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1387, file: !64, line: 1230, baseType: !7, size: 32, offset: 1984)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1387, file: !64, line: 1231, baseType: !2904, size: 2496, offset: 2048)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !69, line: 521, size: 2496, elements: !2905)
!2905 = !{!2906, !2907, !2908, !2910, !2942}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2904, file: !69, line: 522, baseType: !7, size: 32)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2904, file: !69, line: 523, baseType: !966, size: 320, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2904, file: !69, line: 524, baseType: !2909, size: 192, offset: 384)
!2909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1180, size: 192, elements: !816)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2904, file: !69, line: 525, baseType: !2911, size: 1728, offset: 576)
!2911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2912, size: 1728, elements: !816)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !69, line: 222, size: 576, elements: !2913)
!2913 = !{!2914, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2912, file: !69, line: 223, baseType: !2915, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !69, line: 445, size: 256, elements: !2917)
!2917 = !{!2918, !2919, !2932, !2933}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2916, file: !69, line: 446, baseType: !109, size: 32)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2916, file: !69, line: 447, baseType: !2920, size: 64, offset: 64)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2922)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !69, line: 312, size: 512, elements: !2923)
!2923 = !{!2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2922, file: !69, line: 313, baseType: !2641, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2922, file: !69, line: 314, baseType: !2641, size: 64, offset: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2922, file: !69, line: 315, baseType: !2641, size: 64, offset: 128)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2922, file: !69, line: 316, baseType: !2641, size: 64, offset: 192)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2922, file: !69, line: 317, baseType: !2750, size: 64, offset: 256)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2922, file: !69, line: 318, baseType: !2750, size: 64, offset: 320)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2922, file: !69, line: 319, baseType: !2750, size: 64, offset: 384)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2922, file: !69, line: 320, baseType: !2780, size: 64, offset: 448)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2916, file: !69, line: 448, baseType: !1420, size: 64, offset: 128)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2916, file: !69, line: 449, baseType: !2915, size: 64, offset: 192)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2912, file: !69, line: 224, baseType: !109, size: 32, offset: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2912, file: !69, line: 226, baseType: !340, size: 128, offset: 128)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2912, file: !69, line: 227, baseType: !423, size: 64, offset: 256)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2912, file: !69, line: 228, baseType: !7, size: 32, offset: 320)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2912, file: !69, line: 229, baseType: !7, size: 32, offset: 352)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2912, file: !69, line: 230, baseType: !2718, size: 64, offset: 384)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2912, file: !69, line: 231, baseType: !2718, size: 64, offset: 448)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2912, file: !69, line: 232, baseType: !326, size: 64, offset: 512)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2904, file: !69, line: 526, baseType: !2943, size: 192, offset: 2304)
!2943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2920, size: 192, elements: !816)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1387, file: !64, line: 1233, baseType: !2945, size: 2368, offset: 4544)
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !64, line: 1184, size: 2368, elements: !2946)
!2946 = !{!2947, !2948, !2949}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2945, file: !64, line: 1185, baseType: !401, size: 16)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2945, file: !64, line: 1186, baseType: !401, size: 16, offset: 16)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2945, file: !64, line: 1187, baseType: !2950, size: 2304, offset: 64)
!2950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2951, size: 2304, elements: !816)
!2951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2952, line: 12, size: 768, elements: !2953)
!2952 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2953 = !{!2954, !2962, !2963, !2968, !2969}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2951, file: !2952, line: 13, baseType: !2955, size: 384)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2956, line: 17, size: 384, elements: !2957)
!2956 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2957 = !{!2958, !2959, !2960, !2961}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2955, file: !2956, line: 18, baseType: !109, size: 32)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2955, file: !2956, line: 19, baseType: !109, size: 32, offset: 32)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2955, file: !2956, line: 20, baseType: !841, size: 192, offset: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2955, file: !2956, line: 22, baseType: !775, size: 128, align: 64, offset: 256)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2951, file: !2952, line: 14, baseType: !2331, size: 64, offset: 384)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2951, file: !2952, line: 15, baseType: !2964, size: 64, offset: 448)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2965, line: 16, size: 64, elements: !2966)
!2965 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2966 = !{!2967}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2964, file: !2965, line: 17, baseType: !414, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2951, file: !2952, line: 16, baseType: !841, size: 192, offset: 512)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2951, file: !2952, line: 17, baseType: !383, size: 32, offset: 704)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1387, file: !64, line: 1240, baseType: !326, size: 64, offset: 6912)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1387, file: !64, line: 1243, baseType: !426, size: 32, offset: 6976)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1387, file: !64, line: 1245, baseType: !982, size: 64, offset: 7040)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1387, file: !64, line: 1246, baseType: !982, size: 64, offset: 7104)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1387, file: !64, line: 1248, baseType: !427, size: 32, offset: 7168)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1387, file: !64, line: 1249, baseType: !2976, size: 64, offset: 7232)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !64, line: 634, flags: DIFlagFwdDecl)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1387, file: !64, line: 1252, baseType: !2979, size: 256, offset: 7296)
!2979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1012, size: 256, elements: !2980)
!2980 = !{!2981}
!2981 = !DISubrange(count: 32)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1387, file: !64, line: 1253, baseType: !2983, size: 128, offset: 7552)
!2983 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2984, line: 21, baseType: !2985)
!2984 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2984, line: 19, size: 128, elements: !2986)
!2986 = !{!2987}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2985, file: !2984, line: 20, baseType: !2988, size: 128)
!2988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 128, elements: !2989)
!2989 = !{!2990}
!2990 = !DISubrange(count: 16)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1387, file: !64, line: 1255, baseType: !7, size: 32, offset: 7680)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1387, file: !64, line: 1261, baseType: !354, size: 256, offset: 7744)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1387, file: !64, line: 1267, baseType: !1029, size: 64, offset: 8000)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1387, file: !64, line: 1269, baseType: !2995, size: 64, offset: 8064)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2997)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1147, line: 128, size: 1024, align: 512, elements: !2998)
!2998 = !{!2999, !3003, !3004, !3011, !3017, !3021, !3025, !3029, !3030, !3034, !3038, !3043, !3047}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2997, file: !1147, line: 129, baseType: !3000, size: 64)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!109, !1145, !7}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2997, file: !1147, line: 130, baseType: !3000, size: 64, offset: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2997, file: !1147, line: 131, baseType: !3005, size: 64, offset: 128)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!109, !3008, !3010}
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1146)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2997, file: !1147, line: 132, baseType: !3012, size: 64, offset: 192)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!109, !3008, !7, !1029, !3015}
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1165)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2997, file: !1147, line: 134, baseType: !3018, size: 64, offset: 256)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!109, !3008}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2997, file: !1147, line: 135, baseType: !3022, size: 64, offset: 320)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!109, !1145}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2997, file: !1147, line: 136, baseType: !3026, size: 64, offset: 384)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{null, !1145}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2997, file: !1147, line: 137, baseType: !3026, size: 64, offset: 448)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2997, file: !1147, line: 138, baseType: !3031, size: 64, offset: 512)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{null, !1145, !1180}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2997, file: !1147, line: 139, baseType: !3035, size: 64, offset: 576)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!1039, !1145, !1039, !109}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2997, file: !1147, line: 140, baseType: !3039, size: 64, offset: 640)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!1140, !3042}
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2997, file: !1147, line: 141, baseType: !3044, size: 64, offset: 704)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!109, !1303, !1026}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2997, file: !1147, line: 142, baseType: !3048, size: 64, offset: 768)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!1145, !1145, !3051}
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1181)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1387, file: !64, line: 1271, baseType: !3054, size: 448, offset: 8128)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2733, line: 63, size: 448, elements: !3055)
!3055 = !{!3056, !3061, !3062, !3063, !3064, !3065, !3066}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3054, file: !2733, line: 64, baseType: !3057, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!423, !3060, !2731}
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3054, file: !2733, line: 66, baseType: !3057, size: 64, offset: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3054, file: !2733, line: 69, baseType: !1295, size: 64, offset: 128)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3054, file: !2733, line: 70, baseType: !109, size: 32, offset: 192)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3054, file: !2733, line: 71, baseType: !7, size: 32, offset: 224)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3054, file: !2733, line: 74, baseType: !340, size: 128, offset: 256)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3054, file: !2733, line: 85, baseType: !3067, size: 64, offset: 384)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1387, file: !64, line: 1274, baseType: !358, size: 64, offset: 8576)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1387, file: !64, line: 1280, baseType: !358, size: 64, offset: 8640)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1387, file: !64, line: 1283, baseType: !109, size: 32, offset: 8704)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1387, file: !64, line: 1286, baseType: !2034, size: 32, offset: 8736)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1387, file: !64, line: 1289, baseType: !2554, size: 64, offset: 8768)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1387, file: !64, line: 1290, baseType: !828, size: 64, offset: 8832)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1387, file: !64, line: 1297, baseType: !884, size: 64, offset: 8896)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1387, file: !64, line: 1304, baseType: !3076, size: 64, offset: 8960)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3077, line: 49, size: 64, elements: !3078)
!3077 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3078 = !{!3079}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3076, file: !3077, line: 50, baseType: !3080, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3077, line: 41, size: 512, align: 512, elements: !3082)
!3082 = !{!3083, !3084, !3089}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3081, file: !3077, line: 43, baseType: !749, size: 32)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3081, file: !3077, line: 45, baseType: !3085, size: 192, offset: 64)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3077, line: 29, size: 192, elements: !3086)
!3086 = !{!3087, !3088}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3085, file: !3077, line: 30, baseType: !340, size: 128)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3085, file: !3077, line: 32, baseType: !1295, size: 64, offset: 128)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3081, file: !3077, line: 46, baseType: !1295, size: 64, offset: 256)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1387, file: !64, line: 1305, baseType: !3076, size: 64, offset: 9024)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1387, file: !64, line: 1306, baseType: !775, size: 128, align: 64, offset: 9088)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1387, file: !64, line: 1307, baseType: !2493, size: 256, offset: 9216)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1387, file: !64, line: 1309, baseType: !354, size: 256, offset: 9472)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1387, file: !64, line: 1314, baseType: !109, size: 32, offset: 9728)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1387, file: !64, line: 1317, baseType: !749, size: 32, align: 512, offset: 10240)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1387, file: !64, line: 1318, baseType: !340, size: 128, offset: 10304)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1387, file: !64, line: 1320, baseType: !749, size: 32, offset: 10432)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1387, file: !64, line: 1321, baseType: !340, size: 128, offset: 10496)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1181, file: !64, line: 656, baseType: !1537, size: 64, offset: 512)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1181, file: !64, line: 659, baseType: !326, size: 64, offset: 576)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1181, file: !64, line: 663, baseType: !423, size: 64, offset: 640)
!3102 = !DIDerivedType(tag: DW_TAG_member, scope: !1181, file: !64, line: 671, baseType: !3103, size: 32, offset: 704)
!3103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1181, file: !64, line: 671, size: 32, elements: !3104)
!3104 = !{!3105, !3107}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3103, file: !64, line: 672, baseType: !3106, size: 32)
!3106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3103, file: !64, line: 673, baseType: !7, size: 32)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1181, file: !64, line: 675, baseType: !1255, size: 32, offset: 736)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1181, file: !64, line: 676, baseType: !790, size: 64, offset: 768)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1181, file: !64, line: 677, baseType: !1291, size: 128, offset: 832)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1181, file: !64, line: 678, baseType: !1291, size: 128, offset: 960)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1181, file: !64, line: 679, baseType: !1291, size: 128, offset: 1088)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1181, file: !64, line: 680, baseType: !749, size: 32, offset: 1216)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1181, file: !64, line: 681, baseType: !401, size: 16, offset: 1248)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1181, file: !64, line: 682, baseType: !391, size: 8, offset: 1264)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1181, file: !64, line: 683, baseType: !391, size: 8, offset: 1272)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1181, file: !64, line: 684, baseType: !2864, size: 64, offset: 1280)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1181, file: !64, line: 691, baseType: !423, size: 64, offset: 1344)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1181, file: !64, line: 692, baseType: !966, size: 320, offset: 1408)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1181, file: !64, line: 694, baseType: !423, size: 64, offset: 1728)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1181, file: !64, line: 695, baseType: !423, size: 64, offset: 1792)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1181, file: !64, line: 697, baseType: !832, size: 128, offset: 1856)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1181, file: !64, line: 698, baseType: !340, size: 128, offset: 1984)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1181, file: !64, line: 707, baseType: !340, size: 128, offset: 2112)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1181, file: !64, line: 708, baseType: !340, size: 128, offset: 2240)
!3126 = !DIDerivedType(tag: DW_TAG_member, scope: !1181, file: !64, line: 709, baseType: !3127, size: 128, offset: 2368)
!3127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1181, file: !64, line: 709, size: 128, elements: !3128)
!3128 = !{!3129, !3130}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3127, file: !64, line: 710, baseType: !828, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3127, file: !64, line: 711, baseType: !775, size: 128, align: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1181, file: !64, line: 713, baseType: !360, size: 64, offset: 2496)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1181, file: !64, line: 714, baseType: !360, size: 64, offset: 2560)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1181, file: !64, line: 715, baseType: !383, size: 32, offset: 2624)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1181, file: !64, line: 716, baseType: !383, size: 32, offset: 2656)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1181, file: !64, line: 717, baseType: !383, size: 32, offset: 2688)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1181, file: !64, line: 719, baseType: !383, size: 32, offset: 2720)
!3137 = !DIDerivedType(tag: DW_TAG_member, scope: !1181, file: !64, line: 721, baseType: !3138, size: 64, offset: 2752)
!3138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1181, file: !64, line: 721, size: 64, elements: !3139)
!3139 = !{!3140, !3266}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3138, file: !64, line: 722, baseType: !3141, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3143)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !64, line: 1914, size: 2112, elements: !3144)
!3144 = !{!3145, !3146, !3150, !3154, !3158, !3159, !3160, !3166, !3179, !3183, !3187, !3188, !3192, !3193, !3197, !3202, !3203, !3207, !3211, !3217, !3218, !3222, !3223, !3229, !3233, !3234, !3239, !3243, !3247, !3251, !3255, !3256, !3262}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3143, file: !64, line: 1915, baseType: !1420, size: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3143, file: !64, line: 1916, baseType: !3147, size: 64, offset: 64)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!790, !767, !790, !109}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3143, file: !64, line: 1917, baseType: !3151, size: 64, offset: 128)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!1334, !767, !1039, !1337, !2158}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3143, file: !64, line: 1918, baseType: !3155, size: 64, offset: 192)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!1334, !767, !1029, !1337, !2158}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3143, file: !64, line: 1919, baseType: !1968, size: 64, offset: 256)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3143, file: !64, line: 1920, baseType: !1968, size: 64, offset: 320)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3143, file: !64, line: 1921, baseType: !3161, size: 64, offset: 384)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!109, !1971, !3164, !7}
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !64, line: 53, flags: DIFlagFwdDecl)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3143, file: !64, line: 1923, baseType: !3167, size: 64, offset: 448)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!109, !767, !3170}
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !64, line: 1858, size: 128, elements: !3172)
!3172 = !{!3173, !3178}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3171, file: !64, line: 1859, baseType: !3174, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !64, line: 1855, baseType: !3175)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!1026, !3170, !1029, !109, !790, !484, !7}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3171, file: !64, line: 1860, baseType: !790, size: 64, offset: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3143, file: !64, line: 1924, baseType: !3180, size: 64, offset: 512)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!2205, !767, !2207}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3143, file: !64, line: 1925, baseType: !3184, size: 64, offset: 576)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!1295, !767, !7, !423}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3143, file: !64, line: 1926, baseType: !3184, size: 64, offset: 640)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3143, file: !64, line: 1927, baseType: !3189, size: 64, offset: 704)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!109, !767, !1677}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3143, file: !64, line: 1928, baseType: !423, size: 64, offset: 768)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3143, file: !64, line: 1929, baseType: !3194, size: 64, offset: 832)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!109, !1180, !767}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3143, file: !64, line: 1930, baseType: !3198, size: 64, offset: 896)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!109, !767, !3201}
!3201 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !64, line: 1061, baseType: !326)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3143, file: !64, line: 1931, baseType: !3194, size: 64, offset: 960)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3143, file: !64, line: 1932, baseType: !3204, size: 64, offset: 1024)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!109, !767, !790, !790, !109}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3143, file: !64, line: 1933, baseType: !3208, size: 64, offset: 1088)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!109, !109, !767, !109}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3143, file: !64, line: 1934, baseType: !3212, size: 64, offset: 1152)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!109, !767, !109, !3215}
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !64, line: 1063, flags: DIFlagFwdDecl)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3143, file: !64, line: 1935, baseType: !764, size: 64, offset: 1216)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3143, file: !64, line: 1936, baseType: !3219, size: 64, offset: 1280)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!109, !109}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3143, file: !64, line: 1937, baseType: !3212, size: 64, offset: 1344)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3143, file: !64, line: 1938, baseType: !3224, size: 64, offset: 1408)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!1334, !3227, !767, !2158, !1337, !7}
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !416, line: 59, flags: DIFlagFwdDecl)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3143, file: !64, line: 1939, baseType: !3230, size: 64, offset: 1472)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!1334, !767, !2158, !3227, !1337, !7}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3143, file: !64, line: 1940, baseType: !2024, size: 64, offset: 1536)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3143, file: !64, line: 1941, baseType: !3235, size: 64, offset: 1600)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!109, !767, !109, !3238, !1945}
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3143, file: !64, line: 1942, baseType: !3240, size: 64, offset: 1664)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!1295, !767, !109, !790, !790}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3143, file: !64, line: 1944, baseType: !3244, size: 64, offset: 1728)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{null, !2137, !767}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3143, file: !64, line: 1948, baseType: !3248, size: 64, offset: 1792)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!1334, !767, !790, !767, !790, !1337, !7}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3143, file: !64, line: 1950, baseType: !3252, size: 64, offset: 1856)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!790, !767, !790, !767, !790, !790, !7}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3143, file: !64, line: 1953, baseType: !3204, size: 64, offset: 1920)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3143, file: !64, line: 1954, baseType: !3257, size: 64, offset: 1984)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!109, !3260, !7}
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !64, line: 1911, flags: DIFlagFwdDecl)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3143, file: !64, line: 1955, baseType: !3263, size: 64, offset: 2048)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!109, !3260, !3164, !7}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3138, file: !64, line: 723, baseType: !2622, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1181, file: !64, line: 725, baseType: !3268, size: 64, offset: 2816)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !64, line: 725, flags: DIFlagFwdDecl)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1181, file: !64, line: 726, baseType: !1538, size: 1536, align: 64, offset: 2880)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1181, file: !64, line: 727, baseType: !340, size: 128, offset: 4416)
!3272 = !DIDerivedType(tag: DW_TAG_member, scope: !1181, file: !64, line: 728, baseType: !3273, size: 64, offset: 4544)
!3273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1181, file: !64, line: 728, size: 64, elements: !3274)
!3274 = !{!3275, !3276, !3279, !3280}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3273, file: !64, line: 729, baseType: !3227, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3273, file: !64, line: 730, baseType: !3277, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !64, line: 730, flags: DIFlagFwdDecl)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3273, file: !64, line: 731, baseType: !1039, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3273, file: !64, line: 732, baseType: !7, size: 32)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1181, file: !64, line: 735, baseType: !427, size: 32, offset: 4608)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1181, file: !64, line: 738, baseType: !427, size: 32, offset: 4640)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1181, file: !64, line: 739, baseType: !2976, size: 64, offset: 4672)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1181, file: !64, line: 750, baseType: !326, size: 64, offset: 4736)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1146, file: !1147, line: 91, baseType: !3286, size: 256, offset: 448)
!3286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 256, elements: !2980)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1146, file: !1147, line: 94, baseType: !3288, size: 64, offset: 704)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3289, line: 25, size: 64, elements: !3290)
!3289 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3290 = !{!3291}
!3291 = !DIDerivedType(tag: DW_TAG_member, scope: !3288, file: !3289, line: 26, baseType: !3292, size: 64)
!3292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3288, file: !3289, line: 26, size: 64, elements: !3293)
!3293 = !{!3294, !3295}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3292, file: !3289, line: 28, baseType: !485, size: 64, align: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, scope: !3292, file: !3289, line: 30, baseType: !3296, size: 64)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3292, file: !3289, line: 30, size: 64, elements: !3297)
!3297 = !{!3298, !3299}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3296, file: !3289, line: 31, baseType: !749, size: 32)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3296, file: !3289, line: 32, baseType: !109, size: 32, offset: 32)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1146, file: !1147, line: 95, baseType: !2995, size: 64, offset: 768)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1146, file: !1147, line: 96, baseType: !1386, size: 64, offset: 832)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1146, file: !1147, line: 97, baseType: !423, size: 64, offset: 896)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1146, file: !1147, line: 98, baseType: !326, size: 64, offset: 960)
!3304 = !DIDerivedType(tag: DW_TAG_member, scope: !1146, file: !1147, line: 100, baseType: !3305, size: 128, offset: 1024)
!3305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1146, file: !1147, line: 100, size: 128, elements: !3306)
!3306 = !{!3307, !3308}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3305, file: !1147, line: 101, baseType: !340, size: 128)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3305, file: !1147, line: 102, baseType: !3309, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1146, file: !1147, line: 104, baseType: !340, size: 128, offset: 1152)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1146, file: !1147, line: 105, baseType: !340, size: 128, offset: 1280)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1146, file: !1147, line: 113, baseType: !3313, size: 128, offset: 1408)
!3313 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1146, file: !1147, line: 109, size: 128, elements: !3314)
!3314 = !{!3315, !3316, !3317}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3313, file: !1147, line: 110, baseType: !832, size: 128)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3313, file: !1147, line: 111, baseType: !1156, size: 128)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3313, file: !1147, line: 112, baseType: !775, size: 128, align: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1141, file: !1142, line: 72, baseType: !1386, size: 64, offset: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1141, file: !1142, line: 73, baseType: !109, size: 32, offset: 128)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1141, file: !1142, line: 74, baseType: !1220, size: 64, offset: 192)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1136, file: !1137, line: 10, baseType: !1145, size: 64, offset: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !768, file: !64, line: 1015, baseType: !1180, size: 64, offset: 1344)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !768, file: !64, line: 1016, baseType: !3141, size: 64, offset: 1408)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !768, file: !64, line: 1018, baseType: !484, size: 64, offset: 1472)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !768, file: !64, line: 1020, baseType: !326, size: 64, offset: 1536)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !768, file: !64, line: 1023, baseType: !326, size: 64, offset: 1600)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !768, file: !64, line: 1027, baseType: !3328, size: 64, offset: 1664)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !768, file: !64, line: 1029, baseType: !1537, size: 64, offset: 1728)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !768, file: !64, line: 1030, baseType: !2034, size: 32, offset: 1792)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !768, file: !64, line: 1031, baseType: !2034, size: 32, offset: 1824)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !735, file: !35, line: 756, baseType: !423, size: 64, offset: 704)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !735, file: !35, line: 757, baseType: !423, size: 64, offset: 768)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !735, file: !35, line: 760, baseType: !423, size: 64, offset: 832)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !735, file: !35, line: 761, baseType: !423, size: 64, offset: 896)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !735, file: !35, line: 763, baseType: !423, size: 64, offset: 960)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !735, file: !35, line: 764, baseType: !3338, size: 64, offset: 1024)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1692, line: 299, baseType: !3340)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1692, line: 299, size: 64, elements: !3341)
!3341 = !{!3342}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3340, file: !1692, line: 299, baseType: !3343, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1697, line: 18, baseType: !423)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !735, file: !35, line: 773, baseType: !383, size: 32, offset: 1088)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !735, file: !35, line: 785, baseType: !383, size: 32, offset: 1120)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !735, file: !35, line: 795, baseType: !3347, size: 64, offset: 1152)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !35, line: 726, size: 128, elements: !3349)
!3349 = !{!3350, !3351}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3348, file: !35, line: 727, baseType: !484, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3348, file: !35, line: 728, baseType: !109, size: 32, offset: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !735, file: !35, line: 801, baseType: !423, size: 64, offset: 1216)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !735, file: !35, line: 804, baseType: !358, size: 64, offset: 1280)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !735, file: !35, line: 806, baseType: !109, size: 32, offset: 1344)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !735, file: !35, line: 808, baseType: !749, size: 32, offset: 1376)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !735, file: !35, line: 823, baseType: !966, size: 320, offset: 1408)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !735, file: !35, line: 825, baseType: !340, size: 128, offset: 1728)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !735, file: !35, line: 845, baseType: !109, size: 32, offset: 1856)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !735, file: !35, line: 849, baseType: !423, size: 64, offset: 1920)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !735, file: !35, line: 850, baseType: !423, size: 64, offset: 1984)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !735, file: !35, line: 852, baseType: !423, size: 64, offset: 2048)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !735, file: !35, line: 853, baseType: !423, size: 64, offset: 2112)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !735, file: !35, line: 854, baseType: !360, size: 64, offset: 2176)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !735, file: !35, line: 855, baseType: !423, size: 64, offset: 2240)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !735, file: !35, line: 856, baseType: !423, size: 64, offset: 2304)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !735, file: !35, line: 857, baseType: !423, size: 64, offset: 2368)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !735, file: !35, line: 858, baseType: !423, size: 64, offset: 2432)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !735, file: !35, line: 865, baseType: !605, size: 32, offset: 2496)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !735, file: !35, line: 867, baseType: !749, size: 32, offset: 2528)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !735, file: !35, line: 869, baseType: !423, size: 64, offset: 2560)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !735, file: !35, line: 869, baseType: !423, size: 64, offset: 2624)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !735, file: !35, line: 869, baseType: !423, size: 64, offset: 2688)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !735, file: !35, line: 869, baseType: !423, size: 64, offset: 2752)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !735, file: !35, line: 870, baseType: !423, size: 64, offset: 2816)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !735, file: !35, line: 870, baseType: !423, size: 64, offset: 2880)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !735, file: !35, line: 870, baseType: !423, size: 64, offset: 2944)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !735, file: !35, line: 871, baseType: !423, size: 64, offset: 3008)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !735, file: !35, line: 871, baseType: !423, size: 64, offset: 3072)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !735, file: !35, line: 871, baseType: !423, size: 64, offset: 3136)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !735, file: !35, line: 871, baseType: !423, size: 64, offset: 3200)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !735, file: !35, line: 873, baseType: !3382, size: 3328, offset: 3264)
!3382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 3328, elements: !3383)
!3383 = !{!3384}
!3384 = !DISubrange(count: 52)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !735, file: !35, line: 875, baseType: !3386, size: 1280, offset: 6592)
!3386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1087, size: 1280, elements: !837)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !735, file: !35, line: 877, baseType: !3388, size: 64, offset: 7872)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !35, line: 877, flags: DIFlagFwdDecl)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !735, file: !35, line: 880, baseType: !3391, size: 1088, offset: 7936)
!3391 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3392, line: 72, baseType: !3393)
!3392 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3392, line: 23, size: 1088, elements: !3394)
!3394 = !{!3395, !3396, !3397, !3398, !3399, !3402, !3403, !3404, !3405, !3430, !3431, !3432}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3393, file: !3392, line: 28, baseType: !484, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3393, file: !3392, line: 38, baseType: !360, size: 64, offset: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3393, file: !3392, line: 40, baseType: !423, size: 64, offset: 128)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3393, file: !3392, line: 43, baseType: !966, size: 320, offset: 192)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3393, file: !3392, line: 44, baseType: !3400, size: 64, offset: 512)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3392, line: 44, flags: DIFlagFwdDecl)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3393, file: !3392, line: 48, baseType: !423, size: 64, offset: 576)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3393, file: !3392, line: 59, baseType: !354, size: 256, offset: 640)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3393, file: !3392, line: 60, baseType: !326, size: 64, offset: 896)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3393, file: !3392, line: 61, baseType: !3406, size: 64, offset: 960)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3408)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3409, line: 13, size: 1216, elements: !3410)
!3409 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3410 = !{!3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3408, file: !3409, line: 14, baseType: !326, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3408, file: !3409, line: 15, baseType: !423, size: 64, offset: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3408, file: !3409, line: 17, baseType: !423, size: 64, offset: 128)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3408, file: !3409, line: 17, baseType: !423, size: 64, offset: 192)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3408, file: !3409, line: 18, baseType: !423, size: 64, offset: 256)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3408, file: !3409, line: 18, baseType: !423, size: 64, offset: 320)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3408, file: !3409, line: 19, baseType: !2073, size: 64, offset: 384)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3408, file: !3409, line: 21, baseType: !1295, size: 64, offset: 448)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3408, file: !3409, line: 23, baseType: !1295, size: 64, offset: 512)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3408, file: !3409, line: 24, baseType: !1295, size: 64, offset: 576)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3408, file: !3409, line: 25, baseType: !1295, size: 64, offset: 640)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3408, file: !3409, line: 26, baseType: !1295, size: 64, offset: 704)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3408, file: !3409, line: 27, baseType: !1295, size: 64, offset: 768)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3408, file: !3409, line: 28, baseType: !1295, size: 64, offset: 832)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3408, file: !3409, line: 29, baseType: !1295, size: 64, offset: 896)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3408, file: !3409, line: 30, baseType: !1295, size: 64, offset: 960)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3408, file: !3409, line: 31, baseType: !1295, size: 64, offset: 1024)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3408, file: !3409, line: 32, baseType: !1295, size: 64, offset: 1088)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3408, file: !3409, line: 33, baseType: !1295, size: 64, offset: 1152)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3393, file: !3392, line: 63, baseType: !383, size: 32, offset: 1024)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3393, file: !3392, line: 69, baseType: !399, size: 16, offset: 1056)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3393, file: !3392, line: 70, baseType: !2386, size: 16, offset: 1072)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !735, file: !35, line: 882, baseType: !423, size: 64, offset: 9024)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !735, file: !35, line: 885, baseType: !749, size: 32, offset: 9088)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !735, file: !35, line: 886, baseType: !3436, size: 64, offset: 9152)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !35, line: 732, flags: DIFlagFwdDecl)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !735, file: !35, line: 901, baseType: !884, size: 64, offset: 9216)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !735, file: !35, line: 904, baseType: !767, size: 64, offset: 9280)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !735, file: !35, line: 906, baseType: !3441, size: 64, offset: 9344)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !35, line: 906, flags: DIFlagFwdDecl)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !735, file: !35, line: 930, baseType: !383, size: 32, offset: 9408)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !735, file: !35, line: 933, baseType: !383, size: 32, offset: 9440)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !735, file: !35, line: 935, baseType: !3446, size: 64, offset: 9472)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !81, line: 103, size: 64, elements: !3447)
!3447 = !{!3448}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3446, file: !81, line: 104, baseType: !3449, size: 64)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !81, line: 101, flags: DIFlagFwdDecl)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !735, file: !35, line: 940, baseType: !358, size: 64, offset: 9536)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !735, file: !35, line: 942, baseType: !2493, size: 256, offset: 9600)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !732, file: !35, line: 986, baseType: !3454, offset: 10240)
!3454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, elements: !903)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !415, file: !416, line: 882, baseType: !731, size: 64, offset: 9792)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !415, file: !416, line: 884, baseType: !109, size: 32, offset: 9856)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !415, file: !416, line: 885, baseType: !109, size: 32, offset: 9888)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !415, file: !416, line: 886, baseType: !109, size: 32, offset: 9920)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !415, file: !416, line: 888, baseType: !109, size: 32, offset: 9952)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !415, file: !416, line: 890, baseType: !423, size: 64, offset: 9984)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !415, file: !416, line: 893, baseType: !7, size: 32, offset: 10048)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !415, file: !416, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !415, file: !416, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !415, file: !416, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !415, file: !416, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !415, file: !416, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !415, file: !416, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !415, file: !416, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !415, file: !416, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !415, file: !416, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !415, file: !416, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !415, file: !416, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !415, file: !416, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !415, file: !416, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !415, file: !416, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !415, file: !416, line: 969, baseType: !423, size: 64, offset: 10176)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !415, file: !416, line: 971, baseType: !3478, size: 448, offset: 10240)
!3478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !75, line: 25, size: 448, elements: !3479)
!3479 = !{!3480, !3481, !3486}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3478, file: !75, line: 26, baseType: !423, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3478, file: !75, line: 27, baseType: !3482, size: 64, offset: 64)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!1295, !3485}
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, scope: !3478, file: !75, line: 28, baseType: !3487, size: 320, offset: 128)
!3487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3478, file: !75, line: 28, size: 320, elements: !3488)
!3488 = !{!3489, !3499, !3524}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3487, file: !75, line: 37, baseType: !3490, size: 320)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3487, file: !75, line: 30, size: 320, elements: !3491)
!3491 = !{!3492, !3494, !3495, !3496, !3497, !3498}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3490, file: !75, line: 31, baseType: !3493, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3490, file: !75, line: 32, baseType: !426, size: 32, offset: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3490, file: !75, line: 33, baseType: !426, size: 32, offset: 96)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3490, file: !75, line: 34, baseType: !426, size: 32, offset: 128)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3490, file: !75, line: 35, baseType: !484, size: 64, offset: 192)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3490, file: !75, line: 36, baseType: !3493, size: 64, offset: 256)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3487, file: !75, line: 47, baseType: !3500, size: 192)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3487, file: !75, line: 39, size: 192, elements: !3501)
!3501 = !{!3502, !3503, !3504, !3523}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3500, file: !75, line: 40, baseType: !596, size: 32)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3500, file: !75, line: 41, baseType: !74, size: 32, offset: 32)
!3504 = !DIDerivedType(tag: DW_TAG_member, scope: !3500, file: !75, line: 42, baseType: !3505, size: 64, offset: 64)
!3505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3500, file: !75, line: 42, size: 64, elements: !3506)
!3506 = !{!3507, !3515}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3505, file: !75, line: 43, baseType: !3508, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3510, line: 7, size: 128, elements: !3511)
!3510 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3511 = !{!3512, !3514}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3509, file: !3510, line: 8, baseType: !3513, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !598, line: 93, baseType: !368)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3509, file: !3510, line: 9, baseType: !368, size: 64, offset: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3505, file: !75, line: 44, baseType: !3516, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3518, line: 7, size: 64, elements: !3519)
!3518 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3519 = !{!3520, !3522}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3517, file: !3518, line: 8, baseType: !3521, size: 32)
!3521 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3518, line: 5, baseType: !958)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3517, file: !3518, line: 9, baseType: !958, size: 32, offset: 32)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3500, file: !75, line: 46, baseType: !484, size: 64, offset: 128)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3487, file: !75, line: 55, baseType: !3525, size: 256)
!3525 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3487, file: !75, line: 49, size: 256, elements: !3526)
!3526 = !{!3527, !3530, !3531, !3532, !3533}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3525, file: !75, line: 50, baseType: !3528, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !75, line: 14, flags: DIFlagFwdDecl)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3525, file: !75, line: 51, baseType: !109, size: 32, offset: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3525, file: !75, line: 52, baseType: !109, size: 32, offset: 96)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3525, file: !75, line: 53, baseType: !423, size: 64, offset: 128)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3525, file: !75, line: 54, baseType: !423, size: 64, offset: 192)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !415, file: !416, line: 973, baseType: !3535, size: 32, offset: 10688)
!3535 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !328, line: 27, baseType: !3536)
!3536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !598, line: 28, baseType: !109)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !415, file: !416, line: 974, baseType: !3535, size: 32, offset: 10720)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !415, file: !416, line: 978, baseType: !423, size: 64, offset: 10752)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !415, file: !416, line: 987, baseType: !414, size: 64, offset: 10816)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !415, file: !416, line: 990, baseType: !414, size: 64, offset: 10880)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !415, file: !416, line: 995, baseType: !340, size: 128, offset: 10944)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !415, file: !416, line: 996, baseType: !340, size: 128, offset: 11072)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !415, file: !416, line: 997, baseType: !414, size: 64, offset: 11200)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !415, file: !416, line: 1005, baseType: !340, size: 128, offset: 11264)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !415, file: !416, line: 1006, baseType: !340, size: 128, offset: 11392)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !415, file: !416, line: 1009, baseType: !820, size: 64, offset: 11520)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !415, file: !416, line: 1010, baseType: !3548, size: 512, offset: 11584)
!3548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !832, size: 512, elements: !837)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !415, file: !416, line: 1011, baseType: !340, size: 128, offset: 12096)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !415, file: !416, line: 1012, baseType: !340, size: 128, offset: 12224)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !415, file: !416, line: 1014, baseType: !2242, size: 64, offset: 12352)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !415, file: !416, line: 1017, baseType: !2379, size: 64, offset: 12416)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !415, file: !416, line: 1020, baseType: !2379, size: 64, offset: 12480)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !415, file: !416, line: 1023, baseType: !326, size: 64, offset: 12544)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !415, file: !416, line: 1025, baseType: !484, size: 64, offset: 12608)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !415, file: !416, line: 1026, baseType: !484, size: 64, offset: 12672)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !415, file: !416, line: 1031, baseType: !484, size: 64, offset: 12736)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !415, file: !416, line: 1032, baseType: !3559, size: 192, offset: 12800)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !416, line: 324, size: 192, elements: !3560)
!3560 = !{!3561, !3562, !3563}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3559, file: !416, line: 326, baseType: !484, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3559, file: !416, line: 327, baseType: !484, size: 64, offset: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3559, file: !416, line: 328, baseType: !370, size: 32, offset: 128)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !415, file: !416, line: 1041, baseType: !423, size: 64, offset: 12992)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !415, file: !416, line: 1042, baseType: !423, size: 64, offset: 13056)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !415, file: !416, line: 1045, baseType: !484, size: 64, offset: 13120)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !415, file: !416, line: 1048, baseType: !484, size: 64, offset: 13184)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !415, file: !416, line: 1051, baseType: !423, size: 64, offset: 13248)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !415, file: !416, line: 1052, baseType: !423, size: 64, offset: 13312)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !415, file: !416, line: 1055, baseType: !3571, size: 640, offset: 13376)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3572, line: 132, size: 640, elements: !3573)
!3572 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3573 = !{!3574, !3580, !3581}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3571, file: !3572, line: 133, baseType: !3575, size: 576)
!3575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3576, size: 576, elements: !816)
!3576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3572, line: 117, size: 192, elements: !3577)
!3577 = !{!3578, !3579}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3576, file: !3572, line: 118, baseType: !484, size: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3576, file: !3572, line: 119, baseType: !611, size: 128, offset: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3571, file: !3572, line: 134, baseType: !7, size: 32, offset: 576)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3571, file: !3572, line: 135, baseType: !7, size: 32, offset: 608)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !415, file: !416, line: 1058, baseType: !3583, size: 448, offset: 14016)
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3572, line: 144, size: 448, elements: !3584)
!3584 = !{!3585, !3586, !3587}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3583, file: !3572, line: 145, baseType: !775, size: 128, align: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3583, file: !3572, line: 146, baseType: !354, size: 256, offset: 128)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3583, file: !3572, line: 147, baseType: !7, size: 32, offset: 384)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !415, file: !416, line: 1064, baseType: !917, size: 64, offset: 14464)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !415, file: !416, line: 1067, baseType: !917, size: 64, offset: 14528)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !415, file: !416, line: 1070, baseType: !917, size: 64, offset: 14592)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !415, file: !416, line: 1074, baseType: !950, size: 64, offset: 14656)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !415, file: !416, line: 1084, baseType: !3593, size: 128, offset: 14720)
!3593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1012, size: 128, elements: !2989)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !415, file: !416, line: 1086, baseType: !3595, size: 64, offset: 14848)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !416, line: 55, flags: DIFlagFwdDecl)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !415, file: !416, line: 1089, baseType: !3598, size: 64, offset: 14912)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3599, line: 12, size: 64, elements: !3600)
!3599 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3600 = !{!3601}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3598, file: !3599, line: 13, baseType: !3602, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3599, line: 8, flags: DIFlagFwdDecl)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !415, file: !416, line: 1090, baseType: !3605, size: 128, offset: 14976)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3606, line: 13, size: 128, elements: !3607)
!3606 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3607 = !{!3608}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3605, file: !3606, line: 14, baseType: !340, size: 128)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !415, file: !416, line: 1097, baseType: !3610, size: 64, offset: 15104)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !416, line: 50, flags: DIFlagFwdDecl)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !415, file: !416, line: 1100, baseType: !3613, size: 64, offset: 15168)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !416, line: 1100, flags: DIFlagFwdDecl)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !415, file: !416, line: 1103, baseType: !3616, size: 64, offset: 15232)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !416, line: 53, flags: DIFlagFwdDecl)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !415, file: !416, line: 1107, baseType: !3619, size: 64, offset: 15296)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3621, line: 31, size: 576, elements: !3622)
!3621 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3622 = !{!3623, !3624, !3627, !3630, !3633, !3634, !3637, !3640, !3641}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3620, file: !3621, line: 32, baseType: !432, size: 32)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3620, file: !3621, line: 33, baseType: !3625, size: 64, offset: 64)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3621, line: 9, flags: DIFlagFwdDecl)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3620, file: !3621, line: 34, baseType: !3628, size: 64, offset: 128)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3621, line: 10, flags: DIFlagFwdDecl)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3620, file: !3621, line: 35, baseType: !3631, size: 64, offset: 192)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3621, line: 8, flags: DIFlagFwdDecl)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3620, file: !3621, line: 36, baseType: !854, size: 64, offset: 256)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3620, file: !3621, line: 37, baseType: !3635, size: 64, offset: 320)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !952, line: 34, flags: DIFlagFwdDecl)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3620, file: !3621, line: 38, baseType: !3638, size: 64, offset: 384)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3621, line: 38, flags: DIFlagFwdDecl)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3620, file: !3621, line: 39, baseType: !3638, size: 64, offset: 448)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3620, file: !3621, line: 40, baseType: !3642, size: 64, offset: 512)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3621, line: 12, flags: DIFlagFwdDecl)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !415, file: !416, line: 1110, baseType: !3645, size: 64, offset: 15360)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3647, line: 93, size: 8768, elements: !3648)
!3647 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3648 = !{!3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3696, !3705, !3706, !3708, !3709, !3710, !3713, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3751, !3752, !3759, !3769, !3772, !3773, !3776, !3777, !3778, !3779, !3780, !3781}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3646, file: !3647, line: 94, baseType: !432, size: 32)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3646, file: !3647, line: 95, baseType: !383, size: 32, offset: 32)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3646, file: !3647, line: 96, baseType: !109, size: 32, offset: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3646, file: !3647, line: 97, baseType: !109, size: 32, offset: 96)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3646, file: !3647, line: 98, baseType: !340, size: 128, offset: 128)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3646, file: !3647, line: 100, baseType: !841, size: 192, offset: 256)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3646, file: !3647, line: 103, baseType: !414, size: 64, offset: 448)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3646, file: !3647, line: 106, baseType: !3657, size: 192, offset: 512)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !889, line: 32, size: 192, elements: !3658)
!3658 = !{!3659, !3660}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3657, file: !889, line: 33, baseType: !340, size: 128)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3657, file: !889, line: 34, baseType: !3661, size: 64, offset: 128)
!3661 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3662, line: 25, baseType: !3663)
!3662 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3662, line: 23, size: 64, elements: !3664)
!3664 = !{!3665}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3663, file: !3662, line: 24, baseType: !682, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3646, file: !3647, line: 109, baseType: !828, size: 64, offset: 704)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3646, file: !3647, line: 112, baseType: !109, size: 32, offset: 768)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3646, file: !3647, line: 114, baseType: !109, size: 32, offset: 800)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3646, file: !3647, line: 115, baseType: !414, size: 64, offset: 832)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3646, file: !3647, line: 118, baseType: !109, size: 32, offset: 896)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3646, file: !3647, line: 119, baseType: !7, size: 32, offset: 928)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3646, file: !3647, line: 121, baseType: !3673, size: 64, offset: 960)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3647, line: 80, size: 448, elements: !3675)
!3675 = !{!3676, !3677, !3683}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3674, file: !3647, line: 81, baseType: !383, size: 32)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3674, file: !3647, line: 82, baseType: !3678, size: 128, offset: 64)
!3678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3647, line: 75, size: 128, elements: !3679)
!3679 = !{!3680, !3681}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3678, file: !3647, line: 76, baseType: !414, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3678, file: !3647, line: 77, baseType: !3682, size: 64, offset: 64)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3674, file: !3647, line: 83, baseType: !1642, size: 256, offset: 192)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3646, file: !3647, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3646, file: !3647, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3646, file: !3647, line: 138, baseType: !7, size: 32, offset: 1056)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3646, file: !3647, line: 139, baseType: !340, size: 128, offset: 1088)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3646, file: !3647, line: 142, baseType: !549, size: 512, offset: 1216)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3646, file: !3647, line: 143, baseType: !557, size: 64, offset: 1728)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3646, file: !3647, line: 150, baseType: !3691, size: 256, offset: 1792)
!3691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3692, size: 256, elements: !2369)
!3692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3647, line: 38, size: 128, elements: !3693)
!3693 = !{!3694, !3695}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3692, file: !3647, line: 39, baseType: !484, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3692, file: !3647, line: 40, baseType: !484, size: 64, offset: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3646, file: !3647, line: 156, baseType: !3697, size: 192, offset: 2048)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3647, line: 66, size: 192, elements: !3698)
!3698 = !{!3699}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3697, file: !3647, line: 67, baseType: !3700, size: 192)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3647, line: 47, size: 192, elements: !3701)
!3701 = !{!3702, !3703, !3704}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3700, file: !3647, line: 48, baseType: !360, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3700, file: !3647, line: 49, baseType: !360, size: 64, offset: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3700, file: !3647, line: 50, baseType: !360, size: 64, offset: 128)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3646, file: !3647, line: 160, baseType: !3571, size: 640, offset: 2240)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3646, file: !3647, line: 163, baseType: !3707, size: 256, offset: 2880)
!3707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !820, size: 256, elements: !837)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3646, file: !3647, line: 169, baseType: !820, size: 64, offset: 3136)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3646, file: !3647, line: 172, baseType: !109, size: 32, offset: 3200)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3646, file: !3647, line: 174, baseType: !3711, size: 64, offset: 3264)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3647, line: 174, flags: DIFlagFwdDecl)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3646, file: !3647, line: 185, baseType: !3714, size: 64, offset: 3328)
!3714 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !601, line: 860, baseType: !3715)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !601, line: 853, size: 64, elements: !3716)
!3716 = !{!3717, !3718}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3715, file: !601, line: 858, baseType: !1151, size: 32)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3715, file: !601, line: 859, baseType: !749, size: 32, offset: 32)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3646, file: !3647, line: 186, baseType: !484, size: 64, offset: 3392)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3646, file: !3647, line: 186, baseType: !484, size: 64, offset: 3456)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3646, file: !3647, line: 186, baseType: !484, size: 64, offset: 3520)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3646, file: !3647, line: 186, baseType: !484, size: 64, offset: 3584)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3646, file: !3647, line: 187, baseType: !484, size: 64, offset: 3648)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3646, file: !3647, line: 188, baseType: !484, size: 64, offset: 3712)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3646, file: !3647, line: 189, baseType: !3559, size: 192, offset: 3776)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3646, file: !3647, line: 190, baseType: !423, size: 64, offset: 3968)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3646, file: !3647, line: 190, baseType: !423, size: 64, offset: 4032)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3646, file: !3647, line: 190, baseType: !423, size: 64, offset: 4096)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3646, file: !3647, line: 190, baseType: !423, size: 64, offset: 4160)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3646, file: !3647, line: 191, baseType: !423, size: 64, offset: 4224)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3646, file: !3647, line: 191, baseType: !423, size: 64, offset: 4288)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3646, file: !3647, line: 191, baseType: !423, size: 64, offset: 4352)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3646, file: !3647, line: 191, baseType: !423, size: 64, offset: 4416)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3646, file: !3647, line: 192, baseType: !423, size: 64, offset: 4480)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3646, file: !3647, line: 192, baseType: !423, size: 64, offset: 4544)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3646, file: !3647, line: 192, baseType: !423, size: 64, offset: 4608)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3646, file: !3647, line: 192, baseType: !423, size: 64, offset: 4672)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3646, file: !3647, line: 193, baseType: !423, size: 64, offset: 4736)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3646, file: !3647, line: 193, baseType: !423, size: 64, offset: 4800)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3646, file: !3647, line: 194, baseType: !3741, size: 448, offset: 4864)
!3741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3742, line: 12, size: 448, elements: !3743)
!3742 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3743 = !{!3744, !3745, !3746, !3747, !3748, !3749, !3750}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3741, file: !3742, line: 15, baseType: !484, size: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3741, file: !3742, line: 17, baseType: !484, size: 64, offset: 64)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3741, file: !3742, line: 19, baseType: !484, size: 64, offset: 128)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3741, file: !3742, line: 21, baseType: !484, size: 64, offset: 192)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3741, file: !3742, line: 29, baseType: !484, size: 64, offset: 256)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3741, file: !3742, line: 35, baseType: !484, size: 64, offset: 320)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3741, file: !3742, line: 44, baseType: !484, size: 64, offset: 384)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3646, file: !3647, line: 202, baseType: !486, size: 64, offset: 5312)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3646, file: !3647, line: 213, baseType: !3753, size: 2048, offset: 5376)
!3753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3754, size: 2048, elements: !2989)
!3754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3755, line: 43, size: 128, elements: !3756)
!3755 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3756 = !{!3757, !3758}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3754, file: !3755, line: 44, baseType: !1339, size: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3754, file: !3755, line: 45, baseType: !1339, size: 64, offset: 64)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3646, file: !3647, line: 216, baseType: !3760, size: 448, offset: 7424)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3647, line: 30, size: 448, elements: !3761)
!3761 = !{!3762, !3763, !3764, !3765, !3766, !3767, !3768}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3760, file: !3647, line: 31, baseType: !109, size: 32)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3760, file: !3647, line: 32, baseType: !1295, size: 64, offset: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3760, file: !3647, line: 33, baseType: !423, size: 64, offset: 128)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3760, file: !3647, line: 34, baseType: !484, size: 64, offset: 192)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3760, file: !3647, line: 34, baseType: !484, size: 64, offset: 256)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3760, file: !3647, line: 35, baseType: !423, size: 64, offset: 320)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3760, file: !3647, line: 35, baseType: !423, size: 64, offset: 384)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3646, file: !3647, line: 219, baseType: !3770, size: 64, offset: 7872)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3647, line: 219, flags: DIFlagFwdDecl)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3646, file: !3647, line: 222, baseType: !7, size: 32, offset: 7936)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3646, file: !3647, line: 223, baseType: !3774, size: 64, offset: 8000)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3647, line: 223, flags: DIFlagFwdDecl)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3646, file: !3647, line: 230, baseType: !1026, size: 8, offset: 8064)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3646, file: !3647, line: 231, baseType: !994, size: 16, offset: 8080)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3646, file: !3647, line: 232, baseType: !994, size: 16, offset: 8096)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3646, file: !3647, line: 234, baseType: !731, size: 64, offset: 8128)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3646, file: !3647, line: 237, baseType: !354, size: 256, offset: 8192)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3646, file: !3647, line: 243, baseType: !966, size: 320, offset: 8448)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !415, file: !416, line: 1111, baseType: !3783, size: 64, offset: 15424)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3647, line: 20, size: 16640, elements: !3785)
!3785 = !{!3786, !3787, !3788, !3789}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3784, file: !3647, line: 21, baseType: !749, size: 32)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3784, file: !3647, line: 22, baseType: !432, size: 32, offset: 32)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3784, file: !3647, line: 23, baseType: !841, size: 192, offset: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3784, file: !3647, line: 24, baseType: !3790, size: 16384, offset: 256)
!3790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3791, size: 16384, elements: !1476)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !889, line: 51, size: 256, elements: !3792)
!3792 = !{!3793}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3791, file: !889, line: 52, baseType: !3794, size: 256)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !889, line: 37, size: 256, elements: !3795)
!3795 = !{!3796, !3803, !3804, !3808}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3794, file: !889, line: 39, baseType: !3797, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3798, line: 83, baseType: !3799)
!3798 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3798, line: 82, baseType: !3801)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{null, !109}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3794, file: !889, line: 40, baseType: !423, size: 64, offset: 64)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3794, file: !889, line: 46, baseType: !3805, size: 64, offset: 128)
!3805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3798, line: 86, baseType: !3806)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3798, line: 85, baseType: !2597)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3794, file: !889, line: 48, baseType: !3661, size: 64, offset: 192)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !415, file: !416, line: 1112, baseType: !3661, size: 64, offset: 15488)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !415, file: !416, line: 1113, baseType: !3661, size: 64, offset: 15552)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !415, file: !416, line: 1115, baseType: !3661, size: 64, offset: 15616)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !415, file: !416, line: 1116, baseType: !3657, size: 192, offset: 15680)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !415, file: !416, line: 1117, baseType: !423, size: 64, offset: 15872)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !415, file: !416, line: 1118, baseType: !1337, size: 64, offset: 15936)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !415, file: !416, line: 1119, baseType: !7, size: 32, offset: 16000)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !415, file: !416, line: 1121, baseType: !778, size: 64, offset: 16064)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !415, file: !416, line: 1125, baseType: !3818, size: 64, offset: 16128)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !416, line: 43, flags: DIFlagFwdDecl)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !415, file: !416, line: 1127, baseType: !907, size: 32, offset: 16192)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !415, file: !416, line: 1128, baseType: !7, size: 32, offset: 16224)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !415, file: !416, line: 1130, baseType: !3823, size: 128, offset: 16256)
!3823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3824, line: 37, size: 128, elements: !3825)
!3824 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3825 = !{!3826, !3827, !3828}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3823, file: !3824, line: 38, baseType: !109, size: 32)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3823, file: !3824, line: 39, baseType: !383, size: 32, offset: 32)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3823, file: !3824, line: 40, baseType: !3829, size: 64, offset: 64)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3824, line: 24, flags: DIFlagFwdDecl)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !415, file: !416, line: 1131, baseType: !3832, size: 256, offset: 16384)
!3832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3833, line: 12, size: 256, elements: !3834)
!3833 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3834 = !{!3835, !3836, !3837, !3838}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3832, file: !3833, line: 13, baseType: !1039, size: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3832, file: !3833, line: 14, baseType: !423, size: 64, offset: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3832, file: !3833, line: 15, baseType: !423, size: 64, offset: 128)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3832, file: !3833, line: 16, baseType: !1026, size: 8, offset: 192)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !415, file: !416, line: 1134, baseType: !484, size: 64, offset: 16640)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !415, file: !416, line: 1135, baseType: !484, size: 64, offset: 16704)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !415, file: !416, line: 1138, baseType: !749, size: 32, offset: 16768)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !415, file: !416, line: 1141, baseType: !370, size: 32, offset: 16800)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !415, file: !416, line: 1143, baseType: !3844, size: 64, offset: 16832)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !416, line: 735, size: 64, elements: !3845)
!3845 = !{!3846}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3844, file: !416, line: 736, baseType: !3847, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !415, file: !416, line: 1147, baseType: !614, size: 128, offset: 16896)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !415, file: !416, line: 1149, baseType: !414, size: 64, offset: 17024)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !415, file: !416, line: 1151, baseType: !3851, size: 64, offset: 17088)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !3853, line: 64, flags: DIFlagFwdDecl)
!3853 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c3b60a10bef9e89c790a516317bab43b")
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !415, file: !416, line: 1188, baseType: !326, size: 64, offset: 17152)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !415, file: !416, line: 1191, baseType: !3856, size: 64, offset: 17216)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !416, line: 44, flags: DIFlagFwdDecl)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !415, file: !416, line: 1194, baseType: !3859, size: 64, offset: 17280)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !416, line: 45, flags: DIFlagFwdDecl)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !415, file: !416, line: 1197, baseType: !3862, size: 64, offset: 17344)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !416, line: 61, flags: DIFlagFwdDecl)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !415, file: !416, line: 1199, baseType: !3865, size: 64, offset: 17408)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3867, line: 99, size: 128, elements: !3868)
!3867 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3868 = !{!3869, !3870, !3871}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3866, file: !3867, line: 100, baseType: !358, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3866, file: !3867, line: 101, baseType: !383, size: 32, offset: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3866, file: !3867, line: 103, baseType: !401, size: 16, offset: 96)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !415, file: !416, line: 1202, baseType: !3873, size: 64, offset: 17472)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !416, line: 48, flags: DIFlagFwdDecl)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !415, file: !416, line: 1205, baseType: !423, size: 64, offset: 17536)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !415, file: !416, line: 1206, baseType: !3877, size: 64, offset: 17600)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !889, line: 14, baseType: !3879)
!3879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !889, line: 12, size: 384, elements: !3880)
!3880 = !{!3881}
!3881 = !DIDerivedType(tag: DW_TAG_member, scope: !3879, file: !889, line: 13, baseType: !3882, size: 384)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3879, file: !889, line: 13, size: 384, elements: !3883)
!3883 = !{!3884, !3885, !3886, !3887}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3882, file: !889, line: 13, baseType: !109, size: 32)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3882, file: !889, line: 13, baseType: !109, size: 32, offset: 32)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3882, file: !889, line: 13, baseType: !109, size: 32, offset: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3882, file: !889, line: 13, baseType: !3888, size: 256, offset: 128)
!3888 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3889, line: 37, size: 256, elements: !3890)
!3889 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3890 = !{!3891, !3896, !3909, !3915, !3924, !3951, !3956}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3888, file: !3889, line: 42, baseType: !3892, size: 64)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3888, file: !3889, line: 39, size: 64, elements: !3893)
!3893 = !{!3894, !3895}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3892, file: !3889, line: 40, baseType: !3536, size: 32)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3892, file: !3889, line: 41, baseType: !913, size: 32, offset: 32)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3888, file: !3889, line: 50, baseType: !3897, size: 192)
!3897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3888, file: !3889, line: 45, size: 192, elements: !3898)
!3898 = !{!3899, !3901, !3902, !3908}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3897, file: !3889, line: 46, baseType: !3900, size: 32)
!3900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !598, line: 95, baseType: !109)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3897, file: !3889, line: 47, baseType: !109, size: 32, offset: 32)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3897, file: !3889, line: 48, baseType: !3903, size: 64, offset: 64)
!3903 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3889, line: 11, baseType: !3904)
!3904 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3889, line: 8, size: 64, elements: !3905)
!3905 = !{!3906, !3907}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3904, file: !3889, line: 9, baseType: !109, size: 32)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3904, file: !3889, line: 10, baseType: !326, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3897, file: !3889, line: 49, baseType: !109, size: 32, offset: 128)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3888, file: !3889, line: 57, baseType: !3910, size: 128)
!3910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3888, file: !3889, line: 53, size: 128, elements: !3911)
!3911 = !{!3912, !3913, !3914}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3910, file: !3889, line: 54, baseType: !3536, size: 32)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3910, file: !3889, line: 55, baseType: !913, size: 32, offset: 32)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3910, file: !3889, line: 56, baseType: !3903, size: 64, offset: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3888, file: !3889, line: 66, baseType: !3916, size: 256)
!3916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3888, file: !3889, line: 60, size: 256, elements: !3917)
!3917 = !{!3918, !3919, !3920, !3921, !3923}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3916, file: !3889, line: 61, baseType: !3536, size: 32)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3916, file: !3889, line: 62, baseType: !913, size: 32, offset: 32)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3916, file: !3889, line: 63, baseType: !109, size: 32, offset: 64)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3916, file: !3889, line: 64, baseType: !3922, size: 64, offset: 128)
!3922 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !598, line: 94, baseType: !1336)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3916, file: !3889, line: 65, baseType: !3922, size: 64, offset: 192)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3888, file: !3889, line: 105, baseType: !3925, size: 256)
!3925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3888, file: !3889, line: 69, size: 256, elements: !3926)
!3926 = !{!3927, !3928}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3925, file: !3889, line: 70, baseType: !326, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, scope: !3925, file: !3889, line: 79, baseType: !3929, size: 192, offset: 64)
!3929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3925, file: !3889, line: 79, size: 192, elements: !3930)
!3930 = !{!3931, !3932, !3933, !3940, !3945}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3929, file: !3889, line: 81, baseType: !109, size: 32)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3929, file: !3889, line: 86, baseType: !994, size: 16)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3929, file: !3889, line: 92, baseType: !3934, size: 192)
!3934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3929, file: !3889, line: 88, size: 192, elements: !3935)
!3935 = !{!3936, !3938, !3939}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3934, file: !3889, line: 89, baseType: !3937, size: 64)
!3937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1012, size: 64, elements: !592)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3934, file: !3889, line: 90, baseType: !326, size: 64, offset: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3934, file: !3889, line: 91, baseType: !326, size: 64, offset: 128)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3929, file: !3889, line: 97, baseType: !3941, size: 96)
!3941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3929, file: !3889, line: 94, size: 96, elements: !3942)
!3942 = !{!3943, !3944}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3941, file: !3889, line: 95, baseType: !3937, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3941, file: !3889, line: 96, baseType: !427, size: 32, offset: 64)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3929, file: !3889, line: 103, baseType: !3946, size: 128)
!3946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3929, file: !3889, line: 99, size: 128, elements: !3947)
!3947 = !{!3948, !3949, !3950}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3946, file: !3889, line: 100, baseType: !423, size: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3946, file: !3889, line: 101, baseType: !427, size: 32, offset: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3946, file: !3889, line: 102, baseType: !427, size: 32, offset: 96)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3888, file: !3889, line: 111, baseType: !3952, size: 128)
!3952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3888, file: !3889, line: 108, size: 128, elements: !3953)
!3953 = !{!3954, !3955}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3952, file: !3889, line: 109, baseType: !1295, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3952, file: !3889, line: 110, baseType: !109, size: 32, offset: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3888, file: !3889, line: 118, baseType: !3957, size: 128)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3888, file: !3889, line: 114, size: 128, elements: !3958)
!3958 = !{!3959, !3960, !3961}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3957, file: !3889, line: 115, baseType: !326, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3957, file: !3889, line: 116, baseType: !109, size: 32, offset: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3957, file: !3889, line: 117, baseType: !7, size: 32, offset: 96)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !415, file: !416, line: 1208, baseType: !3741, size: 448, offset: 17664)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !415, file: !416, line: 1215, baseType: !484, size: 64, offset: 18112)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !415, file: !416, line: 1217, baseType: !484, size: 64, offset: 18176)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !415, file: !416, line: 1219, baseType: !484, size: 64, offset: 18240)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !415, file: !416, line: 1223, baseType: !3967, size: 64, offset: 18304)
!3967 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3968, line: 99, baseType: !3969)
!3968 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3969 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3968, line: 99, size: 64, elements: !3970)
!3970 = !{!3971}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3969, file: !3968, line: 99, baseType: !682, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !415, file: !416, line: 1225, baseType: !1151, size: 32, offset: 18368)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !415, file: !416, line: 1226, baseType: !109, size: 32, offset: 18400)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !415, file: !416, line: 1227, baseType: !109, size: 32, offset: 18432)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !415, file: !416, line: 1231, baseType: !3976, size: 64, offset: 18496)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !416, line: 1231, flags: DIFlagFwdDecl)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !415, file: !416, line: 1233, baseType: !340, size: 128, offset: 18560)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !415, file: !416, line: 1240, baseType: !3980, size: 64, offset: 18688)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !416, line: 62, flags: DIFlagFwdDecl)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !415, file: !416, line: 1242, baseType: !3983, size: 64, offset: 18752)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !416, line: 1242, flags: DIFlagFwdDecl)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !415, file: !416, line: 1244, baseType: !340, size: 128, offset: 18816)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !415, file: !416, line: 1245, baseType: !3987, size: 64, offset: 18944)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !416, line: 51, flags: DIFlagFwdDecl)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !415, file: !416, line: 1246, baseType: !354, size: 256, offset: 19008)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !415, file: !416, line: 1247, baseType: !7, size: 32, offset: 19264)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !415, file: !416, line: 1250, baseType: !3992, size: 64, offset: 19328)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !416, line: 57, flags: DIFlagFwdDecl)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !415, file: !416, line: 1251, baseType: !354, size: 256, offset: 19392)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !415, file: !416, line: 1252, baseType: !340, size: 128, offset: 19648)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !415, file: !416, line: 1259, baseType: !1770, size: 64, offset: 19776)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !415, file: !416, line: 1260, baseType: !994, size: 16, offset: 19840)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !415, file: !416, line: 1261, baseType: !994, size: 16, offset: 19856)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !415, file: !416, line: 1314, baseType: !4000, size: 64, offset: 19904)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4002, line: 62, size: 256, align: 256, elements: !4003)
!4002 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4003 = !{!4004, !4005, !4006, !4007, !4008, !4009, !4010}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4001, file: !4002, line: 75, baseType: !427, size: 32)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4001, file: !4002, line: 90, baseType: !427, size: 32, offset: 32)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4001, file: !4002, line: 112, baseType: !485, size: 64, offset: 64)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4001, file: !4002, line: 132, baseType: !427, size: 32, offset: 128)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4001, file: !4002, line: 140, baseType: !427, size: 32, offset: 160)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4001, file: !4002, line: 149, baseType: !427, size: 32, offset: 192)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4001, file: !4002, line: 154, baseType: !4011, offset: 224)
!4011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1012, elements: !903)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !415, file: !416, line: 1315, baseType: !426, size: 32, offset: 19968)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !415, file: !416, line: 1316, baseType: !426, size: 32, offset: 20000)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !415, file: !416, line: 1321, baseType: !423, size: 64, offset: 20032)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !415, file: !416, line: 1325, baseType: !109, size: 32, offset: 20096)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !415, file: !416, line: 1326, baseType: !109, size: 32, offset: 20128)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !415, file: !416, line: 1327, baseType: !109, size: 32, offset: 20160)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !415, file: !416, line: 1328, baseType: !109, size: 32, offset: 20192)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !415, file: !416, line: 1329, baseType: !775, size: 128, align: 64, offset: 20224)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !415, file: !416, line: 1332, baseType: !4021, size: 128, offset: 20352)
!4021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4022, line: 51, size: 128, elements: !4023)
!4022 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4023 = !{!4024, !4029, !4030}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4021, file: !4022, line: 60, baseType: !4025, size: 64)
!4025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4026, line: 7, size: 64, elements: !4027)
!4026 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4027 = !{!4028}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4025, file: !4026, line: 12, baseType: !679, size: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4021, file: !4022, line: 63, baseType: !1026, size: 8, offset: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4021, file: !4022, line: 70, baseType: !1026, size: 8, offset: 72)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !415, file: !416, line: 1335, baseType: !3227, size: 64, offset: 20480)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !415, file: !416, line: 1337, baseType: !4033, size: 128, offset: 20544)
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4022, line: 39, size: 128, elements: !4034)
!4034 = !{!4035, !4036, !4037}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4033, file: !4022, line: 40, baseType: !1557, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4033, file: !4022, line: 42, baseType: !427, size: 32, offset: 64)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4033, file: !4022, line: 43, baseType: !427, size: 32, offset: 96)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !415, file: !416, line: 1340, baseType: !4039, size: 64, offset: 20672)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !416, line: 69, flags: DIFlagFwdDecl)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !415, file: !416, line: 1351, baseType: !109, size: 32, offset: 20736)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !415, file: !416, line: 1352, baseType: !109, size: 32, offset: 20768)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !415, file: !416, line: 1354, baseType: !423, size: 64, offset: 20800)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !415, file: !416, line: 1364, baseType: !484, size: 64, offset: 20864)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !415, file: !416, line: 1365, baseType: !484, size: 64, offset: 20928)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !415, file: !416, line: 1412, baseType: !423, size: 64, offset: 20992)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !415, file: !416, line: 1453, baseType: !4048, size: 64, offset: 21056)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !416, line: 1453, flags: DIFlagFwdDecl)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !415, file: !416, line: 1457, baseType: !4051, size: 64, offset: 21120)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !81, line: 61, size: 576, elements: !4053)
!4053 = !{!4054, !4055, !4074, !4077, !4078, !4111, !4121}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4052, file: !81, line: 62, baseType: !80, size: 32)
!4055 = !DIDerivedType(tag: DW_TAG_member, scope: !4052, file: !81, line: 64, baseType: !4056, size: 192, offset: 64)
!4056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4052, file: !81, line: 64, size: 192, elements: !4057)
!4057 = !{!4058, !4069}
!4058 = !DIDerivedType(tag: DW_TAG_member, scope: !4056, file: !81, line: 65, baseType: !4059, size: 192)
!4059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4056, file: !81, line: 65, size: 192, elements: !4060)
!4060 = !{!4061, !4068}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4059, file: !81, line: 66, baseType: !4062, size: 128)
!4062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4063, line: 50, size: 128, elements: !4064)
!4063 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4064 = !{!4065, !4066, !4067}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4062, file: !4063, line: 52, baseType: !423, size: 64)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4062, file: !4063, line: 54, baseType: !7, size: 32, offset: 64)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4062, file: !4063, line: 55, baseType: !7, size: 32, offset: 96)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4059, file: !81, line: 67, baseType: !423, size: 64, offset: 128)
!4069 = !DIDerivedType(tag: DW_TAG_member, scope: !4056, file: !81, line: 70, baseType: !4070, size: 192)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4056, file: !81, line: 70, size: 192, elements: !4071)
!4071 = !{!4072, !4073}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4070, file: !81, line: 71, baseType: !775, size: 128, align: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4070, file: !81, line: 72, baseType: !423, size: 64, offset: 128)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4052, file: !81, line: 76, baseType: !4075, size: 64, offset: 256)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !81, line: 76, flags: DIFlagFwdDecl)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4052, file: !81, line: 77, baseType: !423, size: 64, offset: 320)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4052, file: !81, line: 79, baseType: !4079, size: 64, offset: 384)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4063, line: 25, size: 256, elements: !4081)
!4081 = !{!4082, !4088, !4092}
!4082 = !DIDerivedType(tag: DW_TAG_member, scope: !4080, file: !4063, line: 26, baseType: !4083, size: 128)
!4083 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4080, file: !4063, line: 26, size: 128, elements: !4084)
!4084 = !{!4085, !4087}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4083, file: !4063, line: 27, baseType: !4086, size: 128)
!4086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 128, elements: !2989)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4083, file: !4063, line: 28, baseType: !4086, size: 128)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4080, file: !4063, line: 31, baseType: !4089, size: 64, offset: 128)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4091)
!4091 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4063, line: 23, flags: DIFlagFwdDecl)
!4092 = !DIDerivedType(tag: DW_TAG_member, scope: !4080, file: !4063, line: 33, baseType: !4093, size: 64, offset: 192)
!4093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4080, file: !4063, line: 33, size: 64, elements: !4094)
!4094 = !{!4095, !4101, !4106}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4093, file: !4063, line: 38, baseType: !4096, size: 64)
!4096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4093, file: !4063, line: 34, size: 64, elements: !4097)
!4097 = !{!4098, !4099, !4100}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4096, file: !4063, line: 35, baseType: !958, size: 32)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4096, file: !4063, line: 36, baseType: !391, size: 8, offset: 32)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4096, file: !4063, line: 37, baseType: !391, size: 8, offset: 40)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4093, file: !4063, line: 42, baseType: !4102, size: 16)
!4102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4093, file: !4063, line: 39, size: 16, elements: !4103)
!4103 = !{!4104, !4105}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4102, file: !4063, line: 40, baseType: !391, size: 8)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4102, file: !4063, line: 41, baseType: !391, size: 8, offset: 8)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4093, file: !4063, line: 46, baseType: !4107, size: 16)
!4107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4093, file: !4063, line: 43, size: 16, elements: !4108)
!4108 = !{!4109, !4110}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4107, file: !4063, line: 44, baseType: !391, size: 8)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4107, file: !4063, line: 45, baseType: !391, size: 8, offset: 8)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4052, file: !81, line: 81, baseType: !4112, size: 64, offset: 448)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !81, line: 85, size: 384, elements: !4114)
!4114 = !{!4115, !4116, !4117, !4118, !4119, !4120}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4113, file: !81, line: 86, baseType: !4075, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4113, file: !81, line: 87, baseType: !423, size: 64, offset: 64)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4113, file: !81, line: 88, baseType: !423, size: 64, offset: 128)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4113, file: !81, line: 89, baseType: !423, size: 64, offset: 192)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4113, file: !81, line: 90, baseType: !1026, size: 8, offset: 256)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4113, file: !81, line: 92, baseType: !4112, size: 64, offset: 320)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4052, file: !81, line: 82, baseType: !7, size: 32, offset: 512)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !415, file: !416, line: 1463, baseType: !4123, offset: 21184)
!4123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !416, line: 739, elements: !760)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !415, file: !416, line: 1470, baseType: !775, size: 128, align: 64, offset: 21184)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !415, file: !416, line: 1471, baseType: !432, size: 32, offset: 21312)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !415, file: !416, line: 1472, baseType: !109, size: 32, offset: 21344)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !415, file: !416, line: 1474, baseType: !414, size: 64, offset: 21376)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !415, file: !416, line: 1475, baseType: !2481, size: 320, offset: 21440)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !415, file: !416, line: 1478, baseType: !4130, size: 64, offset: 21760)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !416, line: 1478, flags: DIFlagFwdDecl)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !415, file: !416, line: 1482, baseType: !432, size: 32, offset: 21824)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !415, file: !416, line: 1489, baseType: !326, size: 64, offset: 21888)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !415, file: !416, line: 1504, baseType: !326, size: 64, offset: 21952)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !415, file: !416, line: 1505, baseType: !485, size: 64, offset: 22016)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !415, file: !416, line: 1506, baseType: !484, size: 64, offset: 22080)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !415, file: !416, line: 1507, baseType: !485, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !415, file: !416, line: 1508, baseType: !485, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !415, file: !416, line: 1509, baseType: !485, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !415, file: !416, line: 1510, baseType: !775, size: 128, align: 64, offset: 22208)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !415, file: !416, line: 1511, baseType: !109, size: 32, offset: 22336)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !415, file: !416, line: 1515, baseType: !4143, size: 64, offset: 22400)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !446, line: 56, size: 64, elements: !4144)
!4144 = !{!4145}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4143, file: !446, line: 57, baseType: !449, size: 64)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !415, file: !416, line: 1518, baseType: !4143, size: 64, offset: 22464)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !415, file: !416, line: 1528, baseType: !775, size: 128, align: 64, offset: 22528)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !415, file: !416, line: 1552, baseType: !4149, size: 35328, offset: 23040)
!4149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4150, line: 430, size: 35328, elements: !4151)
!4150 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4151 = !{!4152, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4181, !4182, !4183, !4184, !4185, !4186, !4189, !4190, !4191, !4192}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4149, file: !4150, line: 432, baseType: !4153, size: 192)
!4153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4154, size: 192, elements: !816)
!4154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4155, line: 16, size: 64, elements: !4156)
!4155 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4156 = !{!4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4154, file: !4155, line: 17, baseType: !399, size: 16)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4154, file: !4155, line: 18, baseType: !399, size: 16, offset: 16)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4154, file: !4155, line: 19, baseType: !399, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4154, file: !4155, line: 19, baseType: !399, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4154, file: !4155, line: 19, baseType: !399, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4154, file: !4155, line: 19, baseType: !399, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4154, file: !4155, line: 19, baseType: !399, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4154, file: !4155, line: 20, baseType: !399, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4154, file: !4155, line: 20, baseType: !399, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4154, file: !4155, line: 20, baseType: !399, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4154, file: !4155, line: 20, baseType: !399, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4154, file: !4155, line: 20, baseType: !399, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4154, file: !4155, line: 20, baseType: !399, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4149, file: !4150, line: 436, baseType: !423, size: 64, offset: 192)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4149, file: !4150, line: 440, baseType: !401, size: 16, offset: 256)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4149, file: !4150, line: 441, baseType: !401, size: 16, offset: 272)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4149, file: !4150, line: 442, baseType: !401, size: 16, offset: 288)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4149, file: !4150, line: 443, baseType: !401, size: 16, offset: 304)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4149, file: !4150, line: 447, baseType: !423, size: 64, offset: 320)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4149, file: !4150, line: 448, baseType: !423, size: 64, offset: 384)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4149, file: !4150, line: 459, baseType: !4178, size: 256, offset: 448)
!4178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4179, size: 256, elements: !837)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4150, line: 428, flags: DIFlagFwdDecl)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4149, file: !4150, line: 461, baseType: !423, size: 64, offset: 704)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4149, file: !4150, line: 463, baseType: !423, size: 64, offset: 768)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4149, file: !4150, line: 465, baseType: !423, size: 64, offset: 832)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4149, file: !4150, line: 466, baseType: !423, size: 64, offset: 896)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4149, file: !4150, line: 467, baseType: !423, size: 64, offset: 960)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4149, file: !4150, line: 473, baseType: !4187, size: 64, offset: 1024)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4150, line: 10, flags: DIFlagFwdDecl)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4149, file: !4150, line: 480, baseType: !423, size: 64, offset: 1088)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4149, file: !4150, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4149, file: !4150, line: 491, baseType: !426, size: 32, offset: 1184)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4149, file: !4150, line: 501, baseType: !4193, size: 33792, offset: 1536)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4194, line: 448, size: 33792, elements: !4195)
!4194 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4195 = !{!4196, !4197, !4198, !4360, !4361, !4367, !4368}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4193, file: !4194, line: 461, baseType: !7, size: 32)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4193, file: !4194, line: 468, baseType: !423, size: 64, offset: 64)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4193, file: !4194, line: 476, baseType: !4199, size: 64, offset: 128)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4194, line: 356, size: 33280, align: 512, elements: !4201)
!4201 = !{!4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4200, file: !4194, line: 358, baseType: !7, size: 32)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4200, file: !4194, line: 361, baseType: !7, size: 32, offset: 32)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4200, file: !4194, line: 364, baseType: !484, size: 64, offset: 64)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4200, file: !4194, line: 367, baseType: !484, size: 64, offset: 128)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4200, file: !4194, line: 370, baseType: !484, size: 64, offset: 192)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4200, file: !4194, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4200, file: !4194, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4200, file: !4194, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4200, file: !4194, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4200, file: !4194, line: 397, baseType: !4212, size: 32768, offset: 512)
!4212 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4194, line: 348, size: 32768, elements: !4213)
!4213 = !{!4214, !4229, !4266, !4343, !4356}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4212, file: !4194, line: 349, baseType: !4215, size: 896)
!4215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4194, line: 12, size: 896, elements: !4216)
!4216 = !{!4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4228}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4215, file: !4194, line: 13, baseType: !426, size: 32)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4215, file: !4194, line: 14, baseType: !426, size: 32, offset: 32)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4215, file: !4194, line: 15, baseType: !426, size: 32, offset: 64)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4215, file: !4194, line: 16, baseType: !426, size: 32, offset: 96)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4215, file: !4194, line: 17, baseType: !426, size: 32, offset: 128)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4215, file: !4194, line: 18, baseType: !426, size: 32, offset: 160)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4215, file: !4194, line: 19, baseType: !426, size: 32, offset: 192)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4215, file: !4194, line: 22, baseType: !4225, size: 640, offset: 224)
!4225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 640, elements: !4226)
!4226 = !{!4227}
!4227 = !DISubrange(count: 20)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4215, file: !4194, line: 25, baseType: !426, size: 32, offset: 864)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4212, file: !4194, line: 350, baseType: !4230, size: 4096, align: 128)
!4230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4194, line: 34, size: 4096, align: 128, elements: !4231)
!4231 = !{!4232, !4233, !4234, !4235, !4236, !4251, !4252, !4253, !4255, !4257, !4261}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4230, file: !4194, line: 35, baseType: !399, size: 16)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4230, file: !4194, line: 36, baseType: !399, size: 16, offset: 16)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4230, file: !4194, line: 37, baseType: !399, size: 16, offset: 32)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4230, file: !4194, line: 38, baseType: !399, size: 16, offset: 48)
!4236 = !DIDerivedType(tag: DW_TAG_member, scope: !4230, file: !4194, line: 39, baseType: !4237, size: 128, offset: 64)
!4237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4230, file: !4194, line: 39, size: 128, elements: !4238)
!4238 = !{!4239, !4244}
!4239 = !DIDerivedType(tag: DW_TAG_member, scope: !4237, file: !4194, line: 40, baseType: !4240, size: 128)
!4240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4237, file: !4194, line: 40, size: 128, elements: !4241)
!4241 = !{!4242, !4243}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4240, file: !4194, line: 41, baseType: !484, size: 64)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4240, file: !4194, line: 42, baseType: !484, size: 64, offset: 64)
!4244 = !DIDerivedType(tag: DW_TAG_member, scope: !4237, file: !4194, line: 44, baseType: !4245, size: 128)
!4245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4237, file: !4194, line: 44, size: 128, elements: !4246)
!4246 = !{!4247, !4248, !4249, !4250}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4245, file: !4194, line: 45, baseType: !426, size: 32)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4245, file: !4194, line: 46, baseType: !426, size: 32, offset: 32)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4245, file: !4194, line: 47, baseType: !426, size: 32, offset: 64)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4245, file: !4194, line: 48, baseType: !426, size: 32, offset: 96)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4230, file: !4194, line: 51, baseType: !426, size: 32, offset: 192)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4230, file: !4194, line: 52, baseType: !426, size: 32, offset: 224)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4230, file: !4194, line: 55, baseType: !4254, size: 1024, offset: 256)
!4254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 1024, elements: !2980)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4230, file: !4194, line: 58, baseType: !4256, size: 2048, offset: 1280)
!4256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 2048, elements: !1476)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4230, file: !4194, line: 60, baseType: !4258, size: 384, offset: 3328)
!4258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 384, elements: !4259)
!4259 = !{!4260}
!4260 = !DISubrange(count: 12)
!4261 = !DIDerivedType(tag: DW_TAG_member, scope: !4230, file: !4194, line: 62, baseType: !4262, size: 384, offset: 3712)
!4262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4230, file: !4194, line: 62, size: 384, elements: !4263)
!4263 = !{!4264, !4265}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4262, file: !4194, line: 63, baseType: !4258, size: 384)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4262, file: !4194, line: 64, baseType: !4258, size: 384)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4212, file: !4194, line: 351, baseType: !4267, size: 1088)
!4267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4194, line: 79, size: 1088, elements: !4268)
!4268 = !{!4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4342}
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4267, file: !4194, line: 80, baseType: !426, size: 32)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4267, file: !4194, line: 81, baseType: !426, size: 32, offset: 32)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4267, file: !4194, line: 82, baseType: !426, size: 32, offset: 64)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4267, file: !4194, line: 83, baseType: !426, size: 32, offset: 96)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4267, file: !4194, line: 84, baseType: !426, size: 32, offset: 128)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4267, file: !4194, line: 85, baseType: !426, size: 32, offset: 160)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4267, file: !4194, line: 86, baseType: !426, size: 32, offset: 192)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4267, file: !4194, line: 88, baseType: !4225, size: 640, offset: 224)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4267, file: !4194, line: 89, baseType: !391, size: 8, offset: 864)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4267, file: !4194, line: 90, baseType: !391, size: 8, offset: 872)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4267, file: !4194, line: 91, baseType: !391, size: 8, offset: 880)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4267, file: !4194, line: 92, baseType: !391, size: 8, offset: 888)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4267, file: !4194, line: 93, baseType: !391, size: 8, offset: 896)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4267, file: !4194, line: 94, baseType: !391, size: 8, offset: 904)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4267, file: !4194, line: 95, baseType: !4284, size: 64, offset: 960)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4286, line: 11, size: 128, elements: !4287)
!4286 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4287 = !{!4288, !4289}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4285, file: !4286, line: 12, baseType: !1295, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4285, file: !4286, line: 13, baseType: !4290, size: 64, offset: 64)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4292, line: 103, size: 1344, elements: !4293)
!4292 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4293 = !{!4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4322, !4323, !4324}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4291, file: !4292, line: 109, baseType: !423, size: 64)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4291, file: !4292, line: 110, baseType: !423, size: 64, offset: 64)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4291, file: !4292, line: 111, baseType: !423, size: 64, offset: 128)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4291, file: !4292, line: 112, baseType: !423, size: 64, offset: 192)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4291, file: !4292, line: 113, baseType: !423, size: 64, offset: 256)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4291, file: !4292, line: 114, baseType: !423, size: 64, offset: 320)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4291, file: !4292, line: 117, baseType: !423, size: 64, offset: 384)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4291, file: !4292, line: 118, baseType: !423, size: 64, offset: 448)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4291, file: !4292, line: 119, baseType: !423, size: 64, offset: 512)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4291, file: !4292, line: 120, baseType: !423, size: 64, offset: 576)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4291, file: !4292, line: 121, baseType: !423, size: 64, offset: 640)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4291, file: !4292, line: 122, baseType: !423, size: 64, offset: 704)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4291, file: !4292, line: 123, baseType: !423, size: 64, offset: 768)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4291, file: !4292, line: 124, baseType: !423, size: 64, offset: 832)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4291, file: !4292, line: 125, baseType: !423, size: 64, offset: 896)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4291, file: !4292, line: 139, baseType: !423, size: 64, offset: 960)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4291, file: !4292, line: 142, baseType: !423, size: 64, offset: 1024)
!4311 = !DIDerivedType(tag: DW_TAG_member, scope: !4291, file: !4292, line: 144, baseType: !4312, size: 64, offset: 1088)
!4312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4291, file: !4292, line: 144, size: 64, elements: !4313)
!4313 = !{!4314, !4315, !4316}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4312, file: !4292, line: 146, baseType: !399, size: 16)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4312, file: !4292, line: 148, baseType: !484, size: 64)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4312, file: !4292, line: 150, baseType: !4317, size: 64)
!4317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4292, line: 59, size: 64, elements: !4318)
!4318 = !{!4319, !4320, !4321}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4317, file: !4292, line: 61, baseType: !484, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4317, file: !4292, line: 63, baseType: !484, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4317, file: !4292, line: 65, baseType: !484, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4291, file: !4292, line: 153, baseType: !423, size: 64, offset: 1152)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4291, file: !4292, line: 154, baseType: !423, size: 64, offset: 1216)
!4324 = !DIDerivedType(tag: DW_TAG_member, scope: !4291, file: !4292, line: 156, baseType: !4325, size: 64, offset: 1280)
!4325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4291, file: !4292, line: 156, size: 64, elements: !4326)
!4326 = !{!4327, !4328, !4329}
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4325, file: !4292, line: 158, baseType: !399, size: 16)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4325, file: !4292, line: 160, baseType: !484, size: 64)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4325, file: !4292, line: 162, baseType: !4330, size: 64)
!4330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4292, line: 69, size: 64, elements: !4331)
!4331 = !{!4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4330, file: !4292, line: 71, baseType: !484, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4330, file: !4292, line: 73, baseType: !484, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4330, file: !4292, line: 75, baseType: !484, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4330, file: !4292, line: 77, baseType: !484, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4330, file: !4292, line: 80, baseType: !484, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4330, file: !4292, line: 83, baseType: !484, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4330, file: !4292, line: 86, baseType: !484, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4330, file: !4292, line: 88, baseType: !484, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4330, file: !4292, line: 93, baseType: !484, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4330, file: !4292, line: 100, baseType: !484, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4267, file: !4194, line: 96, baseType: !426, size: 32, offset: 1024)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4212, file: !4194, line: 352, baseType: !4344, size: 4608, align: 512)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4194, line: 333, size: 4608, align: 512, elements: !4345)
!4345 = !{!4346, !4347, !4354}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4344, file: !4194, line: 334, baseType: !4230, size: 4096, align: 128)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4344, file: !4194, line: 335, baseType: !4348, size: 512, offset: 4096)
!4348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4194, line: 312, size: 512, elements: !4349)
!4349 = !{!4350, !4351, !4352}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4348, file: !4194, line: 313, baseType: !484, size: 64)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4348, file: !4194, line: 314, baseType: !484, size: 64, offset: 64)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4348, file: !4194, line: 315, baseType: !4353, size: 384, offset: 128)
!4353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 384, elements: !1013)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4344, file: !4194, line: 336, baseType: !4355, offset: 4608)
!4355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, elements: !903)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4212, file: !4194, line: 353, baseType: !4357, size: 32768)
!4357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 32768, elements: !4358)
!4358 = !{!4359}
!4359 = !DISubrange(count: 4096)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4193, file: !4194, line: 484, baseType: !4199, size: 64, offset: 192)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4193, file: !4194, line: 491, baseType: !4362, size: 128, offset: 256)
!4362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4194, line: 404, size: 128, elements: !4363)
!4363 = !{!4364, !4365, !4366}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4362, file: !4194, line: 424, baseType: !484, size: 64)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4362, file: !4194, line: 432, baseType: !7, size: 32, offset: 64)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4362, file: !4194, line: 440, baseType: !7, size: 32, offset: 96)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4193, file: !4194, line: 498, baseType: !4362, size: 128, offset: 384)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4193, file: !4194, line: 508, baseType: !4200, size: 33280, align: 512, offset: 512)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !411, file: !351, line: 57, baseType: !423, size: 64, offset: 64)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !411, file: !351, line: 58, baseType: !7, size: 32, offset: 128)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !411, file: !351, line: 59, baseType: !401, size: 16, offset: 160)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !411, file: !351, line: 60, baseType: !401, size: 16, offset: 176)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !346, file: !347, line: 95, baseType: !340, size: 128, offset: 320)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !336, file: !337, line: 301, baseType: !4375, size: 64, offset: 576)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_private_state", file: !337, line: 331, size: 128, elements: !4377)
!4377 = !{!4378, !6001}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4376, file: !337, line: 335, baseType: !4379, size: 64)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_atomic_state", file: !337, line: 365, size: 960, elements: !4381)
!4381 = !{!4382, !4383, !5075, !5076, !5077, !5078, !5079, !5967, !5978, !5979, !5988, !5989, !5998, !5999, !6000}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4380, file: !337, line: 366, baseType: !2227, size: 32)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4380, file: !337, line: 368, baseType: !4384, size: 64, offset: 64)
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !194, line: 50, size: 12736, elements: !4386)
!4386 = !{!4387, !4388, !4389, !4739, !4745, !4750, !4751, !4754, !4755, !4756, !4757, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !5061, !5062, !5063, !5066, !5069, !5070, !5073, !5074}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "if_version", scope: !4385, file: !194, line: 52, baseType: !109, size: 32)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4385, file: !194, line: 55, baseType: !2227, size: 32, offset: 32)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4385, file: !194, line: 58, baseType: !4390, size: 64, offset: 64)
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !4392)
!4392 = !{!4393, !4394, !4395, !4398, !4399, !4452, !4522, !4523, !4524, !4525, !4526, !4533, !4625, !4638, !4648, !4652, !4654, !4655, !4656, !4660, !4667, !4668, !4671, !4674, !4678, !4681, !4682, !4683, !4684, !4685, !4686, !4716, !4717, !4718, !4721, !4724, !4733, !4734, !4735, !4736, !4737, !4738}
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4391, file: !94, line: 706, baseType: !1433, size: 512)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4391, file: !94, line: 707, baseType: !4390, size: 64, offset: 512)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4391, file: !94, line: 709, baseType: !4396, size: 64, offset: 576)
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 64)
!4397 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4391, file: !94, line: 711, baseType: !1029, size: 64, offset: 640)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4391, file: !94, line: 712, baseType: !4400, size: 64, offset: 704)
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4401, size: 64)
!4401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4402)
!4402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4403)
!4403 = !{!4404, !4405, !4406, !4412, !4417, !4421}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4402, file: !94, line: 90, baseType: !1029, size: 64)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4402, file: !94, line: 91, baseType: !1513, size: 64, offset: 64)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4402, file: !94, line: 92, baseType: !4407, size: 64, offset: 128)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{!109, !4410, !1469}
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4391)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4402, file: !94, line: 93, baseType: !4413, size: 64, offset: 192)
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4414 = !DISubroutineType(types: !4415)
!4415 = !{!1039, !4410, !4416, !2090, !2091}
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4402, file: !94, line: 95, baseType: !4418, size: 64, offset: 256)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = !DISubroutineType(types: !4420)
!4420 = !{null, !4390}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4402, file: !94, line: 97, baseType: !4422, size: 64, offset: 320)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4424)
!4424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4425)
!4425 = !{!4426, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451}
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4424, file: !101, line: 287, baseType: !4427, size: 64)
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4428, size: 64)
!4428 = !DISubroutineType(types: !4429)
!4429 = !{!109, !4390}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4424, file: !101, line: 288, baseType: !4418, size: 64, offset: 64)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4424, file: !101, line: 289, baseType: !4427, size: 64, offset: 128)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4424, file: !101, line: 290, baseType: !4427, size: 64, offset: 192)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4424, file: !101, line: 291, baseType: !4427, size: 64, offset: 256)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4424, file: !101, line: 292, baseType: !4427, size: 64, offset: 320)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4424, file: !101, line: 293, baseType: !4427, size: 64, offset: 384)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4424, file: !101, line: 294, baseType: !4427, size: 64, offset: 448)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4424, file: !101, line: 295, baseType: !4427, size: 64, offset: 512)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4424, file: !101, line: 296, baseType: !4427, size: 64, offset: 576)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4424, file: !101, line: 297, baseType: !4427, size: 64, offset: 640)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4424, file: !101, line: 298, baseType: !4427, size: 64, offset: 704)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4424, file: !101, line: 299, baseType: !4427, size: 64, offset: 768)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4424, file: !101, line: 300, baseType: !4427, size: 64, offset: 832)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4424, file: !101, line: 301, baseType: !4427, size: 64, offset: 896)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4424, file: !101, line: 302, baseType: !4427, size: 64, offset: 960)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4424, file: !101, line: 303, baseType: !4427, size: 64, offset: 1024)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4424, file: !101, line: 304, baseType: !4427, size: 64, offset: 1088)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4424, file: !101, line: 305, baseType: !4427, size: 64, offset: 1152)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4424, file: !101, line: 306, baseType: !4427, size: 64, offset: 1216)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4424, file: !101, line: 307, baseType: !4427, size: 64, offset: 1280)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4424, file: !101, line: 308, baseType: !4427, size: 64, offset: 1344)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4424, file: !101, line: 309, baseType: !4427, size: 64, offset: 1408)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4391, file: !94, line: 714, baseType: !4453, size: 64, offset: 768)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4455)
!4455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4456, line: 80, size: 1344, elements: !4457)
!4456 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4457 = !{!4458, !4459, !4460, !4461, !4462, !4463, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4521}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4455, file: !4456, line: 81, baseType: !1029, size: 64)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4455, file: !4456, line: 82, baseType: !1029, size: 64, offset: 64)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4455, file: !4456, line: 83, baseType: !1513, size: 64, offset: 128)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4455, file: !4456, line: 84, baseType: !1513, size: 64, offset: 192)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4455, file: !4456, line: 85, baseType: !1513, size: 64, offset: 256)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4455, file: !4456, line: 87, baseType: !4464, size: 64, offset: 320)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{!109, !4390, !4467}
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4469)
!4469 = !{!4470, !4471, !4472, !4473, !4474, !4475, !4476, !4480, !4484, !4485, !4486, !4487, !4488, !4496, !4497, !4498, !4499, !4500, !4501}
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4468, file: !88, line: 97, baseType: !1029, size: 64)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4468, file: !88, line: 98, baseType: !4453, size: 64, offset: 64)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4468, file: !88, line: 100, baseType: !1420, size: 64, offset: 128)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4468, file: !88, line: 101, baseType: !1029, size: 64, offset: 192)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4468, file: !88, line: 103, baseType: !1026, size: 8, offset: 256)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4468, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4468, file: !88, line: 106, baseType: !4477, size: 64, offset: 320)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4479)
!4479 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !88, line: 106, flags: DIFlagFwdDecl)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4468, file: !88, line: 107, baseType: !4481, size: 64, offset: 384)
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4483)
!4483 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !88, line: 107, flags: DIFlagFwdDecl)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4468, file: !88, line: 109, baseType: !4427, size: 64, offset: 448)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4468, file: !88, line: 110, baseType: !4418, size: 64, offset: 512)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4468, file: !88, line: 111, baseType: !4427, size: 64, offset: 576)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4468, file: !88, line: 112, baseType: !4418, size: 64, offset: 640)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4468, file: !88, line: 113, baseType: !4489, size: 64, offset: 704)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DISubroutineType(types: !4491)
!4491 = !{!109, !4390, !4492}
!4492 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4493)
!4493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4494)
!4494 = !{!4495}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4493, file: !101, line: 59, baseType: !109, size: 32)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4468, file: !88, line: 114, baseType: !4427, size: 64, offset: 768)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4468, file: !88, line: 115, baseType: !1513, size: 64, offset: 832)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4468, file: !88, line: 116, baseType: !1513, size: 64, offset: 896)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4468, file: !88, line: 118, baseType: !4422, size: 64, offset: 960)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4468, file: !88, line: 119, baseType: !4418, size: 64, offset: 1024)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4468, file: !88, line: 121, baseType: !4502, size: 64, offset: 1088)
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4455, file: !4456, line: 88, baseType: !4407, size: 64, offset: 384)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4455, file: !4456, line: 89, baseType: !4427, size: 64, offset: 448)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4455, file: !4456, line: 90, baseType: !4418, size: 64, offset: 512)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4455, file: !4456, line: 91, baseType: !4418, size: 64, offset: 576)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4455, file: !4456, line: 92, baseType: !4418, size: 64, offset: 640)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4455, file: !4456, line: 94, baseType: !4427, size: 64, offset: 704)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4455, file: !4456, line: 95, baseType: !4427, size: 64, offset: 768)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4455, file: !4456, line: 97, baseType: !4489, size: 64, offset: 832)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4455, file: !4456, line: 98, baseType: !4427, size: 64, offset: 896)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4455, file: !4456, line: 100, baseType: !4427, size: 64, offset: 960)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4455, file: !4456, line: 102, baseType: !4427, size: 64, offset: 1024)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4455, file: !4456, line: 103, baseType: !4418, size: 64, offset: 1088)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4455, file: !4456, line: 105, baseType: !4422, size: 64, offset: 1152)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4455, file: !4456, line: 107, baseType: !4518, size: 64, offset: 1216)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4520)
!4520 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4456, line: 107, flags: DIFlagFwdDecl)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4455, file: !4456, line: 109, baseType: !1026, size: 8, offset: 1280)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4391, file: !94, line: 715, baseType: !4467, size: 64, offset: 832)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4391, file: !94, line: 717, baseType: !326, size: 64, offset: 896)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4391, file: !94, line: 719, baseType: !326, size: 64, offset: 960)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4391, file: !94, line: 721, baseType: !354, size: 256, offset: 1024)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4391, file: !94, line: 725, baseType: !4527, size: 448, offset: 1280)
!4527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4528)
!4528 = !{!4529, !4530, !4531, !4532}
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4527, file: !94, line: 518, baseType: !340, size: 128)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4527, file: !94, line: 519, baseType: !340, size: 128, offset: 128)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4527, file: !94, line: 520, baseType: !340, size: 128, offset: 256)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4527, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4391, file: !94, line: 726, baseType: !4534, size: 2496, offset: 1728)
!4534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4535)
!4535 = !{!4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4618, !4622}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4534, file: !101, line: 664, baseType: !4492, size: 32)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4534, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4534, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4534, file: !101, line: 667, baseType: !1026, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4534, file: !101, line: 668, baseType: !1026, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4534, file: !101, line: 669, baseType: !1026, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4534, file: !101, line: 670, baseType: !1026, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4534, file: !101, line: 671, baseType: !1026, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4534, file: !101, line: 672, baseType: !1026, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4534, file: !101, line: 673, baseType: !1026, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4534, file: !101, line: 674, baseType: !1026, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4534, file: !101, line: 675, baseType: !426, size: 32, offset: 64)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4534, file: !101, line: 676, baseType: !749, size: 32, offset: 96)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4534, file: !101, line: 678, baseType: !340, size: 128, offset: 128)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4534, file: !101, line: 679, baseType: !1642, size: 256, offset: 256)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4534, file: !101, line: 680, baseType: !4552, size: 64, offset: 512)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4554, line: 43, size: 1536, elements: !4555)
!4554 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4555 = !{!4556, !4557, !4558, !4559, !4560, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4553, file: !4554, line: 44, baseType: !1029, size: 64)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4553, file: !4554, line: 45, baseType: !109, size: 32, offset: 64)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4553, file: !4554, line: 46, baseType: !340, size: 128, offset: 128)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4553, file: !4554, line: 47, baseType: !749, size: 32, offset: 256)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4553, file: !4554, line: 48, baseType: !4561, size: 64, offset: 320)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4553, file: !4554, line: 49, baseType: !2481, size: 320, offset: 384)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4553, file: !4554, line: 50, baseType: !423, size: 64, offset: 704)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4553, file: !4554, line: 51, baseType: !557, size: 64, offset: 768)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4553, file: !4554, line: 52, baseType: !557, size: 64, offset: 832)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4553, file: !4554, line: 53, baseType: !557, size: 64, offset: 896)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4553, file: !4554, line: 54, baseType: !557, size: 64, offset: 960)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4553, file: !4554, line: 55, baseType: !557, size: 64, offset: 1024)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4553, file: !4554, line: 56, baseType: !423, size: 64, offset: 1088)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4553, file: !4554, line: 57, baseType: !423, size: 64, offset: 1152)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4553, file: !4554, line: 58, baseType: !423, size: 64, offset: 1216)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4553, file: !4554, line: 59, baseType: !423, size: 64, offset: 1280)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4553, file: !4554, line: 60, baseType: !423, size: 64, offset: 1344)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4553, file: !4554, line: 61, baseType: !4390, size: 64, offset: 1408)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4553, file: !4554, line: 62, baseType: !1026, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4553, file: !4554, line: 63, baseType: !1026, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4534, file: !101, line: 681, baseType: !1026, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4534, file: !101, line: 682, baseType: !1026, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4534, file: !101, line: 683, baseType: !1026, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4534, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4534, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4534, file: !101, line: 690, baseType: !549, size: 512, offset: 640)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4534, file: !101, line: 691, baseType: !484, size: 64, offset: 1152)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4534, file: !101, line: 692, baseType: !2493, size: 256, offset: 1216)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4534, file: !101, line: 693, baseType: !841, size: 192, offset: 1472)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4534, file: !101, line: 694, baseType: !4561, size: 64, offset: 1664)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4534, file: !101, line: 695, baseType: !383, size: 32, offset: 1728)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4534, file: !101, line: 696, baseType: !383, size: 32, offset: 1760)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4534, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4534, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4534, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4534, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4534, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4534, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4534, file: !101, line: 703, baseType: !1026, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4534, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4534, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4534, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4534, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4534, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4534, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4534, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4534, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4534, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4534, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4534, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4534, file: !101, line: 715, baseType: !484, size: 64, offset: 2048)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4534, file: !101, line: 716, baseType: !484, size: 64, offset: 2112)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4534, file: !101, line: 717, baseType: !484, size: 64, offset: 2176)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4534, file: !101, line: 718, baseType: !484, size: 64, offset: 2240)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4534, file: !101, line: 720, baseType: !4613, size: 64, offset: 2304)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4615)
!4615 = !{!4616, !4617}
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4614, file: !101, line: 633, baseType: !749, size: 32)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4614, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4534, file: !101, line: 721, baseType: !4619, size: 64, offset: 2368)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{null, !4390, !958}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4534, file: !101, line: 722, baseType: !4623, size: 64, offset: 2432)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4391, file: !94, line: 727, baseType: !4626, size: 64, offset: 4224)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4628)
!4628 = !{!4629, !4630, !4631, !4635, !4636, !4637}
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4627, file: !101, line: 743, baseType: !4424, size: 1472)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4627, file: !101, line: 744, baseType: !4427, size: 64, offset: 1472)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4627, file: !101, line: 745, baseType: !4632, size: 64, offset: 1536)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{null, !4390, !1026}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4627, file: !101, line: 746, baseType: !4427, size: 64, offset: 1600)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4627, file: !101, line: 747, baseType: !4418, size: 64, offset: 1664)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4627, file: !101, line: 748, baseType: !4418, size: 64, offset: 1728)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4391, file: !94, line: 736, baseType: !4639, size: 128, offset: 4288)
!4639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4640)
!4640 = !{!4641, !4645}
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4639, file: !94, line: 531, baseType: !4642, size: 64)
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4644, line: 13, flags: DIFlagFwdDecl)
!4644 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4639, file: !94, line: 532, baseType: !4646, size: 64, offset: 64)
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4647 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4391, file: !94, line: 738, baseType: !4649, size: 64, offset: 4416)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4651)
!4651 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4391, file: !94, line: 740, baseType: !4653, size: 64, offset: 4480)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4391, file: !94, line: 741, baseType: !484, size: 64, offset: 4544)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4391, file: !94, line: 746, baseType: !484, size: 64, offset: 4608)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4391, file: !94, line: 747, baseType: !4657, size: 64, offset: 4672)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4659)
!4659 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4391, file: !94, line: 749, baseType: !4661, size: 64, offset: 4736)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4663)
!4663 = !{!4664, !4665, !4666}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4662, file: !94, line: 433, baseType: !7, size: 32)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4662, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4662, file: !94, line: 435, baseType: !423, size: 64, offset: 64)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4391, file: !94, line: 751, baseType: !340, size: 128, offset: 4800)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4391, file: !94, line: 762, baseType: !4669, size: 64, offset: 4928)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4391, file: !94, line: 770, baseType: !4672, offset: 4992)
!4672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4673, line: 5, elements: !760)
!4673 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4391, file: !94, line: 772, baseType: !4675, size: 64, offset: 4992)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4677, line: 18, flags: DIFlagFwdDecl)
!4677 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4391, file: !94, line: 773, baseType: !4679, size: 64, offset: 5056)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4456, line: 22, flags: DIFlagFwdDecl)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4391, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4391, file: !94, line: 778, baseType: !1255, size: 32, offset: 5152)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4391, file: !94, line: 779, baseType: !426, size: 32, offset: 5184)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4391, file: !94, line: 781, baseType: !749, size: 32, offset: 5216)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4391, file: !94, line: 782, baseType: !340, size: 128, offset: 5248)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4391, file: !94, line: 784, baseType: !4687, size: 64, offset: 5376)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4689)
!4689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4690, line: 52, size: 768, elements: !4691)
!4690 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4691 = !{!4692, !4693, !4694, !4695, !4696, !4700, !4704, !4705, !4706, !4707, !4711, !4715}
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4689, file: !4690, line: 53, baseType: !1029, size: 64)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4689, file: !4690, line: 55, baseType: !1513, size: 64, offset: 64)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4689, file: !4690, line: 56, baseType: !1513, size: 64, offset: 128)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4689, file: !4690, line: 58, baseType: !4407, size: 64, offset: 192)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4689, file: !4690, line: 59, baseType: !4697, size: 64, offset: 256)
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = !DISubroutineType(types: !4699)
!4699 = !{!1039, !4410, !4416}
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4689, file: !4690, line: 61, baseType: !4701, size: 64, offset: 320)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{null, !4687}
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4689, file: !4690, line: 62, baseType: !4418, size: 64, offset: 384)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4689, file: !4690, line: 64, baseType: !4427, size: 64, offset: 448)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4689, file: !4690, line: 66, baseType: !2056, size: 64, offset: 512)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4689, file: !4690, line: 67, baseType: !4708, size: 64, offset: 576)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{!2073, !4410}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4689, file: !4690, line: 69, baseType: !4712, size: 64, offset: 640)
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = !DISubroutineType(types: !4714)
!4714 = !{null, !4410, !2090, !2091}
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4689, file: !4690, line: 71, baseType: !4422, size: 64, offset: 704)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4391, file: !94, line: 785, baseType: !1513, size: 64, offset: 5440)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4391, file: !94, line: 787, baseType: !4418, size: 64, offset: 5504)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4391, file: !94, line: 788, baseType: !4719, size: 64, offset: 5568)
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4720, size: 64)
!4720 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4391, file: !94, line: 789, baseType: !4722, size: 64, offset: 5632)
!4722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4723, size: 64)
!4723 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4391, file: !94, line: 791, baseType: !4725, size: 64, offset: 5696)
!4725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4726, size: 64)
!4726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4727)
!4727 = !{!4728, !4729, !4730, !4731, !4732}
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4726, file: !94, line: 598, baseType: !116, size: 32)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4726, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4726, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4726, file: !94, line: 601, baseType: !1026, size: 8, offset: 96)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4726, file: !94, line: 602, baseType: !1026, size: 8, offset: 104)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4391, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4391, file: !94, line: 795, baseType: !1026, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4391, file: !94, line: 796, baseType: !1026, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4391, file: !94, line: 797, baseType: !1026, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4391, file: !94, line: 798, baseType: !1026, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4391, file: !94, line: 799, baseType: !1026, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !4385, file: !194, line: 73, baseType: !4740, size: 256, offset: 128)
!4740 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4385, file: !194, line: 66, size: 256, elements: !4741)
!4741 = !{!4742, !4743, !4744}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4740, file: !194, line: 68, baseType: !340, size: 128)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "final_kfree", scope: !4740, file: !194, line: 70, baseType: !326, size: 64, offset: 128)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4740, file: !194, line: 72, baseType: !749, size: 32, offset: 192)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4385, file: !194, line: 76, baseType: !4746, size: 64, offset: 384)
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4748)
!4748 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_driver", file: !4749, line: 42, flags: DIFlagFwdDecl)
!4749 = !DIFile(filename: "./include/drm/drm_legacy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0a48cbf735602b48f7f8b8e0cbee53a7")
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private", scope: !4385, file: !194, line: 88, baseType: !326, size: 64, offset: 448)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4385, file: !194, line: 98, baseType: !4752, size: 64, offset: 512)
!4752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4753, size: 64)
!4753 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_minor", file: !194, line: 13, flags: DIFlagFwdDecl)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !4385, file: !194, line: 107, baseType: !4752, size: 64, offset: 576)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !4385, file: !194, line: 110, baseType: !4752, size: 64, offset: 640)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4385, file: !194, line: 117, baseType: !1026, size: 8, offset: 704)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !4385, file: !194, line: 125, baseType: !4758, size: 64, offset: 768)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_master", file: !4760, line: 65, size: 1280, elements: !4761)
!4760 = !DIFile(filename: "./include/drm/drm_auth.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10e944a391afc2612335b30db18d0dee")
!4761 = !{!4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773}
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4759, file: !4760, line: 66, baseType: !2227, size: 32)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4759, file: !4760, line: 67, baseType: !4384, size: 64, offset: 64)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !4759, file: !4760, line: 72, baseType: !1039, size: 64, offset: 128)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "unique_len", scope: !4759, file: !4760, line: 77, baseType: !109, size: 32, offset: 192)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "magic_map", scope: !4759, file: !4760, line: 82, baseType: !859, size: 192, offset: 256)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !4759, file: !4760, line: 83, baseType: !326, size: 64, offset: 448)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "lessor", scope: !4759, file: !4760, line: 99, baseType: !4758, size: 64, offset: 512)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_id", scope: !4759, file: !4760, line: 107, baseType: !109, size: 32, offset: 576)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_list", scope: !4759, file: !4760, line: 116, baseType: !340, size: 128, offset: 640)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "lessees", scope: !4759, file: !4760, line: 128, baseType: !340, size: 128, offset: 768)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "leases", scope: !4759, file: !4760, line: 139, baseType: !859, size: 192, offset: 896)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_idr", scope: !4759, file: !4760, line: 147, baseType: !859, size: 192, offset: 1088)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !4385, file: !194, line: 135, baseType: !426, size: 32, offset: 832)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "unplugged", scope: !4385, file: !194, line: 143, baseType: !1026, size: 8, offset: 864)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "anon_inode", scope: !4385, file: !194, line: 146, baseType: !1180, size: 64, offset: 896)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !4385, file: !194, line: 149, baseType: !1039, size: 64, offset: 960)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "struct_mutex", scope: !4385, file: !194, line: 159, baseType: !354, size: 256, offset: 1024)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "master_mutex", scope: !4385, file: !194, line: 166, baseType: !354, size: 256, offset: 1280)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "open_count", scope: !4385, file: !194, line: 174, baseType: !383, size: 32, offset: 1536)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_mutex", scope: !4385, file: !194, line: 177, baseType: !354, size: 256, offset: 1600)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !4385, file: !194, line: 183, baseType: !340, size: 128, offset: 1856)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_internal", scope: !4385, file: !194, line: 191, baseType: !340, size: 128, offset: 1984)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist_mutex", scope: !4385, file: !194, line: 198, baseType: !354, size: 256, offset: 2112)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist", scope: !4385, file: !194, line: 205, baseType: !340, size: 128, offset: 2368)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_disable_immediate", scope: !4385, file: !194, line: 220, baseType: !1026, size: 8, offset: 2496)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "vblank", scope: !4385, file: !194, line: 230, baseType: !4788, size: 64, offset: 2560)
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vblank_crtc", file: !194, line: 15, flags: DIFlagFwdDecl)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_time_lock", scope: !4385, file: !194, line: 237, baseType: !749, size: 32, offset: 2624)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "vbl_lock", scope: !4385, file: !194, line: 242, baseType: !749, size: 32, offset: 2656)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !4385, file: !194, line: 265, baseType: !426, size: 32, offset: 2688)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_event_list", scope: !4385, file: !194, line: 268, baseType: !340, size: 128, offset: 2752)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !4385, file: !194, line: 276, baseType: !749, size: 32, offset: 2880)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtcs", scope: !4385, file: !194, line: 279, baseType: !7, size: 32, offset: 2912)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "mode_config", scope: !4385, file: !194, line: 282, baseType: !4797, size: 8704, offset: 2944)
!4797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config", file: !4798, line: 375, size: 8704, elements: !4799)
!4798 = !DIFile(filename: "./include/drm/drm_mode_config.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3fe2bd3e9391801689324df8a16c9607")
!4799 = !{!4800, !4801, !4802, !4815, !4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5047, !5048, !5049, !5050, !5051}
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4797, file: !4798, line: 386, baseType: !354, size: 256)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "connection_mutex", scope: !4797, file: !4798, line: 396, baseType: !346, size: 448, offset: 256)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !4797, file: !4798, line: 406, baseType: !4803, size: 64, offset: 704)
!4803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4804, size: 64)
!4804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_acquire_ctx", file: !347, line: 46, size: 512, elements: !4805)
!4805 = !{!4806, !4807, !4809, !4812, !4813, !4814}
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "ww_ctx", scope: !4804, file: !347, line: 48, baseType: !411, size: 192)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !4804, file: !347, line: 55, baseType: !4808, size: 64, offset: 192)
!4808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "stack_depot", scope: !4804, file: !347, line: 61, baseType: !4810, size: 32, offset: 256)
!4810 = !DIDerivedType(tag: DW_TAG_typedef, name: "depot_stack_handle_t", file: !4811, line: 27, baseType: !426)
!4811 = !DIFile(filename: "./include/linux/stackdepot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "787fdf2c1a48da25b4d7ecc2db077a40")
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !4804, file: !347, line: 66, baseType: !340, size: 128, offset: 320)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_only", scope: !4804, file: !347, line: 71, baseType: !1026, size: 8, offset: 448)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !4804, file: !347, line: 74, baseType: !1026, size: 8, offset: 456)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "idr_mutex", scope: !4797, file: !4798, line: 414, baseType: !354, size: 256, offset: 768)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !4797, file: !4798, line: 422, baseType: !859, size: 192, offset: 1024)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "tile_idr", scope: !4797, file: !4798, line: 430, baseType: !859, size: 192, offset: 1216)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "fb_lock", scope: !4797, file: !4798, line: 433, baseType: !354, size: 256, offset: 1408)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "num_fb", scope: !4797, file: !4798, line: 435, baseType: !109, size: 32, offset: 1664)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "fb_list", scope: !4797, file: !4798, line: 437, baseType: !340, size: 128, offset: 1728)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list_lock", scope: !4797, file: !4798, line: 443, baseType: !749, size: 32, offset: 1856)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !4797, file: !4798, line: 448, baseType: !109, size: 32, offset: 1888)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "connector_ida", scope: !4797, file: !4798, line: 452, baseType: !4824, size: 128, offset: 1920)
!4824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !860, line: 246, size: 128, elements: !4825)
!4825 = !{!4826}
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4824, file: !860, line: 247, baseType: !863, size: 128)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list", scope: !4797, file: !4798, line: 460, baseType: !340, size: 128, offset: 2048)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_list", scope: !4797, file: !4798, line: 470, baseType: !4143, size: 64, offset: 2176)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_work", scope: !4797, file: !4798, line: 474, baseType: !2493, size: 256, offset: 2240)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "num_encoder", scope: !4797, file: !4798, line: 482, baseType: !109, size: 32, offset: 2496)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_list", scope: !4797, file: !4798, line: 490, baseType: !340, size: 128, offset: 2560)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "num_total_plane", scope: !4797, file: !4798, line: 499, baseType: !109, size: 32, offset: 2688)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "plane_list", scope: !4797, file: !4798, line: 506, baseType: !340, size: 128, offset: 2752)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtc", scope: !4797, file: !4798, line: 514, baseType: !109, size: 32, offset: 2880)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_list", scope: !4797, file: !4798, line: 521, baseType: !340, size: 128, offset: 2944)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "property_list", scope: !4797, file: !4798, line: 530, baseType: !340, size: 128, offset: 3072)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "privobj_list", scope: !4797, file: !4798, line: 539, baseType: !340, size: 128, offset: 3200)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !4797, file: !4798, line: 541, baseType: !109, size: 32, offset: 3328)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !4797, file: !4798, line: 541, baseType: !109, size: 32, offset: 3360)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !4797, file: !4798, line: 542, baseType: !109, size: 32, offset: 3392)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !4797, file: !4798, line: 542, baseType: !109, size: 32, offset: 3424)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4797, file: !4798, line: 543, baseType: !4843, size: 64, offset: 3456)
!4843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4844, size: 64)
!4844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4845)
!4845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_funcs", file: !4798, line: 47, size: 576, elements: !4846)
!4846 = !{!4847, !4871, !4878, !4882, !4924, !4928, !4932, !4936, !4940}
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "fb_create", scope: !4845, file: !4798, line: 83, baseType: !4848, size: 64)
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4849, size: 64)
!4849 = !DISubroutineType(types: !4850)
!4850 = !{!4851, !4384, !4853, !4856}
!4851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4852, size: 64)
!4852 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer", file: !4798, line: 83, flags: DIFlagFwdDecl)
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4854 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !4855, line: 9, flags: DIFlagFwdDecl)
!4855 = !DIFile(filename: "./include/drm/drm_lease.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f6d675704e04807ddd52843c3d74a46")
!4856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4857, size: 64)
!4857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4858)
!4858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_fb_cmd2", file: !229, line: 703, size: 832, elements: !4859)
!4859 = !{!4860, !4861, !4862, !4863, !4864, !4865, !4867, !4868, !4869}
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "fb_id", scope: !4858, file: !229, line: 705, baseType: !427, size: 32)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4858, file: !229, line: 707, baseType: !427, size: 32, offset: 32)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4858, file: !229, line: 709, baseType: !427, size: 32, offset: 64)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !4858, file: !229, line: 714, baseType: !427, size: 32, offset: 96)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4858, file: !229, line: 719, baseType: !427, size: 32, offset: 128)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !4858, file: !229, line: 725, baseType: !4866, size: 128, offset: 160)
!4866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 128, elements: !837)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !4858, file: !229, line: 727, baseType: !4866, size: 128, offset: 288)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !4858, file: !229, line: 729, baseType: !4866, size: 128, offset: 416)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !4858, file: !229, line: 735, baseType: !4870, size: 256, offset: 576)
!4870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 256, elements: !837)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "get_format_info", scope: !4845, file: !4798, line: 98, baseType: !4872, size: 64, offset: 64)
!4872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4873, size: 64)
!4873 = !DISubroutineType(types: !4874)
!4874 = !{!4875, !4856}
!4875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4876, size: 64)
!4876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4877)
!4877 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_format_info", file: !4798, line: 38, flags: DIFlagFwdDecl)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_changed", scope: !4845, file: !4798, line: 114, baseType: !4879, size: 64, offset: 128)
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4880, size: 64)
!4880 = !DISubroutineType(types: !4881)
!4881 = !{null, !4384}
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !4845, file: !4798, line: 124, baseType: !4883, size: 64, offset: 192)
!4883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4884, size: 64)
!4884 = !DISubroutineType(types: !4885)
!4885 = !{!141, !4384, !4886}
!4886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4887, size: 64)
!4887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4888)
!4888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_mode", file: !142, line: 252, size: 960, elements: !4889)
!4889 = !{!4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923}
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !4888, file: !142, line: 258, baseType: !109, size: 32)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "hdisplay", scope: !4888, file: !142, line: 259, baseType: !399, size: 16, offset: 32)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_start", scope: !4888, file: !142, line: 260, baseType: !399, size: 16, offset: 48)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_end", scope: !4888, file: !142, line: 261, baseType: !399, size: 16, offset: 64)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "htotal", scope: !4888, file: !142, line: 262, baseType: !399, size: 16, offset: 80)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "hskew", scope: !4888, file: !142, line: 263, baseType: !399, size: 16, offset: 96)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "vdisplay", scope: !4888, file: !142, line: 264, baseType: !399, size: 16, offset: 112)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_start", scope: !4888, file: !142, line: 265, baseType: !399, size: 16, offset: 128)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_end", scope: !4888, file: !142, line: 266, baseType: !399, size: 16, offset: 144)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "vtotal", scope: !4888, file: !142, line: 267, baseType: !399, size: 16, offset: 160)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "vscan", scope: !4888, file: !142, line: 268, baseType: !399, size: 16, offset: 176)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4888, file: !142, line: 303, baseType: !426, size: 32, offset: 192)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_clock", scope: !4888, file: !142, line: 320, baseType: !109, size: 32, offset: 224)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hdisplay", scope: !4888, file: !142, line: 321, baseType: !399, size: 16, offset: 256)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_start", scope: !4888, file: !142, line: 322, baseType: !399, size: 16, offset: 272)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_end", scope: !4888, file: !142, line: 323, baseType: !399, size: 16, offset: 288)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_start", scope: !4888, file: !142, line: 324, baseType: !399, size: 16, offset: 304)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_end", scope: !4888, file: !142, line: 325, baseType: !399, size: 16, offset: 320)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_htotal", scope: !4888, file: !142, line: 326, baseType: !399, size: 16, offset: 336)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hskew", scope: !4888, file: !142, line: 327, baseType: !399, size: 16, offset: 352)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vdisplay", scope: !4888, file: !142, line: 328, baseType: !399, size: 16, offset: 368)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_start", scope: !4888, file: !142, line: 329, baseType: !399, size: 16, offset: 384)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_end", scope: !4888, file: !142, line: 330, baseType: !399, size: 16, offset: 400)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_start", scope: !4888, file: !142, line: 331, baseType: !399, size: 16, offset: 416)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_end", scope: !4888, file: !142, line: 332, baseType: !399, size: 16, offset: 432)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vtotal", scope: !4888, file: !142, line: 333, baseType: !399, size: 16, offset: 448)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !4888, file: !142, line: 341, baseType: !399, size: 16, offset: 464)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !4888, file: !142, line: 349, baseType: !399, size: 16, offset: 480)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4888, file: !142, line: 378, baseType: !391, size: 8, offset: 496)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "expose_to_userspace", scope: !4888, file: !142, line: 389, baseType: !1026, size: 8, offset: 504)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4888, file: !142, line: 396, baseType: !340, size: 128, offset: 512)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4888, file: !142, line: 403, baseType: !2979, size: 256, offset: 640)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4888, file: !142, line: 411, baseType: !141, size: 32, offset: 896)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !4888, file: !142, line: 418, baseType: !184, size: 32, offset: 928)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !4845, file: !4798, line: 201, baseType: !4925, size: 64, offset: 256)
!4925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4926, size: 64)
!4926 = !DISubroutineType(types: !4927)
!4927 = !{!109, !4384, !4379}
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !4845, file: !4798, line: 283, baseType: !4929, size: 64, offset: 320)
!4929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4930, size: 64)
!4930 = !DISubroutineType(types: !4931)
!4931 = !{!109, !4384, !4379, !1026}
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_alloc", scope: !4845, file: !4798, line: 302, baseType: !4933, size: 64, offset: 384)
!4933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4934, size: 64)
!4934 = !DISubroutineType(types: !4935)
!4935 = !{!4379, !4384}
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_clear", scope: !4845, file: !4798, line: 323, baseType: !4937, size: 64, offset: 448)
!4937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4938, size: 64)
!4938 = !DISubroutineType(types: !4939)
!4939 = !{null, !4379}
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_free", scope: !4845, file: !4798, line: 338, baseType: !4937, size: 64, offset: 512)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "poll_enabled", scope: !4797, file: !4798, line: 546, baseType: !1026, size: 8, offset: 3520)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "poll_running", scope: !4797, file: !4798, line: 547, baseType: !1026, size: 8, offset: 3528)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_event", scope: !4797, file: !4798, line: 548, baseType: !1026, size: 8, offset: 3536)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_work", scope: !4797, file: !4798, line: 549, baseType: !2549, size: 704, offset: 3584)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "blob_lock", scope: !4797, file: !4798, line: 557, baseType: !354, size: 256, offset: 4288)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "property_blob_list", scope: !4797, file: !4798, line: 565, baseType: !340, size: 128, offset: 4544)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "edid_property", scope: !4797, file: !4798, line: 573, baseType: !4948, size: 64, offset: 4672)
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!4949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property", file: !4950, line: 80, size: 960, elements: !4951)
!4950 = !DIFile(filename: "./include/drm/drm_property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "320ae008033d09c99df86eb5eb8877c7")
!4951 = !{!4952, !4953, !4977, !4978, !4979, !4980, !4982, !4983}
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4949, file: !4950, line: 84, baseType: !340, size: 128)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4949, file: !4950, line: 89, baseType: !4954, size: 256, offset: 128)
!4954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_object", file: !4955, line: 55, size: 256, elements: !4956)
!4955 = !DIFile(filename: "./include/drm/drm_mode_object.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ffaf2d776d1d6cf92a08dd44b890967f")
!4956 = !{!4957, !4958, !4959, !4971, !4972}
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4954, file: !4955, line: 56, baseType: !990, size: 32)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4954, file: !4955, line: 57, baseType: !990, size: 32, offset: 32)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4954, file: !4955, line: 58, baseType: !4960, size: 64, offset: 64)
!4960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4961, size: 64)
!4961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_object_properties", file: !4955, line: 67, size: 3136, elements: !4962)
!4962 = !{!4963, !4964, !4968}
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4961, file: !4955, line: 73, baseType: !109, size: 32)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4961, file: !4955, line: 82, baseType: !4965, size: 1536, offset: 64)
!4965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4948, size: 1536, elements: !4966)
!4966 = !{!4967}
!4967 = !DISubrange(count: 24)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !4961, file: !4955, line: 106, baseType: !4969, size: 1536, offset: 1600)
!4969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4970, size: 1536, elements: !4966)
!4970 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !328, line: 113, baseType: !484)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4954, file: !4955, line: 59, baseType: !2227, size: 32, offset: 128)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "free_cb", scope: !4954, file: !4955, line: 60, baseType: !4973, size: 64, offset: 192)
!4973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4974, size: 64)
!4974 = !DISubroutineType(types: !4975)
!4975 = !{null, !4976}
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4949, file: !4950, line: 166, baseType: !990, size: 32, offset: 384)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4949, file: !4950, line: 171, baseType: !2979, size: 256, offset: 416)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "num_values", scope: !4949, file: !4950, line: 176, baseType: !990, size: 32, offset: 672)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !4949, file: !4950, line: 184, baseType: !4981, size: 64, offset: 704)
!4981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4970, size: 64)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4949, file: !4950, line: 189, baseType: !4384, size: 64, offset: 768)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "enum_list", scope: !4949, file: !4950, line: 197, baseType: !340, size: 128, offset: 832)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "dpms_property", scope: !4797, file: !4798, line: 578, baseType: !4948, size: 64, offset: 4736)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "path_property", scope: !4797, file: !4798, line: 583, baseType: !4948, size: 64, offset: 4800)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "tile_property", scope: !4797, file: !4798, line: 589, baseType: !4948, size: 64, offset: 4864)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "link_status_property", scope: !4797, file: !4798, line: 594, baseType: !4948, size: 64, offset: 4928)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "plane_type_property", scope: !4797, file: !4798, line: 599, baseType: !4948, size: 64, offset: 4992)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_x", scope: !4797, file: !4798, line: 604, baseType: !4948, size: 64, offset: 5056)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_y", scope: !4797, file: !4798, line: 609, baseType: !4948, size: 64, offset: 5120)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_w", scope: !4797, file: !4798, line: 614, baseType: !4948, size: 64, offset: 5184)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_h", scope: !4797, file: !4798, line: 619, baseType: !4948, size: 64, offset: 5248)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_x", scope: !4797, file: !4798, line: 624, baseType: !4948, size: 64, offset: 5312)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_y", scope: !4797, file: !4798, line: 629, baseType: !4948, size: 64, offset: 5376)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_w", scope: !4797, file: !4798, line: 634, baseType: !4948, size: 64, offset: 5440)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_h", scope: !4797, file: !4798, line: 639, baseType: !4948, size: 64, offset: 5504)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_id", scope: !4797, file: !4798, line: 644, baseType: !4948, size: 64, offset: 5568)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "prop_in_fence_fd", scope: !4797, file: !4798, line: 649, baseType: !4948, size: 64, offset: 5632)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "prop_out_fence_ptr", scope: !4797, file: !4798, line: 655, baseType: !4948, size: 64, offset: 5696)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_id", scope: !4797, file: !4798, line: 660, baseType: !4948, size: 64, offset: 5760)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_damage_clips", scope: !4797, file: !4798, line: 669, baseType: !4948, size: 64, offset: 5824)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "prop_active", scope: !4797, file: !4798, line: 675, baseType: !4948, size: 64, offset: 5888)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "prop_mode_id", scope: !4797, file: !4798, line: 681, baseType: !4948, size: 64, offset: 5952)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "prop_vrr_enabled", scope: !4797, file: !4798, line: 686, baseType: !4948, size: 64, offset: 6016)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_subconnector_property", scope: !4797, file: !4798, line: 692, baseType: !4948, size: 64, offset: 6080)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_select_subconnector_property", scope: !4797, file: !4798, line: 697, baseType: !4948, size: 64, offset: 6144)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "dp_subconnector_property", scope: !4797, file: !4798, line: 703, baseType: !4948, size: 64, offset: 6208)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "tv_subconnector_property", scope: !4797, file: !4798, line: 709, baseType: !4948, size: 64, offset: 6272)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "tv_select_subconnector_property", scope: !4797, file: !4798, line: 714, baseType: !4948, size: 64, offset: 6336)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_tv_mode_property", scope: !4797, file: !4798, line: 722, baseType: !4948, size: 64, offset: 6400)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_property", scope: !4797, file: !4798, line: 728, baseType: !4948, size: 64, offset: 6464)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "tv_left_margin_property", scope: !4797, file: !4798, line: 734, baseType: !4948, size: 64, offset: 6528)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "tv_right_margin_property", scope: !4797, file: !4798, line: 739, baseType: !4948, size: 64, offset: 6592)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "tv_top_margin_property", scope: !4797, file: !4798, line: 744, baseType: !4948, size: 64, offset: 6656)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "tv_bottom_margin_property", scope: !4797, file: !4798, line: 749, baseType: !4948, size: 64, offset: 6720)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "tv_brightness_property", scope: !4797, file: !4798, line: 754, baseType: !4948, size: 64, offset: 6784)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "tv_contrast_property", scope: !4797, file: !4798, line: 759, baseType: !4948, size: 64, offset: 6848)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "tv_flicker_reduction_property", scope: !4797, file: !4798, line: 764, baseType: !4948, size: 64, offset: 6912)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "tv_overscan_property", scope: !4797, file: !4798, line: 769, baseType: !4948, size: 64, offset: 6976)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "tv_saturation_property", scope: !4797, file: !4798, line: 774, baseType: !4948, size: 64, offset: 7040)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "tv_hue_property", scope: !4797, file: !4798, line: 778, baseType: !4948, size: 64, offset: 7104)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !4797, file: !4798, line: 784, baseType: !4948, size: 64, offset: 7168)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_property", scope: !4797, file: !4798, line: 789, baseType: !4948, size: 64, offset: 7232)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_property", scope: !4797, file: !4798, line: 794, baseType: !4948, size: 64, offset: 7296)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_property", scope: !4797, file: !4798, line: 799, baseType: !4948, size: 64, offset: 7360)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_size_property", scope: !4797, file: !4798, line: 804, baseType: !4948, size: 64, offset: 7424)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "ctm_property", scope: !4797, file: !4798, line: 810, baseType: !4948, size: 64, offset: 7488)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_property", scope: !4797, file: !4798, line: 816, baseType: !4948, size: 64, offset: 7552)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_size_property", scope: !4797, file: !4798, line: 821, baseType: !4948, size: 64, offset: 7616)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_x_property", scope: !4797, file: !4798, line: 827, baseType: !4948, size: 64, offset: 7680)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_y_property", scope: !4797, file: !4798, line: 832, baseType: !4948, size: 64, offset: 7744)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop_property", scope: !4797, file: !4798, line: 839, baseType: !4948, size: 64, offset: 7808)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation_property", scope: !4797, file: !4798, line: 846, baseType: !4948, size: 64, offset: 7872)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_fb_id_property", scope: !4797, file: !4798, line: 853, baseType: !4948, size: 64, offset: 7936)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_pixel_formats_property", scope: !4797, file: !4798, line: 861, baseType: !4948, size: 64, offset: 8000)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_out_fence_ptr_property", scope: !4797, file: !4798, line: 869, baseType: !4948, size: 64, offset: 8064)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata_property", scope: !4797, file: !4798, line: 876, baseType: !4948, size: 64, offset: 8128)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection_property", scope: !4797, file: !4798, line: 882, baseType: !4948, size: 64, offset: 8192)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type_property", scope: !4797, file: !4798, line: 888, baseType: !4948, size: 64, offset: 8256)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_depth", scope: !4797, file: !4798, line: 891, baseType: !990, size: 32, offset: 8320)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow", scope: !4797, file: !4798, line: 891, baseType: !990, size: 32, offset: 8352)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_xbgr_30bpp", scope: !4797, file: !4798, line: 899, baseType: !1026, size: 8, offset: 8384)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_host_byte_order", scope: !4797, file: !4798, line: 913, baseType: !1026, size: 8, offset: 8392)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "async_page_flip", scope: !4797, file: !4798, line: 919, baseType: !1026, size: 8, offset: 8400)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "fb_modifiers_not_supported", scope: !4797, file: !4798, line: 929, baseType: !1026, size: 8, offset: 8408)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "normalize_zpos", scope: !4797, file: !4798, line: 937, baseType: !1026, size: 8, offset: 8416)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers_property", scope: !4797, file: !4798, line: 943, baseType: !4948, size: 64, offset: 8448)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_width", scope: !4797, file: !4798, line: 946, baseType: !990, size: 32, offset: 8512)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_height", scope: !4797, file: !4798, line: 946, baseType: !990, size: 32, offset: 8544)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_state", scope: !4797, file: !4798, line: 955, baseType: !4379, size: 64, offset: 8576)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4797, file: !4798, line: 957, baseType: !5052, size: 64, offset: 8640)
!5052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5053, size: 64)
!5053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5054)
!5054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_helper_funcs", file: !294, line: 1454, size: 128, elements: !5055)
!5055 = !{!5056, !5057}
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit_tail", scope: !5054, file: !294, line: 1490, baseType: !4937, size: 64)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit_setup", scope: !5054, file: !294, line: 1511, baseType: !5058, size: 64, offset: 64)
!5058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5059, size: 64)
!5059 = !DISubroutineType(types: !5060)
!5060 = !{!109, !4379}
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_lock", scope: !4385, file: !194, line: 285, baseType: !354, size: 256, offset: 11648)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_idr", scope: !4385, file: !194, line: 288, baseType: !859, size: 192, offset: 11904)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "vma_offset_manager", scope: !4385, file: !194, line: 291, baseType: !5064, size: 64, offset: 12096)
!5064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5065, size: 64)
!5065 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !194, line: 16, flags: DIFlagFwdDecl)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "vram_mm", scope: !4385, file: !194, line: 294, baseType: !5067, size: 64, offset: 12160)
!5067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5068, size: 64)
!5068 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vram_mm", file: !194, line: 17, flags: DIFlagFwdDecl)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "switch_power_state", scope: !4385, file: !194, line: 304, baseType: !193, size: 32, offset: 12224)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "fb_helper", scope: !4385, file: !194, line: 312, baseType: !5071, size: 64, offset: 12288)
!5071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5072, size: 64)
!5072 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_fb_helper", file: !194, line: 18, flags: DIFlagFwdDecl)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !4385, file: !194, line: 319, baseType: !354, size: 256, offset: 12352)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !4385, file: !194, line: 327, baseType: !340, size: 128, offset: 12608)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "allow_modeset", scope: !4380, file: !337, line: 378, baseType: !1026, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cursor_update", scope: !4380, file: !337, line: 390, baseType: !1026, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "async_update", scope: !4380, file: !337, line: 391, baseType: !1026, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "duplicated", scope: !4380, file: !337, line: 400, baseType: !1026, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "planes", scope: !4380, file: !337, line: 401, baseType: !5080, size: 64, offset: 192)
!5080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5081, size: 64)
!5081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_planes_state", file: !337, line: 160, size: 256, elements: !5082)
!5082 = !{!5083, !5964, !5965, !5966}
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5081, file: !337, line: 161, baseType: !5084, size: 64)
!5084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5085, size: 64)
!5085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane", file: !220, line: 603, size: 5312, elements: !5086)
!5086 = !{!5087, !5088, !5089, !5090, !5091, !5092, !5093, !5095, !5096, !5097, !5098, !5099, !5835, !5836, !5837, !5929, !5930, !5931, !5932, !5956, !5957, !5958, !5959, !5960, !5961, !5962, !5963}
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5085, file: !220, line: 605, baseType: !4384, size: 64)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5085, file: !220, line: 614, baseType: !340, size: 128, offset: 64)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5085, file: !220, line: 617, baseType: !1039, size: 64, offset: 192)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5085, file: !220, line: 628, baseType: !346, size: 448, offset: 256)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5085, file: !220, line: 631, baseType: !4954, size: 256, offset: 704)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "possible_crtcs", scope: !5085, file: !220, line: 637, baseType: !990, size: 32, offset: 960)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "format_types", scope: !5085, file: !220, line: 639, baseType: !5094, size: 64, offset: 1024)
!5094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "format_count", scope: !5085, file: !220, line: 641, baseType: !7, size: 32, offset: 1088)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "format_default", scope: !5085, file: !220, line: 646, baseType: !1026, size: 8, offset: 1120)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers", scope: !5085, file: !220, line: 649, baseType: !4981, size: 64, offset: 1152)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "modifier_count", scope: !5085, file: !220, line: 651, baseType: !7, size: 32, offset: 1216)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5085, file: !220, line: 660, baseType: !5100, size: 64, offset: 1280)
!5100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5101, size: 64)
!5101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc", file: !5102, line: 932, size: 8064, elements: !5103)
!5102 = !DIFile(filename: "./include/drm/drm_crtc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99ea98da3699d3be12a3062031f96ca9")
!5103 = !{!5104, !5105, !5106, !5107, !5108, !5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5749, !5750, !5752, !5800, !5801, !5802, !5803, !5804, !5805, !5806, !5828, !5829, !5830, !5831, !5832}
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5101, file: !5102, line: 934, baseType: !4384, size: 64)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5101, file: !5102, line: 936, baseType: !4675, size: 64, offset: 64)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5101, file: !5102, line: 944, baseType: !340, size: 128, offset: 128)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5101, file: !5102, line: 947, baseType: !1039, size: 64, offset: 256)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5101, file: !5102, line: 959, baseType: !346, size: 448, offset: 320)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5101, file: !5102, line: 962, baseType: !4954, size: 256, offset: 768)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !5101, file: !5102, line: 971, baseType: !5084, size: 64, offset: 1024)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "cursor", scope: !5101, file: !5102, line: 980, baseType: !5084, size: 64, offset: 1088)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5101, file: !5102, line: 986, baseType: !7, size: 32, offset: 1152)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_x", scope: !5101, file: !5102, line: 995, baseType: !109, size: 32, offset: 1184)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_y", scope: !5101, file: !5102, line: 1003, baseType: !109, size: 32, offset: 1216)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5101, file: !5102, line: 1013, baseType: !1026, size: 8, offset: 1248)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5101, file: !5102, line: 1023, baseType: !4888, size: 960, offset: 1280)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "hwmode", scope: !5101, file: !5102, line: 1039, baseType: !4888, size: 960, offset: 2240)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !5101, file: !5102, line: 1048, baseType: !109, size: 32, offset: 3200)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !5101, file: !5102, line: 1056, baseType: !109, size: 32, offset: 3232)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5101, file: !5102, line: 1059, baseType: !5121, size: 64, offset: 3264)
!5121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5122, size: 64)
!5122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5123)
!5123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_funcs", file: !5102, line: 402, size: 1536, elements: !5124)
!5124 = !{!5125, !5129, !5133, !5137, !5141, !5146, !5147, !5684, !5688, !5692, !5696, !5700, !5704, !5708, !5714, !5718, !5719, !5723, !5728, !5734, !5738, !5742, !5743, !5744}
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5123, file: !5102, line: 413, baseType: !5126, size: 64)
!5126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5127, size: 64)
!5127 = !DISubroutineType(types: !5128)
!5128 = !{null, !5100}
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_set", scope: !5123, file: !5102, line: 436, baseType: !5130, size: 64, offset: 64)
!5130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5131, size: 64)
!5131 = !DISubroutineType(types: !5132)
!5132 = !{!109, !5100, !4853, !990, !990, !990}
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_set2", scope: !5123, file: !5102, line: 458, baseType: !5134, size: 64, offset: 128)
!5134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5135, size: 64)
!5135 = !DISubroutineType(types: !5136)
!5136 = !{!109, !5100, !4853, !990, !990, !990, !957, !957}
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_move", scope: !5123, file: !5102, line: 478, baseType: !5138, size: 64, offset: 192)
!5138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5139, size: 64)
!5139 = !DISubroutineType(types: !5140)
!5140 = !{!109, !5100, !109, !109}
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_set", scope: !5123, file: !5102, line: 493, baseType: !5142, size: 64, offset: 256)
!5142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5143, size: 64)
!5143 = !DISubroutineType(types: !5144)
!5144 = !{!109, !5100, !5145, !5145, !5145, !990, !4803}
!5145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5123, file: !5102, line: 504, baseType: !5126, size: 64, offset: 320)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !5123, file: !5102, line: 520, baseType: !5148, size: 64, offset: 384)
!5148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5149, size: 64)
!5149 = !DISubroutineType(types: !5150)
!5150 = !{!109, !5151, !4803}
!5151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5152, size: 64)
!5152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_set", file: !5102, line: 1193, size: 384, elements: !5153)
!5153 = !{!5154, !5155, !5156, !5158, !5159, !5160, !5683}
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !5152, file: !5102, line: 1194, baseType: !4851, size: 64)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5152, file: !5102, line: 1195, baseType: !5100, size: 64, offset: 64)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5152, file: !5102, line: 1196, baseType: !5157, size: 64, offset: 128)
!5157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4888, size: 64)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !5152, file: !5102, line: 1198, baseType: !990, size: 32, offset: 192)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !5152, file: !5102, line: 1199, baseType: !990, size: 32, offset: 224)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "connectors", scope: !5152, file: !5102, line: 1201, baseType: !5161, size: 64, offset: 256)
!5161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5162, size: 64)
!5162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5163, size: 64)
!5163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector", file: !201, line: 1494, size: 10880, elements: !5164)
!5164 = !{!5165, !5166, !5167, !5180, !5181, !5182, !5183, !5184, !5185, !5186, !5187, !5188, !5189, !5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197, !5268, !5524, !5525, !5526, !5527, !5528, !5529, !5530, !5531, !5534, !5546, !5547, !5548, !5550, !5551, !5598, !5620, !5621, !5625, !5626, !5627, !5628, !5629, !5633, !5634, !5636, !5638, !5639, !5642, !5643, !5644, !5645, !5646, !5647, !5648, !5649, !5650, !5659, !5660, !5661, !5662, !5663, !5664, !5666, !5667, !5668}
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5163, file: !201, line: 1496, baseType: !4384, size: 64)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "kdev", scope: !5163, file: !201, line: 1498, baseType: !4390, size: 64, offset: 64)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5163, file: !201, line: 1500, baseType: !5168, size: 64, offset: 128)
!5168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5169, size: 64)
!5169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !94, line: 106, size: 256, elements: !5170)
!5170 = !{!5171, !5172, !5176}
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5169, file: !94, line: 107, baseType: !1504, size: 128)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5169, file: !94, line: 108, baseType: !5173, size: 64, offset: 128)
!5173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5174, size: 64)
!5174 = !DISubroutineType(types: !5175)
!5175 = !{!1334, !4390, !5168, !1039}
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5169, file: !94, line: 110, baseType: !5177, size: 64, offset: 192)
!5177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5178, size: 64)
!5178 = !DISubroutineType(types: !5179)
!5179 = !{!1334, !4390, !5168, !1029, !1337}
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5163, file: !201, line: 1508, baseType: !4679, size: 64, offset: 192)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5163, file: !201, line: 1518, baseType: !340, size: 128, offset: 256)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "global_connector_list_entry", scope: !5163, file: !201, line: 1526, baseType: !340, size: 128, offset: 384)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5163, file: !201, line: 1529, baseType: !4954, size: 256, offset: 512)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5163, file: !201, line: 1532, baseType: !1039, size: 64, offset: 768)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5163, file: !201, line: 1539, baseType: !354, size: 256, offset: 832)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5163, file: !201, line: 1547, baseType: !7, size: 32, offset: 1088)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type", scope: !5163, file: !201, line: 1553, baseType: !109, size: 32, offset: 1120)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type_id", scope: !5163, file: !201, line: 1555, baseType: !109, size: 32, offset: 1152)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "interlace_allowed", scope: !5163, file: !201, line: 1561, baseType: !1026, size: 8, offset: 1184)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "doublescan_allowed", scope: !5163, file: !201, line: 1567, baseType: !1026, size: 8, offset: 1192)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "stereo_allowed", scope: !5163, file: !201, line: 1573, baseType: !1026, size: 8, offset: 1200)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "ycbcr_420_allowed", scope: !5163, file: !201, line: 1581, baseType: !1026, size: 8, offset: 1208)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "registration_state", scope: !5163, file: !201, line: 1589, baseType: !200, size: 32, offset: 1216)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !5163, file: !201, line: 1596, baseType: !340, size: 128, offset: 1280)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5163, file: !201, line: 1603, baseType: !206, size: 32, offset: 1408)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "probed_modes", scope: !5163, file: !201, line: 1611, baseType: !340, size: 128, offset: 1472)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "display_info", scope: !5163, file: !201, line: 1622, baseType: !5198, size: 1536, offset: 1600)
!5198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_info", file: !201, line: 651, size: 1536, elements: !5199)
!5199 = !{!5200, !5201, !5202, !5203, !5204, !5205, !5206, !5209, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5250, !5251, !5256, !5261, !5262, !5263, !5264, !5266, !5267}
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !5198, file: !201, line: 655, baseType: !7, size: 32)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !5198, file: !201, line: 660, baseType: !7, size: 32, offset: 32)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "bpc", scope: !5198, file: !201, line: 665, baseType: !7, size: 32, offset: 64)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "subpixel_order", scope: !5198, file: !201, line: 670, baseType: !211, size: 32, offset: 96)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !5198, file: !201, line: 684, baseType: !109, size: 32, offset: 128)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "color_formats", scope: !5198, file: !201, line: 692, baseType: !426, size: 32, offset: 160)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "bus_formats", scope: !5198, file: !201, line: 699, baseType: !5207, size: 64, offset: 192)
!5207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5208, size: 64)
!5208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "num_bus_formats", scope: !5198, file: !201, line: 703, baseType: !7, size: 32, offset: 256)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !5198, file: !201, line: 710, baseType: !426, size: 32, offset: 288)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "max_tmds_clock", scope: !5198, file: !201, line: 716, baseType: !109, size: 32, offset: 320)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_dual", scope: !5198, file: !201, line: 721, baseType: !1026, size: 8, offset: 352)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "is_hdmi", scope: !5198, file: !201, line: 729, baseType: !1026, size: 8, offset: 360)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "has_audio", scope: !5198, file: !201, line: 737, baseType: !1026, size: 8, offset: 368)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "has_hdmi_infoframe", scope: !5198, file: !201, line: 742, baseType: !1026, size: 8, offset: 376)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "rgb_quant_range_selectable", scope: !5198, file: !201, line: 748, baseType: !1026, size: 8, offset: 384)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "edid_hdmi_rgb444_dc_modes", scope: !5198, file: !201, line: 754, baseType: !391, size: 8, offset: 392)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "edid_hdmi_ycbcr444_dc_modes", scope: !5198, file: !201, line: 760, baseType: !391, size: 8, offset: 400)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "cea_rev", scope: !5198, file: !201, line: 765, baseType: !391, size: 8, offset: 408)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi", scope: !5198, file: !201, line: 770, baseType: !5221, size: 768, offset: 448)
!5221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_hdmi_info", file: !201, line: 293, size: 768, elements: !5222)
!5222 = !{!5223, !5233, !5234, !5235, !5236, !5237, !5238}
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "scdc", scope: !5221, file: !201, line: 295, baseType: !5224, size: 32)
!5224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scdc", file: !201, line: 231, size: 32, elements: !5225)
!5225 = !{!5226, !5227, !5228}
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !5224, file: !201, line: 235, baseType: !1026, size: 8)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "read_request", scope: !5224, file: !201, line: 239, baseType: !1026, size: 8, offset: 8)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling", scope: !5224, file: !201, line: 243, baseType: !5229, size: 16, offset: 16)
!5229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scrambling", file: !201, line: 214, size: 16, elements: !5230)
!5230 = !{!5231, !5232}
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !5229, file: !201, line: 218, baseType: !1026, size: 8)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "low_rates", scope: !5229, file: !201, line: 222, baseType: !1026, size: 8, offset: 8)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "y420_vdb_modes", scope: !5221, file: !201, line: 303, baseType: !2472, size: 256, offset: 64)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "y420_cmdb_modes", scope: !5221, file: !201, line: 311, baseType: !2472, size: 256, offset: 320)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "y420_dc_modes", scope: !5221, file: !201, line: 314, baseType: !391, size: 8, offset: 576)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "max_frl_rate_per_lane", scope: !5221, file: !201, line: 317, baseType: !391, size: 8, offset: 584)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "max_lanes", scope: !5221, file: !201, line: 320, baseType: !391, size: 8, offset: 592)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "dsc_cap", scope: !5221, file: !201, line: 323, baseType: !5239, size: 128, offset: 608)
!5239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_hdmi_dsc_cap", file: !201, line: 253, size: 128, elements: !5240)
!5240 = !{!5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5249}
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "v_1p2", scope: !5239, file: !201, line: 255, baseType: !1026, size: 8)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "native_420", scope: !5239, file: !201, line: 258, baseType: !1026, size: 8, offset: 8)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "all_bpp", scope: !5239, file: !201, line: 264, baseType: !1026, size: 8, offset: 16)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "bpc_supported", scope: !5239, file: !201, line: 269, baseType: !391, size: 8, offset: 24)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "max_slices", scope: !5239, file: !201, line: 272, baseType: !391, size: 8, offset: 32)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "clk_per_slice", scope: !5239, file: !201, line: 275, baseType: !109, size: 32, offset: 64)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "max_lanes", scope: !5239, file: !201, line: 278, baseType: !391, size: 8, offset: 96)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "max_frl_rate_per_lane", scope: !5239, file: !201, line: 281, baseType: !391, size: 8, offset: 104)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "total_chunk_kbytes", scope: !5239, file: !201, line: 284, baseType: !391, size: 8, offset: 112)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop", scope: !5198, file: !201, line: 775, baseType: !1026, size: 8, offset: 1216)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_range", scope: !5198, file: !201, line: 780, baseType: !5252, size: 32, offset: 1232)
!5252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_monitor_range_info", file: !201, line: 383, size: 32, elements: !5253)
!5253 = !{!5254, !5255}
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "min_vfreq", scope: !5252, file: !201, line: 384, baseType: !399, size: 16)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "max_vfreq", scope: !5252, file: !201, line: 385, baseType: !399, size: 16, offset: 16)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "luminance_range", scope: !5198, file: !201, line: 785, baseType: !5257, size: 64, offset: 1280)
!5257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_luminance_range_info", file: !201, line: 399, size: 64, elements: !5258)
!5258 = !{!5259, !5260}
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "min_luminance", scope: !5257, file: !201, line: 400, baseType: !426, size: 32)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "max_luminance", scope: !5257, file: !201, line: 401, baseType: !426, size: 32, offset: 32)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "mso_stream_count", scope: !5198, file: !201, line: 792, baseType: !391, size: 8, offset: 1344)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "mso_pixel_overlap", scope: !5198, file: !201, line: 797, baseType: !391, size: 8, offset: 1352)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "max_dsc_bpp", scope: !5198, file: !201, line: 803, baseType: !426, size: 32, offset: 1376)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "vics", scope: !5198, file: !201, line: 808, baseType: !5265, size: 64, offset: 1408)
!5265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "vics_len", scope: !5198, file: !201, line: 813, baseType: !109, size: 32, offset: 1472)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !5198, file: !201, line: 818, baseType: !426, size: 32, offset: 1504)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5163, file: !201, line: 1625, baseType: !5269, size: 64, offset: 3136)
!5269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5270, size: 64)
!5270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5271)
!5271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_funcs", file: !201, line: 1034, size: 1024, elements: !5272)
!5272 = !{!5273, !5277, !5281, !5285, !5286, !5290, !5294, !5298, !5299, !5300, !5470, !5474, !5478, !5484, !5519, !5520}
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5271, file: !201, line: 1051, baseType: !5274, size: 64)
!5274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5275, size: 64)
!5275 = !DISubroutineType(types: !5276)
!5276 = !{!109, !5162, !109}
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5271, file: !201, line: 1063, baseType: !5278, size: 64, offset: 64)
!5278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5279, size: 64)
!5279 = !DISubroutineType(types: !5280)
!5280 = !{null, !5162}
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !5271, file: !201, line: 1096, baseType: !5282, size: 64, offset: 128)
!5282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5283, size: 64)
!5283 = !DISubroutineType(types: !5284)
!5284 = !{!206, !5162, !1026}
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5271, file: !201, line: 1113, baseType: !5278, size: 64, offset: 192)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "fill_modes", scope: !5271, file: !201, line: 1138, baseType: !5287, size: 64, offset: 256)
!5287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5288, size: 64)
!5288 = !DISubroutineType(types: !5289)
!5289 = !{!109, !5162, !990, !990}
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5271, file: !201, line: 1154, baseType: !5291, size: 64, offset: 320)
!5291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5292, size: 64)
!5292 = !DISubroutineType(types: !5293)
!5293 = !{!109, !5162, !4948, !4970}
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5271, file: !201, line: 1173, baseType: !5295, size: 64, offset: 384)
!5295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5296, size: 64)
!5296 = !DISubroutineType(types: !5297)
!5297 = !{!109, !5162}
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5271, file: !201, line: 1186, baseType: !5278, size: 64, offset: 448)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5271, file: !201, line: 1196, baseType: !5278, size: 64, offset: 512)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5271, file: !201, line: 1229, baseType: !5301, size: 64, offset: 576)
!5301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5302, size: 64)
!5302 = !DISubroutineType(types: !5303)
!5303 = !{!5304, !5162}
!5304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5305, size: 64)
!5305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_state", file: !201, line: 884, size: 1280, elements: !5306)
!5306 = !{!5307, !5308, !5309, !5433, !5434, !5435, !5436, !5456, !5457, !5458, !5459, !5460, !5461, !5462, !5463, !5466, !5467, !5468, !5469}
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "connector", scope: !5305, file: !201, line: 886, baseType: !5162, size: 64)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5305, file: !201, line: 894, baseType: !5100, size: 64, offset: 64)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "best_encoder", scope: !5305, file: !201, line: 912, baseType: !5310, size: 64, offset: 128)
!5310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5311, size: 64)
!5311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder", file: !5312, line: 98, size: 960, elements: !5313)
!5312 = !DIFile(filename: "./include/drm/drm_encoder.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74b3d858470ff421c0475e349d8db40a")
!5313 = !{!5314, !5315, !5316, !5317, !5318, !5319, !5320, !5321, !5322, !5323, !5324, !5339}
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5311, file: !5312, line: 99, baseType: !4384, size: 64)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5311, file: !5312, line: 100, baseType: !340, size: 128, offset: 64)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5311, file: !5312, line: 102, baseType: !4954, size: 256, offset: 192)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5311, file: !5312, line: 103, baseType: !1039, size: 64, offset: 448)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_type", scope: !5311, file: !5312, line: 130, baseType: !109, size: 32, offset: 512)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5311, file: !5312, line: 136, baseType: !7, size: 32, offset: 544)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "possible_crtcs", scope: !5311, file: !5312, line: 149, baseType: !990, size: 32, offset: 576)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "possible_clones", scope: !5311, file: !5312, line: 170, baseType: !990, size: 32, offset: 608)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5311, file: !5312, line: 177, baseType: !5100, size: 64, offset: 640)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_chain", scope: !5311, file: !5312, line: 183, baseType: !340, size: 128, offset: 704)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5311, file: !5312, line: 185, baseType: !5325, size: 64, offset: 832)
!5325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5326, size: 64)
!5326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5327)
!5327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder_funcs", file: !5312, line: 40, size: 256, elements: !5328)
!5328 = !{!5329, !5333, !5334, !5338}
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5327, file: !5312, line: 48, baseType: !5330, size: 64)
!5330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5331, size: 64)
!5331 = !DISubroutineType(types: !5332)
!5332 = !{null, !5310}
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5327, file: !5312, line: 57, baseType: !5330, size: 64, offset: 64)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5327, file: !5312, line: 72, baseType: !5335, size: 64, offset: 128)
!5335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5336, size: 64)
!5336 = !DISubroutineType(types: !5337)
!5337 = !{!109, !5310}
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5327, file: !5312, line: 83, baseType: !5330, size: 64, offset: 192)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5311, file: !5312, line: 186, baseType: !5340, size: 64, offset: 896)
!5340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5341, size: 64)
!5341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5342)
!5342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder_helper_funcs", file: !294, line: 511, size: 832, elements: !5343)
!5343 = !{!5344, !5348, !5352, !5356, !5357, !5358, !5362, !5418, !5422, !5426, !5427, !5428, !5429}
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5342, file: !294, line: 528, baseType: !5345, size: 64)
!5345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5346, size: 64)
!5346 = !DISubroutineType(types: !5347)
!5347 = !{null, !5310, !109}
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !5342, file: !294, line: 561, baseType: !5349, size: 64, offset: 64)
!5349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5350, size: 64)
!5350 = !DISubroutineType(types: !5351)
!5351 = !{!141, !5310, !4886}
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "mode_fixup", scope: !5342, file: !294, line: 604, baseType: !5353, size: 64, offset: 128)
!5353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5354, size: 64)
!5354 = !DISubroutineType(types: !5355)
!5355 = !{!1026, !5310, !4886, !5157}
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !5342, file: !294, line: 621, baseType: !5330, size: 64, offset: 192)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5342, file: !294, line: 636, baseType: !5330, size: 64, offset: 256)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "mode_set", scope: !5342, file: !294, line: 660, baseType: !5359, size: 64, offset: 320)
!5359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5360, size: 64)
!5360 = !DISubroutineType(types: !5361)
!5361 = !{null, !5310, !5157, !5157}
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_mode_set", scope: !5342, file: !294, line: 683, baseType: !5363, size: 64, offset: 384)
!5363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5364, size: 64)
!5364 = !DISubroutineType(types: !5365)
!5365 = !{null, !5310, !5366, !5304}
!5366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5367, size: 64)
!5367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_state", file: !5102, line: 81, size: 2688, elements: !5368)
!5368 = !{!5369, !5370, !5371, !5372, !5373, !5374, !5375, !5376, !5377, !5378, !5379, !5380, !5381, !5382, !5383, !5384, !5394, !5395, !5396, !5397, !5398, !5399, !5400, !5401, !5402, !5405, !5417}
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5367, file: !5102, line: 83, baseType: !5100, size: 64)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !5367, file: !5102, line: 90, baseType: !1026, size: 8, offset: 64)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5367, file: !5102, line: 105, baseType: !1026, size: 8, offset: 72)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "planes_changed", scope: !5367, file: !5102, line: 111, baseType: !1026, size: 1, offset: 80, flags: DIFlagBitField, extraData: i64 80)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "mode_changed", scope: !5367, file: !5102, line: 123, baseType: !1026, size: 1, offset: 81, flags: DIFlagBitField, extraData: i64 80)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "active_changed", scope: !5367, file: !5102, line: 130, baseType: !1026, size: 1, offset: 82, flags: DIFlagBitField, extraData: i64 80)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "connectors_changed", scope: !5367, file: !5102, line: 141, baseType: !1026, size: 1, offset: 83, flags: DIFlagBitField, extraData: i64 80)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "zpos_changed", scope: !5367, file: !5102, line: 147, baseType: !1026, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 80)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "color_mgmt_changed", scope: !5367, file: !5102, line: 153, baseType: !1026, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 80)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "no_vblank", scope: !5367, file: !5102, line: 189, baseType: !1026, size: 1, offset: 86, flags: DIFlagBitField, extraData: i64 80)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "plane_mask", scope: !5367, file: !5102, line: 195, baseType: !426, size: 32, offset: 96)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "connector_mask", scope: !5367, file: !5102, line: 201, baseType: !426, size: 32, offset: 128)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_mask", scope: !5367, file: !5102, line: 207, baseType: !426, size: 32, offset: 160)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "adjusted_mode", scope: !5367, file: !5102, line: 222, baseType: !4888, size: 960, offset: 192)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5367, file: !5102, line: 239, baseType: !4888, size: 960, offset: 1152)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "mode_blob", scope: !5367, file: !5102, line: 245, baseType: !5385, size: 64, offset: 2112)
!5385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5386, size: 64)
!5386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property_blob", file: !4950, line: 216, size: 704, elements: !5387)
!5387 = !{!5388, !5389, !5390, !5391, !5392, !5393}
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5386, file: !4950, line: 217, baseType: !4954, size: 256)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5386, file: !4950, line: 218, baseType: !4384, size: 64, offset: 256)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "head_global", scope: !5386, file: !4950, line: 219, baseType: !340, size: 128, offset: 320)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "head_file", scope: !5386, file: !4950, line: 220, baseType: !340, size: 128, offset: 448)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5386, file: !4950, line: 221, baseType: !1337, size: 64, offset: 576)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5386, file: !4950, line: 222, baseType: !326, size: 64, offset: 640)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut", scope: !5367, file: !5102, line: 254, baseType: !5385, size: 64, offset: 2176)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "ctm", scope: !5367, file: !5102, line: 262, baseType: !5385, size: 64, offset: 2240)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut", scope: !5367, file: !5102, line: 275, baseType: !5385, size: 64, offset: 2304)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "target_vblank", scope: !5367, file: !5102, line: 283, baseType: !426, size: 32, offset: 2368)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "async_flip", scope: !5367, file: !5102, line: 291, baseType: !1026, size: 8, offset: 2400)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_enabled", scope: !5367, file: !5102, line: 300, baseType: !1026, size: 8, offset: 2408)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_active", scope: !5367, file: !5102, line: 311, baseType: !1026, size: 8, offset: 2416)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter", scope: !5367, file: !5102, line: 318, baseType: !219, size: 32, offset: 2432)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5367, file: !5102, line: 375, baseType: !5403, size: 64, offset: 2496)
!5403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5404, size: 64)
!5404 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_pending_vblank_event", file: !5102, line: 58, flags: DIFlagFwdDecl)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5367, file: !5102, line: 384, baseType: !5406, size: 64, offset: 2560)
!5406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5407, size: 64)
!5407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_commit", file: !337, line: 72, size: 1152, elements: !5408)
!5408 = !{!5409, !5410, !5411, !5412, !5413, !5414, !5415, !5416}
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5407, file: !337, line: 78, baseType: !5100, size: 64)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5407, file: !337, line: 87, baseType: !2227, size: 32, offset: 64)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "flip_done", scope: !5407, file: !337, line: 101, baseType: !1642, size: 256, offset: 128)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "hw_done", scope: !5407, file: !337, line: 119, baseType: !1642, size: 256, offset: 384)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_done", scope: !5407, file: !337, line: 133, baseType: !1642, size: 256, offset: 640)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "commit_entry", scope: !5407, file: !337, line: 141, baseType: !340, size: 128, offset: 896)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5407, file: !337, line: 148, baseType: !5403, size: 64, offset: 1024)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "abort_completion", scope: !5407, file: !337, line: 157, baseType: !1026, size: 8, offset: 1088)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5367, file: !5102, line: 387, baseType: !4379, size: 64, offset: 2624)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !5342, file: !294, line: 702, baseType: !5419, size: 64, offset: 448)
!5419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5420, size: 64)
!5420 = !DISubroutineType(types: !5421)
!5421 = !{!206, !5310, !5162}
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_disable", scope: !5342, file: !294, line: 725, baseType: !5423, size: 64, offset: 512)
!5423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5424, size: 64)
!5424 = !DISubroutineType(types: !5425)
!5425 = !{null, !5310, !4379}
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_enable", scope: !5342, file: !294, line: 748, baseType: !5423, size: 64, offset: 576)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !5342, file: !294, line: 782, baseType: !5330, size: 64, offset: 640)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !5342, file: !294, line: 800, baseType: !5330, size: 64, offset: 704)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !5342, file: !294, line: 838, baseType: !5430, size: 64, offset: 768)
!5430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5431, size: 64)
!5431 = !DISubroutineType(types: !5432)
!5432 = !{!109, !5310, !5366, !5304}
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "link_status", scope: !5305, file: !201, line: 918, baseType: !224, size: 32, offset: 192)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5305, file: !201, line: 921, baseType: !4379, size: 64, offset: 256)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5305, file: !201, line: 928, baseType: !5406, size: 64, offset: 320)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "tv", scope: !5305, file: !201, line: 931, baseType: !5437, size: 448, offset: 384)
!5437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tv_connector_state", file: !201, line: 867, size: 448, elements: !5438)
!5438 = !{!5439, !5440, !5441, !5448, !5449, !5450, !5451, !5452, !5453, !5454, !5455}
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "select_subconnector", scope: !5437, file: !201, line: 868, baseType: !228, size: 32)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "subconnector", scope: !5437, file: !201, line: 869, baseType: !228, size: 32, offset: 32)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !5437, file: !201, line: 870, baseType: !5442, size: 128, offset: 64)
!5442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_tv_margins", file: !201, line: 831, size: 128, elements: !5443)
!5443 = !{!5444, !5445, !5446, !5447}
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !5442, file: !201, line: 835, baseType: !7, size: 32)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !5442, file: !201, line: 840, baseType: !7, size: 32, offset: 32)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !5442, file: !201, line: 845, baseType: !7, size: 32, offset: 64)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !5442, file: !201, line: 850, baseType: !7, size: 32, offset: 96)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mode", scope: !5437, file: !201, line: 871, baseType: !7, size: 32, offset: 192)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5437, file: !201, line: 872, baseType: !7, size: 32, offset: 224)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !5437, file: !201, line: 873, baseType: !7, size: 32, offset: 256)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "contrast", scope: !5437, file: !201, line: 874, baseType: !7, size: 32, offset: 288)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "flicker_reduction", scope: !5437, file: !201, line: 875, baseType: !7, size: 32, offset: 320)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "overscan", scope: !5437, file: !201, line: 876, baseType: !7, size: 32, offset: 352)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "saturation", scope: !5437, file: !201, line: 877, baseType: !7, size: 32, offset: 384)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "hue", scope: !5437, file: !201, line: 878, baseType: !7, size: 32, offset: 416)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_aware", scope: !5305, file: !201, line: 945, baseType: !1026, size: 8, offset: 832)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !5305, file: !201, line: 954, baseType: !184, size: 32, offset: 864)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !5305, file: !201, line: 962, baseType: !7, size: 32, offset: 896)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type", scope: !5305, file: !201, line: 968, baseType: !7, size: 32, offset: 928)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode", scope: !5305, file: !201, line: 974, baseType: !7, size: 32, offset: 960)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection", scope: !5305, file: !201, line: 980, baseType: !7, size: 32, offset: 992)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !5305, file: !201, line: 987, baseType: !244, size: 32, offset: 1024)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_job", scope: !5305, file: !201, line: 1000, baseType: !5464, size: 64, offset: 1088)
!5464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5465, size: 64)
!5465 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_writeback_job", file: !201, line: 1000, flags: DIFlagFwdDecl)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "max_requested_bpc", scope: !5305, file: !201, line: 1006, baseType: !391, size: 8, offset: 1152)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc", scope: !5305, file: !201, line: 1012, baseType: !391, size: 8, offset: 1160)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_sw_state", scope: !5305, file: !201, line: 1018, baseType: !264, size: 32, offset: 1184)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata", scope: !5305, file: !201, line: 1024, baseType: !5385, size: 64, offset: 1216)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5271, file: !201, line: 1239, baseType: !5471, size: 64, offset: 640)
!5471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5472, size: 64)
!5472 = !DISubroutineType(types: !5473)
!5473 = !{null, !5162, !5304}
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5271, file: !201, line: 1284, baseType: !5475, size: 64, offset: 704)
!5475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5476, size: 64)
!5476 = !DISubroutineType(types: !5477)
!5477 = !{!109, !5162, !5304, !4948, !4970}
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5271, file: !201, line: 1307, baseType: !5479, size: 64, offset: 768)
!5479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5480, size: 64)
!5480 = !DISubroutineType(types: !5481)
!5481 = !{!109, !5162, !5482, !4948, !4981}
!5482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5483, size: 64)
!5483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5305)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5271, file: !201, line: 1321, baseType: !5485, size: 64, offset: 832)
!5485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5486, size: 64)
!5486 = !DISubroutineType(types: !5487)
!5487 = !{null, !5488, !5482}
!5488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5489, size: 64)
!5489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_printer", file: !5490, line: 76, size: 256, elements: !5491)
!5490 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8183d9b00573922c1c038b9801bc144f")
!5491 = !{!5492, !5513, !5517, !5518}
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "printfn", scope: !5489, file: !5490, line: 78, baseType: !5493, size: 64)
!5493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5494, size: 64)
!5494 = !DISubroutineType(types: !5495)
!5495 = !{null, !5488, !5496}
!5496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5497, size: 64)
!5497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "va_format", file: !5498, line: 79, size: 128, elements: !5499)
!5498 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5499 = !{!5500, !5501}
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !5497, file: !5498, line: 80, baseType: !1029, size: 64)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !5497, file: !5498, line: 81, baseType: !5502, size: 64, offset: 64)
!5502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5503, size: 64)
!5503 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !5504, line: 5, baseType: !5505)
!5504 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!5505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !5506)
!5506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5507, size: 192, elements: !683)
!5507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !5508)
!5508 = !{!5509, !5510, !5511, !5512}
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !5507, file: !3, baseType: !7, size: 32)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !5507, file: !3, baseType: !7, size: 32, offset: 32)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !5507, file: !3, baseType: !326, size: 64, offset: 64)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !5507, file: !3, baseType: !326, size: 64, offset: 128)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "puts", scope: !5489, file: !5490, line: 79, baseType: !5514, size: 64, offset: 64)
!5514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5515, size: 64)
!5515 = !DISubroutineType(types: !5516)
!5516 = !{null, !5488, !1029}
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5489, file: !5490, line: 80, baseType: !326, size: 64, offset: 128)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !5489, file: !5490, line: 81, baseType: !1029, size: 64, offset: 192)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "oob_hotplug_event", scope: !5271, file: !201, line: 1330, baseType: !5278, size: 64, offset: 896)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_init", scope: !5271, file: !201, line: 1337, baseType: !5521, size: 64, offset: 960)
!5521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5522, size: 64)
!5522 = !DISubroutineType(types: !5523)
!5523 = !{null, !5162, !1145}
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "edid_blob_ptr", scope: !5163, file: !201, line: 1632, baseType: !5385, size: 64, offset: 3200)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5163, file: !201, line: 1635, baseType: !4961, size: 3136, offset: 3264)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !5163, file: !201, line: 1641, baseType: !4948, size: 64, offset: 6400)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_capable_property", scope: !5163, file: !201, line: 1652, baseType: !4948, size: 64, offset: 6464)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace_property", scope: !5163, file: !201, line: 1658, baseType: !4948, size: 64, offset: 6528)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "path_blob_ptr", scope: !5163, file: !201, line: 1666, baseType: !5385, size: 64, offset: 6592)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc_property", scope: !5163, file: !201, line: 1672, baseType: !4948, size: 64, offset: 6656)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen", scope: !5163, file: !201, line: 1675, baseType: !5532, size: 64, offset: 6720)
!5532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5533, size: 64)
!5533 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_privacy_screen", file: !201, line: 46, flags: DIFlagFwdDecl)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_notifier", scope: !5163, file: !201, line: 1678, baseType: !5535, size: 192, offset: 6784)
!5535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !5536, line: 54, size: 192, elements: !5537)
!5536 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!5537 = !{!5538, !5544, !5545}
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !5535, file: !5536, line: 55, baseType: !5539, size: 64)
!5539 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !5536, line: 51, baseType: !5540)
!5540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5541, size: 64)
!5541 = !DISubroutineType(types: !5542)
!5542 = !{!109, !5543, !423, !326}
!5543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5535, size: 64)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5535, file: !5536, line: 56, baseType: !5543, size: 64, offset: 64)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !5535, file: !5536, line: 57, baseType: !109, size: 32, offset: 128)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_sw_state_property", scope: !5163, file: !201, line: 1684, baseType: !4948, size: 64, offset: 6976)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_hw_state_property", scope: !5163, file: !201, line: 1690, baseType: !4948, size: 64, offset: 7040)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "polled", scope: !5163, file: !201, line: 1717, baseType: !5549, size: 8, offset: 7104)
!5549 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !328, line: 108, baseType: !391)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5163, file: !201, line: 1725, baseType: !109, size: 32, offset: 7136)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5163, file: !201, line: 1728, baseType: !5552, size: 64, offset: 7168)
!5552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5553, size: 64)
!5553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5554)
!5554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_helper_funcs", file: !294, line: 860, size: 768, elements: !5555)
!5555 = !{!5556, !5557, !5561, !5565, !5570, !5574, !5578, !5582, !5586, !5592, !5596, !5597}
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "get_modes", scope: !5554, file: !294, line: 904, baseType: !5295, size: 64)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "detect_ctx", scope: !5554, file: !294, line: 930, baseType: !5558, size: 64, offset: 64)
!5558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5559, size: 64)
!5559 = !DISubroutineType(types: !5560)
!5560 = !{!109, !5162, !4803, !1026}
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !5554, file: !294, line: 968, baseType: !5562, size: 64, offset: 128)
!5562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5563, size: 64)
!5563 = !DISubroutineType(types: !5564)
!5564 = !{!141, !5162, !5157}
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid_ctx", scope: !5554, file: !294, line: 1007, baseType: !5566, size: 64, offset: 192)
!5566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5567, size: 64)
!5567 = !DISubroutineType(types: !5568)
!5568 = !{!109, !5162, !5157, !4803, !5569}
!5569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "best_encoder", scope: !5554, file: !294, line: 1040, baseType: !5571, size: 64, offset: 256)
!5571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5572, size: 64)
!5572 = !DISubroutineType(types: !5573)
!5573 = !{!5310, !5162}
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_best_encoder", scope: !5554, file: !294, line: 1066, baseType: !5575, size: 64, offset: 320)
!5575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5576, size: 64)
!5576 = !DISubroutineType(types: !5577)
!5577 = !{!5310, !5162, !4379}
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !5554, file: !294, line: 1100, baseType: !5579, size: 64, offset: 384)
!5579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5580, size: 64)
!5580 = !DISubroutineType(types: !5581)
!5581 = !{!109, !5162, !4379}
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !5554, file: !294, line: 1115, baseType: !5583, size: 64, offset: 448)
!5583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5584, size: 64)
!5584 = !DISubroutineType(types: !5585)
!5585 = !{null, !5162, !4379}
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_writeback_job", scope: !5554, file: !294, line: 1132, baseType: !5587, size: 64, offset: 512)
!5587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5588, size: 64)
!5588 = !DISubroutineType(types: !5589)
!5589 = !{!109, !5590, !5464}
!5590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5591, size: 64)
!5591 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_writeback_connector", file: !294, line: 51, flags: DIFlagFwdDecl)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_writeback_job", scope: !5554, file: !294, line: 1147, baseType: !5593, size: 64, offset: 576)
!5593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5594, size: 64)
!5594 = !DISubroutineType(types: !5595)
!5595 = !{null, !5590, !5464}
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "enable_hpd", scope: !5554, file: !294, line: 1159, baseType: !5278, size: 64, offset: 640)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "disable_hpd", scope: !5554, file: !294, line: 1170, baseType: !5278, size: 64, offset: 704)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_mode", scope: !5163, file: !201, line: 1731, baseType: !5599, size: 768, offset: 7232)
!5599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_cmdline_mode", file: !201, line: 1348, size: 768, elements: !5600)
!5600 = !{!5601, !5602, !5603, !5604, !5605, !5606, !5607, !5608, !5609, !5610, !5611, !5612, !5613, !5614, !5615, !5616, !5617, !5618, !5619}
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5599, file: !201, line: 1354, baseType: !2979, size: 256)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "specified", scope: !5599, file: !201, line: 1361, baseType: !1026, size: 8, offset: 256)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "refresh_specified", scope: !5599, file: !201, line: 1368, baseType: !1026, size: 8, offset: 264)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "bpp_specified", scope: !5599, file: !201, line: 1375, baseType: !1026, size: 8, offset: 272)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_clock", scope: !5599, file: !201, line: 1382, baseType: !7, size: 32, offset: 288)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !5599, file: !201, line: 1389, baseType: !109, size: 32, offset: 320)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !5599, file: !201, line: 1396, baseType: !109, size: 32, offset: 352)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !5599, file: !201, line: 1403, baseType: !109, size: 32, offset: 384)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !5599, file: !201, line: 1410, baseType: !109, size: 32, offset: 416)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !5599, file: !201, line: 1417, baseType: !1026, size: 8, offset: 448)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !5599, file: !201, line: 1424, baseType: !1026, size: 8, offset: 456)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "cvt", scope: !5599, file: !201, line: 1432, baseType: !1026, size: 8, offset: 464)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !5599, file: !201, line: 1440, baseType: !1026, size: 8, offset: 472)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5599, file: !201, line: 1448, baseType: !270, size: 32, offset: 480)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_reflection", scope: !5599, file: !201, line: 1458, baseType: !7, size: 32, offset: 512)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !5599, file: !201, line: 1466, baseType: !276, size: 32, offset: 544)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "tv_margins", scope: !5599, file: !201, line: 1471, baseType: !5442, size: 128, offset: 576)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode", scope: !5599, file: !201, line: 1476, baseType: !283, size: 32, offset: 704)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_specified", scope: !5599, file: !201, line: 1483, baseType: !1026, size: 8, offset: 736)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5163, file: !201, line: 1733, baseType: !270, size: 32, offset: 8000)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "edid_override", scope: !5163, file: !201, line: 1741, baseType: !5622, size: 64, offset: 8064)
!5622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5623, size: 64)
!5623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5624)
!5624 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_edid", file: !201, line: 1741, flags: DIFlagFwdDecl)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "edid_override_mutex", scope: !5163, file: !201, line: 1746, baseType: !354, size: 256, offset: 8128)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "epoch_counter", scope: !5163, file: !201, line: 1749, baseType: !484, size: 64, offset: 8384)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "possible_encoders", scope: !5163, file: !201, line: 1756, baseType: !426, size: 32, offset: 8448)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !5163, file: !201, line: 1764, baseType: !5310, size: 64, offset: 8512)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "eld", scope: !5163, file: !201, line: 1768, baseType: !5630, size: 1024, offset: 8576)
!5630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5549, size: 1024, elements: !5631)
!5631 = !{!5632}
!5632 = !DISubrange(count: 128)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "eld_mutex", scope: !5163, file: !201, line: 1770, baseType: !354, size: 256, offset: 9600)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "latency_present", scope: !5163, file: !201, line: 1773, baseType: !5635, size: 16, offset: 9856)
!5635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1026, size: 16, elements: !2369)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "video_latency", scope: !5163, file: !201, line: 1778, baseType: !5637, size: 64, offset: 9888)
!5637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 64, elements: !2369)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "audio_latency", scope: !5163, file: !201, line: 1783, baseType: !5637, size: 64, offset: 9952)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "ddc", scope: !5163, file: !201, line: 1794, baseType: !5640, size: 64, offset: 10048)
!5640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5641, size: 64)
!5641 = !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !201, line: 48, flags: DIFlagFwdDecl)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "null_edid_counter", scope: !5163, file: !201, line: 1800, baseType: !109, size: 32, offset: 10112)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "bad_edid_counter", scope: !5163, file: !201, line: 1803, baseType: !7, size: 32, offset: 10144)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "edid_corrupt", scope: !5163, file: !201, line: 1810, baseType: !1026, size: 8, offset: 10176)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "real_edid_checksum", scope: !5163, file: !201, line: 1816, baseType: !391, size: 8, offset: 10184)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_entry", scope: !5163, file: !201, line: 1819, baseType: !1145, size: 64, offset: 10240)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5163, file: !201, line: 1835, baseType: !5304, size: 64, offset: 10304)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "tile_blob_ptr", scope: !5163, file: !201, line: 1852, baseType: !5385, size: 64, offset: 10368)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "has_tile", scope: !5163, file: !201, line: 1855, baseType: !1026, size: 8, offset: 10432)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "tile_group", scope: !5163, file: !201, line: 1857, baseType: !5651, size: 64, offset: 10496)
!5651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5652, size: 64)
!5652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tile_group", file: !201, line: 2058, size: 256, elements: !5653)
!5653 = !{!5654, !5655, !5656, !5657}
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5652, file: !201, line: 2059, baseType: !2227, size: 32)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5652, file: !201, line: 2060, baseType: !4384, size: 64, offset: 64)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5652, file: !201, line: 2061, baseType: !109, size: 32, offset: 128)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "group_data", scope: !5652, file: !201, line: 2062, baseType: !5658, size: 64, offset: 160)
!5658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 64, elements: !592)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "tile_is_single_monitor", scope: !5163, file: !201, line: 1859, baseType: !1026, size: 8, offset: 10560)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "num_h_tile", scope: !5163, file: !201, line: 1863, baseType: !5549, size: 8, offset: 10568)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "num_v_tile", scope: !5163, file: !201, line: 1863, baseType: !5549, size: 8, offset: 10576)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_loc", scope: !5163, file: !201, line: 1866, baseType: !5549, size: 8, offset: 10584)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_loc", scope: !5163, file: !201, line: 1866, baseType: !5549, size: 8, offset: 10592)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_size", scope: !5163, file: !201, line: 1869, baseType: !5665, size: 16, offset: 10608)
!5665 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !328, line: 109, baseType: !399)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_size", scope: !5163, file: !201, line: 1869, baseType: !5665, size: 16, offset: 10624)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "free_node", scope: !5163, file: !201, line: 1878, baseType: !445, size: 64, offset: 10688)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_sink_metadata", scope: !5163, file: !201, line: 1881, baseType: !5669, size: 96, offset: 10752)
!5669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_sink_metadata", file: !185, line: 383, size: 96, elements: !5670)
!5670 = !{!5671, !5672}
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !5669, file: !185, line: 387, baseType: !427, size: 32)
!5672 = !DIDerivedType(tag: DW_TAG_member, scope: !5669, file: !185, line: 391, baseType: !5673, size: 64, offset: 32)
!5673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5669, file: !185, line: 391, size: 64, elements: !5674)
!5674 = !{!5675}
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi_type1", scope: !5673, file: !185, line: 392, baseType: !5676, size: 64)
!5676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_static_metadata", file: !185, line: 370, size: 64, elements: !5677)
!5677 = !{!5678, !5679, !5680, !5681, !5682}
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "eotf", scope: !5676, file: !185, line: 371, baseType: !392, size: 8)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !5676, file: !185, line: 372, baseType: !392, size: 8, offset: 8)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "max_cll", scope: !5676, file: !185, line: 373, baseType: !400, size: 16, offset: 16)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "max_fall", scope: !5676, file: !185, line: 374, baseType: !400, size: 16, offset: 32)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "min_cll", scope: !5676, file: !185, line: 375, baseType: !400, size: 16, offset: 48)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "num_connectors", scope: !5152, file: !5102, line: 1202, baseType: !1337, size: 64, offset: 320)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "page_flip", scope: !5123, file: !5102, line: 576, baseType: !5685, size: 64, offset: 448)
!5685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5686, size: 64)
!5686 = !DISubroutineType(types: !5687)
!5687 = !{!109, !5100, !4851, !5403, !990, !4803}
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "page_flip_target", scope: !5123, file: !5102, line: 595, baseType: !5689, size: 64, offset: 512)
!5689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5690, size: 64)
!5690 = !DISubroutineType(types: !5691)
!5691 = !{!109, !5100, !4851, !5403, !990, !990, !4803}
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5123, file: !5102, line: 615, baseType: !5693, size: 64, offset: 576)
!5693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5694, size: 64)
!5694 = !DISubroutineType(types: !5695)
!5695 = !{!109, !5100, !4948, !4970}
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5123, file: !5102, line: 649, baseType: !5697, size: 64, offset: 640)
!5697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5698, size: 64)
!5698 = !DISubroutineType(types: !5699)
!5699 = !{!5366, !5100}
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5123, file: !5102, line: 659, baseType: !5701, size: 64, offset: 704)
!5701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5702, size: 64)
!5702 = !DISubroutineType(types: !5703)
!5703 = !{null, !5100, !5366}
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5123, file: !5102, line: 704, baseType: !5705, size: 64, offset: 768)
!5705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5706, size: 64)
!5706 = !DISubroutineType(types: !5707)
!5707 = !{!109, !5100, !5366, !4948, !4970}
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5123, file: !5102, line: 726, baseType: !5709, size: 64, offset: 832)
!5709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5710, size: 64)
!5710 = !DISubroutineType(types: !5711)
!5711 = !{!109, !5100, !5712, !4948, !4981}
!5712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5713, size: 64)
!5713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5367)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5123, file: !5102, line: 744, baseType: !5715, size: 64, offset: 896)
!5715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5716, size: 64)
!5716 = !DISubroutineType(types: !5717)
!5717 = !{!109, !5100}
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5123, file: !5102, line: 755, baseType: !5126, size: 64, offset: 960)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "set_crc_source", scope: !5123, file: !5102, line: 784, baseType: !5720, size: 64, offset: 1024)
!5720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5721, size: 64)
!5721 = !DISubroutineType(types: !5722)
!5722 = !{!109, !5100, !1029}
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "verify_crc_source", scope: !5123, file: !5102, line: 800, baseType: !5724, size: 64, offset: 1088)
!5724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5725, size: 64)
!5725 = !DISubroutineType(types: !5726)
!5726 = !{!109, !5100, !1029, !5727}
!5727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "get_crc_sources", scope: !5123, file: !5102, line: 822, baseType: !5729, size: 64, offset: 1152)
!5729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5730, size: 64)
!5730 = !DISubroutineType(types: !5731)
!5731 = !{!5732, !5100, !5727}
!5732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5733, size: 64)
!5733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1029)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5123, file: !5102, line: 834, baseType: !5735, size: 64, offset: 1216)
!5735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5736, size: 64)
!5736 = !DISubroutineType(types: !5737)
!5737 = !{null, !5488, !5712}
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_counter", scope: !5123, file: !5102, line: 861, baseType: !5739, size: 64, offset: 1280)
!5739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5740, size: 64)
!5740 = !DISubroutineType(types: !5741)
!5741 = !{!426, !5100}
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "enable_vblank", scope: !5123, file: !5102, line: 874, baseType: !5715, size: 64, offset: 1344)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "disable_vblank", scope: !5123, file: !5102, line: 882, baseType: !5126, size: 64, offset: 1408)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_timestamp", scope: !5123, file: !5102, line: 920, baseType: !5745, size: 64, offset: 1472)
!5745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5746, size: 64)
!5746 = !DISubroutineType(types: !5747)
!5747 = !{!1026, !5100, !2379, !5748, !1026}
!5748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_size", scope: !5101, file: !5102, line: 1068, baseType: !990, size: 32, offset: 3328)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_store", scope: !5101, file: !5102, line: 1077, baseType: !5751, size: 64, offset: 3392)
!5751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5665, size: 64)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5101, file: !5102, line: 1080, baseType: !5753, size: 64, offset: 3456)
!5753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5754, size: 64)
!5754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5755)
!5755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_helper_funcs", file: !294, line: 65, size: 1024, elements: !5756)
!5756 = !{!5757, !5761, !5762, !5763, !5767, !5771, !5775, !5776, !5780, !5784, !5785, !5789, !5793, !5794, !5795, !5796}
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5755, file: !294, line: 82, baseType: !5758, size: 64)
!5758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5759, size: 64)
!5759 = !DISubroutineType(types: !5760)
!5760 = !{null, !5100, !109}
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !5755, file: !294, line: 97, baseType: !5126, size: 64, offset: 64)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5755, file: !294, line: 112, baseType: !5126, size: 64, offset: 128)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !5755, file: !294, line: 145, baseType: !5764, size: 64, offset: 192)
!5764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5765, size: 64)
!5765 = !DISubroutineType(types: !5766)
!5766 = !{!141, !5100, !4886}
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "mode_fixup", scope: !5755, file: !294, line: 191, baseType: !5768, size: 64, offset: 256)
!5768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5769, size: 64)
!5769 = !DISubroutineType(types: !5770)
!5770 = !{!1026, !5100, !4886, !5157}
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "mode_set", scope: !5755, file: !294, line: 210, baseType: !5772, size: 64, offset: 320)
!5772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5773, size: 64)
!5773 = !DISubroutineType(types: !5774)
!5774 = !{!109, !5100, !5157, !5157, !109, !109, !4851}
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "mode_set_nofb", scope: !5755, file: !294, line: 233, baseType: !5126, size: 64, offset: 384)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "mode_set_base", scope: !5755, file: !294, line: 252, baseType: !5777, size: 64, offset: 448)
!5777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5778, size: 64)
!5778 = !DISubroutineType(types: !5779)
!5779 = !{!109, !5100, !109, !109, !4851}
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "mode_set_base_atomic", scope: !5755, file: !294, line: 269, baseType: !5781, size: 64, offset: 512)
!5781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5782, size: 64)
!5782 = !DISubroutineType(types: !5783)
!5783 = !{!109, !5100, !4851, !109, !109, !293}
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !5755, file: !294, line: 304, baseType: !5126, size: 64, offset: 576)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !5755, file: !294, line: 356, baseType: !5786, size: 64, offset: 640)
!5786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5787, size: 64)
!5787 = !DISubroutineType(types: !5788)
!5788 = !{!109, !5100, !4379}
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_begin", scope: !5755, file: !294, line: 377, baseType: !5790, size: 64, offset: 704)
!5790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5791, size: 64)
!5791 = !DISubroutineType(types: !5792)
!5792 = !{null, !5100, !4379}
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flush", scope: !5755, file: !294, line: 401, baseType: !5790, size: 64, offset: 768)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_enable", scope: !5755, file: !294, line: 423, baseType: !5790, size: 64, offset: 832)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_disable", scope: !5755, file: !294, line: 443, baseType: !5790, size: 64, offset: 896)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "get_scanout_position", scope: !5755, file: !294, line: 488, baseType: !5797, size: 64, offset: 960)
!5797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5798, size: 64)
!5798 = !DISubroutineType(types: !5799)
!5799 = !{!1026, !5100, !1026, !2379, !2379, !5748, !5748, !4886}
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5101, file: !5102, line: 1083, baseType: !4961, size: 3136, offset: 3520)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter_property", scope: !5101, file: !5102, line: 1089, baseType: !4948, size: 64, offset: 6656)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5101, file: !5102, line: 1104, baseType: !5366, size: 64, offset: 6720)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "commit_list", scope: !5101, file: !5102, line: 1121, baseType: !340, size: 128, offset: 6784)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "commit_lock", scope: !5101, file: !5102, line: 1128, baseType: !749, size: 32, offset: 6912)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_entry", scope: !5101, file: !5102, line: 1135, baseType: !1145, size: 64, offset: 6976)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !5101, file: !5102, line: 1142, baseType: !5807, size: 576, offset: 7040)
!5807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_crc", file: !5808, line: 53, size: 576, elements: !5809)
!5808 = !DIFile(filename: "./include/drm/drm_debugfs_crc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e277ec0ede400e3d94103804613a92f2")
!5809 = !{!5810, !5811, !5812, !5813, !5814, !5824, !5825, !5826, !5827}
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5807, file: !5808, line: 54, baseType: !749, size: 32)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !5807, file: !5808, line: 55, baseType: !1029, size: 64, offset: 64)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "opened", scope: !5807, file: !5808, line: 56, baseType: !1026, size: 8, offset: 128)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "overflow", scope: !5807, file: !5808, line: 56, baseType: !1026, size: 8, offset: 136)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5807, file: !5808, line: 57, baseType: !5815, size: 64, offset: 192)
!5815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5816, size: 64)
!5816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_crc_entry", file: !5808, line: 33, size: 384, elements: !5817)
!5817 = !{!5818, !5819, !5820}
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "has_frame_counter", scope: !5816, file: !5808, line: 34, baseType: !1026, size: 8)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !5816, file: !5808, line: 35, baseType: !990, size: 32, offset: 32)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !5816, file: !5808, line: 36, baseType: !5821, size: 320, offset: 64)
!5821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !990, size: 320, elements: !5822)
!5822 = !{!5823}
!5823 = !DISubrange(count: 10)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5807, file: !5808, line: 58, baseType: !109, size: 32, offset: 256)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5807, file: !5808, line: 58, baseType: !109, size: 32, offset: 288)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "values_cnt", scope: !5807, file: !5808, line: 59, baseType: !1337, size: 64, offset: 320)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !5807, file: !5808, line: 60, baseType: !841, size: 192, offset: 384)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "fence_context", scope: !5101, file: !5102, line: 1149, baseType: !7, size: 32, offset: 7616)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "fence_lock", scope: !5101, file: !5102, line: 1156, baseType: !749, size: 32, offset: 7648)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "fence_seqno", scope: !5101, file: !5102, line: 1163, baseType: !423, size: 64, offset: 7680)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_name", scope: !5101, file: !5102, line: 1170, baseType: !2979, size: 256, offset: 7744)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_data", scope: !5101, file: !5102, line: 1177, baseType: !5833, size: 64, offset: 8000)
!5833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5834, size: 64)
!5834 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_self_refresh_data", file: !5102, line: 44, flags: DIFlagFwdDecl)
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !5085, file: !220, line: 669, baseType: !4851, size: 64, offset: 1344)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "old_fb", scope: !5085, file: !220, line: 677, baseType: !4851, size: 64, offset: 1408)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5085, file: !220, line: 680, baseType: !5838, size: 64, offset: 1472)
!5838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5839, size: 64)
!5839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5840)
!5840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_funcs", file: !220, line: 279, size: 832, elements: !5841)
!5841 = !{!5842, !5846, !5850, !5854, !5855, !5859, !5902, !5906, !5910, !5916, !5920, !5921, !5925}
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "update_plane", scope: !5840, file: !220, line: 306, baseType: !5843, size: 64)
!5843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5844, size: 64)
!5844 = !DISubroutineType(types: !5845)
!5845 = !{!109, !5084, !5100, !4851, !109, !109, !7, !7, !990, !990, !990, !990, !4803}
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "disable_plane", scope: !5840, file: !220, line: 329, baseType: !5847, size: 64, offset: 64)
!5847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5848, size: 64)
!5848 = !DISubroutineType(types: !5849)
!5849 = !{!109, !5084, !4803}
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5840, file: !220, line: 339, baseType: !5851, size: 64, offset: 128)
!5851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5852, size: 64)
!5852 = !DISubroutineType(types: !5853)
!5853 = !{null, !5084}
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5840, file: !220, line: 351, baseType: !5851, size: 64, offset: 192)
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5840, file: !220, line: 367, baseType: !5856, size: 64, offset: 256)
!5856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5857, size: 64)
!5857 = !DISubroutineType(types: !5858)
!5858 = !{!109, !5084, !4948, !4970}
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5840, file: !220, line: 401, baseType: !5860, size: 64, offset: 320)
!5860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5861, size: 64)
!5861 = !DISubroutineType(types: !5862)
!5862 = !{!5863, !5084}
!5863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5864, size: 64)
!5864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_state", file: !220, line: 52, size: 1280, elements: !5865)
!5865 = !{!5866, !5867, !5868, !5869, !5872, !5873, !5874, !5875, !5876, !5877, !5878, !5879, !5880, !5881, !5882, !5883, !5884, !5885, !5886, !5887, !5888, !5889, !5897, !5898, !5899, !5900, !5901}
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !5864, file: !220, line: 54, baseType: !5084, size: 64)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5864, file: !220, line: 62, baseType: !5100, size: 64, offset: 64)
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !5864, file: !220, line: 70, baseType: !4851, size: 64, offset: 128)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !5864, file: !220, line: 83, baseType: !5870, size: 64, offset: 192)
!5870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5871, size: 64)
!5871 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !220, line: 83, flags: DIFlagFwdDecl)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_x", scope: !5864, file: !220, line: 92, baseType: !957, size: 32, offset: 256)
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_y", scope: !5864, file: !220, line: 99, baseType: !957, size: 32, offset: 288)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_w", scope: !5864, file: !220, line: 103, baseType: !990, size: 32, offset: 320)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_h", scope: !5864, file: !220, line: 103, baseType: !990, size: 32, offset: 352)
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "src_x", scope: !5864, file: !220, line: 109, baseType: !990, size: 32, offset: 384)
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "src_y", scope: !5864, file: !220, line: 114, baseType: !990, size: 32, offset: 416)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "src_h", scope: !5864, file: !220, line: 117, baseType: !990, size: 32, offset: 448)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "src_w", scope: !5864, file: !220, line: 117, baseType: !990, size: 32, offset: 480)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !5864, file: !220, line: 125, baseType: !399, size: 16, offset: 512)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_blend_mode", scope: !5864, file: !220, line: 133, baseType: !5665, size: 16, offset: 528)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "rotation", scope: !5864, file: !220, line: 140, baseType: !7, size: 32, offset: 544)
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "zpos", scope: !5864, file: !220, line: 155, baseType: !7, size: 32, offset: 576)
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_zpos", scope: !5864, file: !220, line: 164, baseType: !7, size: 32, offset: 608)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "color_encoding", scope: !5864, file: !220, line: 171, baseType: !298, size: 32, offset: 640)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "color_range", scope: !5864, file: !220, line: 178, baseType: !305, size: 32, offset: 672)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "fb_damage_clips", scope: !5864, file: !220, line: 191, baseType: !5385, size: 64, offset: 704)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_damage_clips", scope: !5864, file: !220, line: 201, baseType: !1026, size: 8, offset: 768)
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !5864, file: !220, line: 223, baseType: !5890, size: 128, offset: 800)
!5890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_rect", file: !5891, line: 46, size: 128, elements: !5892)
!5891 = !DIFile(filename: "./include/drm/drm_rect.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "16c059bec9955b5d3fc8d798e393cc6b")
!5892 = !{!5893, !5894, !5895, !5896}
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !5890, file: !5891, line: 47, baseType: !109, size: 32)
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !5890, file: !5891, line: 47, baseType: !109, size: 32, offset: 32)
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !5890, file: !5891, line: 47, baseType: !109, size: 32, offset: 64)
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !5890, file: !5891, line: 47, baseType: !109, size: 32, offset: 96)
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !5864, file: !220, line: 223, baseType: !5890, size: 128, offset: 928)
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "visible", scope: !5864, file: !220, line: 231, baseType: !1026, size: 8, offset: 1056)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter", scope: !5864, file: !220, line: 238, baseType: !219, size: 32, offset: 1088)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5864, file: !220, line: 246, baseType: !5406, size: 64, offset: 1152)
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5864, file: !220, line: 249, baseType: !4379, size: 64, offset: 1216)
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5840, file: !220, line: 411, baseType: !5903, size: 64, offset: 384)
!5903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5904, size: 64)
!5904 = !DISubroutineType(types: !5905)
!5905 = !{null, !5084, !5863}
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5840, file: !220, line: 456, baseType: !5907, size: 64, offset: 448)
!5907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5908, size: 64)
!5908 = !DISubroutineType(types: !5909)
!5909 = !{!109, !5084, !5863, !4948, !4970}
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5840, file: !220, line: 479, baseType: !5911, size: 64, offset: 512)
!5911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5912, size: 64)
!5912 = !DISubroutineType(types: !5913)
!5913 = !{!109, !5084, !5914, !4948, !4981}
!5914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5915, size: 64)
!5915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5864)
!5916 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5840, file: !220, line: 496, baseType: !5917, size: 64, offset: 576)
!5917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5918, size: 64)
!5918 = !DISubroutineType(types: !5919)
!5919 = !{!109, !5084}
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5840, file: !220, line: 507, baseType: !5851, size: 64, offset: 640)
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5840, file: !220, line: 518, baseType: !5922, size: 64, offset: 704)
!5922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5923, size: 64)
!5923 = !DISubroutineType(types: !5924)
!5924 = !{null, !5488, !5914}
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "format_mod_supported", scope: !5840, file: !220, line: 537, baseType: !5926, size: 64, offset: 768)
!5926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5927, size: 64)
!5927 = !DISubroutineType(types: !5928)
!5928 = !{!1026, !5084, !990, !4970}
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5085, file: !220, line: 683, baseType: !4961, size: 3136, offset: 1536)
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5085, file: !220, line: 686, baseType: !310, size: 32, offset: 4672)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5085, file: !220, line: 692, baseType: !7, size: 32, offset: 4704)
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5085, file: !220, line: 695, baseType: !5933, size: 64, offset: 4736)
!5933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5934, size: 64)
!5934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5935)
!5935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_helper_funcs", file: !294, line: 1189, size: 640, elements: !5936)
!5936 = !{!5937, !5941, !5942, !5943, !5944, !5948, !5952, !5953, !5954, !5955}
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_fb", scope: !5935, file: !294, line: 1232, baseType: !5938, size: 64)
!5938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5939, size: 64)
!5939 = !DISubroutineType(types: !5940)
!5940 = !{!109, !5084, !5863}
!5941 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_fb", scope: !5935, file: !294, line: 1243, baseType: !5903, size: 64, offset: 64)
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "begin_fb_access", scope: !5935, file: !294, line: 1266, baseType: !5938, size: 64, offset: 128)
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "end_fb_access", scope: !5935, file: !294, line: 1274, baseType: !5903, size: 64, offset: 192)
!5944 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !5935, file: !294, line: 1311, baseType: !5945, size: 64, offset: 256)
!5945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5946, size: 64)
!5946 = !DISubroutineType(types: !5947)
!5947 = !{!109, !5084, !4379}
!5948 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_update", scope: !5935, file: !294, line: 1328, baseType: !5949, size: 64, offset: 320)
!5949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5950, size: 64)
!5950 = !DISubroutineType(types: !5951)
!5951 = !{null, !5084, !4379}
!5952 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_enable", scope: !5935, file: !294, line: 1353, baseType: !5949, size: 64, offset: 384)
!5953 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_disable", scope: !5935, file: !294, line: 1378, baseType: !5949, size: 64, offset: 448)
!5954 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_async_check", scope: !5935, file: !294, line: 1397, baseType: !5945, size: 64, offset: 512)
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_async_update", scope: !5935, file: !294, line: 1434, baseType: !5949, size: 64, offset: 576)
!5956 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5085, file: !220, line: 710, baseType: !5863, size: 64, offset: 4800)
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "alpha_property", scope: !5085, file: !220, line: 717, baseType: !4948, size: 64, offset: 4864)
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "zpos_property", scope: !5085, file: !220, line: 723, baseType: !4948, size: 64, offset: 4928)
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_property", scope: !5085, file: !220, line: 729, baseType: !4948, size: 64, offset: 4992)
!5960 = !DIDerivedType(tag: DW_TAG_member, name: "blend_mode_property", scope: !5085, file: !220, line: 737, baseType: !4948, size: 64, offset: 5056)
!5961 = !DIDerivedType(tag: DW_TAG_member, name: "color_encoding_property", scope: !5085, file: !220, line: 746, baseType: !4948, size: 64, offset: 5120)
!5962 = !DIDerivedType(tag: DW_TAG_member, name: "color_range_property", scope: !5085, file: !220, line: 754, baseType: !4948, size: 64, offset: 5184)
!5963 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter_property", scope: !5085, file: !220, line: 760, baseType: !4948, size: 64, offset: 5248)
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5081, file: !337, line: 162, baseType: !5863, size: 64, offset: 64)
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !5081, file: !337, line: 162, baseType: !5863, size: 64, offset: 128)
!5966 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !5081, file: !337, line: 162, baseType: !5863, size: 64, offset: 192)
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "crtcs", scope: !4380, file: !337, line: 402, baseType: !5968, size: 64, offset: 256)
!5968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5969, size: 64)
!5969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_crtcs_state", file: !337, line: 165, size: 448, elements: !5970)
!5970 = !{!5971, !5972, !5973, !5974, !5975, !5976, !5977}
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5969, file: !337, line: 166, baseType: !5100, size: 64)
!5972 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5969, file: !337, line: 167, baseType: !5366, size: 64, offset: 64)
!5973 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !5969, file: !337, line: 167, baseType: !5366, size: 64, offset: 128)
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !5969, file: !337, line: 167, baseType: !5366, size: 64, offset: 192)
!5975 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5969, file: !337, line: 177, baseType: !5406, size: 64, offset: 256)
!5976 = !DIDerivedType(tag: DW_TAG_member, name: "out_fence_ptr", scope: !5969, file: !337, line: 179, baseType: !1094, size: 64, offset: 320)
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "last_vblank_count", scope: !5969, file: !337, line: 180, baseType: !484, size: 64, offset: 384)
!5978 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !4380, file: !337, line: 403, baseType: !109, size: 32, offset: 320)
!5979 = !DIDerivedType(tag: DW_TAG_member, name: "connectors", scope: !4380, file: !337, line: 404, baseType: !5980, size: 64, offset: 384)
!5980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5981, size: 64)
!5981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_connnectors_state", file: !337, line: 183, size: 320, elements: !5982)
!5982 = !{!5983, !5984, !5985, !5986, !5987}
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5981, file: !337, line: 184, baseType: !5162, size: 64)
!5984 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5981, file: !337, line: 185, baseType: !5304, size: 64, offset: 64)
!5985 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !5981, file: !337, line: 185, baseType: !5304, size: 64, offset: 128)
!5986 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !5981, file: !337, line: 185, baseType: !5304, size: 64, offset: 192)
!5987 = !DIDerivedType(tag: DW_TAG_member, name: "out_fence_ptr", scope: !5981, file: !337, line: 193, baseType: !1094, size: 64, offset: 256)
!5988 = !DIDerivedType(tag: DW_TAG_member, name: "num_private_objs", scope: !4380, file: !337, line: 405, baseType: !109, size: 32, offset: 448)
!5989 = !DIDerivedType(tag: DW_TAG_member, name: "private_objs", scope: !4380, file: !337, line: 406, baseType: !5990, size: 64, offset: 512)
!5990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5991, size: 64)
!5991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_private_objs_state", file: !337, line: 343, size: 256, elements: !5992)
!5992 = !{!5993, !5995, !5996, !5997}
!5993 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5991, file: !337, line: 344, baseType: !5994, size: 64)
!5994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!5995 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5991, file: !337, line: 345, baseType: !4375, size: 64, offset: 64)
!5996 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !5991, file: !337, line: 345, baseType: !4375, size: 64, offset: 128)
!5997 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !5991, file: !337, line: 345, baseType: !4375, size: 64, offset: 192)
!5998 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !4380, file: !337, line: 408, baseType: !4803, size: 64, offset: 576)
!5999 = !DIDerivedType(tag: DW_TAG_member, name: "fake_commit", scope: !4380, file: !337, line: 420, baseType: !5406, size: 64, offset: 640)
!6000 = !DIDerivedType(tag: DW_TAG_member, name: "commit_work", scope: !4380, file: !337, line: 428, baseType: !2493, size: 256, offset: 704)
!6001 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !4376, file: !337, line: 340, baseType: !5994, size: 64, offset: 64)
!6002 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !336, file: !337, line: 309, baseType: !6003, size: 64, offset: 640)
!6003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6004, size: 64)
!6004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6005)
!6005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_private_state_funcs", file: !337, line: 209, size: 192, elements: !6006)
!6006 = !{!6007, !6011, !6015}
!6007 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !6005, file: !337, line: 221, baseType: !6008, size: 64)
!6008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6009, size: 64)
!6009 = !DISubroutineType(types: !6010)
!6010 = !{!4375, !5994}
!6011 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !6005, file: !337, line: 228, baseType: !6012, size: 64, offset: 64)
!6012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6013, size: 64)
!6013 = !DISubroutineType(types: !6014)
!6014 = !{null, !5994, !4375}
!6015 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !6005, file: !337, line: 240, baseType: !6016, size: 64, offset: 128)
!6016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6017, size: 64)
!6017 = !DISubroutineType(types: !6018)
!6018 = !{null, !5488, !6019}
!6019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6020, size: 64)
!6020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4376)
!6021 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !333, file: !316, line: 745, baseType: !4384, size: 64, offset: 704)
!6022 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !333, file: !316, line: 747, baseType: !5310, size: 64, offset: 768)
!6023 = !DIDerivedType(tag: DW_TAG_member, name: "chain_node", scope: !333, file: !316, line: 749, baseType: !340, size: 128, offset: 832)
!6024 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !333, file: !316, line: 755, baseType: !340, size: 128, offset: 960)
!6025 = !DIDerivedType(tag: DW_TAG_member, name: "timings", scope: !333, file: !316, line: 761, baseType: !6026, size: 64, offset: 1088)
!6026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6027, size: 64)
!6027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6028)
!6028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_bridge_timings", file: !316, line: 672, size: 128, elements: !6029)
!6029 = !{!6030, !6031, !6032, !6033}
!6030 = !DIDerivedType(tag: DW_TAG_member, name: "input_bus_flags", scope: !6028, file: !316, line: 680, baseType: !426, size: 32)
!6031 = !DIDerivedType(tag: DW_TAG_member, name: "setup_time_ps", scope: !6028, file: !316, line: 687, baseType: !426, size: 32, offset: 32)
!6032 = !DIDerivedType(tag: DW_TAG_member, name: "hold_time_ps", scope: !6028, file: !316, line: 694, baseType: !426, size: 32, offset: 64)
!6033 = !DIDerivedType(tag: DW_TAG_member, name: "dual_link", scope: !6028, file: !316, line: 702, baseType: !1026, size: 8, offset: 96)
!6034 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !333, file: !316, line: 763, baseType: !6035, size: 64, offset: 1152)
!6035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6036, size: 64)
!6036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6037)
!6037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_bridge_funcs", file: !316, line: 58, size: 1728, elements: !6038)
!6038 = !{!6039, !6044, !6048, !6054, !6058, !6059, !6060, !6064, !6065, !6066, !6081, !6082, !6083, !6084, !6088, !6089, !6093, !6097, !6101, !6102, !6106, !6110, !6114, !6120, !6124, !6125, !6126}
!6039 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !6037, file: !316, line: 72, baseType: !6040, size: 64)
!6040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6041, size: 64)
!6041 = !DISubroutineType(types: !6042)
!6042 = !{!109, !6043, !315}
!6043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!6044 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !6037, file: !316, line: 83, baseType: !6045, size: 64, offset: 64)
!6045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6046, size: 64)
!6046 = !DISubroutineType(types: !6047)
!6047 = !{null, !6043}
!6048 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !6037, file: !316, line: 116, baseType: !6049, size: 64, offset: 128)
!6049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6050, size: 64)
!6050 = !DISubroutineType(types: !6051)
!6051 = !{!141, !6043, !6052, !4886}
!6052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6053, size: 64)
!6053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5198)
!6054 = !DIDerivedType(tag: DW_TAG_member, name: "mode_fixup", scope: !6037, file: !316, line: 157, baseType: !6055, size: 64, offset: 192)
!6055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6056, size: 64)
!6056 = !DISubroutineType(types: !6057)
!6057 = !{!1026, !6043, !4886, !5157}
!6058 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !6037, file: !316, line: 181, baseType: !6045, size: 64, offset: 256)
!6059 = !DIDerivedType(tag: DW_TAG_member, name: "post_disable", scope: !6037, file: !316, line: 205, baseType: !6045, size: 64, offset: 320)
!6060 = !DIDerivedType(tag: DW_TAG_member, name: "mode_set", scope: !6037, file: !316, line: 233, baseType: !6061, size: 64, offset: 384)
!6061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6062, size: 64)
!6062 = !DISubroutineType(types: !6063)
!6063 = !{null, !6043, !4886, !4886}
!6064 = !DIDerivedType(tag: DW_TAG_member, name: "pre_enable", scope: !6037, file: !316, line: 259, baseType: !6045, size: 64, offset: 448)
!6065 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !6037, file: !316, line: 284, baseType: !6045, size: 64, offset: 512)
!6066 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_pre_enable", scope: !6037, file: !316, line: 303, baseType: !6067, size: 64, offset: 576)
!6067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6068, size: 64)
!6068 = !DISubroutineType(types: !6069)
!6069 = !{null, !6043, !6070}
!6070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6071, size: 64)
!6071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_bridge_state", file: !337, line: 1112, size: 320, elements: !6072)
!6072 = !{!6073, !6074, !6075, !6080}
!6073 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !6071, file: !337, line: 1116, baseType: !4376, size: 128)
!6074 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !6071, file: !337, line: 1121, baseType: !6043, size: 64, offset: 128)
!6075 = !DIDerivedType(tag: DW_TAG_member, name: "input_bus_cfg", scope: !6071, file: !337, line: 1126, baseType: !6076, size: 64, offset: 192)
!6076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_bus_cfg", file: !337, line: 1093, size: 64, elements: !6077)
!6077 = !{!6078, !6079}
!6078 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !6076, file: !337, line: 1101, baseType: !426, size: 32)
!6079 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6076, file: !337, line: 1106, baseType: !426, size: 32, offset: 32)
!6080 = !DIDerivedType(tag: DW_TAG_member, name: "output_bus_cfg", scope: !6071, file: !337, line: 1131, baseType: !6076, size: 64, offset: 256)
!6081 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_enable", scope: !6037, file: !316, line: 323, baseType: !6067, size: 64, offset: 640)
!6082 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_disable", scope: !6037, file: !316, line: 340, baseType: !6067, size: 64, offset: 704)
!6083 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_post_disable", scope: !6037, file: !316, line: 359, baseType: !6067, size: 64, offset: 768)
!6084 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !6037, file: !316, line: 377, baseType: !6085, size: 64, offset: 832)
!6085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6086, size: 64)
!6086 = !DISubroutineType(types: !6087)
!6087 = !{!6070, !6043}
!6088 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !6037, file: !316, line: 391, baseType: !6067, size: 64, offset: 896)
!6089 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_output_bus_fmts", scope: !6037, file: !316, line: 413, baseType: !6090, size: 64, offset: 960)
!6090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6091, size: 64)
!6091 = !DISubroutineType(types: !6092)
!6092 = !{!3493, !6043, !6070, !5366, !5304, !2331}
!6093 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_input_bus_fmts", scope: !6037, file: !316, line: 453, baseType: !6094, size: 64, offset: 1024)
!6094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6095, size: 64)
!6095 = !DISubroutineType(types: !6096)
!6096 = !{!3493, !6043, !6070, !5366, !5304, !426, !2331}
!6097 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !6037, file: !316, line: 485, baseType: !6098, size: 64, offset: 1088)
!6098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6099, size: 64)
!6099 = !DISubroutineType(types: !6100)
!6100 = !{!109, !6043, !6070, !5366, !5304}
!6101 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_reset", scope: !6037, file: !316, line: 515, baseType: !6085, size: 64, offset: 1152)
!6102 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !6037, file: !316, line: 531, baseType: !6103, size: 64, offset: 1216)
!6103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6104, size: 64)
!6104 = !DISubroutineType(types: !6105)
!6105 = !{!206, !6043}
!6106 = !DIDerivedType(tag: DW_TAG_member, name: "get_modes", scope: !6037, file: !316, line: 555, baseType: !6107, size: 64, offset: 1280)
!6107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6108, size: 64)
!6108 = !DISubroutineType(types: !6109)
!6109 = !{!109, !6043, !5162}
!6110 = !DIDerivedType(tag: DW_TAG_member, name: "edid_read", scope: !6037, file: !316, line: 586, baseType: !6111, size: 64, offset: 1344)
!6111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6112, size: 64)
!6112 = !DISubroutineType(types: !6113)
!6113 = !{!5622, !6043, !5162}
!6114 = !DIDerivedType(tag: DW_TAG_member, name: "get_edid", scope: !6037, file: !316, line: 616, baseType: !6115, size: 64, offset: 1408)
!6115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6116, size: 64)
!6116 = !DISubroutineType(types: !6117)
!6117 = !{!6118, !6043, !5162}
!6118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6119, size: 64)
!6119 = !DICompositeType(tag: DW_TAG_structure_type, name: "edid", file: !201, line: 47, flags: DIFlagFwdDecl)
!6120 = !DIDerivedType(tag: DW_TAG_member, name: "hpd_notify", scope: !6037, file: !316, line: 629, baseType: !6121, size: 64, offset: 1472)
!6121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6122, size: 64)
!6122 = !DISubroutineType(types: !6123)
!6123 = !{null, !6043, !206}
!6124 = !DIDerivedType(tag: DW_TAG_member, name: "hpd_enable", scope: !6037, file: !316, line: 645, baseType: !6045, size: 64, offset: 1536)
!6125 = !DIDerivedType(tag: DW_TAG_member, name: "hpd_disable", scope: !6037, file: !316, line: 659, baseType: !6045, size: 64, offset: 1600)
!6126 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_init", scope: !6037, file: !316, line: 666, baseType: !6127, size: 64, offset: 1664)
!6127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6128, size: 64)
!6128 = !DISubroutineType(types: !6129)
!6129 = !{null, !6043, !1145}
!6130 = !DIDerivedType(tag: DW_TAG_member, name: "driver_private", scope: !333, file: !316, line: 765, baseType: !326, size: 64, offset: 1216)
!6131 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !333, file: !316, line: 767, baseType: !319, size: 32, offset: 1280)
!6132 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !333, file: !316, line: 773, baseType: !109, size: 32, offset: 1312)
!6133 = !DIDerivedType(tag: DW_TAG_member, name: "interlace_allowed", scope: !333, file: !316, line: 778, baseType: !1026, size: 8, offset: 1344)
!6134 = !DIDerivedType(tag: DW_TAG_member, name: "pre_enable_prev_first", scope: !333, file: !316, line: 786, baseType: !1026, size: 8, offset: 1352)
!6135 = !DIDerivedType(tag: DW_TAG_member, name: "ddc", scope: !333, file: !316, line: 790, baseType: !5640, size: 64, offset: 1408)
!6136 = !DIDerivedType(tag: DW_TAG_member, name: "hpd_mutex", scope: !333, file: !316, line: 795, baseType: !354, size: 256, offset: 1472)
!6137 = !DIDerivedType(tag: DW_TAG_member, name: "hpd_cb", scope: !333, file: !316, line: 800, baseType: !6138, size: 64, offset: 1728)
!6138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6139, size: 64)
!6139 = !DISubroutineType(types: !6140)
!6140 = !{null, !326, !206}
!6141 = !DIDerivedType(tag: DW_TAG_member, name: "hpd_data", scope: !333, file: !316, line: 805, baseType: !326, size: 64, offset: 1792)
!6142 = !DIDerivedType(tag: DW_TAG_member, name: "connector", scope: !330, file: !3, line: 20, baseType: !5163, size: 10880, offset: 1856)
!6143 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !330, file: !3, line: 21, baseType: !6144, size: 64, offset: 12736)
!6144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6145, size: 64)
!6145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_panel", file: !6146, line: 191, size: 832, elements: !6147)
!6146 = !DIFile(filename: "./include/drm/drm_panel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "412e771e740d97b3b2ff8fdeebab7fb9")
!6147 = !{!6148, !6149, !6152, !6182, !6183, !6184, !6185, !6186, !6187, !6188}
!6148 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !6145, file: !6146, line: 197, baseType: !4390, size: 64)
!6149 = !DIDerivedType(tag: DW_TAG_member, name: "backlight", scope: !6145, file: !6146, line: 208, baseType: !6150, size: 64, offset: 64)
!6150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6151, size: 64)
!6151 = !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_device", file: !6146, line: 32, flags: DIFlagFwdDecl)
!6152 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !6145, file: !6146, line: 215, baseType: !6153, size: 64, offset: 128)
!6153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6154, size: 64)
!6154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6155)
!6155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_panel_funcs", file: !6146, line: 73, size: 512, elements: !6156)
!6156 = !{!6157, !6161, !6162, !6163, !6164, !6168, !6172, !6178}
!6157 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !6155, file: !6146, line: 81, baseType: !6158, size: 64)
!6158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6159, size: 64)
!6159 = !DISubroutineType(types: !6160)
!6160 = !{!109, !6144}
!6161 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !6155, file: !6146, line: 90, baseType: !6158, size: 64, offset: 64)
!6162 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !6155, file: !6146, line: 99, baseType: !6158, size: 64, offset: 128)
!6163 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare", scope: !6155, file: !6146, line: 108, baseType: !6158, size: 64, offset: 192)
!6164 = !DIDerivedType(tag: DW_TAG_member, name: "get_modes", scope: !6155, file: !6146, line: 118, baseType: !6165, size: 64, offset: 256)
!6165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6166, size: 64)
!6166 = !DISubroutineType(types: !6167)
!6167 = !{!109, !6144, !5162}
!6168 = !DIDerivedType(tag: DW_TAG_member, name: "get_orientation", scope: !6155, file: !6146, line: 128, baseType: !6169, size: 64, offset: 320)
!6169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6170, size: 64)
!6170 = !DISubroutineType(types: !6171)
!6171 = !{!276, !6144}
!6172 = !DIDerivedType(tag: DW_TAG_member, name: "get_timings", scope: !6155, file: !6146, line: 138, baseType: !6173, size: 64, offset: 384)
!6173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6174, size: 64)
!6174 = !DISubroutineType(types: !6175)
!6175 = !{!109, !6144, !7, !6176}
!6176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6177, size: 64)
!6177 = !DICompositeType(tag: DW_TAG_structure_type, name: "display_timing", file: !6146, line: 39, flags: DIFlagFwdDecl)
!6178 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_init", scope: !6155, file: !6146, line: 146, baseType: !6179, size: 64, offset: 448)
!6179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6180, size: 64)
!6180 = !DISubroutineType(types: !6181)
!6181 = !{null, !6144, !1145}
!6182 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type", scope: !6145, file: !6146, line: 224, baseType: !109, size: 32, offset: 192)
!6183 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !6145, file: !6146, line: 231, baseType: !340, size: 128, offset: 256)
!6184 = !DIDerivedType(tag: DW_TAG_member, name: "followers", scope: !6145, file: !6146, line: 238, baseType: !340, size: 128, offset: 384)
!6185 = !DIDerivedType(tag: DW_TAG_member, name: "follower_lock", scope: !6145, file: !6146, line: 245, baseType: !354, size: 256, offset: 512)
!6186 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_prev_first", scope: !6145, file: !6146, line: 255, baseType: !1026, size: 8, offset: 768)
!6187 = !DIDerivedType(tag: DW_TAG_member, name: "prepared", scope: !6145, file: !6146, line: 262, baseType: !1026, size: 8, offset: 776)
!6188 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !6145, file: !6146, line: 269, baseType: !1026, size: 8, offset: 784)
!6189 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type", scope: !330, file: !3, line: 22, baseType: !426, size: 32, offset: 12800)
!6190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6043, size: 64)
!6191 = !{!6192, !6194, !6199, !6201, !6203, !6205, !6207, !6209, !6214, !6216, !6218, !6220, !0, !6222, !6227, !6229, !6231, !6233}
!6192 = !DIGlobalVariableExpression(var: !6193, expr: !DIExpression())
!6193 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_bridge_is_panel309", scope: !2, file: !3, line: 239, type: !326, isLocal: true, isDefinition: true)
!6194 = !DIGlobalVariableExpression(var: !6195, expr: !DIExpression())
!6195 = distinct !DIGlobalVariable(scope: null, file: !3, line: 268, type: !6196, isLocal: true, isDefinition: true)
!6196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1012, size: 248, elements: !6197)
!6197 = !{!6198}
!6198 = !DISubrange(count: 31)
!6199 = !DIGlobalVariableExpression(var: !6200, expr: !DIExpression())
!6200 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_panel_bridge_add310", scope: !2, file: !3, line: 273, type: !326, isLocal: true, isDefinition: true)
!6201 = !DIGlobalVariableExpression(var: !6202, expr: !DIExpression())
!6202 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_panel_bridge_add_typed311", scope: !2, file: !3, line: 315, type: !326, isLocal: true, isDefinition: true)
!6203 = !DIGlobalVariableExpression(var: !6204, expr: !DIExpression())
!6204 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_panel_bridge_remove312", scope: !2, file: !3, line: 338, type: !326, isLocal: true, isDefinition: true)
!6205 = !DIGlobalVariableExpression(var: !6206, expr: !DIExpression())
!6206 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_panel_bridge_set_orientation313", scope: !2, file: !3, line: 359, type: !326, isLocal: true, isDefinition: true)
!6207 = !DIGlobalVariableExpression(var: !6208, expr: !DIExpression())
!6208 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_drm_panel_bridge_add314", scope: !2, file: !3, line: 389, type: !326, isLocal: true, isDefinition: true)
!6209 = !DIGlobalVariableExpression(var: !6210, expr: !DIExpression())
!6210 = distinct !DIGlobalVariable(scope: null, file: !3, line: 411, type: !6211, isLocal: true, isDefinition: true)
!6211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1012, size: 240, elements: !6212)
!6212 = !{!6213}
!6213 = !DISubrange(count: 30)
!6214 = !DIGlobalVariableExpression(var: !6215, expr: !DIExpression())
!6215 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_drm_panel_bridge_add_typed315", scope: !2, file: !3, line: 429, type: !326, isLocal: true, isDefinition: true)
!6216 = !DIGlobalVariableExpression(var: !6217, expr: !DIExpression())
!6217 = distinct !DIGlobalVariable(scope: null, file: !3, line: 460, type: !6211, isLocal: true, isDefinition: true)
!6218 = !DIGlobalVariableExpression(var: !6219, expr: !DIExpression())
!6219 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drmm_panel_bridge_add316", scope: !2, file: !3, line: 469, type: !326, isLocal: true, isDefinition: true)
!6220 = !DIGlobalVariableExpression(var: !6221, expr: !DIExpression())
!6221 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_panel_bridge_connector317", scope: !2, file: !3, line: 488, type: !326, isLocal: true, isDefinition: true)
!6222 = !DIGlobalVariableExpression(var: !6223, expr: !DIExpression())
!6223 = distinct !DIGlobalVariable(scope: null, file: !3, line: 69, type: !6224, isLocal: true, isDefinition: true)
!6224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1012, size: 136, elements: !6225)
!6225 = !{!6226}
!6226 = !DISubrange(count: 17)
!6227 = !DIGlobalVariableExpression(var: !6228, expr: !DIExpression())
!6228 = distinct !DIGlobalVariable(scope: null, file: !3, line: 80, type: !2979, isLocal: true, isDefinition: true)
!6229 = !DIGlobalVariableExpression(var: !6230, expr: !DIExpression())
!6230 = distinct !DIGlobalVariable(name: "panel_bridge_connector_helper_funcs", scope: !2, file: !3, line: 46, type: !5553, isLocal: true, isDefinition: true)
!6231 = !DIGlobalVariableExpression(var: !6232, expr: !DIExpression())
!6232 = distinct !DIGlobalVariable(name: "panel_bridge_connector_funcs", scope: !2, file: !3, line: 50, type: !5270, isLocal: true, isDefinition: true)
!6233 = !DIGlobalVariableExpression(var: !6234, expr: !DIExpression())
!6234 = distinct !DIGlobalVariable(scope: null, file: !3, line: 208, type: !1011, isLocal: true, isDefinition: true)
!6235 = !{i32 7, !"Dwarf Version", i32 5}
!6236 = !{i32 2, !"Debug Info Version", i32 3}
!6237 = !{i32 1, !"wchar_size", i32 2}
!6238 = !{i32 8, !"cf-protection-branch", i32 1}
!6239 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6240 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6241 = !{i32 1, !"Code Model", i32 2}
!6242 = !{i32 1, !"override-stack-alignment", i32 8}
!6243 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6244 = distinct !DISubprogram(name: "drm_bridge_is_panel", scope: !3, file: !3, line: 235, type: !6245, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6249)
!6245 = !DISubroutineType(types: !6246)
!6246 = !{!1026, !6247}
!6247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6248, size: 64)
!6248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!6249 = !{!6250}
!6250 = !DILocalVariable(name: "bridge", arg: 1, scope: !6244, file: !3, line: 235, type: !6247)
!6251 = !DILocation(line: 235, column: 51, scope: !6244)
!6252 = !DILocation(line: 237, column: 9, scope: !6244)
!6253 = !DILocation(line: 237, column: 17, scope: !6244)
!6254 = !DILocation(line: 237, column: 23, scope: !6244)
!6255 = !DILocation(line: 237, column: 2, scope: !6244)
!6256 = distinct !DISubprogram(name: "drm_panel_bridge_add", scope: !3, file: !3, line: 266, type: !6257, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6259)
!6257 = !DISubroutineType(types: !6258)
!6258 = !{!6043, !6144}
!6259 = !{!6260, !6261, !6264}
!6260 = !DILocalVariable(name: "panel", arg: 1, scope: !6256, file: !3, line: 266, type: !6144)
!6261 = !DILocalVariable(name: "__ret_warn_on", scope: !6262, file: !3, line: 268, type: !109)
!6262 = distinct !DILexicalBlock(scope: !6263, file: !3, line: 268, column: 6)
!6263 = distinct !DILexicalBlock(scope: !6256, file: !3, line: 268, column: 6)
!6264 = !DILocalVariable(name: "__flags", scope: !6265, file: !3, line: 268, type: !109)
!6265 = distinct !DILexicalBlock(scope: !6266, file: !3, line: 268, column: 6)
!6266 = distinct !DILexicalBlock(scope: !6262, file: !3, line: 268, column: 6)
!6267 = !DILocation(line: 266, column: 59, scope: !6256)
!6268 = !DILocation(line: 268, column: 6, scope: !6262)
!6269 = !DILocation(line: 268, column: 6, scope: !6266)
!6270 = !DILocation(line: 268, column: 6, scope: !6265)
!6271 = !DILocation(line: 268, column: 6, scope: !6272)
!6272 = distinct !DILexicalBlock(scope: !6265, file: !3, line: 268, column: 6)
!6273 = !DILocation(line: 268, column: 6, scope: !6274)
!6274 = distinct !DILexicalBlock(scope: !6265, file: !3, line: 268, column: 6)
!6275 = !{i64 2155540653, i64 2155540682, i64 2155540728, i64 2155540786, i64 2155540840, i64 2155540894, i64 2155540949, i64 2155540980, i64 2155541288, i64 2155541294, i64 2155541341, i64 2155541364, i64 2155541390}
!6276 = !DILocation(line: 268, column: 6, scope: !6277)
!6277 = distinct !DILexicalBlock(scope: !6265, file: !3, line: 268, column: 6)
!6278 = !DILocation(line: 268, column: 6, scope: !6263)
!6279 = !DILocation(line: 268, column: 6, scope: !6256)
!6280 = !DILocation(line: 269, column: 10, scope: !6263)
!6281 = !DILocation(line: 269, column: 3, scope: !6263)
!6282 = !DILocation(line: 271, column: 36, scope: !6256)
!6283 = !DILocation(line: 271, column: 43, scope: !6256)
!6284 = !DILocation(line: 271, column: 50, scope: !6256)
!6285 = !DILocation(line: 271, column: 9, scope: !6256)
!6286 = !DILocation(line: 271, column: 2, scope: !6256)
!6287 = !DILocation(line: 272, column: 1, scope: !6256)
!6288 = distinct !DISubprogram(name: "ERR_PTR", scope: !6289, file: !6289, line: 39, type: !6290, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6292)
!6289 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6290 = !DISubroutineType(types: !6291)
!6291 = !{!326, !1295}
!6292 = !{!6293}
!6293 = !DILocalVariable(name: "error", arg: 1, scope: !6288, file: !6289, line: 39, type: !1295)
!6294 = !DILocation(line: 39, column: 48, scope: !6288)
!6295 = !DILocation(line: 41, column: 18, scope: !6288)
!6296 = !DILocation(line: 41, column: 9, scope: !6288)
!6297 = !DILocation(line: 41, column: 2, scope: !6288)
!6298 = distinct !DISubprogram(name: "drm_panel_bridge_add_typed", scope: !3, file: !3, line: 288, type: !6299, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6301)
!6299 = !DISubroutineType(types: !6300)
!6300 = !{!6043, !6144, !426}
!6301 = !{!6302, !6303, !6304}
!6302 = !DILocalVariable(name: "panel", arg: 1, scope: !6298, file: !3, line: 288, type: !6144)
!6303 = !DILocalVariable(name: "connector_type", arg: 2, scope: !6298, file: !3, line: 289, type: !426)
!6304 = !DILocalVariable(name: "panel_bridge", scope: !6298, file: !3, line: 291, type: !329)
!6305 = !DILocation(line: 288, column: 65, scope: !6298)
!6306 = !DILocation(line: 289, column: 16, scope: !6298)
!6307 = !DILocation(line: 291, column: 2, scope: !6298)
!6308 = !DILocation(line: 291, column: 23, scope: !6298)
!6309 = !DILocation(line: 293, column: 7, scope: !6310)
!6310 = distinct !DILexicalBlock(scope: !6298, file: !3, line: 293, column: 6)
!6311 = !DILocation(line: 293, column: 6, scope: !6298)
!6312 = !DILocation(line: 294, column: 10, scope: !6310)
!6313 = !DILocation(line: 294, column: 3, scope: !6310)
!6314 = !DILocation(line: 296, column: 30, scope: !6298)
!6315 = !DILocation(line: 296, column: 37, scope: !6298)
!6316 = !DILocation(line: 296, column: 17, scope: !6298)
!6317 = !DILocation(line: 296, column: 15, scope: !6298)
!6318 = !DILocation(line: 298, column: 7, scope: !6319)
!6319 = distinct !DILexicalBlock(scope: !6298, file: !3, line: 298, column: 6)
!6320 = !DILocation(line: 298, column: 6, scope: !6298)
!6321 = !DILocation(line: 299, column: 10, scope: !6319)
!6322 = !DILocation(line: 299, column: 3, scope: !6319)
!6323 = !DILocation(line: 301, column: 33, scope: !6298)
!6324 = !DILocation(line: 301, column: 2, scope: !6298)
!6325 = !DILocation(line: 301, column: 16, scope: !6298)
!6326 = !DILocation(line: 301, column: 31, scope: !6298)
!6327 = !DILocation(line: 302, column: 24, scope: !6298)
!6328 = !DILocation(line: 302, column: 2, scope: !6298)
!6329 = !DILocation(line: 302, column: 16, scope: !6298)
!6330 = !DILocation(line: 302, column: 22, scope: !6298)
!6331 = !DILocation(line: 304, column: 2, scope: !6298)
!6332 = !DILocation(line: 304, column: 16, scope: !6298)
!6333 = !DILocation(line: 304, column: 23, scope: !6298)
!6334 = !DILocation(line: 304, column: 29, scope: !6298)
!6335 = !DILocation(line: 308, column: 2, scope: !6298)
!6336 = !DILocation(line: 308, column: 16, scope: !6298)
!6337 = !DILocation(line: 308, column: 23, scope: !6298)
!6338 = !DILocation(line: 308, column: 27, scope: !6298)
!6339 = !DILocation(line: 309, column: 30, scope: !6298)
!6340 = !DILocation(line: 309, column: 2, scope: !6298)
!6341 = !DILocation(line: 309, column: 16, scope: !6298)
!6342 = !DILocation(line: 309, column: 23, scope: !6298)
!6343 = !DILocation(line: 309, column: 28, scope: !6298)
!6344 = !DILocation(line: 311, column: 18, scope: !6298)
!6345 = !DILocation(line: 311, column: 32, scope: !6298)
!6346 = !DILocation(line: 311, column: 2, scope: !6298)
!6347 = !DILocation(line: 313, column: 10, scope: !6298)
!6348 = !DILocation(line: 313, column: 24, scope: !6298)
!6349 = !DILocation(line: 313, column: 2, scope: !6298)
!6350 = !DILocation(line: 314, column: 1, scope: !6298)
!6351 = distinct !DISubprogram(name: "devm_kzalloc", scope: !94, file: !94, line: 312, type: !6352, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6354)
!6352 = !DISubroutineType(types: !6353)
!6353 = !{!326, !4390, !1337, !327}
!6354 = !{!6355, !6356, !6357}
!6355 = !DILocalVariable(name: "dev", arg: 1, scope: !6351, file: !94, line: 312, type: !4390)
!6356 = !DILocalVariable(name: "size", arg: 2, scope: !6351, file: !94, line: 312, type: !1337)
!6357 = !DILocalVariable(name: "gfp", arg: 3, scope: !6351, file: !94, line: 312, type: !327)
!6358 = !DILocation(line: 312, column: 49, scope: !6351)
!6359 = !DILocation(line: 312, column: 61, scope: !6351)
!6360 = !DILocation(line: 312, column: 73, scope: !6351)
!6361 = !DILocation(line: 314, column: 22, scope: !6351)
!6362 = !DILocation(line: 314, column: 27, scope: !6351)
!6363 = !DILocation(line: 314, column: 33, scope: !6351)
!6364 = !DILocation(line: 314, column: 37, scope: !6351)
!6365 = !DILocation(line: 314, column: 9, scope: !6351)
!6366 = !DILocation(line: 314, column: 2, scope: !6351)
!6367 = !DISubprogram(name: "drm_bridge_add", scope: !316, file: !316, line: 814, type: !6046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6368 = distinct !DISubprogram(name: "drm_panel_bridge_remove", scope: !3, file: !3, line: 323, type: !6046, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6369)
!6369 = !{!6370, !6371}
!6370 = !DILocalVariable(name: "bridge", arg: 1, scope: !6368, file: !3, line: 323, type: !6043)
!6371 = !DILocalVariable(name: "panel_bridge", scope: !6368, file: !3, line: 325, type: !329)
!6372 = !DILocation(line: 323, column: 49, scope: !6368)
!6373 = !DILocation(line: 325, column: 2, scope: !6368)
!6374 = !DILocation(line: 325, column: 23, scope: !6368)
!6375 = !DILocation(line: 327, column: 7, scope: !6376)
!6376 = distinct !DILexicalBlock(scope: !6368, file: !3, line: 327, column: 6)
!6377 = !DILocation(line: 327, column: 6, scope: !6368)
!6378 = !DILocation(line: 328, column: 3, scope: !6376)
!6379 = !DILocation(line: 330, column: 6, scope: !6380)
!6380 = distinct !DILexicalBlock(scope: !6368, file: !3, line: 330, column: 6)
!6381 = !DILocation(line: 330, column: 14, scope: !6380)
!6382 = !DILocation(line: 330, column: 20, scope: !6380)
!6383 = !DILocation(line: 330, column: 6, scope: !6368)
!6384 = !DILocation(line: 331, column: 3, scope: !6380)
!6385 = !DILocation(line: 333, column: 44, scope: !6368)
!6386 = !DILocation(line: 333, column: 17, scope: !6368)
!6387 = !DILocation(line: 333, column: 15, scope: !6368)
!6388 = !DILocation(line: 335, column: 20, scope: !6368)
!6389 = !DILocation(line: 335, column: 2, scope: !6368)
!6390 = !DILocation(line: 336, column: 13, scope: !6368)
!6391 = !DILocation(line: 336, column: 27, scope: !6368)
!6392 = !DILocation(line: 336, column: 34, scope: !6368)
!6393 = !DILocation(line: 336, column: 39, scope: !6368)
!6394 = !DILocation(line: 336, column: 2, scope: !6368)
!6395 = !DILocation(line: 337, column: 1, scope: !6368)
!6396 = distinct !DISubprogram(name: "drm_bridge_to_panel_bridge", scope: !3, file: !3, line: 26, type: !6397, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6399)
!6397 = !DISubroutineType(types: !6398)
!6398 = !{!329, !6043}
!6399 = !{!6400, !6401}
!6400 = !DILocalVariable(name: "bridge", arg: 1, scope: !6396, file: !3, line: 26, type: !6043)
!6401 = !DILocalVariable(name: "__mptr", scope: !6402, file: !3, line: 28, type: !326)
!6402 = distinct !DILexicalBlock(scope: !6396, file: !3, line: 28, column: 9)
!6403 = !DILocation(line: 26, column: 47, scope: !6396)
!6404 = !DILocation(line: 28, column: 9, scope: !6402)
!6405 = !DILocation(line: 28, column: 9, scope: !6396)
!6406 = !DILocation(line: 28, column: 2, scope: !6396)
!6407 = !DISubprogram(name: "drm_bridge_remove", scope: !316, file: !316, line: 816, type: !6046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6408 = !DISubprogram(name: "devm_kfree", scope: !94, file: !94, line: 342, type: !6409, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6409 = !DISubroutineType(types: !6410)
!6410 = !{null, !4390, !2073}
!6411 = distinct !DISubprogram(name: "drm_panel_bridge_set_orientation", scope: !3, file: !3, line: 349, type: !6412, scopeLine: 351, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6414)
!6412 = !DISubroutineType(types: !6413)
!6413 = !{!109, !5162, !6043}
!6414 = !{!6415, !6416, !6417}
!6415 = !DILocalVariable(name: "connector", arg: 1, scope: !6411, file: !3, line: 349, type: !5162)
!6416 = !DILocalVariable(name: "bridge", arg: 2, scope: !6411, file: !3, line: 350, type: !6043)
!6417 = !DILocalVariable(name: "panel_bridge", scope: !6411, file: !3, line: 352, type: !329)
!6418 = !DILocation(line: 349, column: 60, scope: !6411)
!6419 = !DILocation(line: 350, column: 29, scope: !6411)
!6420 = !DILocation(line: 352, column: 2, scope: !6411)
!6421 = !DILocation(line: 352, column: 23, scope: !6411)
!6422 = !DILocation(line: 354, column: 44, scope: !6411)
!6423 = !DILocation(line: 354, column: 17, scope: !6411)
!6424 = !DILocation(line: 354, column: 15, scope: !6411)
!6425 = !DILocation(line: 356, column: 50, scope: !6411)
!6426 = !DILocation(line: 357, column: 8, scope: !6411)
!6427 = !DILocation(line: 357, column: 22, scope: !6411)
!6428 = !DILocation(line: 356, column: 9, scope: !6411)
!6429 = !DILocation(line: 358, column: 1, scope: !6411)
!6430 = !DILocation(line: 356, column: 2, scope: !6411)
!6431 = !DISubprogram(name: "drm_connector_set_orientation_from_panel", scope: !201, file: !201, line: 2037, type: !6432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6432 = !DISubroutineType(types: !6433)
!6433 = !{!109, !5162, !6144}
!6434 = distinct !DISubprogram(name: "devm_drm_panel_bridge_add", scope: !3, file: !3, line: 380, type: !6435, scopeLine: 382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6437)
!6435 = !DISubroutineType(types: !6436)
!6436 = !{!6043, !4390, !6144}
!6437 = !{!6438, !6439, !6440, !6443}
!6438 = !DILocalVariable(name: "dev", arg: 1, scope: !6434, file: !3, line: 380, type: !4390)
!6439 = !DILocalVariable(name: "panel", arg: 2, scope: !6434, file: !3, line: 381, type: !6144)
!6440 = !DILocalVariable(name: "__ret_warn_on", scope: !6441, file: !3, line: 383, type: !109)
!6441 = distinct !DILexicalBlock(scope: !6442, file: !3, line: 383, column: 6)
!6442 = distinct !DILexicalBlock(scope: !6434, file: !3, line: 383, column: 6)
!6443 = !DILocalVariable(name: "__flags", scope: !6444, file: !3, line: 383, type: !109)
!6444 = distinct !DILexicalBlock(scope: !6445, file: !3, line: 383, column: 6)
!6445 = distinct !DILexicalBlock(scope: !6441, file: !3, line: 383, column: 6)
!6446 = !DILocation(line: 380, column: 61, scope: !6434)
!6447 = !DILocation(line: 381, column: 29, scope: !6434)
!6448 = !DILocation(line: 383, column: 6, scope: !6441)
!6449 = !DILocation(line: 383, column: 6, scope: !6445)
!6450 = !DILocation(line: 383, column: 6, scope: !6444)
!6451 = !DILocation(line: 383, column: 6, scope: !6452)
!6452 = distinct !DILexicalBlock(scope: !6444, file: !3, line: 383, column: 6)
!6453 = !DILocation(line: 383, column: 6, scope: !6454)
!6454 = distinct !DILexicalBlock(scope: !6444, file: !3, line: 383, column: 6)
!6455 = !{i64 2155554421, i64 2155554450, i64 2155554496, i64 2155554554, i64 2155554608, i64 2155554662, i64 2155554717, i64 2155554748, i64 2155555056, i64 2155555062, i64 2155555109, i64 2155555132, i64 2155555158}
!6456 = !DILocation(line: 383, column: 6, scope: !6457)
!6457 = distinct !DILexicalBlock(scope: !6444, file: !3, line: 383, column: 6)
!6458 = !DILocation(line: 383, column: 6, scope: !6442)
!6459 = !DILocation(line: 383, column: 6, scope: !6434)
!6460 = !DILocation(line: 384, column: 10, scope: !6442)
!6461 = !DILocation(line: 384, column: 3, scope: !6442)
!6462 = !DILocation(line: 386, column: 41, scope: !6434)
!6463 = !DILocation(line: 386, column: 46, scope: !6434)
!6464 = !DILocation(line: 387, column: 13, scope: !6434)
!6465 = !DILocation(line: 387, column: 20, scope: !6434)
!6466 = !DILocation(line: 386, column: 9, scope: !6434)
!6467 = !DILocation(line: 386, column: 2, scope: !6434)
!6468 = !DILocation(line: 388, column: 1, scope: !6434)
!6469 = distinct !DISubprogram(name: "devm_drm_panel_bridge_add_typed", scope: !3, file: !3, line: 405, type: !6470, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6472)
!6470 = !DISubroutineType(types: !6471)
!6471 = !{!6043, !4390, !6144, !426}
!6472 = !{!6473, !6474, !6475, !6476, !6477}
!6473 = !DILocalVariable(name: "dev", arg: 1, scope: !6469, file: !3, line: 405, type: !4390)
!6474 = !DILocalVariable(name: "panel", arg: 2, scope: !6469, file: !3, line: 406, type: !6144)
!6475 = !DILocalVariable(name: "connector_type", arg: 3, scope: !6469, file: !3, line: 407, type: !426)
!6476 = !DILocalVariable(name: "ptr", scope: !6469, file: !3, line: 409, type: !6190)
!6477 = !DILocalVariable(name: "bridge", scope: !6469, file: !3, line: 409, type: !6043)
!6478 = !DILocation(line: 405, column: 67, scope: !6469)
!6479 = !DILocation(line: 406, column: 28, scope: !6469)
!6480 = !DILocation(line: 407, column: 14, scope: !6469)
!6481 = !DILocation(line: 409, column: 2, scope: !6469)
!6482 = !DILocation(line: 409, column: 22, scope: !6469)
!6483 = !DILocation(line: 409, column: 28, scope: !6469)
!6484 = !DILocation(line: 411, column: 8, scope: !6469)
!6485 = !DILocation(line: 411, column: 6, scope: !6469)
!6486 = !DILocation(line: 413, column: 7, scope: !6487)
!6487 = distinct !DILexicalBlock(scope: !6469, file: !3, line: 413, column: 6)
!6488 = !DILocation(line: 413, column: 6, scope: !6469)
!6489 = !DILocation(line: 414, column: 10, scope: !6487)
!6490 = !DILocation(line: 414, column: 3, scope: !6487)
!6491 = !DILocation(line: 416, column: 38, scope: !6469)
!6492 = !DILocation(line: 416, column: 45, scope: !6469)
!6493 = !DILocation(line: 416, column: 11, scope: !6469)
!6494 = !DILocation(line: 416, column: 9, scope: !6469)
!6495 = !DILocation(line: 417, column: 13, scope: !6496)
!6496 = distinct !DILexicalBlock(scope: !6469, file: !3, line: 417, column: 6)
!6497 = !DILocation(line: 417, column: 6, scope: !6496)
!6498 = !DILocation(line: 417, column: 6, scope: !6469)
!6499 = !DILocation(line: 418, column: 15, scope: !6500)
!6500 = distinct !DILexicalBlock(scope: !6496, file: !3, line: 417, column: 22)
!6501 = !DILocation(line: 418, column: 3, scope: !6500)
!6502 = !DILocation(line: 419, column: 10, scope: !6500)
!6503 = !DILocation(line: 419, column: 3, scope: !6500)
!6504 = !DILocation(line: 422, column: 34, scope: !6469)
!6505 = !DILocation(line: 422, column: 41, scope: !6469)
!6506 = !{i8 0, i8 2}
!6507 = !DILocation(line: 422, column: 2, scope: !6469)
!6508 = !DILocation(line: 422, column: 10, scope: !6469)
!6509 = !DILocation(line: 422, column: 32, scope: !6469)
!6510 = !DILocation(line: 424, column: 9, scope: !6469)
!6511 = !DILocation(line: 424, column: 3, scope: !6469)
!6512 = !DILocation(line: 424, column: 7, scope: !6469)
!6513 = !DILocation(line: 425, column: 13, scope: !6469)
!6514 = !DILocation(line: 425, column: 18, scope: !6469)
!6515 = !DILocation(line: 425, column: 2, scope: !6469)
!6516 = !DILocation(line: 427, column: 9, scope: !6469)
!6517 = !DILocation(line: 427, column: 2, scope: !6469)
!6518 = !DILocation(line: 428, column: 1, scope: !6469)
!6519 = !DISubprogram(name: "__devres_alloc_node", scope: !94, file: !94, line: 274, type: !6520, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6520 = !DISubroutineType(types: !6521)
!6521 = !{!326, !6522, !1337, !327, !109, !1029}
!6522 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_release_t", file: !94, line: 271, baseType: !6523)
!6523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6524, size: 64)
!6524 = !DISubroutineType(types: !6525)
!6525 = !{null, !4390, !326}
!6526 = distinct !DISubprogram(name: "devm_drm_panel_bridge_release", scope: !3, file: !3, line: 361, type: !6524, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6527)
!6527 = !{!6528, !6529, !6530}
!6528 = !DILocalVariable(name: "dev", arg: 1, scope: !6526, file: !3, line: 361, type: !4390)
!6529 = !DILocalVariable(name: "res", arg: 2, scope: !6526, file: !3, line: 361, type: !326)
!6530 = !DILocalVariable(name: "bridge", scope: !6526, file: !3, line: 363, type: !6043)
!6531 = !DILocation(line: 361, column: 58, scope: !6526)
!6532 = !DILocation(line: 361, column: 69, scope: !6526)
!6533 = !DILocation(line: 363, column: 2, scope: !6526)
!6534 = !DILocation(line: 363, column: 21, scope: !6526)
!6535 = !DILocation(line: 363, column: 53, scope: !6526)
!6536 = !DILocation(line: 363, column: 30, scope: !6526)
!6537 = !DILocation(line: 365, column: 7, scope: !6538)
!6538 = distinct !DILexicalBlock(scope: !6526, file: !3, line: 365, column: 6)
!6539 = !DILocation(line: 365, column: 6, scope: !6526)
!6540 = !DILocation(line: 366, column: 3, scope: !6538)
!6541 = !DILocation(line: 368, column: 20, scope: !6526)
!6542 = !DILocation(line: 368, column: 2, scope: !6526)
!6543 = !DILocation(line: 369, column: 1, scope: !6526)
!6544 = distinct !DISubprogram(name: "IS_ERR", scope: !6289, file: !6289, line: 59, type: !6545, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6547)
!6545 = !DISubroutineType(types: !6546)
!6546 = !{!1026, !2073}
!6547 = !{!6548}
!6548 = !DILocalVariable(name: "ptr", arg: 1, scope: !6544, file: !6289, line: 59, type: !2073)
!6549 = !DILocation(line: 59, column: 60, scope: !6544)
!6550 = !DILocation(line: 61, column: 9, scope: !6544)
!6551 = !DILocation(line: 61, column: 2, scope: !6544)
!6552 = !DISubprogram(name: "devres_free", scope: !94, file: !94, line: 285, type: !1213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6553 = !DISubprogram(name: "devres_add", scope: !94, file: !94, line: 286, type: !6524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6554 = distinct !DISubprogram(name: "drmm_panel_bridge_add", scope: !3, file: !3, line: 450, type: !6555, scopeLine: 452, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6557)
!6555 = !DISubroutineType(types: !6556)
!6556 = !{!6043, !4384, !6144}
!6557 = !{!6558, !6559, !6560, !6561}
!6558 = !DILocalVariable(name: "drm", arg: 1, scope: !6554, file: !3, line: 450, type: !4384)
!6559 = !DILocalVariable(name: "panel", arg: 2, scope: !6554, file: !3, line: 451, type: !6144)
!6560 = !DILocalVariable(name: "bridge", scope: !6554, file: !3, line: 453, type: !6043)
!6561 = !DILocalVariable(name: "ret", scope: !6554, file: !3, line: 454, type: !109)
!6562 = !DILocation(line: 450, column: 61, scope: !6554)
!6563 = !DILocation(line: 451, column: 25, scope: !6554)
!6564 = !DILocation(line: 453, column: 2, scope: !6554)
!6565 = !DILocation(line: 453, column: 21, scope: !6554)
!6566 = !DILocation(line: 454, column: 2, scope: !6554)
!6567 = !DILocation(line: 454, column: 6, scope: !6554)
!6568 = !DILocation(line: 456, column: 38, scope: !6554)
!6569 = !DILocation(line: 456, column: 45, scope: !6554)
!6570 = !DILocation(line: 456, column: 52, scope: !6554)
!6571 = !DILocation(line: 456, column: 11, scope: !6554)
!6572 = !DILocation(line: 456, column: 9, scope: !6554)
!6573 = !DILocation(line: 457, column: 13, scope: !6574)
!6574 = distinct !DILexicalBlock(scope: !6554, file: !3, line: 457, column: 6)
!6575 = !DILocation(line: 457, column: 6, scope: !6574)
!6576 = !DILocation(line: 457, column: 6, scope: !6554)
!6577 = !DILocation(line: 458, column: 10, scope: !6574)
!6578 = !DILocation(line: 458, column: 3, scope: !6574)
!6579 = !DILocation(line: 460, column: 8, scope: !6554)
!6580 = !DILocation(line: 460, column: 6, scope: !6554)
!6581 = !DILocation(line: 462, column: 6, scope: !6582)
!6582 = distinct !DILexicalBlock(scope: !6554, file: !3, line: 462, column: 6)
!6583 = !DILocation(line: 462, column: 6, scope: !6554)
!6584 = !DILocation(line: 463, column: 18, scope: !6582)
!6585 = !DILocation(line: 463, column: 10, scope: !6582)
!6586 = !DILocation(line: 463, column: 3, scope: !6582)
!6587 = !DILocation(line: 465, column: 34, scope: !6554)
!6588 = !DILocation(line: 465, column: 41, scope: !6554)
!6589 = !DILocation(line: 465, column: 2, scope: !6554)
!6590 = !DILocation(line: 465, column: 10, scope: !6554)
!6591 = !DILocation(line: 465, column: 32, scope: !6554)
!6592 = !DILocation(line: 467, column: 9, scope: !6554)
!6593 = !DILocation(line: 467, column: 2, scope: !6554)
!6594 = !DILocation(line: 468, column: 1, scope: !6554)
!6595 = !DISubprogram(name: "__drmm_add_action_or_reset", scope: !6596, file: !6596, line: 44, type: !6597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6596 = !DIFile(filename: "./include/drm/drm_managed.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2765e45efba520130e79a6037b825728")
!6597 = !DISubroutineType(types: !6598)
!6598 = !{!109, !4384, !6599, !326, !1029}
!6599 = !DIDerivedType(tag: DW_TAG_typedef, name: "drmres_release_t", file: !6596, line: 13, baseType: !6600)
!6600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6601, size: 64)
!6601 = !DISubroutineType(types: !6602)
!6602 = !{null, !4384, !326}
!6603 = distinct !DISubprogram(name: "drmm_drm_panel_bridge_release", scope: !3, file: !3, line: 431, type: !6601, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6604)
!6604 = !{!6605, !6606, !6607}
!6605 = !DILocalVariable(name: "drm", arg: 1, scope: !6603, file: !3, line: 431, type: !4384)
!6606 = !DILocalVariable(name: "ptr", arg: 2, scope: !6603, file: !3, line: 431, type: !326)
!6607 = !DILocalVariable(name: "bridge", scope: !6603, file: !3, line: 433, type: !6043)
!6608 = !DILocation(line: 431, column: 62, scope: !6603)
!6609 = !DILocation(line: 431, column: 73, scope: !6603)
!6610 = !DILocation(line: 433, column: 2, scope: !6603)
!6611 = !DILocation(line: 433, column: 21, scope: !6603)
!6612 = !DILocation(line: 433, column: 30, scope: !6603)
!6613 = !DILocation(line: 435, column: 26, scope: !6603)
!6614 = !DILocation(line: 435, column: 2, scope: !6603)
!6615 = !DILocation(line: 436, column: 1, scope: !6603)
!6616 = distinct !DISubprogram(name: "drm_panel_bridge_connector", scope: !3, file: !3, line: 480, type: !6617, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6619)
!6617 = !DISubroutineType(types: !6618)
!6618 = !{!5162, !6043}
!6619 = !{!6620, !6621}
!6620 = !DILocalVariable(name: "bridge", arg: 1, scope: !6616, file: !3, line: 480, type: !6043)
!6621 = !DILocalVariable(name: "panel_bridge", scope: !6616, file: !3, line: 482, type: !329)
!6622 = !DILocation(line: 480, column: 69, scope: !6616)
!6623 = !DILocation(line: 482, column: 2, scope: !6616)
!6624 = !DILocation(line: 482, column: 23, scope: !6616)
!6625 = !DILocation(line: 484, column: 44, scope: !6616)
!6626 = !DILocation(line: 484, column: 17, scope: !6616)
!6627 = !DILocation(line: 484, column: 15, scope: !6616)
!6628 = !DILocation(line: 486, column: 10, scope: !6616)
!6629 = !DILocation(line: 486, column: 24, scope: !6616)
!6630 = !DILocation(line: 487, column: 1, scope: !6616)
!6631 = !DILocation(line: 486, column: 2, scope: !6616)
!6632 = distinct !DISubprogram(name: "panel_bridge_attach", scope: !3, file: !3, line: 58, type: !6041, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6633)
!6633 = !{!6634, !6635, !6636, !6637, !6638}
!6634 = !DILocalVariable(name: "bridge", arg: 1, scope: !6632, file: !3, line: 58, type: !6043)
!6635 = !DILocalVariable(name: "flags", arg: 2, scope: !6632, file: !3, line: 59, type: !315)
!6636 = !DILocalVariable(name: "panel_bridge", scope: !6632, file: !3, line: 61, type: !329)
!6637 = !DILocalVariable(name: "connector", scope: !6632, file: !3, line: 62, type: !5162)
!6638 = !DILocalVariable(name: "ret", scope: !6632, file: !3, line: 63, type: !109)
!6639 = !DILocation(line: 58, column: 51, scope: !6632)
!6640 = !DILocation(line: 59, column: 40, scope: !6632)
!6641 = !DILocation(line: 61, column: 2, scope: !6632)
!6642 = !DILocation(line: 61, column: 23, scope: !6632)
!6643 = !DILocation(line: 61, column: 65, scope: !6632)
!6644 = !DILocation(line: 61, column: 38, scope: !6632)
!6645 = !DILocation(line: 62, column: 2, scope: !6632)
!6646 = !DILocation(line: 62, column: 24, scope: !6632)
!6647 = !DILocation(line: 62, column: 37, scope: !6632)
!6648 = !DILocation(line: 62, column: 51, scope: !6632)
!6649 = !DILocation(line: 63, column: 2, scope: !6632)
!6650 = !DILocation(line: 63, column: 6, scope: !6632)
!6651 = !DILocation(line: 65, column: 6, scope: !6652)
!6652 = distinct !DILexicalBlock(scope: !6632, file: !3, line: 65, column: 6)
!6653 = !DILocation(line: 65, column: 12, scope: !6652)
!6654 = !DILocation(line: 65, column: 6, scope: !6632)
!6655 = !DILocation(line: 66, column: 3, scope: !6652)
!6656 = !DILocation(line: 68, column: 7, scope: !6657)
!6657 = distinct !DILexicalBlock(scope: !6632, file: !3, line: 68, column: 6)
!6658 = !DILocation(line: 68, column: 15, scope: !6657)
!6659 = !DILocation(line: 68, column: 6, scope: !6632)
!6660 = !DILocation(line: 69, column: 3, scope: !6661)
!6661 = distinct !DILexicalBlock(scope: !6657, file: !3, line: 68, column: 24)
!6662 = !DILocation(line: 70, column: 3, scope: !6661)
!6663 = !DILocation(line: 73, column: 27, scope: !6632)
!6664 = !DILocation(line: 73, column: 2, scope: !6632)
!6665 = !DILocation(line: 76, column: 27, scope: !6632)
!6666 = !DILocation(line: 76, column: 35, scope: !6632)
!6667 = !DILocation(line: 76, column: 40, scope: !6632)
!6668 = !DILocation(line: 78, column: 6, scope: !6632)
!6669 = !DILocation(line: 78, column: 20, scope: !6632)
!6670 = !DILocation(line: 76, column: 8, scope: !6632)
!6671 = !DILocation(line: 76, column: 6, scope: !6632)
!6672 = !DILocation(line: 79, column: 6, scope: !6673)
!6673 = distinct !DILexicalBlock(scope: !6632, file: !3, line: 79, column: 6)
!6674 = !DILocation(line: 79, column: 6, scope: !6632)
!6675 = !DILocation(line: 80, column: 3, scope: !6676)
!6676 = distinct !DILexicalBlock(scope: !6673, file: !3, line: 79, column: 11)
!6677 = !DILocation(line: 81, column: 10, scope: !6676)
!6678 = !DILocation(line: 81, column: 3, scope: !6676)
!6679 = !DILocation(line: 84, column: 35, scope: !6632)
!6680 = !DILocation(line: 84, column: 46, scope: !6632)
!6681 = !DILocation(line: 84, column: 2, scope: !6632)
!6682 = !DILocation(line: 86, column: 32, scope: !6632)
!6683 = !DILocation(line: 86, column: 46, scope: !6632)
!6684 = !DILocation(line: 87, column: 8, scope: !6632)
!6685 = !DILocation(line: 87, column: 16, scope: !6632)
!6686 = !DILocation(line: 86, column: 2, scope: !6632)
!6687 = !DILocation(line: 89, column: 6, scope: !6688)
!6688 = distinct !DILexicalBlock(scope: !6632, file: !3, line: 89, column: 6)
!6689 = !DILocation(line: 89, column: 14, scope: !6688)
!6690 = !DILocation(line: 89, column: 19, scope: !6688)
!6691 = !DILocation(line: 89, column: 6, scope: !6632)
!6692 = !DILocation(line: 90, column: 7, scope: !6693)
!6693 = distinct !DILexicalBlock(scope: !6694, file: !3, line: 90, column: 7)
!6694 = distinct !DILexicalBlock(scope: !6688, file: !3, line: 89, column: 31)
!6695 = !DILocation(line: 90, column: 18, scope: !6693)
!6696 = !DILocation(line: 90, column: 25, scope: !6693)
!6697 = !DILocation(line: 90, column: 7, scope: !6694)
!6698 = !DILocation(line: 91, column: 4, scope: !6693)
!6699 = !DILocation(line: 91, column: 15, scope: !6693)
!6700 = !DILocation(line: 91, column: 22, scope: !6693)
!6701 = !DILocation(line: 91, column: 28, scope: !6693)
!6702 = !DILocation(line: 92, column: 26, scope: !6694)
!6703 = !DILocation(line: 92, column: 3, scope: !6694)
!6704 = !DILocation(line: 93, column: 2, scope: !6694)
!6705 = !DILocation(line: 95, column: 2, scope: !6632)
!6706 = !DILocation(line: 96, column: 1, scope: !6632)
!6707 = distinct !DISubprogram(name: "panel_bridge_detach", scope: !3, file: !3, line: 98, type: !6046, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6708)
!6708 = !{!6709, !6710, !6711}
!6709 = !DILocalVariable(name: "bridge", arg: 1, scope: !6707, file: !3, line: 98, type: !6043)
!6710 = !DILocalVariable(name: "panel_bridge", scope: !6707, file: !3, line: 100, type: !329)
!6711 = !DILocalVariable(name: "connector", scope: !6707, file: !3, line: 101, type: !5162)
!6712 = !DILocation(line: 98, column: 52, scope: !6707)
!6713 = !DILocation(line: 100, column: 2, scope: !6707)
!6714 = !DILocation(line: 100, column: 23, scope: !6707)
!6715 = !DILocation(line: 100, column: 65, scope: !6707)
!6716 = !DILocation(line: 100, column: 38, scope: !6707)
!6717 = !DILocation(line: 101, column: 2, scope: !6707)
!6718 = !DILocation(line: 101, column: 24, scope: !6707)
!6719 = !DILocation(line: 101, column: 37, scope: !6707)
!6720 = !DILocation(line: 101, column: 51, scope: !6707)
!6721 = !DILocation(line: 110, column: 6, scope: !6722)
!6722 = distinct !DILexicalBlock(scope: !6707, file: !3, line: 110, column: 6)
!6723 = !DILocation(line: 110, column: 17, scope: !6722)
!6724 = !DILocation(line: 110, column: 6, scope: !6707)
!6725 = !DILocation(line: 111, column: 25, scope: !6722)
!6726 = !DILocation(line: 111, column: 3, scope: !6722)
!6727 = !DILocation(line: 112, column: 1, scope: !6707)
!6728 = distinct !DISubprogram(name: "panel_bridge_atomic_pre_enable", scope: !3, file: !3, line: 114, type: !6068, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6729)
!6729 = !{!6730, !6731, !6732, !6733, !6734, !6735, !6736}
!6730 = !DILocalVariable(name: "bridge", arg: 1, scope: !6728, file: !3, line: 114, type: !6043)
!6731 = !DILocalVariable(name: "old_bridge_state", arg: 2, scope: !6728, file: !3, line: 115, type: !6070)
!6732 = !DILocalVariable(name: "panel_bridge", scope: !6728, file: !3, line: 117, type: !329)
!6733 = !DILocalVariable(name: "atomic_state", scope: !6728, file: !3, line: 118, type: !4379)
!6734 = !DILocalVariable(name: "encoder", scope: !6728, file: !3, line: 119, type: !5310)
!6735 = !DILocalVariable(name: "crtc", scope: !6728, file: !3, line: 120, type: !5100)
!6736 = !DILocalVariable(name: "old_crtc_state", scope: !6728, file: !3, line: 121, type: !5366)
!6737 = !DILocation(line: 114, column: 63, scope: !6728)
!6738 = !DILocation(line: 115, column: 30, scope: !6728)
!6739 = !DILocation(line: 117, column: 2, scope: !6728)
!6740 = !DILocation(line: 117, column: 23, scope: !6728)
!6741 = !DILocation(line: 117, column: 65, scope: !6728)
!6742 = !DILocation(line: 117, column: 38, scope: !6728)
!6743 = !DILocation(line: 118, column: 2, scope: !6728)
!6744 = !DILocation(line: 118, column: 27, scope: !6728)
!6745 = !DILocation(line: 118, column: 42, scope: !6728)
!6746 = !DILocation(line: 118, column: 60, scope: !6728)
!6747 = !DILocation(line: 118, column: 65, scope: !6728)
!6748 = !DILocation(line: 119, column: 2, scope: !6728)
!6749 = !DILocation(line: 119, column: 22, scope: !6728)
!6750 = !DILocation(line: 119, column: 32, scope: !6728)
!6751 = !DILocation(line: 119, column: 40, scope: !6728)
!6752 = !DILocation(line: 120, column: 2, scope: !6728)
!6753 = !DILocation(line: 120, column: 19, scope: !6728)
!6754 = !DILocation(line: 121, column: 2, scope: !6728)
!6755 = !DILocation(line: 121, column: 25, scope: !6728)
!6756 = !DILocation(line: 123, column: 45, scope: !6728)
!6757 = !DILocation(line: 123, column: 59, scope: !6728)
!6758 = !DILocation(line: 123, column: 9, scope: !6728)
!6759 = !DILocation(line: 123, column: 7, scope: !6728)
!6760 = !DILocation(line: 124, column: 7, scope: !6761)
!6761 = distinct !DILexicalBlock(scope: !6728, file: !3, line: 124, column: 6)
!6762 = !DILocation(line: 124, column: 6, scope: !6728)
!6763 = !DILocation(line: 125, column: 3, scope: !6761)
!6764 = !DILocation(line: 127, column: 49, scope: !6728)
!6765 = !DILocation(line: 127, column: 63, scope: !6728)
!6766 = !DILocation(line: 127, column: 19, scope: !6728)
!6767 = !DILocation(line: 127, column: 17, scope: !6728)
!6768 = !DILocation(line: 128, column: 6, scope: !6769)
!6769 = distinct !DILexicalBlock(scope: !6728, file: !3, line: 128, column: 6)
!6770 = !DILocation(line: 128, column: 21, scope: !6769)
!6771 = !DILocation(line: 128, column: 24, scope: !6769)
!6772 = !DILocation(line: 128, column: 40, scope: !6769)
!6773 = !DILocation(line: 128, column: 6, scope: !6728)
!6774 = !DILocation(line: 129, column: 3, scope: !6769)
!6775 = !DILocation(line: 131, column: 20, scope: !6728)
!6776 = !DILocation(line: 131, column: 34, scope: !6728)
!6777 = !DILocation(line: 131, column: 2, scope: !6728)
!6778 = !DILocation(line: 132, column: 1, scope: !6728)
!6779 = distinct !DISubprogram(name: "panel_bridge_atomic_enable", scope: !3, file: !3, line: 134, type: !6068, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6780)
!6780 = !{!6781, !6782, !6783, !6784, !6785, !6786, !6787}
!6781 = !DILocalVariable(name: "bridge", arg: 1, scope: !6779, file: !3, line: 134, type: !6043)
!6782 = !DILocalVariable(name: "old_bridge_state", arg: 2, scope: !6779, file: !3, line: 135, type: !6070)
!6783 = !DILocalVariable(name: "panel_bridge", scope: !6779, file: !3, line: 137, type: !329)
!6784 = !DILocalVariable(name: "atomic_state", scope: !6779, file: !3, line: 138, type: !4379)
!6785 = !DILocalVariable(name: "encoder", scope: !6779, file: !3, line: 139, type: !5310)
!6786 = !DILocalVariable(name: "crtc", scope: !6779, file: !3, line: 140, type: !5100)
!6787 = !DILocalVariable(name: "old_crtc_state", scope: !6779, file: !3, line: 141, type: !5366)
!6788 = !DILocation(line: 134, column: 59, scope: !6779)
!6789 = !DILocation(line: 135, column: 30, scope: !6779)
!6790 = !DILocation(line: 137, column: 2, scope: !6779)
!6791 = !DILocation(line: 137, column: 23, scope: !6779)
!6792 = !DILocation(line: 137, column: 65, scope: !6779)
!6793 = !DILocation(line: 137, column: 38, scope: !6779)
!6794 = !DILocation(line: 138, column: 2, scope: !6779)
!6795 = !DILocation(line: 138, column: 27, scope: !6779)
!6796 = !DILocation(line: 138, column: 42, scope: !6779)
!6797 = !DILocation(line: 138, column: 60, scope: !6779)
!6798 = !DILocation(line: 138, column: 65, scope: !6779)
!6799 = !DILocation(line: 139, column: 2, scope: !6779)
!6800 = !DILocation(line: 139, column: 22, scope: !6779)
!6801 = !DILocation(line: 139, column: 32, scope: !6779)
!6802 = !DILocation(line: 139, column: 40, scope: !6779)
!6803 = !DILocation(line: 140, column: 2, scope: !6779)
!6804 = !DILocation(line: 140, column: 19, scope: !6779)
!6805 = !DILocation(line: 141, column: 2, scope: !6779)
!6806 = !DILocation(line: 141, column: 25, scope: !6779)
!6807 = !DILocation(line: 143, column: 45, scope: !6779)
!6808 = !DILocation(line: 143, column: 59, scope: !6779)
!6809 = !DILocation(line: 143, column: 9, scope: !6779)
!6810 = !DILocation(line: 143, column: 7, scope: !6779)
!6811 = !DILocation(line: 144, column: 7, scope: !6812)
!6812 = distinct !DILexicalBlock(scope: !6779, file: !3, line: 144, column: 6)
!6813 = !DILocation(line: 144, column: 6, scope: !6779)
!6814 = !DILocation(line: 145, column: 3, scope: !6812)
!6815 = !DILocation(line: 147, column: 49, scope: !6779)
!6816 = !DILocation(line: 147, column: 63, scope: !6779)
!6817 = !DILocation(line: 147, column: 19, scope: !6779)
!6818 = !DILocation(line: 147, column: 17, scope: !6779)
!6819 = !DILocation(line: 148, column: 6, scope: !6820)
!6820 = distinct !DILexicalBlock(scope: !6779, file: !3, line: 148, column: 6)
!6821 = !DILocation(line: 148, column: 21, scope: !6820)
!6822 = !DILocation(line: 148, column: 24, scope: !6820)
!6823 = !DILocation(line: 148, column: 40, scope: !6820)
!6824 = !DILocation(line: 148, column: 6, scope: !6779)
!6825 = !DILocation(line: 149, column: 3, scope: !6820)
!6826 = !DILocation(line: 151, column: 19, scope: !6779)
!6827 = !DILocation(line: 151, column: 33, scope: !6779)
!6828 = !DILocation(line: 151, column: 2, scope: !6779)
!6829 = !DILocation(line: 152, column: 1, scope: !6779)
!6830 = distinct !DISubprogram(name: "panel_bridge_atomic_disable", scope: !3, file: !3, line: 154, type: !6068, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6831)
!6831 = !{!6832, !6833, !6834, !6835, !6836, !6837, !6838}
!6832 = !DILocalVariable(name: "bridge", arg: 1, scope: !6830, file: !3, line: 154, type: !6043)
!6833 = !DILocalVariable(name: "old_bridge_state", arg: 2, scope: !6830, file: !3, line: 155, type: !6070)
!6834 = !DILocalVariable(name: "panel_bridge", scope: !6830, file: !3, line: 157, type: !329)
!6835 = !DILocalVariable(name: "atomic_state", scope: !6830, file: !3, line: 158, type: !4379)
!6836 = !DILocalVariable(name: "encoder", scope: !6830, file: !3, line: 159, type: !5310)
!6837 = !DILocalVariable(name: "crtc", scope: !6830, file: !3, line: 160, type: !5100)
!6838 = !DILocalVariable(name: "new_crtc_state", scope: !6830, file: !3, line: 161, type: !5366)
!6839 = !DILocation(line: 154, column: 60, scope: !6830)
!6840 = !DILocation(line: 155, column: 30, scope: !6830)
!6841 = !DILocation(line: 157, column: 2, scope: !6830)
!6842 = !DILocation(line: 157, column: 23, scope: !6830)
!6843 = !DILocation(line: 157, column: 65, scope: !6830)
!6844 = !DILocation(line: 157, column: 38, scope: !6830)
!6845 = !DILocation(line: 158, column: 2, scope: !6830)
!6846 = !DILocation(line: 158, column: 27, scope: !6830)
!6847 = !DILocation(line: 158, column: 42, scope: !6830)
!6848 = !DILocation(line: 158, column: 60, scope: !6830)
!6849 = !DILocation(line: 158, column: 65, scope: !6830)
!6850 = !DILocation(line: 159, column: 2, scope: !6830)
!6851 = !DILocation(line: 159, column: 22, scope: !6830)
!6852 = !DILocation(line: 159, column: 32, scope: !6830)
!6853 = !DILocation(line: 159, column: 40, scope: !6830)
!6854 = !DILocation(line: 160, column: 2, scope: !6830)
!6855 = !DILocation(line: 160, column: 19, scope: !6830)
!6856 = !DILocation(line: 161, column: 2, scope: !6830)
!6857 = !DILocation(line: 161, column: 25, scope: !6830)
!6858 = !DILocation(line: 163, column: 45, scope: !6830)
!6859 = !DILocation(line: 163, column: 59, scope: !6830)
!6860 = !DILocation(line: 163, column: 9, scope: !6830)
!6861 = !DILocation(line: 163, column: 7, scope: !6830)
!6862 = !DILocation(line: 164, column: 7, scope: !6863)
!6863 = distinct !DILexicalBlock(scope: !6830, file: !3, line: 164, column: 6)
!6864 = !DILocation(line: 164, column: 6, scope: !6830)
!6865 = !DILocation(line: 165, column: 3, scope: !6863)
!6866 = !DILocation(line: 167, column: 49, scope: !6830)
!6867 = !DILocation(line: 167, column: 63, scope: !6830)
!6868 = !DILocation(line: 167, column: 19, scope: !6830)
!6869 = !DILocation(line: 167, column: 17, scope: !6830)
!6870 = !DILocation(line: 168, column: 6, scope: !6871)
!6871 = distinct !DILexicalBlock(scope: !6830, file: !3, line: 168, column: 6)
!6872 = !DILocation(line: 168, column: 21, scope: !6871)
!6873 = !DILocation(line: 168, column: 24, scope: !6871)
!6874 = !DILocation(line: 168, column: 40, scope: !6871)
!6875 = !DILocation(line: 168, column: 6, scope: !6830)
!6876 = !DILocation(line: 169, column: 3, scope: !6871)
!6877 = !DILocation(line: 171, column: 20, scope: !6830)
!6878 = !DILocation(line: 171, column: 34, scope: !6830)
!6879 = !DILocation(line: 171, column: 2, scope: !6830)
!6880 = !DILocation(line: 172, column: 1, scope: !6830)
!6881 = distinct !DISubprogram(name: "panel_bridge_atomic_post_disable", scope: !3, file: !3, line: 174, type: !6068, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6882)
!6882 = !{!6883, !6884, !6885, !6886, !6887, !6888, !6889}
!6883 = !DILocalVariable(name: "bridge", arg: 1, scope: !6881, file: !3, line: 174, type: !6043)
!6884 = !DILocalVariable(name: "old_bridge_state", arg: 2, scope: !6881, file: !3, line: 175, type: !6070)
!6885 = !DILocalVariable(name: "panel_bridge", scope: !6881, file: !3, line: 177, type: !329)
!6886 = !DILocalVariable(name: "atomic_state", scope: !6881, file: !3, line: 178, type: !4379)
!6887 = !DILocalVariable(name: "encoder", scope: !6881, file: !3, line: 179, type: !5310)
!6888 = !DILocalVariable(name: "crtc", scope: !6881, file: !3, line: 180, type: !5100)
!6889 = !DILocalVariable(name: "new_crtc_state", scope: !6881, file: !3, line: 181, type: !5366)
!6890 = !DILocation(line: 174, column: 65, scope: !6881)
!6891 = !DILocation(line: 175, column: 30, scope: !6881)
!6892 = !DILocation(line: 177, column: 2, scope: !6881)
!6893 = !DILocation(line: 177, column: 23, scope: !6881)
!6894 = !DILocation(line: 177, column: 65, scope: !6881)
!6895 = !DILocation(line: 177, column: 38, scope: !6881)
!6896 = !DILocation(line: 178, column: 2, scope: !6881)
!6897 = !DILocation(line: 178, column: 27, scope: !6881)
!6898 = !DILocation(line: 178, column: 42, scope: !6881)
!6899 = !DILocation(line: 178, column: 60, scope: !6881)
!6900 = !DILocation(line: 178, column: 65, scope: !6881)
!6901 = !DILocation(line: 179, column: 2, scope: !6881)
!6902 = !DILocation(line: 179, column: 22, scope: !6881)
!6903 = !DILocation(line: 179, column: 32, scope: !6881)
!6904 = !DILocation(line: 179, column: 40, scope: !6881)
!6905 = !DILocation(line: 180, column: 2, scope: !6881)
!6906 = !DILocation(line: 180, column: 19, scope: !6881)
!6907 = !DILocation(line: 181, column: 2, scope: !6881)
!6908 = !DILocation(line: 181, column: 25, scope: !6881)
!6909 = !DILocation(line: 183, column: 45, scope: !6881)
!6910 = !DILocation(line: 183, column: 59, scope: !6881)
!6911 = !DILocation(line: 183, column: 9, scope: !6881)
!6912 = !DILocation(line: 183, column: 7, scope: !6881)
!6913 = !DILocation(line: 184, column: 7, scope: !6914)
!6914 = distinct !DILexicalBlock(scope: !6881, file: !3, line: 184, column: 6)
!6915 = !DILocation(line: 184, column: 6, scope: !6881)
!6916 = !DILocation(line: 185, column: 3, scope: !6914)
!6917 = !DILocation(line: 187, column: 49, scope: !6881)
!6918 = !DILocation(line: 187, column: 63, scope: !6881)
!6919 = !DILocation(line: 187, column: 19, scope: !6881)
!6920 = !DILocation(line: 187, column: 17, scope: !6881)
!6921 = !DILocation(line: 188, column: 6, scope: !6922)
!6922 = distinct !DILexicalBlock(scope: !6881, file: !3, line: 188, column: 6)
!6923 = !DILocation(line: 188, column: 21, scope: !6922)
!6924 = !DILocation(line: 188, column: 24, scope: !6922)
!6925 = !DILocation(line: 188, column: 40, scope: !6922)
!6926 = !DILocation(line: 188, column: 6, scope: !6881)
!6927 = !DILocation(line: 189, column: 3, scope: !6922)
!6928 = !DILocation(line: 191, column: 22, scope: !6881)
!6929 = !DILocation(line: 191, column: 36, scope: !6881)
!6930 = !DILocation(line: 191, column: 2, scope: !6881)
!6931 = !DILocation(line: 192, column: 1, scope: !6881)
!6932 = distinct !DISubprogram(name: "panel_bridge_get_modes", scope: !3, file: !3, line: 194, type: !6108, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6933)
!6933 = !{!6934, !6935, !6936}
!6934 = !DILocalVariable(name: "bridge", arg: 1, scope: !6932, file: !3, line: 194, type: !6043)
!6935 = !DILocalVariable(name: "connector", arg: 2, scope: !6932, file: !3, line: 195, type: !5162)
!6936 = !DILocalVariable(name: "panel_bridge", scope: !6932, file: !3, line: 197, type: !329)
!6937 = !DILocation(line: 194, column: 54, scope: !6932)
!6938 = !DILocation(line: 195, column: 29, scope: !6932)
!6939 = !DILocation(line: 197, column: 2, scope: !6932)
!6940 = !DILocation(line: 197, column: 23, scope: !6932)
!6941 = !DILocation(line: 197, column: 65, scope: !6932)
!6942 = !DILocation(line: 197, column: 38, scope: !6932)
!6943 = !DILocation(line: 199, column: 29, scope: !6932)
!6944 = !DILocation(line: 199, column: 43, scope: !6932)
!6945 = !DILocation(line: 199, column: 50, scope: !6932)
!6946 = !DILocation(line: 199, column: 9, scope: !6932)
!6947 = !DILocation(line: 200, column: 1, scope: !6932)
!6948 = !DILocation(line: 199, column: 2, scope: !6932)
!6949 = distinct !DISubprogram(name: "panel_bridge_debugfs_init", scope: !3, file: !3, line: 202, type: !6128, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6950)
!6950 = !{!6951, !6952, !6953, !6954}
!6951 = !DILocalVariable(name: "bridge", arg: 1, scope: !6949, file: !3, line: 202, type: !6043)
!6952 = !DILocalVariable(name: "root", arg: 2, scope: !6949, file: !3, line: 203, type: !1145)
!6953 = !DILocalVariable(name: "panel_bridge", scope: !6949, file: !3, line: 205, type: !329)
!6954 = !DILocalVariable(name: "panel", scope: !6949, file: !3, line: 206, type: !6144)
!6955 = !DILocation(line: 202, column: 58, scope: !6949)
!6956 = !DILocation(line: 203, column: 26, scope: !6949)
!6957 = !DILocation(line: 205, column: 2, scope: !6949)
!6958 = !DILocation(line: 205, column: 23, scope: !6949)
!6959 = !DILocation(line: 205, column: 65, scope: !6949)
!6960 = !DILocation(line: 205, column: 38, scope: !6949)
!6961 = !DILocation(line: 206, column: 2, scope: !6949)
!6962 = !DILocation(line: 206, column: 20, scope: !6949)
!6963 = !DILocation(line: 206, column: 28, scope: !6949)
!6964 = !DILocation(line: 206, column: 42, scope: !6949)
!6965 = !DILocation(line: 208, column: 37, scope: !6949)
!6966 = !DILocation(line: 208, column: 9, scope: !6949)
!6967 = !DILocation(line: 208, column: 7, scope: !6949)
!6968 = !DILocation(line: 209, column: 6, scope: !6969)
!6969 = distinct !DILexicalBlock(scope: !6949, file: !3, line: 209, column: 6)
!6970 = !DILocation(line: 209, column: 13, scope: !6969)
!6971 = !DILocation(line: 209, column: 20, scope: !6969)
!6972 = !DILocation(line: 209, column: 6, scope: !6949)
!6973 = !DILocation(line: 210, column: 3, scope: !6969)
!6974 = !DILocation(line: 210, column: 10, scope: !6969)
!6975 = !DILocation(line: 210, column: 17, scope: !6969)
!6976 = !DILocation(line: 210, column: 30, scope: !6969)
!6977 = !DILocation(line: 210, column: 37, scope: !6969)
!6978 = !DILocation(line: 211, column: 1, scope: !6949)
!6979 = !DISubprogram(name: "__drm_err", scope: !5490, file: !5490, line: 573, type: !6980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6980 = !DISubroutineType(types: !6981)
!6981 = !{null, !1029, null}
!6982 = distinct !DISubprogram(name: "drm_connector_helper_add", scope: !294, file: !294, line: 1178, type: !6983, scopeLine: 1180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6985)
!6983 = !DISubroutineType(types: !6984)
!6984 = !{null, !5162, !5552}
!6985 = !{!6986, !6987}
!6986 = !DILocalVariable(name: "connector", arg: 1, scope: !6982, file: !294, line: 1178, type: !5162)
!6987 = !DILocalVariable(name: "funcs", arg: 2, scope: !6982, file: !294, line: 1179, type: !5552)
!6988 = !DILocation(line: 1178, column: 67, scope: !6982)
!6989 = !DILocation(line: 1179, column: 51, scope: !6982)
!6990 = !DILocation(line: 1181, column: 30, scope: !6982)
!6991 = !DILocation(line: 1181, column: 2, scope: !6982)
!6992 = !DILocation(line: 1181, column: 13, scope: !6982)
!6993 = !DILocation(line: 1181, column: 28, scope: !6982)
!6994 = !DILocation(line: 1182, column: 1, scope: !6982)
!6995 = !DISubprogram(name: "drm_connector_init", scope: !201, file: !201, line: 1886, type: !6996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6996 = !DISubroutineType(types: !6997)
!6997 = !{!109, !4384, !5162, !5269, !109}
!6998 = !DISubprogram(name: "drm_connector_attach_encoder", scope: !201, file: !201, line: 1903, type: !6999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6999 = !DISubroutineType(types: !7000)
!7000 = !{!109, !5162, !5310}
!7001 = !DISubprogram(name: "drm_connector_register", scope: !201, file: !201, line: 1901, type: !5296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7002 = distinct !DISubprogram(name: "panel_bridge_connector_get_modes", scope: !3, file: !3, line: 37, type: !5296, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7003)
!7003 = !{!7004, !7005}
!7004 = !DILocalVariable(name: "connector", arg: 1, scope: !7002, file: !3, line: 37, type: !5162)
!7005 = !DILocalVariable(name: "panel_bridge", scope: !7002, file: !3, line: 39, type: !329)
!7006 = !DILocation(line: 37, column: 67, scope: !7002)
!7007 = !DILocation(line: 39, column: 2, scope: !7002)
!7008 = !DILocation(line: 39, column: 23, scope: !7002)
!7009 = !DILocation(line: 40, column: 33, scope: !7002)
!7010 = !DILocation(line: 40, column: 3, scope: !7002)
!7011 = !DILocation(line: 42, column: 29, scope: !7002)
!7012 = !DILocation(line: 42, column: 43, scope: !7002)
!7013 = !DILocation(line: 42, column: 50, scope: !7002)
!7014 = !DILocation(line: 42, column: 9, scope: !7002)
!7015 = !DILocation(line: 43, column: 1, scope: !7002)
!7016 = !DILocation(line: 42, column: 2, scope: !7002)
!7017 = distinct !DISubprogram(name: "drm_connector_to_panel_bridge", scope: !3, file: !3, line: 32, type: !7018, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7020)
!7018 = !DISubroutineType(types: !7019)
!7019 = !{!329, !5162}
!7020 = !{!7021, !7022}
!7021 = !DILocalVariable(name: "connector", arg: 1, scope: !7017, file: !3, line: 32, type: !5162)
!7022 = !DILocalVariable(name: "__mptr", scope: !7023, file: !3, line: 34, type: !326)
!7023 = distinct !DILexicalBlock(scope: !7017, file: !3, line: 34, column: 9)
!7024 = !DILocation(line: 32, column: 53, scope: !7017)
!7025 = !DILocation(line: 34, column: 9, scope: !7023)
!7026 = !DILocation(line: 34, column: 9, scope: !7017)
!7027 = !DILocation(line: 34, column: 2, scope: !7017)
!7028 = !DISubprogram(name: "drm_panel_get_modes", scope: !6146, file: !6146, line: 285, type: !6166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7029 = !DISubprogram(name: "drm_connector_cleanup", scope: !201, file: !201, line: 1906, type: !5279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7030 = !DISubprogram(name: "drm_atomic_get_new_crtc_for_encoder", scope: !337, file: !337, line: 535, type: !7031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7031 = !DISubroutineType(types: !7032)
!7032 = !{!5100, !4379, !5310}
!7033 = distinct !DISubprogram(name: "drm_atomic_get_old_crtc_state", scope: !337, file: !337, line: 565, type: !7034, scopeLine: 567, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7038)
!7034 = !DISubroutineType(types: !7035)
!7035 = !{!5366, !7036, !5100}
!7036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7037, size: 64)
!7037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4380)
!7038 = !{!7039, !7040}
!7039 = !DILocalVariable(name: "state", arg: 1, scope: !7033, file: !337, line: 565, type: !7036)
!7040 = !DILocalVariable(name: "crtc", arg: 2, scope: !7033, file: !337, line: 566, type: !5100)
!7041 = !DILocation(line: 565, column: 62, scope: !7033)
!7042 = !DILocation(line: 566, column: 27, scope: !7033)
!7043 = !DILocation(line: 568, column: 9, scope: !7033)
!7044 = !DILocation(line: 568, column: 16, scope: !7033)
!7045 = !DILocation(line: 568, column: 37, scope: !7033)
!7046 = !DILocation(line: 568, column: 22, scope: !7033)
!7047 = !DILocation(line: 568, column: 44, scope: !7033)
!7048 = !DILocation(line: 568, column: 2, scope: !7033)
!7049 = !DISubprogram(name: "drm_panel_prepare", scope: !6146, file: !6146, line: 279, type: !6159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7050 = distinct !DISubprogram(name: "drm_crtc_index", scope: !5102, file: !5102, line: 1265, type: !7051, scopeLine: 1266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7055)
!7051 = !DISubroutineType(types: !7052)
!7052 = !{!7, !7053}
!7053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7054, size: 64)
!7054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5101)
!7055 = !{!7056}
!7056 = !DILocalVariable(name: "crtc", arg: 1, scope: !7050, file: !5102, line: 1265, type: !7053)
!7057 = !DILocation(line: 1265, column: 66, scope: !7050)
!7058 = !DILocation(line: 1267, column: 9, scope: !7050)
!7059 = !DILocation(line: 1267, column: 15, scope: !7050)
!7060 = !DILocation(line: 1267, column: 2, scope: !7050)
!7061 = !DISubprogram(name: "drm_panel_enable", scope: !6146, file: !6146, line: 282, type: !6159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7062 = !DISubprogram(name: "drm_atomic_get_old_crtc_for_encoder", scope: !337, file: !337, line: 532, type: !7031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7063 = distinct !DISubprogram(name: "drm_atomic_get_new_crtc_state", scope: !337, file: !337, line: 579, type: !7034, scopeLine: 581, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7064)
!7064 = !{!7065, !7066}
!7065 = !DILocalVariable(name: "state", arg: 1, scope: !7063, file: !337, line: 579, type: !7036)
!7066 = !DILocalVariable(name: "crtc", arg: 2, scope: !7063, file: !337, line: 580, type: !5100)
!7067 = !DILocation(line: 579, column: 62, scope: !7063)
!7068 = !DILocation(line: 580, column: 27, scope: !7063)
!7069 = !DILocation(line: 582, column: 9, scope: !7063)
!7070 = !DILocation(line: 582, column: 16, scope: !7063)
!7071 = !DILocation(line: 582, column: 37, scope: !7063)
!7072 = !DILocation(line: 582, column: 22, scope: !7063)
!7073 = !DILocation(line: 582, column: 44, scope: !7063)
!7074 = !DILocation(line: 582, column: 2, scope: !7063)
!7075 = !DISubprogram(name: "drm_panel_disable", scope: !6146, file: !6146, line: 283, type: !6159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7076 = !DISubprogram(name: "drm_panel_unprepare", scope: !6146, file: !6146, line: 280, type: !6159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7077 = !DISubprogram(name: "debugfs_create_dir", scope: !7078, file: !7078, line: 87, type: !7079, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7078 = !DIFile(filename: "./include/linux/debugfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e6228d229e8266f5bff9327360d42a5")
!7079 = !DISubroutineType(types: !7080)
!7080 = !{!1145, !1029, !1145}
!7081 = !DISubprogram(name: "devm_kmalloc", scope: !94, file: !94, line: 305, type: !6352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
