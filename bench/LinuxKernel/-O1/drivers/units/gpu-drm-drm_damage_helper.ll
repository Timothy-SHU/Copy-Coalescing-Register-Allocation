; ModuleID = 'drivers/gpu/drm/drm_damage_helper.c'
source_filename = "drivers/gpu/drm/drm_damage_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_atomic_helper_check_plane_damage: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_atomic_helper_check_plane_damage ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_atomic_helper_dirtyfb: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_atomic_helper_dirtyfb ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_atomic_helper_damage_iter_init: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_atomic_helper_damage_iter_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_atomic_helper_damage_iter_next: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_atomic_helper_damage_iter_next ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_atomic_helper_damage_merged: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_atomic_helper_damage_merged ; .previous"

%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, i8, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.list_head = type { ptr, ptr }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, ptr, i32, %struct.list_head, i8, i8 }
%struct.ww_acquire_ctx = type { ptr, i64, i32, i16, i16 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_clip_rect = type { i16, i16, i16, i16 }
%struct.drm_mode_rect = type { i32, i32, i32, i32 }
%struct.drm_atomic_helper_damage_iter = type { %struct.drm_rect, ptr, i32, i32, i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i64, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i64, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }

@.str = private unnamed_addr constant [36 x i8] c"drivers/gpu/drm/drm_damage_helper.c\00", align 1, !dbg !0
@__UNIQUE_ID___addressable_drm_atomic_helper_check_plane_damage308 = internal global ptr @drm_atomic_helper_check_plane_damage, section ".discard.addressable", align 8, !dbg !7
@__UNIQUE_ID___addressable_drm_atomic_helper_dirtyfb309 = internal global ptr @drm_atomic_helper_dirtyfb, section ".discard.addressable", align 8, !dbg !6044
@__UNIQUE_ID___addressable_drm_atomic_helper_damage_iter_init310 = internal global ptr @drm_atomic_helper_damage_iter_init, section ".discard.addressable", align 8, !dbg !6046
@__UNIQUE_ID___addressable_drm_atomic_helper_damage_iter_next311 = internal global ptr @drm_atomic_helper_damage_iter_next, section ".discard.addressable", align 8, !dbg !6048
@__UNIQUE_ID___addressable_drm_atomic_helper_damage_merged320 = internal global ptr @drm_atomic_helper_damage_merged, section ".discard.addressable", align 8, !dbg !6050
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !6052
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID___addressable_drm_atomic_helper_check_plane_damage308, ptr @__UNIQUE_ID___addressable_drm_atomic_helper_dirtyfb309, ptr @__UNIQUE_ID___addressable_drm_atomic_helper_damage_iter_init310, ptr @__UNIQUE_ID___addressable_drm_atomic_helper_damage_iter_next311, ptr @__UNIQUE_ID___addressable_drm_atomic_helper_damage_merged320], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_atomic_helper_check_plane_damage(ptr noundef %state, ptr noundef %plane_state) #0 align 16 !dbg !6066 {
entry:
  %state.addr = alloca ptr, align 8
  %plane_state.addr = alloca ptr, align 8
  %crtc_state = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6070, metadata !DIExpression()), !dbg !6081
  store ptr %plane_state, ptr %plane_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %plane_state.addr, metadata !6071, metadata !DIExpression()), !dbg !6082
  call void @llvm.lifetime.start.p0(i64 8, ptr %crtc_state) #15, !dbg !6083
  call void @llvm.dbg.declare(metadata ptr %crtc_state, metadata !6072, metadata !DIExpression()), !dbg !6084
  %0 = load ptr, ptr %plane_state.addr, align 8, !dbg !6085
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %0, i32 0, i32 1, !dbg !6086
  %1 = load ptr, ptr %crtc, align 8, !dbg !6086
  %tobool = icmp ne ptr %1, null, !dbg !6085
  br i1 %tobool, label %if.then, label %if.end35, !dbg !6087

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %state.addr, align 8, !dbg !6088
  %3 = load ptr, ptr %plane_state.addr, align 8, !dbg !6089
  %crtc1 = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 1, !dbg !6090
  %4 = load ptr, ptr %crtc1, align 8, !dbg !6090
  %call = call ptr @drm_atomic_get_new_crtc_state(ptr noundef %2, ptr noundef %4) #16, !dbg !6091
  store ptr %call, ptr %crtc_state, align 8, !dbg !6092
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6093
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6073, metadata !DIExpression()), !dbg !6093
  %5 = load ptr, ptr %crtc_state, align 8, !dbg !6093
  %tobool2 = icmp ne ptr %5, null, !dbg !6093
  %lnot = xor i1 %tobool2, true, !dbg !6093
  %lnot3 = xor i1 %lnot, true, !dbg !6093
  %lnot4 = xor i1 %lnot3, true, !dbg !6093
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !6093
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6093
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !6094
  %tobool5 = icmp ne i32 %6, 0, !dbg !6094
  %lnot6 = xor i1 %tobool5, true, !dbg !6094
  %lnot8 = xor i1 %lnot6, true, !dbg !6094
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !6094
  %conv = sext i32 %lnot.ext9 to i64, !dbg !6094
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6094
  %tobool10 = icmp ne i64 %expval, 0, !dbg !6094
  br i1 %tobool10, label %if.then11, label %if.end, !dbg !6093

if.then11:                                        ; preds = %if.then
  br label %do.body, !dbg !6094

do.body:                                          ; preds = %if.then11
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !6095
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6078, metadata !DIExpression()), !dbg !6095
  store i32 2305, ptr %__flags, align 4, !dbg !6095
  br label %do.body12, !dbg !6095

do.body12:                                        ; preds = %do.body
  br label %do.cond, !dbg !6096

do.cond:                                          ; preds = %do.body12
  br label %do.end, !dbg !6096

do.end:                                           ; preds = %do.cond
  br label %do.body13, !dbg !6095

do.body13:                                        ; preds = %do.end
  %7 = load i32, ptr %__flags, align 4, !dbg !6098
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 76, i32 %7, i64 12) #15, !dbg !6098, !srcloc !6100
  br label %do.cond14, !dbg !6098

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !6098

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !6095

do.body16:                                        ; preds = %do.end15
  br label %do.cond17, !dbg !6101

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !6101

do.end18:                                         ; preds = %do.cond17
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !6094
  br label %do.cond19, !dbg !6095

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !6095

do.end20:                                         ; preds = %do.cond19
  br label %if.end, !dbg !6095

if.end:                                           ; preds = %do.end20, %if.then
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !6093
  %tobool21 = icmp ne i32 %8, 0, !dbg !6093
  %lnot22 = xor i1 %tobool21, true, !dbg !6093
  %lnot24 = xor i1 %lnot22, true, !dbg !6093
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !6093
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !6093
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !6093
  store i64 %expval27, ptr %tmp, align 8, !dbg !6094
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6103
  %9 = load i64, ptr %tmp, align 8, !dbg !6093
  %tobool28 = icmp ne i64 %9, 0, !dbg !6103
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !6104

if.then29:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6105

if.end30:                                         ; preds = %if.end
  %10 = load ptr, ptr %crtc_state, align 8, !dbg !6106
  %call31 = call zeroext i1 @drm_atomic_crtc_needs_modeset(ptr noundef %10) #16, !dbg !6108
  br i1 %call31, label %if.then32, label %if.end34, !dbg !6109

if.then32:                                        ; preds = %if.end30
  %11 = load ptr, ptr %plane_state.addr, align 8, !dbg !6110
  %fb_damage_clips = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 19, !dbg !6112
  %12 = load ptr, ptr %fb_damage_clips, align 8, !dbg !6112
  call void @drm_property_blob_put(ptr noundef %12) #16, !dbg !6113
  %13 = load ptr, ptr %plane_state.addr, align 8, !dbg !6114
  %fb_damage_clips33 = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 19, !dbg !6115
  store ptr null, ptr %fb_damage_clips33, align 8, !dbg !6116
  br label %if.end34, !dbg !6117

if.end34:                                         ; preds = %if.then32, %if.end30
  br label %if.end35, !dbg !6118

if.end35:                                         ; preds = %if.end34, %entry
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6119
  br label %cleanup, !dbg !6119

cleanup:                                          ; preds = %if.end35, %if.then29
  call void @llvm.lifetime.end.p0(i64 8, ptr %crtc_state) #15, !dbg !6119
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6119

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @drm_atomic_get_new_crtc_state(ptr noundef %state, ptr noundef %crtc) #3 align 16 !dbg !6120 {
entry:
  %state.addr = alloca ptr, align 8
  %crtc.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6126, metadata !DIExpression()), !dbg !6128
  store ptr %crtc, ptr %crtc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %crtc.addr, metadata !6127, metadata !DIExpression()), !dbg !6129
  %0 = load ptr, ptr %state.addr, align 8, !dbg !6130
  %crtcs = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 4, !dbg !6131
  %1 = load ptr, ptr %crtcs, align 8, !dbg !6131
  %2 = load ptr, ptr %crtc.addr, align 8, !dbg !6132
  %call = call i32 @drm_crtc_index(ptr noundef %2) #16, !dbg !6133
  %idxprom = zext i32 %call to i64, !dbg !6130
  %arrayidx = getelementptr %struct.__drm_crtcs_state, ptr %1, i64 %idxprom, !dbg !6130
  %new_state = getelementptr inbounds %struct.__drm_crtcs_state, ptr %arrayidx, i32 0, i32 3, !dbg !6134
  %3 = load ptr, ptr %new_state, align 8, !dbg !6134
  ret ptr %3, !dbg !6135
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @drm_atomic_crtc_needs_modeset(ptr noundef %state) #3 align 16 !dbg !6136 {
entry:
  %state.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6140, metadata !DIExpression()), !dbg !6141
  %0 = load ptr, ptr %state.addr, align 8, !dbg !6142
  %mode_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %0, i32 0, i32 3, !dbg !6143
  %bf.load = load i8, ptr %mode_changed, align 2, !dbg !6143
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !6143
  %bf.clear = and i8 %bf.lshr, 1, !dbg !6143
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !6143
  br i1 %bf.cast, label %lor.end, label %lor.lhs.false, !dbg !6144

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %state.addr, align 8, !dbg !6145
  %active_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 3, !dbg !6146
  %bf.load1 = load i8, ptr %active_changed, align 2, !dbg !6146
  %bf.lshr2 = lshr i8 %bf.load1, 2, !dbg !6146
  %bf.clear3 = and i8 %bf.lshr2, 1, !dbg !6146
  %bf.cast4 = trunc i8 %bf.clear3 to i1, !dbg !6146
  br i1 %bf.cast4, label %lor.end, label %lor.rhs, !dbg !6147

lor.rhs:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr %state.addr, align 8, !dbg !6148
  %connectors_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %2, i32 0, i32 3, !dbg !6149
  %bf.load5 = load i8, ptr %connectors_changed, align 2, !dbg !6149
  %bf.lshr6 = lshr i8 %bf.load5, 3, !dbg !6149
  %bf.clear7 = and i8 %bf.lshr6, 1, !dbg !6149
  %bf.cast8 = trunc i8 %bf.clear7 to i1, !dbg !6149
  br label %lor.end, !dbg !6147

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %3 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %bf.cast8, %lor.rhs ]
  ret i1 %3, !dbg !6150
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6151 dso_local void @drm_property_blob_put(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_atomic_helper_dirtyfb(ptr noundef %fb, ptr noundef %file_priv, i32 noundef %flags, i32 noundef %color, ptr noundef %clips, i32 noundef %num_clips) #0 align 16 !dbg !6154 {
entry:
  %retval = alloca i32, align 4
  %fb.addr = alloca ptr, align 8
  %file_priv.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %clips.addr = alloca ptr, align 8
  %num_clips.addr = alloca i32, align 4
  %ctx = alloca %struct.drm_modeset_acquire_ctx, align 8
  %damage = alloca ptr, align 8
  %rects = alloca ptr, align 8
  %state = alloca ptr, align 8
  %plane = alloca ptr, align 8
  %ret = alloca i32, align 4
  %inc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %plane_state = alloca ptr, align 8
  %__mptr48 = alloca ptr, align 8
  %tmp51 = alloca ptr, align 8
  store ptr %fb, ptr %fb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fb.addr, metadata !6156, metadata !DIExpression()), !dbg !6189
  store ptr %file_priv, ptr %file_priv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file_priv.addr, metadata !6157, metadata !DIExpression()), !dbg !6190
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6158, metadata !DIExpression()), !dbg !6191
  store i32 %color, ptr %color.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %color.addr, metadata !6159, metadata !DIExpression()), !dbg !6192
  store ptr %clips, ptr %clips.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clips.addr, metadata !6160, metadata !DIExpression()), !dbg !6193
  store i32 %num_clips, ptr %num_clips.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num_clips.addr, metadata !6161, metadata !DIExpression()), !dbg !6194
  call void @llvm.lifetime.start.p0(i64 64, ptr %ctx) #15, !dbg !6195
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !6162, metadata !DIExpression()), !dbg !6196
  call void @llvm.lifetime.start.p0(i64 8, ptr %damage) #15, !dbg !6197
  call void @llvm.dbg.declare(metadata ptr %damage, metadata !6163, metadata !DIExpression()), !dbg !6198
  store ptr null, ptr %damage, align 8, !dbg !6198
  call void @llvm.lifetime.start.p0(i64 8, ptr %rects) #15, !dbg !6199
  call void @llvm.dbg.declare(metadata ptr %rects, metadata !6164, metadata !DIExpression()), !dbg !6200
  store ptr null, ptr %rects, align 8, !dbg !6200
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #15, !dbg !6201
  call void @llvm.dbg.declare(metadata ptr %state, metadata !6172, metadata !DIExpression()), !dbg !6202
  call void @llvm.lifetime.start.p0(i64 8, ptr %plane) #15, !dbg !6203
  call void @llvm.dbg.declare(metadata ptr %plane, metadata !6173, metadata !DIExpression()), !dbg !6204
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6205
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6174, metadata !DIExpression()), !dbg !6206
  store i32 0, ptr %ret, align 4, !dbg !6206
  %0 = load ptr, ptr %file_priv.addr, align 8, !dbg !6207
  %tobool = icmp ne ptr %0, null, !dbg !6207
  %1 = zext i1 %tobool to i64, !dbg !6207
  %cond = select i1 %tobool, i64 1, i64 0, !dbg !6207
  %conv = trunc i64 %cond to i32, !dbg !6207
  call void @drm_modeset_acquire_init(ptr noundef %ctx, i32 noundef %conv) #16, !dbg !6208
  %2 = load ptr, ptr %fb.addr, align 8, !dbg !6209
  %dev = getelementptr inbounds %struct.drm_framebuffer, ptr %2, i32 0, i32 0, !dbg !6210
  %3 = load ptr, ptr %dev, align 8, !dbg !6210
  %call = call ptr @drm_atomic_state_alloc(ptr noundef %3) #16, !dbg !6211
  store ptr %call, ptr %state, align 8, !dbg !6212
  %4 = load ptr, ptr %state, align 8, !dbg !6213
  %tobool1 = icmp ne ptr %4, null, !dbg !6213
  br i1 %tobool1, label %if.end, label %if.then, !dbg !6215

if.then:                                          ; preds = %entry
  store i32 -12, ptr %ret, align 4, !dbg !6216
  br label %out_drop_locks, !dbg !6218

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %state, align 8, !dbg !6219
  %acquire_ctx = getelementptr inbounds %struct.drm_atomic_state, ptr %5, i32 0, i32 9, !dbg !6220
  store ptr %ctx, ptr %acquire_ctx, align 8, !dbg !6221
  %6 = load ptr, ptr %clips.addr, align 8, !dbg !6222
  %tobool2 = icmp ne ptr %6, null, !dbg !6222
  br i1 %tobool2, label %if.then3, label %if.end20, !dbg !6223

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc) #15, !dbg !6224
  call void @llvm.dbg.declare(metadata ptr %inc, metadata !6175, metadata !DIExpression()), !dbg !6225
  store i32 1, ptr %inc, align 4, !dbg !6225
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6226
  %and = and i32 %7, 1, !dbg !6228
  %tobool4 = icmp ne i32 %and, 0, !dbg !6228
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !6229

if.then5:                                         ; preds = %if.then3
  store i32 2, ptr %inc, align 4, !dbg !6230
  %8 = load i32, ptr %num_clips.addr, align 4, !dbg !6232
  %div = udiv i32 %8, 2, !dbg !6232
  store i32 %div, ptr %num_clips.addr, align 4, !dbg !6232
  br label %if.end6, !dbg !6233

if.end6:                                          ; preds = %if.then5, %if.then3
  %9 = load i32, ptr %num_clips.addr, align 4, !dbg !6234
  %conv7 = zext i32 %9 to i64, !dbg !6234
  %call8 = call noalias ptr @kcalloc(i64 noundef %conv7, i64 noundef 16, i32 noundef 3264) #17, !dbg !6235
  store ptr %call8, ptr %rects, align 8, !dbg !6236
  %10 = load ptr, ptr %rects, align 8, !dbg !6237
  %tobool9 = icmp ne ptr %10, null, !dbg !6237
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !6239

if.then10:                                        ; preds = %if.end6
  store i32 -12, ptr %ret, align 4, !dbg !6240
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6242

if.end11:                                         ; preds = %if.end6
  %11 = load ptr, ptr %clips.addr, align 8, !dbg !6243
  %12 = load ptr, ptr %rects, align 8, !dbg !6244
  %13 = load i32, ptr %num_clips.addr, align 4, !dbg !6245
  %14 = load i32, ptr %inc, align 4, !dbg !6246
  call void @convert_clip_rect_to_rect(ptr noundef %11, ptr noundef %12, i32 noundef %13, i32 noundef %14) #16, !dbg !6247
  %15 = load ptr, ptr %fb.addr, align 8, !dbg !6248
  %dev12 = getelementptr inbounds %struct.drm_framebuffer, ptr %15, i32 0, i32 0, !dbg !6249
  %16 = load ptr, ptr %dev12, align 8, !dbg !6249
  %17 = load i32, ptr %num_clips.addr, align 4, !dbg !6250
  %conv13 = zext i32 %17 to i64, !dbg !6250
  %mul = mul i64 %conv13, 16, !dbg !6251
  %18 = load ptr, ptr %rects, align 8, !dbg !6252
  %call14 = call ptr @drm_property_create_blob(ptr noundef %16, i64 noundef %mul, ptr noundef %18) #16, !dbg !6253
  store ptr %call14, ptr %damage, align 8, !dbg !6254
  %19 = load ptr, ptr %damage, align 8, !dbg !6255
  %call15 = call zeroext i1 @IS_ERR(ptr noundef %19) #16, !dbg !6257
  br i1 %call15, label %if.then16, label %if.end19, !dbg !6258

if.then16:                                        ; preds = %if.end11
  %20 = load ptr, ptr %damage, align 8, !dbg !6259
  %call17 = call i64 @PTR_ERR(ptr noundef %20) #16, !dbg !6261
  %conv18 = trunc i64 %call17 to i32, !dbg !6261
  store i32 %conv18, ptr %ret, align 4, !dbg !6262
  store ptr null, ptr %damage, align 8, !dbg !6263
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6264

if.end19:                                         ; preds = %if.end11
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6265
  br label %cleanup, !dbg !6265

cleanup:                                          ; preds = %if.then16, %if.then10, %if.end19
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc) #15, !dbg !6265
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup62 [
    i32 0, label %cleanup.cont
    i32 3, label %out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end20, !dbg !6266

if.end20:                                         ; preds = %cleanup.cont, %if.end
  br label %retry, !dbg !6222

retry:                                            ; preds = %if.then59, %if.end20
  call void @llvm.dbg.label(metadata !6178), !dbg !6267
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !6268
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6179, metadata !DIExpression()), !dbg !6268
  %21 = load ptr, ptr %fb.addr, align 8, !dbg !6268
  %dev21 = getelementptr inbounds %struct.drm_framebuffer, ptr %21, i32 0, i32 0, !dbg !6268
  %22 = load ptr, ptr %dev21, align 8, !dbg !6268
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %22, i32 0, i32 31, !dbg !6268
  %plane_list = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config, i32 0, i32 18, !dbg !6268
  %next = getelementptr inbounds %struct.list_head, ptr %plane_list, i32 0, i32 0, !dbg !6268
  %23 = load ptr, ptr %next, align 8, !dbg !6268
  store ptr %23, ptr %__mptr, align 8, !dbg !6268
  %24 = load ptr, ptr %__mptr, align 8, !dbg !6268
  %add.ptr = getelementptr i8, ptr %24, i64 -8, !dbg !6268
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6268
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !6269
  %25 = load ptr, ptr %tmp, align 8, !dbg !6268
  store ptr %25, ptr %plane, align 8, !dbg !6269
  br label %for.cond, !dbg !6269

for.cond:                                         ; preds = %for.inc, %retry
  %26 = load ptr, ptr %plane, align 8, !dbg !6270
  %head = getelementptr inbounds %struct.drm_plane, ptr %26, i32 0, i32 1, !dbg !6270
  %27 = load ptr, ptr %fb.addr, align 8, !dbg !6270
  %dev22 = getelementptr inbounds %struct.drm_framebuffer, ptr %27, i32 0, i32 0, !dbg !6270
  %28 = load ptr, ptr %dev22, align 8, !dbg !6270
  %mode_config23 = getelementptr inbounds %struct.drm_device, ptr %28, i32 0, i32 31, !dbg !6270
  %plane_list24 = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config23, i32 0, i32 18, !dbg !6270
  %cmp = icmp eq ptr %head, %plane_list24, !dbg !6270
  %lnot = xor i1 %cmp, true, !dbg !6270
  br i1 %lnot, label %for.body, label %for.end, !dbg !6269

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %plane_state) #15, !dbg !6271
  call void @llvm.dbg.declare(metadata ptr %plane_state, metadata !6182, metadata !DIExpression()), !dbg !6272
  %29 = load ptr, ptr %plane, align 8, !dbg !6273
  %mutex = getelementptr inbounds %struct.drm_plane, ptr %29, i32 0, i32 3, !dbg !6274
  %30 = load ptr, ptr %state, align 8, !dbg !6275
  %acquire_ctx26 = getelementptr inbounds %struct.drm_atomic_state, ptr %30, i32 0, i32 9, !dbg !6276
  %31 = load ptr, ptr %acquire_ctx26, align 8, !dbg !6276
  %call27 = call i32 @drm_modeset_lock(ptr noundef %mutex, ptr noundef %31) #16, !dbg !6277
  store i32 %call27, ptr %ret, align 4, !dbg !6278
  %32 = load i32, ptr %ret, align 4, !dbg !6279
  %tobool28 = icmp ne i32 %32, 0, !dbg !6279
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !6281

if.then29:                                        ; preds = %for.body
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup45, !dbg !6282

if.end30:                                         ; preds = %for.body
  %33 = load ptr, ptr %plane, align 8, !dbg !6283
  %state31 = getelementptr inbounds %struct.drm_plane, ptr %33, i32 0, i32 19, !dbg !6285
  %34 = load ptr, ptr %state31, align 8, !dbg !6285
  %fb32 = getelementptr inbounds %struct.drm_plane_state, ptr %34, i32 0, i32 2, !dbg !6286
  %35 = load ptr, ptr %fb32, align 8, !dbg !6286
  %36 = load ptr, ptr %fb.addr, align 8, !dbg !6287
  %cmp33 = icmp ne ptr %35, %36, !dbg !6288
  br i1 %cmp33, label %if.then35, label %if.end37, !dbg !6289

if.then35:                                        ; preds = %if.end30
  %37 = load ptr, ptr %plane, align 8, !dbg !6290
  %mutex36 = getelementptr inbounds %struct.drm_plane, ptr %37, i32 0, i32 3, !dbg !6292
  call void @drm_modeset_unlock(ptr noundef %mutex36) #16, !dbg !6293
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup45, !dbg !6294

if.end37:                                         ; preds = %if.end30
  %38 = load ptr, ptr %state, align 8, !dbg !6295
  %39 = load ptr, ptr %plane, align 8, !dbg !6296
  %call38 = call ptr @drm_atomic_get_plane_state(ptr noundef %38, ptr noundef %39) #16, !dbg !6297
  store ptr %call38, ptr %plane_state, align 8, !dbg !6298
  %40 = load ptr, ptr %plane_state, align 8, !dbg !6299
  %call39 = call zeroext i1 @IS_ERR(ptr noundef %40) #16, !dbg !6301
  br i1 %call39, label %if.then40, label %if.end43, !dbg !6302

if.then40:                                        ; preds = %if.end37
  %41 = load ptr, ptr %plane_state, align 8, !dbg !6303
  %call41 = call i64 @PTR_ERR(ptr noundef %41) #16, !dbg !6305
  %conv42 = trunc i64 %call41 to i32, !dbg !6305
  store i32 %conv42, ptr %ret, align 4, !dbg !6306
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup45, !dbg !6307

if.end43:                                         ; preds = %if.end37
  %42 = load ptr, ptr %plane_state, align 8, !dbg !6308
  %fb_damage_clips = getelementptr inbounds %struct.drm_plane_state, ptr %42, i32 0, i32 19, !dbg !6309
  %43 = load ptr, ptr %damage, align 8, !dbg !6310
  %call44 = call zeroext i1 @drm_property_replace_blob(ptr noundef %fb_damage_clips, ptr noundef %43) #16, !dbg !6311
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6312
  br label %cleanup45, !dbg !6312

cleanup45:                                        ; preds = %if.then40, %if.then29, %if.end43, %if.then35
  call void @llvm.lifetime.end.p0(i64 8, ptr %plane_state) #15, !dbg !6312
  %cleanup.dest46 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest46, label %cleanup62 [
    i32 0, label %cleanup.cont47
    i32 7, label %for.inc
    i32 3, label %out
  ]

cleanup.cont47:                                   ; preds = %cleanup45
  br label %for.inc, !dbg !6313

for.inc:                                          ; preds = %cleanup.cont47, %cleanup45
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr48) #15, !dbg !6314
  call void @llvm.dbg.declare(metadata ptr %__mptr48, metadata !6185, metadata !DIExpression()), !dbg !6314
  %44 = load ptr, ptr %plane, align 8, !dbg !6314
  %head49 = getelementptr inbounds %struct.drm_plane, ptr %44, i32 0, i32 1, !dbg !6314
  %next50 = getelementptr inbounds %struct.list_head, ptr %head49, i32 0, i32 0, !dbg !6314
  %45 = load ptr, ptr %next50, align 8, !dbg !6314
  store ptr %45, ptr %__mptr48, align 8, !dbg !6314
  %46 = load ptr, ptr %__mptr48, align 8, !dbg !6314
  %add.ptr52 = getelementptr i8, ptr %46, i64 -8, !dbg !6314
  store ptr %add.ptr52, ptr %tmp51, align 8, !dbg !6314
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr48) #15, !dbg !6270
  %47 = load ptr, ptr %tmp51, align 8, !dbg !6314
  store ptr %47, ptr %plane, align 8, !dbg !6270
  br label %for.cond, !dbg !6270, !llvm.loop !6315

for.end:                                          ; preds = %for.cond
  %48 = load ptr, ptr %state, align 8, !dbg !6319
  %call53 = call i32 @drm_atomic_commit(ptr noundef %48) #16, !dbg !6320
  store i32 %call53, ptr %ret, align 4, !dbg !6321
  br label %out, !dbg !6322

out:                                              ; preds = %for.end, %cleanup45, %cleanup
  call void @llvm.dbg.label(metadata !6187), !dbg !6323
  %49 = load i32, ptr %ret, align 4, !dbg !6324
  %cmp54 = icmp eq i32 %49, -35, !dbg !6326
  br i1 %cmp54, label %if.then56, label %if.end61, !dbg !6327

if.then56:                                        ; preds = %out
  %50 = load ptr, ptr %state, align 8, !dbg !6328
  call void @drm_atomic_state_clear(ptr noundef %50) #16, !dbg !6330
  %call57 = call i32 @drm_modeset_backoff(ptr noundef %ctx) #16, !dbg !6331
  store i32 %call57, ptr %ret, align 4, !dbg !6332
  %51 = load i32, ptr %ret, align 4, !dbg !6333
  %tobool58 = icmp ne i32 %51, 0, !dbg !6333
  br i1 %tobool58, label %if.end60, label %if.then59, !dbg !6335

if.then59:                                        ; preds = %if.then56
  br label %retry, !dbg !6336

if.end60:                                         ; preds = %if.then56
  br label %if.end61, !dbg !6337

if.end61:                                         ; preds = %if.end60, %out
  %52 = load ptr, ptr %damage, align 8, !dbg !6338
  call void @drm_property_blob_put(ptr noundef %52) #16, !dbg !6339
  %53 = load ptr, ptr %rects, align 8, !dbg !6340
  call void @kfree(ptr noundef %53) #16, !dbg !6341
  %54 = load ptr, ptr %state, align 8, !dbg !6342
  call void @drm_atomic_state_put(ptr noundef %54) #16, !dbg !6343
  br label %out_drop_locks, !dbg !6343

out_drop_locks:                                   ; preds = %if.end61, %if.then
  call void @llvm.dbg.label(metadata !6188), !dbg !6344
  call void @drm_modeset_drop_locks(ptr noundef %ctx) #16, !dbg !6345
  call void @drm_modeset_acquire_fini(ptr noundef %ctx) #16, !dbg !6346
  %55 = load i32, ptr %ret, align 4, !dbg !6347
  store i32 %55, ptr %retval, align 4, !dbg !6348
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup62, !dbg !6348

cleanup62:                                        ; preds = %out_drop_locks, %cleanup45, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !6349
  call void @llvm.lifetime.end.p0(i64 8, ptr %plane) #15, !dbg !6349
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #15, !dbg !6349
  call void @llvm.lifetime.end.p0(i64 8, ptr %rects) #15, !dbg !6349
  call void @llvm.lifetime.end.p0(i64 8, ptr %damage) #15, !dbg !6349
  call void @llvm.lifetime.end.p0(i64 64, ptr %ctx) #15, !dbg !6349
  %56 = load i32, ptr %retval, align 4, !dbg !6349
  ret i32 %56, !dbg !6349
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6350 dso_local void @drm_modeset_acquire_init(ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6353 dso_local ptr @drm_atomic_state_alloc(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !6354 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6358, metadata !DIExpression()), !dbg !6361
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6359, metadata !DIExpression()), !dbg !6362
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6360, metadata !DIExpression()), !dbg !6363
  %0 = load i64, ptr %n.addr, align 8, !dbg !6364
  %1 = load i64, ptr %size.addr, align 8, !dbg !6365
  %2 = load i32, ptr %flags.addr, align 4, !dbg !6366
  %or = or i32 %2, 256, !dbg !6367
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #17, !dbg !6368
  ret ptr %call, !dbg !6369
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @convert_clip_rect_to_rect(ptr noundef %src, ptr noundef %dest, i32 noundef %num_clips, i32 noundef %src_inc) #0 align 16 !dbg !6370 {
entry:
  %src.addr = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  %num_clips.addr = alloca i32, align 4
  %src_inc.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !6376, metadata !DIExpression()), !dbg !6380
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !6377, metadata !DIExpression()), !dbg !6381
  store i32 %num_clips, ptr %num_clips.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num_clips.addr, metadata !6378, metadata !DIExpression()), !dbg !6382
  store i32 %src_inc, ptr %src_inc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %src_inc.addr, metadata !6379, metadata !DIExpression()), !dbg !6383
  br label %while.cond, !dbg !6384

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %num_clips.addr, align 4, !dbg !6385
  %cmp = icmp ugt i32 %0, 0, !dbg !6386
  br i1 %cmp, label %while.body, label %while.end, !dbg !6384

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %src.addr, align 8, !dbg !6387
  %x1 = getelementptr inbounds %struct.drm_clip_rect, ptr %1, i32 0, i32 0, !dbg !6389
  %2 = load i16, ptr %x1, align 2, !dbg !6389
  %conv = zext i16 %2 to i32, !dbg !6387
  %3 = load ptr, ptr %dest.addr, align 8, !dbg !6390
  %x11 = getelementptr inbounds %struct.drm_mode_rect, ptr %3, i32 0, i32 0, !dbg !6391
  store i32 %conv, ptr %x11, align 4, !dbg !6392
  %4 = load ptr, ptr %src.addr, align 8, !dbg !6393
  %y1 = getelementptr inbounds %struct.drm_clip_rect, ptr %4, i32 0, i32 1, !dbg !6394
  %5 = load i16, ptr %y1, align 2, !dbg !6394
  %conv2 = zext i16 %5 to i32, !dbg !6393
  %6 = load ptr, ptr %dest.addr, align 8, !dbg !6395
  %y13 = getelementptr inbounds %struct.drm_mode_rect, ptr %6, i32 0, i32 1, !dbg !6396
  store i32 %conv2, ptr %y13, align 4, !dbg !6397
  %7 = load ptr, ptr %src.addr, align 8, !dbg !6398
  %x2 = getelementptr inbounds %struct.drm_clip_rect, ptr %7, i32 0, i32 2, !dbg !6399
  %8 = load i16, ptr %x2, align 2, !dbg !6399
  %conv4 = zext i16 %8 to i32, !dbg !6398
  %9 = load ptr, ptr %dest.addr, align 8, !dbg !6400
  %x25 = getelementptr inbounds %struct.drm_mode_rect, ptr %9, i32 0, i32 2, !dbg !6401
  store i32 %conv4, ptr %x25, align 4, !dbg !6402
  %10 = load ptr, ptr %src.addr, align 8, !dbg !6403
  %y2 = getelementptr inbounds %struct.drm_clip_rect, ptr %10, i32 0, i32 3, !dbg !6404
  %11 = load i16, ptr %y2, align 2, !dbg !6404
  %conv6 = zext i16 %11 to i32, !dbg !6403
  %12 = load ptr, ptr %dest.addr, align 8, !dbg !6405
  %y27 = getelementptr inbounds %struct.drm_mode_rect, ptr %12, i32 0, i32 3, !dbg !6406
  store i32 %conv6, ptr %y27, align 4, !dbg !6407
  %13 = load i32, ptr %src_inc.addr, align 4, !dbg !6408
  %14 = load ptr, ptr %src.addr, align 8, !dbg !6409
  %idx.ext = zext i32 %13 to i64, !dbg !6409
  %add.ptr = getelementptr %struct.drm_clip_rect, ptr %14, i64 %idx.ext, !dbg !6409
  store ptr %add.ptr, ptr %src.addr, align 8, !dbg !6409
  %15 = load ptr, ptr %dest.addr, align 8, !dbg !6410
  %incdec.ptr = getelementptr %struct.drm_mode_rect, ptr %15, i32 1, !dbg !6410
  store ptr %incdec.ptr, ptr %dest.addr, align 8, !dbg !6410
  %16 = load i32, ptr %num_clips.addr, align 4, !dbg !6411
  %dec = add i32 %16, -1, !dbg !6411
  store i32 %dec, ptr %num_clips.addr, align 4, !dbg !6411
  br label %while.cond, !dbg !6384, !llvm.loop !6412

while.end:                                        ; preds = %while.cond
  ret void, !dbg !6414
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6415 dso_local ptr @drm_property_create_blob(ptr noundef, i64 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !6418 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6423, metadata !DIExpression()), !dbg !6424
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6425
  %1 = ptrtoint ptr %0 to i64, !dbg !6425
  %2 = inttoptr i64 %1 to ptr, !dbg !6425
  %3 = ptrtoint ptr %2 to i64, !dbg !6425
  %cmp = icmp uge i64 %3, -4095, !dbg !6425
  %lnot = xor i1 %cmp, true, !dbg !6425
  %lnot1 = xor i1 %lnot, true, !dbg !6425
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6425
  %conv = sext i32 %lnot.ext to i64, !dbg !6425
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6425
  %tobool = icmp ne i64 %expval, 0, !dbg !6425
  ret i1 %tobool, !dbg !6426
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #3 align 16 !dbg !6427 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6431, metadata !DIExpression()), !dbg !6432
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6433
  %1 = ptrtoint ptr %0 to i64, !dbg !6434
  ret i64 %1, !dbg !6435
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6436 dso_local i32 @drm_modeset_lock(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6439 dso_local void @drm_modeset_unlock(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6442 dso_local ptr @drm_atomic_get_plane_state(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6445 dso_local zeroext i1 @drm_property_replace_blob(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6449 dso_local i32 @drm_atomic_commit(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6450 dso_local void @drm_atomic_state_clear(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6451 dso_local i32 @drm_modeset_backoff(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6454 dso_local void @kfree(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_atomic_state_put(ptr noundef %state) #3 align 16 !dbg !6457 {
entry:
  %state.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6459, metadata !DIExpression()), !dbg !6460
  %0 = load ptr, ptr %state.addr, align 8, !dbg !6461
  %ref = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 0, !dbg !6462
  %call = call i32 @kref_put(ptr noundef %ref, ptr noundef @__drm_atomic_state_free) #16, !dbg !6463
  ret void, !dbg !6464
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6465 dso_local void @drm_modeset_drop_locks(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6468 dso_local void @drm_modeset_acquire_fini(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_atomic_helper_damage_iter_init(ptr noundef %iter, ptr noundef %old_state, ptr noundef %state) #0 align 16 !dbg !6469 {
entry:
  %iter.addr = alloca ptr, align 8
  %old_state.addr = alloca ptr, align 8
  %state.addr = alloca ptr, align 8
  %src = alloca %struct.drm_rect, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.drm_rect, align 4
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !6484, metadata !DIExpression()), !dbg !6488
  store ptr %old_state, ptr %old_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old_state.addr, metadata !6485, metadata !DIExpression()), !dbg !6489
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6486, metadata !DIExpression()), !dbg !6490
  call void @llvm.lifetime.start.p0(i64 16, ptr %src) #15, !dbg !6491
  call void @llvm.dbg.declare(metadata ptr %src, metadata !6487, metadata !DIExpression()), !dbg !6492
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !6493
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 40, i1 false), !dbg !6494
  %1 = load ptr, ptr %state.addr, align 8, !dbg !6495
  %tobool = icmp ne ptr %1, null, !dbg !6495
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6497

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %state.addr, align 8, !dbg !6498
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %2, i32 0, i32 1, !dbg !6499
  %3 = load ptr, ptr %crtc, align 8, !dbg !6499
  %tobool1 = icmp ne ptr %3, null, !dbg !6498
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !6500

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %state.addr, align 8, !dbg !6501
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %4, i32 0, i32 2, !dbg !6502
  %5 = load ptr, ptr %fb, align 8, !dbg !6502
  %tobool3 = icmp ne ptr %5, null, !dbg !6501
  br i1 %tobool3, label %lor.lhs.false4, label %if.then, !dbg !6503

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %6 = load ptr, ptr %state.addr, align 8, !dbg !6504
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %6, i32 0, i32 23, !dbg !6505
  %7 = load i8, ptr %visible, align 4, !dbg !6505, !range !6506, !noundef !1090
  %tobool5 = trunc i8 %7 to i1, !dbg !6505
  br i1 %tobool5, label %if.end, label %if.then, !dbg !6507

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6508

if.end:                                           ; preds = %lor.lhs.false4
  %8 = load ptr, ptr %state.addr, align 8, !dbg !6509
  %call = call ptr @drm_plane_get_damage_clips(ptr noundef %8) #16, !dbg !6510
  %9 = load ptr, ptr %iter.addr, align 8, !dbg !6511
  %clips = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %9, i32 0, i32 1, !dbg !6512
  store ptr %call, ptr %clips, align 8, !dbg !6513
  %10 = load ptr, ptr %state.addr, align 8, !dbg !6514
  %call6 = call i32 @drm_plane_get_damage_clips_count(ptr noundef %10) #16, !dbg !6515
  %11 = load ptr, ptr %iter.addr, align 8, !dbg !6516
  %num_clips = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %11, i32 0, i32 2, !dbg !6517
  store i32 %call6, ptr %num_clips, align 8, !dbg !6518
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #15, !dbg !6519
  %12 = load ptr, ptr %state.addr, align 8, !dbg !6520
  %call7 = call { i64, i64 } @drm_plane_state_src(ptr noundef %12) #16, !dbg !6519
  %13 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0, !dbg !6519
  %14 = extractvalue { i64, i64 } %call7, 0, !dbg !6519
  store i64 %14, ptr %13, align 4, !dbg !6519
  %15 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1, !dbg !6519
  %16 = extractvalue { i64, i64 } %call7, 1, !dbg !6519
  store i64 %16, ptr %15, align 4, !dbg !6519
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %src, ptr align 4 %tmp, i64 16, i1 false), !dbg !6519
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #15, !dbg !6519
  %x1 = getelementptr inbounds %struct.drm_rect, ptr %src, i32 0, i32 0, !dbg !6521
  %17 = load i32, ptr %x1, align 4, !dbg !6521
  %shr = ashr i32 %17, 16, !dbg !6522
  %18 = load ptr, ptr %iter.addr, align 8, !dbg !6523
  %plane_src = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %18, i32 0, i32 0, !dbg !6524
  %x18 = getelementptr inbounds %struct.drm_rect, ptr %plane_src, i32 0, i32 0, !dbg !6525
  store i32 %shr, ptr %x18, align 8, !dbg !6526
  %y1 = getelementptr inbounds %struct.drm_rect, ptr %src, i32 0, i32 1, !dbg !6527
  %19 = load i32, ptr %y1, align 4, !dbg !6527
  %shr9 = ashr i32 %19, 16, !dbg !6528
  %20 = load ptr, ptr %iter.addr, align 8, !dbg !6529
  %plane_src10 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %20, i32 0, i32 0, !dbg !6530
  %y111 = getelementptr inbounds %struct.drm_rect, ptr %plane_src10, i32 0, i32 1, !dbg !6531
  store i32 %shr9, ptr %y111, align 4, !dbg !6532
  %x2 = getelementptr inbounds %struct.drm_rect, ptr %src, i32 0, i32 2, !dbg !6533
  %21 = load i32, ptr %x2, align 4, !dbg !6533
  %shr12 = ashr i32 %21, 16, !dbg !6534
  %x213 = getelementptr inbounds %struct.drm_rect, ptr %src, i32 0, i32 2, !dbg !6535
  %22 = load i32, ptr %x213, align 4, !dbg !6535
  %and = and i32 %22, 65535, !dbg !6536
  %tobool14 = icmp ne i32 %and, 0, !dbg !6537
  %lnot = xor i1 %tobool14, true, !dbg !6537
  %lnot15 = xor i1 %lnot, true, !dbg !6538
  %lnot.ext = zext i1 %lnot15 to i32, !dbg !6538
  %add = add i32 %shr12, %lnot.ext, !dbg !6539
  %23 = load ptr, ptr %iter.addr, align 8, !dbg !6540
  %plane_src16 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %23, i32 0, i32 0, !dbg !6541
  %x217 = getelementptr inbounds %struct.drm_rect, ptr %plane_src16, i32 0, i32 2, !dbg !6542
  store i32 %add, ptr %x217, align 8, !dbg !6543
  %y2 = getelementptr inbounds %struct.drm_rect, ptr %src, i32 0, i32 3, !dbg !6544
  %24 = load i32, ptr %y2, align 4, !dbg !6544
  %shr18 = ashr i32 %24, 16, !dbg !6545
  %y219 = getelementptr inbounds %struct.drm_rect, ptr %src, i32 0, i32 3, !dbg !6546
  %25 = load i32, ptr %y219, align 4, !dbg !6546
  %and20 = and i32 %25, 65535, !dbg !6547
  %tobool21 = icmp ne i32 %and20, 0, !dbg !6548
  %lnot22 = xor i1 %tobool21, true, !dbg !6548
  %lnot24 = xor i1 %lnot22, true, !dbg !6549
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !6549
  %add26 = add i32 %shr18, %lnot.ext25, !dbg !6550
  %26 = load ptr, ptr %iter.addr, align 8, !dbg !6551
  %plane_src27 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %26, i32 0, i32 0, !dbg !6552
  %y228 = getelementptr inbounds %struct.drm_rect, ptr %plane_src27, i32 0, i32 3, !dbg !6553
  store i32 %add26, ptr %y228, align 4, !dbg !6554
  %27 = load ptr, ptr %iter.addr, align 8, !dbg !6555
  %clips29 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %27, i32 0, i32 1, !dbg !6557
  %28 = load ptr, ptr %clips29, align 8, !dbg !6557
  %tobool30 = icmp ne ptr %28, null, !dbg !6555
  br i1 %tobool30, label %lor.lhs.false31, label %if.then37, !dbg !6558

lor.lhs.false31:                                  ; preds = %if.end
  %29 = load ptr, ptr %state.addr, align 8, !dbg !6559
  %ignore_damage_clips = getelementptr inbounds %struct.drm_plane_state, ptr %29, i32 0, i32 20, !dbg !6560
  %30 = load i8, ptr %ignore_damage_clips, align 8, !dbg !6560, !range !6506, !noundef !1090
  %tobool32 = trunc i8 %30 to i1, !dbg !6560
  br i1 %tobool32, label %if.then37, label %lor.lhs.false33, !dbg !6561

lor.lhs.false33:                                  ; preds = %lor.lhs.false31
  %31 = load ptr, ptr %state.addr, align 8, !dbg !6562
  %src34 = getelementptr inbounds %struct.drm_plane_state, ptr %31, i32 0, i32 21, !dbg !6563
  %32 = load ptr, ptr %old_state.addr, align 8, !dbg !6564
  %src35 = getelementptr inbounds %struct.drm_plane_state, ptr %32, i32 0, i32 21, !dbg !6565
  %call36 = call zeroext i1 @drm_rect_equals(ptr noundef %src34, ptr noundef %src35) #16, !dbg !6566
  br i1 %call36, label %if.end40, label %if.then37, !dbg !6567

if.then37:                                        ; preds = %lor.lhs.false33, %lor.lhs.false31, %if.end
  %33 = load ptr, ptr %iter.addr, align 8, !dbg !6568
  %clips38 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %33, i32 0, i32 1, !dbg !6570
  store ptr null, ptr %clips38, align 8, !dbg !6571
  %34 = load ptr, ptr %iter.addr, align 8, !dbg !6572
  %num_clips39 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %34, i32 0, i32 2, !dbg !6573
  store i32 0, ptr %num_clips39, align 8, !dbg !6574
  %35 = load ptr, ptr %iter.addr, align 8, !dbg !6575
  %full_update = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %35, i32 0, i32 4, !dbg !6576
  store i8 1, ptr %full_update, align 8, !dbg !6577
  br label %if.end40, !dbg !6578

if.end40:                                         ; preds = %if.then37, %lor.lhs.false33
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6579
  br label %cleanup, !dbg !6579

cleanup:                                          ; preds = %if.end40, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %src) #15, !dbg !6579
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6579

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6580 dso_local ptr @drm_plane_get_damage_clips(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6583 dso_local i32 @drm_plane_get_damage_clips_count(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal { i64, i64 } @drm_plane_state_src(ptr noundef %state) #3 align 16 !dbg !6586 {
entry:
  %retval = alloca %struct.drm_rect, align 4
  %state.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6590, metadata !DIExpression()), !dbg !6592
  call void @llvm.dbg.declare(metadata ptr %retval, metadata !6591, metadata !DIExpression()), !dbg !6593
  %x1 = getelementptr inbounds %struct.drm_rect, ptr %retval, i32 0, i32 0, !dbg !6594
  %0 = load ptr, ptr %state.addr, align 8, !dbg !6595
  %src_x = getelementptr inbounds %struct.drm_plane_state, ptr %0, i32 0, i32 8, !dbg !6596
  %1 = load i32, ptr %src_x, align 8, !dbg !6596
  store i32 %1, ptr %x1, align 4, !dbg !6594
  %y1 = getelementptr inbounds %struct.drm_rect, ptr %retval, i32 0, i32 1, !dbg !6594
  %2 = load ptr, ptr %state.addr, align 8, !dbg !6597
  %src_y = getelementptr inbounds %struct.drm_plane_state, ptr %2, i32 0, i32 9, !dbg !6598
  %3 = load i32, ptr %src_y, align 4, !dbg !6598
  store i32 %3, ptr %y1, align 4, !dbg !6594
  %x2 = getelementptr inbounds %struct.drm_rect, ptr %retval, i32 0, i32 2, !dbg !6594
  %4 = load ptr, ptr %state.addr, align 8, !dbg !6599
  %src_x1 = getelementptr inbounds %struct.drm_plane_state, ptr %4, i32 0, i32 8, !dbg !6600
  %5 = load i32, ptr %src_x1, align 8, !dbg !6600
  %6 = load ptr, ptr %state.addr, align 8, !dbg !6601
  %src_w = getelementptr inbounds %struct.drm_plane_state, ptr %6, i32 0, i32 11, !dbg !6602
  %7 = load i32, ptr %src_w, align 4, !dbg !6602
  %add = add i32 %5, %7, !dbg !6603
  store i32 %add, ptr %x2, align 4, !dbg !6594
  %y2 = getelementptr inbounds %struct.drm_rect, ptr %retval, i32 0, i32 3, !dbg !6594
  %8 = load ptr, ptr %state.addr, align 8, !dbg !6604
  %src_y2 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 9, !dbg !6605
  %9 = load i32, ptr %src_y2, align 4, !dbg !6605
  %10 = load ptr, ptr %state.addr, align 8, !dbg !6606
  %src_h = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 10, !dbg !6607
  %11 = load i32, ptr %src_h, align 8, !dbg !6607
  %add3 = add i32 %9, %11, !dbg !6608
  store i32 %add3, ptr %y2, align 4, !dbg !6594
  %12 = load { i64, i64 }, ptr %retval, align 4, !dbg !6609
  ret { i64, i64 } %12, !dbg !6609
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @drm_rect_equals(ptr noundef %r1, ptr noundef %r2) #3 align 16 !dbg !6610 {
entry:
  %r1.addr = alloca ptr, align 8
  %r2.addr = alloca ptr, align 8
  store ptr %r1, ptr %r1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r1.addr, metadata !6614, metadata !DIExpression()), !dbg !6616
  store ptr %r2, ptr %r2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r2.addr, metadata !6615, metadata !DIExpression()), !dbg !6617
  %0 = load ptr, ptr %r1.addr, align 8, !dbg !6618
  %x1 = getelementptr inbounds %struct.drm_rect, ptr %0, i32 0, i32 0, !dbg !6619
  %1 = load i32, ptr %x1, align 4, !dbg !6619
  %2 = load ptr, ptr %r2.addr, align 8, !dbg !6620
  %x11 = getelementptr inbounds %struct.drm_rect, ptr %2, i32 0, i32 0, !dbg !6621
  %3 = load i32, ptr %x11, align 4, !dbg !6621
  %cmp = icmp eq i32 %1, %3, !dbg !6622
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !6623

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %r1.addr, align 8, !dbg !6624
  %x2 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 2, !dbg !6625
  %5 = load i32, ptr %x2, align 4, !dbg !6625
  %6 = load ptr, ptr %r2.addr, align 8, !dbg !6626
  %x22 = getelementptr inbounds %struct.drm_rect, ptr %6, i32 0, i32 2, !dbg !6627
  %7 = load i32, ptr %x22, align 4, !dbg !6627
  %cmp3 = icmp eq i32 %5, %7, !dbg !6628
  br i1 %cmp3, label %land.lhs.true4, label %land.end, !dbg !6629

land.lhs.true4:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %r1.addr, align 8, !dbg !6630
  %y1 = getelementptr inbounds %struct.drm_rect, ptr %8, i32 0, i32 1, !dbg !6631
  %9 = load i32, ptr %y1, align 4, !dbg !6631
  %10 = load ptr, ptr %r2.addr, align 8, !dbg !6632
  %y15 = getelementptr inbounds %struct.drm_rect, ptr %10, i32 0, i32 1, !dbg !6633
  %11 = load i32, ptr %y15, align 4, !dbg !6633
  %cmp6 = icmp eq i32 %9, %11, !dbg !6634
  br i1 %cmp6, label %land.rhs, label %land.end, !dbg !6635

land.rhs:                                         ; preds = %land.lhs.true4
  %12 = load ptr, ptr %r1.addr, align 8, !dbg !6636
  %y2 = getelementptr inbounds %struct.drm_rect, ptr %12, i32 0, i32 3, !dbg !6637
  %13 = load i32, ptr %y2, align 4, !dbg !6637
  %14 = load ptr, ptr %r2.addr, align 8, !dbg !6638
  %y27 = getelementptr inbounds %struct.drm_rect, ptr %14, i32 0, i32 3, !dbg !6639
  %15 = load i32, ptr %y27, align 4, !dbg !6639
  %cmp8 = icmp eq i32 %13, %15, !dbg !6640
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true4, %land.lhs.true, %entry
  %16 = phi i1 [ false, %land.lhs.true4 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp8, %land.rhs ], !dbg !6641
  ret i1 %16, !dbg !6642
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @drm_atomic_helper_damage_iter_next(ptr noundef %iter, ptr noundef %rect) #0 align 16 !dbg !6643 {
entry:
  %retval = alloca i1, align 1
  %iter.addr = alloca ptr, align 8
  %rect.addr = alloca ptr, align 8
  %ret = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !6647, metadata !DIExpression()), !dbg !6650
  store ptr %rect, ptr %rect.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rect.addr, metadata !6648, metadata !DIExpression()), !dbg !6651
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #15, !dbg !6652
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6649, metadata !DIExpression()), !dbg !6653
  store i8 0, ptr %ret, align 1, !dbg !6653
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !6654
  %full_update = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %0, i32 0, i32 4, !dbg !6656
  %1 = load i8, ptr %full_update, align 8, !dbg !6656, !range !6506, !noundef !1090
  %tobool = trunc i8 %1 to i1, !dbg !6656
  br i1 %tobool, label %if.then, label %if.end, !dbg !6657

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %rect.addr, align 8, !dbg !6658
  %3 = load ptr, ptr %iter.addr, align 8, !dbg !6660
  %plane_src = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %3, i32 0, i32 0, !dbg !6661
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 8 %plane_src, i64 16, i1 false), !dbg !6661
  %4 = load ptr, ptr %iter.addr, align 8, !dbg !6662
  %full_update1 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %4, i32 0, i32 4, !dbg !6663
  store i8 0, ptr %full_update1, align 8, !dbg !6664
  store i1 true, ptr %retval, align 1, !dbg !6665
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6665

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !6666

while.cond:                                       ; preds = %if.end6, %if.end
  %5 = load ptr, ptr %iter.addr, align 8, !dbg !6667
  %curr_clip = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %5, i32 0, i32 3, !dbg !6668
  %6 = load i32, ptr %curr_clip, align 4, !dbg !6668
  %7 = load ptr, ptr %iter.addr, align 8, !dbg !6669
  %num_clips = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %7, i32 0, i32 2, !dbg !6670
  %8 = load i32, ptr %num_clips, align 8, !dbg !6670
  %cmp = icmp ult i32 %6, %8, !dbg !6671
  br i1 %cmp, label %while.body, label %while.end, !dbg !6666

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %rect.addr, align 8, !dbg !6672
  %10 = load ptr, ptr %iter.addr, align 8, !dbg !6674
  %clips = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %10, i32 0, i32 1, !dbg !6675
  %11 = load ptr, ptr %clips, align 8, !dbg !6675
  %12 = load ptr, ptr %iter.addr, align 8, !dbg !6676
  %curr_clip2 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %12, i32 0, i32 3, !dbg !6677
  %13 = load i32, ptr %curr_clip2, align 4, !dbg !6677
  %idxprom = zext i32 %13 to i64, !dbg !6674
  %arrayidx = getelementptr %struct.drm_rect, ptr %11, i64 %idxprom, !dbg !6674
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %9, ptr align 4 %arrayidx, i64 16, i1 false), !dbg !6674
  %14 = load ptr, ptr %iter.addr, align 8, !dbg !6678
  %curr_clip3 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %14, i32 0, i32 3, !dbg !6679
  %15 = load i32, ptr %curr_clip3, align 4, !dbg !6680
  %inc = add i32 %15, 1, !dbg !6680
  store i32 %inc, ptr %curr_clip3, align 4, !dbg !6680
  %16 = load ptr, ptr %rect.addr, align 8, !dbg !6681
  %17 = load ptr, ptr %iter.addr, align 8, !dbg !6683
  %plane_src4 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %17, i32 0, i32 0, !dbg !6684
  %call = call zeroext i1 @drm_rect_intersect(ptr noundef %16, ptr noundef %plane_src4) #16, !dbg !6685
  br i1 %call, label %if.then5, label %if.end6, !dbg !6686

if.then5:                                         ; preds = %while.body
  store i8 1, ptr %ret, align 1, !dbg !6687
  br label %while.end, !dbg !6689

if.end6:                                          ; preds = %while.body
  br label %while.cond, !dbg !6666, !llvm.loop !6690

while.end:                                        ; preds = %if.then5, %while.cond
  %18 = load i8, ptr %ret, align 1, !dbg !6692, !range !6506, !noundef !1090
  %tobool7 = trunc i8 %18 to i1, !dbg !6692
  store i1 %tobool7, ptr %retval, align 1, !dbg !6693
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6693

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #15, !dbg !6694
  %19 = load i1, ptr %retval, align 1, !dbg !6694
  ret i1 %19, !dbg !6694
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6695 dso_local zeroext i1 @drm_rect_intersect(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @drm_atomic_helper_damage_merged(ptr noundef %old_state, ptr noundef %state, ptr noundef %rect) #0 align 16 !dbg !6698 {
entry:
  %old_state.addr = alloca ptr, align 8
  %state.addr = alloca ptr, align 8
  %rect.addr = alloca ptr, align 8
  %iter = alloca %struct.drm_atomic_helper_damage_iter, align 8
  %clip = alloca %struct.drm_rect, align 4
  %valid = alloca i8, align 1
  %__UNIQUE_ID___x312 = alloca i32, align 4
  %__UNIQUE_ID___y313 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___x314 = alloca i32, align 4
  %__UNIQUE_ID___y315 = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %__UNIQUE_ID___x316 = alloca i32, align 4
  %__UNIQUE_ID___y317 = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  %__UNIQUE_ID___x318 = alloca i32, align 4
  %__UNIQUE_ID___y319 = alloca i32, align 4
  %tmp24 = alloca i32, align 4
  store ptr %old_state, ptr %old_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old_state.addr, metadata !6702, metadata !DIExpression()), !dbg !6721
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6703, metadata !DIExpression()), !dbg !6722
  store ptr %rect, ptr %rect.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rect.addr, metadata !6704, metadata !DIExpression()), !dbg !6723
  call void @llvm.lifetime.start.p0(i64 40, ptr %iter) #15, !dbg !6724
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !6705, metadata !DIExpression()), !dbg !6725
  call void @llvm.lifetime.start.p0(i64 16, ptr %clip) #15, !dbg !6726
  call void @llvm.dbg.declare(metadata ptr %clip, metadata !6706, metadata !DIExpression()), !dbg !6727
  call void @llvm.lifetime.start.p0(i64 1, ptr %valid) #15, !dbg !6728
  call void @llvm.dbg.declare(metadata ptr %valid, metadata !6707, metadata !DIExpression()), !dbg !6729
  store i8 0, ptr %valid, align 1, !dbg !6729
  %0 = load ptr, ptr %rect.addr, align 8, !dbg !6730
  %x1 = getelementptr inbounds %struct.drm_rect, ptr %0, i32 0, i32 0, !dbg !6731
  store i32 2147483647, ptr %x1, align 4, !dbg !6732
  %1 = load ptr, ptr %rect.addr, align 8, !dbg !6733
  %y1 = getelementptr inbounds %struct.drm_rect, ptr %1, i32 0, i32 1, !dbg !6734
  store i32 2147483647, ptr %y1, align 4, !dbg !6735
  %2 = load ptr, ptr %rect.addr, align 8, !dbg !6736
  %x2 = getelementptr inbounds %struct.drm_rect, ptr %2, i32 0, i32 2, !dbg !6737
  store i32 0, ptr %x2, align 4, !dbg !6738
  %3 = load ptr, ptr %rect.addr, align 8, !dbg !6739
  %y2 = getelementptr inbounds %struct.drm_rect, ptr %3, i32 0, i32 3, !dbg !6740
  store i32 0, ptr %y2, align 4, !dbg !6741
  %4 = load ptr, ptr %old_state.addr, align 8, !dbg !6742
  %5 = load ptr, ptr %state.addr, align 8, !dbg !6743
  call void @drm_atomic_helper_damage_iter_init(ptr noundef %iter, ptr noundef %4, ptr noundef %5) #16, !dbg !6744
  br label %while.cond, !dbg !6745

while.cond:                                       ; preds = %cond.end28, %entry
  %call = call zeroext i1 @drm_atomic_helper_damage_iter_next(ptr noundef %iter, ptr noundef %clip) #16, !dbg !6745
  br i1 %call, label %while.body, label %while.end, !dbg !6745

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x312) #15, !dbg !6746
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x312, metadata !6708, metadata !DIExpression()), !dbg !6746
  %6 = load ptr, ptr %rect.addr, align 8, !dbg !6746
  %x11 = getelementptr inbounds %struct.drm_rect, ptr %6, i32 0, i32 0, !dbg !6746
  %7 = load i32, ptr %x11, align 4, !dbg !6746
  store i32 %7, ptr %__UNIQUE_ID___x312, align 4, !dbg !6746
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y313) #15, !dbg !6746
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y313, metadata !6711, metadata !DIExpression()), !dbg !6746
  %x12 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 0, !dbg !6746
  %8 = load i32, ptr %x12, align 4, !dbg !6746
  store i32 %8, ptr %__UNIQUE_ID___y313, align 4, !dbg !6746
  %9 = load i32, ptr %__UNIQUE_ID___x312, align 4, !dbg !6746
  %10 = load i32, ptr %__UNIQUE_ID___y313, align 4, !dbg !6746
  %cmp = icmp slt i32 %9, %10, !dbg !6746
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6746

cond.true:                                        ; preds = %while.body
  %11 = load i32, ptr %__UNIQUE_ID___x312, align 4, !dbg !6746
  br label %cond.end, !dbg !6746

cond.false:                                       ; preds = %while.body
  %12 = load i32, ptr %__UNIQUE_ID___y313, align 4, !dbg !6746
  br label %cond.end, !dbg !6746

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ %12, %cond.false ], !dbg !6746
  store i32 %cond, ptr %tmp, align 4, !dbg !6746
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y313) #15, !dbg !6747
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x312) #15, !dbg !6747
  %13 = load i32, ptr %tmp, align 4, !dbg !6746
  %14 = load ptr, ptr %rect.addr, align 8, !dbg !6748
  %x13 = getelementptr inbounds %struct.drm_rect, ptr %14, i32 0, i32 0, !dbg !6749
  store i32 %13, ptr %x13, align 4, !dbg !6750
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x314) #15, !dbg !6751
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x314, metadata !6712, metadata !DIExpression()), !dbg !6751
  %15 = load ptr, ptr %rect.addr, align 8, !dbg !6751
  %y14 = getelementptr inbounds %struct.drm_rect, ptr %15, i32 0, i32 1, !dbg !6751
  %16 = load i32, ptr %y14, align 4, !dbg !6751
  store i32 %16, ptr %__UNIQUE_ID___x314, align 4, !dbg !6751
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y315) #15, !dbg !6751
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y315, metadata !6714, metadata !DIExpression()), !dbg !6751
  %y15 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 1, !dbg !6751
  %17 = load i32, ptr %y15, align 4, !dbg !6751
  store i32 %17, ptr %__UNIQUE_ID___y315, align 4, !dbg !6751
  %18 = load i32, ptr %__UNIQUE_ID___x314, align 4, !dbg !6751
  %19 = load i32, ptr %__UNIQUE_ID___y315, align 4, !dbg !6751
  %cmp7 = icmp slt i32 %18, %19, !dbg !6751
  br i1 %cmp7, label %cond.true8, label %cond.false9, !dbg !6751

cond.true8:                                       ; preds = %cond.end
  %20 = load i32, ptr %__UNIQUE_ID___x314, align 4, !dbg !6751
  br label %cond.end10, !dbg !6751

cond.false9:                                      ; preds = %cond.end
  %21 = load i32, ptr %__UNIQUE_ID___y315, align 4, !dbg !6751
  br label %cond.end10, !dbg !6751

cond.end10:                                       ; preds = %cond.false9, %cond.true8
  %cond11 = phi i32 [ %20, %cond.true8 ], [ %21, %cond.false9 ], !dbg !6751
  store i32 %cond11, ptr %tmp6, align 4, !dbg !6751
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y315) #15, !dbg !6752
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x314) #15, !dbg !6752
  %22 = load i32, ptr %tmp6, align 4, !dbg !6751
  %23 = load ptr, ptr %rect.addr, align 8, !dbg !6753
  %y112 = getelementptr inbounds %struct.drm_rect, ptr %23, i32 0, i32 1, !dbg !6754
  store i32 %22, ptr %y112, align 4, !dbg !6755
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x316) #15, !dbg !6756
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x316, metadata !6715, metadata !DIExpression()), !dbg !6756
  %24 = load ptr, ptr %rect.addr, align 8, !dbg !6756
  %x213 = getelementptr inbounds %struct.drm_rect, ptr %24, i32 0, i32 2, !dbg !6756
  %25 = load i32, ptr %x213, align 4, !dbg !6756
  store i32 %25, ptr %__UNIQUE_ID___x316, align 4, !dbg !6756
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y317) #15, !dbg !6756
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y317, metadata !6717, metadata !DIExpression()), !dbg !6756
  %x214 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 2, !dbg !6756
  %26 = load i32, ptr %x214, align 4, !dbg !6756
  store i32 %26, ptr %__UNIQUE_ID___y317, align 4, !dbg !6756
  %27 = load i32, ptr %__UNIQUE_ID___x316, align 4, !dbg !6756
  %28 = load i32, ptr %__UNIQUE_ID___y317, align 4, !dbg !6756
  %cmp16 = icmp sgt i32 %27, %28, !dbg !6756
  br i1 %cmp16, label %cond.true17, label %cond.false18, !dbg !6756

cond.true17:                                      ; preds = %cond.end10
  %29 = load i32, ptr %__UNIQUE_ID___x316, align 4, !dbg !6756
  br label %cond.end19, !dbg !6756

cond.false18:                                     ; preds = %cond.end10
  %30 = load i32, ptr %__UNIQUE_ID___y317, align 4, !dbg !6756
  br label %cond.end19, !dbg !6756

cond.end19:                                       ; preds = %cond.false18, %cond.true17
  %cond20 = phi i32 [ %29, %cond.true17 ], [ %30, %cond.false18 ], !dbg !6756
  store i32 %cond20, ptr %tmp15, align 4, !dbg !6756
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y317) #15, !dbg !6757
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x316) #15, !dbg !6757
  %31 = load i32, ptr %tmp15, align 4, !dbg !6756
  %32 = load ptr, ptr %rect.addr, align 8, !dbg !6758
  %x221 = getelementptr inbounds %struct.drm_rect, ptr %32, i32 0, i32 2, !dbg !6759
  store i32 %31, ptr %x221, align 4, !dbg !6760
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x318) #15, !dbg !6761
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x318, metadata !6718, metadata !DIExpression()), !dbg !6761
  %33 = load ptr, ptr %rect.addr, align 8, !dbg !6761
  %y222 = getelementptr inbounds %struct.drm_rect, ptr %33, i32 0, i32 3, !dbg !6761
  %34 = load i32, ptr %y222, align 4, !dbg !6761
  store i32 %34, ptr %__UNIQUE_ID___x318, align 4, !dbg !6761
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y319) #15, !dbg !6761
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y319, metadata !6720, metadata !DIExpression()), !dbg !6761
  %y223 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 3, !dbg !6761
  %35 = load i32, ptr %y223, align 4, !dbg !6761
  store i32 %35, ptr %__UNIQUE_ID___y319, align 4, !dbg !6761
  %36 = load i32, ptr %__UNIQUE_ID___x318, align 4, !dbg !6761
  %37 = load i32, ptr %__UNIQUE_ID___y319, align 4, !dbg !6761
  %cmp25 = icmp sgt i32 %36, %37, !dbg !6761
  br i1 %cmp25, label %cond.true26, label %cond.false27, !dbg !6761

cond.true26:                                      ; preds = %cond.end19
  %38 = load i32, ptr %__UNIQUE_ID___x318, align 4, !dbg !6761
  br label %cond.end28, !dbg !6761

cond.false27:                                     ; preds = %cond.end19
  %39 = load i32, ptr %__UNIQUE_ID___y319, align 4, !dbg !6761
  br label %cond.end28, !dbg !6761

cond.end28:                                       ; preds = %cond.false27, %cond.true26
  %cond29 = phi i32 [ %38, %cond.true26 ], [ %39, %cond.false27 ], !dbg !6761
  store i32 %cond29, ptr %tmp24, align 4, !dbg !6761
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y319) #15, !dbg !6762
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x318) #15, !dbg !6762
  %40 = load i32, ptr %tmp24, align 4, !dbg !6761
  %41 = load ptr, ptr %rect.addr, align 8, !dbg !6763
  %y230 = getelementptr inbounds %struct.drm_rect, ptr %41, i32 0, i32 3, !dbg !6764
  store i32 %40, ptr %y230, align 4, !dbg !6765
  store i8 1, ptr %valid, align 1, !dbg !6766
  br label %while.cond, !dbg !6745, !llvm.loop !6767

while.end:                                        ; preds = %while.cond
  %42 = load i8, ptr %valid, align 1, !dbg !6769, !range !6506, !noundef !1090
  %tobool = trunc i8 %42 to i1, !dbg !6769
  call void @llvm.lifetime.end.p0(i64 1, ptr %valid) #15, !dbg !6770
  call void @llvm.lifetime.end.p0(i64 16, ptr %clip) #15, !dbg !6770
  call void @llvm.lifetime.end.p0(i64 40, ptr %iter) #15, !dbg !6770
  ret i1 %tobool, !dbg !6771
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_crtc_index(ptr noundef %crtc) #3 align 16 !dbg !6772 {
entry:
  %crtc.addr = alloca ptr, align 8
  store ptr %crtc, ptr %crtc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %crtc.addr, metadata !6778, metadata !DIExpression()), !dbg !6779
  %0 = load ptr, ptr %crtc.addr, align 8, !dbg !6780
  %index = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8, !dbg !6781
  %1 = load i32, ptr %index, align 8, !dbg !6781
  ret i32 %1, !dbg !6782
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !6783 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6785, metadata !DIExpression()), !dbg !6789
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6786, metadata !DIExpression()), !dbg !6790
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6787, metadata !DIExpression()), !dbg !6791
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #15, !dbg !6792
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !6788, metadata !DIExpression()), !dbg !6793
  %0 = load i64, ptr %n.addr, align 8, !dbg !6794
  %1 = load i64, ptr %size.addr, align 8, !dbg !6794
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !6794
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !6794
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !6794
  store i64 %4, ptr %bytes, align 8, !dbg !6794
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #16, !dbg !6794
  %lnot = xor i1 %call, true, !dbg !6794
  %lnot1 = xor i1 %lnot, true, !dbg !6794
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6794
  %conv = sext i32 %lnot.ext to i64, !dbg !6794
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6794
  %tobool = icmp ne i64 %expval, 0, !dbg !6794
  br i1 %tobool, label %if.then, label %if.end, !dbg !6796

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6797
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6797

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6798
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !6800
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !6801

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !6802
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !6803
  br i1 %8, label %if.then2, label %if.end4, !dbg !6804

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !6805
  %10 = load i32, ptr %flags.addr, align 4, !dbg !6806
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #18, !dbg !6807
  store ptr %call3, ptr %retval, align 8, !dbg !6808
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6808

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !6809
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6810
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #18, !dbg !6811
  store ptr %call5, ptr %retval, align 8, !dbg !6812
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6812

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #15, !dbg !6813
  %13 = load ptr, ptr %retval, align 8, !dbg !6813
  ret ptr %13, !dbg !6813
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #3 align 16 !dbg !6814 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !6819, metadata !DIExpression()), !dbg !6820
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !6821, !range !6506, !noundef !1090
  %tobool = trunc i8 %0 to i1, !dbg !6821
  %lnot = xor i1 %tobool, true, !dbg !6821
  %lnot1 = xor i1 %lnot, true, !dbg !6821
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6821
  %conv = sext i32 %lnot.ext to i64, !dbg !6821
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6821
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6821
  ret i1 %tobool2, !dbg !6822
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !6823 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6827, metadata !DIExpression()), !dbg !6832
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6828, metadata !DIExpression()), !dbg !6833
  %0 = load i64, ptr %size.addr, align 8, !dbg !6834
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6835
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6836

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6837
  %tobool = icmp ne i64 %2, 0, !dbg !6837
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6838

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !6839
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6829, metadata !DIExpression()), !dbg !6840
  %3 = load i64, ptr %size.addr, align 8, !dbg !6841
  %cmp = icmp ugt i64 %3, 8192, !dbg !6843
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6844

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6845
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6846
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !6847
  store ptr %call, ptr %retval, align 8, !dbg !6848
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6848

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6849
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !6849
  store i32 %call2, ptr %index, align 4, !dbg !6850
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6851
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6852
  %9 = ptrtoint ptr %8 to i64, !dbg !6852
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !6853
  %idxprom = zext i32 %call3 to i64, !dbg !6854
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6854
  %10 = load i32, ptr %index, align 4, !dbg !6855
  %idxprom4 = zext i32 %10 to i64, !dbg !6854
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6854
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6854
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6856
  %13 = load i64, ptr %size.addr, align 8, !dbg !6857
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !6858
  store ptr %call6, ptr %retval, align 8, !dbg !6859
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6859

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !6860
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6861
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6862
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !6863
  store ptr %call8, ptr %retval, align 8, !dbg !6864
  br label %return, !dbg !6864

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6865
  ret ptr %16, !dbg !6865
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6866 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6867 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #12 align 16 !dbg !6868 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6872, metadata !DIExpression()), !dbg !6874
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6873, metadata !DIExpression()), !dbg !6875
  %0 = load i64, ptr %size.addr, align 8, !dbg !6876
  %tobool = icmp ne i64 %0, 0, !dbg !6876
  br i1 %tobool, label %if.end, label %if.then, !dbg !6878

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6879
  br label %return, !dbg !6879

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6880
  %cmp = icmp ule i64 %1, 8, !dbg !6882
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6883

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6884
  br label %return, !dbg !6884

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6885
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6887
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6888

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6889
  %cmp4 = icmp ule i64 %3, 96, !dbg !6890
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6891

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6892
  br label %return, !dbg !6892

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6893
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6895
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6896

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6897
  %cmp9 = icmp ule i64 %5, 192, !dbg !6898
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6899

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6900
  br label %return, !dbg !6900

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6901
  %cmp12 = icmp ule i64 %6, 8, !dbg !6903
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6904

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6905
  br label %return, !dbg !6905

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6906
  %cmp15 = icmp ule i64 %7, 16, !dbg !6908
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6909

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6910
  br label %return, !dbg !6910

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6911
  %cmp18 = icmp ule i64 %8, 32, !dbg !6913
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6914

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6915
  br label %return, !dbg !6915

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6916
  %cmp21 = icmp ule i64 %9, 64, !dbg !6918
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6919

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6920
  br label %return, !dbg !6920

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6921
  %cmp24 = icmp ule i64 %10, 128, !dbg !6923
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6924

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6925
  br label %return, !dbg !6925

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6926
  %cmp27 = icmp ule i64 %11, 256, !dbg !6928
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6929

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6930
  br label %return, !dbg !6930

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6931
  %cmp30 = icmp ule i64 %12, 512, !dbg !6933
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6934

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6935
  br label %return, !dbg !6935

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6936
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6938
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6939

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6940
  br label %return, !dbg !6940

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6941
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6943
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6944

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6945
  br label %return, !dbg !6945

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6946
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6948
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6949

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6950
  br label %return, !dbg !6950

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6951
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6953
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6954

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6955
  br label %return, !dbg !6955

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6956
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6958
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6959

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6960
  br label %return, !dbg !6960

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6961
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6963
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6964

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6965
  br label %return, !dbg !6965

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6966
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6968
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6969

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6970
  br label %return, !dbg !6970

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6971
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6973
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6974

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6975
  br label %return, !dbg !6975

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6976
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6978
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6979

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6980
  br label %return, !dbg !6980

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6981
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6983
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6984

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6985
  br label %return, !dbg !6985

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6986
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6988
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6989

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6990
  br label %return, !dbg !6990

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6991
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6993
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6994

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6995
  br label %return, !dbg !6995

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6996, !range !6506, !noundef !1090
  %tobool69 = trunc i8 %25 to i1, !dbg !6996
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6998

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6999

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_232() #20, !dbg !7000, !srcloc !7003
  unreachable, !dbg !7000

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !7004

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !7005

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !7006

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7008

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !7006

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #15, !dbg !7010, !srcloc !7012
  br label %do.end75, !dbg !7010

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !7006

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !7013
  br label %return, !dbg !7013

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !7014
  ret i32 %26, !dbg !7014
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !7015 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #12 align 16 !dbg !7018 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7022, metadata !DIExpression()), !dbg !7024
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !7023, metadata !DIExpression()), !dbg !7025
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7026
  %and = and i32 %0, 17, !dbg !7026
  %cmp = icmp eq i32 %and, 0, !dbg !7026
  %lnot = xor i1 %cmp, true, !dbg !7026
  %lnot1 = xor i1 %lnot, true, !dbg !7026
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7026
  %conv = sext i32 %lnot.ext to i64, !dbg !7026
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7026
  %tobool = icmp ne i64 %expval, 0, !dbg !7026
  br i1 %tobool, label %if.then, label %if.end, !dbg !7028

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7029
  br label %return, !dbg !7029

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7030
  %and2 = and i32 %1, 1, !dbg !7032
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7032
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7033

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !7034
  br label %return, !dbg !7034

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !7035
  br label %return, !dbg !7035

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7037
  ret i32 %2, !dbg !7037
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7038 dso_local void @__compiletime_assert_232() #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kref_put(ptr noundef %kref, ptr noundef %release) #3 align 16 !dbg !7039 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca ptr, align 8
  %release.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !7043, metadata !DIExpression()), !dbg !7045
  store ptr %release, ptr %release.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %release.addr, metadata !7044, metadata !DIExpression()), !dbg !7046
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !7047
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !7049
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %refcount) #16, !dbg !7050
  br i1 %call, label %if.then, label %if.end, !dbg !7051

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %release.addr, align 8, !dbg !7052
  %2 = load ptr, ptr %kref.addr, align 8, !dbg !7054
  call void %1(ptr noundef %2) #16, !dbg !7052
  store i32 1, ptr %retval, align 4, !dbg !7055
  br label %return, !dbg !7055

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7056
  br label %return, !dbg !7056

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !7057
  ret i32 %3, !dbg !7057
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_atomic_state_free(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #3 align 16 !dbg !7058 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !7063, metadata !DIExpression()), !dbg !7064
  %0 = load ptr, ptr %r.addr, align 8, !dbg !7065
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #16, !dbg !7066
  ret i1 %call, !dbg !7067
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !7068 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !7072, metadata !DIExpression()), !dbg !7074
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !7073, metadata !DIExpression()), !dbg !7075
  %0 = load ptr, ptr %r.addr, align 8, !dbg !7076
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !7077
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #16, !dbg !7078
  ret i1 %call, !dbg !7079
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !7080 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7084, metadata !DIExpression()), !dbg !7088
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !7085, metadata !DIExpression()), !dbg !7089
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !7086, metadata !DIExpression()), !dbg !7090
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #15, !dbg !7091
  call void @llvm.dbg.declare(metadata ptr %old, metadata !7087, metadata !DIExpression()), !dbg !7092
  %0 = load i32, ptr %i.addr, align 4, !dbg !7093
  %1 = load ptr, ptr %r.addr, align 8, !dbg !7094
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !7095
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #16, !dbg !7096
  store i32 %call, ptr %old, align 4, !dbg !7092
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !7097
  %tobool = icmp ne ptr %2, null, !dbg !7097
  br i1 %tobool, label %if.then, label %if.end, !dbg !7099

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !7100
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !7101
  store i32 %3, ptr %4, align 4, !dbg !7102
  br label %if.end, !dbg !7103

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !7104
  %6 = load i32, ptr %i.addr, align 4, !dbg !7106
  %cmp = icmp eq i32 %5, %6, !dbg !7107
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !7108

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !7109

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !7111

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !7113

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !7113

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !7111

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !7115

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !7117

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !7117

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !7115, !srcloc !7119
  br label %do.cond7, !dbg !7115

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !7115

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !7111

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !7111

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !7120
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7120

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !7121
  %cmp12 = icmp slt i32 %7, 0, !dbg !7121
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !7121

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !7121
  %9 = load i32, ptr %i.addr, align 4, !dbg !7121
  %sub = sub i32 %8, %9, !dbg !7121
  %cmp13 = icmp slt i32 %sub, 0, !dbg !7121
  br label %lor.end, !dbg !7121

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !7121
  %lnot14 = xor i1 %lnot, true, !dbg !7121
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !7121
  %conv = sext i32 %lnot.ext to i64, !dbg !7121
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7121
  %tobool15 = icmp ne i64 %expval, 0, !dbg !7121
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !7123

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !7124
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #16, !dbg !7125
  br label %if.end17, !dbg !7125

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !7126
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7126

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #15, !dbg !7127
  %12 = load i1, ptr %retval, align 1, !dbg !7127
  ret i1 %12, !dbg !7127
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #12 align 16 !dbg !7128 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7134, metadata !DIExpression()), !dbg !7136
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7135, metadata !DIExpression()), !dbg !7137
  br label %do.body, !dbg !7138

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7139

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7141
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #16, !dbg !7142
  %1 = load i32, ptr %i.addr, align 4, !dbg !7143
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7144
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #16, !dbg !7145
  ret i32 %call, !dbg !7146
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7147 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #12 align 16 !dbg !7150 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7158, metadata !DIExpression()), !dbg !7160
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7159, metadata !DIExpression()), !dbg !7161
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7162
  %1 = load i64, ptr %size.addr, align 8, !dbg !7163
  %conv = trunc i64 %1 to i32, !dbg !7163
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #16, !dbg !7164
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7165
  %3 = load i64, ptr %size.addr, align 8, !dbg !7165
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #16, !dbg !7165
  ret void, !dbg !7166
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #12 align 16 !dbg !7167 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7170, metadata !DIExpression()), !dbg !7172
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7171, metadata !DIExpression()), !dbg !7173
  %0 = load i32, ptr %i.addr, align 4, !dbg !7174
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7175
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #16, !dbg !7176
  ret i32 %call, !dbg !7177
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !7178 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7183, metadata !DIExpression()), !dbg !7185
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7184, metadata !DIExpression()), !dbg !7186
  ret i1 true, !dbg !7187
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !7188 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7193, metadata !DIExpression()), !dbg !7196
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7194, metadata !DIExpression()), !dbg !7197
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7195, metadata !DIExpression()), !dbg !7198
  ret void, !dbg !7199
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #12 align 16 !dbg !7200 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7203, metadata !DIExpression()), !dbg !7207
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7204, metadata !DIExpression()), !dbg !7208
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #15, !dbg !7209
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !7205, metadata !DIExpression()), !dbg !7209
  %0 = load i32, ptr %i.addr, align 4, !dbg !7209
  %sub = sub i32 0, %0, !dbg !7209
  store i32 %sub, ptr %__ret, align 4, !dbg !7209
  %1 = load i32, ptr %__ret, align 4, !dbg !7209
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7209
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !7209
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #15, !dbg !7209, !srcloc !7210
  store i32 %3, ptr %__ret, align 4, !dbg !7209
  %4 = load i32, ptr %__ret, align 4, !dbg !7209
  store i32 %4, ptr %tmp, align 4, !dbg !7209
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #15, !dbg !7211
  %5 = load i32, ptr %tmp, align 4, !dbg !7209
  ret i32 %5, !dbg !7212
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(0,1) }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!6057, !6058, !6059, !6060, !6061, !6062, !6063, !6064}
!llvm.ident = !{!6065}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/gpu/drm/drm_damage_helper.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d223a55f1dceb6292dc3b85262a9b049")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 36)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_atomic_helper_check_plane_damage308", scope: !9, file: !2, line: 85, type: !345, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/.drm_damage_helper.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/drm_kms_helper\22 -D KBUILD_BASENAME=\22drm_damage_helper\22 -D KBUILD_MODNAME=\22drm_kms_helper\22 -D __KBUILD_MODNAME=kmod_drm_kms_helper -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/drm_damage_helper.ll drivers/gpu/drm/drm_damage_helper.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !344, globals: !6043, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !19, !24, !30, !35, !43, !59, !67, !73, !80, !87, !93, !99, !106, !114, !122, !131, !136, !141, !147, !190, !199, !206, !212, !217, !225, !230, !234, !250, !270, !276, !282, !289, !299, !304, !311, !316, !321, !326, !336}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !12, line: 312, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!16 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!17 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!18 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !20, line: 2052, baseType: !13, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!21 = !{!22, !23}
!22 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!23 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !25, line: 54, baseType: !13, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "USRQUOTA", value: 0)
!28 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!29 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !31, line: 65, baseType: !13, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!32 = !{!33, !34}
!33 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!34 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !36, line: 9, baseType: !13, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!37 = !{!38, !39, !40, !41, !42}
!38 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!39 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!40 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!41 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!42 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !44, line: 1325, baseType: !13, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!45 = !{!46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!46 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!47 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!48 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!49 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!50 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!51 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!52 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!53 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!54 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!55 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!56 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!57 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!58 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !60, line: 68, baseType: !13, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!61 = !{!62, !63, !64, !65, !66}
!62 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!63 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!64 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!65 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!66 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !68, line: 16, baseType: !13, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!69 = !{!70, !71, !72}
!70 = !DIEnumerator(name: "TT_NONE", value: 0)
!71 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!72 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !74, line: 51, baseType: !13, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!75 = !{!76, !77, !78, !79}
!76 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!77 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!78 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!79 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !81, line: 15, baseType: !13, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!84 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!85 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!86 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !88, line: 26, baseType: !13, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!91 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!92 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !94, line: 45, baseType: !13, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!95 = !{!96, !97, !98}
!96 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!97 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!98 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !100, line: 487, baseType: !13, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!101 = !{!102, !103, !104, !105}
!102 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!103 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!104 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!105 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !107, line: 620, baseType: !13, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!108 = !{!109, !110, !111, !112, !113}
!109 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!110 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!111 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!112 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!113 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !107, line: 597, baseType: !115, size: 32, elements: !116)
!115 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!116 = !{!117, !118, !119, !120, !121}
!117 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!118 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!119 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!120 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!121 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !100, line: 547, baseType: !13, size: 32, elements: !123)
!123 = !{!124, !125, !126, !127, !128, !129, !130}
!124 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!125 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!126 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!127 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!128 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!129 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!130 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !100, line: 564, baseType: !13, size: 32, elements: !132)
!132 = !{!133, !134, !135}
!133 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!134 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!135 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !100, line: 577, baseType: !13, size: 32, elements: !137)
!137 = !{!138, !139, !140}
!138 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!139 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!140 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !100, line: 503, baseType: !13, size: 32, elements: !142)
!142 = !{!143, !144, !145, !146}
!143 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!144 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!145 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!146 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_status", file: !148, line: 91, baseType: !115, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/drm/drm_modes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9464b1418570a46bf1ac7fbe26140ef4")
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189}
!150 = !DIEnumerator(name: "MODE_OK", value: 0)
!151 = !DIEnumerator(name: "MODE_HSYNC", value: 1)
!152 = !DIEnumerator(name: "MODE_VSYNC", value: 2)
!153 = !DIEnumerator(name: "MODE_H_ILLEGAL", value: 3)
!154 = !DIEnumerator(name: "MODE_V_ILLEGAL", value: 4)
!155 = !DIEnumerator(name: "MODE_BAD_WIDTH", value: 5)
!156 = !DIEnumerator(name: "MODE_NOMODE", value: 6)
!157 = !DIEnumerator(name: "MODE_NO_INTERLACE", value: 7)
!158 = !DIEnumerator(name: "MODE_NO_DBLESCAN", value: 8)
!159 = !DIEnumerator(name: "MODE_NO_VSCAN", value: 9)
!160 = !DIEnumerator(name: "MODE_MEM", value: 10)
!161 = !DIEnumerator(name: "MODE_VIRTUAL_X", value: 11)
!162 = !DIEnumerator(name: "MODE_VIRTUAL_Y", value: 12)
!163 = !DIEnumerator(name: "MODE_MEM_VIRT", value: 13)
!164 = !DIEnumerator(name: "MODE_NOCLOCK", value: 14)
!165 = !DIEnumerator(name: "MODE_CLOCK_HIGH", value: 15)
!166 = !DIEnumerator(name: "MODE_CLOCK_LOW", value: 16)
!167 = !DIEnumerator(name: "MODE_CLOCK_RANGE", value: 17)
!168 = !DIEnumerator(name: "MODE_BAD_HVALUE", value: 18)
!169 = !DIEnumerator(name: "MODE_BAD_VVALUE", value: 19)
!170 = !DIEnumerator(name: "MODE_BAD_VSCAN", value: 20)
!171 = !DIEnumerator(name: "MODE_HSYNC_NARROW", value: 21)
!172 = !DIEnumerator(name: "MODE_HSYNC_WIDE", value: 22)
!173 = !DIEnumerator(name: "MODE_HBLANK_NARROW", value: 23)
!174 = !DIEnumerator(name: "MODE_HBLANK_WIDE", value: 24)
!175 = !DIEnumerator(name: "MODE_VSYNC_NARROW", value: 25)
!176 = !DIEnumerator(name: "MODE_VSYNC_WIDE", value: 26)
!177 = !DIEnumerator(name: "MODE_VBLANK_NARROW", value: 27)
!178 = !DIEnumerator(name: "MODE_VBLANK_WIDE", value: 28)
!179 = !DIEnumerator(name: "MODE_PANEL", value: 29)
!180 = !DIEnumerator(name: "MODE_INTERLACE_WIDTH", value: 30)
!181 = !DIEnumerator(name: "MODE_ONE_WIDTH", value: 31)
!182 = !DIEnumerator(name: "MODE_ONE_HEIGHT", value: 32)
!183 = !DIEnumerator(name: "MODE_ONE_SIZE", value: 33)
!184 = !DIEnumerator(name: "MODE_NO_REDUCED", value: 34)
!185 = !DIEnumerator(name: "MODE_NO_STEREO", value: 35)
!186 = !DIEnumerator(name: "MODE_NO_420", value: 36)
!187 = !DIEnumerator(name: "MODE_STALE", value: -3)
!188 = !DIEnumerator(name: "MODE_BAD", value: -2)
!189 = !DIEnumerator(name: "MODE_ERROR", value: -1)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_picture_aspect", file: !191, line: 96, baseType: !13, size: 32, elements: !192)
!191 = !DIFile(filename: "./include/linux/hdmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "47f4ac8f6225c51a6d030bad9086771f")
!192 = !{!193, !194, !195, !196, !197, !198}
!193 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_NONE", value: 0)
!194 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_4_3", value: 1)
!195 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_16_9", value: 2)
!196 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_64_27", value: 3)
!197 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_256_135", value: 4)
!198 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_RESERVED", value: 5)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "switch_power_state", file: !200, line: 30, baseType: !13, size: 32, elements: !201)
!200 = !DIFile(filename: "./include/drm/drm_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9743f4a84c342e86d9e79f688e9c49c5")
!201 = !{!202, !203, !204, !205}
!202 = !DIEnumerator(name: "DRM_SWITCH_POWER_ON", value: 0)
!203 = !DIEnumerator(name: "DRM_SWITCH_POWER_OFF", value: 1)
!204 = !DIEnumerator(name: "DRM_SWITCH_POWER_CHANGING", value: 2)
!205 = !DIEnumerator(name: "DRM_SWITCH_POWER_DYNAMIC_OFF", value: 3)
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_registration_state", file: !207, line: 98, baseType: !13, size: 32, elements: !208)
!207 = !DIFile(filename: "./include/drm/drm_connector.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63c858da11ce2de4f038056be4cf749")
!208 = !{!209, !210, !211}
!209 = !DIEnumerator(name: "DRM_CONNECTOR_INITIALIZING", value: 0)
!210 = !DIEnumerator(name: "DRM_CONNECTOR_REGISTERED", value: 1)
!211 = !DIEnumerator(name: "DRM_CONNECTOR_UNREGISTERED", value: 2)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_status", file: !207, line: 63, baseType: !13, size: 32, elements: !213)
!213 = !{!214, !215, !216}
!214 = !DIEnumerator(name: "connector_status_connected", value: 1)
!215 = !DIEnumerator(name: "connector_status_disconnected", value: 2)
!216 = !DIEnumerator(name: "connector_status_unknown", value: 3)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "subpixel_order", file: !207, line: 137, baseType: !13, size: 32, elements: !218)
!218 = !{!219, !220, !221, !222, !223, !224}
!219 = !DIEnumerator(name: "SubPixelUnknown", value: 0)
!220 = !DIEnumerator(name: "SubPixelHorizontalRGB", value: 1)
!221 = !DIEnumerator(name: "SubPixelHorizontalBGR", value: 2)
!222 = !DIEnumerator(name: "SubPixelVerticalRGB", value: 3)
!223 = !DIEnumerator(name: "SubPixelVerticalBGR", value: 4)
!224 = !DIEnumerator(name: "SubPixelNone", value: 5)
!225 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_scaling_filter", file: !226, line: 38, baseType: !13, size: 32, elements: !227)
!226 = !DIFile(filename: "./include/drm/drm_plane.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "45cb1a1ff150429e63de6789c017e03a")
!227 = !{!228, !229}
!228 = !DIEnumerator(name: "DRM_SCALING_FILTER_DEFAULT", value: 0)
!229 = !DIEnumerator(name: "DRM_SCALING_FILTER_NEAREST_NEIGHBOR", value: 1)
!230 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_link_status", file: !207, line: 337, baseType: !13, size: 32, elements: !231)
!231 = !{!232, !233}
!232 = !DIEnumerator(name: "DRM_LINK_STATUS_GOOD", value: 0)
!233 = !DIEnumerator(name: "DRM_LINK_STATUS_BAD", value: 1)
!234 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_subconnector", file: !235, line: 387, baseType: !13, size: 32, elements: !236)
!235 = !DIFile(filename: "./include/uapi/drm/drm_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "357a7211aa80668185b31e7330dddd63")
!236 = !{!237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249}
!237 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Automatic", value: 0)
!238 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Unknown", value: 0)
!239 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_VGA", value: 1)
!240 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DVID", value: 3)
!241 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DVIA", value: 4)
!242 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Composite", value: 5)
!243 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_SVIDEO", value: 6)
!244 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Component", value: 8)
!245 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_SCART", value: 9)
!246 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DisplayPort", value: 10)
!247 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_HDMIA", value: 11)
!248 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Native", value: 15)
!249 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Wireless", value: 18)
!250 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_colorspace", file: !207, line: 502, baseType: !13, size: 32, elements: !251)
!251 = !{!252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269}
!252 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_DEFAULT", value: 0)
!253 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_NO_DATA", value: 0)
!254 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_SMPTE_170M_YCC", value: 1)
!255 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT709_YCC", value: 2)
!256 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_XVYCC_601", value: 3)
!257 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_XVYCC_709", value: 4)
!258 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_SYCC_601", value: 5)
!259 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_OPYCC_601", value: 6)
!260 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_OPRGB", value: 7)
!261 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT2020_CYCC", value: 8)
!262 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT2020_RGB", value: 9)
!263 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT2020_YCC", value: 10)
!264 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_DCI_P3_RGB_D65", value: 11)
!265 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_DCI_P3_RGB_THEATER", value: 12)
!266 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_RGB_WIDE_FIXED", value: 13)
!267 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_RGB_WIDE_FLOAT", value: 14)
!268 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT601_YCC", value: 15)
!269 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_COUNT", value: 16)
!270 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_privacy_screen_status", file: !207, line: 421, baseType: !13, size: 32, elements: !271)
!271 = !{!272, !273, !274, !275}
!272 = !DIEnumerator(name: "PRIVACY_SCREEN_DISABLED", value: 0)
!273 = !DIEnumerator(name: "PRIVACY_SCREEN_ENABLED", value: 1)
!274 = !DIEnumerator(name: "PRIVACY_SCREEN_DISABLED_LOCKED", value: 2)
!275 = !DIEnumerator(name: "PRIVACY_SCREEN_ENABLED_LOCKED", value: 3)
!276 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_force", file: !207, line: 50, baseType: !13, size: 32, elements: !277)
!277 = !{!278, !279, !280, !281}
!278 = !DIEnumerator(name: "DRM_FORCE_UNSPECIFIED", value: 0)
!279 = !DIEnumerator(name: "DRM_FORCE_OFF", value: 1)
!280 = !DIEnumerator(name: "DRM_FORCE_ON", value: 2)
!281 = !DIEnumerator(name: "DRM_FORCE_ON_DIGITAL", value: 3)
!282 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_panel_orientation", file: !207, line: 363, baseType: !115, size: 32, elements: !283)
!283 = !{!284, !285, !286, !287, !288}
!284 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_UNKNOWN", value: -1)
!285 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_NORMAL", value: 0)
!286 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP", value: 1)
!287 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_LEFT_UP", value: 2)
!288 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_RIGHT_UP", value: 3)
!289 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_tv_mode", file: !207, line: 156, baseType: !13, size: 32, elements: !290)
!290 = !{!291, !292, !293, !294, !295, !296, !297, !298}
!291 = !DIEnumerator(name: "DRM_MODE_TV_MODE_NTSC", value: 0)
!292 = !DIEnumerator(name: "DRM_MODE_TV_MODE_NTSC_443", value: 1)
!293 = !DIEnumerator(name: "DRM_MODE_TV_MODE_NTSC_J", value: 2)
!294 = !DIEnumerator(name: "DRM_MODE_TV_MODE_PAL", value: 3)
!295 = !DIEnumerator(name: "DRM_MODE_TV_MODE_PAL_M", value: 4)
!296 = !DIEnumerator(name: "DRM_MODE_TV_MODE_PAL_N", value: 5)
!297 = !DIEnumerator(name: "DRM_MODE_TV_MODE_SECAM", value: 6)
!298 = !DIEnumerator(name: "DRM_MODE_TV_MODE_MAX", value: 7)
!299 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mode_set_atomic", file: !300, line: 54, baseType: !13, size: 32, elements: !301)
!300 = !DIFile(filename: "./include/drm/drm_modeset_helper_vtables.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c76c951af964ace4726c40f2de2c86a8")
!301 = !{!302, !303}
!302 = !DIEnumerator(name: "LEAVE_ATOMIC_MODE_SET", value: 0)
!303 = !DIEnumerator(name: "ENTER_ATOMIC_MODE_SET", value: 1)
!304 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_color_encoding", file: !305, line: 78, baseType: !13, size: 32, elements: !306)
!305 = !DIFile(filename: "./include/drm/drm_color_mgmt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b92cd49d1b3f8dcc5c490e9b8b1a997a")
!306 = !{!307, !308, !309, !310}
!307 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT601", value: 0)
!308 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT709", value: 1)
!309 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT2020", value: 2)
!310 = !DIEnumerator(name: "DRM_COLOR_ENCODING_MAX", value: 3)
!311 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_color_range", file: !305, line: 85, baseType: !13, size: 32, elements: !312)
!312 = !{!313, !314, !315}
!313 = !DIEnumerator(name: "DRM_COLOR_YCBCR_LIMITED_RANGE", value: 0)
!314 = !DIEnumerator(name: "DRM_COLOR_YCBCR_FULL_RANGE", value: 1)
!315 = !DIEnumerator(name: "DRM_COLOR_RANGE_MAX", value: 2)
!316 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_plane_type", file: !226, line: 563, baseType: !13, size: 32, elements: !317)
!317 = !{!318, !319, !320}
!318 = !DIEnumerator(name: "DRM_PLANE_TYPE_OVERLAY", value: 0)
!319 = !DIEnumerator(name: "DRM_PLANE_TYPE_PRIMARY", value: 1)
!320 = !DIEnumerator(name: "DRM_PLANE_TYPE_CURSOR", value: 2)
!321 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !322, line: 10, baseType: !13, size: 32, elements: !323)
!322 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!323 = !{!324, !325}
!324 = !DIEnumerator(name: "false", value: 0)
!325 = !DIEnumerator(name: "true", value: 1)
!326 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !327, line: 364, baseType: !13, size: 32, elements: !328)
!327 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!328 = !{!329, !330, !331, !332, !333, !334, !335}
!329 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!330 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!331 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!332 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!333 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!334 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!335 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!336 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !337, line: 119, baseType: !13, size: 32, elements: !338)
!337 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!338 = !{!339, !340, !341, !342, !343}
!339 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!340 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!341 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!342 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!343 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!344 = !{!345, !346, !348, !6042, !115, !510, !496}
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !347, line: 154, baseType: !13)
!347 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane", file: !226, line: 603, size: 5312, elements: !350)
!350 = !{!351, !5940, !5941, !5942, !5943, !5944, !5945, !5947, !5948, !5949, !5950, !5951, !5952, !5953, !5954, !6007, !6008, !6009, !6010, !6034, !6035, !6036, !6037, !6038, !6039, !6040, !6041}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !349, file: !226, line: 605, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !200, line: 50, size: 12736, elements: !354)
!354 = !{!355, !356, !369, !4696, !4702, !4707, !4708, !4711, !4712, !4713, !4714, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743, !4744, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !5926, !5927, !5928, !5931, !5934, !5935, !5938, !5939}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "if_version", scope: !353, file: !200, line: 52, baseType: !115, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !353, file: !200, line: 55, baseType: !357, size: 32, offset: 32)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !358, line: 19, size: 32, elements: !359)
!358 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !357, file: !358, line: 20, baseType: !361, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !337, line: 113, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !337, line: 111, size: 32, elements: !363)
!363 = !{!364}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !362, file: !337, line: 112, baseType: !365, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !347, line: 174, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !347, line: 172, size: 32, elements: !367)
!367 = !{!368}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !366, file: !347, line: 173, baseType: !115, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !353, file: !200, line: 58, baseType: !370, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !100, line: 705, size: 5824, elements: !372)
!372 = !{!373, !4351, !4352, !4355, !4356, !4409, !4479, !4480, !4481, !4482, !4483, !4490, !4582, !4595, !4605, !4609, !4611, !4612, !4613, !4617, !4624, !4625, !4628, !4631, !4635, !4638, !4639, !4640, !4641, !4642, !4643, !4673, !4674, !4675, !4678, !4681, !4690, !4691, !4692, !4693, !4694, !4695}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !371, file: !100, line: 706, baseType: !374, size: 512)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !375, line: 64, size: 512, elements: !376)
!375 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!376 = !{!377, !380, !386, !388, !473, !4242, !4345, !4346, !4347, !4348, !4349, !4350}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !374, file: !375, line: 65, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !374, file: !375, line: 66, baseType: !381, size: 128, offset: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !347, line: 190, size: 128, elements: !382)
!382 = !{!383, !385}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !381, file: !347, line: 191, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !381, file: !347, line: 191, baseType: !384, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !374, file: !375, line: 67, baseType: !387, size: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !374, file: !375, line: 68, baseType: !389, size: 64, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !375, line: 168, size: 768, elements: !391)
!391 = !{!392, !393, !432, !433}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !390, file: !375, line: 169, baseType: !381, size: 128)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !390, file: !375, line: 170, baseType: !394, size: 32, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !395, line: 29, baseType: !396)
!395 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !395, line: 17, size: 32, elements: !397)
!397 = !{!398}
!398 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !395, line: 18, baseType: !399, size: 32)
!399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !395, line: 18, size: 32, elements: !400)
!400 = !{!401}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !399, file: !395, line: 19, baseType: !402, size: 32)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !403, line: 14, size: 32, elements: !404)
!403 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!404 = !{!405}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !402, file: !403, line: 15, baseType: !406, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !407, line: 44, baseType: !408)
!407 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !407, line: 14, size: 32, elements: !409)
!409 = !{!410}
!410 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !407, line: 15, baseType: !411, size: 32)
!411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !408, file: !407, line: 15, size: 32, elements: !412)
!412 = !{!413, !414, !424}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !411, file: !407, line: 16, baseType: !365, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, scope: !411, file: !407, line: 24, baseType: !415, size: 16)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !411, file: !407, line: 24, size: 16, elements: !416)
!416 = !{!417, !423}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !415, file: !407, line: 25, baseType: !418, size: 8)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !419, line: 17, baseType: !420)
!419 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !421, line: 21, baseType: !422)
!421 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!422 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !415, file: !407, line: 26, baseType: !418, size: 8, offset: 8)
!424 = !DIDerivedType(tag: DW_TAG_member, scope: !411, file: !407, line: 28, baseType: !425, size: 32)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !411, file: !407, line: 28, size: 32, elements: !426)
!426 = !{!427, !431}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !425, file: !407, line: 29, baseType: !428, size: 16)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !419, line: 19, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !421, line: 24, baseType: !430)
!430 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !425, file: !407, line: 30, baseType: !428, size: 16, offset: 16)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !390, file: !375, line: 171, baseType: !374, size: 512, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !390, file: !375, line: 172, baseType: !434, size: 64, offset: 704)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !436)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !375, line: 133, size: 192, elements: !437)
!437 = !{!438, !445, !450}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !436, file: !375, line: 134, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!115, !443}
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !436, file: !375, line: 135, baseType: !446, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!378, !443}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !436, file: !375, line: 136, baseType: !451, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!115, !443, !455}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !375, line: 125, size: 20736, elements: !457)
!457 = !{!458, !463, !467, !468, !472}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !456, file: !375, line: 126, baseType: !459, size: 192)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 192, elements: !461)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!461 = !{!462}
!462 = !DISubrange(count: 3)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !456, file: !375, line: 127, baseType: !464, size: 4096, offset: 192)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 4096, elements: !465)
!465 = !{!466}
!466 = !DISubrange(count: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !456, file: !375, line: 128, baseType: !115, size: 32, offset: 4288)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !456, file: !375, line: 129, baseType: !469, size: 16384, offset: 4320)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !470)
!470 = !{!471}
!471 = !DISubrange(count: 2048)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !456, file: !375, line: 130, baseType: !115, size: 32, offset: 20704)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !374, file: !375, line: 69, baseType: !474, size: 64, offset: 320)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !476)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !375, line: 116, size: 384, elements: !477)
!477 = !{!478, !482, !511, !4204, !4232, !4236}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !476, file: !375, line: 117, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !387}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !476, file: !375, line: 118, baseType: !483, size: 64, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !486, line: 254, size: 128, elements: !487)
!486 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!487 = !{!488, !503}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !485, file: !486, line: 255, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!492, !387, !497, !460}
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !347, line: 66, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !494, line: 73, baseType: !495)
!494 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !494, line: 15, baseType: !496)
!496 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !486, line: 30, size: 128, elements: !499)
!499 = !{!500, !501}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !498, file: !486, line: 31, baseType: !378, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !498, file: !486, line: 32, baseType: !502, size: 16, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !347, line: 24, baseType: !430)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !485, file: !486, line: 256, baseType: !504, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!492, !387, !497, !378, !507}
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !347, line: 61, baseType: !508)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !494, line: 72, baseType: !509)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !494, line: 16, baseType: !510)
!510 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !476, file: !375, line: 119, baseType: !512, size: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !486, line: 84, size: 320, elements: !516)
!516 = !{!517, !518, !522, !4200, !4202}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !515, file: !486, line: 85, baseType: !378, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !515, file: !486, line: 86, baseType: !519, size: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!502, !387, !497, !115}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !515, file: !486, line: 88, baseType: !523, size: 64, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!502, !387, !526, !115}
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !486, line: 175, size: 512, elements: !528)
!528 = !{!529, !530, !531, !532, !4191, !4195, !4196}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !527, file: !486, line: 176, baseType: !498, size: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !527, file: !486, line: 177, baseType: !507, size: 64, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !527, file: !486, line: 178, baseType: !345, size: 64, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !527, file: !486, line: 179, baseType: !533, size: 64, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!536}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !20, line: 472, size: 1536, align: 64, elements: !538)
!538 = !{!539, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4185, !4186, !4187, !4188, !4189, !4190}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !537, file: !20, line: 473, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !20, line: 641, size: 4800, elements: !542)
!542 = !{!543, !544, !545, !553, !554, !561, !562, !565, !566, !3963, !3964, !3965, !3966, !3967, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4007, !4010, !4011, !4012, !4021, !4022, !4023, !4024}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !541, file: !20, line: 642, baseType: !502, size: 16)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !541, file: !20, line: 643, baseType: !430, size: 16, offset: 16)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !541, file: !20, line: 644, baseType: !546, size: 32, offset: 32)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !547, line: 23, baseType: !548)
!547 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !547, line: 21, size: 32, elements: !549)
!549 = !{!550}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !548, file: !547, line: 22, baseType: !551, size: 32)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !347, line: 37, baseType: !552)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !494, line: 49, baseType: !13)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !541, file: !20, line: 645, baseType: !381, size: 128, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !541, file: !20, line: 646, baseType: !555, size: 32, offset: 192)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !547, line: 28, baseType: !556)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !547, line: 26, size: 32, elements: !557)
!557 = !{!558}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !556, file: !547, line: 27, baseType: !559, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !347, line: 38, baseType: !560)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !494, line: 50, baseType: !13)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !541, file: !20, line: 647, baseType: !13, size: 32, offset: 224)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !541, file: !20, line: 650, baseType: !563, size: 64, offset: 256)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !20, line: 607, flags: DIFlagFwdDecl)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !541, file: !20, line: 651, baseType: !563, size: 64, offset: 320)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !541, file: !20, line: 654, baseType: !567, size: 64, offset: 384)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !569)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !20, line: 1966, size: 2048, align: 512, elements: !570)
!570 = !{!571, !3797, !3807, !3811, !3815, !3819, !3823, !3827, !3831, !3835, !3839, !3840, !3844, !3848, !3885, !3914, !3918, !3924, !3928, !3932, !3936, !3940, !3944, !3950, !3954}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !569, file: !20, line: 1967, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!575, !540, !575, !13}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !577, line: 82, size: 1536, elements: !578)
!577 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!578 = !{!579, !580, !590, !598, !599, !619, !620, !624, !637, !3780, !3781, !3782, !3783, !3789, !3790, !3791}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !576, file: !577, line: 84, baseType: !13, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !576, file: !577, line: 85, baseType: !581, size: 32, offset: 32)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !582, line: 275, baseType: !583)
!582 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !582, line: 275, size: 32, elements: !584)
!584 = !{!585}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !583, file: !582, line: 275, baseType: !586, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !582, line: 69, baseType: !587)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !582, line: 64, size: 32, elements: !588)
!588 = !{!589}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !587, file: !582, line: 65, baseType: !13, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !576, file: !577, line: 86, baseType: !591, size: 128, offset: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !592, line: 38, size: 128, elements: !593)
!592 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!593 = !{!594, !596}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !591, file: !592, line: 39, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !591, file: !592, line: 39, baseType: !597, size: 64, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !576, file: !577, line: 87, baseType: !575, size: 64, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !576, file: !577, line: 88, baseType: !600, size: 128, offset: 256)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !577, line: 49, size: 128, elements: !601)
!601 = !{!602, !616}
!602 = !DIDerivedType(tag: DW_TAG_member, scope: !600, file: !577, line: 50, baseType: !603, size: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !600, file: !577, line: 50, size: 64, elements: !604)
!604 = !{!605, !612}
!605 = !DIDerivedType(tag: DW_TAG_member, scope: !603, file: !577, line: 51, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !603, file: !577, line: 51, size: 64, elements: !607)
!607 = !{!608, !611}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !606, file: !577, line: 52, baseType: !609, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !419, line: 21, baseType: !610)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !421, line: 27, baseType: !13)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !606, file: !577, line: 52, baseType: !609, size: 32, offset: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !603, file: !577, line: 54, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !419, line: 23, baseType: !614)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !421, line: 31, baseType: !615)
!615 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !600, file: !577, line: 56, baseType: !617, size: 64, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !576, file: !577, line: 89, baseType: !540, size: 64, offset: 384)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !576, file: !577, line: 91, baseType: !621, size: 256, offset: 448)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 256, elements: !622)
!622 = !{!623}
!623 = !DISubrange(count: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !576, file: !577, line: 94, baseType: !625, size: 64, offset: 704)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !626, line: 25, size: 64, elements: !627)
!626 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!627 = !{!628}
!628 = !DIDerivedType(tag: DW_TAG_member, scope: !625, file: !626, line: 26, baseType: !629, size: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !625, file: !626, line: 26, size: 64, elements: !630)
!630 = !{!631, !632}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !629, file: !626, line: 28, baseType: !614, size: 64, align: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, scope: !629, file: !626, line: 30, baseType: !633, size: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !629, file: !626, line: 30, size: 64, elements: !634)
!634 = !{!635, !636}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !633, file: !626, line: 31, baseType: !394, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !633, file: !626, line: 32, baseType: !115, size: 32, offset: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !576, file: !577, line: 95, baseType: !638, size: 64, offset: 768)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !640)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !577, line: 128, size: 1024, align: 512, elements: !641)
!641 = !{!642, !646, !647, !654, !660, !664, !668, !672, !673, !677, !681, !3770, !3774}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !640, file: !577, line: 129, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!115, !575, !13}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !640, file: !577, line: 130, baseType: !643, size: 64, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !640, file: !577, line: 131, baseType: !648, size: 64, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!115, !651, !653}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !576)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !640, file: !577, line: 132, baseType: !655, size: 64, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!115, !651, !13, !378, !658}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !600)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !640, file: !577, line: 134, baseType: !661, size: 64, offset: 256)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!115, !651}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !640, file: !577, line: 135, baseType: !665, size: 64, offset: 320)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!115, !575}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !640, file: !577, line: 136, baseType: !669, size: 64, offset: 384)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !575}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !640, file: !577, line: 137, baseType: !669, size: 64, offset: 448)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !640, file: !577, line: 138, baseType: !674, size: 64, offset: 512)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{null, !575, !540}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !640, file: !577, line: 139, baseType: !678, size: 64, offset: 576)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!460, !575, !460, !115}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !640, file: !577, line: 140, baseType: !682, size: 64, offset: 640)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!685, !3769}
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !687, line: 70, size: 256, elements: !688)
!687 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!688 = !{!689, !690, !3765, !3766}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !686, file: !687, line: 71, baseType: !575, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !686, file: !687, line: 72, baseType: !691, size: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !20, line: 1190, size: 10752, elements: !693)
!693 = !{!694, !695, !698, !699, !700, !704, !1184, !1323, !1363, !1453, !1457, !1458, !1459, !1460, !1461, !1470, !1471, !1472, !1473, !1478, !1482, !1483, !1486, !1489, !1492, !1495, !1496, !1497, !1538, !3698, !3699, !3700, !3701, !3702, !3703, !3706, !3708, !3715, !3716, !3717, !3718, !3719, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !692, file: !20, line: 1191, baseType: !381, size: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !692, file: !20, line: 1192, baseType: !696, size: 32, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !347, line: 21, baseType: !697)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !347, line: 18, baseType: !609)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !692, file: !20, line: 1193, baseType: !422, size: 8, offset: 160)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !692, file: !20, line: 1194, baseType: !510, size: 64, offset: 192)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !692, file: !20, line: 1195, baseType: !701, size: 64, offset: 256)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !347, line: 52, baseType: !702)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !494, line: 88, baseType: !703)
!703 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !692, file: !20, line: 1196, baseType: !705, size: 64, offset: 320)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !20, line: 2366, size: 576, elements: !707)
!707 = !{!708, !709, !710, !717, !721, !725, !729, !1169, !1170, !1174, !1176, !1177, !1178, !1180, !1181, !1182, !1183}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !706, file: !20, line: 2367, baseType: !378, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !706, file: !20, line: 2368, baseType: !115, size: 32, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !706, file: !20, line: 2376, baseType: !711, size: 64, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!115, !714}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !716, line: 32, flags: DIFlagFwdDecl)
!716 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!717 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !706, file: !20, line: 2377, baseType: !718, size: 64, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !720)
!720 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !20, line: 75, flags: DIFlagFwdDecl)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !706, file: !20, line: 2378, baseType: !722, size: 64, offset: 256)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!575, !705, !115, !378, !345}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !706, file: !20, line: 2380, baseType: !726, size: 64, offset: 320)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{null, !691}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !706, file: !20, line: 2381, baseType: !730, size: 64, offset: 384)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !12, line: 402, size: 9216, align: 512, elements: !732)
!732 = !{!733, !734, !735, !739, !761, !787, !788, !789, !790, !794, !799, !800, !820, !876, !877, !878, !879, !880, !883, !884, !885, !893, !897, !924, !945, !946, !947, !948, !957, !980, !981, !984, !987, !988, !989, !990, !991, !992, !993, !998, !999, !1127, !1135, !1136, !1137, !1139, !1143, !1144, !1148, !1149, !1150, !1151, !1153, !1154, !1155, !1162, !1163, !1164, !1168}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !731, file: !12, line: 403, baseType: !11, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !731, file: !12, line: 406, baseType: !381, size: 128, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !731, file: !12, line: 409, baseType: !736, size: 448, offset: 192)
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !737)
!737 = !{!738}
!738 = !DISubrange(count: 56)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !731, file: !12, line: 417, baseType: !740, size: 768, offset: 640)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !12, line: 45, size: 768, elements: !741)
!741 = !{!742, !743, !744, !745, !748}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !740, file: !12, line: 46, baseType: !374, size: 512)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !740, file: !12, line: 47, baseType: !730, size: 64, offset: 512)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !740, file: !12, line: 48, baseType: !387, size: 64, offset: 576)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !740, file: !12, line: 49, baseType: !746, size: 64, offset: 640)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !12, line: 49, flags: DIFlagFwdDecl)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !740, file: !12, line: 50, baseType: !749, size: 64, offset: 704)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !751, line: 26, size: 256, elements: !752)
!751 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!752 = !{!753, !754}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !750, file: !751, line: 27, baseType: !13, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !750, file: !751, line: 28, baseType: !755, size: 192, offset: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !756, line: 43, size: 192, elements: !757)
!756 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!757 = !{!758, !760}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !755, file: !756, line: 44, baseType: !759, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !403, line: 23, baseType: !402)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !755, file: !756, line: 45, baseType: !381, size: 128, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !731, file: !12, line: 418, baseType: !762, size: 64, offset: 1408)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !12, line: 53, size: 448, elements: !764)
!764 = !{!765, !766, !771, !775, !779, !783}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !763, file: !12, line: 54, baseType: !498, size: 128)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !763, file: !12, line: 55, baseType: !767, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{!492, !762, !770, !460}
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !763, file: !12, line: 57, baseType: !772, size: 64, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!492, !762, !770, !378, !507}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !763, file: !12, line: 59, baseType: !776, size: 64, offset: 256)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{null, !730, !378}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !763, file: !12, line: 60, baseType: !780, size: 64, offset: 320)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!115, !730}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !763, file: !12, line: 61, baseType: !784, size: 64, offset: 384)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{null, !730}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !731, file: !12, line: 419, baseType: !378, size: 64, offset: 1472)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !731, file: !12, line: 420, baseType: !378, size: 64, offset: 1536)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !731, file: !12, line: 421, baseType: !387, size: 64, offset: 1600)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !731, file: !12, line: 424, baseType: !791, size: 64, offset: 1664)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !793)
!793 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !12, line: 424, flags: DIFlagFwdDecl)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !731, file: !12, line: 425, baseType: !795, size: 64, offset: 1728)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !797)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !419, line: 20, baseType: !798)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !421, line: 26, baseType: !115)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !731, file: !12, line: 426, baseType: !13, size: 32, offset: 1792)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !731, file: !12, line: 435, baseType: !801, size: 256, offset: 1856)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !802, line: 66, size: 256, elements: !803)
!802 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!803 = !{!804, !813, !814, !819}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !801, file: !802, line: 67, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !806, line: 13, baseType: !807)
!806 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !347, line: 181, baseType: !808)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !347, line: 179, size: 64, elements: !809)
!809 = !{!810}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !808, file: !347, line: 180, baseType: !811, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !419, line: 22, baseType: !812)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !421, line: 30, baseType: !703)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !801, file: !802, line: 68, baseType: !759, size: 32, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !801, file: !802, line: 70, baseType: !815, size: 32, offset: 96)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !816, line: 15, size: 32, elements: !817)
!816 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!817 = !{!818}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !815, file: !816, line: 20, baseType: !365, size: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !801, file: !802, line: 72, baseType: !381, size: 128, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !731, file: !12, line: 437, baseType: !821, size: 64, offset: 2112)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !823, line: 69, size: 320, elements: !824)
!823 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!824 = !{!825, !826, !827, !847, !849, !853, !854}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !822, file: !823, line: 70, baseType: !378, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !822, file: !823, line: 71, baseType: !730, size: 64, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !822, file: !823, line: 72, baseType: !828, size: 64, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !830)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !823, line: 47, size: 256, elements: !831)
!831 = !{!832, !833, !839, !843}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !830, file: !823, line: 49, baseType: !13, size: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !830, file: !823, line: 51, baseType: !834, size: 64, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!115, !378, !837}
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !822)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !830, file: !823, line: 53, baseType: !840, size: 64, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!115, !460, !837}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !830, file: !823, line: 55, baseType: !844, size: 64, offset: 192)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{null, !345}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !822, file: !823, line: 73, baseType: !848, size: 16, offset: 192)
!848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !428)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !822, file: !823, line: 74, baseType: !850, size: 8, offset: 208)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !419, line: 16, baseType: !851)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !421, line: 20, baseType: !852)
!852 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !822, file: !823, line: 75, baseType: !418, size: 8, offset: 216)
!854 = !DIDerivedType(tag: DW_TAG_member, scope: !822, file: !823, line: 76, baseType: !855, size: 64, offset: 256)
!855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !822, file: !823, line: 76, size: 64, elements: !856)
!856 = !{!857, !858, !865}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !855, file: !823, line: 77, baseType: !345, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !855, file: !823, line: 78, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !861)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !823, line: 86, size: 128, elements: !862)
!862 = !{!863, !864}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !861, file: !823, line: 87, baseType: !13, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !861, file: !823, line: 88, baseType: !460, size: 64, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !855, file: !823, line: 79, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !868)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !823, line: 92, size: 256, elements: !869)
!869 = !{!870, !871, !872, !874, !875}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !868, file: !823, line: 94, baseType: !13, size: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !868, file: !823, line: 95, baseType: !13, size: 32, offset: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !868, file: !823, line: 96, baseType: !873, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !868, file: !823, line: 97, baseType: !828, size: 64, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !868, file: !823, line: 98, baseType: !345, size: 64, offset: 192)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !731, file: !12, line: 438, baseType: !13, size: 32, offset: 2176)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !731, file: !12, line: 441, baseType: !13, size: 32, offset: 2208)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !731, file: !12, line: 442, baseType: !791, size: 64, offset: 2240)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !731, file: !12, line: 443, baseType: !795, size: 64, offset: 2304)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !731, file: !12, line: 444, baseType: !881, size: 8, offset: 2368)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !347, line: 35, baseType: !882)
!882 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !731, file: !12, line: 451, baseType: !881, size: 8, offset: 2376)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !731, file: !12, line: 454, baseType: !13, size: 32, offset: 2400)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !731, file: !12, line: 455, baseType: !886, size: 64, offset: 2432)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !888, line: 23, size: 96, elements: !889)
!888 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!889 = !{!890, !891, !892}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !887, file: !888, line: 24, baseType: !115, size: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !887, file: !888, line: 24, baseType: !115, size: 32, offset: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !887, file: !888, line: 24, baseType: !115, size: 32, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !731, file: !12, line: 458, baseType: !894, size: 64, offset: 2496)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{!115}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !731, file: !12, line: 460, baseType: !898, size: 4032, align: 512, offset: 2560)
!898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !899, size: 4032, elements: !922)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !12, line: 362, size: 576, elements: !900)
!900 = !{!901, !902, !903}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !899, file: !12, line: 363, baseType: !345, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !899, file: !12, line: 364, baseType: !13, size: 32, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !899, file: !12, line: 367, baseType: !904, size: 448, offset: 128)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !12, line: 319, size: 448, elements: !905)
!905 = !{!906, !907}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !904, file: !12, line: 320, baseType: !730, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !904, file: !12, line: 321, baseType: !908, size: 384, offset: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !909, line: 40, size: 384, elements: !910)
!909 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!910 = !{!911}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !908, file: !909, line: 41, baseType: !912, size: 384, align: 64)
!912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !913, size: 384, align: 64, elements: !920)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !914, line: 5, size: 192, align: 64, elements: !915)
!914 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!915 = !{!916, !917, !919}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !913, file: !914, line: 6, baseType: !510, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !913, file: !914, line: 7, baseType: !918, size: 64, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !913, file: !914, line: 8, baseType: !918, size: 64, offset: 128)
!920 = !{!921}
!921 = !DISubrange(count: 2)
!922 = !{!923}
!923 = !DISubrange(count: 7)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !731, file: !12, line: 463, baseType: !925, size: 192, offset: 6592)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !926, line: 8, size: 192, elements: !927)
!926 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!927 = !{!928, !929, !931}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !925, file: !926, line: 10, baseType: !13, size: 32)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !925, file: !926, line: 11, baseType: !930, size: 64, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !925, file: !926, line: 12, baseType: !932, size: 64, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !934, line: 59, size: 48, elements: !935)
!934 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!935 = !{!936, !940, !941, !942, !943, !944}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !933, file: !934, line: 60, baseType: !937, size: 16)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !419, line: 18, baseType: !938)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !421, line: 23, baseType: !939)
!939 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !933, file: !934, line: 61, baseType: !937, size: 16, offset: 16)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !933, file: !934, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !933, file: !934, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !933, file: !934, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !933, file: !934, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !731, file: !12, line: 465, baseType: !510, size: 64, offset: 6784)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !731, file: !12, line: 469, baseType: !13, size: 32, offset: 6848)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !731, file: !12, line: 470, baseType: !381, size: 128, offset: 6912)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !731, file: !12, line: 471, baseType: !949, size: 64, offset: 7040)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !951, line: 33, size: 96, elements: !952)
!951 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!952 = !{!953, !954, !955, !956}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !950, file: !951, line: 37, baseType: !115, size: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !950, file: !951, line: 43, baseType: !115, size: 32, offset: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !950, file: !951, line: 45, baseType: !430, size: 16, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !950, file: !951, line: 47, baseType: !430, size: 16, offset: 80)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !731, file: !12, line: 476, baseType: !958, size: 64, offset: 7104)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !12, line: 378, size: 256, elements: !960)
!960 = !{!961, !977, !978, !979}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !959, file: !12, line: 379, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !964, line: 204, baseType: !965)
!964 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !964, line: 197, size: 192, elements: !966)
!966 = !{!967, !969, !970, !971, !973, !975}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !965, file: !964, line: 198, baseType: !968, size: 32)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !964, line: 21, baseType: !610)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !965, file: !964, line: 199, baseType: !422, size: 8, offset: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !965, file: !964, line: 200, baseType: !422, size: 8, offset: 40)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !965, file: !964, line: 201, baseType: !972, size: 16, offset: 48)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !964, line: 17, baseType: !429)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !965, file: !964, line: 202, baseType: !974, size: 64, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !964, line: 16, baseType: !614)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !965, file: !964, line: 203, baseType: !976, size: 64, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !964, line: 22, baseType: !614)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !959, file: !12, line: 380, baseType: !13, size: 32, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !959, file: !12, line: 381, baseType: !460, size: 64, offset: 128)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !959, file: !12, line: 382, baseType: !460, size: 64, offset: 192)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !731, file: !12, line: 477, baseType: !959, size: 256, offset: 7168)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !731, file: !12, line: 480, baseType: !982, size: 64, offset: 7424)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !12, line: 480, flags: DIFlagFwdDecl)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !731, file: !12, line: 483, baseType: !985, size: 64, offset: 7488)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !12, line: 483, flags: DIFlagFwdDecl)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !731, file: !12, line: 488, baseType: !460, size: 64, offset: 7552)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !731, file: !12, line: 492, baseType: !345, size: 64, offset: 7616)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !731, file: !12, line: 493, baseType: !13, size: 32, offset: 7680)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !731, file: !12, line: 495, baseType: !345, size: 64, offset: 7744)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !731, file: !12, line: 496, baseType: !13, size: 32, offset: 7808)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !731, file: !12, line: 499, baseType: !13, size: 32, offset: 7840)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !731, file: !12, line: 500, baseType: !994, size: 64, offset: 7872)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !996, line: 45, baseType: !997)
!996 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !731, file: !12, line: 503, baseType: !13, size: 32, offset: 7936)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !731, file: !12, line: 504, baseType: !1000, size: 64, offset: 8000)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1003, line: 96, size: 192, elements: !1004)
!1003 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1004 = !{!1005, !1006, !1087, !1091}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1002, file: !1003, line: 97, baseType: !13, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1002, file: !1003, line: 98, baseType: !1007, size: 64, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1003, line: 24, size: 3072, elements: !1009)
!1009 = !{!1010, !1012, !1013, !1014, !1015, !1039, !1040, !1041, !1042, !1060, !1072, !1073, !1084, !1085, !1086}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1008, file: !1003, line: 26, baseType: !1011, size: 128)
!1011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !805, size: 128, elements: !920)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1008, file: !1003, line: 27, baseType: !1011, size: 128, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1008, file: !1003, line: 28, baseType: !115, size: 32, offset: 256)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1008, file: !1003, line: 31, baseType: !394, size: 32, align: 512, offset: 512)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1008, file: !1003, line: 32, baseType: !1016, size: 960, offset: 576)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1017, line: 206, size: 960, elements: !1018)
!1017 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1018 = !{!1019, !1028, !1033, !1035, !1036, !1038}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1016, file: !1017, line: 207, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !347, line: 232, size: 128, align: 64, elements: !1022)
!1022 = !{!1023, !1024}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1021, file: !347, line: 233, baseType: !1020, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1021, file: !347, line: 234, baseType: !1025, size: 64, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{null, !1020}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1016, file: !1017, line: 208, baseType: !1029, size: 256, offset: 64)
!1029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1030, size: 256, elements: !1031)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1031 = !{!1032}
!1032 = !DISubrange(count: 4)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1016, file: !1017, line: 209, baseType: !1034, size: 256, offset: 320)
!1034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !510, size: 256, elements: !1031)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1016, file: !1017, line: 213, baseType: !496, size: 64, offset: 576)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1016, file: !1017, line: 215, baseType: !1037, size: 256, offset: 640)
!1037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !496, size: 256, elements: !1031)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1016, file: !1017, line: 216, baseType: !418, size: 8, offset: 896)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1008, file: !1003, line: 33, baseType: !510, size: 64, offset: 1536)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1008, file: !1003, line: 34, baseType: !510, size: 64, offset: 1600)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1008, file: !1003, line: 35, baseType: !881, size: 8, offset: 1664)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1008, file: !1003, line: 36, baseType: !1043, size: 320, offset: 1728)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1044, line: 11, size: 320, elements: !1045)
!1044 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1045 = !{!1046, !1053, !1054, !1059}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1043, file: !1044, line: 16, baseType: !1047, size: 128)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !347, line: 198, size: 128, elements: !1048)
!1048 = !{!1049, !1051}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1047, file: !347, line: 199, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1047, file: !347, line: 199, baseType: !1052, size: 64, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1043, file: !1044, line: 17, baseType: !510, size: 64, offset: 128)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1043, file: !1044, line: 18, baseType: !1055, size: 64, offset: 192)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{null, !1058}
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1043, file: !1044, line: 19, baseType: !609, size: 32, offset: 256)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1008, file: !1003, line: 37, baseType: !1061, size: 256, offset: 2048)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1062, line: 98, size: 256, elements: !1063)
!1062 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1063 = !{!1064, !1065, !1066}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1061, file: !1062, line: 99, baseType: !805, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1061, file: !1062, line: 100, baseType: !381, size: 128, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1061, file: !1062, line: 101, baseType: !1067, size: 64, offset: 192)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1062, line: 21, baseType: !1068)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{null, !1071}
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1008, file: !1003, line: 38, baseType: !1021, size: 128, align: 64, offset: 2304)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1008, file: !1003, line: 39, baseType: !1074, size: 64, offset: 2432)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1003, line: 49, size: 768, elements: !1076)
!1076 = !{!1077, !1078, !1079, !1080, !1081, !1082, !1083}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1075, file: !1003, line: 50, baseType: !394, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1075, file: !1003, line: 51, baseType: !1034, size: 256, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1075, file: !1003, line: 53, baseType: !1034, size: 256, offset: 320)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1075, file: !1003, line: 54, baseType: !510, size: 64, offset: 576)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1075, file: !1003, line: 55, baseType: !1074, size: 64, offset: 640)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1075, file: !1003, line: 56, baseType: !115, size: 32, offset: 704)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1075, file: !1003, line: 57, baseType: !115, size: 32, offset: 736)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1008, file: !1003, line: 40, baseType: !510, size: 64, offset: 2496)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1008, file: !1003, line: 42, baseType: !115, size: 32, offset: 2560)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1008, file: !1003, line: 43, baseType: !1001, size: 64, offset: 2624)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1002, file: !1003, line: 99, baseType: !1088, offset: 128)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1089, line: 211, elements: !1090)
!1089 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1090 = !{}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1002, file: !1003, line: 100, baseType: !1092, size: 64, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1003, line: 63, size: 3008, elements: !1094)
!1094 = !{!1095, !1096, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1126}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1093, file: !1003, line: 64, baseType: !1074, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1093, file: !1003, line: 65, baseType: !1097, size: 192, offset: 64)
!1097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1074, size: 192, elements: !461)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1093, file: !1003, line: 67, baseType: !115, size: 32, offset: 256)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1093, file: !1003, line: 68, baseType: !801, size: 256, offset: 320)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1093, file: !1003, line: 69, baseType: !394, size: 32, offset: 576)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1093, file: !1003, line: 70, baseType: !801, size: 256, offset: 640)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1093, file: !1003, line: 71, baseType: !510, size: 64, offset: 896)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1093, file: !1003, line: 72, baseType: !510, size: 64, offset: 960)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1093, file: !1003, line: 73, baseType: !510, size: 64, offset: 1024)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1093, file: !1003, line: 74, baseType: !510, size: 64, offset: 1088)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1093, file: !1003, line: 75, baseType: !510, size: 64, offset: 1152)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1093, file: !1003, line: 76, baseType: !510, size: 64, offset: 1216)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1093, file: !1003, line: 77, baseType: !510, size: 64, offset: 1280)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1093, file: !1003, line: 78, baseType: !510, size: 64, offset: 1344)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1093, file: !1003, line: 79, baseType: !881, size: 8, offset: 1408)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1093, file: !1003, line: 80, baseType: !510, size: 64, offset: 1472)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1093, file: !1003, line: 81, baseType: !801, size: 256, offset: 1536)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1093, file: !1003, line: 82, baseType: !750, size: 256, offset: 1792)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1093, file: !1003, line: 84, baseType: !365, size: 32, offset: 2048)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1093, file: !1003, line: 87, baseType: !510, size: 64, offset: 2112)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1093, file: !1003, line: 88, baseType: !510, size: 64, offset: 2176)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1093, file: !1003, line: 89, baseType: !1118, size: 704, offset: 2240)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1062, line: 111, size: 704, elements: !1119)
!1119 = !{!1120, !1121, !1122, !1125}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1118, file: !1062, line: 112, baseType: !1061, size: 256)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1118, file: !1062, line: 113, baseType: !1043, size: 320, offset: 256)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1118, file: !1062, line: 116, baseType: !1123, size: 64, offset: 576)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1062, line: 18, flags: DIFlagFwdDecl)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1118, file: !1062, line: 117, baseType: !115, size: 32, offset: 640)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1093, file: !1003, line: 90, baseType: !1001, size: 64, offset: 2944)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !731, file: !12, line: 515, baseType: !1128, size: 64, offset: 8064)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1130, line: 117, size: 128, elements: !1131)
!1130 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1131 = !{!1132, !1133, !1134}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1129, file: !1130, line: 118, baseType: !797, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1129, file: !1130, line: 119, baseType: !797, size: 32, offset: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1129, file: !1130, line: 120, baseType: !496, size: 64, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !731, file: !12, line: 516, baseType: !13, size: 32, offset: 8128)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !731, file: !12, line: 519, baseType: !13, size: 32, offset: 8160)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !731, file: !12, line: 520, baseType: !1138, size: 64, offset: 8192)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !731, file: !12, line: 523, baseType: !1140, size: 64, offset: 8256)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !12, line: 523, flags: DIFlagFwdDecl)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !731, file: !12, line: 524, baseType: !13, size: 32, offset: 8320)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !731, file: !12, line: 525, baseType: !1145, size: 64, offset: 8384)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !12, line: 525, flags: DIFlagFwdDecl)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !731, file: !12, line: 526, baseType: !13, size: 32, offset: 8448)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !731, file: !12, line: 533, baseType: !345, size: 64, offset: 8512)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !731, file: !12, line: 534, baseType: !13, size: 32, offset: 8576)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !731, file: !12, line: 535, baseType: !1152, size: 64, offset: 8640)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !731, file: !12, line: 536, baseType: !13, size: 32, offset: 8704)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !731, file: !12, line: 539, baseType: !115, size: 32, offset: 8736)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !731, file: !12, line: 540, baseType: !1156, size: 64, offset: 8768)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1158, line: 32, size: 64, elements: !1159)
!1158 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1159 = !{!1160, !1161}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1157, file: !1158, line: 33, baseType: !797, size: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1157, file: !1158, line: 34, baseType: !797, size: 32, offset: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !731, file: !12, line: 563, baseType: !381, size: 128, offset: 8832)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !731, file: !12, line: 565, baseType: !381, size: 128, offset: 8960)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !731, file: !12, line: 568, baseType: !1165, size: 64, offset: 9088)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{null}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !731, file: !12, line: 570, baseType: !365, size: 32, offset: 9152)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !706, file: !20, line: 2382, baseType: !705, size: 64, offset: 448)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !706, file: !20, line: 2383, baseType: !1171, size: 64, offset: 512)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !347, line: 194, size: 64, elements: !1172)
!1172 = !{!1173}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1171, file: !347, line: 195, baseType: !1050, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !706, file: !20, line: 2385, baseType: !1175, offset: 576)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1089, line: 206, elements: !1090)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !706, file: !20, line: 2386, baseType: !1175, offset: 576)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !706, file: !20, line: 2387, baseType: !1175, offset: 576)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !706, file: !20, line: 2388, baseType: !1179, offset: 576)
!1179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1175, elements: !461)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !706, file: !20, line: 2390, baseType: !1175, offset: 576)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !706, file: !20, line: 2391, baseType: !1175, offset: 576)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !706, file: !20, line: 2392, baseType: !1175, offset: 576)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !706, file: !20, line: 2393, baseType: !1175, offset: 576)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !692, file: !20, line: 1197, baseType: !1185, size: 64, offset: 384)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1187)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !20, line: 2057, size: 1664, elements: !1188)
!1188 = !{!1189, !1193, !1197, !1198, !1202, !1208, !1212, !1213, !1214, !1218, !1222, !1226, !1227, !1228, !1234, !1238, !1239, !1246, !1247, !1248, !1249, !1253, !1257, !1306, !1321, !1322}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1187, file: !20, line: 2058, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!540, !691}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1187, file: !20, line: 2059, baseType: !1194, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{null, !540}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1187, file: !20, line: 2060, baseType: !1194, size: 64, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1187, file: !20, line: 2062, baseType: !1199, size: 64, offset: 192)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{null, !540, !115}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1187, file: !20, line: 2063, baseType: !1203, size: 64, offset: 256)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!115, !540, !1206}
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !20, line: 309, flags: DIFlagFwdDecl)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1187, file: !20, line: 2064, baseType: !1209, size: 64, offset: 320)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!115, !540}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1187, file: !20, line: 2065, baseType: !1194, size: 64, offset: 384)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1187, file: !20, line: 2066, baseType: !726, size: 64, offset: 448)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1187, file: !20, line: 2067, baseType: !1215, size: 64, offset: 512)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!115, !691, !115}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1187, file: !20, line: 2068, baseType: !1219, size: 64, offset: 576)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!115, !691, !19}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1187, file: !20, line: 2069, baseType: !1223, size: 64, offset: 640)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!115, !691}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1187, file: !20, line: 2070, baseType: !1219, size: 64, offset: 704)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1187, file: !20, line: 2071, baseType: !1223, size: 64, offset: 768)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1187, file: !20, line: 2072, baseType: !1229, size: 64, offset: 832)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!115, !575, !1232}
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !20, line: 62, flags: DIFlagFwdDecl)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1187, file: !20, line: 2073, baseType: !1235, size: 64, offset: 896)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!115, !691, !930, !460}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1187, file: !20, line: 2074, baseType: !726, size: 64, offset: 960)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1187, file: !20, line: 2076, baseType: !1240, size: 64, offset: 1024)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!115, !1243, !575}
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1245, line: 66, flags: DIFlagFwdDecl)
!1245 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1187, file: !20, line: 2077, baseType: !1240, size: 64, offset: 1088)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1187, file: !20, line: 2078, baseType: !1240, size: 64, offset: 1152)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1187, file: !20, line: 2079, baseType: !1240, size: 64, offset: 1216)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1187, file: !20, line: 2081, baseType: !1250, size: 64, offset: 1280)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!492, !691, !115, !460, !507, !701}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1187, file: !20, line: 2082, baseType: !1254, size: 64, offset: 1344)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!492, !691, !115, !378, !507, !701}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1187, file: !20, line: 2083, baseType: !1258, size: 64, offset: 1408)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!1261, !540}
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !25, line: 296, size: 1664, elements: !1264)
!1264 = !{!1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1289, !1290, !1291}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1263, file: !25, line: 297, baseType: !1047, size: 128)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1263, file: !25, line: 298, baseType: !381, size: 128, offset: 128)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1263, file: !25, line: 299, baseType: !381, size: 128, offset: 256)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1263, file: !25, line: 300, baseType: !381, size: 128, offset: 384)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1263, file: !25, line: 301, baseType: !801, size: 256, offset: 512)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1263, file: !25, line: 302, baseType: !394, size: 32, offset: 768)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1263, file: !25, line: 303, baseType: !365, size: 32, offset: 800)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1263, file: !25, line: 304, baseType: !691, size: 64, offset: 832)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1263, file: !25, line: 305, baseType: !1274, size: 64, offset: 896)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !25, line: 68, size: 64, elements: !1275)
!1275 = !{!1276, !1288}
!1276 = !DIDerivedType(tag: DW_TAG_member, scope: !1274, file: !25, line: 69, baseType: !1277, size: 32)
!1277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1274, file: !25, line: 69, size: 32, elements: !1278)
!1278 = !{!1279, !1280, !1281}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1277, file: !25, line: 70, baseType: !546, size: 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1277, file: !25, line: 71, baseType: !555, size: 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1277, file: !25, line: 72, baseType: !1282, size: 32)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1283, line: 24, baseType: !1284)
!1283 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1283, line: 22, size: 32, elements: !1285)
!1285 = !{!1286}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1284, file: !1283, line: 23, baseType: !1287, size: 32)
!1287 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1283, line: 20, baseType: !552)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1274, file: !25, line: 74, baseType: !24, size: 32, offset: 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1263, file: !25, line: 306, baseType: !701, size: 64, offset: 960)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1263, file: !25, line: 307, baseType: !510, size: 64, offset: 1024)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1263, file: !25, line: 308, baseType: !1292, size: 576, offset: 1088)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !25, line: 205, size: 576, elements: !1293)
!1293 = !{!1294, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1305}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1292, file: !25, line: 206, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !25, line: 66, baseType: !703)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1292, file: !25, line: 207, baseType: !1295, size: 64, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1292, file: !25, line: 208, baseType: !1295, size: 64, offset: 128)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1292, file: !25, line: 209, baseType: !1295, size: 64, offset: 192)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1292, file: !25, line: 210, baseType: !1295, size: 64, offset: 256)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1292, file: !25, line: 211, baseType: !1295, size: 64, offset: 320)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1292, file: !25, line: 212, baseType: !1295, size: 64, offset: 384)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1292, file: !25, line: 213, baseType: !1303, size: 64, offset: 448)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1304, line: 8, baseType: !812)
!1304 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1292, file: !25, line: 214, baseType: !1303, size: 64, offset: 512)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1187, file: !20, line: 2085, baseType: !1307, size: 64, offset: 1472)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!496, !691, !1310}
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1312, line: 15, size: 256, elements: !1313)
!1312 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1313 = !{!1314, !1315, !1316, !1317, !1318}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1311, file: !1312, line: 16, baseType: !346, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1311, file: !1312, line: 19, baseType: !115, size: 32, offset: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1311, file: !1312, line: 26, baseType: !510, size: 64, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1311, file: !1312, line: 33, baseType: !510, size: 64, offset: 128)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1311, file: !1312, line: 36, baseType: !1319, size: 64, offset: 192)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !44, line: 33, flags: DIFlagFwdDecl)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1187, file: !20, line: 2087, baseType: !1307, size: 64, offset: 1536)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1187, file: !20, line: 2089, baseType: !726, size: 64, offset: 1600)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !692, file: !20, line: 1198, baseType: !1324, size: 64, offset: 448)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1326)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !25, line: 324, size: 704, elements: !1327)
!1327 = !{!1328, !1332, !1336, !1340, !1341, !1342, !1343, !1344, !1349, !1354, !1358}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1326, file: !25, line: 325, baseType: !1329, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!115, !1262}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1326, file: !25, line: 326, baseType: !1333, size: 64, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!1262, !691, !115}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1326, file: !25, line: 327, baseType: !1337, size: 64, offset: 128)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{null, !1262}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1326, file: !25, line: 328, baseType: !1329, size: 64, offset: 192)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1326, file: !25, line: 329, baseType: !1329, size: 64, offset: 256)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1326, file: !25, line: 330, baseType: !1329, size: 64, offset: 320)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1326, file: !25, line: 331, baseType: !1215, size: 64, offset: 384)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1326, file: !25, line: 334, baseType: !1345, size: 64, offset: 448)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!1348, !540}
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1326, file: !25, line: 335, baseType: !1350, size: 64, offset: 512)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!115, !540, !1353}
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1326, file: !25, line: 337, baseType: !1355, size: 64, offset: 576)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!115, !540, !1348}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1326, file: !25, line: 339, baseType: !1359, size: 64, offset: 640)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!115, !691, !1362}
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !692, file: !20, line: 1199, baseType: !1364, size: 64, offset: 512)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1366)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !25, line: 430, size: 704, elements: !1367)
!1367 = !{!1368, !1379, !1380, !1384, !1385, !1386, !1401, !1424, !1428, !1429, !1452}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1366, file: !25, line: 431, baseType: !1369, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!115, !691, !115, !115, !1372}
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1374)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1375, line: 8, size: 128, elements: !1376)
!1375 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1376 = !{!1377, !1378}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1374, file: !1375, line: 9, baseType: !685, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1374, file: !1375, line: 10, baseType: !575, size: 64, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1366, file: !25, line: 432, baseType: !1215, size: 64, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1366, file: !25, line: 433, baseType: !1381, size: 64, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!115, !691, !13}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1366, file: !25, line: 434, baseType: !1381, size: 64, offset: 192)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1366, file: !25, line: 435, baseType: !1215, size: 64, offset: 256)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1366, file: !25, line: 436, baseType: !1387, size: 64, offset: 320)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!115, !691, !115, !1390}
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !25, line: 417, size: 256, elements: !1392)
!1392 = !{!1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1391, file: !25, line: 418, baseType: !115, size: 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1391, file: !25, line: 419, baseType: !13, size: 32, offset: 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1391, file: !25, line: 420, baseType: !13, size: 32, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1391, file: !25, line: 422, baseType: !13, size: 32, offset: 96)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1391, file: !25, line: 423, baseType: !13, size: 32, offset: 128)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1391, file: !25, line: 424, baseType: !13, size: 32, offset: 160)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1391, file: !25, line: 425, baseType: !13, size: 32, offset: 192)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1391, file: !25, line: 426, baseType: !13, size: 32, offset: 224)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1366, file: !25, line: 437, baseType: !1402, size: 64, offset: 384)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!115, !691, !1274, !1405}
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !25, line: 345, size: 960, elements: !1407)
!1407 = !{!1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1406, file: !25, line: 346, baseType: !115, size: 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1406, file: !25, line: 347, baseType: !613, size: 64, offset: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1406, file: !25, line: 348, baseType: !613, size: 64, offset: 128)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1406, file: !25, line: 349, baseType: !613, size: 64, offset: 192)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1406, file: !25, line: 350, baseType: !613, size: 64, offset: 256)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1406, file: !25, line: 351, baseType: !613, size: 64, offset: 320)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1406, file: !25, line: 352, baseType: !613, size: 64, offset: 384)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1406, file: !25, line: 353, baseType: !811, size: 64, offset: 448)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1406, file: !25, line: 355, baseType: !811, size: 64, offset: 512)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1406, file: !25, line: 356, baseType: !115, size: 32, offset: 576)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1406, file: !25, line: 357, baseType: !115, size: 32, offset: 608)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1406, file: !25, line: 358, baseType: !613, size: 64, offset: 640)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1406, file: !25, line: 359, baseType: !613, size: 64, offset: 704)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1406, file: !25, line: 360, baseType: !613, size: 64, offset: 768)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1406, file: !25, line: 361, baseType: !811, size: 64, offset: 832)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1406, file: !25, line: 362, baseType: !115, size: 32, offset: 896)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1366, file: !25, line: 438, baseType: !1425, size: 64, offset: 448)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!115, !691, !1362, !1405}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1366, file: !25, line: 440, baseType: !1402, size: 64, offset: 512)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1366, file: !25, line: 441, baseType: !1430, size: 64, offset: 576)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!115, !691, !1433}
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !25, line: 411, size: 1408, elements: !1435)
!1435 = !{!1436, !1437}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1434, file: !25, line: 412, baseType: !13, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1434, file: !25, line: 413, baseType: !1438, size: 1344, offset: 64)
!1438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1439, size: 1344, elements: !461)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !25, line: 397, size: 448, elements: !1440)
!1440 = !{!1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1451}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1439, file: !25, line: 398, baseType: !13, size: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1439, file: !25, line: 399, baseType: !13, size: 32, offset: 32)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1439, file: !25, line: 401, baseType: !13, size: 32, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1439, file: !25, line: 402, baseType: !13, size: 32, offset: 96)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1439, file: !25, line: 403, baseType: !13, size: 32, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1439, file: !25, line: 404, baseType: !13, size: 32, offset: 160)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1439, file: !25, line: 405, baseType: !13, size: 32, offset: 192)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1439, file: !25, line: 406, baseType: !615, size: 64, offset: 256)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1439, file: !25, line: 407, baseType: !1450, size: 64, offset: 320)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !347, line: 132, baseType: !613)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1439, file: !25, line: 408, baseType: !1450, size: 64, offset: 384)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1366, file: !25, line: 442, baseType: !1381, size: 64, offset: 640)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !692, file: !20, line: 1200, baseType: !1454, size: 64, offset: 576)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1456)
!1456 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !20, line: 54, flags: DIFlagFwdDecl)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !692, file: !20, line: 1201, baseType: !510, size: 64, offset: 640)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !692, file: !20, line: 1202, baseType: !510, size: 64, offset: 704)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !692, file: !20, line: 1203, baseType: !510, size: 64, offset: 768)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !692, file: !20, line: 1204, baseType: !575, size: 64, offset: 832)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !692, file: !20, line: 1205, baseType: !1462, size: 320, offset: 896)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1463, line: 48, size: 320, elements: !1464)
!1463 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1464 = !{!1465, !1466, !1467, !1468, !1469}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1462, file: !1463, line: 49, baseType: !805, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1462, file: !1463, line: 55, baseType: !805, size: 64, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1462, file: !1463, line: 57, baseType: !815, size: 32, offset: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1462, file: !1463, line: 59, baseType: !759, size: 32, offset: 160)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1462, file: !1463, line: 60, baseType: !381, size: 128, offset: 192)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !692, file: !20, line: 1206, baseType: !115, size: 32, offset: 1216)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !692, file: !20, line: 1207, baseType: !365, size: 32, offset: 1248)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !692, file: !20, line: 1209, baseType: !345, size: 64, offset: 1280)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !692, file: !20, line: 1211, baseType: !1474, size: 64, offset: 1344)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1477)
!1477 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !20, line: 1211, flags: DIFlagFwdDecl)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !692, file: !20, line: 1223, baseType: !1479, size: 64, offset: 1408)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !592, line: 34, size: 64, elements: !1480)
!1480 = !{!1481}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1479, file: !592, line: 35, baseType: !595, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !692, file: !20, line: 1224, baseType: !381, size: 128, offset: 1472)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !692, file: !20, line: 1225, baseType: !1484, size: 64, offset: 1600)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !20, line: 1225, flags: DIFlagFwdDecl)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !692, file: !20, line: 1226, baseType: !1487, size: 64, offset: 1664)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !20, line: 1226, flags: DIFlagFwdDecl)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !692, file: !20, line: 1227, baseType: !1490, size: 64, offset: 1728)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !20, line: 50, flags: DIFlagFwdDecl)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !692, file: !20, line: 1228, baseType: !1493, size: 64, offset: 1792)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !20, line: 1228, flags: DIFlagFwdDecl)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !692, file: !20, line: 1229, baseType: !1047, size: 128, offset: 1856)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !692, file: !20, line: 1230, baseType: !13, size: 32, offset: 1984)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !692, file: !20, line: 1231, baseType: !1498, size: 2496, offset: 2048)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !25, line: 521, size: 2496, elements: !1499)
!1499 = !{!1500, !1501, !1502, !1504, !1536}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1498, file: !25, line: 522, baseType: !13, size: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1498, file: !25, line: 523, baseType: !1462, size: 320, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1498, file: !25, line: 524, baseType: !1503, size: 192, offset: 384)
!1503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 192, elements: !461)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1498, file: !25, line: 525, baseType: !1505, size: 1728, offset: 576)
!1505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1506, size: 1728, elements: !461)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !25, line: 222, size: 576, elements: !1507)
!1507 = !{!1508, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1506, file: !25, line: 223, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !25, line: 445, size: 256, elements: !1511)
!1511 = !{!1512, !1513, !1526, !1527}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1510, file: !25, line: 446, baseType: !115, size: 32)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1510, file: !25, line: 447, baseType: !1514, size: 64, offset: 64)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1516)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !25, line: 312, size: 512, elements: !1517)
!1517 = !{!1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1516, file: !25, line: 313, baseType: !1215, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1516, file: !25, line: 314, baseType: !1215, size: 64, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1516, file: !25, line: 315, baseType: !1215, size: 64, offset: 128)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1516, file: !25, line: 316, baseType: !1215, size: 64, offset: 192)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1516, file: !25, line: 317, baseType: !1329, size: 64, offset: 256)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1516, file: !25, line: 318, baseType: !1329, size: 64, offset: 320)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1516, file: !25, line: 319, baseType: !1329, size: 64, offset: 384)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1516, file: !25, line: 320, baseType: !1359, size: 64, offset: 448)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1510, file: !25, line: 448, baseType: !730, size: 64, offset: 128)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1510, file: !25, line: 449, baseType: !1509, size: 64, offset: 192)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1506, file: !25, line: 224, baseType: !115, size: 32, offset: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1506, file: !25, line: 226, baseType: !381, size: 128, offset: 128)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1506, file: !25, line: 227, baseType: !510, size: 64, offset: 256)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1506, file: !25, line: 228, baseType: !13, size: 32, offset: 320)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1506, file: !25, line: 229, baseType: !13, size: 32, offset: 352)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1506, file: !25, line: 230, baseType: !1295, size: 64, offset: 384)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1506, file: !25, line: 231, baseType: !1295, size: 64, offset: 448)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1506, file: !25, line: 232, baseType: !345, size: 64, offset: 512)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1498, file: !25, line: 526, baseType: !1537, size: 192, offset: 2304)
!1537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1514, size: 192, elements: !461)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !692, file: !20, line: 1233, baseType: !1539, size: 2368, offset: 4544)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !20, line: 1184, size: 2368, elements: !1540)
!1540 = !{!1541, !1542, !1543}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1539, file: !20, line: 1185, baseType: !430, size: 16)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1539, file: !20, line: 1186, baseType: !430, size: 16, offset: 16)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1539, file: !20, line: 1187, baseType: !1544, size: 2304, offset: 64)
!1544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1545, size: 2304, elements: !461)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1546, line: 12, size: 768, elements: !1547)
!1546 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1547 = !{!1548, !1562, !1563, !3696, !3697}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1545, file: !1546, line: 13, baseType: !1549, size: 384)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1550, line: 17, size: 384, elements: !1551)
!1550 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1551 = !{!1552, !1553, !1554, !1561}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1549, file: !1550, line: 18, baseType: !115, size: 32)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1549, file: !1550, line: 19, baseType: !115, size: 32, offset: 32)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1549, file: !1550, line: 20, baseType: !1555, size: 192, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1556, line: 41, baseType: !1557)
!1556 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1556, line: 37, size: 192, elements: !1558)
!1558 = !{!1559, !1560}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1557, file: !1556, line: 38, baseType: !394, size: 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1557, file: !1556, line: 39, baseType: !381, size: 128, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1549, file: !1550, line: 22, baseType: !1021, size: 128, align: 64, offset: 256)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1545, file: !1546, line: 14, baseType: !873, size: 64, offset: 384)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1545, file: !1546, line: 15, baseType: !1564, size: 64, offset: 448)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1565, line: 16, size: 64, elements: !1566)
!1565 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1566 = !{!1567}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1564, file: !1565, line: 17, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1245, line: 746, size: 58368, elements: !1570)
!1570 = !{!1571, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1656, !1667, !1762, !1766, !1769, !1800, !1801, !1802, !1803, !1814, !1816, !1817, !1818, !1819, !1820, !1821, !1832, !1833, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1850, !1851, !1858, !1859, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2859, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2907, !2913, !2914, !2915, !2916, !2917, !2921, !2924, !2931, !2936, !2939, !2942, !2945, !2971, !3109, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3147, !3148, !3149, !3158, !3166, !3167, !3168, !3169, !3170, !3175, !3176, !3177, !3181, !3182, !3185, !3188, !3191, !3199, !3202, !3203, !3289, !3290, !3291, !3292, !3293, !3299, !3300, !3301, !3302, !3305, !3306, !3309, !3312, !3313, !3316, !3317, !3318, !3321, !3322, !3323, !3324, !3325, !3326, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3358, !3359, !3365, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3377, !3449, !3451, !3452, !3453, !3454, !3455, !3456, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3473, !3474, !3475}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1569, file: !1245, line: 752, baseType: !1572, size: 192)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1573, line: 56, size: 192, elements: !1574)
!1573 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1574 = !{!1575, !1576, !1577, !1578}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1572, file: !1573, line: 57, baseType: !510, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1572, file: !1573, line: 58, baseType: !510, size: 64, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1572, file: !1573, line: 59, baseType: !609, size: 32, offset: 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1572, file: !1573, line: 61, baseType: !609, size: 32, offset: 160)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1569, file: !1245, line: 754, baseType: !13, size: 32, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1569, file: !1245, line: 767, baseType: !345, size: 64, offset: 256)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1569, file: !1245, line: 768, baseType: !361, size: 32, offset: 320)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1569, file: !1245, line: 770, baseType: !13, size: 32, offset: 352)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1569, file: !1245, line: 771, baseType: !13, size: 32, offset: 384)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1569, file: !1245, line: 774, baseType: !115, size: 32, offset: 416)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1569, file: !1245, line: 775, baseType: !1586, size: 128, offset: 448)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1587, line: 58, size: 128, elements: !1588)
!1587 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1588 = !{!1589, !1595, !1600, !1601}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1586, file: !1587, line: 59, baseType: !1590, size: 64)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1591, line: 60, size: 64, elements: !1592)
!1591 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1592 = !{!1593}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1590, file: !1591, line: 61, baseType: !1594, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, scope: !1586, file: !1587, line: 60, baseType: !1596, size: 32, offset: 64)
!1596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1586, file: !1587, line: 60, size: 32, elements: !1597)
!1597 = !{!1598, !1599}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1596, file: !1587, line: 61, baseType: !13, size: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1596, file: !1587, line: 62, baseType: !365, size: 32)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1586, file: !1587, line: 65, baseType: !428, size: 16, offset: 96)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1586, file: !1587, line: 65, baseType: !428, size: 16, offset: 112)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1569, file: !1245, line: 776, baseType: !13, size: 32, offset: 576)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1569, file: !1245, line: 777, baseType: !510, size: 64, offset: 640)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1569, file: !1245, line: 778, baseType: !1568, size: 64, offset: 704)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1569, file: !1245, line: 787, baseType: !115, size: 32, offset: 768)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1569, file: !1245, line: 788, baseType: !115, size: 32, offset: 800)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1569, file: !1245, line: 790, baseType: !115, size: 32, offset: 832)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1569, file: !1245, line: 792, baseType: !115, size: 32, offset: 864)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1569, file: !1245, line: 793, baseType: !115, size: 32, offset: 896)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1569, file: !1245, line: 794, baseType: !115, size: 32, offset: 928)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1569, file: !1245, line: 795, baseType: !13, size: 32, offset: 960)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1569, file: !1245, line: 797, baseType: !1613, size: 2048, offset: 1024)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1245, line: 551, size: 2048, elements: !1614)
!1614 = !{!1615, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1635, !1638, !1639, !1640}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1613, file: !1245, line: 553, baseType: !1616, size: 128)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1245, line: 411, size: 128, elements: !1617)
!1617 = !{!1618, !1619}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1616, file: !1245, line: 412, baseType: !510, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1616, file: !1245, line: 413, baseType: !609, size: 32, offset: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1613, file: !1245, line: 554, baseType: !913, size: 192, align: 64, offset: 128)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1613, file: !1245, line: 555, baseType: !613, size: 64, offset: 320)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1613, file: !1245, line: 556, baseType: !613, size: 64, offset: 384)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1613, file: !1245, line: 558, baseType: !381, size: 128, offset: 448)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1613, file: !1245, line: 559, baseType: !13, size: 32, offset: 576)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1613, file: !1245, line: 561, baseType: !613, size: 64, offset: 640)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1613, file: !1245, line: 562, baseType: !613, size: 64, offset: 704)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1613, file: !1245, line: 563, baseType: !613, size: 64, offset: 768)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1613, file: !1245, line: 564, baseType: !613, size: 64, offset: 832)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1613, file: !1245, line: 565, baseType: !811, size: 64, offset: 896)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1613, file: !1245, line: 566, baseType: !613, size: 64, offset: 960)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1613, file: !1245, line: 568, baseType: !613, size: 64, offset: 1024)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1613, file: !1245, line: 571, baseType: !115, size: 32, offset: 1088)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1613, file: !1245, line: 572, baseType: !1634, size: 64, offset: 1152)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1613, file: !1245, line: 574, baseType: !1636, size: 64, offset: 1216)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1245, line: 49, flags: DIFlagFwdDecl)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1613, file: !1245, line: 576, baseType: !1636, size: 64, offset: 1280)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1613, file: !1245, line: 578, baseType: !510, size: 64, offset: 1344)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1613, file: !1245, line: 588, baseType: !1641, size: 512, align: 512, offset: 1536)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1245, line: 497, size: 512, align: 512, elements: !1642)
!1642 = !{!1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1641, file: !1245, line: 498, baseType: !613, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1641, file: !1245, line: 499, baseType: !613, size: 64, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1641, file: !1245, line: 500, baseType: !613, size: 64, offset: 128)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1641, file: !1245, line: 501, baseType: !609, size: 32, offset: 192)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1641, file: !1245, line: 502, baseType: !609, size: 32, offset: 224)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1641, file: !1245, line: 503, baseType: !510, size: 64, offset: 256)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1641, file: !1245, line: 504, baseType: !510, size: 64, offset: 320)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1641, file: !1245, line: 505, baseType: !510, size: 64, offset: 384)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1641, file: !1245, line: 506, baseType: !1652, size: 64, align: 64, offset: 448)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1245, line: 445, size: 64, align: 64, elements: !1653)
!1653 = !{!1654, !1655}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1652, file: !1245, line: 446, baseType: !13, size: 32)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1652, file: !1245, line: 447, baseType: !13, size: 32, offset: 32)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1569, file: !1245, line: 798, baseType: !1657, size: 384, offset: 3072)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1245, line: 592, size: 384, elements: !1658)
!1658 = !{!1659, !1660, !1661, !1662, !1663, !1664, !1665}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1657, file: !1245, line: 593, baseType: !381, size: 128)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1657, file: !1245, line: 594, baseType: !510, size: 64, offset: 128)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1657, file: !1245, line: 595, baseType: !510, size: 64, offset: 192)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1657, file: !1245, line: 596, baseType: !13, size: 32, offset: 256)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1657, file: !1245, line: 597, baseType: !430, size: 16, offset: 288)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1657, file: !1245, line: 598, baseType: !430, size: 16, offset: 304)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1657, file: !1245, line: 600, baseType: !1666, size: 64, offset: 320)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1569, file: !1245, line: 799, baseType: !1668, size: 1792, offset: 3456)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1245, line: 610, size: 1792, elements: !1669)
!1669 = !{!1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1759, !1760}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1668, file: !1245, line: 611, baseType: !913, size: 192, align: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1668, file: !1245, line: 618, baseType: !613, size: 64, offset: 192)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1668, file: !1245, line: 619, baseType: !613, size: 64, offset: 256)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1668, file: !1245, line: 620, baseType: !613, size: 64, offset: 320)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1668, file: !1245, line: 621, baseType: !613, size: 64, offset: 384)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1668, file: !1245, line: 622, baseType: !613, size: 64, offset: 448)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1668, file: !1245, line: 629, baseType: !811, size: 64, offset: 512)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1668, file: !1245, line: 630, baseType: !613, size: 64, offset: 576)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1668, file: !1245, line: 631, baseType: !13, size: 32, offset: 640)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1668, file: !1245, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1668, file: !1245, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1668, file: !1245, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1668, file: !1245, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1668, file: !1245, line: 662, baseType: !1684, size: 512, offset: 704)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !31, line: 118, size: 512, elements: !1685)
!1685 = !{!1686, !1694, !1695, !1700, !1755, !1756, !1757, !1758}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1684, file: !31, line: 119, baseType: !1687, size: 256)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1688, line: 9, size: 256, elements: !1689)
!1688 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1689 = !{!1690, !1691}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1687, file: !1688, line: 10, baseType: !913, size: 192, align: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1687, file: !1688, line: 11, baseType: !1692, size: 64, offset: 192)
!1692 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1693, line: 29, baseType: !811)
!1693 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1684, file: !31, line: 120, baseType: !1692, size: 64, offset: 256)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1684, file: !31, line: 121, baseType: !1696, size: 64, offset: 320)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!30, !1699}
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1684, file: !31, line: 122, baseType: !1701, size: 64, offset: 384)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !31, line: 159, size: 512, align: 512, elements: !1703)
!1703 = !{!1704, !1729, !1730, !1733, !1738, !1739, !1750, !1754}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1702, file: !31, line: 160, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !31, line: 215, size: 4608, align: 512, elements: !1707)
!1707 = !{!1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1706, file: !31, line: 216, baseType: !759, size: 32)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1706, file: !31, line: 217, baseType: !13, size: 32, offset: 32)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1706, file: !31, line: 218, baseType: !13, size: 32, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1706, file: !31, line: 219, baseType: !13, size: 32, offset: 96)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1706, file: !31, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1706, file: !31, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1706, file: !31, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1706, file: !31, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1706, file: !31, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1706, file: !31, line: 226, baseType: !13, size: 32, offset: 160)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1706, file: !31, line: 227, baseType: !430, size: 16, offset: 192)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1706, file: !31, line: 228, baseType: !430, size: 16, offset: 208)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1706, file: !31, line: 229, baseType: !13, size: 32, offset: 224)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1706, file: !31, line: 235, baseType: !1692, size: 64, offset: 256)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1706, file: !31, line: 236, baseType: !1699, size: 64, offset: 320)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1706, file: !31, line: 237, baseType: !1692, size: 64, offset: 384)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1706, file: !31, line: 238, baseType: !1699, size: 64, offset: 448)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1706, file: !31, line: 239, baseType: !1726, size: 4096, align: 512, offset: 512)
!1726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1702, size: 4096, align: 512, elements: !1727)
!1727 = !{!1728}
!1728 = !DISubrange(count: 8)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1702, file: !31, line: 161, baseType: !13, size: 32, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1702, file: !31, line: 162, baseType: !1731, size: 32, offset: 96)
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !347, line: 32, baseType: !1732)
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !494, line: 96, baseType: !115)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1702, file: !31, line: 163, baseType: !1734, size: 32, offset: 128)
!1734 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !582, line: 274, baseType: !1735)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !582, line: 274, size: 32, elements: !1736)
!1736 = !{!1737}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1735, file: !582, line: 274, baseType: !586, size: 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1702, file: !31, line: 164, baseType: !1699, size: 64, offset: 192)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1702, file: !31, line: 165, baseType: !1740, size: 128, offset: 256)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1688, line: 14, size: 128, elements: !1741)
!1741 = !{!1742}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1740, file: !1688, line: 15, baseType: !1743, size: 128)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !914, line: 26, size: 128, elements: !1744)
!1744 = !{!1745, !1749}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1743, file: !914, line: 27, baseType: !1746, size: 64)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !914, line: 12, size: 64, elements: !1747)
!1747 = !{!1748}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1746, file: !914, line: 13, baseType: !918, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1743, file: !914, line: 28, baseType: !918, size: 64, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1702, file: !31, line: 166, baseType: !1751, size: 64, offset: 384)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!1692}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1702, file: !31, line: 167, baseType: !1692, size: 64, offset: 448)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1684, file: !31, line: 123, baseType: !418, size: 8, offset: 448)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1684, file: !31, line: 124, baseType: !418, size: 8, offset: 456)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1684, file: !31, line: 125, baseType: !418, size: 8, offset: 464)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1684, file: !31, line: 126, baseType: !418, size: 8, offset: 472)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1668, file: !1245, line: 671, baseType: !1684, size: 512, offset: 1216)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1668, file: !1245, line: 679, baseType: !1761, size: 64, offset: 1728)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1569, file: !1245, line: 800, baseType: !1763, size: 64, offset: 5248)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1765)
!1765 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1245, line: 800, flags: DIFlagFwdDecl)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1569, file: !1245, line: 809, baseType: !1767, size: 64, offset: 5312)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1245, line: 70, flags: DIFlagFwdDecl)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1569, file: !1245, line: 825, baseType: !1770, size: 2048, align: 512, offset: 5632)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1245, line: 509, size: 2048, align: 512, elements: !1771)
!1771 = !{!1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1770, file: !1245, line: 511, baseType: !613, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1770, file: !1245, line: 512, baseType: !613, size: 64, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1770, file: !1245, line: 513, baseType: !613, size: 64, offset: 128)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1770, file: !1245, line: 514, baseType: !613, size: 64, offset: 192)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1770, file: !1245, line: 515, baseType: !613, size: 64, offset: 256)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1770, file: !1245, line: 516, baseType: !613, size: 64, offset: 320)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1770, file: !1245, line: 518, baseType: !613, size: 64, offset: 384)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1770, file: !1245, line: 519, baseType: !613, size: 64, offset: 448)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1770, file: !1245, line: 520, baseType: !811, size: 64, offset: 512)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1770, file: !1245, line: 522, baseType: !613, size: 64, offset: 576)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1770, file: !1245, line: 523, baseType: !613, size: 64, offset: 640)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1770, file: !1245, line: 524, baseType: !811, size: 64, offset: 704)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1770, file: !1245, line: 526, baseType: !811, size: 64, offset: 768)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1770, file: !1245, line: 527, baseType: !613, size: 64, offset: 832)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1770, file: !1245, line: 529, baseType: !613, size: 64, offset: 896)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1770, file: !1245, line: 530, baseType: !613, size: 64, offset: 960)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1770, file: !1245, line: 531, baseType: !613, size: 64, offset: 1024)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1770, file: !1245, line: 532, baseType: !613, size: 64, offset: 1088)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1770, file: !1245, line: 533, baseType: !613, size: 64, offset: 1152)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1770, file: !1245, line: 535, baseType: !613, size: 64, offset: 1216)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1770, file: !1245, line: 536, baseType: !613, size: 64, offset: 1280)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1770, file: !1245, line: 537, baseType: !613, size: 64, offset: 1344)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1770, file: !1245, line: 538, baseType: !613, size: 64, offset: 1408)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1770, file: !1245, line: 539, baseType: !613, size: 64, offset: 1472)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1770, file: !1245, line: 540, baseType: !613, size: 64, offset: 1536)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1770, file: !1245, line: 541, baseType: !613, size: 64, offset: 1600)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1770, file: !1245, line: 542, baseType: !613, size: 64, offset: 1664)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1770, file: !1245, line: 543, baseType: !613, size: 64, offset: 1728)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1569, file: !1245, line: 833, baseType: !13, size: 32, offset: 7680)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1569, file: !1245, line: 836, baseType: !13, size: 32, offset: 7712)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1569, file: !1245, line: 837, baseType: !115, size: 32, offset: 7744)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1569, file: !1245, line: 838, baseType: !1804, size: 64, offset: 7808)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1806)
!1806 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1807, line: 19, baseType: !1808)
!1807 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1807, line: 19, size: 64, elements: !1809)
!1809 = !{!1810}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1808, file: !1807, line: 19, baseType: !1811, size: 64)
!1811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !510, size: 64, elements: !1812)
!1812 = !{!1813}
!1813 = !DISubrange(count: 1)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1569, file: !1245, line: 839, baseType: !1815, size: 64, offset: 7872)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1569, file: !1245, line: 840, baseType: !1806, size: 64, offset: 7936)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1569, file: !1245, line: 841, baseType: !345, size: 64, offset: 8000)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1569, file: !1245, line: 843, baseType: !430, size: 16, offset: 8064)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1569, file: !1245, line: 845, baseType: !430, size: 16, offset: 8080)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1569, file: !1245, line: 848, baseType: !115, size: 32, offset: 8096)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1569, file: !1245, line: 849, baseType: !1822, size: 32, offset: 8128)
!1822 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1245, line: 718, size: 32, elements: !1823)
!1823 = !{!1824, !1831}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1822, file: !1245, line: 724, baseType: !1825, size: 32)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1822, file: !1245, line: 719, size: 32, elements: !1826)
!1826 = !{!1827, !1828, !1829, !1830}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1825, file: !1245, line: 720, baseType: !418, size: 8)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1825, file: !1245, line: 721, baseType: !418, size: 8, offset: 8)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1825, file: !1245, line: 722, baseType: !418, size: 8, offset: 16)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1825, file: !1245, line: 723, baseType: !418, size: 8, offset: 24)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1822, file: !1245, line: 725, baseType: !609, size: 32)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1569, file: !1245, line: 850, baseType: !381, size: 128, offset: 8192)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1569, file: !1245, line: 851, baseType: !1834, size: 64, offset: 8320)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1245, line: 60, flags: DIFlagFwdDecl)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1569, file: !1245, line: 855, baseType: !510, size: 64, offset: 8384)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1569, file: !1245, line: 856, baseType: !418, size: 8, offset: 8448)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1569, file: !1245, line: 857, baseType: !418, size: 8, offset: 8456)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1569, file: !1245, line: 858, baseType: !115, size: 32, offset: 8480)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1569, file: !1245, line: 859, baseType: !381, size: 128, offset: 8512)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1569, file: !1245, line: 860, baseType: !115, size: 32, offset: 8640)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1569, file: !1245, line: 861, baseType: !381, size: 128, offset: 8704)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1569, file: !1245, line: 873, baseType: !1844, size: 256, offset: 8832)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1245, line: 376, size: 256, elements: !1845)
!1845 = !{!1846, !1847, !1848, !1849}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1844, file: !1245, line: 381, baseType: !510, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1844, file: !1245, line: 384, baseType: !615, size: 64, offset: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1844, file: !1245, line: 389, baseType: !615, size: 64, offset: 128)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1844, file: !1245, line: 392, baseType: !615, size: 64, offset: 192)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1569, file: !1245, line: 875, baseType: !381, size: 128, offset: 9088)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1569, file: !1245, line: 877, baseType: !1852, size: 320, offset: 9216)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1853, line: 86, size: 320, elements: !1854)
!1853 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1854 = !{!1855, !1856, !1857}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1852, file: !1853, line: 87, baseType: !115, size: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1852, file: !1853, line: 88, baseType: !381, size: 128, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1852, file: !1853, line: 89, baseType: !381, size: 128, offset: 192)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1569, file: !1245, line: 878, baseType: !913, size: 192, align: 64, offset: 9536)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1569, file: !1245, line: 881, baseType: !1860, size: 64, offset: 9728)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !44, line: 733, size: 10240, elements: !1862)
!1862 = !{!1863, !2778}
!1863 = !DIDerivedType(tag: DW_TAG_member, scope: !1861, file: !44, line: 734, baseType: !1864, size: 10240)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1861, file: !44, line: 734, size: 10240, elements: !1865)
!1865 = !{!1866, !1870, !1883, !2655, !2656, !2657, !2658, !2659, !2660, !2667, !2668, !2669, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2708, !2710, !2713, !2758, !2759, !2760, !2763, !2764, !2765, !2768, !2769, !2770, !2776, !2777}
!1866 = !DIDerivedType(tag: DW_TAG_member, scope: !1864, file: !44, line: 739, baseType: !1867, size: 512, align: 512)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1864, file: !44, line: 739, size: 512, align: 512, elements: !1868)
!1868 = !{!1869}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1867, file: !44, line: 747, baseType: !365, size: 32)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1864, file: !44, line: 750, baseType: !1871, size: 128, offset: 512)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1872, line: 218, size: 128, elements: !1873)
!1872 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1873 = !{!1874, !1881, !1882}
!1874 = !DIDerivedType(tag: DW_TAG_member, scope: !1871, file: !1872, line: 219, baseType: !1875, size: 32)
!1875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1871, file: !1872, line: 219, size: 32, elements: !1876)
!1876 = !{!1877, !1878}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1875, file: !1872, line: 220, baseType: !394, size: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1875, file: !1872, line: 221, baseType: !1879)
!1879 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1872, line: 197, baseType: !1880)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1872, line: 197, elements: !1090)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1871, file: !1872, line: 223, baseType: !13, size: 32, offset: 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1871, file: !1872, line: 224, baseType: !345, size: 64, offset: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1864, file: !44, line: 752, baseType: !1884, size: 64, offset: 640)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!510, !1887, !510, !510, !510, !510}
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !20, line: 994, size: 1856, align: 64, elements: !1889)
!1889 = !{!1890, !1896, !1897, !1899, !1900, !1901, !1902, !1903, !2000, !2185, !2194, !2195, !2196, !2645, !2646, !2647, !2648, !2650, !2651, !2654}
!1890 = !DIDerivedType(tag: DW_TAG_member, scope: !1888, file: !20, line: 995, baseType: !1891, size: 128)
!1891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1888, file: !20, line: 995, size: 128, elements: !1892)
!1892 = !{!1893, !1894, !1895}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1891, file: !20, line: 996, baseType: !1590, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1891, file: !20, line: 997, baseType: !1021, size: 128, align: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1891, file: !20, line: 998, baseType: !13, size: 32)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1888, file: !20, line: 1005, baseType: !394, size: 32, offset: 128)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1888, file: !20, line: 1006, baseType: !1898, size: 32, offset: 160)
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !347, line: 156, baseType: !13)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1888, file: !20, line: 1007, baseType: !805, size: 64, offset: 192)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1888, file: !20, line: 1008, baseType: !801, size: 256, offset: 256)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1888, file: !20, line: 1009, baseType: !701, size: 64, offset: 512)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1888, file: !20, line: 1010, baseType: !13, size: 32, offset: 576)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1888, file: !20, line: 1011, baseType: !1904, size: 256, offset: 640)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !20, line: 948, size: 256, elements: !1905)
!1905 = !{!1906, !1927, !1996, !1997, !1998, !1999}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1904, file: !20, line: 949, baseType: !1907, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1908, line: 34, baseType: !1909)
!1908 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1908, line: 25, size: 64, elements: !1910)
!1910 = !{!1911}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1909, file: !1908, line: 26, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1913, line: 27, baseType: !1914)
!1913 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1913, line: 13, size: 64, elements: !1915)
!1915 = !{!1916, !1926}
!1916 = !DIDerivedType(tag: DW_TAG_member, scope: !1914, file: !1913, line: 14, baseType: !1917, size: 32)
!1917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1914, file: !1913, line: 14, size: 32, elements: !1918)
!1918 = !{!1919, !1920}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1917, file: !1913, line: 15, baseType: !365, size: 32)
!1920 = !DIDerivedType(tag: DW_TAG_member, scope: !1917, file: !1913, line: 16, baseType: !1921, size: 32)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1917, file: !1913, line: 16, size: 32, elements: !1922)
!1922 = !{!1923, !1924}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1921, file: !1913, line: 18, baseType: !418, size: 8)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1921, file: !1913, line: 19, baseType: !1925, size: 24, offset: 8)
!1925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 24, elements: !461)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1914, file: !1913, line: 26, baseType: !406, size: 32, offset: 32)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1904, file: !20, line: 950, baseType: !1928, size: 64, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !36, line: 59, size: 768, elements: !1930)
!1930 = !{!1931, !1932, !1933, !1934, !1936, !1937, !1938, !1939}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1929, file: !36, line: 61, baseType: !361, size: 32)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1929, file: !36, line: 62, baseType: !13, size: 32, offset: 32)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1929, file: !36, line: 63, baseType: !394, size: 32, offset: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1929, file: !36, line: 65, baseType: !1935, size: 256, offset: 128)
!1935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1171, size: 256, elements: !1031)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1929, file: !36, line: 66, baseType: !1171, size: 64, offset: 384)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1929, file: !36, line: 68, baseType: !1555, size: 192, offset: 448)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1929, file: !36, line: 69, baseType: !1021, size: 128, align: 64, offset: 640)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1929, file: !36, line: 70, baseType: !1940, offset: 768)
!1940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1941, elements: !1994)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !36, line: 54, size: 128, elements: !1942)
!1942 = !{!1943, !1944}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1941, file: !36, line: 55, baseType: !115, size: 32)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1941, file: !36, line: 56, baseType: !1945, size: 64, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1947, line: 26, size: 1152, elements: !1948)
!1947 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!1948 = !{!1949, !1962, !1963, !1964, !1965, !1969, !1970, !1971, !1974, !1977, !1981, !1982, !1993}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1946, file: !1947, line: 27, baseType: !1950, size: 192)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1951, line: 19, size: 192, elements: !1952)
!1951 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!1952 = !{!1953, !1960, !1961}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1950, file: !1951, line: 20, baseType: !1954, size: 128)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1955, line: 296, size: 128, elements: !1956)
!1955 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1956 = !{!1957, !1958, !1959}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1954, file: !1955, line: 297, baseType: !394, size: 32)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1954, file: !1955, line: 299, baseType: !346, size: 32, offset: 32)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1954, file: !1955, line: 300, baseType: !345, size: 64, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1950, file: !1951, line: 21, baseType: !13, size: 32, offset: 128)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1950, file: !1951, line: 22, baseType: !13, size: 32, offset: 160)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1946, file: !1947, line: 28, baseType: !1021, size: 128, align: 64, offset: 192)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1946, file: !1947, line: 29, baseType: !13, size: 32, offset: 320)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1946, file: !1947, line: 30, baseType: !1568, size: 64, offset: 384)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1946, file: !1947, line: 31, baseType: !1966, size: 64, offset: 448)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1968, line: 11, flags: DIFlagFwdDecl)
!1968 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1946, file: !1947, line: 32, baseType: !13, size: 32, offset: 512)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1946, file: !1947, line: 33, baseType: !1945, size: 64, offset: 576)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !1946, file: !1947, line: 35, baseType: !1972, size: 64, offset: 640)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !1947, line: 17, flags: DIFlagFwdDecl)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1946, file: !1947, line: 37, baseType: !1975, size: 64, offset: 704)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !44, line: 901, flags: DIFlagFwdDecl)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1946, file: !1947, line: 38, baseType: !1978, size: 64, offset: 768)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1980, line: 16, flags: DIFlagFwdDecl)
!1980 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1946, file: !1947, line: 39, baseType: !115, size: 32, offset: 832)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1946, file: !1947, line: 40, baseType: !1983, size: 192, offset: 896)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1984, line: 9, size: 192, elements: !1985)
!1984 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1985 = !{!1986, !1987, !1991, !1992}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1983, file: !1984, line: 10, baseType: !805, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1983, file: !1984, line: 11, baseType: !1988, size: 64, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1990)
!1990 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1984, line: 7, flags: DIFlagFwdDecl)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1983, file: !1984, line: 12, baseType: !13, size: 32, offset: 128)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1983, file: !1984, line: 13, baseType: !361, size: 32, offset: 160)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !1946, file: !1947, line: 42, baseType: !115, size: 32, offset: 1088)
!1994 = !{!1995}
!1995 = !DISubrange(count: -1)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1904, file: !20, line: 951, baseType: !35, size: 32, offset: 128)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1904, file: !20, line: 952, baseType: !546, size: 32, offset: 160)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1904, file: !20, line: 952, baseType: !546, size: 32, offset: 192)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1904, file: !20, line: 953, baseType: !115, size: 32, offset: 224)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1888, file: !20, line: 1012, baseType: !2001, size: 64, offset: 896)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2003)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2004, line: 110, size: 1472, elements: !2005)
!2004 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!2005 = !{!2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2022, !2023, !2024, !2025, !2026, !2027, !2135, !2136, !2137, !2138, !2139, !2170, !2171, !2172, !2180}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2003, file: !2004, line: 111, baseType: !805, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2003, file: !2004, line: 112, baseType: !546, size: 32, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2003, file: !2004, line: 113, baseType: !555, size: 32, offset: 96)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2003, file: !2004, line: 114, baseType: !546, size: 32, offset: 128)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2003, file: !2004, line: 115, baseType: !555, size: 32, offset: 160)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2003, file: !2004, line: 116, baseType: !546, size: 32, offset: 192)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2003, file: !2004, line: 117, baseType: !555, size: 32, offset: 224)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2003, file: !2004, line: 118, baseType: !546, size: 32, offset: 256)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2003, file: !2004, line: 119, baseType: !555, size: 32, offset: 288)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2003, file: !2004, line: 120, baseType: !13, size: 32, offset: 320)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2003, file: !2004, line: 121, baseType: !2017, size: 64, offset: 384)
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2018, line: 24, baseType: !2019)
!2018 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2018, line: 24, size: 64, elements: !2020)
!2020 = !{!2021}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2019, file: !2018, line: 24, baseType: !613, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2003, file: !2004, line: 122, baseType: !2017, size: 64, offset: 448)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2003, file: !2004, line: 123, baseType: !2017, size: 64, offset: 512)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2003, file: !2004, line: 124, baseType: !2017, size: 64, offset: 576)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2003, file: !2004, line: 125, baseType: !2017, size: 64, offset: 640)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2003, file: !2004, line: 127, baseType: !422, size: 8, offset: 704)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2003, file: !2004, line: 129, baseType: !2028, size: 64, offset: 768)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2030, line: 195, size: 1728, elements: !2031)
!2030 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!2031 = !{!2032, !2033, !2036, !2041, !2042, !2045, !2046, !2051, !2052, !2053, !2054, !2057, !2058, !2059, !2060, !2061, !2099, !2120}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2029, file: !2030, line: 196, baseType: !361, size: 32)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2029, file: !2030, line: 197, baseType: !2034, size: 32, offset: 32)
!2034 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2030, line: 28, baseType: !2035)
!2035 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !347, line: 104, baseType: !797)
!2036 = !DIDerivedType(tag: DW_TAG_member, scope: !2029, file: !2030, line: 198, baseType: !2037, size: 192, offset: 64)
!2037 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2029, file: !2030, line: 198, size: 192, elements: !2038)
!2038 = !{!2039, !2040}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2037, file: !2030, line: 199, baseType: !381, size: 128)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2037, file: !2030, line: 200, baseType: !913, size: 192, align: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2029, file: !2030, line: 205, baseType: !1462, size: 320, offset: 256)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2029, file: !2030, line: 206, baseType: !2043, size: 64, offset: 576)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2030, line: 206, flags: DIFlagFwdDecl)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2029, file: !2030, line: 207, baseType: !345, size: 64, offset: 640)
!2046 = !DIDerivedType(tag: DW_TAG_member, scope: !2029, file: !2030, line: 208, baseType: !2047, size: 64, offset: 704)
!2047 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2029, file: !2030, line: 208, size: 64, elements: !2048)
!2048 = !{!2049, !2050}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2047, file: !2030, line: 209, baseType: !1303, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2047, file: !2030, line: 210, baseType: !1303, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2029, file: !2030, line: 212, baseType: !1303, size: 64, offset: 768)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2029, file: !2030, line: 213, baseType: !546, size: 32, offset: 832)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2029, file: !2030, line: 214, baseType: !555, size: 32, offset: 864)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2029, file: !2030, line: 215, baseType: !2055, size: 32, offset: 896)
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2030, line: 31, baseType: !2056)
!2056 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !347, line: 110, baseType: !609)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2029, file: !2030, line: 216, baseType: !430, size: 16, offset: 928)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2029, file: !2030, line: 217, baseType: !430, size: 16, offset: 944)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2029, file: !2030, line: 221, baseType: !939, size: 16, offset: 960)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2029, file: !2030, line: 228, baseType: !510, size: 64, offset: 1024)
!2061 = !DIDerivedType(tag: DW_TAG_member, scope: !2029, file: !2030, line: 245, baseType: !2062, size: 320, offset: 1088)
!2062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2029, file: !2030, line: 245, size: 320, elements: !2063)
!2063 = !{!2064, !2091}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2062, file: !2030, line: 246, baseType: !2065, size: 320)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2030, line: 114, size: 320, elements: !2066)
!2066 = !{!2067, !2068, !2080, !2083, !2090}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2065, file: !2030, line: 116, baseType: !510, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, scope: !2065, file: !2030, line: 117, baseType: !2069, size: 64, offset: 64)
!2069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2065, file: !2030, line: 117, size: 64, elements: !2070)
!2070 = !{!2071, !2079}
!2071 = !DIDerivedType(tag: DW_TAG_member, scope: !2069, file: !2030, line: 118, baseType: !2072, size: 64)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2069, file: !2030, line: 118, size: 64, elements: !2073)
!2073 = !{!2074, !2075}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2072, file: !2030, line: 120, baseType: !428, size: 16)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2072, file: !2030, line: 121, baseType: !2076, size: 48, offset: 16)
!2076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !2077)
!2077 = !{!2078}
!2078 = !DISubrange(count: 6)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2069, file: !2030, line: 127, baseType: !510, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2065, file: !2030, line: 129, baseType: !2081, size: 64, offset: 128)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2030, line: 102, flags: DIFlagFwdDecl)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2065, file: !2030, line: 130, baseType: !2084, size: 64, offset: 192)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2030, line: 108, size: 192, elements: !2086)
!2086 = !{!2087, !2088, !2089}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2085, file: !2030, line: 109, baseType: !1021, size: 128, align: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2085, file: !2030, line: 110, baseType: !361, size: 32, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2085, file: !2030, line: 111, baseType: !881, size: 8, offset: 160)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2065, file: !2030, line: 131, baseType: !378, size: 64, offset: 256)
!2091 = !DIDerivedType(tag: DW_TAG_member, scope: !2062, file: !2030, line: 247, baseType: !2092, size: 320)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2062, file: !2030, line: 247, size: 320, elements: !2093)
!2093 = !{!2094, !2095, !2096, !2097, !2098}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2092, file: !2030, line: 248, baseType: !510, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2092, file: !2030, line: 249, baseType: !510, size: 64, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2092, file: !2030, line: 250, baseType: !2081, size: 64, offset: 128)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2092, file: !2030, line: 251, baseType: !2084, size: 64, offset: 192)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2092, file: !2030, line: 252, baseType: !460, size: 64, offset: 256)
!2099 = !DIDerivedType(tag: DW_TAG_member, scope: !2029, file: !2030, line: 260, baseType: !2100, size: 256, offset: 1408)
!2100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2029, file: !2030, line: 260, size: 256, elements: !2101)
!2101 = !{!2102, !2108}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2100, file: !2030, line: 261, baseType: !2103, size: 256)
!2103 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2030, line: 134, size: 256, elements: !2104)
!2104 = !{!2105, !2106}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2103, file: !2030, line: 135, baseType: !345, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2103, file: !2030, line: 136, baseType: !2107, size: 256)
!2107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 256, elements: !1031)
!2108 = !DIDerivedType(tag: DW_TAG_member, scope: !2100, file: !2030, line: 262, baseType: !2109, size: 256)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2100, file: !2030, line: 262, size: 256, elements: !2110)
!2110 = !{!2111, !2112}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2109, file: !2030, line: 264, baseType: !381, size: 128)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2109, file: !2030, line: 265, baseType: !2113, size: 128, offset: 128)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2114, line: 22, size: 128, elements: !2115)
!2114 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!2115 = !{!2116, !2119}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2113, file: !2114, line: 23, baseType: !2117, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2114, line: 23, flags: DIFlagFwdDecl)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2113, file: !2114, line: 24, baseType: !510, size: 64, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2029, file: !2030, line: 280, baseType: !2121, size: 64, offset: 1664)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2030, line: 176, size: 192, elements: !2123)
!2123 = !{!2124, !2133, !2134}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2122, file: !2030, line: 177, baseType: !2125, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2030, line: 171, baseType: !2126)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!115, !2028, !2129, !2131, !2028}
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2082)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2103)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2122, file: !2030, line: 178, baseType: !2028, size: 64, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2122, file: !2030, line: 179, baseType: !2081, size: 64, offset: 128)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2003, file: !2004, line: 130, baseType: !2028, size: 64, offset: 832)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2003, file: !2004, line: 131, baseType: !2028, size: 64, offset: 896)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2003, file: !2004, line: 132, baseType: !2028, size: 64, offset: 960)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2003, file: !2004, line: 135, baseType: !345, size: 64, offset: 1024)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2003, file: !2004, line: 137, baseType: !2140, size: 64, offset: 1088)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2142, line: 14, size: 1088, elements: !2143)
!2142 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2143 = !{!2144, !2145, !2154, !2155, !2156, !2157, !2158, !2159}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2141, file: !2142, line: 15, baseType: !361, size: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2141, file: !2142, line: 17, baseType: !2146, size: 320, offset: 64)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !2147, line: 22, size: 320, elements: !2148)
!2147 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!2148 = !{!2149, !2150, !2151, !2152}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2146, file: !2147, line: 23, baseType: !759, size: 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2146, file: !2147, line: 24, baseType: !811, size: 64, offset: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2146, file: !2147, line: 26, baseType: !381, size: 128, offset: 128)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2146, file: !2147, line: 28, baseType: !2153, size: 64, offset: 256)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2141, file: !2142, line: 19, baseType: !510, size: 64, offset: 384)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2141, file: !2142, line: 20, baseType: !805, size: 64, offset: 448)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2141, file: !2142, line: 23, baseType: !1047, size: 128, offset: 512)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2141, file: !2142, line: 24, baseType: !546, size: 32, offset: 640)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2141, file: !2142, line: 29, baseType: !805, size: 64, offset: 704)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2141, file: !2142, line: 36, baseType: !2160, size: 320, offset: 768)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2161, line: 15, size: 320, elements: !2162)
!2161 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2162 = !{!2163, !2164, !2165, !2166, !2167, !2168, !2169}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2160, file: !2161, line: 16, baseType: !759, size: 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2160, file: !2161, line: 18, baseType: !115, size: 32, offset: 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2160, file: !2161, line: 19, baseType: !115, size: 32, offset: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2160, file: !2161, line: 20, baseType: !115, size: 32, offset: 96)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2160, file: !2161, line: 21, baseType: !115, size: 32, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2160, file: !2161, line: 22, baseType: !510, size: 64, offset: 192)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2160, file: !2161, line: 23, baseType: !510, size: 64, offset: 256)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2003, file: !2004, line: 138, baseType: !1975, size: 64, offset: 1152)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2003, file: !2004, line: 139, baseType: !1978, size: 64, offset: 1216)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2003, file: !2004, line: 140, baseType: !2173, size: 64, offset: 1280)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2004, line: 25, size: 64, elements: !2175)
!2175 = !{!2176, !2177, !2178}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2174, file: !2004, line: 26, baseType: !365, size: 32)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2174, file: !2004, line: 27, baseType: !115, size: 32, offset: 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2174, file: !2004, line: 28, baseType: !2179, offset: 64)
!2179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !555, elements: !1994)
!2180 = !DIDerivedType(tag: DW_TAG_member, scope: !2003, file: !2004, line: 142, baseType: !2181, size: 128, offset: 1344)
!2181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2003, file: !2004, line: 142, size: 128, elements: !2182)
!2182 = !{!2183, !2184}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2181, file: !2004, line: 143, baseType: !115, size: 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2181, file: !2004, line: 144, baseType: !1021, size: 128, align: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1888, file: !20, line: 1013, baseType: !2186, size: 256, offset: 960)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !20, line: 970, size: 256, elements: !2187)
!2187 = !{!2188, !2189, !2190, !2191, !2192, !2193}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2186, file: !20, line: 971, baseType: !510, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2186, file: !20, line: 972, baseType: !13, size: 32, offset: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2186, file: !20, line: 973, baseType: !13, size: 32, offset: 96)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2186, file: !20, line: 974, baseType: !13, size: 32, offset: 128)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2186, file: !20, line: 975, baseType: !13, size: 32, offset: 160)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2186, file: !20, line: 976, baseType: !701, size: 64, offset: 192)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1888, file: !20, line: 1014, baseType: !1374, size: 128, offset: 1216)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1888, file: !20, line: 1015, baseType: !540, size: 64, offset: 1344)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1888, file: !20, line: 1016, baseType: !2197, size: 64, offset: 1408)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2199)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !20, line: 1914, size: 2112, elements: !2200)
!2200 = !{!2201, !2202, !2206, !2211, !2215, !2243, !2244, !2250, !2263, !2271, !2275, !2276, !2567, !2568, !2572, !2577, !2578, !2582, !2586, !2592, !2593, !2597, !2598, !2604, !2608, !2612, !2618, !2622, !2626, !2630, !2634, !2635, !2641}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2199, file: !20, line: 1915, baseType: !730, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2199, file: !20, line: 1916, baseType: !2203, size: 64, offset: 64)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!701, !1887, !701, !115}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2199, file: !20, line: 1917, baseType: !2207, size: 64, offset: 128)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!492, !1887, !460, !507, !2210}
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2199, file: !20, line: 1918, baseType: !2212, size: 64, offset: 192)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!492, !1887, !378, !507, !2210}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2199, file: !20, line: 1919, baseType: !2216, size: 64, offset: 256)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!492, !2219, !2241}
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !20, line: 373, size: 384, elements: !2221)
!2221 = !{!2222, !2223, !2224, !2228, !2229, !2230, !2231}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2220, file: !20, line: 374, baseType: !1887, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2220, file: !20, line: 375, baseType: !701, size: 64, offset: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2220, file: !20, line: 376, baseType: !2225, size: 64, offset: 128)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{null, !2219, !496}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2220, file: !20, line: 377, baseType: !345, size: 64, offset: 192)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2220, file: !20, line: 378, baseType: !115, size: 32, offset: 256)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2220, file: !20, line: 379, baseType: !428, size: 16, offset: 288)
!2231 = !DIDerivedType(tag: DW_TAG_member, scope: !2220, file: !20, line: 380, baseType: !2232, size: 64, offset: 320)
!2232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2220, file: !20, line: 380, size: 64, elements: !2233)
!2233 = !{!2234, !2237}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2232, file: !20, line: 386, baseType: !2235, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !20, line: 386, flags: DIFlagFwdDecl)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2232, file: !20, line: 395, baseType: !2238, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!492, !345}
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !20, line: 69, flags: DIFlagFwdDecl)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2199, file: !20, line: 1920, baseType: !2216, size: 64, offset: 320)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2199, file: !20, line: 1921, baseType: !2245, size: 64, offset: 384)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!115, !2219, !2248, !13}
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !20, line: 53, flags: DIFlagFwdDecl)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2199, file: !20, line: 1923, baseType: !2251, size: 64, offset: 448)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!115, !1887, !2254}
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !20, line: 1858, size: 128, elements: !2256)
!2256 = !{!2257, !2262}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2255, file: !20, line: 1859, baseType: !2258, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !20, line: 1855, baseType: !2259)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!881, !2254, !378, !115, !701, !613, !13}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2255, file: !20, line: 1860, baseType: !701, size: 64, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2199, file: !20, line: 1924, baseType: !2264, size: 64, offset: 512)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!2267, !1887, !2269}
!2267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2268, line: 59, baseType: !13)
!2268 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !716, line: 31, flags: DIFlagFwdDecl)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2199, file: !20, line: 1925, baseType: !2272, size: 64, offset: 576)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!496, !1887, !13, !510}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2199, file: !20, line: 1926, baseType: !2272, size: 64, offset: 640)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2199, file: !20, line: 1927, baseType: !2277, size: 64, offset: 704)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!115, !1887, !2280}
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !44, line: 625, size: 1344, elements: !2282)
!2282 = !{!2283, !2292, !2293, !2301, !2308, !2309, !2314, !2315, !2320, !2321, !2324, !2560, !2561, !2562, !2563, !2564, !2565}
!2283 = !DIDerivedType(tag: DW_TAG_member, scope: !2281, file: !44, line: 628, baseType: !2284, size: 128)
!2284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2281, file: !44, line: 628, size: 128, elements: !2285)
!2285 = !{!2286, !2291}
!2286 = !DIDerivedType(tag: DW_TAG_member, scope: !2284, file: !44, line: 629, baseType: !2287, size: 128)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2284, file: !44, line: 629, size: 128, elements: !2288)
!2288 = !{!2289, !2290}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2287, file: !44, line: 631, baseType: !510, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2287, file: !44, line: 632, baseType: !510, size: 64, offset: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2284, file: !44, line: 635, baseType: !1021, size: 128, align: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2281, file: !44, line: 639, baseType: !1860, size: 64, offset: 128)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2281, file: !44, line: 640, baseType: !2294, size: 64, offset: 192)
!2294 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2295, line: 297, baseType: !2296)
!2295 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2295, line: 297, size: 64, elements: !2297)
!2297 = !{!2298}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2296, file: !2295, line: 297, baseType: !2299, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2300, line: 19, baseType: !510)
!2300 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2301 = !DIDerivedType(tag: DW_TAG_member, scope: !2281, file: !44, line: 646, baseType: !2302, size: 64, offset: 256)
!2302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2281, file: !44, line: 646, size: 64, elements: !2303)
!2303 = !{!2304, !2307}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2302, file: !44, line: 647, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2306)
!2306 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !44, line: 542, baseType: !510)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2302, file: !44, line: 648, baseType: !2306, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2281, file: !44, line: 666, baseType: !115, size: 32, offset: 320)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2281, file: !44, line: 667, baseType: !2310, size: 64, offset: 384)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !44, line: 579, size: 320, elements: !2312)
!2312 = !{!2313}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2311, file: !44, line: 580, baseType: !1462, size: 320)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2281, file: !44, line: 670, baseType: !881, size: 8, offset: 448)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2281, file: !44, line: 681, baseType: !2316, size: 256, offset: 512)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2281, file: !44, line: 678, size: 256, elements: !2317)
!2317 = !{!2318, !2319}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2316, file: !44, line: 679, baseType: !913, size: 192, align: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2316, file: !44, line: 680, baseType: !510, size: 64, offset: 192)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2281, file: !44, line: 689, baseType: !381, size: 128, offset: 768)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2281, file: !44, line: 691, baseType: !2322, size: 64, offset: 896)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !44, line: 691, flags: DIFlagFwdDecl)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2281, file: !44, line: 694, baseType: !2325, size: 64, offset: 960)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2327)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2328, line: 563, size: 1024, elements: !2329)
!2328 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2329 = !{!2330, !2334, !2335, !2339, !2343, !2347, !2524, !2528, !2532, !2536, !2537, !2538, !2542, !2546, !2552, !2556}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2327, file: !2328, line: 564, baseType: !2331, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{null, !2280}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2327, file: !2328, line: 569, baseType: !2331, size: 64, offset: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2327, file: !2328, line: 571, baseType: !2336, size: 64, offset: 128)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!115, !2280, !510}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2327, file: !2328, line: 572, baseType: !2340, size: 64, offset: 192)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!115, !2280}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2327, file: !2328, line: 578, baseType: !2344, size: 64, offset: 256)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!115, !2280, !510, !510, !510}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2327, file: !2328, line: 580, baseType: !2348, size: 64, offset: 320)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!2351, !2352}
!2351 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !44, line: 1184, baseType: !13)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2328, line: 512, size: 896, elements: !2354)
!2354 = !{!2355, !2363, !2364, !2371, !2378, !2388, !2517, !2518, !2520, !2522}
!2355 = !DIDerivedType(tag: DW_TAG_member, scope: !2353, file: !2328, line: 513, baseType: !2356, size: 320)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2353, file: !2328, line: 513, size: 320, elements: !2357)
!2357 = !{!2358, !2359, !2360, !2361, !2362}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2356, file: !2328, line: 514, baseType: !2280, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2356, file: !2328, line: 515, baseType: !346, size: 32, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2356, file: !2328, line: 516, baseType: !510, size: 64, offset: 128)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2356, file: !2328, line: 517, baseType: !510, size: 64, offset: 192)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2356, file: !2328, line: 518, baseType: !510, size: 64, offset: 256)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2353, file: !2328, line: 520, baseType: !43, size: 32, offset: 320)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2353, file: !2328, line: 522, baseType: !2365, size: 64, offset: 384)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2300, line: 22, baseType: !2367)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2300, line: 22, size: 64, elements: !2368)
!2368 = !{!2369}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2367, file: !2300, line: 22, baseType: !2370, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2300, line: 15, baseType: !510)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2353, file: !2328, line: 524, baseType: !2372, size: 64, offset: 448)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2295, line: 372, baseType: !2374)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2295, line: 372, size: 64, elements: !2375)
!2375 = !{!2376}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2374, file: !2295, line: 372, baseType: !2377, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2300, line: 16, baseType: !510)
!2378 = !DIDerivedType(tag: DW_TAG_member, scope: !2353, file: !2328, line: 527, baseType: !2379, size: 64, offset: 512)
!2379 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2353, file: !2328, line: 527, size: 64, elements: !2380)
!2380 = !{!2381, !2387}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2379, file: !2328, line: 528, baseType: !2382, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2300, line: 21, baseType: !2383)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2300, line: 21, size: 64, elements: !2384)
!2384 = !{!2385}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2383, file: !2300, line: 21, baseType: !2386, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2300, line: 14, baseType: !510)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2379, file: !2328, line: 529, baseType: !2366, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2353, file: !2328, line: 534, baseType: !2389, size: 64, offset: 576)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !44, line: 74, size: 512, align: 128, elements: !2391)
!2391 = !{!2392, !2393, !2511, !2516}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2390, file: !44, line: 75, baseType: !510, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, scope: !2390, file: !44, line: 83, baseType: !2394, size: 320, offset: 64)
!2394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2390, file: !44, line: 83, size: 320, elements: !2395)
!2395 = !{!2396, !2417, !2431, !2435, !2510}
!2396 = !DIDerivedType(tag: DW_TAG_member, scope: !2394, file: !44, line: 84, baseType: !2397, size: 320)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2394, file: !44, line: 84, size: 320, elements: !2398)
!2398 = !{!2399, !2410, !2411, !2416}
!2399 = !DIDerivedType(tag: DW_TAG_member, scope: !2397, file: !44, line: 90, baseType: !2400, size: 128)
!2400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2397, file: !44, line: 90, size: 128, elements: !2401)
!2401 = !{!2402, !2403, !2408, !2409}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2400, file: !44, line: 91, baseType: !381, size: 128)
!2403 = !DIDerivedType(tag: DW_TAG_member, scope: !2400, file: !44, line: 94, baseType: !2404, size: 128)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2400, file: !44, line: 94, size: 128, elements: !2405)
!2405 = !{!2406, !2407}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2404, file: !44, line: 96, baseType: !345, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2404, file: !44, line: 98, baseType: !13, size: 32, offset: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2400, file: !44, line: 102, baseType: !381, size: 128)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2400, file: !44, line: 103, baseType: !381, size: 128)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2397, file: !44, line: 106, baseType: !536, size: 64, offset: 128)
!2411 = !DIDerivedType(tag: DW_TAG_member, scope: !2397, file: !44, line: 107, baseType: !2412, size: 64, offset: 192)
!2412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2397, file: !44, line: 107, size: 64, elements: !2413)
!2413 = !{!2414, !2415}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2412, file: !44, line: 108, baseType: !510, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2412, file: !44, line: 109, baseType: !510, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2397, file: !44, line: 117, baseType: !510, size: 64, offset: 256)
!2417 = !DIDerivedType(tag: DW_TAG_member, scope: !2394, file: !44, line: 119, baseType: !2418, size: 320)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2394, file: !44, line: 119, size: 320, elements: !2419)
!2419 = !{!2420, !2421, !2424, !2425, !2426}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2418, file: !44, line: 124, baseType: !510, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2418, file: !44, line: 125, baseType: !2422, size: 64, offset: 64)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !44, line: 125, flags: DIFlagFwdDecl)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2418, file: !44, line: 126, baseType: !510, size: 64, offset: 128)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2418, file: !44, line: 127, baseType: !510, size: 64, offset: 192)
!2426 = !DIDerivedType(tag: DW_TAG_member, scope: !2418, file: !44, line: 128, baseType: !2427, size: 64, offset: 256)
!2427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2418, file: !44, line: 128, size: 64, elements: !2428)
!2428 = !{!2429, !2430}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2427, file: !44, line: 133, baseType: !510, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2427, file: !44, line: 138, baseType: !805, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, scope: !2394, file: !44, line: 141, baseType: !2432, size: 64)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2394, file: !44, line: 141, size: 64, elements: !2433)
!2433 = !{!2434}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2432, file: !44, line: 142, baseType: !510, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, scope: !2394, file: !44, line: 144, baseType: !2436, size: 128)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2394, file: !44, line: 144, size: 128, elements: !2437)
!2437 = !{!2438, !2509}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2436, file: !44, line: 146, baseType: !2439, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !60, line: 126, size: 1216, elements: !2441)
!2441 = !{!2442, !2452, !2473, !2474, !2475, !2476, !2477, !2491, !2492, !2493}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2440, file: !60, line: 127, baseType: !2443, size: 384)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !60, line: 21, size: 384, elements: !2444)
!2444 = !{!2445, !2446, !2448, !2449, !2450, !2451}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2443, file: !60, line: 22, baseType: !510, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2443, file: !60, line: 23, baseType: !2447, size: 64, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !510)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2443, file: !60, line: 24, baseType: !2447, size: 64, offset: 128)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2443, file: !60, line: 25, baseType: !510, size: 64, offset: 192)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2443, file: !60, line: 26, baseType: !510, size: 64, offset: 256)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2443, file: !60, line: 27, baseType: !510, size: 64, offset: 320)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2440, file: !60, line: 128, baseType: !2453, size: 128, offset: 384)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2454, line: 105, size: 128, elements: !2455)
!2454 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2455 = !{!2456, !2457}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2453, file: !2454, line: 110, baseType: !510, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2453, file: !2454, line: 118, baseType: !2458, size: 64, offset: 64)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2454, line: 95, size: 448, elements: !2460)
!2460 = !{!2461, !2462, !2468, !2469, !2470, !2471, !2472}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2459, file: !2454, line: 96, baseType: !805, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2459, file: !2454, line: 97, baseType: !2463, size: 64, offset: 64)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2454, line: 60, baseType: !2465)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{null, !2467}
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2459, file: !2454, line: 98, baseType: !2463, size: 64, offset: 128)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2459, file: !2454, line: 99, baseType: !881, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2459, file: !2454, line: 100, baseType: !881, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2459, file: !2454, line: 101, baseType: !1021, size: 128, align: 64, offset: 256)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2459, file: !2454, line: 102, baseType: !2467, size: 64, offset: 384)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2440, file: !60, line: 129, baseType: !750, size: 256, offset: 512)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2440, file: !60, line: 130, baseType: !59, size: 32, offset: 768)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2440, file: !60, line: 131, baseType: !13, size: 32, offset: 800)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2440, file: !60, line: 132, baseType: !510, size: 64, offset: 832)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2440, file: !60, line: 133, baseType: !2478, size: 64, offset: 896)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2480)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !60, line: 77, size: 192, elements: !2481)
!2481 = !{!2482, !2486, !2487}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2480, file: !60, line: 83, baseType: !2483, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{null, !2389}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2480, file: !60, line: 89, baseType: !2348, size: 64, offset: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2480, file: !60, line: 100, baseType: !2488, size: 64, offset: 128)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!115, !2439, !510, !510, !115}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2440, file: !60, line: 134, baseType: !345, size: 64, offset: 960)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2440, file: !60, line: 135, baseType: !115, size: 32, offset: 1024)
!2493 = !DIDerivedType(tag: DW_TAG_member, scope: !2440, file: !60, line: 136, baseType: !2494, size: 128, offset: 1088)
!2494 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2440, file: !60, line: 136, size: 128, elements: !2495)
!2495 = !{!2496, !2502}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2494, file: !60, line: 137, baseType: !2497, size: 128)
!2497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2498, line: 6, size: 128, elements: !2499)
!2498 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2499 = !{!2500, !2501}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2497, file: !2498, line: 7, baseType: !613, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2497, file: !2498, line: 8, baseType: !613, size: 64, offset: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, scope: !2494, file: !60, line: 138, baseType: !2503)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2494, file: !60, line: 138, elements: !2504)
!2504 = !{!2505, !2507}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2503, file: !60, line: 138, baseType: !2506)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2503, file: !60, line: 138, elements: !1090)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2503, file: !60, line: 138, baseType: !2508)
!2508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2497, elements: !1994)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2436, file: !44, line: 147, baseType: !345, size: 64, offset: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2394, file: !44, line: 161, baseType: !1021, size: 128, align: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, scope: !2390, file: !44, line: 164, baseType: !2512, size: 32, offset: 384)
!2512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2390, file: !44, line: 164, size: 32, elements: !2513)
!2513 = !{!2514, !2515}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2512, file: !44, line: 169, baseType: !365, size: 32)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2512, file: !44, line: 177, baseType: !13, size: 32)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2390, file: !44, line: 181, baseType: !365, size: 32, offset: 416)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2353, file: !2328, line: 535, baseType: !2389, size: 64, offset: 640)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2353, file: !2328, line: 541, baseType: !2519, size: 64, offset: 704)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2353, file: !2328, line: 545, baseType: !2521, size: 64, offset: 768)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2353, file: !2328, line: 549, baseType: !2523, size: 64, offset: 832)
!2523 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2295, line: 520, baseType: !2389)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2327, file: !2328, line: 581, baseType: !2525, size: 64, offset: 384)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!2351, !2352, !13}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2327, file: !2328, line: 582, baseType: !2529, size: 64, offset: 448)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!2351, !2352, !510, !510}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2327, file: !2328, line: 584, baseType: !2533, size: 64, offset: 512)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!510, !2280}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2327, file: !2328, line: 588, baseType: !2348, size: 64, offset: 576)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2327, file: !2328, line: 591, baseType: !2348, size: 64, offset: 640)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2327, file: !2328, line: 597, baseType: !2539, size: 64, offset: 704)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!115, !2280, !510, !345, !115, !115}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2327, file: !2328, line: 603, baseType: !2543, size: 64, offset: 768)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!378, !2280}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2327, file: !2328, line: 613, baseType: !2547, size: 64, offset: 832)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!115, !2280, !2550}
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !44, line: 717, flags: DIFlagFwdDecl)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2327, file: !2328, line: 625, baseType: !2553, size: 64, offset: 896)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!2550, !2280, !510}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2327, file: !2328, line: 633, baseType: !2557, size: 64, offset: 960)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!2389, !2280, !510}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2281, file: !44, line: 697, baseType: !510, size: 64, offset: 1024)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2281, file: !44, line: 699, baseType: !1887, size: 64, offset: 1088)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2281, file: !44, line: 700, baseType: !345, size: 64, offset: 1152)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2281, file: !44, line: 711, baseType: !805, size: 64, offset: 1216)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2281, file: !44, line: 717, baseType: !2550, size: 64, offset: 1280)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2281, file: !44, line: 722, baseType: !2566, offset: 1344)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !44, line: 570, elements: !1090)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2199, file: !20, line: 1928, baseType: !510, size: 64, offset: 768)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2199, file: !20, line: 1929, baseType: !2569, size: 64, offset: 832)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!115, !540, !1887}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2199, file: !20, line: 1930, baseType: !2573, size: 64, offset: 896)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!115, !1887, !2576}
!2576 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !20, line: 1061, baseType: !345)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2199, file: !20, line: 1931, baseType: !2569, size: 64, offset: 960)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2199, file: !20, line: 1932, baseType: !2579, size: 64, offset: 1024)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!115, !1887, !701, !701, !115}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2199, file: !20, line: 1933, baseType: !2583, size: 64, offset: 1088)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!115, !115, !1887, !115}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2199, file: !20, line: 1934, baseType: !2587, size: 64, offset: 1152)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!115, !1887, !115, !2590}
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !20, line: 1063, flags: DIFlagFwdDecl)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2199, file: !20, line: 1935, baseType: !1884, size: 64, offset: 1216)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2199, file: !20, line: 1936, baseType: !2594, size: 64, offset: 1280)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!115, !115}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2199, file: !20, line: 1937, baseType: !2587, size: 64, offset: 1344)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2199, file: !20, line: 1938, baseType: !2599, size: 64, offset: 1408)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!492, !2602, !1887, !2210, !507, !13}
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1245, line: 59, flags: DIFlagFwdDecl)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2199, file: !20, line: 1939, baseType: !2605, size: 64, offset: 1472)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!492, !1887, !2210, !2602, !507, !13}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2199, file: !20, line: 1940, baseType: !2609, size: 64, offset: 1536)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{null, !1887}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2199, file: !20, line: 1941, baseType: !2613, size: 64, offset: 1600)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!115, !1887, !115, !2616, !2617}
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2199, file: !20, line: 1942, baseType: !2619, size: 64, offset: 1664)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!496, !1887, !115, !701, !701}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2199, file: !20, line: 1944, baseType: !2623, size: 64, offset: 1728)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{null, !1243, !1887}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2199, file: !20, line: 1948, baseType: !2627, size: 64, offset: 1792)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!492, !1887, !701, !1887, !701, !507, !13}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2199, file: !20, line: 1950, baseType: !2631, size: 64, offset: 1856)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!701, !1887, !701, !1887, !701, !701, !13}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2199, file: !20, line: 1953, baseType: !2579, size: 64, offset: 1920)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2199, file: !20, line: 1954, baseType: !2636, size: 64, offset: 1984)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!115, !2639, !13}
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !20, line: 1911, flags: DIFlagFwdDecl)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2199, file: !20, line: 1955, baseType: !2642, size: 64, offset: 2048)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{!115, !2639, !2248, !13}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1888, file: !20, line: 1018, baseType: !613, size: 64, offset: 1472)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1888, file: !20, line: 1020, baseType: !345, size: 64, offset: 1536)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1888, file: !20, line: 1023, baseType: !345, size: 64, offset: 1600)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1888, file: !20, line: 1027, baseType: !2649, size: 64, offset: 1664)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1888, file: !20, line: 1029, baseType: !536, size: 64, offset: 1728)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1888, file: !20, line: 1030, baseType: !2652, size: 32, offset: 1792)
!2652 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2653, line: 8, baseType: !609)
!2653 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1888, file: !20, line: 1031, baseType: !2652, size: 32, offset: 1824)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1864, file: !44, line: 756, baseType: !510, size: 64, offset: 704)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1864, file: !44, line: 757, baseType: !510, size: 64, offset: 768)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1864, file: !44, line: 760, baseType: !510, size: 64, offset: 832)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1864, file: !44, line: 761, baseType: !510, size: 64, offset: 896)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1864, file: !44, line: 763, baseType: !510, size: 64, offset: 960)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1864, file: !44, line: 764, baseType: !2661, size: 64, offset: 1024)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2295, line: 299, baseType: !2663)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2295, line: 299, size: 64, elements: !2664)
!2664 = !{!2665}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2663, file: !2295, line: 299, baseType: !2666, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2300, line: 18, baseType: !510)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1864, file: !44, line: 773, baseType: !365, size: 32, offset: 1088)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1864, file: !44, line: 785, baseType: !365, size: 32, offset: 1120)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1864, file: !44, line: 795, baseType: !2670, size: 64, offset: 1152)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !44, line: 726, size: 128, elements: !2672)
!2672 = !{!2673, !2674}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2671, file: !44, line: 727, baseType: !613, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2671, file: !44, line: 728, baseType: !115, size: 32, offset: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1864, file: !44, line: 801, baseType: !510, size: 64, offset: 1216)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1864, file: !44, line: 804, baseType: !805, size: 64, offset: 1280)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1864, file: !44, line: 806, baseType: !115, size: 32, offset: 1344)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1864, file: !44, line: 808, baseType: !394, size: 32, offset: 1376)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1864, file: !44, line: 823, baseType: !1462, size: 320, offset: 1408)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1864, file: !44, line: 825, baseType: !381, size: 128, offset: 1728)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1864, file: !44, line: 845, baseType: !115, size: 32, offset: 1856)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1864, file: !44, line: 849, baseType: !510, size: 64, offset: 1920)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1864, file: !44, line: 850, baseType: !510, size: 64, offset: 1984)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1864, file: !44, line: 852, baseType: !510, size: 64, offset: 2048)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1864, file: !44, line: 853, baseType: !510, size: 64, offset: 2112)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1864, file: !44, line: 854, baseType: !807, size: 64, offset: 2176)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1864, file: !44, line: 855, baseType: !510, size: 64, offset: 2240)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1864, file: !44, line: 856, baseType: !510, size: 64, offset: 2304)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1864, file: !44, line: 857, baseType: !510, size: 64, offset: 2368)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1864, file: !44, line: 858, baseType: !510, size: 64, offset: 2432)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1864, file: !44, line: 865, baseType: !586, size: 32, offset: 2496)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1864, file: !44, line: 867, baseType: !394, size: 32, offset: 2528)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1864, file: !44, line: 869, baseType: !510, size: 64, offset: 2560)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1864, file: !44, line: 869, baseType: !510, size: 64, offset: 2624)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1864, file: !44, line: 869, baseType: !510, size: 64, offset: 2688)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1864, file: !44, line: 869, baseType: !510, size: 64, offset: 2752)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1864, file: !44, line: 870, baseType: !510, size: 64, offset: 2816)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1864, file: !44, line: 870, baseType: !510, size: 64, offset: 2880)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1864, file: !44, line: 870, baseType: !510, size: 64, offset: 2944)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1864, file: !44, line: 871, baseType: !510, size: 64, offset: 3008)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1864, file: !44, line: 871, baseType: !510, size: 64, offset: 3072)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1864, file: !44, line: 871, baseType: !510, size: 64, offset: 3136)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1864, file: !44, line: 871, baseType: !510, size: 64, offset: 3200)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1864, file: !44, line: 873, baseType: !2705, size: 3328, offset: 3264)
!2705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !510, size: 3328, elements: !2706)
!2706 = !{!2707}
!2707 = !DISubrange(count: 52)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1864, file: !44, line: 875, baseType: !2709, size: 1280, offset: 6592)
!2709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2146, size: 1280, elements: !1031)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1864, file: !44, line: 877, baseType: !2711, size: 64, offset: 7872)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !44, line: 877, flags: DIFlagFwdDecl)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1864, file: !44, line: 880, baseType: !2714, size: 1088, offset: 7936)
!2714 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2715, line: 72, baseType: !2716)
!2715 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2715, line: 23, size: 1088, elements: !2717)
!2717 = !{!2718, !2719, !2720, !2721, !2722, !2725, !2726, !2727, !2728, !2755, !2756, !2757}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2716, file: !2715, line: 28, baseType: !613, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2716, file: !2715, line: 38, baseType: !807, size: 64, offset: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2716, file: !2715, line: 40, baseType: !510, size: 64, offset: 128)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2716, file: !2715, line: 43, baseType: !1462, size: 320, offset: 192)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2716, file: !2715, line: 44, baseType: !2723, size: 64, offset: 512)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2715, line: 44, flags: DIFlagFwdDecl)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2716, file: !2715, line: 48, baseType: !510, size: 64, offset: 576)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2716, file: !2715, line: 59, baseType: !801, size: 256, offset: 640)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2716, file: !2715, line: 60, baseType: !345, size: 64, offset: 896)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2716, file: !2715, line: 61, baseType: !2729, size: 64, offset: 960)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2731)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2732, line: 13, size: 1216, elements: !2733)
!2732 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2733 = !{!2734, !2735, !2736, !2737, !2738, !2739, !2740, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2731, file: !2732, line: 14, baseType: !345, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2731, file: !2732, line: 15, baseType: !510, size: 64, offset: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2731, file: !2732, line: 17, baseType: !510, size: 64, offset: 128)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2731, file: !2732, line: 17, baseType: !510, size: 64, offset: 192)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2731, file: !2732, line: 18, baseType: !510, size: 64, offset: 256)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2731, file: !2732, line: 18, baseType: !510, size: 64, offset: 320)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2731, file: !2732, line: 19, baseType: !2741, size: 64, offset: 384)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2731, file: !2732, line: 21, baseType: !496, size: 64, offset: 448)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2731, file: !2732, line: 23, baseType: !496, size: 64, offset: 512)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2731, file: !2732, line: 24, baseType: !496, size: 64, offset: 576)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2731, file: !2732, line: 25, baseType: !496, size: 64, offset: 640)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2731, file: !2732, line: 26, baseType: !496, size: 64, offset: 704)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2731, file: !2732, line: 27, baseType: !496, size: 64, offset: 768)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2731, file: !2732, line: 28, baseType: !496, size: 64, offset: 832)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2731, file: !2732, line: 29, baseType: !496, size: 64, offset: 896)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2731, file: !2732, line: 30, baseType: !496, size: 64, offset: 960)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2731, file: !2732, line: 31, baseType: !496, size: 64, offset: 1024)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2731, file: !2732, line: 32, baseType: !496, size: 64, offset: 1088)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2731, file: !2732, line: 33, baseType: !496, size: 64, offset: 1152)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2716, file: !2715, line: 63, baseType: !365, size: 32, offset: 1024)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2716, file: !2715, line: 69, baseType: !428, size: 16, offset: 1056)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2716, file: !2715, line: 70, baseType: !937, size: 16, offset: 1072)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1864, file: !44, line: 882, baseType: !510, size: 64, offset: 9024)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1864, file: !44, line: 885, baseType: !394, size: 32, offset: 9088)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1864, file: !44, line: 886, baseType: !2761, size: 64, offset: 9152)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !44, line: 732, flags: DIFlagFwdDecl)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1864, file: !44, line: 901, baseType: !1975, size: 64, offset: 9216)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1864, file: !44, line: 904, baseType: !1887, size: 64, offset: 9280)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1864, file: !44, line: 906, baseType: !2766, size: 64, offset: 9344)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !44, line: 906, flags: DIFlagFwdDecl)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1864, file: !44, line: 930, baseType: !365, size: 32, offset: 9408)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1864, file: !44, line: 933, baseType: !365, size: 32, offset: 9440)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1864, file: !44, line: 935, baseType: !2771, size: 64, offset: 9472)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !74, line: 103, size: 64, elements: !2772)
!2772 = !{!2773}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2771, file: !74, line: 104, baseType: !2774, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !74, line: 101, flags: DIFlagFwdDecl)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1864, file: !44, line: 940, baseType: !805, size: 64, offset: 9536)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1864, file: !44, line: 942, baseType: !1061, size: 256, offset: 9600)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1861, file: !44, line: 986, baseType: !2779, offset: 10240)
!2779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !510, elements: !1994)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1569, file: !1245, line: 882, baseType: !1860, size: 64, offset: 9792)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1569, file: !1245, line: 884, baseType: !115, size: 32, offset: 9856)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1569, file: !1245, line: 885, baseType: !115, size: 32, offset: 9888)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1569, file: !1245, line: 886, baseType: !115, size: 32, offset: 9920)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1569, file: !1245, line: 888, baseType: !115, size: 32, offset: 9952)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1569, file: !1245, line: 890, baseType: !510, size: 64, offset: 9984)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1569, file: !1245, line: 893, baseType: !13, size: 32, offset: 10048)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1569, file: !1245, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1569, file: !1245, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1569, file: !1245, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1569, file: !1245, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1569, file: !1245, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1569, file: !1245, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1569, file: !1245, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1569, file: !1245, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1569, file: !1245, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1569, file: !1245, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1569, file: !1245, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1569, file: !1245, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1569, file: !1245, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1569, file: !1245, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1569, file: !1245, line: 969, baseType: !510, size: 64, offset: 10176)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1569, file: !1245, line: 971, baseType: !2803, size: 448, offset: 10240)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !68, line: 25, size: 448, elements: !2804)
!2804 = !{!2805, !2806, !2811}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2803, file: !68, line: 26, baseType: !510, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2803, file: !68, line: 27, baseType: !2807, size: 64, offset: 64)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!496, !2810}
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, scope: !2803, file: !68, line: 28, baseType: !2812, size: 320, offset: 128)
!2812 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2803, file: !68, line: 28, size: 320, elements: !2813)
!2813 = !{!2814, !2824, !2849}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2812, file: !68, line: 37, baseType: !2815, size: 320)
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2812, file: !68, line: 30, size: 320, elements: !2816)
!2816 = !{!2817, !2819, !2820, !2821, !2822, !2823}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2815, file: !68, line: 31, baseType: !2818, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2815, file: !68, line: 32, baseType: !609, size: 32, offset: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2815, file: !68, line: 33, baseType: !609, size: 32, offset: 96)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2815, file: !68, line: 34, baseType: !609, size: 32, offset: 128)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2815, file: !68, line: 35, baseType: !613, size: 64, offset: 192)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2815, file: !68, line: 36, baseType: !2818, size: 64, offset: 256)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2812, file: !68, line: 47, baseType: !2825, size: 192)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2812, file: !68, line: 39, size: 192, elements: !2826)
!2826 = !{!2827, !2828, !2829, !2848}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2825, file: !68, line: 40, baseType: !1731, size: 32)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2825, file: !68, line: 41, baseType: !67, size: 32, offset: 32)
!2829 = !DIDerivedType(tag: DW_TAG_member, scope: !2825, file: !68, line: 42, baseType: !2830, size: 64, offset: 64)
!2830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2825, file: !68, line: 42, size: 64, elements: !2831)
!2831 = !{!2832, !2840}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2830, file: !68, line: 43, baseType: !2833, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2835, line: 7, size: 128, elements: !2836)
!2835 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2836 = !{!2837, !2839}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2834, file: !2835, line: 8, baseType: !2838, size: 64)
!2838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !494, line: 93, baseType: !703)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2834, file: !2835, line: 9, baseType: !703, size: 64, offset: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2830, file: !68, line: 44, baseType: !2841, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2843, line: 7, size: 64, elements: !2844)
!2843 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2844 = !{!2845, !2847}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2842, file: !2843, line: 8, baseType: !2846, size: 32)
!2846 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2843, line: 5, baseType: !797)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2842, file: !2843, line: 9, baseType: !797, size: 32, offset: 32)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2825, file: !68, line: 46, baseType: !613, size: 64, offset: 128)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2812, file: !68, line: 55, baseType: !2850, size: 256)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2812, file: !68, line: 49, size: 256, elements: !2851)
!2851 = !{!2852, !2855, !2856, !2857, !2858}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2850, file: !68, line: 50, baseType: !2853, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !68, line: 14, flags: DIFlagFwdDecl)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2850, file: !68, line: 51, baseType: !115, size: 32, offset: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2850, file: !68, line: 52, baseType: !115, size: 32, offset: 96)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2850, file: !68, line: 53, baseType: !510, size: 64, offset: 128)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2850, file: !68, line: 54, baseType: !510, size: 64, offset: 192)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1569, file: !1245, line: 973, baseType: !2860, size: 32, offset: 10688)
!2860 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !347, line: 27, baseType: !2861)
!2861 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !494, line: 28, baseType: !115)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1569, file: !1245, line: 974, baseType: !2860, size: 32, offset: 10720)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1569, file: !1245, line: 978, baseType: !510, size: 64, offset: 10752)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1569, file: !1245, line: 987, baseType: !1568, size: 64, offset: 10816)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1569, file: !1245, line: 990, baseType: !1568, size: 64, offset: 10880)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1569, file: !1245, line: 995, baseType: !381, size: 128, offset: 10944)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1569, file: !1245, line: 996, baseType: !381, size: 128, offset: 11072)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1569, file: !1245, line: 997, baseType: !1568, size: 64, offset: 11200)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1569, file: !1245, line: 1005, baseType: !381, size: 128, offset: 11264)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1569, file: !1245, line: 1006, baseType: !381, size: 128, offset: 11392)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1569, file: !1245, line: 1009, baseType: !1928, size: 64, offset: 11520)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1569, file: !1245, line: 1010, baseType: !2873, size: 512, offset: 11584)
!2873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1047, size: 512, elements: !1031)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1569, file: !1245, line: 1011, baseType: !381, size: 128, offset: 12096)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1569, file: !1245, line: 1012, baseType: !381, size: 128, offset: 12224)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1569, file: !1245, line: 1014, baseType: !749, size: 64, offset: 12352)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1569, file: !1245, line: 1017, baseType: !930, size: 64, offset: 12416)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1569, file: !1245, line: 1020, baseType: !930, size: 64, offset: 12480)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1569, file: !1245, line: 1023, baseType: !345, size: 64, offset: 12544)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1569, file: !1245, line: 1025, baseType: !613, size: 64, offset: 12608)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1569, file: !1245, line: 1026, baseType: !613, size: 64, offset: 12672)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1569, file: !1245, line: 1031, baseType: !613, size: 64, offset: 12736)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1569, file: !1245, line: 1032, baseType: !2884, size: 192, offset: 12800)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1245, line: 324, size: 192, elements: !2885)
!2885 = !{!2886, !2887, !2888}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2884, file: !1245, line: 326, baseType: !613, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2884, file: !1245, line: 327, baseType: !613, size: 64, offset: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2884, file: !1245, line: 328, baseType: !759, size: 32, offset: 128)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1569, file: !1245, line: 1041, baseType: !510, size: 64, offset: 12992)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1569, file: !1245, line: 1042, baseType: !510, size: 64, offset: 13056)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1569, file: !1245, line: 1045, baseType: !613, size: 64, offset: 13120)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1569, file: !1245, line: 1048, baseType: !613, size: 64, offset: 13184)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1569, file: !1245, line: 1051, baseType: !510, size: 64, offset: 13248)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1569, file: !1245, line: 1052, baseType: !510, size: 64, offset: 13312)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1569, file: !1245, line: 1055, baseType: !2896, size: 640, offset: 13376)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2897, line: 132, size: 640, elements: !2898)
!2897 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2898 = !{!2899, !2905, !2906}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2896, file: !2897, line: 133, baseType: !2900, size: 576)
!2900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2901, size: 576, elements: !461)
!2901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2897, line: 117, size: 192, elements: !2902)
!2902 = !{!2903, !2904}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2901, file: !2897, line: 118, baseType: !613, size: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2901, file: !2897, line: 119, baseType: !1740, size: 128, offset: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2896, file: !2897, line: 134, baseType: !13, size: 32, offset: 576)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2896, file: !2897, line: 135, baseType: !13, size: 32, offset: 608)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1569, file: !1245, line: 1058, baseType: !2908, size: 448, offset: 14016)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2897, line: 144, size: 448, elements: !2909)
!2909 = !{!2910, !2911, !2912}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2908, file: !2897, line: 145, baseType: !1021, size: 128, align: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2908, file: !2897, line: 146, baseType: !801, size: 256, offset: 128)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2908, file: !2897, line: 147, baseType: !13, size: 32, offset: 384)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1569, file: !1245, line: 1064, baseType: !2001, size: 64, offset: 14464)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1569, file: !1245, line: 1067, baseType: !2001, size: 64, offset: 14528)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1569, file: !1245, line: 1070, baseType: !2001, size: 64, offset: 14592)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1569, file: !1245, line: 1074, baseType: !2028, size: 64, offset: 14656)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1569, file: !1245, line: 1084, baseType: !2918, size: 128, offset: 14720)
!2918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2919)
!2919 = !{!2920}
!2920 = !DISubrange(count: 16)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1569, file: !1245, line: 1086, baseType: !2922, size: 64, offset: 14848)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1245, line: 55, flags: DIFlagFwdDecl)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1569, file: !1245, line: 1089, baseType: !2925, size: 64, offset: 14912)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2926, line: 12, size: 64, elements: !2927)
!2926 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2927 = !{!2928}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2925, file: !2926, line: 13, baseType: !2929, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2926, line: 8, flags: DIFlagFwdDecl)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1569, file: !1245, line: 1090, baseType: !2932, size: 128, offset: 14976)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2933, line: 13, size: 128, elements: !2934)
!2933 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2934 = !{!2935}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2932, file: !2933, line: 14, baseType: !381, size: 128)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1569, file: !1245, line: 1097, baseType: !2937, size: 64, offset: 15104)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1245, line: 50, flags: DIFlagFwdDecl)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1569, file: !1245, line: 1100, baseType: !2940, size: 64, offset: 15168)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1245, line: 1100, flags: DIFlagFwdDecl)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1569, file: !1245, line: 1103, baseType: !2943, size: 64, offset: 15232)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1245, line: 53, flags: DIFlagFwdDecl)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1569, file: !1245, line: 1107, baseType: !2946, size: 64, offset: 15296)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2948, line: 31, size: 576, elements: !2949)
!2948 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2949 = !{!2950, !2951, !2954, !2957, !2960, !2961, !2964, !2967, !2968}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2947, file: !2948, line: 32, baseType: !361, size: 32)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2947, file: !2948, line: 33, baseType: !2952, size: 64, offset: 64)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2948, line: 9, flags: DIFlagFwdDecl)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2947, file: !2948, line: 34, baseType: !2955, size: 64, offset: 128)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2948, line: 10, flags: DIFlagFwdDecl)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2947, file: !2948, line: 35, baseType: !2958, size: 64, offset: 192)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2948, line: 8, flags: DIFlagFwdDecl)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2947, file: !2948, line: 36, baseType: !1945, size: 64, offset: 256)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2947, file: !2948, line: 37, baseType: !2962, size: 64, offset: 320)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !2030, line: 34, flags: DIFlagFwdDecl)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2947, file: !2948, line: 38, baseType: !2965, size: 64, offset: 384)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2948, line: 38, flags: DIFlagFwdDecl)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2947, file: !2948, line: 39, baseType: !2965, size: 64, offset: 448)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2947, file: !2948, line: 40, baseType: !2969, size: 64, offset: 512)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2948, line: 12, flags: DIFlagFwdDecl)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1569, file: !1245, line: 1110, baseType: !2972, size: 64, offset: 15360)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2974, line: 93, size: 8768, elements: !2975)
!2974 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2975 = !{!2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3023, !3032, !3033, !3035, !3036, !3037, !3040, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3078, !3079, !3086, !3096, !3099, !3100, !3103, !3104, !3105, !3106, !3107, !3108}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2973, file: !2974, line: 94, baseType: !361, size: 32)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2973, file: !2974, line: 95, baseType: !365, size: 32, offset: 32)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2973, file: !2974, line: 96, baseType: !115, size: 32, offset: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2973, file: !2974, line: 97, baseType: !115, size: 32, offset: 96)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2973, file: !2974, line: 98, baseType: !381, size: 128, offset: 128)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2973, file: !2974, line: 100, baseType: !1555, size: 192, offset: 256)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2973, file: !2974, line: 103, baseType: !1568, size: 64, offset: 448)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2973, file: !2974, line: 106, baseType: !2984, size: 192, offset: 512)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1980, line: 32, size: 192, elements: !2985)
!2985 = !{!2986, !2987}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2984, file: !1980, line: 33, baseType: !381, size: 128)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2984, file: !1980, line: 34, baseType: !2988, size: 64, offset: 128)
!2988 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2989, line: 25, baseType: !2990)
!2989 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2989, line: 23, size: 64, elements: !2991)
!2991 = !{!2992}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2990, file: !2989, line: 24, baseType: !1811, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2973, file: !2974, line: 109, baseType: !1171, size: 64, offset: 704)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2973, file: !2974, line: 112, baseType: !115, size: 32, offset: 768)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2973, file: !2974, line: 114, baseType: !115, size: 32, offset: 800)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2973, file: !2974, line: 115, baseType: !1568, size: 64, offset: 832)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2973, file: !2974, line: 118, baseType: !115, size: 32, offset: 896)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2973, file: !2974, line: 119, baseType: !13, size: 32, offset: 928)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2973, file: !2974, line: 121, baseType: !3000, size: 64, offset: 960)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2974, line: 80, size: 448, elements: !3002)
!3002 = !{!3003, !3004, !3010}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3001, file: !2974, line: 81, baseType: !365, size: 32)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3001, file: !2974, line: 82, baseType: !3005, size: 128, offset: 64)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2974, line: 75, size: 128, elements: !3006)
!3006 = !{!3007, !3008}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3005, file: !2974, line: 76, baseType: !1568, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3005, file: !2974, line: 77, baseType: !3009, size: 64, offset: 64)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3001, file: !2974, line: 83, baseType: !750, size: 256, offset: 192)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2973, file: !2974, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2973, file: !2974, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2973, file: !2974, line: 138, baseType: !13, size: 32, offset: 1056)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2973, file: !2974, line: 139, baseType: !381, size: 128, offset: 1088)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2973, file: !2974, line: 142, baseType: !1684, size: 512, offset: 1216)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2973, file: !2974, line: 143, baseType: !1692, size: 64, offset: 1728)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2973, file: !2974, line: 150, baseType: !3018, size: 256, offset: 1792)
!3018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3019, size: 256, elements: !920)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2974, line: 38, size: 128, elements: !3020)
!3020 = !{!3021, !3022}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3019, file: !2974, line: 39, baseType: !613, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3019, file: !2974, line: 40, baseType: !613, size: 64, offset: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2973, file: !2974, line: 156, baseType: !3024, size: 192, offset: 2048)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2974, line: 66, size: 192, elements: !3025)
!3025 = !{!3026}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3024, file: !2974, line: 67, baseType: !3027, size: 192)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2974, line: 47, size: 192, elements: !3028)
!3028 = !{!3029, !3030, !3031}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3027, file: !2974, line: 48, baseType: !807, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3027, file: !2974, line: 49, baseType: !807, size: 64, offset: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3027, file: !2974, line: 50, baseType: !807, size: 64, offset: 128)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2973, file: !2974, line: 160, baseType: !2896, size: 640, offset: 2240)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2973, file: !2974, line: 163, baseType: !3034, size: 256, offset: 2880)
!3034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1928, size: 256, elements: !1031)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2973, file: !2974, line: 169, baseType: !1928, size: 64, offset: 3136)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2973, file: !2974, line: 172, baseType: !115, size: 32, offset: 3200)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2973, file: !2974, line: 174, baseType: !3038, size: 64, offset: 3264)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2974, line: 174, flags: DIFlagFwdDecl)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2973, file: !2974, line: 185, baseType: !3041, size: 64, offset: 3328)
!3041 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !582, line: 860, baseType: !3042)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !582, line: 853, size: 64, elements: !3043)
!3043 = !{!3044, !3045}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3042, file: !582, line: 858, baseType: !581, size: 32)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3042, file: !582, line: 859, baseType: !394, size: 32, offset: 32)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2973, file: !2974, line: 186, baseType: !613, size: 64, offset: 3392)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2973, file: !2974, line: 186, baseType: !613, size: 64, offset: 3456)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2973, file: !2974, line: 186, baseType: !613, size: 64, offset: 3520)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2973, file: !2974, line: 186, baseType: !613, size: 64, offset: 3584)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2973, file: !2974, line: 187, baseType: !613, size: 64, offset: 3648)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2973, file: !2974, line: 188, baseType: !613, size: 64, offset: 3712)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2973, file: !2974, line: 189, baseType: !2884, size: 192, offset: 3776)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2973, file: !2974, line: 190, baseType: !510, size: 64, offset: 3968)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2973, file: !2974, line: 190, baseType: !510, size: 64, offset: 4032)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2973, file: !2974, line: 190, baseType: !510, size: 64, offset: 4096)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2973, file: !2974, line: 190, baseType: !510, size: 64, offset: 4160)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2973, file: !2974, line: 191, baseType: !510, size: 64, offset: 4224)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2973, file: !2974, line: 191, baseType: !510, size: 64, offset: 4288)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2973, file: !2974, line: 191, baseType: !510, size: 64, offset: 4352)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2973, file: !2974, line: 191, baseType: !510, size: 64, offset: 4416)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2973, file: !2974, line: 192, baseType: !510, size: 64, offset: 4480)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2973, file: !2974, line: 192, baseType: !510, size: 64, offset: 4544)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2973, file: !2974, line: 192, baseType: !510, size: 64, offset: 4608)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2973, file: !2974, line: 192, baseType: !510, size: 64, offset: 4672)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2973, file: !2974, line: 193, baseType: !510, size: 64, offset: 4736)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2973, file: !2974, line: 193, baseType: !510, size: 64, offset: 4800)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2973, file: !2974, line: 194, baseType: !3068, size: 448, offset: 4864)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3069, line: 12, size: 448, elements: !3070)
!3069 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3070 = !{!3071, !3072, !3073, !3074, !3075, !3076, !3077}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3068, file: !3069, line: 15, baseType: !613, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3068, file: !3069, line: 17, baseType: !613, size: 64, offset: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3068, file: !3069, line: 19, baseType: !613, size: 64, offset: 128)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3068, file: !3069, line: 21, baseType: !613, size: 64, offset: 192)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3068, file: !3069, line: 29, baseType: !613, size: 64, offset: 256)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3068, file: !3069, line: 35, baseType: !613, size: 64, offset: 320)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3068, file: !3069, line: 44, baseType: !613, size: 64, offset: 384)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2973, file: !2974, line: 202, baseType: !615, size: 64, offset: 5312)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2973, file: !2974, line: 213, baseType: !3080, size: 2048, offset: 5376)
!3080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3081, size: 2048, elements: !2919)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3082, line: 43, size: 128, elements: !3083)
!3082 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3083 = !{!3084, !3085}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3081, file: !3082, line: 44, baseType: !509, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3081, file: !3082, line: 45, baseType: !509, size: 64, offset: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2973, file: !2974, line: 216, baseType: !3087, size: 448, offset: 7424)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2974, line: 30, size: 448, elements: !3088)
!3088 = !{!3089, !3090, !3091, !3092, !3093, !3094, !3095}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3087, file: !2974, line: 31, baseType: !115, size: 32)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3087, file: !2974, line: 32, baseType: !496, size: 64, offset: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3087, file: !2974, line: 33, baseType: !510, size: 64, offset: 128)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3087, file: !2974, line: 34, baseType: !613, size: 64, offset: 192)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3087, file: !2974, line: 34, baseType: !613, size: 64, offset: 256)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3087, file: !2974, line: 35, baseType: !510, size: 64, offset: 320)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3087, file: !2974, line: 35, baseType: !510, size: 64, offset: 384)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2973, file: !2974, line: 219, baseType: !3097, size: 64, offset: 7872)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2974, line: 219, flags: DIFlagFwdDecl)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2973, file: !2974, line: 222, baseType: !13, size: 32, offset: 7936)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2973, file: !2974, line: 223, baseType: !3101, size: 64, offset: 8000)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2974, line: 223, flags: DIFlagFwdDecl)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2973, file: !2974, line: 230, baseType: !881, size: 8, offset: 8064)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2973, file: !2974, line: 231, baseType: !939, size: 16, offset: 8080)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2973, file: !2974, line: 232, baseType: !939, size: 16, offset: 8096)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2973, file: !2974, line: 234, baseType: !1860, size: 64, offset: 8128)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2973, file: !2974, line: 237, baseType: !801, size: 256, offset: 8192)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2973, file: !2974, line: 243, baseType: !1462, size: 320, offset: 8448)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1569, file: !1245, line: 1111, baseType: !3110, size: 64, offset: 15424)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2974, line: 20, size: 16640, elements: !3112)
!3112 = !{!3113, !3114, !3115, !3116}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3111, file: !2974, line: 21, baseType: !394, size: 32)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3111, file: !2974, line: 22, baseType: !361, size: 32, offset: 32)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3111, file: !2974, line: 23, baseType: !1555, size: 192, offset: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3111, file: !2974, line: 24, baseType: !3117, size: 16384, offset: 256)
!3117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3118, size: 16384, elements: !465)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1980, line: 51, size: 256, elements: !3119)
!3119 = !{!3120}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3118, file: !1980, line: 52, baseType: !3121, size: 256)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1980, line: 37, size: 256, elements: !3122)
!3122 = !{!3123, !3130, !3131, !3135}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3121, file: !1980, line: 39, baseType: !3124, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3125, line: 83, baseType: !3126)
!3125 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3125, line: 82, baseType: !3128)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{null, !115}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3121, file: !1980, line: 40, baseType: !510, size: 64, offset: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3121, file: !1980, line: 46, baseType: !3132, size: 64, offset: 128)
!3132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3125, line: 86, baseType: !3133)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3125, line: 85, baseType: !1166)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3121, file: !1980, line: 48, baseType: !2988, size: 64, offset: 192)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1569, file: !1245, line: 1112, baseType: !2988, size: 64, offset: 15488)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1569, file: !1245, line: 1113, baseType: !2988, size: 64, offset: 15552)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1569, file: !1245, line: 1115, baseType: !2988, size: 64, offset: 15616)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1569, file: !1245, line: 1116, baseType: !2984, size: 192, offset: 15680)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1569, file: !1245, line: 1117, baseType: !510, size: 64, offset: 15872)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1569, file: !1245, line: 1118, baseType: !507, size: 64, offset: 15936)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1569, file: !1245, line: 1119, baseType: !13, size: 32, offset: 16000)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1569, file: !1245, line: 1121, baseType: !1020, size: 64, offset: 16064)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1569, file: !1245, line: 1125, baseType: !3145, size: 64, offset: 16128)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1245, line: 43, flags: DIFlagFwdDecl)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1569, file: !1245, line: 1127, baseType: !546, size: 32, offset: 16192)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1569, file: !1245, line: 1128, baseType: !13, size: 32, offset: 16224)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1569, file: !1245, line: 1130, baseType: !3150, size: 128, offset: 16256)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3151, line: 37, size: 128, elements: !3152)
!3151 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3152 = !{!3153, !3154, !3155}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3150, file: !3151, line: 38, baseType: !115, size: 32)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3150, file: !3151, line: 39, baseType: !365, size: 32, offset: 32)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3150, file: !3151, line: 40, baseType: !3156, size: 64, offset: 64)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3151, line: 24, flags: DIFlagFwdDecl)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1569, file: !1245, line: 1131, baseType: !3159, size: 256, offset: 16384)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3160, line: 12, size: 256, elements: !3161)
!3160 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3161 = !{!3162, !3163, !3164, !3165}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3159, file: !3160, line: 13, baseType: !460, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3159, file: !3160, line: 14, baseType: !510, size: 64, offset: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3159, file: !3160, line: 15, baseType: !510, size: 64, offset: 128)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3159, file: !3160, line: 16, baseType: !881, size: 8, offset: 192)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1569, file: !1245, line: 1134, baseType: !613, size: 64, offset: 16640)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1569, file: !1245, line: 1135, baseType: !613, size: 64, offset: 16704)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1569, file: !1245, line: 1138, baseType: !394, size: 32, offset: 16768)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1569, file: !1245, line: 1141, baseType: !759, size: 32, offset: 16800)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1569, file: !1245, line: 1143, baseType: !3171, size: 64, offset: 16832)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1245, line: 735, size: 64, elements: !3172)
!3172 = !{!3173}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3171, file: !1245, line: 736, baseType: !3174, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1569, file: !1245, line: 1147, baseType: !1743, size: 128, offset: 16896)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1569, file: !1245, line: 1149, baseType: !1568, size: 64, offset: 17024)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1569, file: !1245, line: 1151, baseType: !3178, size: 64, offset: 17088)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !3180, line: 64, flags: DIFlagFwdDecl)
!3180 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c3b60a10bef9e89c790a516317bab43b")
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1569, file: !1245, line: 1188, baseType: !345, size: 64, offset: 17152)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1569, file: !1245, line: 1191, baseType: !3183, size: 64, offset: 17216)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1245, line: 44, flags: DIFlagFwdDecl)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1569, file: !1245, line: 1194, baseType: !3186, size: 64, offset: 17280)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1245, line: 45, flags: DIFlagFwdDecl)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1569, file: !1245, line: 1197, baseType: !3189, size: 64, offset: 17344)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1245, line: 61, flags: DIFlagFwdDecl)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1569, file: !1245, line: 1199, baseType: !3192, size: 64, offset: 17408)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3194, line: 99, size: 128, elements: !3195)
!3194 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3195 = !{!3196, !3197, !3198}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3193, file: !3194, line: 100, baseType: !805, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3193, file: !3194, line: 101, baseType: !365, size: 32, offset: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3193, file: !3194, line: 103, baseType: !430, size: 16, offset: 96)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1569, file: !1245, line: 1202, baseType: !3200, size: 64, offset: 17472)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1245, line: 48, flags: DIFlagFwdDecl)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1569, file: !1245, line: 1205, baseType: !510, size: 64, offset: 17536)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1569, file: !1245, line: 1206, baseType: !3204, size: 64, offset: 17600)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1980, line: 14, baseType: !3206)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1980, line: 12, size: 384, elements: !3207)
!3207 = !{!3208}
!3208 = !DIDerivedType(tag: DW_TAG_member, scope: !3206, file: !1980, line: 13, baseType: !3209, size: 384)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3206, file: !1980, line: 13, size: 384, elements: !3210)
!3210 = !{!3211, !3212, !3213, !3214}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3209, file: !1980, line: 13, baseType: !115, size: 32)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3209, file: !1980, line: 13, baseType: !115, size: 32, offset: 32)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3209, file: !1980, line: 13, baseType: !115, size: 32, offset: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3209, file: !1980, line: 13, baseType: !3215, size: 256, offset: 128)
!3215 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3216, line: 37, size: 256, elements: !3217)
!3216 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3217 = !{!3218, !3223, !3236, !3242, !3251, !3278, !3283}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3215, file: !3216, line: 42, baseType: !3219, size: 64)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3215, file: !3216, line: 39, size: 64, elements: !3220)
!3220 = !{!3221, !3222}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3219, file: !3216, line: 40, baseType: !2861, size: 32)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3219, file: !3216, line: 41, baseType: !552, size: 32, offset: 32)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3215, file: !3216, line: 50, baseType: !3224, size: 192)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3215, file: !3216, line: 45, size: 192, elements: !3225)
!3225 = !{!3226, !3228, !3229, !3235}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3224, file: !3216, line: 46, baseType: !3227, size: 32)
!3227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !494, line: 95, baseType: !115)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3224, file: !3216, line: 47, baseType: !115, size: 32, offset: 32)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3224, file: !3216, line: 48, baseType: !3230, size: 64, offset: 64)
!3230 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3216, line: 11, baseType: !3231)
!3231 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3216, line: 8, size: 64, elements: !3232)
!3232 = !{!3233, !3234}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3231, file: !3216, line: 9, baseType: !115, size: 32)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3231, file: !3216, line: 10, baseType: !345, size: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3224, file: !3216, line: 49, baseType: !115, size: 32, offset: 128)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3215, file: !3216, line: 57, baseType: !3237, size: 128)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3215, file: !3216, line: 53, size: 128, elements: !3238)
!3238 = !{!3239, !3240, !3241}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3237, file: !3216, line: 54, baseType: !2861, size: 32)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3237, file: !3216, line: 55, baseType: !552, size: 32, offset: 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3237, file: !3216, line: 56, baseType: !3230, size: 64, offset: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3215, file: !3216, line: 66, baseType: !3243, size: 256)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3215, file: !3216, line: 60, size: 256, elements: !3244)
!3244 = !{!3245, !3246, !3247, !3248, !3250}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3243, file: !3216, line: 61, baseType: !2861, size: 32)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3243, file: !3216, line: 62, baseType: !552, size: 32, offset: 32)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3243, file: !3216, line: 63, baseType: !115, size: 32, offset: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3243, file: !3216, line: 64, baseType: !3249, size: 64, offset: 128)
!3249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !494, line: 94, baseType: !495)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3243, file: !3216, line: 65, baseType: !3249, size: 64, offset: 192)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3215, file: !3216, line: 105, baseType: !3252, size: 256)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3215, file: !3216, line: 69, size: 256, elements: !3253)
!3253 = !{!3254, !3255}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3252, file: !3216, line: 70, baseType: !345, size: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, scope: !3252, file: !3216, line: 79, baseType: !3256, size: 192, offset: 64)
!3256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3252, file: !3216, line: 79, size: 192, elements: !3257)
!3257 = !{!3258, !3259, !3260, !3267, !3272}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3256, file: !3216, line: 81, baseType: !115, size: 32)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3256, file: !3216, line: 86, baseType: !939, size: 16)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3256, file: !3216, line: 92, baseType: !3261, size: 192)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3256, file: !3216, line: 88, size: 192, elements: !3262)
!3262 = !{!3263, !3265, !3266}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3261, file: !3216, line: 89, baseType: !3264, size: 64)
!3264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1727)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3261, file: !3216, line: 90, baseType: !345, size: 64, offset: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3261, file: !3216, line: 91, baseType: !345, size: 64, offset: 128)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3256, file: !3216, line: 97, baseType: !3268, size: 96)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3256, file: !3216, line: 94, size: 96, elements: !3269)
!3269 = !{!3270, !3271}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3268, file: !3216, line: 95, baseType: !3264, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3268, file: !3216, line: 96, baseType: !610, size: 32, offset: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3256, file: !3216, line: 103, baseType: !3273, size: 128)
!3273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3256, file: !3216, line: 99, size: 128, elements: !3274)
!3274 = !{!3275, !3276, !3277}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3273, file: !3216, line: 100, baseType: !510, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3273, file: !3216, line: 101, baseType: !610, size: 32, offset: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3273, file: !3216, line: 102, baseType: !610, size: 32, offset: 96)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3215, file: !3216, line: 111, baseType: !3279, size: 128)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3215, file: !3216, line: 108, size: 128, elements: !3280)
!3280 = !{!3281, !3282}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3279, file: !3216, line: 109, baseType: !496, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3279, file: !3216, line: 110, baseType: !115, size: 32, offset: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3215, file: !3216, line: 118, baseType: !3284, size: 128)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3215, file: !3216, line: 114, size: 128, elements: !3285)
!3285 = !{!3286, !3287, !3288}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3284, file: !3216, line: 115, baseType: !345, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3284, file: !3216, line: 116, baseType: !115, size: 32, offset: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3284, file: !3216, line: 117, baseType: !13, size: 32, offset: 96)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1569, file: !1245, line: 1208, baseType: !3068, size: 448, offset: 17664)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1569, file: !1245, line: 1215, baseType: !613, size: 64, offset: 18112)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1569, file: !1245, line: 1217, baseType: !613, size: 64, offset: 18176)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1569, file: !1245, line: 1219, baseType: !613, size: 64, offset: 18240)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1569, file: !1245, line: 1223, baseType: !3294, size: 64, offset: 18304)
!3294 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3295, line: 99, baseType: !3296)
!3295 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3295, line: 99, size: 64, elements: !3297)
!3297 = !{!3298}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3296, file: !3295, line: 99, baseType: !1811, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1569, file: !1245, line: 1225, baseType: !581, size: 32, offset: 18368)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1569, file: !1245, line: 1226, baseType: !115, size: 32, offset: 18400)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1569, file: !1245, line: 1227, baseType: !115, size: 32, offset: 18432)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1569, file: !1245, line: 1231, baseType: !3303, size: 64, offset: 18496)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1245, line: 1231, flags: DIFlagFwdDecl)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1569, file: !1245, line: 1233, baseType: !381, size: 128, offset: 18560)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1569, file: !1245, line: 1240, baseType: !3307, size: 64, offset: 18688)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1245, line: 62, flags: DIFlagFwdDecl)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1569, file: !1245, line: 1242, baseType: !3310, size: 64, offset: 18752)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1245, line: 1242, flags: DIFlagFwdDecl)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1569, file: !1245, line: 1244, baseType: !381, size: 128, offset: 18816)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1569, file: !1245, line: 1245, baseType: !3314, size: 64, offset: 18944)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1245, line: 51, flags: DIFlagFwdDecl)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1569, file: !1245, line: 1246, baseType: !801, size: 256, offset: 19008)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1569, file: !1245, line: 1247, baseType: !13, size: 32, offset: 19264)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1569, file: !1245, line: 1250, baseType: !3319, size: 64, offset: 19328)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1245, line: 57, flags: DIFlagFwdDecl)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1569, file: !1245, line: 1251, baseType: !801, size: 256, offset: 19392)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1569, file: !1245, line: 1252, baseType: !381, size: 128, offset: 19648)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1569, file: !1245, line: 1259, baseType: !2550, size: 64, offset: 19776)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1569, file: !1245, line: 1260, baseType: !939, size: 16, offset: 19840)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1569, file: !1245, line: 1261, baseType: !939, size: 16, offset: 19856)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1569, file: !1245, line: 1314, baseType: !3327, size: 64, offset: 19904)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3329, line: 62, size: 256, align: 256, elements: !3330)
!3329 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3330 = !{!3331, !3332, !3333, !3334, !3335, !3336, !3337}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3328, file: !3329, line: 75, baseType: !610, size: 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3328, file: !3329, line: 90, baseType: !610, size: 32, offset: 32)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3328, file: !3329, line: 112, baseType: !614, size: 64, offset: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3328, file: !3329, line: 132, baseType: !610, size: 32, offset: 128)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3328, file: !3329, line: 140, baseType: !610, size: 32, offset: 160)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3328, file: !3329, line: 149, baseType: !610, size: 32, offset: 192)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3328, file: !3329, line: 154, baseType: !3338, offset: 224)
!3338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1994)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1569, file: !1245, line: 1315, baseType: !609, size: 32, offset: 19968)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1569, file: !1245, line: 1316, baseType: !609, size: 32, offset: 20000)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1569, file: !1245, line: 1321, baseType: !510, size: 64, offset: 20032)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1569, file: !1245, line: 1325, baseType: !115, size: 32, offset: 20096)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1569, file: !1245, line: 1326, baseType: !115, size: 32, offset: 20128)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1569, file: !1245, line: 1327, baseType: !115, size: 32, offset: 20160)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1569, file: !1245, line: 1328, baseType: !115, size: 32, offset: 20192)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1569, file: !1245, line: 1329, baseType: !1021, size: 128, align: 64, offset: 20224)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1569, file: !1245, line: 1332, baseType: !3348, size: 128, offset: 20352)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3349, line: 51, size: 128, elements: !3350)
!3349 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3350 = !{!3351, !3356, !3357}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3348, file: !3349, line: 60, baseType: !3352, size: 64)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3353, line: 7, size: 64, elements: !3354)
!3353 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3354 = !{!3355}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3352, file: !3353, line: 12, baseType: !1808, size: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3348, file: !3349, line: 63, baseType: !881, size: 8, offset: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3348, file: !3349, line: 70, baseType: !881, size: 8, offset: 72)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1569, file: !1245, line: 1335, baseType: !2602, size: 64, offset: 20480)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1569, file: !1245, line: 1337, baseType: !3360, size: 128, offset: 20544)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3349, line: 39, size: 128, elements: !3361)
!3361 = !{!3362, !3363, !3364}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3360, file: !3349, line: 40, baseType: !2389, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3360, file: !3349, line: 42, baseType: !610, size: 32, offset: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3360, file: !3349, line: 43, baseType: !610, size: 32, offset: 96)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1569, file: !1245, line: 1340, baseType: !3366, size: 64, offset: 20672)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1245, line: 69, flags: DIFlagFwdDecl)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1569, file: !1245, line: 1351, baseType: !115, size: 32, offset: 20736)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1569, file: !1245, line: 1352, baseType: !115, size: 32, offset: 20768)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1569, file: !1245, line: 1354, baseType: !510, size: 64, offset: 20800)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1569, file: !1245, line: 1364, baseType: !613, size: 64, offset: 20864)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1569, file: !1245, line: 1365, baseType: !613, size: 64, offset: 20928)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1569, file: !1245, line: 1412, baseType: !510, size: 64, offset: 20992)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1569, file: !1245, line: 1453, baseType: !3375, size: 64, offset: 21056)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1245, line: 1453, flags: DIFlagFwdDecl)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1569, file: !1245, line: 1457, baseType: !3378, size: 64, offset: 21120)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !74, line: 61, size: 576, elements: !3380)
!3380 = !{!3381, !3382, !3401, !3404, !3405, !3438, !3448}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3379, file: !74, line: 62, baseType: !73, size: 32)
!3382 = !DIDerivedType(tag: DW_TAG_member, scope: !3379, file: !74, line: 64, baseType: !3383, size: 192, offset: 64)
!3383 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3379, file: !74, line: 64, size: 192, elements: !3384)
!3384 = !{!3385, !3396}
!3385 = !DIDerivedType(tag: DW_TAG_member, scope: !3383, file: !74, line: 65, baseType: !3386, size: 192)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3383, file: !74, line: 65, size: 192, elements: !3387)
!3387 = !{!3388, !3395}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3386, file: !74, line: 66, baseType: !3389, size: 128)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3390, line: 50, size: 128, elements: !3391)
!3390 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3391 = !{!3392, !3393, !3394}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3389, file: !3390, line: 52, baseType: !510, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3389, file: !3390, line: 54, baseType: !13, size: 32, offset: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3389, file: !3390, line: 55, baseType: !13, size: 32, offset: 96)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3386, file: !74, line: 67, baseType: !510, size: 64, offset: 128)
!3396 = !DIDerivedType(tag: DW_TAG_member, scope: !3383, file: !74, line: 70, baseType: !3397, size: 192)
!3397 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3383, file: !74, line: 70, size: 192, elements: !3398)
!3398 = !{!3399, !3400}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3397, file: !74, line: 71, baseType: !1021, size: 128, align: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3397, file: !74, line: 72, baseType: !510, size: 64, offset: 128)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3379, file: !74, line: 76, baseType: !3402, size: 64, offset: 256)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !74, line: 76, flags: DIFlagFwdDecl)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3379, file: !74, line: 77, baseType: !510, size: 64, offset: 320)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3379, file: !74, line: 79, baseType: !3406, size: 64, offset: 384)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3390, line: 25, size: 256, elements: !3408)
!3408 = !{!3409, !3415, !3419}
!3409 = !DIDerivedType(tag: DW_TAG_member, scope: !3407, file: !3390, line: 26, baseType: !3410, size: 128)
!3410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3407, file: !3390, line: 26, size: 128, elements: !3411)
!3411 = !{!3412, !3414}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3410, file: !3390, line: 27, baseType: !3413, size: 128)
!3413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 128, elements: !2919)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3410, file: !3390, line: 28, baseType: !3413, size: 128)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3407, file: !3390, line: 31, baseType: !3416, size: 64, offset: 128)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3418)
!3418 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3390, line: 23, flags: DIFlagFwdDecl)
!3419 = !DIDerivedType(tag: DW_TAG_member, scope: !3407, file: !3390, line: 33, baseType: !3420, size: 64, offset: 192)
!3420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3407, file: !3390, line: 33, size: 64, elements: !3421)
!3421 = !{!3422, !3428, !3433}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3420, file: !3390, line: 38, baseType: !3423, size: 64)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3420, file: !3390, line: 34, size: 64, elements: !3424)
!3424 = !{!3425, !3426, !3427}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3423, file: !3390, line: 35, baseType: !797, size: 32)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3423, file: !3390, line: 36, baseType: !418, size: 8, offset: 32)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3423, file: !3390, line: 37, baseType: !418, size: 8, offset: 40)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3420, file: !3390, line: 42, baseType: !3429, size: 16)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3420, file: !3390, line: 39, size: 16, elements: !3430)
!3430 = !{!3431, !3432}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3429, file: !3390, line: 40, baseType: !418, size: 8)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3429, file: !3390, line: 41, baseType: !418, size: 8, offset: 8)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3420, file: !3390, line: 46, baseType: !3434, size: 16)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3420, file: !3390, line: 43, size: 16, elements: !3435)
!3435 = !{!3436, !3437}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3434, file: !3390, line: 44, baseType: !418, size: 8)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3434, file: !3390, line: 45, baseType: !418, size: 8, offset: 8)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3379, file: !74, line: 81, baseType: !3439, size: 64, offset: 448)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !74, line: 85, size: 384, elements: !3441)
!3441 = !{!3442, !3443, !3444, !3445, !3446, !3447}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3440, file: !74, line: 86, baseType: !3402, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3440, file: !74, line: 87, baseType: !510, size: 64, offset: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3440, file: !74, line: 88, baseType: !510, size: 64, offset: 128)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3440, file: !74, line: 89, baseType: !510, size: 64, offset: 192)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3440, file: !74, line: 90, baseType: !881, size: 8, offset: 256)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3440, file: !74, line: 92, baseType: !3439, size: 64, offset: 320)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3379, file: !74, line: 82, baseType: !13, size: 32, offset: 512)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1569, file: !1245, line: 1463, baseType: !3450, offset: 21184)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1245, line: 739, elements: !1090)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1569, file: !1245, line: 1470, baseType: !1021, size: 128, align: 64, offset: 21184)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1569, file: !1245, line: 1471, baseType: !361, size: 32, offset: 21312)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1569, file: !1245, line: 1472, baseType: !115, size: 32, offset: 21344)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1569, file: !1245, line: 1474, baseType: !1568, size: 64, offset: 21376)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1569, file: !1245, line: 1475, baseType: !1043, size: 320, offset: 21440)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1569, file: !1245, line: 1478, baseType: !3457, size: 64, offset: 21760)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1245, line: 1478, flags: DIFlagFwdDecl)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1569, file: !1245, line: 1482, baseType: !361, size: 32, offset: 21824)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1569, file: !1245, line: 1489, baseType: !345, size: 64, offset: 21888)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1569, file: !1245, line: 1504, baseType: !345, size: 64, offset: 21952)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1569, file: !1245, line: 1505, baseType: !614, size: 64, offset: 22016)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1569, file: !1245, line: 1506, baseType: !613, size: 64, offset: 22080)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1569, file: !1245, line: 1507, baseType: !614, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1569, file: !1245, line: 1508, baseType: !614, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1569, file: !1245, line: 1509, baseType: !614, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1569, file: !1245, line: 1510, baseType: !1021, size: 128, align: 64, offset: 22208)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1569, file: !1245, line: 1511, baseType: !115, size: 32, offset: 22336)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1569, file: !1245, line: 1515, baseType: !3470, size: 64, offset: 22400)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1591, line: 56, size: 64, elements: !3471)
!3471 = !{!3472}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3470, file: !1591, line: 57, baseType: !1594, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1569, file: !1245, line: 1518, baseType: !3470, size: 64, offset: 22464)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1569, file: !1245, line: 1528, baseType: !1021, size: 128, align: 64, offset: 22528)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1569, file: !1245, line: 1552, baseType: !3476, size: 35328, offset: 23040)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3477, line: 430, size: 35328, elements: !3478)
!3477 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3478 = !{!3479, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3508, !3509, !3510, !3511, !3512, !3513, !3516, !3517, !3518, !3519}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3476, file: !3477, line: 432, baseType: !3480, size: 192)
!3480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3481, size: 192, elements: !461)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3482, line: 16, size: 64, elements: !3483)
!3482 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3483 = !{!3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3481, file: !3482, line: 17, baseType: !428, size: 16)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3481, file: !3482, line: 18, baseType: !428, size: 16, offset: 16)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3481, file: !3482, line: 19, baseType: !428, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3481, file: !3482, line: 19, baseType: !428, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3481, file: !3482, line: 19, baseType: !428, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3481, file: !3482, line: 19, baseType: !428, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3481, file: !3482, line: 19, baseType: !428, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3481, file: !3482, line: 20, baseType: !428, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3481, file: !3482, line: 20, baseType: !428, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3481, file: !3482, line: 20, baseType: !428, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3481, file: !3482, line: 20, baseType: !428, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3481, file: !3482, line: 20, baseType: !428, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3481, file: !3482, line: 20, baseType: !428, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3476, file: !3477, line: 436, baseType: !510, size: 64, offset: 192)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3476, file: !3477, line: 440, baseType: !430, size: 16, offset: 256)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3476, file: !3477, line: 441, baseType: !430, size: 16, offset: 272)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3476, file: !3477, line: 442, baseType: !430, size: 16, offset: 288)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3476, file: !3477, line: 443, baseType: !430, size: 16, offset: 304)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3476, file: !3477, line: 447, baseType: !510, size: 64, offset: 320)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3476, file: !3477, line: 448, baseType: !510, size: 64, offset: 384)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3476, file: !3477, line: 459, baseType: !3505, size: 256, offset: 448)
!3505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3506, size: 256, elements: !1031)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3477, line: 428, flags: DIFlagFwdDecl)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3476, file: !3477, line: 461, baseType: !510, size: 64, offset: 704)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3476, file: !3477, line: 463, baseType: !510, size: 64, offset: 768)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3476, file: !3477, line: 465, baseType: !510, size: 64, offset: 832)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3476, file: !3477, line: 466, baseType: !510, size: 64, offset: 896)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3476, file: !3477, line: 467, baseType: !510, size: 64, offset: 960)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3476, file: !3477, line: 473, baseType: !3514, size: 64, offset: 1024)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3477, line: 10, flags: DIFlagFwdDecl)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3476, file: !3477, line: 480, baseType: !510, size: 64, offset: 1088)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3476, file: !3477, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3476, file: !3477, line: 491, baseType: !609, size: 32, offset: 1184)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3476, file: !3477, line: 501, baseType: !3520, size: 33792, offset: 1536)
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3521, line: 448, size: 33792, elements: !3522)
!3521 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3522 = !{!3523, !3524, !3525, !3687, !3688, !3694, !3695}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3520, file: !3521, line: 461, baseType: !13, size: 32)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3520, file: !3521, line: 468, baseType: !510, size: 64, offset: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3520, file: !3521, line: 476, baseType: !3526, size: 64, offset: 128)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3521, line: 356, size: 33280, align: 512, elements: !3528)
!3528 = !{!3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3527, file: !3521, line: 358, baseType: !13, size: 32)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3527, file: !3521, line: 361, baseType: !13, size: 32, offset: 32)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3527, file: !3521, line: 364, baseType: !613, size: 64, offset: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3527, file: !3521, line: 367, baseType: !613, size: 64, offset: 128)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3527, file: !3521, line: 370, baseType: !613, size: 64, offset: 192)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3527, file: !3521, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3527, file: !3521, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3527, file: !3521, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3527, file: !3521, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3527, file: !3521, line: 397, baseType: !3539, size: 32768, offset: 512)
!3539 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3521, line: 348, size: 32768, elements: !3540)
!3540 = !{!3541, !3556, !3593, !3670, !3683}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3539, file: !3521, line: 349, baseType: !3542, size: 896)
!3542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3521, line: 12, size: 896, elements: !3543)
!3543 = !{!3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3555}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3542, file: !3521, line: 13, baseType: !609, size: 32)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3542, file: !3521, line: 14, baseType: !609, size: 32, offset: 32)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3542, file: !3521, line: 15, baseType: !609, size: 32, offset: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3542, file: !3521, line: 16, baseType: !609, size: 32, offset: 96)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3542, file: !3521, line: 17, baseType: !609, size: 32, offset: 128)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3542, file: !3521, line: 18, baseType: !609, size: 32, offset: 160)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3542, file: !3521, line: 19, baseType: !609, size: 32, offset: 192)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3542, file: !3521, line: 22, baseType: !3552, size: 640, offset: 224)
!3552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, size: 640, elements: !3553)
!3553 = !{!3554}
!3554 = !DISubrange(count: 20)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3542, file: !3521, line: 25, baseType: !609, size: 32, offset: 864)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3539, file: !3521, line: 350, baseType: !3557, size: 4096, align: 128)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3521, line: 34, size: 4096, align: 128, elements: !3558)
!3558 = !{!3559, !3560, !3561, !3562, !3563, !3578, !3579, !3580, !3582, !3584, !3588}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3557, file: !3521, line: 35, baseType: !428, size: 16)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3557, file: !3521, line: 36, baseType: !428, size: 16, offset: 16)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3557, file: !3521, line: 37, baseType: !428, size: 16, offset: 32)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3557, file: !3521, line: 38, baseType: !428, size: 16, offset: 48)
!3563 = !DIDerivedType(tag: DW_TAG_member, scope: !3557, file: !3521, line: 39, baseType: !3564, size: 128, offset: 64)
!3564 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3557, file: !3521, line: 39, size: 128, elements: !3565)
!3565 = !{!3566, !3571}
!3566 = !DIDerivedType(tag: DW_TAG_member, scope: !3564, file: !3521, line: 40, baseType: !3567, size: 128)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3564, file: !3521, line: 40, size: 128, elements: !3568)
!3568 = !{!3569, !3570}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3567, file: !3521, line: 41, baseType: !613, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3567, file: !3521, line: 42, baseType: !613, size: 64, offset: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, scope: !3564, file: !3521, line: 44, baseType: !3572, size: 128)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3564, file: !3521, line: 44, size: 128, elements: !3573)
!3573 = !{!3574, !3575, !3576, !3577}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3572, file: !3521, line: 45, baseType: !609, size: 32)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3572, file: !3521, line: 46, baseType: !609, size: 32, offset: 32)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3572, file: !3521, line: 47, baseType: !609, size: 32, offset: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3572, file: !3521, line: 48, baseType: !609, size: 32, offset: 96)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3557, file: !3521, line: 51, baseType: !609, size: 32, offset: 192)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3557, file: !3521, line: 52, baseType: !609, size: 32, offset: 224)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3557, file: !3521, line: 55, baseType: !3581, size: 1024, offset: 256)
!3581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, size: 1024, elements: !622)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3557, file: !3521, line: 58, baseType: !3583, size: 2048, offset: 1280)
!3583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, size: 2048, elements: !465)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3557, file: !3521, line: 60, baseType: !3585, size: 384, offset: 3328)
!3585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, size: 384, elements: !3586)
!3586 = !{!3587}
!3587 = !DISubrange(count: 12)
!3588 = !DIDerivedType(tag: DW_TAG_member, scope: !3557, file: !3521, line: 62, baseType: !3589, size: 384, offset: 3712)
!3589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3557, file: !3521, line: 62, size: 384, elements: !3590)
!3590 = !{!3591, !3592}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3589, file: !3521, line: 63, baseType: !3585, size: 384)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3589, file: !3521, line: 64, baseType: !3585, size: 384)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3539, file: !3521, line: 351, baseType: !3594, size: 1088)
!3594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3521, line: 79, size: 1088, elements: !3595)
!3595 = !{!3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3669}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3594, file: !3521, line: 80, baseType: !609, size: 32)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3594, file: !3521, line: 81, baseType: !609, size: 32, offset: 32)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3594, file: !3521, line: 82, baseType: !609, size: 32, offset: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3594, file: !3521, line: 83, baseType: !609, size: 32, offset: 96)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3594, file: !3521, line: 84, baseType: !609, size: 32, offset: 128)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3594, file: !3521, line: 85, baseType: !609, size: 32, offset: 160)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3594, file: !3521, line: 86, baseType: !609, size: 32, offset: 192)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3594, file: !3521, line: 88, baseType: !3552, size: 640, offset: 224)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3594, file: !3521, line: 89, baseType: !418, size: 8, offset: 864)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3594, file: !3521, line: 90, baseType: !418, size: 8, offset: 872)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3594, file: !3521, line: 91, baseType: !418, size: 8, offset: 880)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3594, file: !3521, line: 92, baseType: !418, size: 8, offset: 888)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3594, file: !3521, line: 93, baseType: !418, size: 8, offset: 896)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3594, file: !3521, line: 94, baseType: !418, size: 8, offset: 904)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3594, file: !3521, line: 95, baseType: !3611, size: 64, offset: 960)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3613, line: 11, size: 128, elements: !3614)
!3613 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3614 = !{!3615, !3616}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3612, file: !3613, line: 12, baseType: !496, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3612, file: !3613, line: 13, baseType: !3617, size: 64, offset: 64)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3619, line: 103, size: 1344, elements: !3620)
!3619 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3620 = !{!3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3649, !3650, !3651}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3618, file: !3619, line: 109, baseType: !510, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3618, file: !3619, line: 110, baseType: !510, size: 64, offset: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3618, file: !3619, line: 111, baseType: !510, size: 64, offset: 128)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3618, file: !3619, line: 112, baseType: !510, size: 64, offset: 192)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3618, file: !3619, line: 113, baseType: !510, size: 64, offset: 256)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3618, file: !3619, line: 114, baseType: !510, size: 64, offset: 320)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3618, file: !3619, line: 117, baseType: !510, size: 64, offset: 384)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3618, file: !3619, line: 118, baseType: !510, size: 64, offset: 448)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3618, file: !3619, line: 119, baseType: !510, size: 64, offset: 512)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3618, file: !3619, line: 120, baseType: !510, size: 64, offset: 576)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3618, file: !3619, line: 121, baseType: !510, size: 64, offset: 640)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3618, file: !3619, line: 122, baseType: !510, size: 64, offset: 704)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3618, file: !3619, line: 123, baseType: !510, size: 64, offset: 768)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3618, file: !3619, line: 124, baseType: !510, size: 64, offset: 832)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3618, file: !3619, line: 125, baseType: !510, size: 64, offset: 896)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3618, file: !3619, line: 139, baseType: !510, size: 64, offset: 960)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3618, file: !3619, line: 142, baseType: !510, size: 64, offset: 1024)
!3638 = !DIDerivedType(tag: DW_TAG_member, scope: !3618, file: !3619, line: 144, baseType: !3639, size: 64, offset: 1088)
!3639 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3618, file: !3619, line: 144, size: 64, elements: !3640)
!3640 = !{!3641, !3642, !3643}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3639, file: !3619, line: 146, baseType: !428, size: 16)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3639, file: !3619, line: 148, baseType: !613, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3639, file: !3619, line: 150, baseType: !3644, size: 64)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3619, line: 59, size: 64, elements: !3645)
!3645 = !{!3646, !3647, !3648}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3644, file: !3619, line: 61, baseType: !613, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3644, file: !3619, line: 63, baseType: !613, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3644, file: !3619, line: 65, baseType: !613, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3618, file: !3619, line: 153, baseType: !510, size: 64, offset: 1152)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3618, file: !3619, line: 154, baseType: !510, size: 64, offset: 1216)
!3651 = !DIDerivedType(tag: DW_TAG_member, scope: !3618, file: !3619, line: 156, baseType: !3652, size: 64, offset: 1280)
!3652 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3618, file: !3619, line: 156, size: 64, elements: !3653)
!3653 = !{!3654, !3655, !3656}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3652, file: !3619, line: 158, baseType: !428, size: 16)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3652, file: !3619, line: 160, baseType: !613, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3652, file: !3619, line: 162, baseType: !3657, size: 64)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3619, line: 69, size: 64, elements: !3658)
!3658 = !{!3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3657, file: !3619, line: 71, baseType: !613, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3657, file: !3619, line: 73, baseType: !613, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3657, file: !3619, line: 75, baseType: !613, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3657, file: !3619, line: 77, baseType: !613, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3657, file: !3619, line: 80, baseType: !613, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3657, file: !3619, line: 83, baseType: !613, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3657, file: !3619, line: 86, baseType: !613, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3657, file: !3619, line: 88, baseType: !613, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3657, file: !3619, line: 93, baseType: !613, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3657, file: !3619, line: 100, baseType: !613, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3594, file: !3521, line: 96, baseType: !609, size: 32, offset: 1024)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3539, file: !3521, line: 352, baseType: !3671, size: 4608, align: 512)
!3671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3521, line: 333, size: 4608, align: 512, elements: !3672)
!3672 = !{!3673, !3674, !3681}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3671, file: !3521, line: 334, baseType: !3557, size: 4096, align: 128)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3671, file: !3521, line: 335, baseType: !3675, size: 512, offset: 4096)
!3675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3521, line: 312, size: 512, elements: !3676)
!3676 = !{!3677, !3678, !3679}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3675, file: !3521, line: 313, baseType: !613, size: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3675, file: !3521, line: 314, baseType: !613, size: 64, offset: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3675, file: !3521, line: 315, baseType: !3680, size: 384, offset: 128)
!3680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !613, size: 384, elements: !2077)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3671, file: !3521, line: 336, baseType: !3682, offset: 4608)
!3682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, elements: !1994)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3539, file: !3521, line: 353, baseType: !3684, size: 32768)
!3684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 32768, elements: !3685)
!3685 = !{!3686}
!3686 = !DISubrange(count: 4096)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3520, file: !3521, line: 484, baseType: !3526, size: 64, offset: 192)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3520, file: !3521, line: 491, baseType: !3689, size: 128, offset: 256)
!3689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3521, line: 404, size: 128, elements: !3690)
!3690 = !{!3691, !3692, !3693}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3689, file: !3521, line: 424, baseType: !613, size: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3689, file: !3521, line: 432, baseType: !13, size: 32, offset: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3689, file: !3521, line: 440, baseType: !13, size: 32, offset: 96)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3520, file: !3521, line: 498, baseType: !3689, size: 128, offset: 384)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3520, file: !3521, line: 508, baseType: !3527, size: 33280, align: 512, offset: 512)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1545, file: !1546, line: 16, baseType: !1555, size: 192, offset: 512)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1545, file: !1546, line: 17, baseType: !365, size: 32, offset: 704)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !692, file: !20, line: 1240, baseType: !345, size: 64, offset: 6912)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !692, file: !20, line: 1243, baseType: !609, size: 32, offset: 6976)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !692, file: !20, line: 1245, baseType: !1303, size: 64, offset: 7040)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !692, file: !20, line: 1246, baseType: !1303, size: 64, offset: 7104)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !692, file: !20, line: 1248, baseType: !610, size: 32, offset: 7168)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !692, file: !20, line: 1249, baseType: !3704, size: 64, offset: 7232)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !20, line: 634, flags: DIFlagFwdDecl)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !692, file: !20, line: 1252, baseType: !3707, size: 256, offset: 7296)
!3707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !622)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !692, file: !20, line: 1253, baseType: !3709, size: 128, offset: 7552)
!3709 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3710, line: 21, baseType: !3711)
!3710 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3710, line: 19, size: 128, elements: !3712)
!3712 = !{!3713}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3711, file: !3710, line: 20, baseType: !3714, size: 128)
!3714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 128, elements: !2919)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !692, file: !20, line: 1255, baseType: !13, size: 32, offset: 7680)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !692, file: !20, line: 1261, baseType: !801, size: 256, offset: 7744)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !692, file: !20, line: 1267, baseType: !378, size: 64, offset: 8000)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !692, file: !20, line: 1269, baseType: !638, size: 64, offset: 8064)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !692, file: !20, line: 1271, baseType: !3720, size: 448, offset: 8128)
!3720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1312, line: 63, size: 448, elements: !3721)
!3721 = !{!3722, !3727, !3728, !3729, !3730, !3731, !3732}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3720, file: !1312, line: 64, baseType: !3723, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!510, !3726, !1310}
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3720, file: !1312, line: 66, baseType: !3723, size: 64, offset: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3720, file: !1312, line: 69, baseType: !496, size: 64, offset: 128)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3720, file: !1312, line: 70, baseType: !115, size: 32, offset: 192)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3720, file: !1312, line: 71, baseType: !13, size: 32, offset: 224)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3720, file: !1312, line: 74, baseType: !381, size: 128, offset: 256)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3720, file: !1312, line: 85, baseType: !3733, size: 64, offset: 384)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !692, file: !20, line: 1274, baseType: !805, size: 64, offset: 8576)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !692, file: !20, line: 1280, baseType: !805, size: 64, offset: 8640)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !692, file: !20, line: 1283, baseType: !115, size: 32, offset: 8704)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !692, file: !20, line: 1286, baseType: !2652, size: 32, offset: 8736)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !692, file: !20, line: 1289, baseType: !1123, size: 64, offset: 8768)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !692, file: !20, line: 1290, baseType: !1171, size: 64, offset: 8832)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !692, file: !20, line: 1297, baseType: !1975, size: 64, offset: 8896)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !692, file: !20, line: 1304, baseType: !3742, size: 64, offset: 8960)
!3742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3743, line: 49, size: 64, elements: !3744)
!3743 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3744 = !{!3745}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3742, file: !3743, line: 50, baseType: !3746, size: 64)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3743, line: 41, size: 512, align: 512, elements: !3748)
!3748 = !{!3749, !3750, !3755}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3747, file: !3743, line: 43, baseType: !394, size: 32)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3747, file: !3743, line: 45, baseType: !3751, size: 192, offset: 64)
!3751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3743, line: 29, size: 192, elements: !3752)
!3752 = !{!3753, !3754}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3751, file: !3743, line: 30, baseType: !381, size: 128)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3751, file: !3743, line: 32, baseType: !496, size: 64, offset: 128)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3747, file: !3743, line: 46, baseType: !496, size: 64, offset: 256)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !692, file: !20, line: 1305, baseType: !3742, size: 64, offset: 9024)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !692, file: !20, line: 1306, baseType: !1021, size: 128, align: 64, offset: 9088)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !692, file: !20, line: 1307, baseType: !1061, size: 256, offset: 9216)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !692, file: !20, line: 1309, baseType: !801, size: 256, offset: 9472)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !692, file: !20, line: 1314, baseType: !115, size: 32, offset: 9728)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !692, file: !20, line: 1317, baseType: !394, size: 32, align: 512, offset: 10240)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !692, file: !20, line: 1318, baseType: !381, size: 128, offset: 10304)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !692, file: !20, line: 1320, baseType: !394, size: 32, offset: 10432)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !692, file: !20, line: 1321, baseType: !381, size: 128, offset: 10496)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !686, file: !687, line: 73, baseType: !115, size: 32, offset: 128)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !686, file: !687, line: 74, baseType: !3767, size: 64, offset: 192)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !2018, line: 42, flags: DIFlagFwdDecl)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !640, file: !577, line: 141, baseType: !3771, size: 64, offset: 704)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!115, !1372, !881}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !640, file: !577, line: 142, baseType: !3775, size: 64, offset: 768)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!575, !575, !3778}
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !541)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !576, file: !577, line: 96, baseType: !691, size: 64, offset: 832)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !576, file: !577, line: 97, baseType: !510, size: 64, offset: 896)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !576, file: !577, line: 98, baseType: !345, size: 64, offset: 960)
!3783 = !DIDerivedType(tag: DW_TAG_member, scope: !576, file: !577, line: 100, baseType: !3784, size: 128, offset: 1024)
!3784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !576, file: !577, line: 100, size: 128, elements: !3785)
!3785 = !{!3786, !3787}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3784, file: !577, line: 101, baseType: !381, size: 128)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3784, file: !577, line: 102, baseType: !3788, size: 64)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !576, file: !577, line: 104, baseType: !381, size: 128, offset: 1152)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !576, file: !577, line: 105, baseType: !381, size: 128, offset: 1280)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !576, file: !577, line: 113, baseType: !3792, size: 128, offset: 1408)
!3792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !576, file: !577, line: 109, size: 128, elements: !3793)
!3793 = !{!3794, !3795, !3796}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3792, file: !577, line: 110, baseType: !1047, size: 128)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3792, file: !577, line: 111, baseType: !591, size: 128)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3792, file: !577, line: 112, baseType: !1021, size: 128, align: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !569, file: !20, line: 1968, baseType: !3798, size: 64, offset: 64)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!378, !575, !540, !3801}
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3803, line: 10, size: 128, elements: !3804)
!3803 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3804 = !{!3805, !3806}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3802, file: !3803, line: 11, baseType: !844, size: 64)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3802, file: !3803, line: 12, baseType: !345, size: 64, offset: 64)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !569, file: !20, line: 1969, baseType: !3808, size: 64, offset: 128)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!115, !3767, !540, !115}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !569, file: !20, line: 1970, baseType: !3812, size: 64, offset: 192)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!563, !540, !115, !881}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !569, file: !20, line: 1972, baseType: !3816, size: 64, offset: 256)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{!115, !575, !460, !115}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !569, file: !20, line: 1974, baseType: !3820, size: 64, offset: 320)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!115, !3767, !540, !575, !502, !881}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !569, file: !20, line: 1976, baseType: !3824, size: 64, offset: 384)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!115, !575, !540, !575}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !569, file: !20, line: 1977, baseType: !3828, size: 64, offset: 448)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!115, !540, !575}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !569, file: !20, line: 1978, baseType: !3832, size: 64, offset: 512)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!115, !3767, !540, !575, !378}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !569, file: !20, line: 1980, baseType: !3836, size: 64, offset: 576)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!115, !3767, !540, !575, !502}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !569, file: !20, line: 1982, baseType: !3828, size: 64, offset: 640)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !569, file: !20, line: 1983, baseType: !3841, size: 64, offset: 704)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!115, !3767, !540, !575, !502, !696}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !569, file: !20, line: 1985, baseType: !3845, size: 64, offset: 768)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!115, !3767, !540, !575, !540, !575, !13}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !569, file: !20, line: 1987, baseType: !3849, size: 64, offset: 832)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!115, !3767, !575, !3852}
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !20, line: 226, size: 640, elements: !3854)
!3854 = !{!3855, !3856, !3857, !3867, !3876, !3877, !3882, !3883, !3884}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3853, file: !20, line: 227, baseType: !13, size: 32)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3853, file: !20, line: 228, baseType: !502, size: 16, offset: 32)
!3857 = !DIDerivedType(tag: DW_TAG_member, scope: !3853, file: !20, line: 241, baseType: !3858, size: 32, offset: 64)
!3858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3853, file: !20, line: 241, size: 32, elements: !3859)
!3859 = !{!3860, !3861}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3858, file: !20, line: 242, baseType: !546, size: 32)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3858, file: !20, line: 243, baseType: !3862, size: 32)
!3862 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3863, line: 16, baseType: !3864)
!3863 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3863, line: 14, size: 32, elements: !3865)
!3865 = !{!3866}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3864, file: !3863, line: 15, baseType: !551, size: 32)
!3867 = !DIDerivedType(tag: DW_TAG_member, scope: !3853, file: !20, line: 245, baseType: !3868, size: 32, offset: 96)
!3868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3853, file: !20, line: 245, size: 32, elements: !3869)
!3869 = !{!3870, !3871}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3868, file: !20, line: 246, baseType: !555, size: 32)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3868, file: !20, line: 247, baseType: !3872, size: 32)
!3872 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3863, line: 20, baseType: !3873)
!3873 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3863, line: 18, size: 32, elements: !3874)
!3874 = !{!3875}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3873, file: !3863, line: 19, baseType: !559, size: 32)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3853, file: !20, line: 249, baseType: !701, size: 64, offset: 128)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3853, file: !20, line: 250, baseType: !3878, size: 128, offset: 192)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1304, line: 13, size: 128, elements: !3879)
!3879 = !{!3880, !3881}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3878, file: !1304, line: 14, baseType: !1303, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3878, file: !1304, line: 15, baseType: !496, size: 64, offset: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3853, file: !20, line: 251, baseType: !3878, size: 128, offset: 320)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3853, file: !20, line: 252, baseType: !3878, size: 128, offset: 448)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3853, file: !20, line: 259, baseType: !1887, size: 64, offset: 576)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !569, file: !20, line: 1988, baseType: !3886, size: 64, offset: 896)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!115, !3767, !1372, !3889, !609, !13}
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3891, line: 22, size: 1280, elements: !3892)
!3891 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3892 = !{!3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3890, file: !3891, line: 23, baseType: !609, size: 32)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3890, file: !3891, line: 24, baseType: !502, size: 16, offset: 32)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3890, file: !3891, line: 25, baseType: !13, size: 32, offset: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3890, file: !3891, line: 26, baseType: !2056, size: 32, offset: 96)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3890, file: !3891, line: 27, baseType: !613, size: 64, offset: 128)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3890, file: !3891, line: 28, baseType: !613, size: 64, offset: 192)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3890, file: !3891, line: 41, baseType: !613, size: 64, offset: 256)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3890, file: !3891, line: 42, baseType: !696, size: 32, offset: 320)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3890, file: !3891, line: 43, baseType: !696, size: 32, offset: 352)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3890, file: !3891, line: 44, baseType: !546, size: 32, offset: 384)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3890, file: !3891, line: 45, baseType: !555, size: 32, offset: 416)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3890, file: !3891, line: 46, baseType: !701, size: 64, offset: 448)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3890, file: !3891, line: 47, baseType: !3878, size: 128, offset: 512)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3890, file: !3891, line: 48, baseType: !3878, size: 128, offset: 640)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3890, file: !3891, line: 49, baseType: !3878, size: 128, offset: 768)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3890, file: !3891, line: 50, baseType: !3878, size: 128, offset: 896)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3890, file: !3891, line: 51, baseType: !613, size: 64, offset: 1024)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3890, file: !3891, line: 52, baseType: !613, size: 64, offset: 1088)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3890, file: !3891, line: 53, baseType: !609, size: 32, offset: 1152)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3890, file: !3891, line: 54, baseType: !609, size: 32, offset: 1184)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3890, file: !3891, line: 55, baseType: !613, size: 64, offset: 1216)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !569, file: !20, line: 1990, baseType: !3915, size: 64, offset: 960)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!492, !575, !460, !507}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !569, file: !20, line: 1991, baseType: !3919, size: 64, offset: 1024)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!115, !540, !3922, !613, !613}
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !20, line: 55, flags: DIFlagFwdDecl)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !569, file: !20, line: 1993, baseType: !3925, size: 64, offset: 1088)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{!115, !540, !115}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !569, file: !20, line: 1994, baseType: !3929, size: 64, offset: 1152)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!115, !540, !575, !1887, !13, !502}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !569, file: !20, line: 1997, baseType: !3933, size: 64, offset: 1216)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{!115, !3767, !540, !1887, !502}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !569, file: !20, line: 1999, baseType: !3937, size: 64, offset: 1280)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{!563, !3767, !575, !115}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !569, file: !20, line: 2001, baseType: !3941, size: 64, offset: 1344)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!115, !3767, !575, !563, !115}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !569, file: !20, line: 2003, baseType: !3945, size: 64, offset: 1408)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!115, !3767, !575, !3948}
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !20, line: 76, flags: DIFlagFwdDecl)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !569, file: !20, line: 2005, baseType: !3951, size: 64, offset: 1472)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!115, !575, !3948}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !569, file: !20, line: 2006, baseType: !3955, size: 64, offset: 1536)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!3958, !540}
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !20, line: 3192, size: 192, elements: !3960)
!3960 = !{!3961, !3962}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3959, file: !20, line: 3193, baseType: !1954, size: 128)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3959, file: !20, line: 3194, baseType: !609, size: 32, offset: 128)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !541, file: !20, line: 655, baseType: !691, size: 64, offset: 448)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !541, file: !20, line: 656, baseType: !536, size: 64, offset: 512)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !541, file: !20, line: 659, baseType: !345, size: 64, offset: 576)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !541, file: !20, line: 663, baseType: !510, size: 64, offset: 640)
!3967 = !DIDerivedType(tag: DW_TAG_member, scope: !541, file: !20, line: 671, baseType: !3968, size: 32, offset: 704)
!3968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !541, file: !20, line: 671, size: 32, elements: !3969)
!3969 = !{!3970, !3972}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3968, file: !20, line: 672, baseType: !3971, size: 32)
!3971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3968, file: !20, line: 673, baseType: !13, size: 32)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !541, file: !20, line: 675, baseType: !696, size: 32, offset: 736)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !541, file: !20, line: 676, baseType: !701, size: 64, offset: 768)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !541, file: !20, line: 677, baseType: !3878, size: 128, offset: 832)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !541, file: !20, line: 678, baseType: !3878, size: 128, offset: 960)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !541, file: !20, line: 679, baseType: !3878, size: 128, offset: 1088)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !541, file: !20, line: 680, baseType: !394, size: 32, offset: 1216)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !541, file: !20, line: 681, baseType: !430, size: 16, offset: 1248)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !541, file: !20, line: 682, baseType: !418, size: 8, offset: 1264)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !541, file: !20, line: 683, baseType: !418, size: 8, offset: 1272)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !541, file: !20, line: 684, baseType: !1450, size: 64, offset: 1280)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !541, file: !20, line: 691, baseType: !510, size: 64, offset: 1344)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !541, file: !20, line: 692, baseType: !1462, size: 320, offset: 1408)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !541, file: !20, line: 694, baseType: !510, size: 64, offset: 1728)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !541, file: !20, line: 695, baseType: !510, size: 64, offset: 1792)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !541, file: !20, line: 697, baseType: !1047, size: 128, offset: 1856)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !541, file: !20, line: 698, baseType: !381, size: 128, offset: 1984)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !541, file: !20, line: 707, baseType: !381, size: 128, offset: 2112)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !541, file: !20, line: 708, baseType: !381, size: 128, offset: 2240)
!3991 = !DIDerivedType(tag: DW_TAG_member, scope: !541, file: !20, line: 709, baseType: !3992, size: 128, offset: 2368)
!3992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !541, file: !20, line: 709, size: 128, elements: !3993)
!3993 = !{!3994, !3995}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3992, file: !20, line: 710, baseType: !1171, size: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3992, file: !20, line: 711, baseType: !1021, size: 128, align: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !541, file: !20, line: 713, baseType: !807, size: 64, offset: 2496)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !541, file: !20, line: 714, baseType: !807, size: 64, offset: 2560)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !541, file: !20, line: 715, baseType: !365, size: 32, offset: 2624)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !541, file: !20, line: 716, baseType: !365, size: 32, offset: 2656)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !541, file: !20, line: 717, baseType: !365, size: 32, offset: 2688)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !541, file: !20, line: 719, baseType: !365, size: 32, offset: 2720)
!4002 = !DIDerivedType(tag: DW_TAG_member, scope: !541, file: !20, line: 721, baseType: !4003, size: 64, offset: 2752)
!4003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !541, file: !20, line: 721, size: 64, elements: !4004)
!4004 = !{!4005, !4006}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4003, file: !20, line: 722, baseType: !2197, size: 64)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4003, file: !20, line: 723, baseType: !1194, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !541, file: !20, line: 725, baseType: !4008, size: 64, offset: 2816)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !20, line: 725, flags: DIFlagFwdDecl)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !541, file: !20, line: 726, baseType: !537, size: 1536, align: 64, offset: 2880)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !541, file: !20, line: 727, baseType: !381, size: 128, offset: 4416)
!4012 = !DIDerivedType(tag: DW_TAG_member, scope: !541, file: !20, line: 728, baseType: !4013, size: 64, offset: 4544)
!4013 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !541, file: !20, line: 728, size: 64, elements: !4014)
!4014 = !{!4015, !4016, !4019, !4020}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4013, file: !20, line: 729, baseType: !2602, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4013, file: !20, line: 730, baseType: !4017, size: 64)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !20, line: 730, flags: DIFlagFwdDecl)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4013, file: !20, line: 731, baseType: !460, size: 64)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4013, file: !20, line: 732, baseType: !13, size: 32)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !541, file: !20, line: 735, baseType: !610, size: 32, offset: 4608)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !541, file: !20, line: 738, baseType: !610, size: 32, offset: 4640)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !541, file: !20, line: 739, baseType: !3704, size: 64, offset: 4672)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !541, file: !20, line: 750, baseType: !345, size: 64, offset: 4736)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !537, file: !20, line: 474, baseType: !1954, size: 128, offset: 64)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !537, file: !20, line: 475, baseType: !1462, size: 320, offset: 192)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !537, file: !20, line: 476, baseType: !346, size: 32, offset: 512)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !537, file: !20, line: 477, baseType: !365, size: 32, offset: 544)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !537, file: !20, line: 482, baseType: !1743, size: 128, offset: 576)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !537, file: !20, line: 483, baseType: !510, size: 64, offset: 704)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !537, file: !20, line: 484, baseType: !510, size: 64, offset: 768)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !537, file: !20, line: 485, baseType: !4033, size: 64, offset: 832)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4035)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !20, line: 404, size: 1280, elements: !4036)
!4036 = !{!4037, !4041, !4111, !4115, !4119, !4125, !4130, !4134, !4139, !4143, !4147, !4151, !4152, !4156, !4160, !4164, !4169, !4173, !4180, !4181}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4035, file: !20, line: 405, baseType: !4038, size: 64)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!115, !2389, !1206}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4035, file: !20, line: 406, baseType: !4042, size: 64, offset: 64)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!115, !1887, !4045}
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !44, line: 293, size: 1536, elements: !4047)
!4047 = !{!4048, !4078, !4092}
!4048 = !DIDerivedType(tag: DW_TAG_member, scope: !4046, file: !44, line: 295, baseType: !4049, size: 512)
!4049 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4046, file: !44, line: 295, size: 512, elements: !4050)
!4050 = !{!4051, !4077}
!4051 = !DIDerivedType(tag: DW_TAG_member, scope: !4049, file: !44, line: 296, baseType: !4052, size: 448)
!4052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4049, file: !44, line: 296, size: 448, elements: !4053)
!4053 = !{!4054, !4055, !4064, !4065, !4066, !4075, !4076}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4052, file: !44, line: 298, baseType: !510, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, scope: !4052, file: !44, line: 299, baseType: !4056, size: 128, offset: 64)
!4056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4052, file: !44, line: 299, size: 128, elements: !4057)
!4057 = !{!4058, !4059}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4056, file: !44, line: 300, baseType: !381, size: 128)
!4059 = !DIDerivedType(tag: DW_TAG_member, scope: !4056, file: !44, line: 302, baseType: !4060, size: 128)
!4060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4056, file: !44, line: 302, size: 128, elements: !4061)
!4061 = !{!4062, !4063}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4060, file: !44, line: 303, baseType: !345, size: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4060, file: !44, line: 305, baseType: !13, size: 32, offset: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4052, file: !44, line: 310, baseType: !536, size: 64, offset: 192)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4052, file: !44, line: 311, baseType: !510, size: 64, offset: 256)
!4066 = !DIDerivedType(tag: DW_TAG_member, scope: !4052, file: !44, line: 312, baseType: !4067, size: 64, offset: 320)
!4067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4052, file: !44, line: 312, size: 64, elements: !4068)
!4068 = !{!4069, !4070}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4067, file: !44, line: 313, baseType: !345, size: 64)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4067, file: !44, line: 314, baseType: !4071, size: 64)
!4071 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !44, line: 257, baseType: !4072)
!4072 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !44, line: 255, size: 64, elements: !4073)
!4073 = !{!4074}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4072, file: !44, line: 256, baseType: !510, size: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4052, file: !44, line: 316, baseType: !365, size: 32, offset: 384)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4052, file: !44, line: 317, baseType: !365, size: 32, offset: 416)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4049, file: !44, line: 323, baseType: !2390, size: 512, align: 128)
!4078 = !DIDerivedType(tag: DW_TAG_member, scope: !4046, file: !44, line: 325, baseType: !4079, size: 512, offset: 512)
!4079 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4046, file: !44, line: 325, size: 512, elements: !4080)
!4080 = !{!4081, !4091}
!4081 = !DIDerivedType(tag: DW_TAG_member, scope: !4079, file: !44, line: 326, baseType: !4082, size: 320)
!4082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4079, file: !44, line: 326, size: 320, elements: !4083)
!4083 = !{!4084, !4085, !4086, !4087, !4088, !4089, !4090}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4082, file: !44, line: 327, baseType: !510, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4082, file: !44, line: 328, baseType: !510, size: 64, offset: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4082, file: !44, line: 329, baseType: !510, size: 64, offset: 128)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4082, file: !44, line: 331, baseType: !365, size: 32, offset: 192)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4082, file: !44, line: 332, baseType: !365, size: 32, offset: 224)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4082, file: !44, line: 333, baseType: !365, size: 32, offset: 256)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4082, file: !44, line: 335, baseType: !13, size: 32, offset: 288)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4079, file: !44, line: 339, baseType: !2390, size: 512, align: 128)
!4092 = !DIDerivedType(tag: DW_TAG_member, scope: !4046, file: !44, line: 341, baseType: !4093, size: 512, offset: 1024)
!4093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4046, file: !44, line: 341, size: 512, elements: !4094)
!4094 = !{!4095, !4104, !4110}
!4095 = !DIDerivedType(tag: DW_TAG_member, scope: !4093, file: !44, line: 342, baseType: !4096, size: 384)
!4096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4093, file: !44, line: 342, size: 384, elements: !4097)
!4097 = !{!4098, !4099, !4100, !4101, !4102, !4103}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4096, file: !44, line: 343, baseType: !510, size: 64)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4096, file: !44, line: 344, baseType: !510, size: 64, offset: 64)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4096, file: !44, line: 346, baseType: !345, size: 64, offset: 128)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4096, file: !44, line: 347, baseType: !345, size: 64, offset: 192)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4096, file: !44, line: 348, baseType: !345, size: 64, offset: 256)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4096, file: !44, line: 349, baseType: !345, size: 64, offset: 320)
!4104 = !DIDerivedType(tag: DW_TAG_member, scope: !4093, file: !44, line: 352, baseType: !4105, size: 256)
!4105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4093, file: !44, line: 352, size: 256, elements: !4106)
!4106 = !{!4107, !4108, !4109}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4105, file: !44, line: 353, baseType: !510, size: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4105, file: !44, line: 354, baseType: !510, size: 64, offset: 64)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4105, file: !44, line: 356, baseType: !381, size: 128, offset: 128)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4093, file: !44, line: 359, baseType: !2390, size: 512, align: 128)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4035, file: !20, line: 409, baseType: !4112, size: 64, offset: 128)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{!115, !536, !1206}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4035, file: !20, line: 412, baseType: !4116, size: 64, offset: 192)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!881, !536, !4045}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4035, file: !20, line: 414, baseType: !4120, size: 64, offset: 256)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{null, !4123}
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !20, line: 310, flags: DIFlagFwdDecl)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4035, file: !20, line: 416, baseType: !4126, size: 64, offset: 320)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!115, !1887, !536, !701, !13, !4129, !2617}
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4035, file: !20, line: 419, baseType: !4131, size: 64, offset: 384)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{!115, !1887, !536, !701, !13, !13, !2389, !345}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4035, file: !20, line: 424, baseType: !4135, size: 64, offset: 448)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!4138, !536, !4138}
!4138 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !347, line: 131, baseType: !613)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4035, file: !20, line: 425, baseType: !4140, size: 64, offset: 512)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{null, !4045, !507, !507}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4035, file: !20, line: 426, baseType: !4144, size: 64, offset: 576)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!881, !4045, !346}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4035, file: !20, line: 427, baseType: !4148, size: 64, offset: 640)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{null, !4045}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4035, file: !20, line: 428, baseType: !2216, size: 64, offset: 704)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4035, file: !20, line: 433, baseType: !4153, size: 64, offset: 768)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DISubroutineType(types: !4155)
!4155 = !{!115, !536, !4045, !4045, !80}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4035, file: !20, line: 435, baseType: !4157, size: 64, offset: 832)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{!115, !4045}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4035, file: !20, line: 436, baseType: !4161, size: 64, offset: 896)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!881, !4045, !507, !507}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4035, file: !20, line: 438, baseType: !4165, size: 64, offset: 960)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = !DISubroutineType(types: !4167)
!4167 = !{null, !4045, !4168, !4168}
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4035, file: !20, line: 439, baseType: !4170, size: 64, offset: 1024)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!115, !536, !2389}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4035, file: !20, line: 442, baseType: !4174, size: 64, offset: 1088)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!115, !4177, !1887, !4179}
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !20, line: 66, flags: DIFlagFwdDecl)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4035, file: !20, line: 444, baseType: !2609, size: 64, offset: 1152)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4035, file: !20, line: 445, baseType: !4182, size: 64, offset: 1216)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!115, !2219, !2241}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !537, file: !20, line: 486, baseType: !510, size: 64, offset: 896)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !537, file: !20, line: 487, baseType: !1462, size: 320, offset: 960)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !537, file: !20, line: 488, baseType: !2652, size: 32, offset: 1280)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !537, file: !20, line: 489, baseType: !394, size: 32, offset: 1312)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !537, file: !20, line: 490, baseType: !381, size: 128, offset: 1344)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !537, file: !20, line: 491, baseType: !345, size: 64, offset: 1472)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !527, file: !486, line: 180, baseType: !4192, size: 64, offset: 320)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{!492, !1887, !387, !526, !460, !701, !507}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !527, file: !486, line: 182, baseType: !4192, size: 64, offset: 384)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !527, file: !486, line: 184, baseType: !4197, size: 64, offset: 448)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!115, !1887, !387, !526, !2280}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !515, file: !486, line: 90, baseType: !4201, size: 64, offset: 192)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !515, file: !486, line: 91, baseType: !4203, size: 64, offset: 256)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !476, file: !375, line: 120, baseType: !4205, size: 64, offset: 192)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!4208, !443}
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4210)
!4210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !88, line: 39, size: 384, elements: !4211)
!4211 = !{!4212, !4213, !4217, !4221, !4227, !4231}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4210, file: !88, line: 40, baseType: !87, size: 32)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4210, file: !88, line: 41, baseType: !4214, size: 64, offset: 64)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!881}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4210, file: !88, line: 42, baseType: !4218, size: 64, offset: 128)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!345}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4210, file: !88, line: 43, baseType: !4222, size: 64, offset: 192)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!2741, !4225}
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !88, line: 19, flags: DIFlagFwdDecl)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4210, file: !88, line: 44, baseType: !4228, size: 64, offset: 256)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!2741}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4210, file: !88, line: 45, baseType: !844, size: 64, offset: 320)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !476, file: !375, line: 121, baseType: !4233, size: 64, offset: 256)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!2741, !443}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !476, file: !375, line: 122, baseType: !4237, size: 64, offset: 320)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{null, !443, !4240, !4241}
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !374, file: !375, line: 70, baseType: !4243, size: 64, offset: 384)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !716, line: 190, size: 1152, elements: !4245)
!4245 = !{!4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4337, !4338, !4339, !4340, !4341, !4344}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4244, file: !716, line: 191, baseType: !365, size: 32)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4244, file: !716, line: 192, baseType: !365, size: 32, offset: 32)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4244, file: !716, line: 202, baseType: !4243, size: 64, offset: 64)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4244, file: !716, line: 203, baseType: !378, size: 64, offset: 128)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4244, file: !716, line: 205, baseType: !913, size: 192, align: 64, offset: 192)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4244, file: !716, line: 207, baseType: !2741, size: 64, offset: 384)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4244, file: !716, line: 208, baseType: !13, size: 32, offset: 448)
!4253 = !DIDerivedType(tag: DW_TAG_member, scope: !4244, file: !716, line: 209, baseType: !4254, size: 256, offset: 512)
!4254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4244, file: !716, line: 209, size: 256, elements: !4255)
!4255 = !{!4256, !4265, !4269}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4254, file: !716, line: 210, baseType: !4257, size: 256)
!4257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !716, line: 153, size: 256, elements: !4258)
!4258 = !{!4259, !4260, !4261, !4264}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4257, file: !716, line: 154, baseType: !510, size: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4257, file: !716, line: 156, baseType: !1746, size: 64, offset: 64)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4257, file: !716, line: 162, baseType: !4262, size: 64, offset: 128)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !716, line: 162, flags: DIFlagFwdDecl)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4257, file: !716, line: 167, baseType: !510, size: 64, offset: 192)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4254, file: !716, line: 211, baseType: !4266, size: 64)
!4266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !716, line: 170, size: 64, elements: !4267)
!4267 = !{!4268}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4266, file: !716, line: 171, baseType: !4243, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4254, file: !716, line: 212, baseType: !4270, size: 256)
!4270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !716, line: 174, size: 256, elements: !4271)
!4271 = !{!4272, !4332, !4335, !4336}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4270, file: !716, line: 175, baseType: !4273, size: 64)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4275)
!4275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !716, line: 271, size: 768, elements: !4276)
!4276 = !{!4277, !4297, !4301, !4305, !4309, !4313, !4317, !4321, !4322, !4323, !4324, !4328}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4275, file: !716, line: 276, baseType: !4278, size: 64)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = !DISubroutineType(types: !4280)
!4280 = !{!115, !4281}
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !716, line: 251, size: 1216, elements: !4283)
!4283 = !{!4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4282, file: !716, line: 253, baseType: !4243, size: 64)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4282, file: !716, line: 254, baseType: !1887, size: 64, offset: 64)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4282, file: !716, line: 255, baseType: !1243, size: 64, offset: 128)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4282, file: !716, line: 256, baseType: !345, size: 64, offset: 192)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4282, file: !716, line: 259, baseType: !801, size: 256, offset: 256)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4282, file: !716, line: 260, baseType: !801, size: 256, offset: 512)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4282, file: !716, line: 261, baseType: !115, size: 32, offset: 768)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4282, file: !716, line: 262, baseType: !381, size: 128, offset: 832)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4282, file: !716, line: 263, baseType: !460, size: 64, offset: 960)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4282, file: !716, line: 265, baseType: !507, size: 64, offset: 1024)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4282, file: !716, line: 266, baseType: !881, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4282, file: !716, line: 267, baseType: !881, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4282, file: !716, line: 268, baseType: !2325, size: 64, offset: 1152)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4275, file: !716, line: 277, baseType: !4298, size: 64, offset: 64)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = !DISubroutineType(types: !4300)
!4300 = !{null, !4281}
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4275, file: !716, line: 290, baseType: !4302, size: 64, offset: 128)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DISubroutineType(types: !4304)
!4304 = !{!115, !1243, !345}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4275, file: !716, line: 292, baseType: !4306, size: 64, offset: 192)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{!345, !1243, !2210}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4275, file: !716, line: 293, baseType: !4310, size: 64, offset: 256)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!345, !1243, !345, !2210}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4275, file: !716, line: 294, baseType: !4314, size: 64, offset: 320)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{null, !1243, !345}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4275, file: !716, line: 296, baseType: !4318, size: 64, offset: 384)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = !DISubroutineType(types: !4320)
!4320 = !{!492, !4281, !460, !507, !701}
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4275, file: !716, line: 306, baseType: !507, size: 64, offset: 448)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4275, file: !716, line: 313, baseType: !881, size: 8, offset: 512)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4275, file: !716, line: 314, baseType: !4318, size: 64, offset: 576)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4275, file: !716, line: 317, baseType: !4325, size: 64, offset: 640)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{!2267, !4281, !2269}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4275, file: !716, line: 320, baseType: !4329, size: 64, offset: 704)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = !DISubroutineType(types: !4331)
!4331 = !{!115, !4281, !2280}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4270, file: !716, line: 176, baseType: !4333, size: 64, offset: 64)
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4334 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !716, line: 35, flags: DIFlagFwdDecl)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4270, file: !716, line: 177, baseType: !701, size: 64, offset: 128)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4270, file: !716, line: 178, baseType: !4243, size: 64, offset: 192)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4244, file: !716, line: 215, baseType: !345, size: 64, offset: 768)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4244, file: !716, line: 221, baseType: !613, size: 64, offset: 832)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4244, file: !716, line: 223, baseType: !430, size: 16, offset: 896)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4244, file: !716, line: 224, baseType: !502, size: 16, offset: 912)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4244, file: !716, line: 225, baseType: !4342, size: 64, offset: 960)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !716, line: 36, flags: DIFlagFwdDecl)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4244, file: !716, line: 227, baseType: !1021, size: 128, align: 64, offset: 1024)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !374, file: !375, line: 71, baseType: !357, size: 32, offset: 448)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !374, file: !375, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !374, file: !375, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !374, file: !375, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !374, file: !375, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !374, file: !375, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !371, file: !100, line: 707, baseType: !370, size: 64, offset: 512)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !371, file: !100, line: 709, baseType: !4353, size: 64, offset: 576)
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4354, size: 64)
!4354 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !100, line: 37, flags: DIFlagFwdDecl)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !371, file: !100, line: 711, baseType: !378, size: 64, offset: 640)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !371, file: !100, line: 712, baseType: !4357, size: 64, offset: 704)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4359)
!4359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !100, line: 89, size: 384, elements: !4360)
!4360 = !{!4361, !4362, !4363, !4369, !4374, !4378}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4359, file: !100, line: 90, baseType: !378, size: 64)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4359, file: !100, line: 91, baseType: !512, size: 64, offset: 64)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4359, file: !100, line: 92, baseType: !4364, size: 64, offset: 128)
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = !DISubroutineType(types: !4366)
!4366 = !{!115, !4367, !455}
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !371)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4359, file: !100, line: 93, baseType: !4370, size: 64, offset: 192)
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = !DISubroutineType(types: !4372)
!4372 = !{!460, !4367, !4373, !4240, !4241}
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4359, file: !100, line: 95, baseType: !4375, size: 64, offset: 256)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = !DISubroutineType(types: !4377)
!4377 = !{null, !370}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4359, file: !100, line: 97, baseType: !4379, size: 64, offset: 320)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4381)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !107, line: 286, size: 1472, elements: !4382)
!4382 = !{!4383, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4381, file: !107, line: 287, baseType: !4384, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = !DISubroutineType(types: !4386)
!4386 = !{!115, !370}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4381, file: !107, line: 288, baseType: !4375, size: 64, offset: 64)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4381, file: !107, line: 289, baseType: !4384, size: 64, offset: 128)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4381, file: !107, line: 290, baseType: !4384, size: 64, offset: 192)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4381, file: !107, line: 291, baseType: !4384, size: 64, offset: 256)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4381, file: !107, line: 292, baseType: !4384, size: 64, offset: 320)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4381, file: !107, line: 293, baseType: !4384, size: 64, offset: 384)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4381, file: !107, line: 294, baseType: !4384, size: 64, offset: 448)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4381, file: !107, line: 295, baseType: !4384, size: 64, offset: 512)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4381, file: !107, line: 296, baseType: !4384, size: 64, offset: 576)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4381, file: !107, line: 297, baseType: !4384, size: 64, offset: 640)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4381, file: !107, line: 298, baseType: !4384, size: 64, offset: 704)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4381, file: !107, line: 299, baseType: !4384, size: 64, offset: 768)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4381, file: !107, line: 300, baseType: !4384, size: 64, offset: 832)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4381, file: !107, line: 301, baseType: !4384, size: 64, offset: 896)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4381, file: !107, line: 302, baseType: !4384, size: 64, offset: 960)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4381, file: !107, line: 303, baseType: !4384, size: 64, offset: 1024)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4381, file: !107, line: 304, baseType: !4384, size: 64, offset: 1088)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4381, file: !107, line: 305, baseType: !4384, size: 64, offset: 1152)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4381, file: !107, line: 306, baseType: !4384, size: 64, offset: 1216)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4381, file: !107, line: 307, baseType: !4384, size: 64, offset: 1280)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4381, file: !107, line: 308, baseType: !4384, size: 64, offset: 1344)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4381, file: !107, line: 309, baseType: !4384, size: 64, offset: 1408)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !371, file: !100, line: 714, baseType: !4410, size: 64, offset: 768)
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4412)
!4412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4413, line: 80, size: 1344, elements: !4414)
!4413 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4414 = !{!4415, !4416, !4417, !4418, !4419, !4420, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4478}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4412, file: !4413, line: 81, baseType: !378, size: 64)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4412, file: !4413, line: 82, baseType: !378, size: 64, offset: 64)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4412, file: !4413, line: 83, baseType: !512, size: 64, offset: 128)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4412, file: !4413, line: 84, baseType: !512, size: 64, offset: 192)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4412, file: !4413, line: 85, baseType: !512, size: 64, offset: 256)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4412, file: !4413, line: 87, baseType: !4421, size: 64, offset: 320)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = !DISubroutineType(types: !4423)
!4423 = !{!115, !370, !4424}
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !94, line: 96, size: 1152, elements: !4426)
!4426 = !{!4427, !4428, !4429, !4430, !4431, !4432, !4433, !4437, !4441, !4442, !4443, !4444, !4445, !4453, !4454, !4455, !4456, !4457, !4458}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4425, file: !94, line: 97, baseType: !378, size: 64)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4425, file: !94, line: 98, baseType: !4410, size: 64, offset: 64)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4425, file: !94, line: 100, baseType: !730, size: 64, offset: 128)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4425, file: !94, line: 101, baseType: !378, size: 64, offset: 192)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4425, file: !94, line: 103, baseType: !881, size: 8, offset: 256)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4425, file: !94, line: 104, baseType: !93, size: 32, offset: 288)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4425, file: !94, line: 106, baseType: !4434, size: 64, offset: 320)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4436)
!4436 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !94, line: 106, flags: DIFlagFwdDecl)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4425, file: !94, line: 107, baseType: !4438, size: 64, offset: 384)
!4438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64)
!4439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4440)
!4440 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !94, line: 107, flags: DIFlagFwdDecl)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4425, file: !94, line: 109, baseType: !4384, size: 64, offset: 448)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4425, file: !94, line: 110, baseType: !4375, size: 64, offset: 512)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4425, file: !94, line: 111, baseType: !4384, size: 64, offset: 576)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4425, file: !94, line: 112, baseType: !4375, size: 64, offset: 640)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4425, file: !94, line: 113, baseType: !4446, size: 64, offset: 704)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = !DISubroutineType(types: !4448)
!4448 = !{!115, !370, !4449}
!4449 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !107, line: 60, baseType: !4450)
!4450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !107, line: 58, size: 32, elements: !4451)
!4451 = !{!4452}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4450, file: !107, line: 59, baseType: !115, size: 32)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4425, file: !94, line: 114, baseType: !4384, size: 64, offset: 768)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4425, file: !94, line: 115, baseType: !512, size: 64, offset: 832)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4425, file: !94, line: 116, baseType: !512, size: 64, offset: 896)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4425, file: !94, line: 118, baseType: !4379, size: 64, offset: 960)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4425, file: !94, line: 119, baseType: !4375, size: 64, offset: 1024)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4425, file: !94, line: 121, baseType: !4459, size: 64, offset: 1088)
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4460, size: 64)
!4460 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !94, line: 121, flags: DIFlagFwdDecl)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4412, file: !4413, line: 88, baseType: !4364, size: 64, offset: 384)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4412, file: !4413, line: 89, baseType: !4384, size: 64, offset: 448)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4412, file: !4413, line: 90, baseType: !4375, size: 64, offset: 512)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4412, file: !4413, line: 91, baseType: !4375, size: 64, offset: 576)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4412, file: !4413, line: 92, baseType: !4375, size: 64, offset: 640)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4412, file: !4413, line: 94, baseType: !4384, size: 64, offset: 704)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4412, file: !4413, line: 95, baseType: !4384, size: 64, offset: 768)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4412, file: !4413, line: 97, baseType: !4446, size: 64, offset: 832)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4412, file: !4413, line: 98, baseType: !4384, size: 64, offset: 896)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4412, file: !4413, line: 100, baseType: !4384, size: 64, offset: 960)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4412, file: !4413, line: 102, baseType: !4384, size: 64, offset: 1024)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4412, file: !4413, line: 103, baseType: !4375, size: 64, offset: 1088)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4412, file: !4413, line: 105, baseType: !4379, size: 64, offset: 1152)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4412, file: !4413, line: 107, baseType: !4475, size: 64, offset: 1216)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4477)
!4477 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4413, line: 107, flags: DIFlagFwdDecl)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4412, file: !4413, line: 109, baseType: !881, size: 8, offset: 1280)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !371, file: !100, line: 715, baseType: !4424, size: 64, offset: 832)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !371, file: !100, line: 717, baseType: !345, size: 64, offset: 896)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !371, file: !100, line: 719, baseType: !345, size: 64, offset: 960)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !371, file: !100, line: 721, baseType: !801, size: 256, offset: 1024)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !371, file: !100, line: 725, baseType: !4484, size: 448, offset: 1280)
!4484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !100, line: 517, size: 448, elements: !4485)
!4485 = !{!4486, !4487, !4488, !4489}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4484, file: !100, line: 518, baseType: !381, size: 128)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4484, file: !100, line: 519, baseType: !381, size: 128, offset: 128)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4484, file: !100, line: 520, baseType: !381, size: 128, offset: 256)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4484, file: !100, line: 521, baseType: !99, size: 32, offset: 384)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !371, file: !100, line: 726, baseType: !4491, size: 2496, offset: 1728)
!4491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !107, line: 663, size: 2496, elements: !4492)
!4492 = !{!4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4575, !4579}
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4491, file: !107, line: 664, baseType: !4449, size: 32)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4491, file: !107, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4491, file: !107, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4491, file: !107, line: 667, baseType: !881, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4491, file: !107, line: 668, baseType: !881, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4491, file: !107, line: 669, baseType: !881, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4491, file: !107, line: 670, baseType: !881, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4491, file: !107, line: 671, baseType: !881, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4491, file: !107, line: 672, baseType: !881, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4491, file: !107, line: 673, baseType: !881, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4491, file: !107, line: 674, baseType: !881, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4491, file: !107, line: 675, baseType: !609, size: 32, offset: 64)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4491, file: !107, line: 676, baseType: !394, size: 32, offset: 96)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4491, file: !107, line: 678, baseType: !381, size: 128, offset: 128)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4491, file: !107, line: 679, baseType: !750, size: 256, offset: 256)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4491, file: !107, line: 680, baseType: !4509, size: 64, offset: 512)
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4511, line: 43, size: 1536, elements: !4512)
!4511 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4512 = !{!4513, !4514, !4515, !4516, !4517, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534}
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4510, file: !4511, line: 44, baseType: !378, size: 64)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4510, file: !4511, line: 45, baseType: !115, size: 32, offset: 64)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4510, file: !4511, line: 46, baseType: !381, size: 128, offset: 128)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4510, file: !4511, line: 47, baseType: !394, size: 32, offset: 256)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4510, file: !4511, line: 48, baseType: !4518, size: 64, offset: 320)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !107, line: 629, flags: DIFlagFwdDecl)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4510, file: !4511, line: 49, baseType: !1043, size: 320, offset: 384)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4510, file: !4511, line: 50, baseType: !510, size: 64, offset: 704)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4510, file: !4511, line: 51, baseType: !1692, size: 64, offset: 768)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4510, file: !4511, line: 52, baseType: !1692, size: 64, offset: 832)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4510, file: !4511, line: 53, baseType: !1692, size: 64, offset: 896)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4510, file: !4511, line: 54, baseType: !1692, size: 64, offset: 960)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4510, file: !4511, line: 55, baseType: !1692, size: 64, offset: 1024)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4510, file: !4511, line: 56, baseType: !510, size: 64, offset: 1088)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4510, file: !4511, line: 57, baseType: !510, size: 64, offset: 1152)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4510, file: !4511, line: 58, baseType: !510, size: 64, offset: 1216)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4510, file: !4511, line: 59, baseType: !510, size: 64, offset: 1280)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4510, file: !4511, line: 60, baseType: !510, size: 64, offset: 1344)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4510, file: !4511, line: 61, baseType: !370, size: 64, offset: 1408)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4510, file: !4511, line: 62, baseType: !881, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4510, file: !4511, line: 63, baseType: !881, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4491, file: !107, line: 681, baseType: !881, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4491, file: !107, line: 682, baseType: !881, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4491, file: !107, line: 683, baseType: !881, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4491, file: !107, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4491, file: !107, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4491, file: !107, line: 690, baseType: !1684, size: 512, offset: 640)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4491, file: !107, line: 691, baseType: !613, size: 64, offset: 1152)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4491, file: !107, line: 692, baseType: !1061, size: 256, offset: 1216)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4491, file: !107, line: 693, baseType: !1555, size: 192, offset: 1472)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4491, file: !107, line: 694, baseType: !4518, size: 64, offset: 1664)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4491, file: !107, line: 695, baseType: !365, size: 32, offset: 1728)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4491, file: !107, line: 696, baseType: !365, size: 32, offset: 1760)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4491, file: !107, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4491, file: !107, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4491, file: !107, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4491, file: !107, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4491, file: !107, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4491, file: !107, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4491, file: !107, line: 703, baseType: !881, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4491, file: !107, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4491, file: !107, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4491, file: !107, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4491, file: !107, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4491, file: !107, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4491, file: !107, line: 709, baseType: !13, size: 32, offset: 1824)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4491, file: !107, line: 710, baseType: !106, size: 32, offset: 1856)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4491, file: !107, line: 711, baseType: !114, size: 32, offset: 1888)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4491, file: !107, line: 712, baseType: !114, size: 32, offset: 1920)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4491, file: !107, line: 713, baseType: !115, size: 32, offset: 1952)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4491, file: !107, line: 714, baseType: !115, size: 32, offset: 1984)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4491, file: !107, line: 715, baseType: !613, size: 64, offset: 2048)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4491, file: !107, line: 716, baseType: !613, size: 64, offset: 2112)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4491, file: !107, line: 717, baseType: !613, size: 64, offset: 2176)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4491, file: !107, line: 718, baseType: !613, size: 64, offset: 2240)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4491, file: !107, line: 720, baseType: !4570, size: 64, offset: 2304)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !107, line: 632, size: 64, elements: !4572)
!4572 = !{!4573, !4574}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4571, file: !107, line: 633, baseType: !394, size: 32)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4571, file: !107, line: 634, baseType: !13, size: 32, offset: 32)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4491, file: !107, line: 721, baseType: !4576, size: 64, offset: 2368)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{null, !370, !797}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4491, file: !107, line: 722, baseType: !4580, size: 64, offset: 2432)
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !107, line: 722, flags: DIFlagFwdDecl)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !371, file: !100, line: 727, baseType: !4583, size: 64, offset: 4224)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !107, line: 742, size: 1792, elements: !4585)
!4585 = !{!4586, !4587, !4588, !4592, !4593, !4594}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4584, file: !107, line: 743, baseType: !4381, size: 1472)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4584, file: !107, line: 744, baseType: !4384, size: 64, offset: 1472)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4584, file: !107, line: 745, baseType: !4589, size: 64, offset: 1536)
!4589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4590, size: 64)
!4590 = !DISubroutineType(types: !4591)
!4591 = !{null, !370, !881}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4584, file: !107, line: 746, baseType: !4384, size: 64, offset: 1600)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4584, file: !107, line: 747, baseType: !4375, size: 64, offset: 1664)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4584, file: !107, line: 748, baseType: !4375, size: 64, offset: 1728)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !371, file: !100, line: 736, baseType: !4596, size: 128, offset: 4288)
!4596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !100, line: 529, size: 128, elements: !4597)
!4597 = !{!4598, !4602}
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4596, file: !100, line: 531, baseType: !4599, size: 64)
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4601, line: 13, flags: DIFlagFwdDecl)
!4601 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4596, file: !100, line: 532, baseType: !4603, size: 64, offset: 64)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !100, line: 49, flags: DIFlagFwdDecl)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !371, file: !100, line: 738, baseType: !4606, size: 64, offset: 4416)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4608)
!4608 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !100, line: 738, flags: DIFlagFwdDecl)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !371, file: !100, line: 740, baseType: !4610, size: 64, offset: 4480)
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !371, file: !100, line: 741, baseType: !613, size: 64, offset: 4544)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !371, file: !100, line: 746, baseType: !613, size: 64, offset: 4608)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !371, file: !100, line: 747, baseType: !4614, size: 64, offset: 4672)
!4614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4615, size: 64)
!4615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4616)
!4616 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !100, line: 747, flags: DIFlagFwdDecl)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !371, file: !100, line: 749, baseType: !4618, size: 64, offset: 4736)
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !100, line: 428, size: 128, elements: !4620)
!4620 = !{!4621, !4622, !4623}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4619, file: !100, line: 433, baseType: !13, size: 32)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4619, file: !100, line: 434, baseType: !13, size: 32, offset: 32)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4619, file: !100, line: 435, baseType: !510, size: 64, offset: 64)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !371, file: !100, line: 751, baseType: !381, size: 128, offset: 4800)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !371, file: !100, line: 762, baseType: !4626, size: 64, offset: 4928)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !100, line: 762, flags: DIFlagFwdDecl)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !371, file: !100, line: 770, baseType: !4629, offset: 4992)
!4629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4630, line: 5, elements: !1090)
!4630 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !371, file: !100, line: 772, baseType: !4632, size: 64, offset: 4992)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4634, line: 18, flags: DIFlagFwdDecl)
!4634 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !371, file: !100, line: 773, baseType: !4636, size: 64, offset: 5056)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4413, line: 22, flags: DIFlagFwdDecl)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !371, file: !100, line: 776, baseType: !115, size: 32, offset: 5120)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !371, file: !100, line: 778, baseType: !696, size: 32, offset: 5152)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !371, file: !100, line: 779, baseType: !609, size: 32, offset: 5184)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !371, file: !100, line: 781, baseType: !394, size: 32, offset: 5216)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !371, file: !100, line: 782, baseType: !381, size: 128, offset: 5248)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !371, file: !100, line: 784, baseType: !4644, size: 64, offset: 5376)
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4645, size: 64)
!4645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4646)
!4646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4647, line: 52, size: 768, elements: !4648)
!4647 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4648 = !{!4649, !4650, !4651, !4652, !4653, !4657, !4661, !4662, !4663, !4664, !4668, !4672}
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4646, file: !4647, line: 53, baseType: !378, size: 64)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4646, file: !4647, line: 55, baseType: !512, size: 64, offset: 64)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4646, file: !4647, line: 56, baseType: !512, size: 64, offset: 128)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4646, file: !4647, line: 58, baseType: !4364, size: 64, offset: 192)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4646, file: !4647, line: 59, baseType: !4654, size: 64, offset: 256)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{!460, !4367, !4373}
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4646, file: !4647, line: 61, baseType: !4658, size: 64, offset: 320)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{null, !4644}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4646, file: !4647, line: 62, baseType: !4375, size: 64, offset: 384)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4646, file: !4647, line: 64, baseType: !4384, size: 64, offset: 448)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4646, file: !4647, line: 66, baseType: !4208, size: 64, offset: 512)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4646, file: !4647, line: 67, baseType: !4665, size: 64, offset: 576)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{!2741, !4367}
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4646, file: !4647, line: 69, baseType: !4669, size: 64, offset: 640)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = !DISubroutineType(types: !4671)
!4671 = !{null, !4367, !4240, !4241}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4646, file: !4647, line: 71, baseType: !4379, size: 64, offset: 704)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !371, file: !100, line: 785, baseType: !512, size: 64, offset: 5440)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !371, file: !100, line: 787, baseType: !4375, size: 64, offset: 5504)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !371, file: !100, line: 788, baseType: !4676, size: 64, offset: 5568)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4677 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !100, line: 46, flags: DIFlagFwdDecl)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !371, file: !100, line: 789, baseType: !4679, size: 64, offset: 5632)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !100, line: 48, flags: DIFlagFwdDecl)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !371, file: !100, line: 791, baseType: !4682, size: 64, offset: 5696)
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !100, line: 597, size: 128, elements: !4684)
!4684 = !{!4685, !4686, !4687, !4688, !4689}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4683, file: !100, line: 598, baseType: !122, size: 32)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4683, file: !100, line: 599, baseType: !131, size: 32, offset: 32)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4683, file: !100, line: 600, baseType: !136, size: 32, offset: 64)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4683, file: !100, line: 601, baseType: !881, size: 8, offset: 96)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4683, file: !100, line: 602, baseType: !881, size: 8, offset: 104)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !371, file: !100, line: 793, baseType: !141, size: 32, offset: 5760)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !371, file: !100, line: 795, baseType: !881, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !371, file: !100, line: 796, baseType: !881, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !371, file: !100, line: 797, baseType: !881, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !371, file: !100, line: 798, baseType: !881, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !371, file: !100, line: 799, baseType: !881, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !353, file: !200, line: 73, baseType: !4697, size: 256, offset: 128)
!4697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !353, file: !200, line: 66, size: 256, elements: !4698)
!4698 = !{!4699, !4700, !4701}
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4697, file: !200, line: 68, baseType: !381, size: 128)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "final_kfree", scope: !4697, file: !200, line: 70, baseType: !345, size: 64, offset: 128)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4697, file: !200, line: 72, baseType: !394, size: 32, offset: 192)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !353, file: !200, line: 76, baseType: !4703, size: 64, offset: 384)
!4703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4704, size: 64)
!4704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4705)
!4705 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_driver", file: !4706, line: 42, flags: DIFlagFwdDecl)
!4706 = !DIFile(filename: "./include/drm/drm_legacy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0a48cbf735602b48f7f8b8e0cbee53a7")
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private", scope: !353, file: !200, line: 88, baseType: !345, size: 64, offset: 448)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !353, file: !200, line: 98, baseType: !4709, size: 64, offset: 512)
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4710, size: 64)
!4710 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_minor", file: !200, line: 13, flags: DIFlagFwdDecl)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !353, file: !200, line: 107, baseType: !4709, size: 64, offset: 576)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !353, file: !200, line: 110, baseType: !4709, size: 64, offset: 640)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !353, file: !200, line: 117, baseType: !881, size: 8, offset: 704)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !353, file: !200, line: 125, baseType: !4715, size: 64, offset: 768)
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_master", file: !4717, line: 65, size: 1280, elements: !4718)
!4717 = !DIFile(filename: "./include/drm/drm_auth.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10e944a391afc2612335b30db18d0dee")
!4718 = !{!4719, !4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730}
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4716, file: !4717, line: 66, baseType: !357, size: 32)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4716, file: !4717, line: 67, baseType: !352, size: 64, offset: 64)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !4716, file: !4717, line: 72, baseType: !460, size: 64, offset: 128)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "unique_len", scope: !4716, file: !4717, line: 77, baseType: !115, size: 32, offset: 192)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "magic_map", scope: !4716, file: !4717, line: 82, baseType: !1950, size: 192, offset: 256)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !4716, file: !4717, line: 83, baseType: !345, size: 64, offset: 448)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "lessor", scope: !4716, file: !4717, line: 99, baseType: !4715, size: 64, offset: 512)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_id", scope: !4716, file: !4717, line: 107, baseType: !115, size: 32, offset: 576)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_list", scope: !4716, file: !4717, line: 116, baseType: !381, size: 128, offset: 640)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "lessees", scope: !4716, file: !4717, line: 128, baseType: !381, size: 128, offset: 768)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "leases", scope: !4716, file: !4717, line: 139, baseType: !1950, size: 192, offset: 896)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_idr", scope: !4716, file: !4717, line: 147, baseType: !1950, size: 192, offset: 1088)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !353, file: !200, line: 135, baseType: !609, size: 32, offset: 832)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "unplugged", scope: !353, file: !200, line: 143, baseType: !881, size: 8, offset: 864)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "anon_inode", scope: !353, file: !200, line: 146, baseType: !540, size: 64, offset: 896)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !353, file: !200, line: 149, baseType: !460, size: 64, offset: 960)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "struct_mutex", scope: !353, file: !200, line: 159, baseType: !801, size: 256, offset: 1024)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "master_mutex", scope: !353, file: !200, line: 166, baseType: !801, size: 256, offset: 1280)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "open_count", scope: !353, file: !200, line: 174, baseType: !365, size: 32, offset: 1536)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_mutex", scope: !353, file: !200, line: 177, baseType: !801, size: 256, offset: 1600)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !353, file: !200, line: 183, baseType: !381, size: 128, offset: 1856)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_internal", scope: !353, file: !200, line: 191, baseType: !381, size: 128, offset: 1984)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist_mutex", scope: !353, file: !200, line: 198, baseType: !801, size: 256, offset: 2112)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist", scope: !353, file: !200, line: 205, baseType: !381, size: 128, offset: 2368)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_disable_immediate", scope: !353, file: !200, line: 220, baseType: !881, size: 8, offset: 2496)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "vblank", scope: !353, file: !200, line: 230, baseType: !4745, size: 64, offset: 2560)
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vblank_crtc", file: !200, line: 15, flags: DIFlagFwdDecl)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_time_lock", scope: !353, file: !200, line: 237, baseType: !394, size: 32, offset: 2624)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "vbl_lock", scope: !353, file: !200, line: 242, baseType: !394, size: 32, offset: 2656)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !353, file: !200, line: 265, baseType: !609, size: 32, offset: 2688)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_event_list", scope: !353, file: !200, line: 268, baseType: !381, size: 128, offset: 2752)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !353, file: !200, line: 276, baseType: !394, size: 32, offset: 2880)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtcs", scope: !353, file: !200, line: 279, baseType: !13, size: 32, offset: 2912)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "mode_config", scope: !353, file: !200, line: 282, baseType: !4754, size: 8704, offset: 2944)
!4754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config", file: !4755, line: 375, size: 8704, elements: !4756)
!4755 = !DIFile(filename: "./include/drm/drm_mode_config.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3fe2bd3e9391801689324df8a16c9607")
!4756 = !{!4757, !4758, !4777, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !5842, !5843, !5844, !5845, !5846, !5847, !5848, !5849, !5850, !5851, !5852, !5853, !5854, !5855, !5856, !5857, !5858, !5859, !5860, !5861, !5862, !5863, !5864, !5865, !5866, !5867, !5868, !5869, !5870, !5871, !5872, !5873, !5874, !5875, !5876, !5877, !5878, !5879, !5880, !5881, !5882, !5883, !5884, !5885, !5886, !5887, !5888, !5889, !5890, !5891, !5892, !5893, !5894, !5895, !5896, !5897, !5898, !5899, !5900, !5901, !5902, !5903, !5904, !5905, !5906, !5907, !5908, !5909, !5910, !5911, !5912, !5913, !5914, !5915, !5916}
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4754, file: !4755, line: 386, baseType: !801, size: 256)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "connection_mutex", scope: !4754, file: !4755, line: 396, baseType: !4759, size: 448, offset: 256)
!4759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_lock", file: !4760, line: 85, size: 448, elements: !4761)
!4760 = !DIFile(filename: "./include/drm/drm_modeset_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90e902ea14584677125d9e33023828e6")
!4761 = !{!4762, !4776}
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4759, file: !4760, line: 89, baseType: !4763, size: 320)
!4763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !4764, line: 47, size: 320, elements: !4765)
!4764 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a05845e2a030669ed50c8f228f8c6582")
!4765 = !{!4766, !4767}
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4763, file: !4764, line: 48, baseType: !801, size: 256)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4763, file: !4764, line: 49, baseType: !4768, size: 64, offset: 256)
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !4764, line: 55, size: 192, elements: !4770)
!4770 = !{!4771, !4772, !4773, !4774, !4775}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4769, file: !4764, line: 56, baseType: !1568, size: 64)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !4769, file: !4764, line: 57, baseType: !510, size: 64, offset: 64)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !4769, file: !4764, line: 58, baseType: !13, size: 32, offset: 128)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !4769, file: !4764, line: 59, baseType: !430, size: 16, offset: 160)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !4769, file: !4764, line: 60, baseType: !430, size: 16, offset: 176)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4759, file: !4760, line: 95, baseType: !381, size: 128, offset: 320)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !4754, file: !4755, line: 406, baseType: !4778, size: 64, offset: 704)
!4778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4779, size: 64)
!4779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_acquire_ctx", file: !4760, line: 46, size: 512, elements: !4780)
!4780 = !{!4781, !4782, !4784, !4787, !4788, !4789}
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "ww_ctx", scope: !4779, file: !4760, line: 48, baseType: !4769, size: 192)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !4779, file: !4760, line: 55, baseType: !4783, size: 64, offset: 192)
!4783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "stack_depot", scope: !4779, file: !4760, line: 61, baseType: !4785, size: 32, offset: 256)
!4785 = !DIDerivedType(tag: DW_TAG_typedef, name: "depot_stack_handle_t", file: !4786, line: 27, baseType: !609)
!4786 = !DIFile(filename: "./include/linux/stackdepot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "787fdf2c1a48da25b4d7ecc2db077a40")
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !4779, file: !4760, line: 66, baseType: !381, size: 128, offset: 320)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_only", scope: !4779, file: !4760, line: 71, baseType: !881, size: 8, offset: 448)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !4779, file: !4760, line: 74, baseType: !881, size: 8, offset: 456)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "idr_mutex", scope: !4754, file: !4755, line: 414, baseType: !801, size: 256, offset: 768)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !4754, file: !4755, line: 422, baseType: !1950, size: 192, offset: 1024)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "tile_idr", scope: !4754, file: !4755, line: 430, baseType: !1950, size: 192, offset: 1216)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "fb_lock", scope: !4754, file: !4755, line: 433, baseType: !801, size: 256, offset: 1408)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "num_fb", scope: !4754, file: !4755, line: 435, baseType: !115, size: 32, offset: 1664)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "fb_list", scope: !4754, file: !4755, line: 437, baseType: !381, size: 128, offset: 1728)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list_lock", scope: !4754, file: !4755, line: 443, baseType: !394, size: 32, offset: 1856)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !4754, file: !4755, line: 448, baseType: !115, size: 32, offset: 1888)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "connector_ida", scope: !4754, file: !4755, line: 452, baseType: !4799, size: 128, offset: 1920)
!4799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1951, line: 246, size: 128, elements: !4800)
!4800 = !{!4801}
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4799, file: !1951, line: 247, baseType: !1954, size: 128)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list", scope: !4754, file: !4755, line: 460, baseType: !381, size: 128, offset: 2048)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_list", scope: !4754, file: !4755, line: 470, baseType: !3470, size: 64, offset: 2176)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_work", scope: !4754, file: !4755, line: 474, baseType: !1061, size: 256, offset: 2240)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "num_encoder", scope: !4754, file: !4755, line: 482, baseType: !115, size: 32, offset: 2496)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_list", scope: !4754, file: !4755, line: 490, baseType: !381, size: 128, offset: 2560)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "num_total_plane", scope: !4754, file: !4755, line: 499, baseType: !115, size: 32, offset: 2688)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "plane_list", scope: !4754, file: !4755, line: 506, baseType: !381, size: 128, offset: 2752)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtc", scope: !4754, file: !4755, line: 514, baseType: !115, size: 32, offset: 2880)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_list", scope: !4754, file: !4755, line: 521, baseType: !381, size: 128, offset: 2944)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "property_list", scope: !4754, file: !4755, line: 530, baseType: !381, size: 128, offset: 3072)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "privobj_list", scope: !4754, file: !4755, line: 539, baseType: !381, size: 128, offset: 3200)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !4754, file: !4755, line: 541, baseType: !115, size: 32, offset: 3328)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !4754, file: !4755, line: 541, baseType: !115, size: 32, offset: 3360)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !4754, file: !4755, line: 542, baseType: !115, size: 32, offset: 3392)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !4754, file: !4755, line: 542, baseType: !115, size: 32, offset: 3424)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4754, file: !4755, line: 543, baseType: !4818, size: 64, offset: 3456)
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4819, size: 64)
!4819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4820)
!4820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_funcs", file: !4755, line: 47, size: 576, elements: !4821)
!4821 = !{!4822, !4949, !4953, !4957, !4999, !5829, !5833, !5837, !5841}
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "fb_create", scope: !4820, file: !4755, line: 83, baseType: !4823, size: 64)
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4824, size: 64)
!4824 = !DISubroutineType(types: !4825)
!4825 = !{!4826, !352, !4905, !4934}
!4826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4827, size: 64)
!4827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer", file: !4828, line: 117, size: 1600, elements: !4829)
!4828 = !DIFile(filename: "./include/drm/drm_framebuffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5cd71656f00b65d2ac7e671422852fe")
!4829 = !{!4830, !4831, !4832, !4869, !4870, !4892, !4920, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930}
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4827, file: !4828, line: 121, baseType: !352, size: 64)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4827, file: !4828, line: 126, baseType: !381, size: 128, offset: 64)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4827, file: !4828, line: 131, baseType: !4833, size: 256, offset: 192)
!4833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_object", file: !4834, line: 55, size: 256, elements: !4835)
!4834 = !DIFile(filename: "./include/drm/drm_mode_object.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ffaf2d776d1d6cf92a08dd44b890967f")
!4835 = !{!4836, !4837, !4838, !4863, !4864}
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4833, file: !4834, line: 56, baseType: !2056, size: 32)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4833, file: !4834, line: 57, baseType: !2056, size: 32, offset: 32)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4833, file: !4834, line: 58, baseType: !4839, size: 64, offset: 64)
!4839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4840, size: 64)
!4840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_object_properties", file: !4834, line: 67, size: 3136, elements: !4841)
!4841 = !{!4842, !4843, !4861}
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4840, file: !4834, line: 73, baseType: !115, size: 32)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4840, file: !4834, line: 82, baseType: !4844, size: 1536, offset: 64)
!4844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4845, size: 1536, elements: !4859)
!4845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4846, size: 64)
!4846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property", file: !4847, line: 80, size: 960, elements: !4848)
!4847 = !DIFile(filename: "./include/drm/drm_property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "320ae008033d09c99df86eb5eb8877c7")
!4848 = !{!4849, !4850, !4851, !4852, !4853, !4854, !4857, !4858}
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4846, file: !4847, line: 84, baseType: !381, size: 128)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4846, file: !4847, line: 89, baseType: !4833, size: 256, offset: 128)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4846, file: !4847, line: 166, baseType: !2056, size: 32, offset: 384)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4846, file: !4847, line: 171, baseType: !3707, size: 256, offset: 416)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "num_values", scope: !4846, file: !4847, line: 176, baseType: !2056, size: 32, offset: 672)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !4846, file: !4847, line: 184, baseType: !4855, size: 64, offset: 704)
!4855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4856, size: 64)
!4856 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !347, line: 113, baseType: !613)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4846, file: !4847, line: 189, baseType: !352, size: 64, offset: 768)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "enum_list", scope: !4846, file: !4847, line: 197, baseType: !381, size: 128, offset: 832)
!4859 = !{!4860}
!4860 = !DISubrange(count: 24)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !4840, file: !4834, line: 106, baseType: !4862, size: 1536, offset: 1600)
!4862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4856, size: 1536, elements: !4859)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4833, file: !4834, line: 59, baseType: !357, size: 32, offset: 128)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "free_cb", scope: !4833, file: !4834, line: 60, baseType: !4865, size: 64, offset: 192)
!4865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4866, size: 64)
!4866 = !DISubroutineType(types: !4867)
!4867 = !{null, !4868}
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !4827, file: !4828, line: 136, baseType: !2918, size: 128, offset: 448)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !4827, file: !4828, line: 141, baseType: !4871, size: 64, offset: 576)
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4872, size: 64)
!4872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4873)
!4873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_format_info", file: !4874, line: 61, size: 192, elements: !4875)
!4874 = !DIFile(filename: "./include/drm/drm_fourcc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5f3a001b749e018fee62f2cb7513f95f")
!4875 = !{!4876, !4877, !4878, !4879, !4885, !4886, !4887, !4888, !4889, !4890, !4891}
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !4873, file: !4874, line: 63, baseType: !609, size: 32)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4873, file: !4874, line: 72, baseType: !418, size: 8, offset: 32)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "num_planes", scope: !4873, file: !4874, line: 75, baseType: !418, size: 8, offset: 40)
!4879 = !DIDerivedType(tag: DW_TAG_member, scope: !4873, file: !4874, line: 77, baseType: !4880, size: 32, offset: 48)
!4880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4873, file: !4874, line: 77, size: 32, elements: !4881)
!4881 = !{!4882, !4884}
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "cpp", scope: !4880, file: !4874, line: 86, baseType: !4883, size: 32)
!4883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 32, elements: !1031)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "char_per_block", scope: !4880, file: !4874, line: 112, baseType: !4883, size: 32)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "block_w", scope: !4873, file: !4874, line: 121, baseType: !4883, size: 32, offset: 80)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "block_h", scope: !4873, file: !4874, line: 129, baseType: !4883, size: 32, offset: 112)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "hsub", scope: !4873, file: !4874, line: 132, baseType: !418, size: 8, offset: 144)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "vsub", scope: !4873, file: !4874, line: 134, baseType: !418, size: 8, offset: 152)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "has_alpha", scope: !4873, file: !4874, line: 137, baseType: !881, size: 8, offset: 160)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "is_yuv", scope: !4873, file: !4874, line: 140, baseType: !881, size: 8, offset: 168)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "is_color_indexed", scope: !4873, file: !4874, line: 143, baseType: !881, size: 8, offset: 176)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4827, file: !4828, line: 145, baseType: !4893, size: 64, offset: 640)
!4893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4894, size: 64)
!4894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4895)
!4895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer_funcs", file: !4828, line: 42, size: 192, elements: !4896)
!4896 = !{!4897, !4901, !4908}
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4895, file: !4828, line: 53, baseType: !4898, size: 64)
!4898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4899, size: 64)
!4899 = !DISubroutineType(types: !4900)
!4900 = !{null, !4826}
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "create_handle", scope: !4895, file: !4828, line: 73, baseType: !4902, size: 64, offset: 64)
!4902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4903, size: 64)
!4903 = !DISubroutineType(types: !4904)
!4904 = !{!115, !4826, !4905, !873}
!4905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4906, size: 64)
!4906 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !4907, line: 9, flags: DIFlagFwdDecl)
!4907 = !DIFile(filename: "./include/drm/drm_lease.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f6d675704e04807ddd52843c3d74a46")
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !4895, file: !4828, line: 97, baseType: !4909, size: 64, offset: 128)
!4909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4910, size: 64)
!4910 = !DISubroutineType(types: !4911)
!4911 = !{!115, !4826, !4905, !13, !13, !4912, !13}
!4912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4913, size: 64)
!4913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_clip_rect", file: !4914, line: 96, size: 64, elements: !4915)
!4914 = !DIFile(filename: "./include/uapi/drm/drm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9daee414dd46c3bd0bb57211914f5e3a")
!4915 = !{!4916, !4917, !4918, !4919}
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !4913, file: !4914, line: 97, baseType: !430, size: 16)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !4913, file: !4914, line: 98, baseType: !430, size: 16, offset: 16)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !4913, file: !4914, line: 99, baseType: !430, size: 16, offset: 32)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !4913, file: !4914, line: 100, baseType: !430, size: 16, offset: 48)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !4827, file: !4828, line: 150, baseType: !4921, size: 128, offset: 704)
!4921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 128, elements: !1031)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !4827, file: !4828, line: 168, baseType: !4921, size: 128, offset: 832)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !4827, file: !4828, line: 175, baseType: !4856, size: 64, offset: 960)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4827, file: !4828, line: 180, baseType: !13, size: 32, offset: 1024)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4827, file: !4828, line: 185, baseType: !13, size: 32, offset: 1056)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4827, file: !4828, line: 190, baseType: !115, size: 32, offset: 1088)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "hot_x", scope: !4827, file: !4828, line: 196, baseType: !115, size: 32, offset: 1120)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "hot_y", scope: !4827, file: !4828, line: 202, baseType: !115, size: 32, offset: 1152)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "filp_head", scope: !4827, file: !4828, line: 206, baseType: !381, size: 128, offset: 1216)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !4827, file: !4828, line: 213, baseType: !4931, size: 256, offset: 1344)
!4931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4932, size: 256, elements: !1031)
!4932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4933, size: 64)
!4933 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object", file: !4828, line: 37, flags: DIFlagFwdDecl)
!4934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4935, size: 64)
!4935 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4936)
!4936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_fb_cmd2", file: !235, line: 703, size: 832, elements: !4937)
!4937 = !{!4938, !4939, !4940, !4941, !4942, !4943, !4945, !4946, !4947}
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "fb_id", scope: !4936, file: !235, line: 705, baseType: !610, size: 32)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4936, file: !235, line: 707, baseType: !610, size: 32, offset: 32)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4936, file: !235, line: 709, baseType: !610, size: 32, offset: 64)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !4936, file: !235, line: 714, baseType: !610, size: 32, offset: 96)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4936, file: !235, line: 719, baseType: !610, size: 32, offset: 128)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !4936, file: !235, line: 725, baseType: !4944, size: 128, offset: 160)
!4944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 128, elements: !1031)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !4936, file: !235, line: 727, baseType: !4944, size: 128, offset: 288)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !4936, file: !235, line: 729, baseType: !4944, size: 128, offset: 416)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !4936, file: !235, line: 735, baseType: !4948, size: 256, offset: 576)
!4948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !614, size: 256, elements: !1031)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "get_format_info", scope: !4820, file: !4755, line: 98, baseType: !4950, size: 64, offset: 64)
!4950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4951, size: 64)
!4951 = !DISubroutineType(types: !4952)
!4952 = !{!4871, !4934}
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_changed", scope: !4820, file: !4755, line: 114, baseType: !4954, size: 64, offset: 128)
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4955, size: 64)
!4955 = !DISubroutineType(types: !4956)
!4956 = !{null, !352}
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !4820, file: !4755, line: 124, baseType: !4958, size: 64, offset: 192)
!4958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4959, size: 64)
!4959 = !DISubroutineType(types: !4960)
!4960 = !{!147, !352, !4961}
!4961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4962, size: 64)
!4962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4963)
!4963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_mode", file: !148, line: 252, size: 960, elements: !4964)
!4964 = !{!4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998}
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !4963, file: !148, line: 258, baseType: !115, size: 32)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "hdisplay", scope: !4963, file: !148, line: 259, baseType: !428, size: 16, offset: 32)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_start", scope: !4963, file: !148, line: 260, baseType: !428, size: 16, offset: 48)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_end", scope: !4963, file: !148, line: 261, baseType: !428, size: 16, offset: 64)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "htotal", scope: !4963, file: !148, line: 262, baseType: !428, size: 16, offset: 80)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "hskew", scope: !4963, file: !148, line: 263, baseType: !428, size: 16, offset: 96)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "vdisplay", scope: !4963, file: !148, line: 264, baseType: !428, size: 16, offset: 112)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_start", scope: !4963, file: !148, line: 265, baseType: !428, size: 16, offset: 128)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_end", scope: !4963, file: !148, line: 266, baseType: !428, size: 16, offset: 144)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "vtotal", scope: !4963, file: !148, line: 267, baseType: !428, size: 16, offset: 160)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "vscan", scope: !4963, file: !148, line: 268, baseType: !428, size: 16, offset: 176)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4963, file: !148, line: 303, baseType: !609, size: 32, offset: 192)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_clock", scope: !4963, file: !148, line: 320, baseType: !115, size: 32, offset: 224)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hdisplay", scope: !4963, file: !148, line: 321, baseType: !428, size: 16, offset: 256)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_start", scope: !4963, file: !148, line: 322, baseType: !428, size: 16, offset: 272)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_end", scope: !4963, file: !148, line: 323, baseType: !428, size: 16, offset: 288)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_start", scope: !4963, file: !148, line: 324, baseType: !428, size: 16, offset: 304)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_end", scope: !4963, file: !148, line: 325, baseType: !428, size: 16, offset: 320)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_htotal", scope: !4963, file: !148, line: 326, baseType: !428, size: 16, offset: 336)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hskew", scope: !4963, file: !148, line: 327, baseType: !428, size: 16, offset: 352)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vdisplay", scope: !4963, file: !148, line: 328, baseType: !428, size: 16, offset: 368)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_start", scope: !4963, file: !148, line: 329, baseType: !428, size: 16, offset: 384)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_end", scope: !4963, file: !148, line: 330, baseType: !428, size: 16, offset: 400)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_start", scope: !4963, file: !148, line: 331, baseType: !428, size: 16, offset: 416)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_end", scope: !4963, file: !148, line: 332, baseType: !428, size: 16, offset: 432)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vtotal", scope: !4963, file: !148, line: 333, baseType: !428, size: 16, offset: 448)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !4963, file: !148, line: 341, baseType: !428, size: 16, offset: 464)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !4963, file: !148, line: 349, baseType: !428, size: 16, offset: 480)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4963, file: !148, line: 378, baseType: !418, size: 8, offset: 496)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "expose_to_userspace", scope: !4963, file: !148, line: 389, baseType: !881, size: 8, offset: 504)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4963, file: !148, line: 396, baseType: !381, size: 128, offset: 512)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4963, file: !148, line: 403, baseType: !3707, size: 256, offset: 640)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4963, file: !148, line: 411, baseType: !147, size: 32, offset: 896)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !4963, file: !148, line: 418, baseType: !190, size: 32, offset: 928)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !4820, file: !4755, line: 201, baseType: !5000, size: 64, offset: 256)
!5000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5001, size: 64)
!5001 = !DISubroutineType(types: !5002)
!5002 = !{!115, !352, !5003}
!5003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5004, size: 64)
!5004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_atomic_state", file: !5005, line: 365, size: 960, elements: !5006)
!5005 = !DIFile(filename: "./include/drm/drm_atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28de65f10f2586a2044f2cca3eae067c")
!5006 = !{!5007, !5008, !5009, !5010, !5011, !5012, !5013, !5766, !5777, !5778, !5787, !5788, !5826, !5827, !5828}
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5004, file: !5005, line: 366, baseType: !357, size: 32)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5004, file: !5005, line: 368, baseType: !352, size: 64, offset: 64)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "allow_modeset", scope: !5004, file: !5005, line: 378, baseType: !881, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cursor_update", scope: !5004, file: !5005, line: 390, baseType: !881, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "async_update", scope: !5004, file: !5005, line: 391, baseType: !881, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "duplicated", scope: !5004, file: !5005, line: 400, baseType: !881, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "planes", scope: !5004, file: !5005, line: 401, baseType: !5014, size: 64, offset: 192)
!5014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5015, size: 64)
!5015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_planes_state", file: !5005, line: 160, size: 256, elements: !5016)
!5016 = !{!5017, !5018, !5764, !5765}
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5015, file: !5005, line: 161, baseType: !348, size: 64)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5015, file: !5005, line: 162, baseType: !5019, size: 64, offset: 64)
!5019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5020, size: 64)
!5020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_state", file: !226, line: 52, size: 1280, elements: !5021)
!5021 = !{!5022, !5023, !5730, !5731, !5734, !5735, !5736, !5737, !5738, !5739, !5740, !5741, !5742, !5743, !5744, !5745, !5746, !5747, !5748, !5749, !5750, !5751, !5759, !5760, !5761, !5762, !5763}
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !5020, file: !226, line: 54, baseType: !348, size: 64)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5020, file: !226, line: 62, baseType: !5024, size: 64, offset: 64)
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5025, size: 64)
!5025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc", file: !5026, line: 932, size: 8064, elements: !5027)
!5026 = !DIFile(filename: "./include/drm/drm_crtc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99ea98da3699d3be12a3062031f96ca9")
!5027 = !{!5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5644, !5645, !5647, !5695, !5696, !5697, !5698, !5699, !5700, !5701, !5723, !5724, !5725, !5726, !5727}
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5025, file: !5026, line: 934, baseType: !352, size: 64)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5025, file: !5026, line: 936, baseType: !4632, size: 64, offset: 64)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5025, file: !5026, line: 944, baseType: !381, size: 128, offset: 128)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5025, file: !5026, line: 947, baseType: !460, size: 64, offset: 256)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5025, file: !5026, line: 959, baseType: !4759, size: 448, offset: 320)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5025, file: !5026, line: 962, baseType: !4833, size: 256, offset: 768)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !5025, file: !5026, line: 971, baseType: !348, size: 64, offset: 1024)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "cursor", scope: !5025, file: !5026, line: 980, baseType: !348, size: 64, offset: 1088)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5025, file: !5026, line: 986, baseType: !13, size: 32, offset: 1152)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_x", scope: !5025, file: !5026, line: 995, baseType: !115, size: 32, offset: 1184)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_y", scope: !5025, file: !5026, line: 1003, baseType: !115, size: 32, offset: 1216)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5025, file: !5026, line: 1013, baseType: !881, size: 8, offset: 1248)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5025, file: !5026, line: 1023, baseType: !4963, size: 960, offset: 1280)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "hwmode", scope: !5025, file: !5026, line: 1039, baseType: !4963, size: 960, offset: 2240)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !5025, file: !5026, line: 1048, baseType: !115, size: 32, offset: 3200)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !5025, file: !5026, line: 1056, baseType: !115, size: 32, offset: 3232)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5025, file: !5026, line: 1059, baseType: !5045, size: 64, offset: 3264)
!5045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5046, size: 64)
!5046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5047)
!5047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_funcs", file: !5026, line: 402, size: 1536, elements: !5048)
!5048 = !{!5049, !5053, !5057, !5061, !5065, !5070, !5071, !5579, !5583, !5587, !5591, !5595, !5599, !5603, !5609, !5613, !5614, !5618, !5623, !5629, !5633, !5637, !5638, !5639}
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5047, file: !5026, line: 413, baseType: !5050, size: 64)
!5050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5051, size: 64)
!5051 = !DISubroutineType(types: !5052)
!5052 = !{null, !5024}
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_set", scope: !5047, file: !5026, line: 436, baseType: !5054, size: 64, offset: 64)
!5054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5055, size: 64)
!5055 = !DISubroutineType(types: !5056)
!5056 = !{!115, !5024, !4905, !2056, !2056, !2056}
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_set2", scope: !5047, file: !5026, line: 458, baseType: !5058, size: 64, offset: 128)
!5058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5059, size: 64)
!5059 = !DISubroutineType(types: !5060)
!5060 = !{!115, !5024, !4905, !2056, !2056, !2056, !2035, !2035}
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_move", scope: !5047, file: !5026, line: 478, baseType: !5062, size: 64, offset: 192)
!5062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5063, size: 64)
!5063 = !DISubroutineType(types: !5064)
!5064 = !{!115, !5024, !115, !115}
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_set", scope: !5047, file: !5026, line: 493, baseType: !5066, size: 64, offset: 256)
!5066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5067, size: 64)
!5067 = !DISubroutineType(types: !5068)
!5068 = !{!115, !5024, !5069, !5069, !5069, !2056, !4778}
!5069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5047, file: !5026, line: 504, baseType: !5050, size: 64, offset: 320)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !5047, file: !5026, line: 520, baseType: !5072, size: 64, offset: 384)
!5072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5073, size: 64)
!5073 = !DISubroutineType(types: !5074)
!5074 = !{!115, !5075, !4778}
!5075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5076, size: 64)
!5076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_set", file: !5026, line: 1193, size: 384, elements: !5077)
!5077 = !{!5078, !5079, !5080, !5082, !5083, !5084, !5578}
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !5076, file: !5026, line: 1194, baseType: !4826, size: 64)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5076, file: !5026, line: 1195, baseType: !5024, size: 64, offset: 64)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5076, file: !5026, line: 1196, baseType: !5081, size: 64, offset: 128)
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !5076, file: !5026, line: 1198, baseType: !2056, size: 32, offset: 192)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !5076, file: !5026, line: 1199, baseType: !2056, size: 32, offset: 224)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "connectors", scope: !5076, file: !5026, line: 1201, baseType: !5085, size: 64, offset: 256)
!5085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5086, size: 64)
!5086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5087, size: 64)
!5087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector", file: !207, line: 1494, size: 10880, elements: !5088)
!5088 = !{!5089, !5090, !5091, !5104, !5105, !5106, !5107, !5108, !5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5192, !5419, !5420, !5421, !5422, !5423, !5424, !5425, !5426, !5429, !5441, !5442, !5443, !5445, !5446, !5493, !5515, !5516, !5520, !5521, !5522, !5523, !5524, !5528, !5529, !5531, !5533, !5534, !5537, !5538, !5539, !5540, !5541, !5542, !5543, !5544, !5545, !5554, !5555, !5556, !5557, !5558, !5559, !5561, !5562, !5563}
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5087, file: !207, line: 1496, baseType: !352, size: 64)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "kdev", scope: !5087, file: !207, line: 1498, baseType: !370, size: 64, offset: 64)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5087, file: !207, line: 1500, baseType: !5092, size: 64, offset: 128)
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5093, size: 64)
!5093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !100, line: 106, size: 256, elements: !5094)
!5094 = !{!5095, !5096, !5100}
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5093, file: !100, line: 107, baseType: !498, size: 128)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5093, file: !100, line: 108, baseType: !5097, size: 64, offset: 128)
!5097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5098, size: 64)
!5098 = !DISubroutineType(types: !5099)
!5099 = !{!492, !370, !5092, !460}
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5093, file: !100, line: 110, baseType: !5101, size: 64, offset: 192)
!5101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5102, size: 64)
!5102 = !DISubroutineType(types: !5103)
!5103 = !{!492, !370, !5092, !378, !507}
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5087, file: !207, line: 1508, baseType: !4636, size: 64, offset: 192)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5087, file: !207, line: 1518, baseType: !381, size: 128, offset: 256)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "global_connector_list_entry", scope: !5087, file: !207, line: 1526, baseType: !381, size: 128, offset: 384)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5087, file: !207, line: 1529, baseType: !4833, size: 256, offset: 512)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5087, file: !207, line: 1532, baseType: !460, size: 64, offset: 768)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5087, file: !207, line: 1539, baseType: !801, size: 256, offset: 832)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5087, file: !207, line: 1547, baseType: !13, size: 32, offset: 1088)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type", scope: !5087, file: !207, line: 1553, baseType: !115, size: 32, offset: 1120)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type_id", scope: !5087, file: !207, line: 1555, baseType: !115, size: 32, offset: 1152)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "interlace_allowed", scope: !5087, file: !207, line: 1561, baseType: !881, size: 8, offset: 1184)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "doublescan_allowed", scope: !5087, file: !207, line: 1567, baseType: !881, size: 8, offset: 1192)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "stereo_allowed", scope: !5087, file: !207, line: 1573, baseType: !881, size: 8, offset: 1200)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "ycbcr_420_allowed", scope: !5087, file: !207, line: 1581, baseType: !881, size: 8, offset: 1208)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "registration_state", scope: !5087, file: !207, line: 1589, baseType: !206, size: 32, offset: 1216)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !5087, file: !207, line: 1596, baseType: !381, size: 128, offset: 1280)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5087, file: !207, line: 1603, baseType: !212, size: 32, offset: 1408)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "probed_modes", scope: !5087, file: !207, line: 1611, baseType: !381, size: 128, offset: 1472)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "display_info", scope: !5087, file: !207, line: 1622, baseType: !5122, size: 1536, offset: 1600)
!5122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_info", file: !207, line: 651, size: 1536, elements: !5123)
!5123 = !{!5124, !5125, !5126, !5127, !5128, !5129, !5130, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5140, !5141, !5142, !5143, !5144, !5174, !5175, !5180, !5185, !5186, !5187, !5188, !5190, !5191}
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !5122, file: !207, line: 655, baseType: !13, size: 32)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !5122, file: !207, line: 660, baseType: !13, size: 32, offset: 32)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "bpc", scope: !5122, file: !207, line: 665, baseType: !13, size: 32, offset: 64)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "subpixel_order", scope: !5122, file: !207, line: 670, baseType: !217, size: 32, offset: 96)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !5122, file: !207, line: 684, baseType: !115, size: 32, offset: 128)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "color_formats", scope: !5122, file: !207, line: 692, baseType: !609, size: 32, offset: 160)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "bus_formats", scope: !5122, file: !207, line: 699, baseType: !5131, size: 64, offset: 192)
!5131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5132, size: 64)
!5132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !609)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "num_bus_formats", scope: !5122, file: !207, line: 703, baseType: !13, size: 32, offset: 256)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !5122, file: !207, line: 710, baseType: !609, size: 32, offset: 288)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "max_tmds_clock", scope: !5122, file: !207, line: 716, baseType: !115, size: 32, offset: 320)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_dual", scope: !5122, file: !207, line: 721, baseType: !881, size: 8, offset: 352)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "is_hdmi", scope: !5122, file: !207, line: 729, baseType: !881, size: 8, offset: 360)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "has_audio", scope: !5122, file: !207, line: 737, baseType: !881, size: 8, offset: 368)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "has_hdmi_infoframe", scope: !5122, file: !207, line: 742, baseType: !881, size: 8, offset: 376)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "rgb_quant_range_selectable", scope: !5122, file: !207, line: 748, baseType: !881, size: 8, offset: 384)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "edid_hdmi_rgb444_dc_modes", scope: !5122, file: !207, line: 754, baseType: !418, size: 8, offset: 392)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "edid_hdmi_ycbcr444_dc_modes", scope: !5122, file: !207, line: 760, baseType: !418, size: 8, offset: 400)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "cea_rev", scope: !5122, file: !207, line: 765, baseType: !418, size: 8, offset: 408)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi", scope: !5122, file: !207, line: 770, baseType: !5145, size: 768, offset: 448)
!5145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_hdmi_info", file: !207, line: 293, size: 768, elements: !5146)
!5146 = !{!5147, !5157, !5158, !5159, !5160, !5161, !5162}
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "scdc", scope: !5145, file: !207, line: 295, baseType: !5148, size: 32)
!5148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scdc", file: !207, line: 231, size: 32, elements: !5149)
!5149 = !{!5150, !5151, !5152}
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !5148, file: !207, line: 235, baseType: !881, size: 8)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "read_request", scope: !5148, file: !207, line: 239, baseType: !881, size: 8, offset: 8)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling", scope: !5148, file: !207, line: 243, baseType: !5153, size: 16, offset: 16)
!5153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scrambling", file: !207, line: 214, size: 16, elements: !5154)
!5154 = !{!5155, !5156}
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !5153, file: !207, line: 218, baseType: !881, size: 8)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "low_rates", scope: !5153, file: !207, line: 222, baseType: !881, size: 8, offset: 8)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "y420_vdb_modes", scope: !5145, file: !207, line: 303, baseType: !1034, size: 256, offset: 64)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "y420_cmdb_modes", scope: !5145, file: !207, line: 311, baseType: !1034, size: 256, offset: 320)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "y420_dc_modes", scope: !5145, file: !207, line: 314, baseType: !418, size: 8, offset: 576)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "max_frl_rate_per_lane", scope: !5145, file: !207, line: 317, baseType: !418, size: 8, offset: 584)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "max_lanes", scope: !5145, file: !207, line: 320, baseType: !418, size: 8, offset: 592)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "dsc_cap", scope: !5145, file: !207, line: 323, baseType: !5163, size: 128, offset: 608)
!5163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_hdmi_dsc_cap", file: !207, line: 253, size: 128, elements: !5164)
!5164 = !{!5165, !5166, !5167, !5168, !5169, !5170, !5171, !5172, !5173}
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "v_1p2", scope: !5163, file: !207, line: 255, baseType: !881, size: 8)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "native_420", scope: !5163, file: !207, line: 258, baseType: !881, size: 8, offset: 8)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "all_bpp", scope: !5163, file: !207, line: 264, baseType: !881, size: 8, offset: 16)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "bpc_supported", scope: !5163, file: !207, line: 269, baseType: !418, size: 8, offset: 24)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "max_slices", scope: !5163, file: !207, line: 272, baseType: !418, size: 8, offset: 32)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "clk_per_slice", scope: !5163, file: !207, line: 275, baseType: !115, size: 32, offset: 64)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "max_lanes", scope: !5163, file: !207, line: 278, baseType: !418, size: 8, offset: 96)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "max_frl_rate_per_lane", scope: !5163, file: !207, line: 281, baseType: !418, size: 8, offset: 104)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "total_chunk_kbytes", scope: !5163, file: !207, line: 284, baseType: !418, size: 8, offset: 112)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop", scope: !5122, file: !207, line: 775, baseType: !881, size: 8, offset: 1216)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_range", scope: !5122, file: !207, line: 780, baseType: !5176, size: 32, offset: 1232)
!5176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_monitor_range_info", file: !207, line: 383, size: 32, elements: !5177)
!5177 = !{!5178, !5179}
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "min_vfreq", scope: !5176, file: !207, line: 384, baseType: !428, size: 16)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "max_vfreq", scope: !5176, file: !207, line: 385, baseType: !428, size: 16, offset: 16)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "luminance_range", scope: !5122, file: !207, line: 785, baseType: !5181, size: 64, offset: 1280)
!5181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_luminance_range_info", file: !207, line: 399, size: 64, elements: !5182)
!5182 = !{!5183, !5184}
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "min_luminance", scope: !5181, file: !207, line: 400, baseType: !609, size: 32)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "max_luminance", scope: !5181, file: !207, line: 401, baseType: !609, size: 32, offset: 32)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "mso_stream_count", scope: !5122, file: !207, line: 792, baseType: !418, size: 8, offset: 1344)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "mso_pixel_overlap", scope: !5122, file: !207, line: 797, baseType: !418, size: 8, offset: 1352)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "max_dsc_bpp", scope: !5122, file: !207, line: 803, baseType: !609, size: 32, offset: 1376)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "vics", scope: !5122, file: !207, line: 808, baseType: !5189, size: 64, offset: 1408)
!5189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "vics_len", scope: !5122, file: !207, line: 813, baseType: !115, size: 32, offset: 1472)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !5122, file: !207, line: 818, baseType: !609, size: 32, offset: 1504)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5087, file: !207, line: 1625, baseType: !5193, size: 64, offset: 3136)
!5193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5194, size: 64)
!5194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5195)
!5195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_funcs", file: !207, line: 1034, size: 1024, elements: !5196)
!5196 = !{!5197, !5201, !5205, !5209, !5210, !5214, !5218, !5222, !5223, !5224, !5394, !5398, !5402, !5408, !5414, !5415}
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5195, file: !207, line: 1051, baseType: !5198, size: 64)
!5198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5199, size: 64)
!5199 = !DISubroutineType(types: !5200)
!5200 = !{!115, !5086, !115}
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5195, file: !207, line: 1063, baseType: !5202, size: 64, offset: 64)
!5202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5203, size: 64)
!5203 = !DISubroutineType(types: !5204)
!5204 = !{null, !5086}
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !5195, file: !207, line: 1096, baseType: !5206, size: 64, offset: 128)
!5206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5207, size: 64)
!5207 = !DISubroutineType(types: !5208)
!5208 = !{!212, !5086, !881}
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5195, file: !207, line: 1113, baseType: !5202, size: 64, offset: 192)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "fill_modes", scope: !5195, file: !207, line: 1138, baseType: !5211, size: 64, offset: 256)
!5211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5212, size: 64)
!5212 = !DISubroutineType(types: !5213)
!5213 = !{!115, !5086, !2056, !2056}
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5195, file: !207, line: 1154, baseType: !5215, size: 64, offset: 320)
!5215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5216, size: 64)
!5216 = !DISubroutineType(types: !5217)
!5217 = !{!115, !5086, !4845, !4856}
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5195, file: !207, line: 1173, baseType: !5219, size: 64, offset: 384)
!5219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5220, size: 64)
!5220 = !DISubroutineType(types: !5221)
!5221 = !{!115, !5086}
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5195, file: !207, line: 1186, baseType: !5202, size: 64, offset: 448)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5195, file: !207, line: 1196, baseType: !5202, size: 64, offset: 512)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5195, file: !207, line: 1229, baseType: !5225, size: 64, offset: 576)
!5225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5226, size: 64)
!5226 = !DISubroutineType(types: !5227)
!5227 = !{!5228, !5086}
!5228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5229, size: 64)
!5229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_state", file: !207, line: 884, size: 1280, elements: !5230)
!5230 = !{!5231, !5232, !5233, !5357, !5358, !5359, !5360, !5380, !5381, !5382, !5383, !5384, !5385, !5386, !5387, !5390, !5391, !5392, !5393}
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "connector", scope: !5229, file: !207, line: 886, baseType: !5086, size: 64)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5229, file: !207, line: 894, baseType: !5024, size: 64, offset: 64)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "best_encoder", scope: !5229, file: !207, line: 912, baseType: !5234, size: 64, offset: 128)
!5234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5235, size: 64)
!5235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder", file: !5236, line: 98, size: 960, elements: !5237)
!5236 = !DIFile(filename: "./include/drm/drm_encoder.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74b3d858470ff421c0475e349d8db40a")
!5237 = !{!5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5263}
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5235, file: !5236, line: 99, baseType: !352, size: 64)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5235, file: !5236, line: 100, baseType: !381, size: 128, offset: 64)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5235, file: !5236, line: 102, baseType: !4833, size: 256, offset: 192)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5235, file: !5236, line: 103, baseType: !460, size: 64, offset: 448)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_type", scope: !5235, file: !5236, line: 130, baseType: !115, size: 32, offset: 512)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5235, file: !5236, line: 136, baseType: !13, size: 32, offset: 544)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "possible_crtcs", scope: !5235, file: !5236, line: 149, baseType: !2056, size: 32, offset: 576)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "possible_clones", scope: !5235, file: !5236, line: 170, baseType: !2056, size: 32, offset: 608)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5235, file: !5236, line: 177, baseType: !5024, size: 64, offset: 640)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_chain", scope: !5235, file: !5236, line: 183, baseType: !381, size: 128, offset: 704)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5235, file: !5236, line: 185, baseType: !5249, size: 64, offset: 832)
!5249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5250, size: 64)
!5250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5251)
!5251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder_funcs", file: !5236, line: 40, size: 256, elements: !5252)
!5252 = !{!5253, !5257, !5258, !5262}
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5251, file: !5236, line: 48, baseType: !5254, size: 64)
!5254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5255, size: 64)
!5255 = !DISubroutineType(types: !5256)
!5256 = !{null, !5234}
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5251, file: !5236, line: 57, baseType: !5254, size: 64, offset: 64)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5251, file: !5236, line: 72, baseType: !5259, size: 64, offset: 128)
!5259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5260, size: 64)
!5260 = !DISubroutineType(types: !5261)
!5261 = !{!115, !5234}
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5251, file: !5236, line: 83, baseType: !5254, size: 64, offset: 192)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5235, file: !5236, line: 186, baseType: !5264, size: 64, offset: 896)
!5264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5265, size: 64)
!5265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5266)
!5266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder_helper_funcs", file: !300, line: 511, size: 832, elements: !5267)
!5267 = !{!5268, !5272, !5276, !5280, !5281, !5282, !5286, !5342, !5346, !5350, !5351, !5352, !5353}
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5266, file: !300, line: 528, baseType: !5269, size: 64)
!5269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5270, size: 64)
!5270 = !DISubroutineType(types: !5271)
!5271 = !{null, !5234, !115}
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !5266, file: !300, line: 561, baseType: !5273, size: 64, offset: 64)
!5273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5274, size: 64)
!5274 = !DISubroutineType(types: !5275)
!5275 = !{!147, !5234, !4961}
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "mode_fixup", scope: !5266, file: !300, line: 604, baseType: !5277, size: 64, offset: 128)
!5277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5278, size: 64)
!5278 = !DISubroutineType(types: !5279)
!5279 = !{!881, !5234, !4961, !5081}
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !5266, file: !300, line: 621, baseType: !5254, size: 64, offset: 192)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5266, file: !300, line: 636, baseType: !5254, size: 64, offset: 256)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "mode_set", scope: !5266, file: !300, line: 660, baseType: !5283, size: 64, offset: 320)
!5283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5284, size: 64)
!5284 = !DISubroutineType(types: !5285)
!5285 = !{null, !5234, !5081, !5081}
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_mode_set", scope: !5266, file: !300, line: 683, baseType: !5287, size: 64, offset: 384)
!5287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5288, size: 64)
!5288 = !DISubroutineType(types: !5289)
!5289 = !{null, !5234, !5290, !5228}
!5290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5291, size: 64)
!5291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_state", file: !5026, line: 81, size: 2688, elements: !5292)
!5292 = !{!5293, !5294, !5295, !5296, !5297, !5298, !5299, !5300, !5301, !5302, !5303, !5304, !5305, !5306, !5307, !5308, !5318, !5319, !5320, !5321, !5322, !5323, !5324, !5325, !5326, !5329, !5341}
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5291, file: !5026, line: 83, baseType: !5024, size: 64)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !5291, file: !5026, line: 90, baseType: !881, size: 8, offset: 64)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5291, file: !5026, line: 105, baseType: !881, size: 8, offset: 72)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "planes_changed", scope: !5291, file: !5026, line: 111, baseType: !881, size: 1, offset: 80, flags: DIFlagBitField, extraData: i64 80)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "mode_changed", scope: !5291, file: !5026, line: 123, baseType: !881, size: 1, offset: 81, flags: DIFlagBitField, extraData: i64 80)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "active_changed", scope: !5291, file: !5026, line: 130, baseType: !881, size: 1, offset: 82, flags: DIFlagBitField, extraData: i64 80)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "connectors_changed", scope: !5291, file: !5026, line: 141, baseType: !881, size: 1, offset: 83, flags: DIFlagBitField, extraData: i64 80)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "zpos_changed", scope: !5291, file: !5026, line: 147, baseType: !881, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 80)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "color_mgmt_changed", scope: !5291, file: !5026, line: 153, baseType: !881, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 80)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "no_vblank", scope: !5291, file: !5026, line: 189, baseType: !881, size: 1, offset: 86, flags: DIFlagBitField, extraData: i64 80)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "plane_mask", scope: !5291, file: !5026, line: 195, baseType: !609, size: 32, offset: 96)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "connector_mask", scope: !5291, file: !5026, line: 201, baseType: !609, size: 32, offset: 128)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_mask", scope: !5291, file: !5026, line: 207, baseType: !609, size: 32, offset: 160)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "adjusted_mode", scope: !5291, file: !5026, line: 222, baseType: !4963, size: 960, offset: 192)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5291, file: !5026, line: 239, baseType: !4963, size: 960, offset: 1152)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "mode_blob", scope: !5291, file: !5026, line: 245, baseType: !5309, size: 64, offset: 2112)
!5309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5310, size: 64)
!5310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property_blob", file: !4847, line: 216, size: 704, elements: !5311)
!5311 = !{!5312, !5313, !5314, !5315, !5316, !5317}
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5310, file: !4847, line: 217, baseType: !4833, size: 256)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5310, file: !4847, line: 218, baseType: !352, size: 64, offset: 256)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "head_global", scope: !5310, file: !4847, line: 219, baseType: !381, size: 128, offset: 320)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "head_file", scope: !5310, file: !4847, line: 220, baseType: !381, size: 128, offset: 448)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5310, file: !4847, line: 221, baseType: !507, size: 64, offset: 576)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5310, file: !4847, line: 222, baseType: !345, size: 64, offset: 640)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut", scope: !5291, file: !5026, line: 254, baseType: !5309, size: 64, offset: 2176)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "ctm", scope: !5291, file: !5026, line: 262, baseType: !5309, size: 64, offset: 2240)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut", scope: !5291, file: !5026, line: 275, baseType: !5309, size: 64, offset: 2304)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "target_vblank", scope: !5291, file: !5026, line: 283, baseType: !609, size: 32, offset: 2368)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "async_flip", scope: !5291, file: !5026, line: 291, baseType: !881, size: 8, offset: 2400)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_enabled", scope: !5291, file: !5026, line: 300, baseType: !881, size: 8, offset: 2408)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_active", scope: !5291, file: !5026, line: 311, baseType: !881, size: 8, offset: 2416)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter", scope: !5291, file: !5026, line: 318, baseType: !225, size: 32, offset: 2432)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5291, file: !5026, line: 375, baseType: !5327, size: 64, offset: 2496)
!5327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5328, size: 64)
!5328 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_pending_vblank_event", file: !5026, line: 58, flags: DIFlagFwdDecl)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5291, file: !5026, line: 384, baseType: !5330, size: 64, offset: 2560)
!5330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5331, size: 64)
!5331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_commit", file: !5005, line: 72, size: 1152, elements: !5332)
!5332 = !{!5333, !5334, !5335, !5336, !5337, !5338, !5339, !5340}
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5331, file: !5005, line: 78, baseType: !5024, size: 64)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5331, file: !5005, line: 87, baseType: !357, size: 32, offset: 64)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "flip_done", scope: !5331, file: !5005, line: 101, baseType: !750, size: 256, offset: 128)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "hw_done", scope: !5331, file: !5005, line: 119, baseType: !750, size: 256, offset: 384)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_done", scope: !5331, file: !5005, line: 133, baseType: !750, size: 256, offset: 640)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "commit_entry", scope: !5331, file: !5005, line: 141, baseType: !381, size: 128, offset: 896)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5331, file: !5005, line: 148, baseType: !5327, size: 64, offset: 1024)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "abort_completion", scope: !5331, file: !5005, line: 157, baseType: !881, size: 8, offset: 1088)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5291, file: !5026, line: 387, baseType: !5003, size: 64, offset: 2624)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !5266, file: !300, line: 702, baseType: !5343, size: 64, offset: 448)
!5343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5344, size: 64)
!5344 = !DISubroutineType(types: !5345)
!5345 = !{!212, !5234, !5086}
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_disable", scope: !5266, file: !300, line: 725, baseType: !5347, size: 64, offset: 512)
!5347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5348, size: 64)
!5348 = !DISubroutineType(types: !5349)
!5349 = !{null, !5234, !5003}
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_enable", scope: !5266, file: !300, line: 748, baseType: !5347, size: 64, offset: 576)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !5266, file: !300, line: 782, baseType: !5254, size: 64, offset: 640)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !5266, file: !300, line: 800, baseType: !5254, size: 64, offset: 704)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !5266, file: !300, line: 838, baseType: !5354, size: 64, offset: 768)
!5354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5355, size: 64)
!5355 = !DISubroutineType(types: !5356)
!5356 = !{!115, !5234, !5290, !5228}
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "link_status", scope: !5229, file: !207, line: 918, baseType: !230, size: 32, offset: 192)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5229, file: !207, line: 921, baseType: !5003, size: 64, offset: 256)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5229, file: !207, line: 928, baseType: !5330, size: 64, offset: 320)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "tv", scope: !5229, file: !207, line: 931, baseType: !5361, size: 448, offset: 384)
!5361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tv_connector_state", file: !207, line: 867, size: 448, elements: !5362)
!5362 = !{!5363, !5364, !5365, !5372, !5373, !5374, !5375, !5376, !5377, !5378, !5379}
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "select_subconnector", scope: !5361, file: !207, line: 868, baseType: !234, size: 32)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "subconnector", scope: !5361, file: !207, line: 869, baseType: !234, size: 32, offset: 32)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !5361, file: !207, line: 870, baseType: !5366, size: 128, offset: 64)
!5366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_tv_margins", file: !207, line: 831, size: 128, elements: !5367)
!5367 = !{!5368, !5369, !5370, !5371}
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !5366, file: !207, line: 835, baseType: !13, size: 32)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !5366, file: !207, line: 840, baseType: !13, size: 32, offset: 32)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !5366, file: !207, line: 845, baseType: !13, size: 32, offset: 64)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !5366, file: !207, line: 850, baseType: !13, size: 32, offset: 96)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mode", scope: !5361, file: !207, line: 871, baseType: !13, size: 32, offset: 192)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5361, file: !207, line: 872, baseType: !13, size: 32, offset: 224)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !5361, file: !207, line: 873, baseType: !13, size: 32, offset: 256)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "contrast", scope: !5361, file: !207, line: 874, baseType: !13, size: 32, offset: 288)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "flicker_reduction", scope: !5361, file: !207, line: 875, baseType: !13, size: 32, offset: 320)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "overscan", scope: !5361, file: !207, line: 876, baseType: !13, size: 32, offset: 352)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "saturation", scope: !5361, file: !207, line: 877, baseType: !13, size: 32, offset: 384)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "hue", scope: !5361, file: !207, line: 878, baseType: !13, size: 32, offset: 416)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_aware", scope: !5229, file: !207, line: 945, baseType: !881, size: 8, offset: 832)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !5229, file: !207, line: 954, baseType: !190, size: 32, offset: 864)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !5229, file: !207, line: 962, baseType: !13, size: 32, offset: 896)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type", scope: !5229, file: !207, line: 968, baseType: !13, size: 32, offset: 928)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode", scope: !5229, file: !207, line: 974, baseType: !13, size: 32, offset: 960)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection", scope: !5229, file: !207, line: 980, baseType: !13, size: 32, offset: 992)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !5229, file: !207, line: 987, baseType: !250, size: 32, offset: 1024)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_job", scope: !5229, file: !207, line: 1000, baseType: !5388, size: 64, offset: 1088)
!5388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5389, size: 64)
!5389 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_writeback_job", file: !207, line: 1000, flags: DIFlagFwdDecl)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "max_requested_bpc", scope: !5229, file: !207, line: 1006, baseType: !418, size: 8, offset: 1152)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc", scope: !5229, file: !207, line: 1012, baseType: !418, size: 8, offset: 1160)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_sw_state", scope: !5229, file: !207, line: 1018, baseType: !270, size: 32, offset: 1184)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata", scope: !5229, file: !207, line: 1024, baseType: !5309, size: 64, offset: 1216)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5195, file: !207, line: 1239, baseType: !5395, size: 64, offset: 640)
!5395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5396, size: 64)
!5396 = !DISubroutineType(types: !5397)
!5397 = !{null, !5086, !5228}
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5195, file: !207, line: 1284, baseType: !5399, size: 64, offset: 704)
!5399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5400, size: 64)
!5400 = !DISubroutineType(types: !5401)
!5401 = !{!115, !5086, !5228, !4845, !4856}
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5195, file: !207, line: 1307, baseType: !5403, size: 64, offset: 768)
!5403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5404, size: 64)
!5404 = !DISubroutineType(types: !5405)
!5405 = !{!115, !5086, !5406, !4845, !4855}
!5406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5407, size: 64)
!5407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5229)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5195, file: !207, line: 1321, baseType: !5409, size: 64, offset: 832)
!5409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5410, size: 64)
!5410 = !DISubroutineType(types: !5411)
!5411 = !{null, !5412, !5406}
!5412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5413, size: 64)
!5413 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_printer", file: !207, line: 45, flags: DIFlagFwdDecl)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "oob_hotplug_event", scope: !5195, file: !207, line: 1330, baseType: !5202, size: 64, offset: 896)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_init", scope: !5195, file: !207, line: 1337, baseType: !5416, size: 64, offset: 960)
!5416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5417, size: 64)
!5417 = !DISubroutineType(types: !5418)
!5418 = !{null, !5086, !575}
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "edid_blob_ptr", scope: !5087, file: !207, line: 1632, baseType: !5309, size: 64, offset: 3200)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5087, file: !207, line: 1635, baseType: !4840, size: 3136, offset: 3264)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !5087, file: !207, line: 1641, baseType: !4845, size: 64, offset: 6400)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_capable_property", scope: !5087, file: !207, line: 1652, baseType: !4845, size: 64, offset: 6464)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace_property", scope: !5087, file: !207, line: 1658, baseType: !4845, size: 64, offset: 6528)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "path_blob_ptr", scope: !5087, file: !207, line: 1666, baseType: !5309, size: 64, offset: 6592)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc_property", scope: !5087, file: !207, line: 1672, baseType: !4845, size: 64, offset: 6656)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen", scope: !5087, file: !207, line: 1675, baseType: !5427, size: 64, offset: 6720)
!5427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5428, size: 64)
!5428 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_privacy_screen", file: !207, line: 46, flags: DIFlagFwdDecl)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_notifier", scope: !5087, file: !207, line: 1678, baseType: !5430, size: 192, offset: 6784)
!5430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !5431, line: 54, size: 192, elements: !5432)
!5431 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!5432 = !{!5433, !5439, !5440}
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !5430, file: !5431, line: 55, baseType: !5434, size: 64)
!5434 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !5431, line: 51, baseType: !5435)
!5435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5436, size: 64)
!5436 = !DISubroutineType(types: !5437)
!5437 = !{!115, !5438, !510, !345}
!5438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5430, size: 64)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5430, file: !5431, line: 56, baseType: !5438, size: 64, offset: 64)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !5430, file: !5431, line: 57, baseType: !115, size: 32, offset: 128)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_sw_state_property", scope: !5087, file: !207, line: 1684, baseType: !4845, size: 64, offset: 6976)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_hw_state_property", scope: !5087, file: !207, line: 1690, baseType: !4845, size: 64, offset: 7040)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "polled", scope: !5087, file: !207, line: 1717, baseType: !5444, size: 8, offset: 7104)
!5444 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !347, line: 108, baseType: !418)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5087, file: !207, line: 1725, baseType: !115, size: 32, offset: 7136)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5087, file: !207, line: 1728, baseType: !5447, size: 64, offset: 7168)
!5447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5448, size: 64)
!5448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5449)
!5449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_helper_funcs", file: !300, line: 860, size: 768, elements: !5450)
!5450 = !{!5451, !5452, !5456, !5460, !5465, !5469, !5473, !5477, !5481, !5487, !5491, !5492}
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "get_modes", scope: !5449, file: !300, line: 904, baseType: !5219, size: 64)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "detect_ctx", scope: !5449, file: !300, line: 930, baseType: !5453, size: 64, offset: 64)
!5453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5454, size: 64)
!5454 = !DISubroutineType(types: !5455)
!5455 = !{!115, !5086, !4778, !881}
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !5449, file: !300, line: 968, baseType: !5457, size: 64, offset: 128)
!5457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5458, size: 64)
!5458 = !DISubroutineType(types: !5459)
!5459 = !{!147, !5086, !5081}
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid_ctx", scope: !5449, file: !300, line: 1007, baseType: !5461, size: 64, offset: 192)
!5461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5462, size: 64)
!5462 = !DISubroutineType(types: !5463)
!5463 = !{!115, !5086, !5081, !4778, !5464}
!5464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "best_encoder", scope: !5449, file: !300, line: 1040, baseType: !5466, size: 64, offset: 256)
!5466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5467, size: 64)
!5467 = !DISubroutineType(types: !5468)
!5468 = !{!5234, !5086}
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_best_encoder", scope: !5449, file: !300, line: 1066, baseType: !5470, size: 64, offset: 320)
!5470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5471, size: 64)
!5471 = !DISubroutineType(types: !5472)
!5472 = !{!5234, !5086, !5003}
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !5449, file: !300, line: 1100, baseType: !5474, size: 64, offset: 384)
!5474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5475, size: 64)
!5475 = !DISubroutineType(types: !5476)
!5476 = !{!115, !5086, !5003}
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !5449, file: !300, line: 1115, baseType: !5478, size: 64, offset: 448)
!5478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5479, size: 64)
!5479 = !DISubroutineType(types: !5480)
!5480 = !{null, !5086, !5003}
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_writeback_job", scope: !5449, file: !300, line: 1132, baseType: !5482, size: 64, offset: 512)
!5482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5483, size: 64)
!5483 = !DISubroutineType(types: !5484)
!5484 = !{!115, !5485, !5388}
!5485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5486, size: 64)
!5486 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_writeback_connector", file: !300, line: 51, flags: DIFlagFwdDecl)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_writeback_job", scope: !5449, file: !300, line: 1147, baseType: !5488, size: 64, offset: 576)
!5488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5489, size: 64)
!5489 = !DISubroutineType(types: !5490)
!5490 = !{null, !5485, !5388}
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "enable_hpd", scope: !5449, file: !300, line: 1159, baseType: !5202, size: 64, offset: 640)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "disable_hpd", scope: !5449, file: !300, line: 1170, baseType: !5202, size: 64, offset: 704)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_mode", scope: !5087, file: !207, line: 1731, baseType: !5494, size: 768, offset: 7232)
!5494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_cmdline_mode", file: !207, line: 1348, size: 768, elements: !5495)
!5495 = !{!5496, !5497, !5498, !5499, !5500, !5501, !5502, !5503, !5504, !5505, !5506, !5507, !5508, !5509, !5510, !5511, !5512, !5513, !5514}
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5494, file: !207, line: 1354, baseType: !3707, size: 256)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "specified", scope: !5494, file: !207, line: 1361, baseType: !881, size: 8, offset: 256)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "refresh_specified", scope: !5494, file: !207, line: 1368, baseType: !881, size: 8, offset: 264)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "bpp_specified", scope: !5494, file: !207, line: 1375, baseType: !881, size: 8, offset: 272)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_clock", scope: !5494, file: !207, line: 1382, baseType: !13, size: 32, offset: 288)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !5494, file: !207, line: 1389, baseType: !115, size: 32, offset: 320)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !5494, file: !207, line: 1396, baseType: !115, size: 32, offset: 352)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !5494, file: !207, line: 1403, baseType: !115, size: 32, offset: 384)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !5494, file: !207, line: 1410, baseType: !115, size: 32, offset: 416)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !5494, file: !207, line: 1417, baseType: !881, size: 8, offset: 448)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !5494, file: !207, line: 1424, baseType: !881, size: 8, offset: 456)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "cvt", scope: !5494, file: !207, line: 1432, baseType: !881, size: 8, offset: 464)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !5494, file: !207, line: 1440, baseType: !881, size: 8, offset: 472)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5494, file: !207, line: 1448, baseType: !276, size: 32, offset: 480)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_reflection", scope: !5494, file: !207, line: 1458, baseType: !13, size: 32, offset: 512)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !5494, file: !207, line: 1466, baseType: !282, size: 32, offset: 544)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "tv_margins", scope: !5494, file: !207, line: 1471, baseType: !5366, size: 128, offset: 576)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode", scope: !5494, file: !207, line: 1476, baseType: !289, size: 32, offset: 704)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_specified", scope: !5494, file: !207, line: 1483, baseType: !881, size: 8, offset: 736)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5087, file: !207, line: 1733, baseType: !276, size: 32, offset: 8000)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "edid_override", scope: !5087, file: !207, line: 1741, baseType: !5517, size: 64, offset: 8064)
!5517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5518, size: 64)
!5518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5519)
!5519 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_edid", file: !207, line: 1741, flags: DIFlagFwdDecl)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "edid_override_mutex", scope: !5087, file: !207, line: 1746, baseType: !801, size: 256, offset: 8128)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "epoch_counter", scope: !5087, file: !207, line: 1749, baseType: !613, size: 64, offset: 8384)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "possible_encoders", scope: !5087, file: !207, line: 1756, baseType: !609, size: 32, offset: 8448)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !5087, file: !207, line: 1764, baseType: !5234, size: 64, offset: 8512)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "eld", scope: !5087, file: !207, line: 1768, baseType: !5525, size: 1024, offset: 8576)
!5525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5444, size: 1024, elements: !5526)
!5526 = !{!5527}
!5527 = !DISubrange(count: 128)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "eld_mutex", scope: !5087, file: !207, line: 1770, baseType: !801, size: 256, offset: 9600)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "latency_present", scope: !5087, file: !207, line: 1773, baseType: !5530, size: 16, offset: 9856)
!5530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !881, size: 16, elements: !920)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "video_latency", scope: !5087, file: !207, line: 1778, baseType: !5532, size: 64, offset: 9888)
!5532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 64, elements: !920)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "audio_latency", scope: !5087, file: !207, line: 1783, baseType: !5532, size: 64, offset: 9952)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "ddc", scope: !5087, file: !207, line: 1794, baseType: !5535, size: 64, offset: 10048)
!5535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5536, size: 64)
!5536 = !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !207, line: 48, flags: DIFlagFwdDecl)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "null_edid_counter", scope: !5087, file: !207, line: 1800, baseType: !115, size: 32, offset: 10112)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "bad_edid_counter", scope: !5087, file: !207, line: 1803, baseType: !13, size: 32, offset: 10144)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "edid_corrupt", scope: !5087, file: !207, line: 1810, baseType: !881, size: 8, offset: 10176)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "real_edid_checksum", scope: !5087, file: !207, line: 1816, baseType: !418, size: 8, offset: 10184)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_entry", scope: !5087, file: !207, line: 1819, baseType: !575, size: 64, offset: 10240)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5087, file: !207, line: 1835, baseType: !5228, size: 64, offset: 10304)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "tile_blob_ptr", scope: !5087, file: !207, line: 1852, baseType: !5309, size: 64, offset: 10368)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "has_tile", scope: !5087, file: !207, line: 1855, baseType: !881, size: 8, offset: 10432)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "tile_group", scope: !5087, file: !207, line: 1857, baseType: !5546, size: 64, offset: 10496)
!5546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5547, size: 64)
!5547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tile_group", file: !207, line: 2058, size: 256, elements: !5548)
!5548 = !{!5549, !5550, !5551, !5552}
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5547, file: !207, line: 2059, baseType: !357, size: 32)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5547, file: !207, line: 2060, baseType: !352, size: 64, offset: 64)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5547, file: !207, line: 2061, baseType: !115, size: 32, offset: 128)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "group_data", scope: !5547, file: !207, line: 2062, baseType: !5553, size: 64, offset: 160)
!5553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 64, elements: !1727)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "tile_is_single_monitor", scope: !5087, file: !207, line: 1859, baseType: !881, size: 8, offset: 10560)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "num_h_tile", scope: !5087, file: !207, line: 1863, baseType: !5444, size: 8, offset: 10568)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "num_v_tile", scope: !5087, file: !207, line: 1863, baseType: !5444, size: 8, offset: 10576)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_loc", scope: !5087, file: !207, line: 1866, baseType: !5444, size: 8, offset: 10584)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_loc", scope: !5087, file: !207, line: 1866, baseType: !5444, size: 8, offset: 10592)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_size", scope: !5087, file: !207, line: 1869, baseType: !5560, size: 16, offset: 10608)
!5560 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !347, line: 109, baseType: !428)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_size", scope: !5087, file: !207, line: 1869, baseType: !5560, size: 16, offset: 10624)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "free_node", scope: !5087, file: !207, line: 1878, baseType: !1590, size: 64, offset: 10688)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_sink_metadata", scope: !5087, file: !207, line: 1881, baseType: !5564, size: 96, offset: 10752)
!5564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_sink_metadata", file: !191, line: 383, size: 96, elements: !5565)
!5565 = !{!5566, !5567}
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !5564, file: !191, line: 387, baseType: !610, size: 32)
!5567 = !DIDerivedType(tag: DW_TAG_member, scope: !5564, file: !191, line: 391, baseType: !5568, size: 64, offset: 32)
!5568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5564, file: !191, line: 391, size: 64, elements: !5569)
!5569 = !{!5570}
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi_type1", scope: !5568, file: !191, line: 392, baseType: !5571, size: 64)
!5571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_static_metadata", file: !191, line: 370, size: 64, elements: !5572)
!5572 = !{!5573, !5574, !5575, !5576, !5577}
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "eotf", scope: !5571, file: !191, line: 371, baseType: !420, size: 8)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !5571, file: !191, line: 372, baseType: !420, size: 8, offset: 8)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "max_cll", scope: !5571, file: !191, line: 373, baseType: !429, size: 16, offset: 16)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "max_fall", scope: !5571, file: !191, line: 374, baseType: !429, size: 16, offset: 32)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "min_cll", scope: !5571, file: !191, line: 375, baseType: !429, size: 16, offset: 48)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "num_connectors", scope: !5076, file: !5026, line: 1202, baseType: !507, size: 64, offset: 320)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "page_flip", scope: !5047, file: !5026, line: 576, baseType: !5580, size: 64, offset: 448)
!5580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5581, size: 64)
!5581 = !DISubroutineType(types: !5582)
!5582 = !{!115, !5024, !4826, !5327, !2056, !4778}
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "page_flip_target", scope: !5047, file: !5026, line: 595, baseType: !5584, size: 64, offset: 512)
!5584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5585, size: 64)
!5585 = !DISubroutineType(types: !5586)
!5586 = !{!115, !5024, !4826, !5327, !2056, !2056, !4778}
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5047, file: !5026, line: 615, baseType: !5588, size: 64, offset: 576)
!5588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5589, size: 64)
!5589 = !DISubroutineType(types: !5590)
!5590 = !{!115, !5024, !4845, !4856}
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5047, file: !5026, line: 649, baseType: !5592, size: 64, offset: 640)
!5592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5593, size: 64)
!5593 = !DISubroutineType(types: !5594)
!5594 = !{!5290, !5024}
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5047, file: !5026, line: 659, baseType: !5596, size: 64, offset: 704)
!5596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5597, size: 64)
!5597 = !DISubroutineType(types: !5598)
!5598 = !{null, !5024, !5290}
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5047, file: !5026, line: 704, baseType: !5600, size: 64, offset: 768)
!5600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5601, size: 64)
!5601 = !DISubroutineType(types: !5602)
!5602 = !{!115, !5024, !5290, !4845, !4856}
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5047, file: !5026, line: 726, baseType: !5604, size: 64, offset: 832)
!5604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5605, size: 64)
!5605 = !DISubroutineType(types: !5606)
!5606 = !{!115, !5024, !5607, !4845, !4855}
!5607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5608, size: 64)
!5608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5291)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5047, file: !5026, line: 744, baseType: !5610, size: 64, offset: 896)
!5610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5611, size: 64)
!5611 = !DISubroutineType(types: !5612)
!5612 = !{!115, !5024}
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5047, file: !5026, line: 755, baseType: !5050, size: 64, offset: 960)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "set_crc_source", scope: !5047, file: !5026, line: 784, baseType: !5615, size: 64, offset: 1024)
!5615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5616, size: 64)
!5616 = !DISubroutineType(types: !5617)
!5617 = !{!115, !5024, !378}
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "verify_crc_source", scope: !5047, file: !5026, line: 800, baseType: !5619, size: 64, offset: 1088)
!5619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5620, size: 64)
!5620 = !DISubroutineType(types: !5621)
!5621 = !{!115, !5024, !378, !5622}
!5622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "get_crc_sources", scope: !5047, file: !5026, line: 822, baseType: !5624, size: 64, offset: 1152)
!5624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5625, size: 64)
!5625 = !DISubroutineType(types: !5626)
!5626 = !{!5627, !5024, !5622}
!5627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5628, size: 64)
!5628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5047, file: !5026, line: 834, baseType: !5630, size: 64, offset: 1216)
!5630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5631, size: 64)
!5631 = !DISubroutineType(types: !5632)
!5632 = !{null, !5412, !5607}
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_counter", scope: !5047, file: !5026, line: 861, baseType: !5634, size: 64, offset: 1280)
!5634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5635, size: 64)
!5635 = !DISubroutineType(types: !5636)
!5636 = !{!609, !5024}
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "enable_vblank", scope: !5047, file: !5026, line: 874, baseType: !5610, size: 64, offset: 1344)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "disable_vblank", scope: !5047, file: !5026, line: 882, baseType: !5050, size: 64, offset: 1408)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_timestamp", scope: !5047, file: !5026, line: 920, baseType: !5640, size: 64, offset: 1472)
!5640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5641, size: 64)
!5641 = !DISubroutineType(types: !5642)
!5642 = !{!881, !5024, !930, !5643, !881}
!5643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_size", scope: !5025, file: !5026, line: 1068, baseType: !2056, size: 32, offset: 3328)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_store", scope: !5025, file: !5026, line: 1077, baseType: !5646, size: 64, offset: 3392)
!5646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5560, size: 64)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5025, file: !5026, line: 1080, baseType: !5648, size: 64, offset: 3456)
!5648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5649, size: 64)
!5649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5650)
!5650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_helper_funcs", file: !300, line: 65, size: 1024, elements: !5651)
!5651 = !{!5652, !5656, !5657, !5658, !5662, !5666, !5670, !5671, !5675, !5679, !5680, !5684, !5688, !5689, !5690, !5691}
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5650, file: !300, line: 82, baseType: !5653, size: 64)
!5653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5654, size: 64)
!5654 = !DISubroutineType(types: !5655)
!5655 = !{null, !5024, !115}
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !5650, file: !300, line: 97, baseType: !5050, size: 64, offset: 64)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5650, file: !300, line: 112, baseType: !5050, size: 64, offset: 128)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !5650, file: !300, line: 145, baseType: !5659, size: 64, offset: 192)
!5659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5660, size: 64)
!5660 = !DISubroutineType(types: !5661)
!5661 = !{!147, !5024, !4961}
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "mode_fixup", scope: !5650, file: !300, line: 191, baseType: !5663, size: 64, offset: 256)
!5663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5664, size: 64)
!5664 = !DISubroutineType(types: !5665)
!5665 = !{!881, !5024, !4961, !5081}
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "mode_set", scope: !5650, file: !300, line: 210, baseType: !5667, size: 64, offset: 320)
!5667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5668, size: 64)
!5668 = !DISubroutineType(types: !5669)
!5669 = !{!115, !5024, !5081, !5081, !115, !115, !4826}
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "mode_set_nofb", scope: !5650, file: !300, line: 233, baseType: !5050, size: 64, offset: 384)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "mode_set_base", scope: !5650, file: !300, line: 252, baseType: !5672, size: 64, offset: 448)
!5672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5673, size: 64)
!5673 = !DISubroutineType(types: !5674)
!5674 = !{!115, !5024, !115, !115, !4826}
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "mode_set_base_atomic", scope: !5650, file: !300, line: 269, baseType: !5676, size: 64, offset: 512)
!5676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5677, size: 64)
!5677 = !DISubroutineType(types: !5678)
!5678 = !{!115, !5024, !4826, !115, !115, !299}
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !5650, file: !300, line: 304, baseType: !5050, size: 64, offset: 576)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !5650, file: !300, line: 356, baseType: !5681, size: 64, offset: 640)
!5681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5682, size: 64)
!5682 = !DISubroutineType(types: !5683)
!5683 = !{!115, !5024, !5003}
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_begin", scope: !5650, file: !300, line: 377, baseType: !5685, size: 64, offset: 704)
!5685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5686, size: 64)
!5686 = !DISubroutineType(types: !5687)
!5687 = !{null, !5024, !5003}
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flush", scope: !5650, file: !300, line: 401, baseType: !5685, size: 64, offset: 768)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_enable", scope: !5650, file: !300, line: 423, baseType: !5685, size: 64, offset: 832)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_disable", scope: !5650, file: !300, line: 443, baseType: !5685, size: 64, offset: 896)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "get_scanout_position", scope: !5650, file: !300, line: 488, baseType: !5692, size: 64, offset: 960)
!5692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5693, size: 64)
!5693 = !DISubroutineType(types: !5694)
!5694 = !{!881, !5024, !881, !930, !930, !5643, !5643, !4961}
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5025, file: !5026, line: 1083, baseType: !4840, size: 3136, offset: 3520)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter_property", scope: !5025, file: !5026, line: 1089, baseType: !4845, size: 64, offset: 6656)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5025, file: !5026, line: 1104, baseType: !5290, size: 64, offset: 6720)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "commit_list", scope: !5025, file: !5026, line: 1121, baseType: !381, size: 128, offset: 6784)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "commit_lock", scope: !5025, file: !5026, line: 1128, baseType: !394, size: 32, offset: 6912)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_entry", scope: !5025, file: !5026, line: 1135, baseType: !575, size: 64, offset: 6976)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !5025, file: !5026, line: 1142, baseType: !5702, size: 576, offset: 7040)
!5702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_crc", file: !5703, line: 53, size: 576, elements: !5704)
!5703 = !DIFile(filename: "./include/drm/drm_debugfs_crc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e277ec0ede400e3d94103804613a92f2")
!5704 = !{!5705, !5706, !5707, !5708, !5709, !5719, !5720, !5721, !5722}
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5702, file: !5703, line: 54, baseType: !394, size: 32)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !5702, file: !5703, line: 55, baseType: !378, size: 64, offset: 64)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "opened", scope: !5702, file: !5703, line: 56, baseType: !881, size: 8, offset: 128)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "overflow", scope: !5702, file: !5703, line: 56, baseType: !881, size: 8, offset: 136)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5702, file: !5703, line: 57, baseType: !5710, size: 64, offset: 192)
!5710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5711, size: 64)
!5711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_crc_entry", file: !5703, line: 33, size: 384, elements: !5712)
!5712 = !{!5713, !5714, !5715}
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "has_frame_counter", scope: !5711, file: !5703, line: 34, baseType: !881, size: 8)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !5711, file: !5703, line: 35, baseType: !2056, size: 32, offset: 32)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !5711, file: !5703, line: 36, baseType: !5716, size: 320, offset: 64)
!5716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2056, size: 320, elements: !5717)
!5717 = !{!5718}
!5718 = !DISubrange(count: 10)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5702, file: !5703, line: 58, baseType: !115, size: 32, offset: 256)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5702, file: !5703, line: 58, baseType: !115, size: 32, offset: 288)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "values_cnt", scope: !5702, file: !5703, line: 59, baseType: !507, size: 64, offset: 320)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !5702, file: !5703, line: 60, baseType: !1555, size: 192, offset: 384)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "fence_context", scope: !5025, file: !5026, line: 1149, baseType: !13, size: 32, offset: 7616)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "fence_lock", scope: !5025, file: !5026, line: 1156, baseType: !394, size: 32, offset: 7648)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "fence_seqno", scope: !5025, file: !5026, line: 1163, baseType: !510, size: 64, offset: 7680)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_name", scope: !5025, file: !5026, line: 1170, baseType: !3707, size: 256, offset: 7744)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_data", scope: !5025, file: !5026, line: 1177, baseType: !5728, size: 64, offset: 8000)
!5728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5729, size: 64)
!5729 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_self_refresh_data", file: !5026, line: 44, flags: DIFlagFwdDecl)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !5020, file: !226, line: 70, baseType: !4826, size: 64, offset: 128)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !5020, file: !226, line: 83, baseType: !5732, size: 64, offset: 192)
!5732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5733, size: 64)
!5733 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !226, line: 83, flags: DIFlagFwdDecl)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_x", scope: !5020, file: !226, line: 92, baseType: !2035, size: 32, offset: 256)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_y", scope: !5020, file: !226, line: 99, baseType: !2035, size: 32, offset: 288)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_w", scope: !5020, file: !226, line: 103, baseType: !2056, size: 32, offset: 320)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_h", scope: !5020, file: !226, line: 103, baseType: !2056, size: 32, offset: 352)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "src_x", scope: !5020, file: !226, line: 109, baseType: !2056, size: 32, offset: 384)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "src_y", scope: !5020, file: !226, line: 114, baseType: !2056, size: 32, offset: 416)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "src_h", scope: !5020, file: !226, line: 117, baseType: !2056, size: 32, offset: 448)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "src_w", scope: !5020, file: !226, line: 117, baseType: !2056, size: 32, offset: 480)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !5020, file: !226, line: 125, baseType: !428, size: 16, offset: 512)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_blend_mode", scope: !5020, file: !226, line: 133, baseType: !5560, size: 16, offset: 528)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "rotation", scope: !5020, file: !226, line: 140, baseType: !13, size: 32, offset: 544)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "zpos", scope: !5020, file: !226, line: 155, baseType: !13, size: 32, offset: 576)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_zpos", scope: !5020, file: !226, line: 164, baseType: !13, size: 32, offset: 608)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "color_encoding", scope: !5020, file: !226, line: 171, baseType: !304, size: 32, offset: 640)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "color_range", scope: !5020, file: !226, line: 178, baseType: !311, size: 32, offset: 672)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "fb_damage_clips", scope: !5020, file: !226, line: 191, baseType: !5309, size: 64, offset: 704)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_damage_clips", scope: !5020, file: !226, line: 201, baseType: !881, size: 8, offset: 768)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !5020, file: !226, line: 223, baseType: !5752, size: 128, offset: 800)
!5752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_rect", file: !5753, line: 46, size: 128, elements: !5754)
!5753 = !DIFile(filename: "./include/drm/drm_rect.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "16c059bec9955b5d3fc8d798e393cc6b")
!5754 = !{!5755, !5756, !5757, !5758}
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !5752, file: !5753, line: 47, baseType: !115, size: 32)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !5752, file: !5753, line: 47, baseType: !115, size: 32, offset: 32)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !5752, file: !5753, line: 47, baseType: !115, size: 32, offset: 64)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !5752, file: !5753, line: 47, baseType: !115, size: 32, offset: 96)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !5020, file: !226, line: 223, baseType: !5752, size: 128, offset: 928)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "visible", scope: !5020, file: !226, line: 231, baseType: !881, size: 8, offset: 1056)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter", scope: !5020, file: !226, line: 238, baseType: !225, size: 32, offset: 1088)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5020, file: !226, line: 246, baseType: !5330, size: 64, offset: 1152)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5020, file: !226, line: 249, baseType: !5003, size: 64, offset: 1216)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !5015, file: !5005, line: 162, baseType: !5019, size: 64, offset: 128)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !5015, file: !5005, line: 162, baseType: !5019, size: 64, offset: 192)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "crtcs", scope: !5004, file: !5005, line: 402, baseType: !5767, size: 64, offset: 256)
!5767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5768, size: 64)
!5768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_crtcs_state", file: !5005, line: 165, size: 448, elements: !5769)
!5769 = !{!5770, !5771, !5772, !5773, !5774, !5775, !5776}
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5768, file: !5005, line: 166, baseType: !5024, size: 64)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5768, file: !5005, line: 167, baseType: !5290, size: 64, offset: 64)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !5768, file: !5005, line: 167, baseType: !5290, size: 64, offset: 128)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !5768, file: !5005, line: 167, baseType: !5290, size: 64, offset: 192)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5768, file: !5005, line: 177, baseType: !5330, size: 64, offset: 256)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "out_fence_ptr", scope: !5768, file: !5005, line: 179, baseType: !2153, size: 64, offset: 320)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "last_vblank_count", scope: !5768, file: !5005, line: 180, baseType: !613, size: 64, offset: 384)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !5004, file: !5005, line: 403, baseType: !115, size: 32, offset: 320)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "connectors", scope: !5004, file: !5005, line: 404, baseType: !5779, size: 64, offset: 384)
!5779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5780, size: 64)
!5780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_connnectors_state", file: !5005, line: 183, size: 320, elements: !5781)
!5781 = !{!5782, !5783, !5784, !5785, !5786}
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5780, file: !5005, line: 184, baseType: !5086, size: 64)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5780, file: !5005, line: 185, baseType: !5228, size: 64, offset: 64)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !5780, file: !5005, line: 185, baseType: !5228, size: 64, offset: 128)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !5780, file: !5005, line: 185, baseType: !5228, size: 64, offset: 192)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "out_fence_ptr", scope: !5780, file: !5005, line: 193, baseType: !2153, size: 64, offset: 256)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "num_private_objs", scope: !5004, file: !5005, line: 405, baseType: !115, size: 32, offset: 448)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "private_objs", scope: !5004, file: !5005, line: 406, baseType: !5789, size: 64, offset: 512)
!5789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5790, size: 64)
!5790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_private_objs_state", file: !5005, line: 343, size: 256, elements: !5791)
!5791 = !{!5792, !5823, !5824, !5825}
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5790, file: !5005, line: 344, baseType: !5793, size: 64)
!5793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5794, size: 64)
!5794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_private_obj", file: !5005, line: 286, size: 704, elements: !5795)
!5795 = !{!5796, !5797, !5798, !5804}
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5794, file: !5005, line: 291, baseType: !381, size: 128)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5794, file: !5005, line: 296, baseType: !4759, size: 448, offset: 128)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5794, file: !5005, line: 301, baseType: !5799, size: 64, offset: 576)
!5799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5800, size: 64)
!5800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_private_state", file: !5005, line: 331, size: 128, elements: !5801)
!5801 = !{!5802, !5803}
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5800, file: !5005, line: 335, baseType: !5003, size: 64)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !5800, file: !5005, line: 340, baseType: !5793, size: 64, offset: 64)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5794, file: !5005, line: 309, baseType: !5805, size: 64, offset: 640)
!5805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5806, size: 64)
!5806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5807)
!5807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_private_state_funcs", file: !5005, line: 209, size: 192, elements: !5808)
!5808 = !{!5809, !5813, !5817}
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5807, file: !5005, line: 221, baseType: !5810, size: 64)
!5810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5811, size: 64)
!5811 = !DISubroutineType(types: !5812)
!5812 = !{!5799, !5793}
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5807, file: !5005, line: 228, baseType: !5814, size: 64, offset: 64)
!5814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5815, size: 64)
!5815 = !DISubroutineType(types: !5816)
!5816 = !{null, !5793, !5799}
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5807, file: !5005, line: 240, baseType: !5818, size: 64, offset: 128)
!5818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5819, size: 64)
!5819 = !DISubroutineType(types: !5820)
!5820 = !{null, !5412, !5821}
!5821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5822, size: 64)
!5822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5800)
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5790, file: !5005, line: 345, baseType: !5799, size: 64, offset: 64)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !5790, file: !5005, line: 345, baseType: !5799, size: 64, offset: 128)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !5790, file: !5005, line: 345, baseType: !5799, size: 64, offset: 192)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !5004, file: !5005, line: 408, baseType: !4778, size: 64, offset: 576)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "fake_commit", scope: !5004, file: !5005, line: 420, baseType: !5330, size: 64, offset: 640)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "commit_work", scope: !5004, file: !5005, line: 428, baseType: !1061, size: 256, offset: 704)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !4820, file: !4755, line: 283, baseType: !5830, size: 64, offset: 320)
!5830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5831, size: 64)
!5831 = !DISubroutineType(types: !5832)
!5832 = !{!115, !352, !5003, !881}
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_alloc", scope: !4820, file: !4755, line: 302, baseType: !5834, size: 64, offset: 384)
!5834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5835, size: 64)
!5835 = !DISubroutineType(types: !5836)
!5836 = !{!5003, !352}
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_clear", scope: !4820, file: !4755, line: 323, baseType: !5838, size: 64, offset: 448)
!5838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5839, size: 64)
!5839 = !DISubroutineType(types: !5840)
!5840 = !{null, !5003}
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_free", scope: !4820, file: !4755, line: 338, baseType: !5838, size: 64, offset: 512)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "poll_enabled", scope: !4754, file: !4755, line: 546, baseType: !881, size: 8, offset: 3520)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "poll_running", scope: !4754, file: !4755, line: 547, baseType: !881, size: 8, offset: 3528)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_event", scope: !4754, file: !4755, line: 548, baseType: !881, size: 8, offset: 3536)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_work", scope: !4754, file: !4755, line: 549, baseType: !1118, size: 704, offset: 3584)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "blob_lock", scope: !4754, file: !4755, line: 557, baseType: !801, size: 256, offset: 4288)
!5847 = !DIDerivedType(tag: DW_TAG_member, name: "property_blob_list", scope: !4754, file: !4755, line: 565, baseType: !381, size: 128, offset: 4544)
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "edid_property", scope: !4754, file: !4755, line: 573, baseType: !4845, size: 64, offset: 4672)
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "dpms_property", scope: !4754, file: !4755, line: 578, baseType: !4845, size: 64, offset: 4736)
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "path_property", scope: !4754, file: !4755, line: 583, baseType: !4845, size: 64, offset: 4800)
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "tile_property", scope: !4754, file: !4755, line: 589, baseType: !4845, size: 64, offset: 4864)
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "link_status_property", scope: !4754, file: !4755, line: 594, baseType: !4845, size: 64, offset: 4928)
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "plane_type_property", scope: !4754, file: !4755, line: 599, baseType: !4845, size: 64, offset: 4992)
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_x", scope: !4754, file: !4755, line: 604, baseType: !4845, size: 64, offset: 5056)
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_y", scope: !4754, file: !4755, line: 609, baseType: !4845, size: 64, offset: 5120)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_w", scope: !4754, file: !4755, line: 614, baseType: !4845, size: 64, offset: 5184)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_h", scope: !4754, file: !4755, line: 619, baseType: !4845, size: 64, offset: 5248)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_x", scope: !4754, file: !4755, line: 624, baseType: !4845, size: 64, offset: 5312)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_y", scope: !4754, file: !4755, line: 629, baseType: !4845, size: 64, offset: 5376)
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_w", scope: !4754, file: !4755, line: 634, baseType: !4845, size: 64, offset: 5440)
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_h", scope: !4754, file: !4755, line: 639, baseType: !4845, size: 64, offset: 5504)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_id", scope: !4754, file: !4755, line: 644, baseType: !4845, size: 64, offset: 5568)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "prop_in_fence_fd", scope: !4754, file: !4755, line: 649, baseType: !4845, size: 64, offset: 5632)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "prop_out_fence_ptr", scope: !4754, file: !4755, line: 655, baseType: !4845, size: 64, offset: 5696)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_id", scope: !4754, file: !4755, line: 660, baseType: !4845, size: 64, offset: 5760)
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_damage_clips", scope: !4754, file: !4755, line: 669, baseType: !4845, size: 64, offset: 5824)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "prop_active", scope: !4754, file: !4755, line: 675, baseType: !4845, size: 64, offset: 5888)
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "prop_mode_id", scope: !4754, file: !4755, line: 681, baseType: !4845, size: 64, offset: 5952)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "prop_vrr_enabled", scope: !4754, file: !4755, line: 686, baseType: !4845, size: 64, offset: 6016)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_subconnector_property", scope: !4754, file: !4755, line: 692, baseType: !4845, size: 64, offset: 6080)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_select_subconnector_property", scope: !4754, file: !4755, line: 697, baseType: !4845, size: 64, offset: 6144)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "dp_subconnector_property", scope: !4754, file: !4755, line: 703, baseType: !4845, size: 64, offset: 6208)
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "tv_subconnector_property", scope: !4754, file: !4755, line: 709, baseType: !4845, size: 64, offset: 6272)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "tv_select_subconnector_property", scope: !4754, file: !4755, line: 714, baseType: !4845, size: 64, offset: 6336)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_tv_mode_property", scope: !4754, file: !4755, line: 722, baseType: !4845, size: 64, offset: 6400)
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_property", scope: !4754, file: !4755, line: 728, baseType: !4845, size: 64, offset: 6464)
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "tv_left_margin_property", scope: !4754, file: !4755, line: 734, baseType: !4845, size: 64, offset: 6528)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "tv_right_margin_property", scope: !4754, file: !4755, line: 739, baseType: !4845, size: 64, offset: 6592)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "tv_top_margin_property", scope: !4754, file: !4755, line: 744, baseType: !4845, size: 64, offset: 6656)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "tv_bottom_margin_property", scope: !4754, file: !4755, line: 749, baseType: !4845, size: 64, offset: 6720)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "tv_brightness_property", scope: !4754, file: !4755, line: 754, baseType: !4845, size: 64, offset: 6784)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "tv_contrast_property", scope: !4754, file: !4755, line: 759, baseType: !4845, size: 64, offset: 6848)
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "tv_flicker_reduction_property", scope: !4754, file: !4755, line: 764, baseType: !4845, size: 64, offset: 6912)
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "tv_overscan_property", scope: !4754, file: !4755, line: 769, baseType: !4845, size: 64, offset: 6976)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "tv_saturation_property", scope: !4754, file: !4755, line: 774, baseType: !4845, size: 64, offset: 7040)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "tv_hue_property", scope: !4754, file: !4755, line: 778, baseType: !4845, size: 64, offset: 7104)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !4754, file: !4755, line: 784, baseType: !4845, size: 64, offset: 7168)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_property", scope: !4754, file: !4755, line: 789, baseType: !4845, size: 64, offset: 7232)
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_property", scope: !4754, file: !4755, line: 794, baseType: !4845, size: 64, offset: 7296)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_property", scope: !4754, file: !4755, line: 799, baseType: !4845, size: 64, offset: 7360)
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_size_property", scope: !4754, file: !4755, line: 804, baseType: !4845, size: 64, offset: 7424)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "ctm_property", scope: !4754, file: !4755, line: 810, baseType: !4845, size: 64, offset: 7488)
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_property", scope: !4754, file: !4755, line: 816, baseType: !4845, size: 64, offset: 7552)
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_size_property", scope: !4754, file: !4755, line: 821, baseType: !4845, size: 64, offset: 7616)
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_x_property", scope: !4754, file: !4755, line: 827, baseType: !4845, size: 64, offset: 7680)
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_y_property", scope: !4754, file: !4755, line: 832, baseType: !4845, size: 64, offset: 7744)
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop_property", scope: !4754, file: !4755, line: 839, baseType: !4845, size: 64, offset: 7808)
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation_property", scope: !4754, file: !4755, line: 846, baseType: !4845, size: 64, offset: 7872)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_fb_id_property", scope: !4754, file: !4755, line: 853, baseType: !4845, size: 64, offset: 7936)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_pixel_formats_property", scope: !4754, file: !4755, line: 861, baseType: !4845, size: 64, offset: 8000)
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_out_fence_ptr_property", scope: !4754, file: !4755, line: 869, baseType: !4845, size: 64, offset: 8064)
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata_property", scope: !4754, file: !4755, line: 876, baseType: !4845, size: 64, offset: 8128)
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection_property", scope: !4754, file: !4755, line: 882, baseType: !4845, size: 64, offset: 8192)
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type_property", scope: !4754, file: !4755, line: 888, baseType: !4845, size: 64, offset: 8256)
!5905 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_depth", scope: !4754, file: !4755, line: 891, baseType: !2056, size: 32, offset: 8320)
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow", scope: !4754, file: !4755, line: 891, baseType: !2056, size: 32, offset: 8352)
!5907 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_xbgr_30bpp", scope: !4754, file: !4755, line: 899, baseType: !881, size: 8, offset: 8384)
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_host_byte_order", scope: !4754, file: !4755, line: 913, baseType: !881, size: 8, offset: 8392)
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "async_page_flip", scope: !4754, file: !4755, line: 919, baseType: !881, size: 8, offset: 8400)
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "fb_modifiers_not_supported", scope: !4754, file: !4755, line: 929, baseType: !881, size: 8, offset: 8408)
!5911 = !DIDerivedType(tag: DW_TAG_member, name: "normalize_zpos", scope: !4754, file: !4755, line: 937, baseType: !881, size: 8, offset: 8416)
!5912 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers_property", scope: !4754, file: !4755, line: 943, baseType: !4845, size: 64, offset: 8448)
!5913 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_width", scope: !4754, file: !4755, line: 946, baseType: !2056, size: 32, offset: 8512)
!5914 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_height", scope: !4754, file: !4755, line: 946, baseType: !2056, size: 32, offset: 8544)
!5915 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_state", scope: !4754, file: !4755, line: 955, baseType: !5003, size: 64, offset: 8576)
!5916 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4754, file: !4755, line: 957, baseType: !5917, size: 64, offset: 8640)
!5917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5918, size: 64)
!5918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5919)
!5919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_helper_funcs", file: !300, line: 1454, size: 128, elements: !5920)
!5920 = !{!5921, !5922}
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit_tail", scope: !5919, file: !300, line: 1490, baseType: !5838, size: 64)
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit_setup", scope: !5919, file: !300, line: 1511, baseType: !5923, size: 64, offset: 64)
!5923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5924, size: 64)
!5924 = !DISubroutineType(types: !5925)
!5925 = !{!115, !5003}
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_lock", scope: !353, file: !200, line: 285, baseType: !801, size: 256, offset: 11648)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_idr", scope: !353, file: !200, line: 288, baseType: !1950, size: 192, offset: 11904)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "vma_offset_manager", scope: !353, file: !200, line: 291, baseType: !5929, size: 64, offset: 12096)
!5929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5930, size: 64)
!5930 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !200, line: 16, flags: DIFlagFwdDecl)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "vram_mm", scope: !353, file: !200, line: 294, baseType: !5932, size: 64, offset: 12160)
!5932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5933, size: 64)
!5933 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vram_mm", file: !200, line: 17, flags: DIFlagFwdDecl)
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "switch_power_state", scope: !353, file: !200, line: 304, baseType: !199, size: 32, offset: 12224)
!5935 = !DIDerivedType(tag: DW_TAG_member, name: "fb_helper", scope: !353, file: !200, line: 312, baseType: !5936, size: 64, offset: 12288)
!5936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5937, size: 64)
!5937 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_fb_helper", file: !200, line: 18, flags: DIFlagFwdDecl)
!5938 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !353, file: !200, line: 319, baseType: !801, size: 256, offset: 12352)
!5939 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !353, file: !200, line: 327, baseType: !381, size: 128, offset: 12608)
!5940 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !349, file: !226, line: 614, baseType: !381, size: 128, offset: 64)
!5941 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !349, file: !226, line: 617, baseType: !460, size: 64, offset: 192)
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !349, file: !226, line: 628, baseType: !4759, size: 448, offset: 256)
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !349, file: !226, line: 631, baseType: !4833, size: 256, offset: 704)
!5944 = !DIDerivedType(tag: DW_TAG_member, name: "possible_crtcs", scope: !349, file: !226, line: 637, baseType: !2056, size: 32, offset: 960)
!5945 = !DIDerivedType(tag: DW_TAG_member, name: "format_types", scope: !349, file: !226, line: 639, baseType: !5946, size: 64, offset: 1024)
!5946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "format_count", scope: !349, file: !226, line: 641, baseType: !13, size: 32, offset: 1088)
!5948 = !DIDerivedType(tag: DW_TAG_member, name: "format_default", scope: !349, file: !226, line: 646, baseType: !881, size: 8, offset: 1120)
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers", scope: !349, file: !226, line: 649, baseType: !4855, size: 64, offset: 1152)
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "modifier_count", scope: !349, file: !226, line: 651, baseType: !13, size: 32, offset: 1216)
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !349, file: !226, line: 660, baseType: !5024, size: 64, offset: 1280)
!5952 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !349, file: !226, line: 669, baseType: !4826, size: 64, offset: 1344)
!5953 = !DIDerivedType(tag: DW_TAG_member, name: "old_fb", scope: !349, file: !226, line: 677, baseType: !4826, size: 64, offset: 1408)
!5954 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !349, file: !226, line: 680, baseType: !5955, size: 64, offset: 1472)
!5955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5956, size: 64)
!5956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5957)
!5957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_funcs", file: !226, line: 279, size: 832, elements: !5958)
!5958 = !{!5959, !5963, !5967, !5971, !5972, !5976, !5980, !5984, !5988, !5994, !5998, !5999, !6003}
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "update_plane", scope: !5957, file: !226, line: 306, baseType: !5960, size: 64)
!5960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5961, size: 64)
!5961 = !DISubroutineType(types: !5962)
!5962 = !{!115, !348, !5024, !4826, !115, !115, !13, !13, !2056, !2056, !2056, !2056, !4778}
!5963 = !DIDerivedType(tag: DW_TAG_member, name: "disable_plane", scope: !5957, file: !226, line: 329, baseType: !5964, size: 64, offset: 64)
!5964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5965, size: 64)
!5965 = !DISubroutineType(types: !5966)
!5966 = !{!115, !348, !4778}
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5957, file: !226, line: 339, baseType: !5968, size: 64, offset: 128)
!5968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5969, size: 64)
!5969 = !DISubroutineType(types: !5970)
!5970 = !{null, !348}
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5957, file: !226, line: 351, baseType: !5968, size: 64, offset: 192)
!5972 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5957, file: !226, line: 367, baseType: !5973, size: 64, offset: 256)
!5973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5974, size: 64)
!5974 = !DISubroutineType(types: !5975)
!5975 = !{!115, !348, !4845, !4856}
!5976 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5957, file: !226, line: 401, baseType: !5977, size: 64, offset: 320)
!5977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5978, size: 64)
!5978 = !DISubroutineType(types: !5979)
!5979 = !{!5019, !348}
!5980 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5957, file: !226, line: 411, baseType: !5981, size: 64, offset: 384)
!5981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5982, size: 64)
!5982 = !DISubroutineType(types: !5983)
!5983 = !{null, !348, !5019}
!5984 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5957, file: !226, line: 456, baseType: !5985, size: 64, offset: 448)
!5985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5986, size: 64)
!5986 = !DISubroutineType(types: !5987)
!5987 = !{!115, !348, !5019, !4845, !4856}
!5988 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5957, file: !226, line: 479, baseType: !5989, size: 64, offset: 512)
!5989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5990, size: 64)
!5990 = !DISubroutineType(types: !5991)
!5991 = !{!115, !348, !5992, !4845, !4855}
!5992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5993, size: 64)
!5993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5020)
!5994 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5957, file: !226, line: 496, baseType: !5995, size: 64, offset: 576)
!5995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5996, size: 64)
!5996 = !DISubroutineType(types: !5997)
!5997 = !{!115, !348}
!5998 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5957, file: !226, line: 507, baseType: !5968, size: 64, offset: 640)
!5999 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5957, file: !226, line: 518, baseType: !6000, size: 64, offset: 704)
!6000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6001, size: 64)
!6001 = !DISubroutineType(types: !6002)
!6002 = !{null, !5412, !5992}
!6003 = !DIDerivedType(tag: DW_TAG_member, name: "format_mod_supported", scope: !5957, file: !226, line: 537, baseType: !6004, size: 64, offset: 768)
!6004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6005, size: 64)
!6005 = !DISubroutineType(types: !6006)
!6006 = !{!881, !348, !2056, !4856}
!6007 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !349, file: !226, line: 683, baseType: !4840, size: 3136, offset: 1536)
!6008 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !349, file: !226, line: 686, baseType: !316, size: 32, offset: 4672)
!6009 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !349, file: !226, line: 692, baseType: !13, size: 32, offset: 4704)
!6010 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !349, file: !226, line: 695, baseType: !6011, size: 64, offset: 4736)
!6011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6012, size: 64)
!6012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6013)
!6013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_helper_funcs", file: !300, line: 1189, size: 640, elements: !6014)
!6014 = !{!6015, !6019, !6020, !6021, !6022, !6026, !6030, !6031, !6032, !6033}
!6015 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_fb", scope: !6013, file: !300, line: 1232, baseType: !6016, size: 64)
!6016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6017, size: 64)
!6017 = !DISubroutineType(types: !6018)
!6018 = !{!115, !348, !5019}
!6019 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_fb", scope: !6013, file: !300, line: 1243, baseType: !5981, size: 64, offset: 64)
!6020 = !DIDerivedType(tag: DW_TAG_member, name: "begin_fb_access", scope: !6013, file: !300, line: 1266, baseType: !6016, size: 64, offset: 128)
!6021 = !DIDerivedType(tag: DW_TAG_member, name: "end_fb_access", scope: !6013, file: !300, line: 1274, baseType: !5981, size: 64, offset: 192)
!6022 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !6013, file: !300, line: 1311, baseType: !6023, size: 64, offset: 256)
!6023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6024, size: 64)
!6024 = !DISubroutineType(types: !6025)
!6025 = !{!115, !348, !5003}
!6026 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_update", scope: !6013, file: !300, line: 1328, baseType: !6027, size: 64, offset: 320)
!6027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6028, size: 64)
!6028 = !DISubroutineType(types: !6029)
!6029 = !{null, !348, !5003}
!6030 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_enable", scope: !6013, file: !300, line: 1353, baseType: !6027, size: 64, offset: 384)
!6031 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_disable", scope: !6013, file: !300, line: 1378, baseType: !6027, size: 64, offset: 448)
!6032 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_async_check", scope: !6013, file: !300, line: 1397, baseType: !6023, size: 64, offset: 512)
!6033 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_async_update", scope: !6013, file: !300, line: 1434, baseType: !6027, size: 64, offset: 576)
!6034 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !349, file: !226, line: 710, baseType: !5019, size: 64, offset: 4800)
!6035 = !DIDerivedType(tag: DW_TAG_member, name: "alpha_property", scope: !349, file: !226, line: 717, baseType: !4845, size: 64, offset: 4864)
!6036 = !DIDerivedType(tag: DW_TAG_member, name: "zpos_property", scope: !349, file: !226, line: 723, baseType: !4845, size: 64, offset: 4928)
!6037 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_property", scope: !349, file: !226, line: 729, baseType: !4845, size: 64, offset: 4992)
!6038 = !DIDerivedType(tag: DW_TAG_member, name: "blend_mode_property", scope: !349, file: !226, line: 737, baseType: !4845, size: 64, offset: 5056)
!6039 = !DIDerivedType(tag: DW_TAG_member, name: "color_encoding_property", scope: !349, file: !226, line: 746, baseType: !4845, size: 64, offset: 5120)
!6040 = !DIDerivedType(tag: DW_TAG_member, name: "color_range_property", scope: !349, file: !226, line: 754, baseType: !4845, size: 64, offset: 5184)
!6041 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter_property", scope: !349, file: !226, line: 760, baseType: !4845, size: 64, offset: 5248)
!6042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5752, size: 64)
!6043 = !{!0, !7, !6044, !6046, !6048, !6050, !6052}
!6044 = !DIGlobalVariableExpression(var: !6045, expr: !DIExpression())
!6045 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_atomic_helper_dirtyfb309", scope: !9, file: !2, line: 202, type: !345, isLocal: true, isDefinition: true)
!6046 = !DIGlobalVariableExpression(var: !6047, expr: !DIExpression())
!6047 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_atomic_helper_damage_iter_init310", scope: !9, file: !2, line: 251, type: !345, isLocal: true, isDefinition: true)
!6048 = !DIGlobalVariableExpression(var: !6049, expr: !DIExpression())
!6049 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_atomic_helper_damage_iter_next311", scope: !9, file: !2, line: 293, type: !345, isLocal: true, isDefinition: true)
!6050 = !DIGlobalVariableExpression(var: !6051, expr: !DIExpression())
!6051 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_atomic_helper_damage_merged320", scope: !9, file: !2, line: 334, type: !345, isLocal: true, isDefinition: true)
!6052 = !DIGlobalVariableExpression(var: !6053, expr: !DIExpression())
!6053 = distinct !DIGlobalVariable(scope: null, file: !327, line: 480, type: !6054, isLocal: true, isDefinition: true)
!6054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !6055)
!6055 = !{!6056}
!6056 = !DISubrange(count: 21)
!6057 = !{i32 7, !"Dwarf Version", i32 5}
!6058 = !{i32 2, !"Debug Info Version", i32 3}
!6059 = !{i32 1, !"wchar_size", i32 2}
!6060 = !{i32 8, !"cf-protection-branch", i32 1}
!6061 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6062 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6063 = !{i32 1, !"Code Model", i32 2}
!6064 = !{i32 1, !"override-stack-alignment", i32 8}
!6065 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6066 = distinct !DISubprogram(name: "drm_atomic_helper_check_plane_damage", scope: !2, file: !2, line: 67, type: !6067, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6069)
!6067 = !DISubroutineType(types: !6068)
!6068 = !{null, !5003, !5019}
!6069 = !{!6070, !6071, !6072, !6073, !6078}
!6070 = !DILocalVariable(name: "state", arg: 1, scope: !6066, file: !2, line: 67, type: !5003)
!6071 = !DILocalVariable(name: "plane_state", arg: 2, scope: !6066, file: !2, line: 68, type: !5019)
!6072 = !DILocalVariable(name: "crtc_state", scope: !6066, file: !2, line: 70, type: !5290)
!6073 = !DILocalVariable(name: "__ret_warn_on", scope: !6074, file: !2, line: 76, type: !115)
!6074 = distinct !DILexicalBlock(scope: !6075, file: !2, line: 76, column: 7)
!6075 = distinct !DILexicalBlock(scope: !6076, file: !2, line: 76, column: 7)
!6076 = distinct !DILexicalBlock(scope: !6077, file: !2, line: 72, column: 25)
!6077 = distinct !DILexicalBlock(scope: !6066, file: !2, line: 72, column: 6)
!6078 = !DILocalVariable(name: "__flags", scope: !6079, file: !2, line: 76, type: !115)
!6079 = distinct !DILexicalBlock(scope: !6080, file: !2, line: 76, column: 7)
!6080 = distinct !DILexicalBlock(scope: !6074, file: !2, line: 76, column: 7)
!6081 = !DILocation(line: 67, column: 68, scope: !6066)
!6082 = !DILocation(line: 68, column: 32, scope: !6066)
!6083 = !DILocation(line: 70, column: 2, scope: !6066)
!6084 = !DILocation(line: 70, column: 25, scope: !6066)
!6085 = !DILocation(line: 72, column: 6, scope: !6077)
!6086 = !DILocation(line: 72, column: 19, scope: !6077)
!6087 = !DILocation(line: 72, column: 6, scope: !6066)
!6088 = !DILocation(line: 73, column: 46, scope: !6076)
!6089 = !DILocation(line: 74, column: 11, scope: !6076)
!6090 = !DILocation(line: 74, column: 24, scope: !6076)
!6091 = !DILocation(line: 73, column: 16, scope: !6076)
!6092 = !DILocation(line: 73, column: 14, scope: !6076)
!6093 = !DILocation(line: 76, column: 7, scope: !6074)
!6094 = !DILocation(line: 76, column: 7, scope: !6080)
!6095 = !DILocation(line: 76, column: 7, scope: !6079)
!6096 = !DILocation(line: 76, column: 7, scope: !6097)
!6097 = distinct !DILexicalBlock(scope: !6079, file: !2, line: 76, column: 7)
!6098 = !DILocation(line: 76, column: 7, scope: !6099)
!6099 = distinct !DILexicalBlock(scope: !6079, file: !2, line: 76, column: 7)
!6100 = !{i64 2155488593, i64 2155488622, i64 2155488668, i64 2155488726, i64 2155488780, i64 2155488834, i64 2155488889, i64 2155488920, i64 2155489228, i64 2155489234, i64 2155489281, i64 2155489304, i64 2155489330}
!6101 = !DILocation(line: 76, column: 7, scope: !6102)
!6102 = distinct !DILexicalBlock(scope: !6079, file: !2, line: 76, column: 7)
!6103 = !DILocation(line: 76, column: 7, scope: !6075)
!6104 = !DILocation(line: 76, column: 7, scope: !6076)
!6105 = !DILocation(line: 77, column: 4, scope: !6075)
!6106 = !DILocation(line: 79, column: 37, scope: !6107)
!6107 = distinct !DILexicalBlock(scope: !6076, file: !2, line: 79, column: 7)
!6108 = !DILocation(line: 79, column: 7, scope: !6107)
!6109 = !DILocation(line: 79, column: 7, scope: !6076)
!6110 = !DILocation(line: 80, column: 26, scope: !6111)
!6111 = distinct !DILexicalBlock(scope: !6107, file: !2, line: 79, column: 50)
!6112 = !DILocation(line: 80, column: 39, scope: !6111)
!6113 = !DILocation(line: 80, column: 4, scope: !6111)
!6114 = !DILocation(line: 81, column: 4, scope: !6111)
!6115 = !DILocation(line: 81, column: 17, scope: !6111)
!6116 = !DILocation(line: 81, column: 33, scope: !6111)
!6117 = !DILocation(line: 82, column: 3, scope: !6111)
!6118 = !DILocation(line: 83, column: 2, scope: !6076)
!6119 = !DILocation(line: 84, column: 1, scope: !6066)
!6120 = distinct !DISubprogram(name: "drm_atomic_get_new_crtc_state", scope: !5005, file: !5005, line: 579, type: !6121, scopeLine: 581, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6125)
!6121 = !DISubroutineType(types: !6122)
!6122 = !{!5290, !6123, !5024}
!6123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6124, size: 64)
!6124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5004)
!6125 = !{!6126, !6127}
!6126 = !DILocalVariable(name: "state", arg: 1, scope: !6120, file: !5005, line: 579, type: !6123)
!6127 = !DILocalVariable(name: "crtc", arg: 2, scope: !6120, file: !5005, line: 580, type: !5024)
!6128 = !DILocation(line: 579, column: 62, scope: !6120)
!6129 = !DILocation(line: 580, column: 27, scope: !6120)
!6130 = !DILocation(line: 582, column: 9, scope: !6120)
!6131 = !DILocation(line: 582, column: 16, scope: !6120)
!6132 = !DILocation(line: 582, column: 37, scope: !6120)
!6133 = !DILocation(line: 582, column: 22, scope: !6120)
!6134 = !DILocation(line: 582, column: 44, scope: !6120)
!6135 = !DILocation(line: 582, column: 2, scope: !6120)
!6136 = distinct !DISubprogram(name: "drm_atomic_crtc_needs_modeset", scope: !5005, file: !5005, line: 1056, type: !6137, scopeLine: 1057, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6139)
!6137 = !DISubroutineType(types: !6138)
!6138 = !{!881, !5607}
!6139 = !{!6140}
!6140 = !DILocalVariable(name: "state", arg: 1, scope: !6136, file: !5005, line: 1056, type: !5607)
!6141 = !DILocation(line: 1056, column: 60, scope: !6136)
!6142 = !DILocation(line: 1058, column: 9, scope: !6136)
!6143 = !DILocation(line: 1058, column: 16, scope: !6136)
!6144 = !DILocation(line: 1058, column: 29, scope: !6136)
!6145 = !DILocation(line: 1058, column: 32, scope: !6136)
!6146 = !DILocation(line: 1058, column: 39, scope: !6136)
!6147 = !DILocation(line: 1058, column: 54, scope: !6136)
!6148 = !DILocation(line: 1059, column: 9, scope: !6136)
!6149 = !DILocation(line: 1059, column: 16, scope: !6136)
!6150 = !DILocation(line: 1058, column: 2, scope: !6136)
!6151 = !DISubprogram(name: "drm_property_blob_put", scope: !4847, file: !4847, line: 291, type: !6152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6152 = !DISubroutineType(types: !6153)
!6153 = !{null, !5309}
!6154 = distinct !DISubprogram(name: "drm_atomic_helper_dirtyfb", scope: !2, file: !2, line: 107, type: !4910, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6155)
!6155 = !{!6156, !6157, !6158, !6159, !6160, !6161, !6162, !6163, !6164, !6172, !6173, !6174, !6175, !6178, !6179, !6182, !6185, !6187, !6188}
!6156 = !DILocalVariable(name: "fb", arg: 1, scope: !6154, file: !2, line: 107, type: !4826)
!6157 = !DILocalVariable(name: "file_priv", arg: 2, scope: !6154, file: !2, line: 108, type: !4905)
!6158 = !DILocalVariable(name: "flags", arg: 3, scope: !6154, file: !2, line: 108, type: !13)
!6159 = !DILocalVariable(name: "color", arg: 4, scope: !6154, file: !2, line: 109, type: !13)
!6160 = !DILocalVariable(name: "clips", arg: 5, scope: !6154, file: !2, line: 109, type: !4912)
!6161 = !DILocalVariable(name: "num_clips", arg: 6, scope: !6154, file: !2, line: 110, type: !13)
!6162 = !DILocalVariable(name: "ctx", scope: !6154, file: !2, line: 112, type: !4779)
!6163 = !DILocalVariable(name: "damage", scope: !6154, file: !2, line: 113, type: !5309)
!6164 = !DILocalVariable(name: "rects", scope: !6154, file: !2, line: 114, type: !6165)
!6165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6166, size: 64)
!6166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_rect", file: !235, line: 1307, size: 128, elements: !6167)
!6167 = !{!6168, !6169, !6170, !6171}
!6168 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !6166, file: !235, line: 1308, baseType: !798, size: 32)
!6169 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !6166, file: !235, line: 1309, baseType: !798, size: 32, offset: 32)
!6170 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !6166, file: !235, line: 1310, baseType: !798, size: 32, offset: 64)
!6171 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !6166, file: !235, line: 1311, baseType: !798, size: 32, offset: 96)
!6172 = !DILocalVariable(name: "state", scope: !6154, file: !2, line: 115, type: !5003)
!6173 = !DILocalVariable(name: "plane", scope: !6154, file: !2, line: 116, type: !348)
!6174 = !DILocalVariable(name: "ret", scope: !6154, file: !2, line: 117, type: !115)
!6175 = !DILocalVariable(name: "inc", scope: !6176, file: !2, line: 134, type: !2056)
!6176 = distinct !DILexicalBlock(scope: !6177, file: !2, line: 133, column: 13)
!6177 = distinct !DILexicalBlock(scope: !6154, file: !2, line: 133, column: 6)
!6178 = !DILabel(scope: !6154, name: "retry", file: !2, line: 158)
!6179 = !DILocalVariable(name: "__mptr", scope: !6180, file: !2, line: 159, type: !345)
!6180 = distinct !DILexicalBlock(scope: !6181, file: !2, line: 159, column: 2)
!6181 = distinct !DILexicalBlock(scope: !6154, file: !2, line: 159, column: 2)
!6182 = !DILocalVariable(name: "plane_state", scope: !6183, file: !2, line: 160, type: !5019)
!6183 = distinct !DILexicalBlock(scope: !6184, file: !2, line: 159, column: 37)
!6184 = distinct !DILexicalBlock(scope: !6181, file: !2, line: 159, column: 2)
!6185 = !DILocalVariable(name: "__mptr", scope: !6186, file: !2, line: 159, type: !345)
!6186 = distinct !DILexicalBlock(scope: !6184, file: !2, line: 159, column: 2)
!6187 = !DILabel(scope: !6154, name: "out", file: !2, line: 183)
!6188 = !DILabel(scope: !6154, name: "out_drop_locks", file: !2, line: 195)
!6189 = !DILocation(line: 107, column: 55, scope: !6154)
!6190 = !DILocation(line: 108, column: 27, scope: !6154)
!6191 = !DILocation(line: 108, column: 51, scope: !6154)
!6192 = !DILocation(line: 109, column: 23, scope: !6154)
!6193 = !DILocation(line: 109, column: 52, scope: !6154)
!6194 = !DILocation(line: 110, column: 23, scope: !6154)
!6195 = !DILocation(line: 112, column: 2, scope: !6154)
!6196 = !DILocation(line: 112, column: 33, scope: !6154)
!6197 = !DILocation(line: 113, column: 2, scope: !6154)
!6198 = !DILocation(line: 113, column: 28, scope: !6154)
!6199 = !DILocation(line: 114, column: 2, scope: !6154)
!6200 = !DILocation(line: 114, column: 24, scope: !6154)
!6201 = !DILocation(line: 115, column: 2, scope: !6154)
!6202 = !DILocation(line: 115, column: 27, scope: !6154)
!6203 = !DILocation(line: 116, column: 2, scope: !6154)
!6204 = !DILocation(line: 116, column: 20, scope: !6154)
!6205 = !DILocation(line: 117, column: 2, scope: !6154)
!6206 = !DILocation(line: 117, column: 6, scope: !6154)
!6207 = !DILocation(line: 124, column: 3, scope: !6154)
!6208 = !DILocation(line: 123, column: 2, scope: !6154)
!6209 = !DILocation(line: 126, column: 33, scope: !6154)
!6210 = !DILocation(line: 126, column: 37, scope: !6154)
!6211 = !DILocation(line: 126, column: 10, scope: !6154)
!6212 = !DILocation(line: 126, column: 8, scope: !6154)
!6213 = !DILocation(line: 127, column: 7, scope: !6214)
!6214 = distinct !DILexicalBlock(scope: !6154, file: !2, line: 127, column: 6)
!6215 = !DILocation(line: 127, column: 6, scope: !6154)
!6216 = !DILocation(line: 128, column: 7, scope: !6217)
!6217 = distinct !DILexicalBlock(scope: !6214, file: !2, line: 127, column: 14)
!6218 = !DILocation(line: 129, column: 3, scope: !6217)
!6219 = !DILocation(line: 131, column: 2, scope: !6154)
!6220 = !DILocation(line: 131, column: 9, scope: !6154)
!6221 = !DILocation(line: 131, column: 21, scope: !6154)
!6222 = !DILocation(line: 133, column: 6, scope: !6177)
!6223 = !DILocation(line: 133, column: 6, scope: !6154)
!6224 = !DILocation(line: 134, column: 3, scope: !6176)
!6225 = !DILocation(line: 134, column: 12, scope: !6176)
!6226 = !DILocation(line: 136, column: 7, scope: !6227)
!6227 = distinct !DILexicalBlock(scope: !6176, file: !2, line: 136, column: 7)
!6228 = !DILocation(line: 136, column: 13, scope: !6227)
!6229 = !DILocation(line: 136, column: 7, scope: !6176)
!6230 = !DILocation(line: 137, column: 8, scope: !6231)
!6231 = distinct !DILexicalBlock(scope: !6227, file: !2, line: 136, column: 48)
!6232 = !DILocation(line: 138, column: 14, scope: !6231)
!6233 = !DILocation(line: 139, column: 3, scope: !6231)
!6234 = !DILocation(line: 141, column: 19, scope: !6176)
!6235 = !DILocation(line: 141, column: 11, scope: !6176)
!6236 = !DILocation(line: 141, column: 9, scope: !6176)
!6237 = !DILocation(line: 142, column: 8, scope: !6238)
!6238 = distinct !DILexicalBlock(scope: !6176, file: !2, line: 142, column: 7)
!6239 = !DILocation(line: 142, column: 7, scope: !6176)
!6240 = !DILocation(line: 143, column: 8, scope: !6241)
!6241 = distinct !DILexicalBlock(scope: !6238, file: !2, line: 142, column: 15)
!6242 = !DILocation(line: 144, column: 4, scope: !6241)
!6243 = !DILocation(line: 147, column: 29, scope: !6176)
!6244 = !DILocation(line: 147, column: 36, scope: !6176)
!6245 = !DILocation(line: 147, column: 43, scope: !6176)
!6246 = !DILocation(line: 147, column: 54, scope: !6176)
!6247 = !DILocation(line: 147, column: 3, scope: !6176)
!6248 = !DILocation(line: 148, column: 37, scope: !6176)
!6249 = !DILocation(line: 148, column: 41, scope: !6176)
!6250 = !DILocation(line: 149, column: 9, scope: !6176)
!6251 = !DILocation(line: 149, column: 19, scope: !6176)
!6252 = !DILocation(line: 150, column: 9, scope: !6176)
!6253 = !DILocation(line: 148, column: 12, scope: !6176)
!6254 = !DILocation(line: 148, column: 10, scope: !6176)
!6255 = !DILocation(line: 151, column: 14, scope: !6256)
!6256 = distinct !DILexicalBlock(scope: !6176, file: !2, line: 151, column: 7)
!6257 = !DILocation(line: 151, column: 7, scope: !6256)
!6258 = !DILocation(line: 151, column: 7, scope: !6176)
!6259 = !DILocation(line: 152, column: 18, scope: !6260)
!6260 = distinct !DILexicalBlock(scope: !6256, file: !2, line: 151, column: 23)
!6261 = !DILocation(line: 152, column: 10, scope: !6260)
!6262 = !DILocation(line: 152, column: 8, scope: !6260)
!6263 = !DILocation(line: 153, column: 11, scope: !6260)
!6264 = !DILocation(line: 154, column: 4, scope: !6260)
!6265 = !DILocation(line: 156, column: 2, scope: !6177)
!6266 = !DILocation(line: 156, column: 2, scope: !6176)
!6267 = !DILocation(line: 158, column: 1, scope: !6154)
!6268 = !DILocation(line: 159, column: 2, scope: !6180)
!6269 = !DILocation(line: 159, column: 2, scope: !6181)
!6270 = !DILocation(line: 159, column: 2, scope: !6184)
!6271 = !DILocation(line: 160, column: 3, scope: !6183)
!6272 = !DILocation(line: 160, column: 27, scope: !6183)
!6273 = !DILocation(line: 162, column: 27, scope: !6183)
!6274 = !DILocation(line: 162, column: 34, scope: !6183)
!6275 = !DILocation(line: 162, column: 41, scope: !6183)
!6276 = !DILocation(line: 162, column: 48, scope: !6183)
!6277 = !DILocation(line: 162, column: 9, scope: !6183)
!6278 = !DILocation(line: 162, column: 7, scope: !6183)
!6279 = !DILocation(line: 163, column: 7, scope: !6280)
!6280 = distinct !DILexicalBlock(scope: !6183, file: !2, line: 163, column: 7)
!6281 = !DILocation(line: 163, column: 7, scope: !6183)
!6282 = !DILocation(line: 164, column: 4, scope: !6280)
!6283 = !DILocation(line: 166, column: 7, scope: !6284)
!6284 = distinct !DILexicalBlock(scope: !6183, file: !2, line: 166, column: 7)
!6285 = !DILocation(line: 166, column: 14, scope: !6284)
!6286 = !DILocation(line: 166, column: 21, scope: !6284)
!6287 = !DILocation(line: 166, column: 27, scope: !6284)
!6288 = !DILocation(line: 166, column: 24, scope: !6284)
!6289 = !DILocation(line: 166, column: 7, scope: !6183)
!6290 = !DILocation(line: 167, column: 24, scope: !6291)
!6291 = distinct !DILexicalBlock(scope: !6284, file: !2, line: 166, column: 31)
!6292 = !DILocation(line: 167, column: 31, scope: !6291)
!6293 = !DILocation(line: 167, column: 4, scope: !6291)
!6294 = !DILocation(line: 168, column: 4, scope: !6291)
!6295 = !DILocation(line: 171, column: 44, scope: !6183)
!6296 = !DILocation(line: 171, column: 51, scope: !6183)
!6297 = !DILocation(line: 171, column: 17, scope: !6183)
!6298 = !DILocation(line: 171, column: 15, scope: !6183)
!6299 = !DILocation(line: 172, column: 14, scope: !6300)
!6300 = distinct !DILexicalBlock(scope: !6183, file: !2, line: 172, column: 7)
!6301 = !DILocation(line: 172, column: 7, scope: !6300)
!6302 = !DILocation(line: 172, column: 7, scope: !6183)
!6303 = !DILocation(line: 173, column: 18, scope: !6304)
!6304 = distinct !DILexicalBlock(scope: !6300, file: !2, line: 172, column: 28)
!6305 = !DILocation(line: 173, column: 10, scope: !6304)
!6306 = !DILocation(line: 173, column: 8, scope: !6304)
!6307 = !DILocation(line: 174, column: 4, scope: !6304)
!6308 = !DILocation(line: 177, column: 30, scope: !6183)
!6309 = !DILocation(line: 177, column: 43, scope: !6183)
!6310 = !DILocation(line: 178, column: 8, scope: !6183)
!6311 = !DILocation(line: 177, column: 3, scope: !6183)
!6312 = !DILocation(line: 179, column: 2, scope: !6184)
!6313 = !DILocation(line: 179, column: 2, scope: !6183)
!6314 = !DILocation(line: 159, column: 2, scope: !6186)
!6315 = distinct !{!6315, !6269, !6316, !6317, !6318}
!6316 = !DILocation(line: 179, column: 2, scope: !6181)
!6317 = !{!"llvm.loop.mustprogress"}
!6318 = !{!"llvm.loop.unroll.disable"}
!6319 = !DILocation(line: 181, column: 26, scope: !6154)
!6320 = !DILocation(line: 181, column: 8, scope: !6154)
!6321 = !DILocation(line: 181, column: 6, scope: !6154)
!6322 = !DILocation(line: 181, column: 2, scope: !6154)
!6323 = !DILocation(line: 183, column: 1, scope: !6154)
!6324 = !DILocation(line: 184, column: 6, scope: !6325)
!6325 = distinct !DILexicalBlock(scope: !6154, file: !2, line: 184, column: 6)
!6326 = !DILocation(line: 184, column: 10, scope: !6325)
!6327 = !DILocation(line: 184, column: 6, scope: !6154)
!6328 = !DILocation(line: 185, column: 26, scope: !6329)
!6329 = distinct !DILexicalBlock(scope: !6325, file: !2, line: 184, column: 23)
!6330 = !DILocation(line: 185, column: 3, scope: !6329)
!6331 = !DILocation(line: 186, column: 9, scope: !6329)
!6332 = !DILocation(line: 186, column: 7, scope: !6329)
!6333 = !DILocation(line: 187, column: 8, scope: !6334)
!6334 = distinct !DILexicalBlock(scope: !6329, file: !2, line: 187, column: 7)
!6335 = !DILocation(line: 187, column: 7, scope: !6329)
!6336 = !DILocation(line: 188, column: 4, scope: !6334)
!6337 = !DILocation(line: 189, column: 2, scope: !6329)
!6338 = !DILocation(line: 191, column: 24, scope: !6154)
!6339 = !DILocation(line: 191, column: 2, scope: !6154)
!6340 = !DILocation(line: 192, column: 8, scope: !6154)
!6341 = !DILocation(line: 192, column: 2, scope: !6154)
!6342 = !DILocation(line: 193, column: 23, scope: !6154)
!6343 = !DILocation(line: 193, column: 2, scope: !6154)
!6344 = !DILocation(line: 195, column: 1, scope: !6154)
!6345 = !DILocation(line: 196, column: 2, scope: !6154)
!6346 = !DILocation(line: 197, column: 2, scope: !6154)
!6347 = !DILocation(line: 199, column: 9, scope: !6154)
!6348 = !DILocation(line: 199, column: 2, scope: !6154)
!6349 = !DILocation(line: 201, column: 1, scope: !6154)
!6350 = !DISubprogram(name: "drm_modeset_acquire_init", scope: !4760, file: !4760, line: 100, type: !6351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6351 = !DISubroutineType(types: !6352)
!6352 = !{null, !4778, !2056}
!6353 = !DISubprogram(name: "drm_atomic_state_alloc", scope: !5005, file: !5005, line: 463, type: !5835, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6354 = distinct !DISubprogram(name: "kcalloc", scope: !327, file: !327, line: 666, type: !6355, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6357)
!6355 = !DISubroutineType(types: !6356)
!6356 = !{!345, !507, !507, !346}
!6357 = !{!6358, !6359, !6360}
!6358 = !DILocalVariable(name: "n", arg: 1, scope: !6354, file: !327, line: 666, type: !507)
!6359 = !DILocalVariable(name: "size", arg: 2, scope: !6354, file: !327, line: 666, type: !507)
!6360 = !DILocalVariable(name: "flags", arg: 3, scope: !6354, file: !327, line: 666, type: !346)
!6361 = !DILocation(line: 666, column: 55, scope: !6354)
!6362 = !DILocation(line: 666, column: 65, scope: !6354)
!6363 = !DILocation(line: 666, column: 77, scope: !6354)
!6364 = !DILocation(line: 668, column: 23, scope: !6354)
!6365 = !DILocation(line: 668, column: 26, scope: !6354)
!6366 = !DILocation(line: 668, column: 32, scope: !6354)
!6367 = !DILocation(line: 668, column: 38, scope: !6354)
!6368 = !DILocation(line: 668, column: 9, scope: !6354)
!6369 = !DILocation(line: 668, column: 2, scope: !6354)
!6370 = distinct !DISubprogram(name: "convert_clip_rect_to_rect", scope: !2, file: !2, line: 38, type: !6371, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6375)
!6371 = !DISubroutineType(types: !6372)
!6372 = !{null, !6373, !6165, !2056, !2056}
!6373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6374, size: 64)
!6374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4913)
!6375 = !{!6376, !6377, !6378, !6379}
!6376 = !DILocalVariable(name: "src", arg: 1, scope: !6370, file: !2, line: 38, type: !6373)
!6377 = !DILocalVariable(name: "dest", arg: 2, scope: !6370, file: !2, line: 39, type: !6165)
!6378 = !DILocalVariable(name: "num_clips", arg: 3, scope: !6370, file: !2, line: 40, type: !2056)
!6379 = !DILocalVariable(name: "src_inc", arg: 4, scope: !6370, file: !2, line: 40, type: !2056)
!6380 = !DILocation(line: 38, column: 67, scope: !6370)
!6381 = !DILocation(line: 39, column: 33, scope: !6370)
!6382 = !DILocation(line: 40, column: 20, scope: !6370)
!6383 = !DILocation(line: 40, column: 40, scope: !6370)
!6384 = !DILocation(line: 42, column: 2, scope: !6370)
!6385 = !DILocation(line: 42, column: 9, scope: !6370)
!6386 = !DILocation(line: 42, column: 19, scope: !6370)
!6387 = !DILocation(line: 43, column: 14, scope: !6388)
!6388 = distinct !DILexicalBlock(scope: !6370, file: !2, line: 42, column: 24)
!6389 = !DILocation(line: 43, column: 19, scope: !6388)
!6390 = !DILocation(line: 43, column: 3, scope: !6388)
!6391 = !DILocation(line: 43, column: 9, scope: !6388)
!6392 = !DILocation(line: 43, column: 12, scope: !6388)
!6393 = !DILocation(line: 44, column: 14, scope: !6388)
!6394 = !DILocation(line: 44, column: 19, scope: !6388)
!6395 = !DILocation(line: 44, column: 3, scope: !6388)
!6396 = !DILocation(line: 44, column: 9, scope: !6388)
!6397 = !DILocation(line: 44, column: 12, scope: !6388)
!6398 = !DILocation(line: 45, column: 14, scope: !6388)
!6399 = !DILocation(line: 45, column: 19, scope: !6388)
!6400 = !DILocation(line: 45, column: 3, scope: !6388)
!6401 = !DILocation(line: 45, column: 9, scope: !6388)
!6402 = !DILocation(line: 45, column: 12, scope: !6388)
!6403 = !DILocation(line: 46, column: 14, scope: !6388)
!6404 = !DILocation(line: 46, column: 19, scope: !6388)
!6405 = !DILocation(line: 46, column: 3, scope: !6388)
!6406 = !DILocation(line: 46, column: 9, scope: !6388)
!6407 = !DILocation(line: 46, column: 12, scope: !6388)
!6408 = !DILocation(line: 47, column: 10, scope: !6388)
!6409 = !DILocation(line: 47, column: 7, scope: !6388)
!6410 = !DILocation(line: 48, column: 7, scope: !6388)
!6411 = !DILocation(line: 49, column: 12, scope: !6388)
!6412 = distinct !{!6412, !6384, !6413, !6317, !6318}
!6413 = !DILocation(line: 50, column: 2, scope: !6370)
!6414 = !DILocation(line: 51, column: 1, scope: !6370)
!6415 = !DISubprogram(name: "drm_property_create_blob", scope: !4847, file: !4847, line: 277, type: !6416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6416 = !DISubroutineType(types: !6417)
!6417 = !{!5309, !352, !507, !2741}
!6418 = distinct !DISubprogram(name: "IS_ERR", scope: !6419, file: !6419, line: 59, type: !6420, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6422)
!6419 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6420 = !DISubroutineType(types: !6421)
!6421 = !{!881, !2741}
!6422 = !{!6423}
!6423 = !DILocalVariable(name: "ptr", arg: 1, scope: !6418, file: !6419, line: 59, type: !2741)
!6424 = !DILocation(line: 59, column: 60, scope: !6418)
!6425 = !DILocation(line: 61, column: 9, scope: !6418)
!6426 = !DILocation(line: 61, column: 2, scope: !6418)
!6427 = distinct !DISubprogram(name: "PTR_ERR", scope: !6419, file: !6419, line: 49, type: !6428, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6430)
!6428 = !DISubroutineType(types: !6429)
!6429 = !{!496, !2741}
!6430 = !{!6431}
!6431 = !DILocalVariable(name: "ptr", arg: 1, scope: !6427, file: !6419, line: 49, type: !2741)
!6432 = !DILocation(line: 49, column: 61, scope: !6427)
!6433 = !DILocation(line: 51, column: 16, scope: !6427)
!6434 = !DILocation(line: 51, column: 9, scope: !6427)
!6435 = !DILocation(line: 51, column: 2, scope: !6427)
!6436 = !DISubprogram(name: "drm_modeset_lock", scope: !4760, file: !4760, line: 135, type: !6437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6437 = !DISubroutineType(types: !6438)
!6438 = !{!115, !4783, !4778}
!6439 = !DISubprogram(name: "drm_modeset_unlock", scope: !4760, file: !4760, line: 138, type: !6440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6440 = !DISubroutineType(types: !6441)
!6441 = !{null, !4783}
!6442 = !DISubprogram(name: "drm_atomic_get_plane_state", scope: !5005, file: !5005, line: 502, type: !6443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6443 = !DISubroutineType(types: !6444)
!6444 = !{!5019, !5003, !348}
!6445 = !DISubprogram(name: "drm_property_replace_blob", scope: !4847, file: !4847, line: 288, type: !6446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6446 = !DISubroutineType(types: !6447)
!6447 = !{!881, !6448, !5309}
!6448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5309, size: 64)
!6449 = !DISubprogram(name: "drm_atomic_commit", scope: !5005, file: !5005, line: 743, type: !5924, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6450 = !DISubprogram(name: "drm_atomic_state_clear", scope: !5005, file: !5005, line: 464, type: !5839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6451 = !DISubprogram(name: "drm_modeset_backoff", scope: !4760, file: !4760, line: 104, type: !6452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6452 = !DISubroutineType(types: !6453)
!6453 = !{!115, !4778}
!6454 = !DISubprogram(name: "kfree", scope: !327, file: !327, line: 227, type: !6455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6455 = !DISubroutineType(types: !6456)
!6456 = !{null, !2741}
!6457 = distinct !DISubprogram(name: "drm_atomic_state_put", scope: !5005, file: !5005, line: 488, type: !5839, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6458)
!6458 = !{!6459}
!6459 = !DILocalVariable(name: "state", arg: 1, scope: !6457, file: !5005, line: 488, type: !5003)
!6460 = !DILocation(line: 488, column: 66, scope: !6457)
!6461 = !DILocation(line: 490, column: 12, scope: !6457)
!6462 = !DILocation(line: 490, column: 19, scope: !6457)
!6463 = !DILocation(line: 490, column: 2, scope: !6457)
!6464 = !DILocation(line: 491, column: 1, scope: !6457)
!6465 = !DISubprogram(name: "drm_modeset_drop_locks", scope: !4760, file: !4760, line: 103, type: !6466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6466 = !DISubroutineType(types: !6467)
!6467 = !{null, !4778}
!6468 = !DISubprogram(name: "drm_modeset_acquire_fini", scope: !4760, file: !4760, line: 102, type: !6466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6469 = distinct !DISubprogram(name: "drm_atomic_helper_damage_iter_init", scope: !2, file: !2, line: 223, type: !6470, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6483)
!6470 = !DISubroutineType(types: !6471)
!6471 = !{null, !6472, !5992, !5992}
!6472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6473, size: 64)
!6473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_atomic_helper_damage_iter", file: !6474, line: 54, size: 320, elements: !6475)
!6474 = !DIFile(filename: "./include/drm/drm_damage_helper.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "56d460c7eddf55b099cda19a4c28985c")
!6475 = !{!6476, !6477, !6480, !6481, !6482}
!6476 = !DIDerivedType(tag: DW_TAG_member, name: "plane_src", scope: !6473, file: !6474, line: 56, baseType: !5752, size: 128)
!6477 = !DIDerivedType(tag: DW_TAG_member, name: "clips", scope: !6473, file: !6474, line: 58, baseType: !6478, size: 64, offset: 128)
!6478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6479, size: 64)
!6479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5752)
!6480 = !DIDerivedType(tag: DW_TAG_member, name: "num_clips", scope: !6473, file: !6474, line: 60, baseType: !2056, size: 32, offset: 192)
!6481 = !DIDerivedType(tag: DW_TAG_member, name: "curr_clip", scope: !6473, file: !6474, line: 62, baseType: !2056, size: 32, offset: 224)
!6482 = !DIDerivedType(tag: DW_TAG_member, name: "full_update", scope: !6473, file: !6474, line: 64, baseType: !881, size: 8, offset: 256)
!6483 = !{!6484, !6485, !6486, !6487}
!6484 = !DILocalVariable(name: "iter", arg: 1, scope: !6469, file: !2, line: 223, type: !6472)
!6485 = !DILocalVariable(name: "old_state", arg: 2, scope: !6469, file: !2, line: 224, type: !5992)
!6486 = !DILocalVariable(name: "state", arg: 3, scope: !6469, file: !2, line: 225, type: !5992)
!6487 = !DILocalVariable(name: "src", scope: !6469, file: !2, line: 227, type: !5752)
!6488 = !DILocation(line: 223, column: 74, scope: !6469)
!6489 = !DILocation(line: 224, column: 38, scope: !6469)
!6490 = !DILocation(line: 225, column: 38, scope: !6469)
!6491 = !DILocation(line: 227, column: 2, scope: !6469)
!6492 = !DILocation(line: 227, column: 18, scope: !6469)
!6493 = !DILocation(line: 228, column: 9, scope: !6469)
!6494 = !DILocation(line: 228, column: 2, scope: !6469)
!6495 = !DILocation(line: 230, column: 7, scope: !6496)
!6496 = distinct !DILexicalBlock(scope: !6469, file: !2, line: 230, column: 6)
!6497 = !DILocation(line: 230, column: 13, scope: !6496)
!6498 = !DILocation(line: 230, column: 17, scope: !6496)
!6499 = !DILocation(line: 230, column: 24, scope: !6496)
!6500 = !DILocation(line: 230, column: 29, scope: !6496)
!6501 = !DILocation(line: 230, column: 33, scope: !6496)
!6502 = !DILocation(line: 230, column: 40, scope: !6496)
!6503 = !DILocation(line: 230, column: 43, scope: !6496)
!6504 = !DILocation(line: 230, column: 47, scope: !6496)
!6505 = !DILocation(line: 230, column: 54, scope: !6496)
!6506 = !{i8 0, i8 2}
!6507 = !DILocation(line: 230, column: 6, scope: !6469)
!6508 = !DILocation(line: 231, column: 3, scope: !6496)
!6509 = !DILocation(line: 233, column: 62, scope: !6469)
!6510 = !DILocation(line: 233, column: 35, scope: !6469)
!6511 = !DILocation(line: 233, column: 2, scope: !6469)
!6512 = !DILocation(line: 233, column: 8, scope: !6469)
!6513 = !DILocation(line: 233, column: 14, scope: !6469)
!6514 = !DILocation(line: 234, column: 53, scope: !6469)
!6515 = !DILocation(line: 234, column: 20, scope: !6469)
!6516 = !DILocation(line: 234, column: 2, scope: !6469)
!6517 = !DILocation(line: 234, column: 8, scope: !6469)
!6518 = !DILocation(line: 234, column: 18, scope: !6469)
!6519 = !DILocation(line: 237, column: 8, scope: !6469)
!6520 = !DILocation(line: 237, column: 28, scope: !6469)
!6521 = !DILocation(line: 239, column: 27, scope: !6469)
!6522 = !DILocation(line: 239, column: 30, scope: !6469)
!6523 = !DILocation(line: 239, column: 2, scope: !6469)
!6524 = !DILocation(line: 239, column: 8, scope: !6469)
!6525 = !DILocation(line: 239, column: 18, scope: !6469)
!6526 = !DILocation(line: 239, column: 21, scope: !6469)
!6527 = !DILocation(line: 240, column: 27, scope: !6469)
!6528 = !DILocation(line: 240, column: 30, scope: !6469)
!6529 = !DILocation(line: 240, column: 2, scope: !6469)
!6530 = !DILocation(line: 240, column: 8, scope: !6469)
!6531 = !DILocation(line: 240, column: 18, scope: !6469)
!6532 = !DILocation(line: 240, column: 21, scope: !6469)
!6533 = !DILocation(line: 241, column: 28, scope: !6469)
!6534 = !DILocation(line: 241, column: 31, scope: !6469)
!6535 = !DILocation(line: 241, column: 47, scope: !6469)
!6536 = !DILocation(line: 241, column: 50, scope: !6469)
!6537 = !DILocation(line: 241, column: 41, scope: !6469)
!6538 = !DILocation(line: 241, column: 40, scope: !6469)
!6539 = !DILocation(line: 241, column: 38, scope: !6469)
!6540 = !DILocation(line: 241, column: 2, scope: !6469)
!6541 = !DILocation(line: 241, column: 8, scope: !6469)
!6542 = !DILocation(line: 241, column: 18, scope: !6469)
!6543 = !DILocation(line: 241, column: 21, scope: !6469)
!6544 = !DILocation(line: 242, column: 28, scope: !6469)
!6545 = !DILocation(line: 242, column: 31, scope: !6469)
!6546 = !DILocation(line: 242, column: 47, scope: !6469)
!6547 = !DILocation(line: 242, column: 50, scope: !6469)
!6548 = !DILocation(line: 242, column: 41, scope: !6469)
!6549 = !DILocation(line: 242, column: 40, scope: !6469)
!6550 = !DILocation(line: 242, column: 38, scope: !6469)
!6551 = !DILocation(line: 242, column: 2, scope: !6469)
!6552 = !DILocation(line: 242, column: 8, scope: !6469)
!6553 = !DILocation(line: 242, column: 18, scope: !6469)
!6554 = !DILocation(line: 242, column: 21, scope: !6469)
!6555 = !DILocation(line: 244, column: 7, scope: !6556)
!6556 = distinct !DILexicalBlock(scope: !6469, file: !2, line: 244, column: 6)
!6557 = !DILocation(line: 244, column: 13, scope: !6556)
!6558 = !DILocation(line: 244, column: 19, scope: !6556)
!6559 = !DILocation(line: 244, column: 22, scope: !6556)
!6560 = !DILocation(line: 244, column: 29, scope: !6556)
!6561 = !DILocation(line: 244, column: 49, scope: !6556)
!6562 = !DILocation(line: 245, column: 24, scope: !6556)
!6563 = !DILocation(line: 245, column: 31, scope: !6556)
!6564 = !DILocation(line: 245, column: 37, scope: !6556)
!6565 = !DILocation(line: 245, column: 48, scope: !6556)
!6566 = !DILocation(line: 245, column: 7, scope: !6556)
!6567 = !DILocation(line: 244, column: 6, scope: !6469)
!6568 = !DILocation(line: 246, column: 3, scope: !6569)
!6569 = distinct !DILexicalBlock(scope: !6556, file: !2, line: 245, column: 54)
!6570 = !DILocation(line: 246, column: 9, scope: !6569)
!6571 = !DILocation(line: 246, column: 15, scope: !6569)
!6572 = !DILocation(line: 247, column: 3, scope: !6569)
!6573 = !DILocation(line: 247, column: 9, scope: !6569)
!6574 = !DILocation(line: 247, column: 19, scope: !6569)
!6575 = !DILocation(line: 248, column: 3, scope: !6569)
!6576 = !DILocation(line: 248, column: 9, scope: !6569)
!6577 = !DILocation(line: 248, column: 21, scope: !6569)
!6578 = !DILocation(line: 249, column: 2, scope: !6569)
!6579 = !DILocation(line: 250, column: 1, scope: !6469)
!6580 = !DISubprogram(name: "drm_plane_get_damage_clips", scope: !226, file: !226, line: 954, type: !6581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6581 = !DISubroutineType(types: !6582)
!6582 = !{!6165, !5992}
!6583 = !DISubprogram(name: "drm_plane_get_damage_clips_count", scope: !226, file: !226, line: 952, type: !6584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6584 = !DISubroutineType(types: !6585)
!6585 = !{!13, !5992}
!6586 = distinct !DISubprogram(name: "drm_plane_state_src", scope: !226, file: !226, line: 253, type: !6587, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6589)
!6587 = !DISubroutineType(types: !6588)
!6588 = !{!5752, !5992}
!6589 = !{!6590, !6591}
!6590 = !DILocalVariable(name: "state", arg: 1, scope: !6586, file: !226, line: 253, type: !5992)
!6591 = !DILocalVariable(name: "src", scope: !6586, file: !226, line: 255, type: !5752)
!6592 = !DILocation(line: 253, column: 51, scope: !6586)
!6593 = !DILocation(line: 255, column: 18, scope: !6586)
!6594 = !DILocation(line: 255, column: 24, scope: !6586)
!6595 = !DILocation(line: 256, column: 9, scope: !6586)
!6596 = !DILocation(line: 256, column: 16, scope: !6586)
!6597 = !DILocation(line: 257, column: 9, scope: !6586)
!6598 = !DILocation(line: 257, column: 16, scope: !6586)
!6599 = !DILocation(line: 258, column: 9, scope: !6586)
!6600 = !DILocation(line: 258, column: 16, scope: !6586)
!6601 = !DILocation(line: 258, column: 24, scope: !6586)
!6602 = !DILocation(line: 258, column: 31, scope: !6586)
!6603 = !DILocation(line: 258, column: 22, scope: !6586)
!6604 = !DILocation(line: 259, column: 9, scope: !6586)
!6605 = !DILocation(line: 259, column: 16, scope: !6586)
!6606 = !DILocation(line: 259, column: 24, scope: !6586)
!6607 = !DILocation(line: 259, column: 31, scope: !6586)
!6608 = !DILocation(line: 259, column: 22, scope: !6586)
!6609 = !DILocation(line: 261, column: 2, scope: !6586)
!6610 = distinct !DISubprogram(name: "drm_rect_equals", scope: !5753, file: !5753, line: 221, type: !6611, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6613)
!6611 = !DISubroutineType(types: !6612)
!6612 = !{!881, !6478, !6478}
!6613 = !{!6614, !6615}
!6614 = !DILocalVariable(name: "r1", arg: 1, scope: !6610, file: !5753, line: 221, type: !6478)
!6615 = !DILocalVariable(name: "r2", arg: 2, scope: !6610, file: !5753, line: 222, type: !6478)
!6616 = !DILocation(line: 221, column: 59, scope: !6610)
!6617 = !DILocation(line: 222, column: 31, scope: !6610)
!6618 = !DILocation(line: 224, column: 9, scope: !6610)
!6619 = !DILocation(line: 224, column: 13, scope: !6610)
!6620 = !DILocation(line: 224, column: 19, scope: !6610)
!6621 = !DILocation(line: 224, column: 23, scope: !6610)
!6622 = !DILocation(line: 224, column: 16, scope: !6610)
!6623 = !DILocation(line: 224, column: 26, scope: !6610)
!6624 = !DILocation(line: 224, column: 29, scope: !6610)
!6625 = !DILocation(line: 224, column: 33, scope: !6610)
!6626 = !DILocation(line: 224, column: 39, scope: !6610)
!6627 = !DILocation(line: 224, column: 43, scope: !6610)
!6628 = !DILocation(line: 224, column: 36, scope: !6610)
!6629 = !DILocation(line: 224, column: 46, scope: !6610)
!6630 = !DILocation(line: 225, column: 3, scope: !6610)
!6631 = !DILocation(line: 225, column: 7, scope: !6610)
!6632 = !DILocation(line: 225, column: 13, scope: !6610)
!6633 = !DILocation(line: 225, column: 17, scope: !6610)
!6634 = !DILocation(line: 225, column: 10, scope: !6610)
!6635 = !DILocation(line: 225, column: 20, scope: !6610)
!6636 = !DILocation(line: 225, column: 23, scope: !6610)
!6637 = !DILocation(line: 225, column: 27, scope: !6610)
!6638 = !DILocation(line: 225, column: 33, scope: !6610)
!6639 = !DILocation(line: 225, column: 37, scope: !6610)
!6640 = !DILocation(line: 225, column: 30, scope: !6610)
!6641 = !DILocation(line: 0, scope: !6610)
!6642 = !DILocation(line: 224, column: 2, scope: !6610)
!6643 = distinct !DISubprogram(name: "drm_atomic_helper_damage_iter_next", scope: !2, file: !2, line: 270, type: !6644, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6646)
!6644 = !DISubroutineType(types: !6645)
!6645 = !{!881, !6472, !6042}
!6646 = !{!6647, !6648, !6649}
!6647 = !DILocalVariable(name: "iter", arg: 1, scope: !6643, file: !2, line: 270, type: !6472)
!6648 = !DILocalVariable(name: "rect", arg: 2, scope: !6643, file: !2, line: 271, type: !6042)
!6649 = !DILocalVariable(name: "ret", scope: !6643, file: !2, line: 273, type: !881)
!6650 = !DILocation(line: 270, column: 74, scope: !6643)
!6651 = !DILocation(line: 271, column: 25, scope: !6643)
!6652 = !DILocation(line: 273, column: 2, scope: !6643)
!6653 = !DILocation(line: 273, column: 7, scope: !6643)
!6654 = !DILocation(line: 275, column: 6, scope: !6655)
!6655 = distinct !DILexicalBlock(scope: !6643, file: !2, line: 275, column: 6)
!6656 = !DILocation(line: 275, column: 12, scope: !6655)
!6657 = !DILocation(line: 275, column: 6, scope: !6643)
!6658 = !DILocation(line: 276, column: 4, scope: !6659)
!6659 = distinct !DILexicalBlock(scope: !6655, file: !2, line: 275, column: 25)
!6660 = !DILocation(line: 276, column: 11, scope: !6659)
!6661 = !DILocation(line: 276, column: 17, scope: !6659)
!6662 = !DILocation(line: 277, column: 3, scope: !6659)
!6663 = !DILocation(line: 277, column: 9, scope: !6659)
!6664 = !DILocation(line: 277, column: 21, scope: !6659)
!6665 = !DILocation(line: 278, column: 3, scope: !6659)
!6666 = !DILocation(line: 281, column: 2, scope: !6643)
!6667 = !DILocation(line: 281, column: 9, scope: !6643)
!6668 = !DILocation(line: 281, column: 15, scope: !6643)
!6669 = !DILocation(line: 281, column: 27, scope: !6643)
!6670 = !DILocation(line: 281, column: 33, scope: !6643)
!6671 = !DILocation(line: 281, column: 25, scope: !6643)
!6672 = !DILocation(line: 282, column: 4, scope: !6673)
!6673 = distinct !DILexicalBlock(scope: !6643, file: !2, line: 281, column: 44)
!6674 = !DILocation(line: 282, column: 11, scope: !6673)
!6675 = !DILocation(line: 282, column: 17, scope: !6673)
!6676 = !DILocation(line: 282, column: 23, scope: !6673)
!6677 = !DILocation(line: 282, column: 29, scope: !6673)
!6678 = !DILocation(line: 283, column: 3, scope: !6673)
!6679 = !DILocation(line: 283, column: 9, scope: !6673)
!6680 = !DILocation(line: 283, column: 18, scope: !6673)
!6681 = !DILocation(line: 285, column: 26, scope: !6682)
!6682 = distinct !DILexicalBlock(scope: !6673, file: !2, line: 285, column: 7)
!6683 = !DILocation(line: 285, column: 33, scope: !6682)
!6684 = !DILocation(line: 285, column: 39, scope: !6682)
!6685 = !DILocation(line: 285, column: 7, scope: !6682)
!6686 = !DILocation(line: 285, column: 7, scope: !6673)
!6687 = !DILocation(line: 286, column: 8, scope: !6688)
!6688 = distinct !DILexicalBlock(scope: !6682, file: !2, line: 285, column: 51)
!6689 = !DILocation(line: 287, column: 4, scope: !6688)
!6690 = distinct !{!6690, !6666, !6691, !6317, !6318}
!6691 = !DILocation(line: 289, column: 2, scope: !6643)
!6692 = !DILocation(line: 291, column: 9, scope: !6643)
!6693 = !DILocation(line: 291, column: 2, scope: !6643)
!6694 = !DILocation(line: 292, column: 1, scope: !6643)
!6695 = !DISubprogram(name: "drm_rect_intersect", scope: !5753, file: !5753, line: 241, type: !6696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6696 = !DISubroutineType(types: !6697)
!6697 = !{!881, !6042, !6478}
!6698 = distinct !DISubprogram(name: "drm_atomic_helper_damage_merged", scope: !2, file: !2, line: 310, type: !6699, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6701)
!6699 = !DISubroutineType(types: !6700)
!6700 = !{!881, !5992, !5019, !6042}
!6701 = !{!6702, !6703, !6704, !6705, !6706, !6707, !6708, !6711, !6712, !6714, !6715, !6717, !6718, !6720}
!6702 = !DILocalVariable(name: "old_state", arg: 1, scope: !6698, file: !2, line: 310, type: !5992)
!6703 = !DILocalVariable(name: "state", arg: 2, scope: !6698, file: !2, line: 311, type: !5019)
!6704 = !DILocalVariable(name: "rect", arg: 3, scope: !6698, file: !2, line: 312, type: !6042)
!6705 = !DILocalVariable(name: "iter", scope: !6698, file: !2, line: 314, type: !6473)
!6706 = !DILocalVariable(name: "clip", scope: !6698, file: !2, line: 315, type: !5752)
!6707 = !DILocalVariable(name: "valid", scope: !6698, file: !2, line: 316, type: !881)
!6708 = !DILocalVariable(name: "__UNIQUE_ID___x312", scope: !6709, file: !2, line: 325, type: !115)
!6709 = distinct !DILexicalBlock(scope: !6710, file: !2, line: 325, column: 14)
!6710 = distinct !DILexicalBlock(scope: !6698, file: !2, line: 324, column: 49)
!6711 = !DILocalVariable(name: "__UNIQUE_ID___y313", scope: !6709, file: !2, line: 325, type: !115)
!6712 = !DILocalVariable(name: "__UNIQUE_ID___x314", scope: !6713, file: !2, line: 326, type: !115)
!6713 = distinct !DILexicalBlock(scope: !6710, file: !2, line: 326, column: 14)
!6714 = !DILocalVariable(name: "__UNIQUE_ID___y315", scope: !6713, file: !2, line: 326, type: !115)
!6715 = !DILocalVariable(name: "__UNIQUE_ID___x316", scope: !6716, file: !2, line: 327, type: !115)
!6716 = distinct !DILexicalBlock(scope: !6710, file: !2, line: 327, column: 14)
!6717 = !DILocalVariable(name: "__UNIQUE_ID___y317", scope: !6716, file: !2, line: 327, type: !115)
!6718 = !DILocalVariable(name: "__UNIQUE_ID___x318", scope: !6719, file: !2, line: 328, type: !115)
!6719 = distinct !DILexicalBlock(scope: !6710, file: !2, line: 328, column: 14)
!6720 = !DILocalVariable(name: "__UNIQUE_ID___y319", scope: !6719, file: !2, line: 328, type: !115)
!6721 = !DILocation(line: 310, column: 68, scope: !6698)
!6722 = !DILocation(line: 311, column: 34, scope: !6698)
!6723 = !DILocation(line: 312, column: 27, scope: !6698)
!6724 = !DILocation(line: 314, column: 2, scope: !6698)
!6725 = !DILocation(line: 314, column: 39, scope: !6698)
!6726 = !DILocation(line: 315, column: 2, scope: !6698)
!6727 = !DILocation(line: 315, column: 18, scope: !6698)
!6728 = !DILocation(line: 316, column: 2, scope: !6698)
!6729 = !DILocation(line: 316, column: 7, scope: !6698)
!6730 = !DILocation(line: 318, column: 2, scope: !6698)
!6731 = !DILocation(line: 318, column: 8, scope: !6698)
!6732 = !DILocation(line: 318, column: 11, scope: !6698)
!6733 = !DILocation(line: 319, column: 2, scope: !6698)
!6734 = !DILocation(line: 319, column: 8, scope: !6698)
!6735 = !DILocation(line: 319, column: 11, scope: !6698)
!6736 = !DILocation(line: 320, column: 2, scope: !6698)
!6737 = !DILocation(line: 320, column: 8, scope: !6698)
!6738 = !DILocation(line: 320, column: 11, scope: !6698)
!6739 = !DILocation(line: 321, column: 2, scope: !6698)
!6740 = !DILocation(line: 321, column: 8, scope: !6698)
!6741 = !DILocation(line: 321, column: 11, scope: !6698)
!6742 = !DILocation(line: 323, column: 44, scope: !6698)
!6743 = !DILocation(line: 323, column: 55, scope: !6698)
!6744 = !DILocation(line: 323, column: 2, scope: !6698)
!6745 = !DILocation(line: 324, column: 2, scope: !6698)
!6746 = !DILocation(line: 325, column: 14, scope: !6709)
!6747 = !DILocation(line: 325, column: 14, scope: !6710)
!6748 = !DILocation(line: 325, column: 3, scope: !6710)
!6749 = !DILocation(line: 325, column: 9, scope: !6710)
!6750 = !DILocation(line: 325, column: 12, scope: !6710)
!6751 = !DILocation(line: 326, column: 14, scope: !6713)
!6752 = !DILocation(line: 326, column: 14, scope: !6710)
!6753 = !DILocation(line: 326, column: 3, scope: !6710)
!6754 = !DILocation(line: 326, column: 9, scope: !6710)
!6755 = !DILocation(line: 326, column: 12, scope: !6710)
!6756 = !DILocation(line: 327, column: 14, scope: !6716)
!6757 = !DILocation(line: 327, column: 14, scope: !6710)
!6758 = !DILocation(line: 327, column: 3, scope: !6710)
!6759 = !DILocation(line: 327, column: 9, scope: !6710)
!6760 = !DILocation(line: 327, column: 12, scope: !6710)
!6761 = !DILocation(line: 328, column: 14, scope: !6719)
!6762 = !DILocation(line: 328, column: 14, scope: !6710)
!6763 = !DILocation(line: 328, column: 3, scope: !6710)
!6764 = !DILocation(line: 328, column: 9, scope: !6710)
!6765 = !DILocation(line: 328, column: 12, scope: !6710)
!6766 = !DILocation(line: 329, column: 9, scope: !6710)
!6767 = distinct !{!6767, !6745, !6768, !6317, !6318}
!6768 = !DILocation(line: 330, column: 2, scope: !6698)
!6769 = !DILocation(line: 332, column: 9, scope: !6698)
!6770 = !DILocation(line: 333, column: 1, scope: !6698)
!6771 = !DILocation(line: 332, column: 2, scope: !6698)
!6772 = distinct !DISubprogram(name: "drm_crtc_index", scope: !5026, file: !5026, line: 1265, type: !6773, scopeLine: 1266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6777)
!6773 = !DISubroutineType(types: !6774)
!6774 = !{!13, !6775}
!6775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6776, size: 64)
!6776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5025)
!6777 = !{!6778}
!6778 = !DILocalVariable(name: "crtc", arg: 1, scope: !6772, file: !5026, line: 1265, type: !6775)
!6779 = !DILocation(line: 1265, column: 66, scope: !6772)
!6780 = !DILocation(line: 1267, column: 9, scope: !6772)
!6781 = !DILocation(line: 1267, column: 15, scope: !6772)
!6782 = !DILocation(line: 1267, column: 2, scope: !6772)
!6783 = distinct !DISubprogram(name: "kmalloc_array", scope: !327, file: !327, line: 629, type: !6355, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6784)
!6784 = !{!6785, !6786, !6787, !6788}
!6785 = !DILocalVariable(name: "n", arg: 1, scope: !6783, file: !327, line: 629, type: !507)
!6786 = !DILocalVariable(name: "size", arg: 2, scope: !6783, file: !327, line: 629, type: !507)
!6787 = !DILocalVariable(name: "flags", arg: 3, scope: !6783, file: !327, line: 629, type: !346)
!6788 = !DILocalVariable(name: "bytes", scope: !6783, file: !327, line: 631, type: !507)
!6789 = !DILocation(line: 629, column: 61, scope: !6783)
!6790 = !DILocation(line: 629, column: 71, scope: !6783)
!6791 = !DILocation(line: 629, column: 83, scope: !6783)
!6792 = !DILocation(line: 631, column: 2, scope: !6783)
!6793 = !DILocation(line: 631, column: 9, scope: !6783)
!6794 = !DILocation(line: 633, column: 6, scope: !6795)
!6795 = distinct !DILexicalBlock(scope: !6783, file: !327, line: 633, column: 6)
!6796 = !DILocation(line: 633, column: 6, scope: !6783)
!6797 = !DILocation(line: 634, column: 3, scope: !6795)
!6798 = !DILocation(line: 635, column: 27, scope: !6799)
!6799 = distinct !DILexicalBlock(scope: !6783, file: !327, line: 635, column: 6)
!6800 = !DILocation(line: 635, column: 6, scope: !6799)
!6801 = !DILocation(line: 635, column: 30, scope: !6799)
!6802 = !DILocation(line: 635, column: 54, scope: !6799)
!6803 = !DILocation(line: 635, column: 33, scope: !6799)
!6804 = !DILocation(line: 635, column: 6, scope: !6783)
!6805 = !DILocation(line: 636, column: 18, scope: !6799)
!6806 = !DILocation(line: 636, column: 25, scope: !6799)
!6807 = !DILocation(line: 636, column: 10, scope: !6799)
!6808 = !DILocation(line: 636, column: 3, scope: !6799)
!6809 = !DILocation(line: 637, column: 19, scope: !6783)
!6810 = !DILocation(line: 637, column: 26, scope: !6783)
!6811 = !DILocation(line: 637, column: 9, scope: !6783)
!6812 = !DILocation(line: 637, column: 2, scope: !6783)
!6813 = !DILocation(line: 638, column: 1, scope: !6783)
!6814 = distinct !DISubprogram(name: "__must_check_overflow", scope: !6815, file: !6815, line: 51, type: !6816, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6818)
!6815 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!6816 = !DISubroutineType(types: !6817)
!6817 = !{!881, !881}
!6818 = !{!6819}
!6819 = !DILocalVariable(name: "overflow", arg: 1, scope: !6814, file: !6815, line: 51, type: !881)
!6820 = !DILocation(line: 51, column: 60, scope: !6814)
!6821 = !DILocation(line: 53, column: 9, scope: !6814)
!6822 = !DILocation(line: 53, column: 2, scope: !6814)
!6823 = distinct !DISubprogram(name: "kmalloc", scope: !327, file: !327, line: 591, type: !6824, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6826)
!6824 = !DISubroutineType(types: !6825)
!6825 = !{!345, !507, !346}
!6826 = !{!6827, !6828, !6829}
!6827 = !DILocalVariable(name: "size", arg: 1, scope: !6823, file: !327, line: 591, type: !507)
!6828 = !DILocalVariable(name: "flags", arg: 2, scope: !6823, file: !327, line: 591, type: !346)
!6829 = !DILocalVariable(name: "index", scope: !6830, file: !327, line: 594, type: !13)
!6830 = distinct !DILexicalBlock(scope: !6831, file: !327, line: 593, column: 42)
!6831 = distinct !DILexicalBlock(scope: !6823, file: !327, line: 593, column: 6)
!6832 = !DILocation(line: 591, column: 61, scope: !6823)
!6833 = !DILocation(line: 591, column: 73, scope: !6823)
!6834 = !DILocation(line: 593, column: 27, scope: !6831)
!6835 = !DILocation(line: 593, column: 6, scope: !6831)
!6836 = !DILocation(line: 593, column: 33, scope: !6831)
!6837 = !DILocation(line: 593, column: 36, scope: !6831)
!6838 = !DILocation(line: 593, column: 6, scope: !6823)
!6839 = !DILocation(line: 594, column: 3, scope: !6830)
!6840 = !DILocation(line: 594, column: 16, scope: !6830)
!6841 = !DILocation(line: 596, column: 7, scope: !6842)
!6842 = distinct !DILexicalBlock(scope: !6830, file: !327, line: 596, column: 7)
!6843 = !DILocation(line: 596, column: 12, scope: !6842)
!6844 = !DILocation(line: 596, column: 7, scope: !6830)
!6845 = !DILocation(line: 597, column: 25, scope: !6842)
!6846 = !DILocation(line: 597, column: 31, scope: !6842)
!6847 = !DILocation(line: 597, column: 11, scope: !6842)
!6848 = !DILocation(line: 597, column: 4, scope: !6842)
!6849 = !DILocation(line: 599, column: 11, scope: !6830)
!6850 = !DILocation(line: 599, column: 9, scope: !6830)
!6851 = !DILocation(line: 601, column: 33, scope: !6830)
!6852 = !DILocation(line: 601, column: 40, scope: !6830)
!6853 = !DILocation(line: 601, column: 20, scope: !6830)
!6854 = !DILocation(line: 601, column: 5, scope: !6830)
!6855 = !DILocation(line: 601, column: 51, scope: !6830)
!6856 = !DILocation(line: 602, column: 5, scope: !6830)
!6857 = !DILocation(line: 602, column: 12, scope: !6830)
!6858 = !DILocation(line: 600, column: 10, scope: !6830)
!6859 = !DILocation(line: 600, column: 3, scope: !6830)
!6860 = !DILocation(line: 603, column: 2, scope: !6831)
!6861 = !DILocation(line: 604, column: 19, scope: !6823)
!6862 = !DILocation(line: 604, column: 25, scope: !6823)
!6863 = !DILocation(line: 604, column: 9, scope: !6823)
!6864 = !DILocation(line: 604, column: 2, scope: !6823)
!6865 = !DILocation(line: 605, column: 1, scope: !6823)
!6866 = !DISubprogram(name: "__kmalloc", scope: !327, file: !327, line: 488, type: !6824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6867 = !DISubprogram(name: "kmalloc_large", scope: !327, file: !327, line: 531, type: !6824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6868 = distinct !DISubprogram(name: "__kmalloc_index", scope: !327, file: !327, line: 444, type: !6869, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6871)
!6869 = !DISubroutineType(types: !6870)
!6870 = !{!13, !507, !881}
!6871 = !{!6872, !6873}
!6872 = !DILocalVariable(name: "size", arg: 1, scope: !6868, file: !327, line: 444, type: !507)
!6873 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6868, file: !327, line: 445, type: !881)
!6874 = !DILocation(line: 444, column: 60, scope: !6868)
!6875 = !DILocation(line: 445, column: 16, scope: !6868)
!6876 = !DILocation(line: 447, column: 7, scope: !6877)
!6877 = distinct !DILexicalBlock(scope: !6868, file: !327, line: 447, column: 6)
!6878 = !DILocation(line: 447, column: 6, scope: !6868)
!6879 = !DILocation(line: 448, column: 3, scope: !6877)
!6880 = !DILocation(line: 450, column: 6, scope: !6881)
!6881 = distinct !DILexicalBlock(scope: !6868, file: !327, line: 450, column: 6)
!6882 = !DILocation(line: 450, column: 11, scope: !6881)
!6883 = !DILocation(line: 450, column: 6, scope: !6868)
!6884 = !DILocation(line: 451, column: 3, scope: !6881)
!6885 = !DILocation(line: 453, column: 32, scope: !6886)
!6886 = distinct !DILexicalBlock(scope: !6868, file: !327, line: 453, column: 6)
!6887 = !DILocation(line: 453, column: 37, scope: !6886)
!6888 = !DILocation(line: 453, column: 42, scope: !6886)
!6889 = !DILocation(line: 453, column: 45, scope: !6886)
!6890 = !DILocation(line: 453, column: 50, scope: !6886)
!6891 = !DILocation(line: 453, column: 6, scope: !6868)
!6892 = !DILocation(line: 454, column: 3, scope: !6886)
!6893 = !DILocation(line: 455, column: 32, scope: !6894)
!6894 = distinct !DILexicalBlock(scope: !6868, file: !327, line: 455, column: 6)
!6895 = !DILocation(line: 455, column: 37, scope: !6894)
!6896 = !DILocation(line: 455, column: 43, scope: !6894)
!6897 = !DILocation(line: 455, column: 46, scope: !6894)
!6898 = !DILocation(line: 455, column: 51, scope: !6894)
!6899 = !DILocation(line: 455, column: 6, scope: !6868)
!6900 = !DILocation(line: 456, column: 3, scope: !6894)
!6901 = !DILocation(line: 457, column: 6, scope: !6902)
!6902 = distinct !DILexicalBlock(scope: !6868, file: !327, line: 457, column: 6)
!6903 = !DILocation(line: 457, column: 11, scope: !6902)
!6904 = !DILocation(line: 457, column: 6, scope: !6868)
!6905 = !DILocation(line: 457, column: 26, scope: !6902)
!6906 = !DILocation(line: 458, column: 6, scope: !6907)
!6907 = distinct !DILexicalBlock(scope: !6868, file: !327, line: 458, column: 6)
!6908 = !DILocation(line: 458, column: 11, scope: !6907)
!6909 = !DILocation(line: 458, column: 6, scope: !6868)
!6910 = !DILocation(line: 458, column: 26, scope: !6907)
!6911 = !DILocation(line: 459, column: 6, scope: !6912)
!6912 = distinct !DILexicalBlock(scope: !6868, file: !327, line: 459, column: 6)
!6913 = !DILocation(line: 459, column: 11, scope: !6912)
!6914 = !DILocation(line: 459, column: 6, scope: !6868)
!6915 = !DILocation(line: 459, column: 26, scope: !6912)
!6916 = !DILocation(line: 460, column: 6, scope: !6917)
!6917 = distinct !DILexicalBlock(scope: !6868, file: !327, line: 460, column: 6)
!6918 = !DILocation(line: 460, column: 11, scope: !6917)
!6919 = !DILocation(line: 460, column: 6, scope: !6868)
!6920 = !DILocation(line: 460, column: 26, scope: !6917)
!6921 = !DILocation(line: 461, column: 6, scope: !6922)
!6922 = distinct !DILexicalBlock(scope: !6868, file: !327, line: 461, column: 6)
!6923 = !DILocation(line: 461, column: 11, scope: !6922)
!6924 = !DILocation(line: 461, column: 6, scope: !6868)
!6925 = !DILocation(line: 461, column: 26, scope: !6922)
!6926 = !DILocation(line: 462, column: 6, scope: !6927)
!6927 = distinct !DILexicalBlock(scope: !6868, file: !327, line: 462, column: 6)
!6928 = !DILocation(line: 462, column: 11, scope: !6927)
!6929 = !DILocation(line: 462, column: 6, scope: !6868)
!6930 = !DILocation(line: 462, column: 26, scope: !6927)
!6931 = !DILocation(line: 463, column: 6, scope: !6932)
!6932 = distinct !DILexicalBlock(scope: !6868, file: !327, line: 463, column: 6)
!6933 = !DILocation(line: 463, column: 11, scope: !6932)
!6934 = !DILocation(line: 463, column: 6, scope: !6868)
!6935 = !DILocation(line: 463, column: 26, scope: !6932)
!6936 = !DILocation(line: 464, column: 6, scope: !6937)
!6937 = distinct !DILexicalBlock(scope: !6868, file: !327, line: 464, column: 6)
!6938 = !DILocation(line: 464, column: 11, scope: !6937)
!6939 = !DILocation(line: 464, column: 6, scope: !6868)
!6940 = !DILocation(line: 464, column: 26, scope: !6937)
!6941 = !DILocation(line: 465, column: 6, scope: !6942)
!6942 = distinct !DILexicalBlock(scope: !6868, file: !327, line: 465, column: 6)
!6943 = !DILocation(line: 465, column: 11, scope: !6942)
!6944 = !DILocation(line: 465, column: 6, scope: !6868)
!6945 = !DILocation(line: 465, column: 26, scope: !6942)
!6946 = !DILocation(line: 466, column: 6, scope: !6947)
!6947 = distinct !DILexicalBlock(scope: !6868, file: !327, line: 466, column: 6)
!6948 = !DILocation(line: 466, column: 11, scope: !6947)
!6949 = !DILocation(line: 466, column: 6, scope: !6868)
!6950 = !DILocation(line: 466, column: 26, scope: !6947)
!6951 = !DILocation(line: 467, column: 6, scope: !6952)
!6952 = distinct !DILexicalBlock(scope: !6868, file: !327, line: 467, column: 6)
!6953 = !DILocation(line: 467, column: 11, scope: !6952)
!6954 = !DILocation(line: 467, column: 6, scope: !6868)
!6955 = !DILocation(line: 467, column: 26, scope: !6952)
!6956 = !DILocation(line: 468, column: 6, scope: !6957)
!6957 = distinct !DILexicalBlock(scope: !6868, file: !327, line: 468, column: 6)
!6958 = !DILocation(line: 468, column: 11, scope: !6957)
!6959 = !DILocation(line: 468, column: 6, scope: !6868)
!6960 = !DILocation(line: 468, column: 26, scope: !6957)
!6961 = !DILocation(line: 469, column: 6, scope: !6962)
!6962 = distinct !DILexicalBlock(scope: !6868, file: !327, line: 469, column: 6)
!6963 = !DILocation(line: 469, column: 11, scope: !6962)
!6964 = !DILocation(line: 469, column: 6, scope: !6868)
!6965 = !DILocation(line: 469, column: 26, scope: !6962)
!6966 = !DILocation(line: 470, column: 6, scope: !6967)
!6967 = distinct !DILexicalBlock(scope: !6868, file: !327, line: 470, column: 6)
!6968 = !DILocation(line: 470, column: 11, scope: !6967)
!6969 = !DILocation(line: 470, column: 6, scope: !6868)
!6970 = !DILocation(line: 470, column: 26, scope: !6967)
!6971 = !DILocation(line: 471, column: 6, scope: !6972)
!6972 = distinct !DILexicalBlock(scope: !6868, file: !327, line: 471, column: 6)
!6973 = !DILocation(line: 471, column: 11, scope: !6972)
!6974 = !DILocation(line: 471, column: 6, scope: !6868)
!6975 = !DILocation(line: 471, column: 26, scope: !6972)
!6976 = !DILocation(line: 472, column: 6, scope: !6977)
!6977 = distinct !DILexicalBlock(scope: !6868, file: !327, line: 472, column: 6)
!6978 = !DILocation(line: 472, column: 11, scope: !6977)
!6979 = !DILocation(line: 472, column: 6, scope: !6868)
!6980 = !DILocation(line: 472, column: 26, scope: !6977)
!6981 = !DILocation(line: 473, column: 6, scope: !6982)
!6982 = distinct !DILexicalBlock(scope: !6868, file: !327, line: 473, column: 6)
!6983 = !DILocation(line: 473, column: 11, scope: !6982)
!6984 = !DILocation(line: 473, column: 6, scope: !6868)
!6985 = !DILocation(line: 473, column: 26, scope: !6982)
!6986 = !DILocation(line: 474, column: 6, scope: !6987)
!6987 = distinct !DILexicalBlock(scope: !6868, file: !327, line: 474, column: 6)
!6988 = !DILocation(line: 474, column: 11, scope: !6987)
!6989 = !DILocation(line: 474, column: 6, scope: !6868)
!6990 = !DILocation(line: 474, column: 27, scope: !6987)
!6991 = !DILocation(line: 475, column: 6, scope: !6992)
!6992 = distinct !DILexicalBlock(scope: !6868, file: !327, line: 475, column: 6)
!6993 = !DILocation(line: 475, column: 11, scope: !6992)
!6994 = !DILocation(line: 475, column: 6, scope: !6868)
!6995 = !DILocation(line: 475, column: 32, scope: !6992)
!6996 = !DILocation(line: 477, column: 50, scope: !6997)
!6997 = distinct !DILexicalBlock(scope: !6868, file: !327, line: 477, column: 6)
!6998 = !DILocation(line: 477, column: 6, scope: !6868)
!6999 = !DILocation(line: 478, column: 3, scope: !6997)
!7000 = !DILocation(line: 478, column: 3, scope: !7001)
!7001 = distinct !DILexicalBlock(scope: !7002, file: !327, line: 478, column: 3)
!7002 = distinct !DILexicalBlock(scope: !6997, file: !327, line: 478, column: 3)
!7003 = !{i32 -2141208131}
!7004 = !DILocation(line: 478, column: 3, scope: !7002)
!7005 = !DILocation(line: 480, column: 3, scope: !6997)
!7006 = !DILocation(line: 480, column: 3, scope: !7007)
!7007 = distinct !DILexicalBlock(scope: !6997, file: !327, line: 480, column: 3)
!7008 = !DILocation(line: 480, column: 3, scope: !7009)
!7009 = distinct !DILexicalBlock(scope: !7007, file: !327, line: 480, column: 3)
!7010 = !DILocation(line: 480, column: 3, scope: !7011)
!7011 = distinct !DILexicalBlock(scope: !7007, file: !327, line: 480, column: 3)
!7012 = !{i64 2153759368, i64 2153759397, i64 2153759443, i64 2153759501, i64 2153759555, i64 2153759609, i64 2153759664, i64 2153759695}
!7013 = !DILocation(line: 483, column: 2, scope: !6868)
!7014 = !DILocation(line: 484, column: 1, scope: !6868)
!7015 = !DISubprogram(name: "kmalloc_trace", scope: !327, file: !327, line: 525, type: !7016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7016 = !DISubroutineType(types: !7017)
!7017 = !{!345, !1966, !346, !507}
!7018 = distinct !DISubprogram(name: "kmalloc_type", scope: !327, file: !327, line: 401, type: !7019, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7021)
!7019 = !DISubroutineType(types: !7020)
!7020 = !{!326, !346, !510}
!7021 = !{!7022, !7023}
!7022 = !DILocalVariable(name: "flags", arg: 1, scope: !7018, file: !327, line: 401, type: !346)
!7023 = !DILocalVariable(name: "caller", arg: 2, scope: !7018, file: !327, line: 401, type: !510)
!7024 = !DILocation(line: 401, column: 67, scope: !7018)
!7025 = !DILocation(line: 401, column: 88, scope: !7018)
!7026 = !DILocation(line: 407, column: 6, scope: !7027)
!7027 = distinct !DILexicalBlock(scope: !7018, file: !327, line: 407, column: 6)
!7028 = !DILocation(line: 407, column: 6, scope: !7018)
!7029 = !DILocation(line: 413, column: 3, scope: !7027)
!7030 = !DILocation(line: 423, column: 38, scope: !7031)
!7031 = distinct !DILexicalBlock(scope: !7018, file: !327, line: 423, column: 6)
!7032 = !DILocation(line: 423, column: 44, scope: !7031)
!7033 = !DILocation(line: 423, column: 6, scope: !7018)
!7034 = !DILocation(line: 424, column: 3, scope: !7031)
!7035 = !DILocation(line: 426, column: 3, scope: !7036)
!7036 = distinct !DILexicalBlock(scope: !7018, file: !327, line: 425, column: 6)
!7037 = !DILocation(line: 429, column: 1, scope: !7018)
!7038 = !DISubprogram(name: "__compiletime_assert_232", scope: !327, file: !327, line: 478, type: !1166, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7039 = distinct !DISubprogram(name: "kref_put", scope: !358, file: !358, line: 62, type: !7040, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7042)
!7040 = !DISubroutineType(types: !7041)
!7041 = !{!115, !4868, !4865}
!7042 = !{!7043, !7044}
!7043 = !DILocalVariable(name: "kref", arg: 1, scope: !7039, file: !358, line: 62, type: !4868)
!7044 = !DILocalVariable(name: "release", arg: 2, scope: !7039, file: !358, line: 62, type: !4865)
!7045 = !DILocation(line: 62, column: 41, scope: !7039)
!7046 = !DILocation(line: 62, column: 54, scope: !7039)
!7047 = !DILocation(line: 64, column: 29, scope: !7048)
!7048 = distinct !DILexicalBlock(scope: !7039, file: !358, line: 64, column: 6)
!7049 = !DILocation(line: 64, column: 35, scope: !7048)
!7050 = !DILocation(line: 64, column: 6, scope: !7048)
!7051 = !DILocation(line: 64, column: 6, scope: !7039)
!7052 = !DILocation(line: 65, column: 3, scope: !7053)
!7053 = distinct !DILexicalBlock(scope: !7048, file: !358, line: 64, column: 46)
!7054 = !DILocation(line: 65, column: 11, scope: !7053)
!7055 = !DILocation(line: 66, column: 3, scope: !7053)
!7056 = !DILocation(line: 68, column: 2, scope: !7039)
!7057 = !DILocation(line: 69, column: 1, scope: !7039)
!7058 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !337, file: !337, line: 331, type: !7059, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7062)
!7059 = !DISubroutineType(types: !7060)
!7060 = !{!881, !7061}
!7061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!7062 = !{!7063}
!7063 = !DILocalVariable(name: "r", arg: 1, scope: !7058, file: !337, line: 331, type: !7061)
!7064 = !DILocation(line: 331, column: 67, scope: !7058)
!7065 = !DILocation(line: 333, column: 33, scope: !7058)
!7066 = !DILocation(line: 333, column: 9, scope: !7058)
!7067 = !DILocation(line: 333, column: 2, scope: !7058)
!7068 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !337, file: !337, line: 313, type: !7069, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7071)
!7069 = !DISubroutineType(types: !7070)
!7070 = !{!881, !7061, !930}
!7071 = !{!7072, !7073}
!7072 = !DILocalVariable(name: "r", arg: 1, scope: !7068, file: !337, line: 313, type: !7061)
!7073 = !DILocalVariable(name: "oldp", arg: 2, scope: !7068, file: !337, line: 313, type: !930)
!7074 = !DILocation(line: 313, column: 69, scope: !7068)
!7075 = !DILocation(line: 313, column: 77, scope: !7068)
!7076 = !DILocation(line: 315, column: 36, scope: !7068)
!7077 = !DILocation(line: 315, column: 39, scope: !7068)
!7078 = !DILocation(line: 315, column: 9, scope: !7068)
!7079 = !DILocation(line: 315, column: 2, scope: !7068)
!7080 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !337, file: !337, line: 270, type: !7081, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7083)
!7081 = !DISubroutineType(types: !7082)
!7082 = !{!881, !115, !7061, !930}
!7083 = !{!7084, !7085, !7086, !7087}
!7084 = !DILocalVariable(name: "i", arg: 1, scope: !7080, file: !337, line: 270, type: !115)
!7085 = !DILocalVariable(name: "r", arg: 2, scope: !7080, file: !337, line: 270, type: !7061)
!7086 = !DILocalVariable(name: "oldp", arg: 3, scope: !7080, file: !337, line: 270, type: !930)
!7087 = !DILocalVariable(name: "old", scope: !7080, file: !337, line: 272, type: !115)
!7088 = !DILocation(line: 270, column: 61, scope: !7080)
!7089 = !DILocation(line: 270, column: 76, scope: !7080)
!7090 = !DILocation(line: 270, column: 84, scope: !7080)
!7091 = !DILocation(line: 272, column: 2, scope: !7080)
!7092 = !DILocation(line: 272, column: 6, scope: !7080)
!7093 = !DILocation(line: 272, column: 37, scope: !7080)
!7094 = !DILocation(line: 272, column: 41, scope: !7080)
!7095 = !DILocation(line: 272, column: 44, scope: !7080)
!7096 = !DILocation(line: 272, column: 12, scope: !7080)
!7097 = !DILocation(line: 274, column: 6, scope: !7098)
!7098 = distinct !DILexicalBlock(scope: !7080, file: !337, line: 274, column: 6)
!7099 = !DILocation(line: 274, column: 6, scope: !7080)
!7100 = !DILocation(line: 275, column: 11, scope: !7098)
!7101 = !DILocation(line: 275, column: 4, scope: !7098)
!7102 = !DILocation(line: 275, column: 9, scope: !7098)
!7103 = !DILocation(line: 275, column: 3, scope: !7098)
!7104 = !DILocation(line: 277, column: 6, scope: !7105)
!7105 = distinct !DILexicalBlock(scope: !7080, file: !337, line: 277, column: 6)
!7106 = !DILocation(line: 277, column: 13, scope: !7105)
!7107 = !DILocation(line: 277, column: 10, scope: !7105)
!7108 = !DILocation(line: 277, column: 6, scope: !7080)
!7109 = !DILocation(line: 278, column: 3, scope: !7110)
!7110 = distinct !DILexicalBlock(scope: !7105, file: !337, line: 277, column: 16)
!7111 = !DILocation(line: 278, column: 3, scope: !7112)
!7112 = distinct !DILexicalBlock(scope: !7110, file: !337, line: 278, column: 3)
!7113 = !DILocation(line: 278, column: 3, scope: !7114)
!7114 = distinct !DILexicalBlock(scope: !7112, file: !337, line: 278, column: 3)
!7115 = !DILocation(line: 278, column: 3, scope: !7116)
!7116 = distinct !DILexicalBlock(scope: !7112, file: !337, line: 278, column: 3)
!7117 = !DILocation(line: 278, column: 3, scope: !7118)
!7118 = distinct !DILexicalBlock(scope: !7116, file: !337, line: 278, column: 3)
!7119 = !{i64 2150307078}
!7120 = !DILocation(line: 279, column: 3, scope: !7110)
!7121 = !DILocation(line: 282, column: 6, scope: !7122)
!7122 = distinct !DILexicalBlock(scope: !7080, file: !337, line: 282, column: 6)
!7123 = !DILocation(line: 282, column: 6, scope: !7080)
!7124 = !DILocation(line: 283, column: 26, scope: !7122)
!7125 = !DILocation(line: 283, column: 3, scope: !7122)
!7126 = !DILocation(line: 285, column: 2, scope: !7080)
!7127 = !DILocation(line: 286, column: 1, scope: !7080)
!7128 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !7129, file: !7129, line: 397, type: !7130, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7133)
!7129 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!7130 = !DISubroutineType(types: !7131)
!7131 = !{!115, !115, !7132}
!7132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!7133 = !{!7134, !7135}
!7134 = !DILocalVariable(name: "i", arg: 1, scope: !7128, file: !7129, line: 397, type: !115)
!7135 = !DILocalVariable(name: "v", arg: 2, scope: !7128, file: !7129, line: 397, type: !7132)
!7136 = !DILocation(line: 397, column: 30, scope: !7128)
!7137 = !DILocation(line: 397, column: 43, scope: !7128)
!7138 = !DILocation(line: 399, column: 2, scope: !7128)
!7139 = !DILocation(line: 399, column: 2, scope: !7140)
!7140 = distinct !DILexicalBlock(scope: !7128, file: !7129, line: 399, column: 2)
!7141 = !DILocation(line: 400, column: 31, scope: !7128)
!7142 = !DILocation(line: 400, column: 2, scope: !7128)
!7143 = !DILocation(line: 401, column: 38, scope: !7128)
!7144 = !DILocation(line: 401, column: 41, scope: !7128)
!7145 = !DILocation(line: 401, column: 9, scope: !7128)
!7146 = !DILocation(line: 401, column: 2, scope: !7128)
!7147 = !DISubprogram(name: "refcount_warn_saturate", scope: !337, file: !337, line: 127, type: !7148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7148 = !DISubroutineType(types: !7149)
!7149 = !{null, !7061, !336}
!7150 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !7151, file: !7151, line: 94, type: !7152, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7157)
!7151 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7152 = !DISubroutineType(types: !7153)
!7153 = !{null, !7154, !507}
!7154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7155, size: 64)
!7155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7156)
!7156 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7157 = !{!7158, !7159}
!7158 = !DILocalVariable(name: "v", arg: 1, scope: !7150, file: !7151, line: 94, type: !7154)
!7159 = !DILocalVariable(name: "size", arg: 2, scope: !7150, file: !7151, line: 94, type: !507)
!7160 = !DILocation(line: 94, column: 79, scope: !7150)
!7161 = !DILocation(line: 94, column: 89, scope: !7150)
!7162 = !DILocation(line: 96, column: 20, scope: !7150)
!7163 = !DILocation(line: 96, column: 23, scope: !7150)
!7164 = !DILocation(line: 96, column: 2, scope: !7150)
!7165 = !DILocation(line: 97, column: 2, scope: !7150)
!7166 = !DILocation(line: 98, column: 1, scope: !7150)
!7167 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !7168, file: !7168, line: 928, type: !7130, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7169)
!7168 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!7169 = !{!7170, !7171}
!7170 = !DILocalVariable(name: "i", arg: 1, scope: !7167, file: !7168, line: 928, type: !115)
!7171 = !DILocalVariable(name: "v", arg: 2, scope: !7167, file: !7168, line: 928, type: !7132)
!7172 = !DILocation(line: 928, column: 34, scope: !7167)
!7173 = !DILocation(line: 928, column: 47, scope: !7167)
!7174 = !DILocation(line: 936, column: 31, scope: !7167)
!7175 = !DILocation(line: 936, column: 34, scope: !7167)
!7176 = !DILocation(line: 936, column: 9, scope: !7167)
!7177 = !DILocation(line: 936, column: 2, scope: !7167)
!7178 = distinct !DISubprogram(name: "kasan_check_write", scope: !7179, file: !7179, line: 44, type: !7180, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7182)
!7179 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7180 = !DISubroutineType(types: !7181)
!7181 = !{!881, !7154, !13}
!7182 = !{!7183, !7184}
!7183 = !DILocalVariable(name: "p", arg: 1, scope: !7178, file: !7179, line: 44, type: !7154)
!7184 = !DILocalVariable(name: "size", arg: 2, scope: !7178, file: !7179, line: 44, type: !13)
!7185 = !DILocation(line: 44, column: 59, scope: !7178)
!7186 = !DILocation(line: 44, column: 75, scope: !7178)
!7187 = !DILocation(line: 46, column: 2, scope: !7178)
!7188 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7189, file: !7189, line: 229, type: !7190, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7192)
!7189 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7190 = !DISubroutineType(types: !7191)
!7191 = !{null, !7154, !507, !115}
!7192 = !{!7193, !7194, !7195}
!7193 = !DILocalVariable(name: "ptr", arg: 1, scope: !7188, file: !7189, line: 229, type: !7154)
!7194 = !DILocalVariable(name: "size", arg: 2, scope: !7188, file: !7189, line: 229, type: !507)
!7195 = !DILocalVariable(name: "type", arg: 3, scope: !7188, file: !7189, line: 230, type: !115)
!7196 = !DILocation(line: 229, column: 60, scope: !7188)
!7197 = !DILocation(line: 229, column: 72, scope: !7188)
!7198 = !DILocation(line: 230, column: 15, scope: !7188)
!7199 = !DILocation(line: 230, column: 23, scope: !7188)
!7200 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !7201, file: !7201, line: 101, type: !7130, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7202)
!7201 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!7202 = !{!7203, !7204, !7205}
!7203 = !DILocalVariable(name: "i", arg: 1, scope: !7200, file: !7201, line: 101, type: !115)
!7204 = !DILocalVariable(name: "v", arg: 2, scope: !7200, file: !7201, line: 101, type: !7132)
!7205 = !DILocalVariable(name: "__ret", scope: !7206, file: !7201, line: 103, type: !115)
!7206 = distinct !DILexicalBlock(scope: !7200, file: !7201, line: 103, column: 9)
!7207 = !DILocation(line: 101, column: 54, scope: !7200)
!7208 = !DILocation(line: 101, column: 67, scope: !7200)
!7209 = !DILocation(line: 103, column: 9, scope: !7206)
!7210 = !{i64 2148910499, i64 2148910538, i64 2148910559, i64 2148910596, i64 2148910619, i64 2148910628}
!7211 = !DILocation(line: 103, column: 9, scope: !7200)
!7212 = !DILocation(line: 103, column: 2, scope: !7200)
