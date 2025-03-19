; ModuleID = 'drivers/gpu/drm/drm_self_refresh_helper.c'
source_filename = "drivers/gpu/drm/drm_self_refresh_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_self_refresh_helper_update_avg_times: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_self_refresh_helper_update_avg_times ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_self_refresh_helper_alter_state: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_self_refresh_helper_alter_state ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_self_refresh_helper_init: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_self_refresh_helper_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_self_refresh_helper_cleanup: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_self_refresh_helper_cleanup ; .previous"

%struct.lock_class_key = type {}
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i64, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i64, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_self_refresh_data = type { ptr, %struct.delayed_work, %struct.mutex, %struct.ewma_psr_time, %struct.ewma_psr_time }
%struct.ewma_psr_time = type { i64 }
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, ptr, i32, %struct.list_head, i8, i8 }
%struct.ww_acquire_ctx = type { ptr, i64, i32, i16, i16 }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }

@__UNIQUE_ID___addressable_drm_self_refresh_helper_update_avg_times322 = internal global ptr @drm_self_refresh_helper_update_avg_times, section ".discard.addressable", align 8, !dbg !0
@system_wq = external dso_local global ptr, align 8
@__UNIQUE_ID___addressable_drm_self_refresh_helper_alter_state323 = internal global ptr @drm_self_refresh_helper_alter_state, section ".discard.addressable", align 8, !dbg !6068
@.str = private unnamed_addr constant [42 x i8] c"drivers/gpu/drm/drm_self_refresh_helper.c\00", align 1, !dbg !6070
@drm_self_refresh_helper_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !6075
@drm_self_refresh_helper_init.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !6087
@.str.2 = private unnamed_addr constant [20 x i8] c"&sr_data->avg_mutex\00", align 1, !dbg !6089
@__UNIQUE_ID___addressable_drm_self_refresh_helper_init324 = internal global ptr @drm_self_refresh_helper_init, section ".discard.addressable", align 8, !dbg !6092
@__UNIQUE_ID___addressable_drm_self_refresh_helper_cleanup325 = internal global ptr @drm_self_refresh_helper_cleanup, section ".discard.addressable", align 8, !dbg !6094
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !6096
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_drm_self_refresh_helper_update_avg_times322, ptr @__UNIQUE_ID___addressable_drm_self_refresh_helper_alter_state323, ptr @__UNIQUE_ID___addressable_drm_self_refresh_helper_init324, ptr @__UNIQUE_ID___addressable_drm_self_refresh_helper_cleanup325], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_self_refresh_helper_update_avg_times(ptr noundef %state, i32 noundef %commit_time_ms, i32 noundef %new_self_refresh_mask) #0 align 16 !dbg !6110 {
entry:
  %state.addr = alloca ptr, align 8
  %commit_time_ms.addr = alloca i32, align 4
  %new_self_refresh_mask.addr = alloca i32, align 4
  %crtc = alloca ptr, align 8
  %old_crtc_state = alloca ptr, align 8
  %i = alloca i32, align 4
  %new_self_refresh_active = alloca i8, align 1
  %sr_data = alloca ptr, align 8
  %time = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6114, metadata !DIExpression()), !dbg !6128
  store i32 %commit_time_ms, ptr %commit_time_ms.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %commit_time_ms.addr, metadata !6115, metadata !DIExpression()), !dbg !6129
  store i32 %new_self_refresh_mask, ptr %new_self_refresh_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new_self_refresh_mask.addr, metadata !6116, metadata !DIExpression()), !dbg !6130
  call void @llvm.lifetime.start.p0(i64 8, ptr %crtc) #14, !dbg !6131
  call void @llvm.dbg.declare(metadata ptr %crtc, metadata !6117, metadata !DIExpression()), !dbg !6132
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_crtc_state) #14, !dbg !6133
  call void @llvm.dbg.declare(metadata ptr %old_crtc_state, metadata !6118, metadata !DIExpression()), !dbg !6134
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !6135
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6119, metadata !DIExpression()), !dbg !6136
  store i32 0, ptr %i, align 4, !dbg !6137
  br label %for.cond, !dbg !6137

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !6138
  %1 = load ptr, ptr %state.addr, align 8, !dbg !6138
  %dev = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 1, !dbg !6138
  %2 = load ptr, ptr %dev, align 8, !dbg !6138
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 31, !dbg !6138
  %num_crtc = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config, i32 0, i32 19, !dbg !6138
  %3 = load i32, ptr %num_crtc, align 8, !dbg !6138
  %cmp = icmp slt i32 %0, %3, !dbg !6138
  br i1 %cmp, label %for.body, label %for.end, !dbg !6137

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %state.addr, align 8, !dbg !6139
  %crtcs = getelementptr inbounds %struct.drm_atomic_state, ptr %4, i32 0, i32 4, !dbg !6139
  %5 = load ptr, ptr %crtcs, align 8, !dbg !6139
  %6 = load i32, ptr %i, align 4, !dbg !6139
  %idxprom = sext i32 %6 to i64, !dbg !6139
  %arrayidx = getelementptr %struct.__drm_crtcs_state, ptr %5, i64 %idxprom, !dbg !6139
  %ptr = getelementptr inbounds %struct.__drm_crtcs_state, ptr %arrayidx, i32 0, i32 0, !dbg !6139
  %7 = load ptr, ptr %ptr, align 8, !dbg !6139
  %tobool = icmp ne ptr %7, null, !dbg !6139
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !6139

land.lhs.true:                                    ; preds = %for.body
  %8 = load ptr, ptr %state.addr, align 8, !dbg !6139
  %crtcs1 = getelementptr inbounds %struct.drm_atomic_state, ptr %8, i32 0, i32 4, !dbg !6139
  %9 = load ptr, ptr %crtcs1, align 8, !dbg !6139
  %10 = load i32, ptr %i, align 4, !dbg !6139
  %idxprom2 = sext i32 %10 to i64, !dbg !6139
  %arrayidx3 = getelementptr %struct.__drm_crtcs_state, ptr %9, i64 %idxprom2, !dbg !6139
  %ptr4 = getelementptr inbounds %struct.__drm_crtcs_state, ptr %arrayidx3, i32 0, i32 0, !dbg !6139
  %11 = load ptr, ptr %ptr4, align 8, !dbg !6139
  store ptr %11, ptr %crtc, align 8, !dbg !6139
  %12 = load ptr, ptr %crtc, align 8, !dbg !6139
  %13 = load ptr, ptr %state.addr, align 8, !dbg !6139
  %crtcs5 = getelementptr inbounds %struct.drm_atomic_state, ptr %13, i32 0, i32 4, !dbg !6139
  %14 = load ptr, ptr %crtcs5, align 8, !dbg !6139
  %15 = load i32, ptr %i, align 4, !dbg !6139
  %idxprom6 = sext i32 %15 to i64, !dbg !6139
  %arrayidx7 = getelementptr %struct.__drm_crtcs_state, ptr %14, i64 %idxprom6, !dbg !6139
  %old_state = getelementptr inbounds %struct.__drm_crtcs_state, ptr %arrayidx7, i32 0, i32 2, !dbg !6139
  %16 = load ptr, ptr %old_state, align 8, !dbg !6139
  store ptr %16, ptr %old_crtc_state, align 8, !dbg !6139
  br i1 true, label %if.else, label %if.then, !dbg !6138

if.then:                                          ; preds = %land.lhs.true, %for.body
  br label %if.end24, !dbg !6140

if.else:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 1, ptr %new_self_refresh_active) #14, !dbg !6142
  call void @llvm.dbg.declare(metadata ptr %new_self_refresh_active, metadata !6120, metadata !DIExpression()), !dbg !6143
  %17 = load i32, ptr %new_self_refresh_mask.addr, align 4, !dbg !6144
  %conv = zext i32 %17 to i64, !dbg !6144
  %18 = load i32, ptr %i, align 4, !dbg !6145
  %sh_prom = zext i32 %18 to i64, !dbg !6145
  %shl = shl i64 1, %sh_prom, !dbg !6145
  %and = and i64 %conv, %shl, !dbg !6146
  %tobool8 = icmp ne i64 %and, 0, !dbg !6144
  %frombool = zext i1 %tobool8 to i8, !dbg !6143
  store i8 %frombool, ptr %new_self_refresh_active, align 1, !dbg !6143
  call void @llvm.lifetime.start.p0(i64 8, ptr %sr_data) #14, !dbg !6147
  call void @llvm.dbg.declare(metadata ptr %sr_data, metadata !6125, metadata !DIExpression()), !dbg !6148
  %19 = load ptr, ptr %crtc, align 8, !dbg !6149
  %self_refresh_data = getelementptr inbounds %struct.drm_crtc, ptr %19, i32 0, i32 31, !dbg !6150
  %20 = load ptr, ptr %self_refresh_data, align 8, !dbg !6150
  store ptr %20, ptr %sr_data, align 8, !dbg !6148
  call void @llvm.lifetime.start.p0(i64 8, ptr %time) #14, !dbg !6151
  call void @llvm.dbg.declare(metadata ptr %time, metadata !6126, metadata !DIExpression()), !dbg !6152
  %21 = load ptr, ptr %old_crtc_state, align 8, !dbg !6153
  %self_refresh_active = getelementptr inbounds %struct.drm_crtc_state, ptr %21, i32 0, i32 16, !dbg !6155
  %22 = load i8, ptr %self_refresh_active, align 2, !dbg !6155, !range !6156, !noundef !1121
  %tobool9 = trunc i8 %22 to i1, !dbg !6155
  %conv10 = zext i1 %tobool9 to i32, !dbg !6153
  %23 = load i8, ptr %new_self_refresh_active, align 1, !dbg !6157, !range !6156, !noundef !1121
  %tobool11 = trunc i8 %23 to i1, !dbg !6157
  %conv12 = zext i1 %tobool11 to i32, !dbg !6157
  %cmp13 = icmp eq i32 %conv10, %conv12, !dbg !6158
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !6159

if.then15:                                        ; preds = %if.else
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6160

if.end:                                           ; preds = %if.else
  %24 = load i8, ptr %new_self_refresh_active, align 1, !dbg !6161, !range !6156, !noundef !1121
  %tobool16 = trunc i8 %24 to i1, !dbg !6161
  br i1 %tobool16, label %if.then17, label %if.else18, !dbg !6163

if.then17:                                        ; preds = %if.end
  %25 = load ptr, ptr %sr_data, align 8, !dbg !6164
  %entry_avg_ms = getelementptr inbounds %struct.drm_self_refresh_data, ptr %25, i32 0, i32 3, !dbg !6165
  store ptr %entry_avg_ms, ptr %time, align 8, !dbg !6166
  br label %if.end19, !dbg !6167

if.else18:                                        ; preds = %if.end
  %26 = load ptr, ptr %sr_data, align 8, !dbg !6168
  %exit_avg_ms = getelementptr inbounds %struct.drm_self_refresh_data, ptr %26, i32 0, i32 4, !dbg !6169
  store ptr %exit_avg_ms, ptr %time, align 8, !dbg !6170
  br label %if.end19

if.end19:                                         ; preds = %if.else18, %if.then17
  %27 = load ptr, ptr %sr_data, align 8, !dbg !6171
  %avg_mutex = getelementptr inbounds %struct.drm_self_refresh_data, ptr %27, i32 0, i32 2, !dbg !6172
  call void @mutex_lock(ptr noundef %avg_mutex) #15, !dbg !6173
  %28 = load ptr, ptr %time, align 8, !dbg !6174
  %29 = load i32, ptr %commit_time_ms.addr, align 4, !dbg !6175
  %conv20 = zext i32 %29 to i64, !dbg !6175
  call void @ewma_psr_time_add(ptr noundef %28, i64 noundef %conv20) #15, !dbg !6176
  %30 = load ptr, ptr %sr_data, align 8, !dbg !6177
  %avg_mutex21 = getelementptr inbounds %struct.drm_self_refresh_data, ptr %30, i32 0, i32 2, !dbg !6178
  call void @mutex_unlock(ptr noundef %avg_mutex21) #15, !dbg !6179
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6180
  br label %cleanup, !dbg !6180

cleanup:                                          ; preds = %if.end19, %if.then15
  call void @llvm.lifetime.end.p0(i64 8, ptr %time) #14, !dbg !6180
  call void @llvm.lifetime.end.p0(i64 8, ptr %sr_data) #14, !dbg !6180
  call void @llvm.lifetime.end.p0(i64 1, ptr %new_self_refresh_active) #14, !dbg !6180
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end24

if.end24:                                         ; preds = %cleanup.cont, %if.then
  br label %for.inc, !dbg !6139

for.inc:                                          ; preds = %if.end24, %cleanup
  %31 = load i32, ptr %i, align 4, !dbg !6138
  %inc = add i32 %31, 1, !dbg !6138
  store i32 %inc, ptr %i, align 4, !dbg !6138
  br label %for.cond, !dbg !6138, !llvm.loop !6181

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !6185
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_crtc_state) #14, !dbg !6185
  call void @llvm.lifetime.end.p0(i64 8, ptr %crtc) #14, !dbg !6185
  ret void, !dbg !6185

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6186 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ewma_psr_time_add(ptr noundef %e, i64 noundef %val) #4 align 16 !dbg !6190 {
entry:
  %e.addr = alloca ptr, align 8
  %val.addr = alloca i64, align 8
  %internal = alloca i64, align 8
  %tmp = alloca i64, align 8
  %weight_rcp = alloca i64, align 8
  %precision = alloca i64, align 8
  store ptr %e, ptr %e.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e.addr, metadata !6194, metadata !DIExpression()), !dbg !6199
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6195, metadata !DIExpression()), !dbg !6199
  call void @llvm.lifetime.start.p0(i64 8, ptr %internal) #14, !dbg !6199
  call void @llvm.dbg.declare(metadata ptr %internal, metadata !6196, metadata !DIExpression()), !dbg !6199
  br label %do.body, !dbg !6200

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6202

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6202

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %e.addr, align 8, !dbg !6200
  %internal1 = getelementptr inbounds %struct.ewma_psr_time, ptr %0, i32 0, i32 0, !dbg !6200
  %1 = load volatile i64, ptr %internal1, align 8, !dbg !6200
  store i64 %1, ptr %tmp, align 8, !dbg !6202
  %2 = load i64, ptr %tmp, align 8, !dbg !6200
  store i64 %2, ptr %internal, align 8, !dbg !6199
  call void @llvm.lifetime.start.p0(i64 8, ptr %weight_rcp) #14, !dbg !6199
  call void @llvm.dbg.declare(metadata ptr %weight_rcp, metadata !6197, metadata !DIExpression()), !dbg !6199
  store i64 2, ptr %weight_rcp, align 8, !dbg !6199
  call void @llvm.lifetime.start.p0(i64 8, ptr %precision) #14, !dbg !6199
  call void @llvm.dbg.declare(metadata ptr %precision, metadata !6198, metadata !DIExpression()), !dbg !6199
  store i64 4, ptr %precision, align 8, !dbg !6199
  br label %do.body2, !dbg !6199

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !6204

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !6204

do.end4:                                          ; preds = %do.cond3
  br label %do.body5, !dbg !6199

do.body5:                                         ; preds = %do.end4
  br label %do.cond6, !dbg !6206

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6206

do.end7:                                          ; preds = %do.cond6
  br label %do.body8, !dbg !6199

do.body8:                                         ; preds = %do.end7
  br label %do.cond9, !dbg !6208

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !6208

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !6199

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !6210

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6210

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !6199

do.body14:                                        ; preds = %do.end13
  br label %do.body15, !dbg !6212

do.body15:                                        ; preds = %do.body14
  br label %do.cond16, !dbg !6214

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !6214

do.end17:                                         ; preds = %do.cond16
  br label %do.body18, !dbg !6212

do.body18:                                        ; preds = %do.end17
  %3 = load i64, ptr %internal, align 8, !dbg !6216
  %tobool = icmp ne i64 %3, 0, !dbg !6216
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6216

cond.true:                                        ; preds = %do.body18
  %4 = load i64, ptr %internal, align 8, !dbg !6216
  %5 = load i64, ptr %weight_rcp, align 8, !dbg !6216
  %shl = shl i64 %4, %5, !dbg !6216
  %6 = load i64, ptr %internal, align 8, !dbg !6216
  %sub = sub i64 %shl, %6, !dbg !6216
  %7 = load i64, ptr %val.addr, align 8, !dbg !6216
  %8 = load i64, ptr %precision, align 8, !dbg !6216
  %shl19 = shl i64 %7, %8, !dbg !6216
  %add = add i64 %sub, %shl19, !dbg !6216
  %9 = load i64, ptr %weight_rcp, align 8, !dbg !6216
  %shr = lshr i64 %add, %9, !dbg !6216
  br label %cond.end, !dbg !6216

cond.false:                                       ; preds = %do.body18
  %10 = load i64, ptr %val.addr, align 8, !dbg !6216
  %11 = load i64, ptr %precision, align 8, !dbg !6216
  %shl20 = shl i64 %10, %11, !dbg !6216
  br label %cond.end, !dbg !6216

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %shr, %cond.true ], [ %shl20, %cond.false ], !dbg !6216
  %12 = load ptr, ptr %e.addr, align 8, !dbg !6216
  %internal21 = getelementptr inbounds %struct.ewma_psr_time, ptr %12, i32 0, i32 0, !dbg !6216
  store volatile i64 %cond, ptr %internal21, align 8, !dbg !6216
  br label %do.cond22, !dbg !6216

do.cond22:                                        ; preds = %cond.end
  br label %do.end23, !dbg !6216

do.end23:                                         ; preds = %do.cond22
  br label %do.cond24, !dbg !6212

do.cond24:                                        ; preds = %do.end23
  br label %do.end25, !dbg !6212

do.end25:                                         ; preds = %do.cond24
  call void @llvm.lifetime.end.p0(i64 8, ptr %precision) #14, !dbg !6199
  call void @llvm.lifetime.end.p0(i64 8, ptr %weight_rcp) #14, !dbg !6199
  call void @llvm.lifetime.end.p0(i64 8, ptr %internal) #14, !dbg !6199
  ret void, !dbg !6199
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6218 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_self_refresh_helper_alter_state(ptr noundef %state) #0 align 16 !dbg !6219 {
entry:
  %state.addr = alloca ptr, align 8
  %crtc = alloca ptr, align 8
  %crtc_state = alloca ptr, align 8
  %i = alloca i32, align 4
  %sr_data = alloca ptr, align 8
  %delay = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6221, metadata !DIExpression()), !dbg !6231
  call void @llvm.lifetime.start.p0(i64 8, ptr %crtc) #14, !dbg !6232
  call void @llvm.dbg.declare(metadata ptr %crtc, metadata !6222, metadata !DIExpression()), !dbg !6233
  call void @llvm.lifetime.start.p0(i64 8, ptr %crtc_state) #14, !dbg !6234
  call void @llvm.dbg.declare(metadata ptr %crtc_state, metadata !6223, metadata !DIExpression()), !dbg !6235
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !6236
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6224, metadata !DIExpression()), !dbg !6237
  %0 = load ptr, ptr %state.addr, align 8, !dbg !6238
  %async_update = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 2, !dbg !6240
  %bf.load = load i8, ptr %async_update, align 8, !dbg !6240
  %bf.lshr = lshr i8 %bf.load, 2, !dbg !6240
  %bf.clear = and i8 %bf.lshr, 1, !dbg !6240
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !6240
  br i1 %bf.cast, label %if.then, label %lor.lhs.false, !dbg !6241

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %state.addr, align 8, !dbg !6242
  %allow_modeset = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 2, !dbg !6243
  %bf.load1 = load i8, ptr %allow_modeset, align 8, !dbg !6243
  %bf.clear2 = and i8 %bf.load1, 1, !dbg !6243
  %bf.cast3 = trunc i8 %bf.clear2 to i1, !dbg !6243
  br i1 %bf.cast3, label %if.end22, label %if.then, !dbg !6244

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %i, align 4, !dbg !6245
  br label %for.cond, !dbg !6245

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, ptr %i, align 4, !dbg !6248
  %3 = load ptr, ptr %state.addr, align 8, !dbg !6248
  %dev = getelementptr inbounds %struct.drm_atomic_state, ptr %3, i32 0, i32 1, !dbg !6248
  %4 = load ptr, ptr %dev, align 8, !dbg !6248
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 31, !dbg !6248
  %num_crtc = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config, i32 0, i32 19, !dbg !6248
  %5 = load i32, ptr %num_crtc, align 8, !dbg !6248
  %cmp = icmp slt i32 %2, %5, !dbg !6248
  br i1 %cmp, label %for.body, label %for.end, !dbg !6245

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %state.addr, align 8, !dbg !6250
  %crtcs = getelementptr inbounds %struct.drm_atomic_state, ptr %6, i32 0, i32 4, !dbg !6250
  %7 = load ptr, ptr %crtcs, align 8, !dbg !6250
  %8 = load i32, ptr %i, align 4, !dbg !6250
  %idxprom = sext i32 %8 to i64, !dbg !6250
  %arrayidx = getelementptr %struct.__drm_crtcs_state, ptr %7, i64 %idxprom, !dbg !6250
  %ptr = getelementptr inbounds %struct.__drm_crtcs_state, ptr %arrayidx, i32 0, i32 0, !dbg !6250
  %9 = load ptr, ptr %ptr, align 8, !dbg !6250
  %tobool = icmp ne ptr %9, null, !dbg !6250
  br i1 %tobool, label %land.lhs.true, label %if.then11, !dbg !6250

land.lhs.true:                                    ; preds = %for.body
  %10 = load ptr, ptr %state.addr, align 8, !dbg !6250
  %crtcs4 = getelementptr inbounds %struct.drm_atomic_state, ptr %10, i32 0, i32 4, !dbg !6250
  %11 = load ptr, ptr %crtcs4, align 8, !dbg !6250
  %12 = load i32, ptr %i, align 4, !dbg !6250
  %idxprom5 = sext i32 %12 to i64, !dbg !6250
  %arrayidx6 = getelementptr %struct.__drm_crtcs_state, ptr %11, i64 %idxprom5, !dbg !6250
  %ptr7 = getelementptr inbounds %struct.__drm_crtcs_state, ptr %arrayidx6, i32 0, i32 0, !dbg !6250
  %13 = load ptr, ptr %ptr7, align 8, !dbg !6250
  store ptr %13, ptr %crtc, align 8, !dbg !6250
  %14 = load ptr, ptr %crtc, align 8, !dbg !6250
  %15 = load ptr, ptr %state.addr, align 8, !dbg !6250
  %crtcs8 = getelementptr inbounds %struct.drm_atomic_state, ptr %15, i32 0, i32 4, !dbg !6250
  %16 = load ptr, ptr %crtcs8, align 8, !dbg !6250
  %17 = load i32, ptr %i, align 4, !dbg !6250
  %idxprom9 = sext i32 %17 to i64, !dbg !6250
  %arrayidx10 = getelementptr %struct.__drm_crtcs_state, ptr %16, i64 %idxprom9, !dbg !6250
  %old_state = getelementptr inbounds %struct.__drm_crtcs_state, ptr %arrayidx10, i32 0, i32 2, !dbg !6250
  %18 = load ptr, ptr %old_state, align 8, !dbg !6250
  store ptr %18, ptr %crtc_state, align 8, !dbg !6250
  br i1 true, label %if.else, label %if.then11, !dbg !6248

if.then11:                                        ; preds = %land.lhs.true, %for.body
  br label %if.end21, !dbg !6252

if.else:                                          ; preds = %land.lhs.true
  %19 = load ptr, ptr %crtc_state, align 8, !dbg !6254
  %self_refresh_active = getelementptr inbounds %struct.drm_crtc_state, ptr %19, i32 0, i32 16, !dbg !6257
  %20 = load i8, ptr %self_refresh_active, align 2, !dbg !6257, !range !6156, !noundef !1121
  %tobool12 = trunc i8 %20 to i1, !dbg !6257
  br i1 %tobool12, label %if.then13, label %if.end, !dbg !6258

if.then13:                                        ; preds = %if.else
  %21 = load ptr, ptr %state.addr, align 8, !dbg !6259
  %async_update14 = getelementptr inbounds %struct.drm_atomic_state, ptr %21, i32 0, i32 2, !dbg !6261
  %bf.load15 = load i8, ptr %async_update14, align 8, !dbg !6262
  %bf.clear16 = and i8 %bf.load15, -5, !dbg !6262
  %bf.set = or i8 %bf.clear16, 0, !dbg !6262
  store i8 %bf.set, ptr %async_update14, align 8, !dbg !6262
  %22 = load ptr, ptr %state.addr, align 8, !dbg !6263
  %allow_modeset17 = getelementptr inbounds %struct.drm_atomic_state, ptr %22, i32 0, i32 2, !dbg !6264
  %bf.load18 = load i8, ptr %allow_modeset17, align 8, !dbg !6265
  %bf.clear19 = and i8 %bf.load18, -2, !dbg !6265
  %bf.set20 = or i8 %bf.clear19, 1, !dbg !6265
  store i8 %bf.set20, ptr %allow_modeset17, align 8, !dbg !6265
  br label %for.end, !dbg !6266

if.end:                                           ; preds = %if.else
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then11
  br label %for.inc, !dbg !6250

for.inc:                                          ; preds = %if.end21
  %23 = load i32, ptr %i, align 4, !dbg !6248
  %inc = add i32 %23, 1, !dbg !6248
  store i32 %inc, ptr %i, align 4, !dbg !6248
  br label %for.cond, !dbg !6248, !llvm.loop !6267

for.end:                                          ; preds = %if.then13, %for.cond
  br label %if.end22, !dbg !6269

if.end22:                                         ; preds = %for.end, %lor.lhs.false
  store i32 0, ptr %i, align 4, !dbg !6270
  br label %for.cond23, !dbg !6270

for.cond23:                                       ; preds = %for.inc57, %if.end22
  %24 = load i32, ptr %i, align 4, !dbg !6271
  %25 = load ptr, ptr %state.addr, align 8, !dbg !6271
  %dev24 = getelementptr inbounds %struct.drm_atomic_state, ptr %25, i32 0, i32 1, !dbg !6271
  %26 = load ptr, ptr %dev24, align 8, !dbg !6271
  %mode_config25 = getelementptr inbounds %struct.drm_device, ptr %26, i32 0, i32 31, !dbg !6271
  %num_crtc26 = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config25, i32 0, i32 19, !dbg !6271
  %27 = load i32, ptr %num_crtc26, align 8, !dbg !6271
  %cmp27 = icmp slt i32 %24, %27, !dbg !6271
  br i1 %cmp27, label %for.body28, label %for.end59, !dbg !6270

for.body28:                                       ; preds = %for.cond23
  %28 = load ptr, ptr %state.addr, align 8, !dbg !6272
  %crtcs29 = getelementptr inbounds %struct.drm_atomic_state, ptr %28, i32 0, i32 4, !dbg !6272
  %29 = load ptr, ptr %crtcs29, align 8, !dbg !6272
  %30 = load i32, ptr %i, align 4, !dbg !6272
  %idxprom30 = sext i32 %30 to i64, !dbg !6272
  %arrayidx31 = getelementptr %struct.__drm_crtcs_state, ptr %29, i64 %idxprom30, !dbg !6272
  %ptr32 = getelementptr inbounds %struct.__drm_crtcs_state, ptr %arrayidx31, i32 0, i32 0, !dbg !6272
  %31 = load ptr, ptr %ptr32, align 8, !dbg !6272
  %tobool33 = icmp ne ptr %31, null, !dbg !6272
  br i1 %tobool33, label %land.lhs.true34, label %if.then42, !dbg !6272

land.lhs.true34:                                  ; preds = %for.body28
  %32 = load ptr, ptr %state.addr, align 8, !dbg !6272
  %crtcs35 = getelementptr inbounds %struct.drm_atomic_state, ptr %32, i32 0, i32 4, !dbg !6272
  %33 = load ptr, ptr %crtcs35, align 8, !dbg !6272
  %34 = load i32, ptr %i, align 4, !dbg !6272
  %idxprom36 = sext i32 %34 to i64, !dbg !6272
  %arrayidx37 = getelementptr %struct.__drm_crtcs_state, ptr %33, i64 %idxprom36, !dbg !6272
  %ptr38 = getelementptr inbounds %struct.__drm_crtcs_state, ptr %arrayidx37, i32 0, i32 0, !dbg !6272
  %35 = load ptr, ptr %ptr38, align 8, !dbg !6272
  store ptr %35, ptr %crtc, align 8, !dbg !6272
  %36 = load ptr, ptr %crtc, align 8, !dbg !6272
  %37 = load ptr, ptr %state.addr, align 8, !dbg !6272
  %crtcs39 = getelementptr inbounds %struct.drm_atomic_state, ptr %37, i32 0, i32 4, !dbg !6272
  %38 = load ptr, ptr %crtcs39, align 8, !dbg !6272
  %39 = load i32, ptr %i, align 4, !dbg !6272
  %idxprom40 = sext i32 %39 to i64, !dbg !6272
  %arrayidx41 = getelementptr %struct.__drm_crtcs_state, ptr %38, i64 %idxprom40, !dbg !6272
  %new_state = getelementptr inbounds %struct.__drm_crtcs_state, ptr %arrayidx41, i32 0, i32 3, !dbg !6272
  %40 = load ptr, ptr %new_state, align 8, !dbg !6272
  store ptr %40, ptr %crtc_state, align 8, !dbg !6272
  %41 = load ptr, ptr %crtc_state, align 8, !dbg !6272
  br i1 true, label %if.else43, label %if.then42, !dbg !6271

if.then42:                                        ; preds = %land.lhs.true34, %for.body28
  br label %if.end56, !dbg !6273

if.else43:                                        ; preds = %land.lhs.true34
  call void @llvm.lifetime.start.p0(i64 8, ptr %sr_data) #14, !dbg !6275
  call void @llvm.dbg.declare(metadata ptr %sr_data, metadata !6225, metadata !DIExpression()), !dbg !6276
  call void @llvm.lifetime.start.p0(i64 4, ptr %delay) #14, !dbg !6277
  call void @llvm.dbg.declare(metadata ptr %delay, metadata !6230, metadata !DIExpression()), !dbg !6278
  %42 = load ptr, ptr %crtc_state, align 8, !dbg !6279
  %self_refresh_active44 = getelementptr inbounds %struct.drm_crtc_state, ptr %42, i32 0, i32 16, !dbg !6281
  %43 = load i8, ptr %self_refresh_active44, align 2, !dbg !6281, !range !6156, !noundef !1121
  %tobool45 = trunc i8 %43 to i1, !dbg !6281
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !6282

if.then46:                                        ; preds = %if.else43
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6283

if.end47:                                         ; preds = %if.else43
  %44 = load ptr, ptr %crtc, align 8, !dbg !6284
  %self_refresh_data = getelementptr inbounds %struct.drm_crtc, ptr %44, i32 0, i32 31, !dbg !6285
  %45 = load ptr, ptr %self_refresh_data, align 8, !dbg !6285
  store ptr %45, ptr %sr_data, align 8, !dbg !6286
  %46 = load ptr, ptr %sr_data, align 8, !dbg !6287
  %tobool48 = icmp ne ptr %46, null, !dbg !6287
  br i1 %tobool48, label %if.end50, label %if.then49, !dbg !6289

if.then49:                                        ; preds = %if.end47
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6290

if.end50:                                         ; preds = %if.end47
  %47 = load ptr, ptr %sr_data, align 8, !dbg !6291
  %avg_mutex = getelementptr inbounds %struct.drm_self_refresh_data, ptr %47, i32 0, i32 2, !dbg !6292
  call void @mutex_lock(ptr noundef %avg_mutex) #15, !dbg !6293
  %48 = load ptr, ptr %sr_data, align 8, !dbg !6294
  %entry_avg_ms = getelementptr inbounds %struct.drm_self_refresh_data, ptr %48, i32 0, i32 3, !dbg !6295
  %call = call i64 @ewma_psr_time_read(ptr noundef %entry_avg_ms) #15, !dbg !6296
  %49 = load ptr, ptr %sr_data, align 8, !dbg !6297
  %exit_avg_ms = getelementptr inbounds %struct.drm_self_refresh_data, ptr %49, i32 0, i32 4, !dbg !6298
  %call51 = call i64 @ewma_psr_time_read(ptr noundef %exit_avg_ms) #15, !dbg !6299
  %add = add i64 %call, %call51, !dbg !6300
  %mul = mul i64 %add, 2, !dbg !6301
  %conv = trunc i64 %mul to i32, !dbg !6302
  store i32 %conv, ptr %delay, align 4, !dbg !6303
  %50 = load ptr, ptr %sr_data, align 8, !dbg !6304
  %avg_mutex52 = getelementptr inbounds %struct.drm_self_refresh_data, ptr %50, i32 0, i32 2, !dbg !6305
  call void @mutex_unlock(ptr noundef %avg_mutex52) #15, !dbg !6306
  %51 = load ptr, ptr @system_wq, align 8, !dbg !6307
  %52 = load ptr, ptr %sr_data, align 8, !dbg !6308
  %entry_work = getelementptr inbounds %struct.drm_self_refresh_data, ptr %52, i32 0, i32 1, !dbg !6309
  %53 = load i32, ptr %delay, align 4, !dbg !6310
  %call53 = call i64 @msecs_to_jiffies(i32 noundef %53) #15, !dbg !6311
  %call54 = call zeroext i1 @mod_delayed_work(ptr noundef %51, ptr noundef %entry_work, i64 noundef %call53) #15, !dbg !6312
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6313
  br label %cleanup, !dbg !6313

cleanup:                                          ; preds = %if.end50, %if.then49, %if.then46
  call void @llvm.lifetime.end.p0(i64 4, ptr %delay) #14, !dbg !6313
  call void @llvm.lifetime.end.p0(i64 8, ptr %sr_data) #14, !dbg !6313
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc57
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end56

if.end56:                                         ; preds = %cleanup.cont, %if.then42
  br label %for.inc57, !dbg !6272

for.inc57:                                        ; preds = %if.end56, %cleanup
  %54 = load i32, ptr %i, align 4, !dbg !6271
  %inc58 = add i32 %54, 1, !dbg !6271
  store i32 %inc58, ptr %i, align 4, !dbg !6271
  br label %for.cond23, !dbg !6271, !llvm.loop !6314

for.end59:                                        ; preds = %for.cond23
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !6316
  call void @llvm.lifetime.end.p0(i64 8, ptr %crtc_state) #14, !dbg !6316
  call void @llvm.lifetime.end.p0(i64 8, ptr %crtc) #14, !dbg !6316
  ret void, !dbg !6316

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ewma_psr_time_read(ptr noundef %e) #4 align 16 !dbg !6317 {
entry:
  %e.addr = alloca ptr, align 8
  store ptr %e, ptr %e.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e.addr, metadata !6321, metadata !DIExpression()), !dbg !6322
  br label %do.body, !dbg !6322

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6323

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !6322

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !6325

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !6322

do.body3:                                         ; preds = %do.end2
  br label %do.end4, !dbg !6327

do.end4:                                          ; preds = %do.body3
  br label %do.body5, !dbg !6322

do.body5:                                         ; preds = %do.end4
  br label %do.end6, !dbg !6329

do.end6:                                          ; preds = %do.body5
  %0 = load ptr, ptr %e.addr, align 8, !dbg !6322
  %internal = getelementptr inbounds %struct.ewma_psr_time, ptr %0, i32 0, i32 0, !dbg !6322
  %1 = load i64, ptr %internal, align 8, !dbg !6322
  %shr = lshr i64 %1, 4, !dbg !6322
  ret i64 %shr, !dbg !6322
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @mod_delayed_work(ptr noundef %wq, ptr noundef %dwork, i64 noundef %delay) #4 align 16 !dbg !6331 {
entry:
  %wq.addr = alloca ptr, align 8
  %dwork.addr = alloca ptr, align 8
  %delay.addr = alloca i64, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !6335, metadata !DIExpression()), !dbg !6338
  store ptr %dwork, ptr %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dwork.addr, metadata !6336, metadata !DIExpression()), !dbg !6339
  store i64 %delay, ptr %delay.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delay.addr, metadata !6337, metadata !DIExpression()), !dbg !6340
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !6341
  %1 = load ptr, ptr %dwork.addr, align 8, !dbg !6342
  %2 = load i64, ptr %delay.addr, align 8, !dbg !6343
  %call = call zeroext i1 @mod_delayed_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1, i64 noundef %2) #15, !dbg !6344
  ret i1 %call, !dbg !6345
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @msecs_to_jiffies(i32 noundef %m) #5 align 16 !dbg !6346 {
entry:
  %retval = alloca i64, align 8
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6351, metadata !DIExpression()), !dbg !6352
  %0 = load i32, ptr %m.addr, align 4, !dbg !6353
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6355
  br i1 %1, label %if.then, label %if.else, !dbg !6356

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %m.addr, align 4, !dbg !6357
  %cmp = icmp slt i32 %2, 0, !dbg !6360
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6361

if.then1:                                         ; preds = %if.then
  store i64 4611686018427387902, ptr %retval, align 8, !dbg !6362
  br label %return, !dbg !6362

if.end:                                           ; preds = %if.then
  %3 = load i32, ptr %m.addr, align 4, !dbg !6363
  %call = call i64 @_msecs_to_jiffies(i32 noundef %3) #15, !dbg !6364
  store i64 %call, ptr %retval, align 8, !dbg !6365
  br label %return, !dbg !6365

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %m.addr, align 4, !dbg !6366
  %call2 = call i64 @__msecs_to_jiffies(i32 noundef %4) #15, !dbg !6368
  store i64 %call2, ptr %retval, align 8, !dbg !6369
  br label %return, !dbg !6369

return:                                           ; preds = %if.else, %if.end, %if.then1
  %5 = load i64, ptr %retval, align 8, !dbg !6370
  ret i64 %5, !dbg !6370
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_self_refresh_helper_init(ptr noundef %crtc) #0 align 16 !dbg !6077 {
entry:
  %retval = alloca i32, align 4
  %crtc.addr = alloca ptr, align 8
  %sr_data = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  store ptr %crtc, ptr %crtc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %crtc.addr, metadata !6079, metadata !DIExpression()), !dbg !6371
  call void @llvm.lifetime.start.p0(i64 8, ptr %sr_data) #14, !dbg !6372
  call void @llvm.dbg.declare(metadata ptr %sr_data, metadata !6080, metadata !DIExpression()), !dbg !6373
  %0 = load ptr, ptr %crtc.addr, align 8, !dbg !6374
  %self_refresh_data = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 31, !dbg !6375
  %1 = load ptr, ptr %self_refresh_data, align 8, !dbg !6375
  store ptr %1, ptr %sr_data, align 8, !dbg !6373
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6376
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6081, metadata !DIExpression()), !dbg !6376
  %2 = load ptr, ptr %sr_data, align 8, !dbg !6376
  %tobool = icmp ne ptr %2, null, !dbg !6376
  %lnot = xor i1 %tobool, true, !dbg !6376
  %lnot1 = xor i1 %lnot, true, !dbg !6376
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6376
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6376
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !6377
  %tobool2 = icmp ne i32 %3, 0, !dbg !6377
  %lnot3 = xor i1 %tobool2, true, !dbg !6377
  %lnot5 = xor i1 %lnot3, true, !dbg !6377
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !6377
  %conv = sext i32 %lnot.ext6 to i64, !dbg !6377
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6377
  %tobool7 = icmp ne i64 %expval, 0, !dbg !6377
  br i1 %tobool7, label %if.then, label %if.end, !dbg !6376

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6377

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !6378
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6084, metadata !DIExpression()), !dbg !6378
  store i32 2305, ptr %__flags, align 4, !dbg !6378
  br label %do.body8, !dbg !6378

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !6379

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !6379

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !6378

do.body9:                                         ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !6381
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 237, i32 %4, i64 12) #14, !dbg !6381, !srcloc !6383
  br label %do.cond10, !dbg !6381

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !6381

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !6378

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !6384

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6384

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !6377
  br label %do.cond15, !dbg !6378

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !6378

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !6378

if.end:                                           ; preds = %do.end16, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !6376
  %tobool17 = icmp ne i32 %5, 0, !dbg !6376
  %lnot18 = xor i1 %tobool17, true, !dbg !6376
  %lnot20 = xor i1 %lnot18, true, !dbg !6376
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !6376
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !6376
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !6376
  store i64 %expval23, ptr %tmp, align 8, !dbg !6377
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6386
  %6 = load i64, ptr %tmp, align 8, !dbg !6376
  %tobool24 = icmp ne i64 %6, 0, !dbg !6386
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !6387

if.then25:                                        ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !6388
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6388

if.end26:                                         ; preds = %if.end
  %call = call noalias ptr @kzalloc(i64 noundef 144, i32 noundef 3264) #16, !dbg !6389
  store ptr %call, ptr %sr_data, align 8, !dbg !6390
  %7 = load ptr, ptr %sr_data, align 8, !dbg !6391
  %tobool27 = icmp ne ptr %7, null, !dbg !6391
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !6393

if.then28:                                        ; preds = %if.end26
  store i32 -12, ptr %retval, align 4, !dbg !6394
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6394

if.end29:                                         ; preds = %if.end26
  br label %do.body30, !dbg !6395

do.body30:                                        ; preds = %if.end29
  br label %do.body31, !dbg !6396

do.body31:                                        ; preds = %do.body30
  br label %do.body32, !dbg !6398

do.body32:                                        ; preds = %do.body31
  %8 = load ptr, ptr %sr_data, align 8, !dbg !6400
  %entry_work = getelementptr inbounds %struct.drm_self_refresh_data, ptr %8, i32 0, i32 1, !dbg !6400
  %work = getelementptr inbounds %struct.delayed_work, ptr %entry_work, i32 0, i32 0, !dbg !6400
  call void @__init_work(ptr noundef %work, i32 noundef 0) #15, !dbg !6400
  %9 = load ptr, ptr %sr_data, align 8, !dbg !6400
  %entry_work33 = getelementptr inbounds %struct.drm_self_refresh_data, ptr %9, i32 0, i32 1, !dbg !6400
  %work34 = getelementptr inbounds %struct.delayed_work, ptr %entry_work33, i32 0, i32 0, !dbg !6400
  %data = getelementptr inbounds %struct.work_struct, ptr %work34, i32 0, i32 0, !dbg !6400
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !6400
  store i64 68719476704, ptr %counter, align 8, !dbg !6400
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %data, ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !6400
  %10 = load ptr, ptr %sr_data, align 8, !dbg !6400
  %entry_work35 = getelementptr inbounds %struct.drm_self_refresh_data, ptr %10, i32 0, i32 1, !dbg !6400
  %work36 = getelementptr inbounds %struct.delayed_work, ptr %entry_work35, i32 0, i32 0, !dbg !6400
  %entry37 = getelementptr inbounds %struct.work_struct, ptr %work36, i32 0, i32 1, !dbg !6400
  call void @INIT_LIST_HEAD(ptr noundef %entry37) #15, !dbg !6400
  %11 = load ptr, ptr %sr_data, align 8, !dbg !6400
  %entry_work38 = getelementptr inbounds %struct.drm_self_refresh_data, ptr %11, i32 0, i32 1, !dbg !6400
  %work39 = getelementptr inbounds %struct.delayed_work, ptr %entry_work38, i32 0, i32 0, !dbg !6400
  %func = getelementptr inbounds %struct.work_struct, ptr %work39, i32 0, i32 2, !dbg !6400
  store ptr @drm_self_refresh_helper_entry_work, ptr %func, align 8, !dbg !6400
  br label %do.cond40, !dbg !6400

do.cond40:                                        ; preds = %do.body32
  br label %do.end41, !dbg !6400

do.end41:                                         ; preds = %do.cond40
  br label %do.cond42, !dbg !6398

do.cond42:                                        ; preds = %do.end41
  br label %do.end43, !dbg !6398

do.end43:                                         ; preds = %do.cond42
  %12 = load ptr, ptr %sr_data, align 8, !dbg !6396
  %entry_work44 = getelementptr inbounds %struct.drm_self_refresh_data, ptr %12, i32 0, i32 1, !dbg !6396
  %timer = getelementptr inbounds %struct.delayed_work, ptr %entry_work44, i32 0, i32 1, !dbg !6396
  call void @init_timer_key(ptr noundef %timer, ptr noundef @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #15, !dbg !6396
  br label %do.cond45, !dbg !6396

do.cond45:                                        ; preds = %do.end43
  br label %do.end46, !dbg !6396

do.end46:                                         ; preds = %do.cond45
  %13 = load ptr, ptr %crtc.addr, align 8, !dbg !6402
  %14 = load ptr, ptr %sr_data, align 8, !dbg !6403
  %crtc47 = getelementptr inbounds %struct.drm_self_refresh_data, ptr %14, i32 0, i32 0, !dbg !6404
  store ptr %13, ptr %crtc47, align 8, !dbg !6405
  br label %do.body48, !dbg !6406

do.body48:                                        ; preds = %do.end46
  %15 = load ptr, ptr %sr_data, align 8, !dbg !6407
  %avg_mutex = getelementptr inbounds %struct.drm_self_refresh_data, ptr %15, i32 0, i32 2, !dbg !6407
  call void @__mutex_init(ptr noundef %avg_mutex, ptr noundef @.str.2, ptr noundef @drm_self_refresh_helper_init.__key.1) #15, !dbg !6407
  br label %do.cond49, !dbg !6407

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !6407

do.end50:                                         ; preds = %do.cond49
  %16 = load ptr, ptr %sr_data, align 8, !dbg !6409
  %entry_avg_ms = getelementptr inbounds %struct.drm_self_refresh_data, ptr %16, i32 0, i32 3, !dbg !6410
  call void @ewma_psr_time_init(ptr noundef %entry_avg_ms) #15, !dbg !6411
  %17 = load ptr, ptr %sr_data, align 8, !dbg !6412
  %exit_avg_ms = getelementptr inbounds %struct.drm_self_refresh_data, ptr %17, i32 0, i32 4, !dbg !6413
  call void @ewma_psr_time_init(ptr noundef %exit_avg_ms) #15, !dbg !6414
  %18 = load ptr, ptr %sr_data, align 8, !dbg !6415
  %entry_avg_ms51 = getelementptr inbounds %struct.drm_self_refresh_data, ptr %18, i32 0, i32 3, !dbg !6416
  call void @ewma_psr_time_add(ptr noundef %entry_avg_ms51, i64 noundef 200) #15, !dbg !6417
  %19 = load ptr, ptr %sr_data, align 8, !dbg !6418
  %exit_avg_ms52 = getelementptr inbounds %struct.drm_self_refresh_data, ptr %19, i32 0, i32 4, !dbg !6419
  call void @ewma_psr_time_add(ptr noundef %exit_avg_ms52, i64 noundef 200) #15, !dbg !6420
  %20 = load ptr, ptr %sr_data, align 8, !dbg !6421
  %21 = load ptr, ptr %crtc.addr, align 8, !dbg !6422
  %self_refresh_data53 = getelementptr inbounds %struct.drm_crtc, ptr %21, i32 0, i32 31, !dbg !6423
  store ptr %20, ptr %self_refresh_data53, align 8, !dbg !6424
  store i32 0, ptr %retval, align 4, !dbg !6425
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6425

cleanup:                                          ; preds = %do.end50, %if.then28, %if.then25
  call void @llvm.lifetime.end.p0(i64 8, ptr %sr_data) #14, !dbg !6426
  %22 = load i32, ptr %retval, align 4, !dbg !6426
  ret i32 %22, !dbg !6426
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !6427 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6431, metadata !DIExpression()), !dbg !6433
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6432, metadata !DIExpression()), !dbg !6434
  %0 = load i64, ptr %size.addr, align 8, !dbg !6435
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6436
  %or = or i32 %1, 256, !dbg !6437
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !6438
  ret ptr %call, !dbg !6439
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__init_work(ptr noundef %work, i32 noundef %onstack) #4 align 16 !dbg !6440 {
entry:
  %work.addr = alloca ptr, align 8
  %onstack.addr = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !6444, metadata !DIExpression()), !dbg !6446
  store i32 %onstack, ptr %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %onstack.addr, metadata !6445, metadata !DIExpression()), !dbg !6447
  ret void, !dbg !6448
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #4 align 16 !dbg !6449 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6454, metadata !DIExpression()), !dbg !6455
  br label %do.body, !dbg !6456

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6457

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6459

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6457

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6461
  %1 = load ptr, ptr %list.addr, align 8, !dbg !6461
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6461
  store volatile ptr %0, ptr %next, align 8, !dbg !6461
  br label %do.end3, !dbg !6461

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6457

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !6463

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !6464

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6466

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !6464

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !6468
  %3 = load ptr, ptr %list.addr, align 8, !dbg !6468
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !6468
  store volatile ptr %2, ptr %prev, align 8, !dbg !6468
  br label %do.end9, !dbg !6468

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !6464

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !6470
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_self_refresh_helper_entry_work(ptr noundef %work) #0 align 16 !dbg !6471 {
entry:
  %work.addr = alloca ptr, align 8
  %sr_data = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %crtc = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %ctx = alloca %struct.drm_modeset_acquire_ctx, align 8
  %state = alloca ptr, align 8
  %conn = alloca ptr, align 8
  %conn_state = alloca ptr, align 8
  %crtc_state = alloca ptr, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !6473, metadata !DIExpression()), !dbg !6489
  call void @llvm.lifetime.start.p0(i64 8, ptr %sr_data) #14, !dbg !6490
  call void @llvm.dbg.declare(metadata ptr %sr_data, metadata !6474, metadata !DIExpression()), !dbg !6491
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !6492
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6475, metadata !DIExpression()), !dbg !6492
  %0 = load ptr, ptr %work.addr, align 8, !dbg !6492
  %call = call ptr @to_delayed_work(ptr noundef %0) #15, !dbg !6492
  store ptr %call, ptr %__mptr, align 8, !dbg !6492
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6492
  %add.ptr = getelementptr i8, ptr %1, i64 -8, !dbg !6492
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6492
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !6493
  %2 = load ptr, ptr %tmp, align 8, !dbg !6492
  store ptr %2, ptr %sr_data, align 8, !dbg !6491
  call void @llvm.lifetime.start.p0(i64 8, ptr %crtc) #14, !dbg !6494
  call void @llvm.dbg.declare(metadata ptr %crtc, metadata !6477, metadata !DIExpression()), !dbg !6495
  %3 = load ptr, ptr %sr_data, align 8, !dbg !6496
  %crtc1 = getelementptr inbounds %struct.drm_self_refresh_data, ptr %3, i32 0, i32 0, !dbg !6497
  %4 = load ptr, ptr %crtc1, align 8, !dbg !6497
  store ptr %4, ptr %crtc, align 8, !dbg !6495
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #14, !dbg !6498
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6478, metadata !DIExpression()), !dbg !6499
  %5 = load ptr, ptr %crtc, align 8, !dbg !6500
  %dev2 = getelementptr inbounds %struct.drm_crtc, ptr %5, i32 0, i32 0, !dbg !6501
  %6 = load ptr, ptr %dev2, align 8, !dbg !6501
  store ptr %6, ptr %dev, align 8, !dbg !6499
  call void @llvm.lifetime.start.p0(i64 64, ptr %ctx) #14, !dbg !6502
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !6479, metadata !DIExpression()), !dbg !6503
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #14, !dbg !6504
  call void @llvm.dbg.declare(metadata ptr %state, metadata !6480, metadata !DIExpression()), !dbg !6505
  call void @llvm.lifetime.start.p0(i64 8, ptr %conn) #14, !dbg !6506
  call void @llvm.dbg.declare(metadata ptr %conn, metadata !6481, metadata !DIExpression()), !dbg !6507
  call void @llvm.lifetime.start.p0(i64 8, ptr %conn_state) #14, !dbg !6508
  call void @llvm.dbg.declare(metadata ptr %conn_state, metadata !6482, metadata !DIExpression()), !dbg !6509
  call void @llvm.lifetime.start.p0(i64 8, ptr %crtc_state) #14, !dbg !6510
  call void @llvm.dbg.declare(metadata ptr %crtc_state, metadata !6483, metadata !DIExpression()), !dbg !6511
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !6512
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6484, metadata !DIExpression()), !dbg !6513
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !6512
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6485, metadata !DIExpression()), !dbg !6514
  store i32 0, ptr %ret, align 4, !dbg !6514
  call void @drm_modeset_acquire_init(ptr noundef %ctx, i32 noundef 0) #15, !dbg !6515
  %7 = load ptr, ptr %dev, align 8, !dbg !6516
  %call3 = call ptr @drm_atomic_state_alloc(ptr noundef %7) #15, !dbg !6517
  store ptr %call3, ptr %state, align 8, !dbg !6518
  %8 = load ptr, ptr %state, align 8, !dbg !6519
  %tobool = icmp ne ptr %8, null, !dbg !6519
  br i1 %tobool, label %if.end, label %if.then, !dbg !6521

if.then:                                          ; preds = %entry
  store i32 -12, ptr %ret, align 4, !dbg !6522
  br label %out_drop_locks, !dbg !6524

if.end:                                           ; preds = %entry
  br label %retry, !dbg !6519

retry:                                            ; preds = %if.then39, %if.end
  call void @llvm.dbg.label(metadata !6486), !dbg !6525
  %9 = load ptr, ptr %state, align 8, !dbg !6526
  %acquire_ctx = getelementptr inbounds %struct.drm_atomic_state, ptr %9, i32 0, i32 9, !dbg !6527
  store ptr %ctx, ptr %acquire_ctx, align 8, !dbg !6528
  %10 = load ptr, ptr %state, align 8, !dbg !6529
  %11 = load ptr, ptr %crtc, align 8, !dbg !6530
  %call4 = call ptr @drm_atomic_get_crtc_state(ptr noundef %10, ptr noundef %11) #15, !dbg !6531
  store ptr %call4, ptr %crtc_state, align 8, !dbg !6532
  %12 = load ptr, ptr %crtc_state, align 8, !dbg !6533
  %call5 = call zeroext i1 @IS_ERR(ptr noundef %12) #15, !dbg !6535
  br i1 %call5, label %if.then6, label %if.end8, !dbg !6536

if.then6:                                         ; preds = %retry
  %13 = load ptr, ptr %crtc_state, align 8, !dbg !6537
  %call7 = call i64 @PTR_ERR(ptr noundef %13) #15, !dbg !6539
  %conv = trunc i64 %call7 to i32, !dbg !6539
  store i32 %conv, ptr %ret, align 4, !dbg !6540
  br label %out, !dbg !6541

if.end8:                                          ; preds = %retry
  %14 = load ptr, ptr %crtc_state, align 8, !dbg !6542
  %enable = getelementptr inbounds %struct.drm_crtc_state, ptr %14, i32 0, i32 1, !dbg !6544
  %15 = load i8, ptr %enable, align 8, !dbg !6544, !range !6156, !noundef !1121
  %tobool9 = trunc i8 %15 to i1, !dbg !6544
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !6545

if.then10:                                        ; preds = %if.end8
  br label %out, !dbg !6546

if.end11:                                         ; preds = %if.end8
  %16 = load ptr, ptr %state, align 8, !dbg !6547
  %17 = load ptr, ptr %crtc, align 8, !dbg !6548
  %call12 = call i32 @drm_atomic_add_affected_connectors(ptr noundef %16, ptr noundef %17) #15, !dbg !6549
  store i32 %call12, ptr %ret, align 4, !dbg !6550
  %18 = load i32, ptr %ret, align 4, !dbg !6551
  %tobool13 = icmp ne i32 %18, 0, !dbg !6551
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !6553

if.then14:                                        ; preds = %if.end11
  br label %out, !dbg !6554

if.end15:                                         ; preds = %if.end11
  store i32 0, ptr %i, align 4, !dbg !6555
  br label %for.cond, !dbg !6555

for.cond:                                         ; preds = %for.inc, %if.end15
  %19 = load i32, ptr %i, align 4, !dbg !6557
  %20 = load ptr, ptr %state, align 8, !dbg !6557
  %num_connector = getelementptr inbounds %struct.drm_atomic_state, ptr %20, i32 0, i32 5, !dbg !6557
  %21 = load i32, ptr %num_connector, align 8, !dbg !6557
  %cmp = icmp slt i32 %19, %21, !dbg !6557
  br i1 %cmp, label %for.body, label %for.end, !dbg !6555

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %state, align 8, !dbg !6559
  %connectors = getelementptr inbounds %struct.drm_atomic_state, ptr %22, i32 0, i32 6, !dbg !6559
  %23 = load ptr, ptr %connectors, align 8, !dbg !6559
  %24 = load i32, ptr %i, align 4, !dbg !6559
  %idxprom = sext i32 %24 to i64, !dbg !6559
  %arrayidx = getelementptr %struct.__drm_connnectors_state, ptr %23, i64 %idxprom, !dbg !6559
  %ptr = getelementptr inbounds %struct.__drm_connnectors_state, ptr %arrayidx, i32 0, i32 0, !dbg !6559
  %25 = load ptr, ptr %ptr, align 8, !dbg !6559
  %tobool17 = icmp ne ptr %25, null, !dbg !6559
  br i1 %tobool17, label %land.lhs.true, label %if.then25, !dbg !6559

land.lhs.true:                                    ; preds = %for.body
  %26 = load ptr, ptr %state, align 8, !dbg !6559
  %connectors18 = getelementptr inbounds %struct.drm_atomic_state, ptr %26, i32 0, i32 6, !dbg !6559
  %27 = load ptr, ptr %connectors18, align 8, !dbg !6559
  %28 = load i32, ptr %i, align 4, !dbg !6559
  %idxprom19 = sext i32 %28 to i64, !dbg !6559
  %arrayidx20 = getelementptr %struct.__drm_connnectors_state, ptr %27, i64 %idxprom19, !dbg !6559
  %ptr21 = getelementptr inbounds %struct.__drm_connnectors_state, ptr %arrayidx20, i32 0, i32 0, !dbg !6559
  %29 = load ptr, ptr %ptr21, align 8, !dbg !6559
  store ptr %29, ptr %conn, align 8, !dbg !6559
  %30 = load ptr, ptr %conn, align 8, !dbg !6559
  %31 = load ptr, ptr %state, align 8, !dbg !6559
  %connectors22 = getelementptr inbounds %struct.drm_atomic_state, ptr %31, i32 0, i32 6, !dbg !6559
  %32 = load ptr, ptr %connectors22, align 8, !dbg !6559
  %33 = load i32, ptr %i, align 4, !dbg !6559
  %idxprom23 = sext i32 %33 to i64, !dbg !6559
  %arrayidx24 = getelementptr %struct.__drm_connnectors_state, ptr %32, i64 %idxprom23, !dbg !6559
  %new_state = getelementptr inbounds %struct.__drm_connnectors_state, ptr %arrayidx24, i32 0, i32 3, !dbg !6559
  %34 = load ptr, ptr %new_state, align 8, !dbg !6559
  store ptr %34, ptr %conn_state, align 8, !dbg !6559
  %35 = load ptr, ptr %conn_state, align 8, !dbg !6559
  br i1 true, label %if.else, label %if.then25, !dbg !6557

if.then25:                                        ; preds = %land.lhs.true, %for.body
  br label %if.end29, !dbg !6561

if.else:                                          ; preds = %land.lhs.true
  %36 = load ptr, ptr %conn_state, align 8, !dbg !6563
  %self_refresh_aware = getelementptr inbounds %struct.drm_connector_state, ptr %36, i32 0, i32 7, !dbg !6566
  %37 = load i8, ptr %self_refresh_aware, align 8, !dbg !6566, !range !6156, !noundef !1121
  %tobool26 = trunc i8 %37 to i1, !dbg !6566
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !6567

if.then27:                                        ; preds = %if.else
  br label %out, !dbg !6568

if.end28:                                         ; preds = %if.else
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then25
  br label %for.inc, !dbg !6559

for.inc:                                          ; preds = %if.end29
  %38 = load i32, ptr %i, align 4, !dbg !6557
  %inc = add i32 %38, 1, !dbg !6557
  store i32 %inc, ptr %i, align 4, !dbg !6557
  br label %for.cond, !dbg !6557, !llvm.loop !6569

for.end:                                          ; preds = %for.cond
  %39 = load ptr, ptr %crtc_state, align 8, !dbg !6571
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %39, i32 0, i32 2, !dbg !6572
  store i8 0, ptr %active, align 1, !dbg !6573
  %40 = load ptr, ptr %crtc_state, align 8, !dbg !6574
  %self_refresh_active = getelementptr inbounds %struct.drm_crtc_state, ptr %40, i32 0, i32 16, !dbg !6575
  store i8 1, ptr %self_refresh_active, align 2, !dbg !6576
  %41 = load ptr, ptr %state, align 8, !dbg !6577
  %call30 = call i32 @drm_atomic_commit(ptr noundef %41) #15, !dbg !6578
  store i32 %call30, ptr %ret, align 4, !dbg !6579
  %42 = load i32, ptr %ret, align 4, !dbg !6580
  %tobool31 = icmp ne i32 %42, 0, !dbg !6580
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !6582

if.then32:                                        ; preds = %for.end
  br label %out, !dbg !6583

if.end33:                                         ; preds = %for.end
  br label %out, !dbg !6580

out:                                              ; preds = %if.end33, %if.then32, %if.then27, %if.then14, %if.then10, %if.then6
  call void @llvm.dbg.label(metadata !6487), !dbg !6584
  %43 = load i32, ptr %ret, align 4, !dbg !6585
  %cmp34 = icmp eq i32 %43, -35, !dbg !6587
  br i1 %cmp34, label %if.then36, label %if.end41, !dbg !6588

if.then36:                                        ; preds = %out
  %44 = load ptr, ptr %state, align 8, !dbg !6589
  call void @drm_atomic_state_clear(ptr noundef %44) #15, !dbg !6591
  %call37 = call i32 @drm_modeset_backoff(ptr noundef %ctx) #15, !dbg !6592
  store i32 %call37, ptr %ret, align 4, !dbg !6593
  %45 = load i32, ptr %ret, align 4, !dbg !6594
  %tobool38 = icmp ne i32 %45, 0, !dbg !6594
  br i1 %tobool38, label %if.end40, label %if.then39, !dbg !6596

if.then39:                                        ; preds = %if.then36
  br label %retry, !dbg !6597

if.end40:                                         ; preds = %if.then36
  br label %if.end41, !dbg !6598

if.end41:                                         ; preds = %if.end40, %out
  %46 = load ptr, ptr %state, align 8, !dbg !6599
  call void @drm_atomic_state_put(ptr noundef %46) #15, !dbg !6600
  br label %out_drop_locks, !dbg !6600

out_drop_locks:                                   ; preds = %if.end41, %if.then
  call void @llvm.dbg.label(metadata !6488), !dbg !6601
  call void @drm_modeset_drop_locks(ptr noundef %ctx) #15, !dbg !6602
  call void @drm_modeset_acquire_fini(ptr noundef %ctx) #15, !dbg !6603
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !6604
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !6604
  call void @llvm.lifetime.end.p0(i64 8, ptr %crtc_state) #14, !dbg !6604
  call void @llvm.lifetime.end.p0(i64 8, ptr %conn_state) #14, !dbg !6604
  call void @llvm.lifetime.end.p0(i64 8, ptr %conn) #14, !dbg !6604
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #14, !dbg !6604
  call void @llvm.lifetime.end.p0(i64 64, ptr %ctx) #14, !dbg !6604
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #14, !dbg !6604
  call void @llvm.lifetime.end.p0(i64 8, ptr %crtc) #14, !dbg !6604
  call void @llvm.lifetime.end.p0(i64 8, ptr %sr_data) #14, !dbg !6604
  ret void, !dbg !6604
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6605 dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6609 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ewma_psr_time_init(ptr noundef %e) #4 align 16 !dbg !6612 {
entry:
  %e.addr = alloca ptr, align 8
  store ptr %e, ptr %e.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e.addr, metadata !6616, metadata !DIExpression()), !dbg !6617
  br label %do.body, !dbg !6617

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6618

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !6617

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !6620

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !6617

do.body3:                                         ; preds = %do.end2
  br label %do.end4, !dbg !6622

do.end4:                                          ; preds = %do.body3
  br label %do.body5, !dbg !6617

do.body5:                                         ; preds = %do.end4
  br label %do.end6, !dbg !6624

do.end6:                                          ; preds = %do.body5
  %0 = load ptr, ptr %e.addr, align 8, !dbg !6617
  %internal = getelementptr inbounds %struct.ewma_psr_time, ptr %0, i32 0, i32 0, !dbg !6617
  store i64 0, ptr %internal, align 8, !dbg !6617
  ret void, !dbg !6617
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_self_refresh_helper_cleanup(ptr noundef %crtc) #0 align 16 !dbg !6626 {
entry:
  %crtc.addr = alloca ptr, align 8
  %sr_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %crtc, ptr %crtc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %crtc.addr, metadata !6628, metadata !DIExpression()), !dbg !6630
  call void @llvm.lifetime.start.p0(i64 8, ptr %sr_data) #14, !dbg !6631
  call void @llvm.dbg.declare(metadata ptr %sr_data, metadata !6629, metadata !DIExpression()), !dbg !6632
  %0 = load ptr, ptr %crtc.addr, align 8, !dbg !6633
  %self_refresh_data = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 31, !dbg !6634
  %1 = load ptr, ptr %self_refresh_data, align 8, !dbg !6634
  store ptr %1, ptr %sr_data, align 8, !dbg !6632
  %2 = load ptr, ptr %sr_data, align 8, !dbg !6635
  %tobool = icmp ne ptr %2, null, !dbg !6635
  br i1 %tobool, label %if.end, label %if.then, !dbg !6637

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6638

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %crtc.addr, align 8, !dbg !6639
  %self_refresh_data1 = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 31, !dbg !6640
  store ptr null, ptr %self_refresh_data1, align 8, !dbg !6641
  %4 = load ptr, ptr %sr_data, align 8, !dbg !6642
  %entry_work = getelementptr inbounds %struct.drm_self_refresh_data, ptr %4, i32 0, i32 1, !dbg !6643
  %call = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %entry_work) #15, !dbg !6644
  %5 = load ptr, ptr %sr_data, align 8, !dbg !6645
  call void @kfree(ptr noundef %5) #15, !dbg !6646
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6647
  br label %cleanup, !dbg !6647

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sr_data) #14, !dbg !6647
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6647

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6648 dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6651 dso_local void @kfree(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6654 dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @_msecs_to_jiffies(i32 noundef %m) #4 align 16 !dbg !6657 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6659, metadata !DIExpression()), !dbg !6660
  %0 = load i32, ptr %m.addr, align 4, !dbg !6661
  %conv = zext i32 %0 to i64, !dbg !6661
  %add = add i64 %conv, 1, !dbg !6662
  %sub = sub i64 %add, 1, !dbg !6663
  %div = sdiv i64 %sub, 1, !dbg !6664
  ret i64 %div, !dbg !6665
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6666 dso_local i64 @__msecs_to_jiffies(i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !6667 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6669, metadata !DIExpression()), !dbg !6674
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6670, metadata !DIExpression()), !dbg !6675
  %0 = load i64, ptr %size.addr, align 8, !dbg !6676
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6677
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6678

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6679
  %tobool = icmp ne i64 %2, 0, !dbg !6679
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6680

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !6681
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6671, metadata !DIExpression()), !dbg !6682
  %3 = load i64, ptr %size.addr, align 8, !dbg !6683
  %cmp = icmp ugt i64 %3, 8192, !dbg !6685
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6686

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6687
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6688
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !6689
  store ptr %call, ptr %retval, align 8, !dbg !6690
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6690

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6691
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !6691
  store i32 %call2, ptr %index, align 4, !dbg !6692
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6693
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6694
  %9 = ptrtoint ptr %8 to i64, !dbg !6694
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !6695
  %idxprom = zext i32 %call3 to i64, !dbg !6696
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6696
  %10 = load i32, ptr %index, align 4, !dbg !6697
  %idxprom4 = zext i32 %10 to i64, !dbg !6696
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6696
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6696
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6698
  %13 = load i64, ptr %size.addr, align 8, !dbg !6699
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !6700
  store ptr %call6, ptr %retval, align 8, !dbg !6701
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6701

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !6702
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6703
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6704
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !6705
  store ptr %call8, ptr %retval, align 8, !dbg !6706
  br label %return, !dbg !6706

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6707
  ret ptr %16, !dbg !6707
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6708 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !6709 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6713, metadata !DIExpression()), !dbg !6715
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6714, metadata !DIExpression()), !dbg !6716
  %0 = load i64, ptr %size.addr, align 8, !dbg !6717
  %tobool = icmp ne i64 %0, 0, !dbg !6717
  br i1 %tobool, label %if.end, label %if.then, !dbg !6719

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6720
  br label %return, !dbg !6720

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6721
  %cmp = icmp ule i64 %1, 8, !dbg !6723
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6724

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6725
  br label %return, !dbg !6725

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6726
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6728
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6729

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6730
  %cmp4 = icmp ule i64 %3, 96, !dbg !6731
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6732

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6733
  br label %return, !dbg !6733

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6734
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6736
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6737

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6738
  %cmp9 = icmp ule i64 %5, 192, !dbg !6739
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6740

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6741
  br label %return, !dbg !6741

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6742
  %cmp12 = icmp ule i64 %6, 8, !dbg !6744
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6745

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6746
  br label %return, !dbg !6746

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6747
  %cmp15 = icmp ule i64 %7, 16, !dbg !6749
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6750

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6751
  br label %return, !dbg !6751

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6752
  %cmp18 = icmp ule i64 %8, 32, !dbg !6754
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6755

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6756
  br label %return, !dbg !6756

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6757
  %cmp21 = icmp ule i64 %9, 64, !dbg !6759
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6760

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6761
  br label %return, !dbg !6761

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6762
  %cmp24 = icmp ule i64 %10, 128, !dbg !6764
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6765

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6766
  br label %return, !dbg !6766

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6767
  %cmp27 = icmp ule i64 %11, 256, !dbg !6769
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6770

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6771
  br label %return, !dbg !6771

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6772
  %cmp30 = icmp ule i64 %12, 512, !dbg !6774
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6775

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6776
  br label %return, !dbg !6776

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6777
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6779
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6780

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6781
  br label %return, !dbg !6781

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6782
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6784
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6785

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6786
  br label %return, !dbg !6786

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6787
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6789
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6790

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6791
  br label %return, !dbg !6791

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6792
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6794
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6795

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6796
  br label %return, !dbg !6796

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6797
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6799
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6800

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6801
  br label %return, !dbg !6801

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6802
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6804
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6805

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6806
  br label %return, !dbg !6806

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6807
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6809
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6810

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6811
  br label %return, !dbg !6811

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6812
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6814
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6815

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6816
  br label %return, !dbg !6816

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6817
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6819
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6820

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6821
  br label %return, !dbg !6821

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6822
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6824
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6825

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6826
  br label %return, !dbg !6826

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6827
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6829
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6830

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6831
  br label %return, !dbg !6831

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6832
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6834
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6835

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6836
  br label %return, !dbg !6836

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6837, !range !6156, !noundef !1121
  %tobool69 = trunc i8 %25 to i1, !dbg !6837
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6839

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6840

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #18, !dbg !6841, !srcloc !6844
  unreachable, !dbg !6841

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6845

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6846

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6847

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6849

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6847

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #14, !dbg !6851, !srcloc !6853
  br label %do.end75, !dbg !6851

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6847

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6854
  br label %return, !dbg !6854

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6855
  ret i32 %26, !dbg !6855
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6856 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !6859 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6863, metadata !DIExpression()), !dbg !6865
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6864, metadata !DIExpression()), !dbg !6866
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6867
  %and = and i32 %0, 17, !dbg !6867
  %cmp = icmp eq i32 %and, 0, !dbg !6867
  %lnot = xor i1 %cmp, true, !dbg !6867
  %lnot1 = xor i1 %lnot, true, !dbg !6867
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6867
  %conv = sext i32 %lnot.ext to i64, !dbg !6867
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6867
  %tobool = icmp ne i64 %expval, 0, !dbg !6867
  br i1 %tobool, label %if.then, label %if.end, !dbg !6869

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6870
  br label %return, !dbg !6870

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6871
  %and2 = and i32 %1, 1, !dbg !6873
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6873
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6874

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6875
  br label %return, !dbg !6875

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6876
  br label %return, !dbg !6876

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6878
  ret i32 %2, !dbg !6878
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6879 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6880 dso_local void @__compiletime_assert_117() #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_delayed_work(ptr noundef %work) #4 align 16 !dbg !6881 {
entry:
  %work.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !6885, metadata !DIExpression()), !dbg !6888
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !6889
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6886, metadata !DIExpression()), !dbg !6889
  %0 = load ptr, ptr %work.addr, align 8, !dbg !6889
  store ptr %0, ptr %__mptr, align 8, !dbg !6889
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6889
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6889
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6889
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !6890
  %2 = load ptr, ptr %tmp, align 8, !dbg !6889
  ret ptr %2, !dbg !6891
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6892 dso_local void @drm_modeset_acquire_init(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6895 dso_local ptr @drm_atomic_state_alloc(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6896 dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !6899 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6904, metadata !DIExpression()), !dbg !6905
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6906
  %1 = ptrtoint ptr %0 to i64, !dbg !6906
  %2 = inttoptr i64 %1 to ptr, !dbg !6906
  %3 = ptrtoint ptr %2 to i64, !dbg !6906
  %cmp = icmp uge i64 %3, -4095, !dbg !6906
  %lnot = xor i1 %cmp, true, !dbg !6906
  %lnot1 = xor i1 %lnot, true, !dbg !6906
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6906
  %conv = sext i32 %lnot.ext to i64, !dbg !6906
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6906
  %tobool = icmp ne i64 %expval, 0, !dbg !6906
  ret i1 %tobool, !dbg !6907
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #4 align 16 !dbg !6908 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6912, metadata !DIExpression()), !dbg !6913
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6914
  %1 = ptrtoint ptr %0 to i64, !dbg !6915
  ret i64 %1, !dbg !6916
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6917 dso_local i32 @drm_atomic_add_affected_connectors(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6920 dso_local i32 @drm_atomic_commit(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6921 dso_local void @drm_atomic_state_clear(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6922 dso_local i32 @drm_modeset_backoff(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_atomic_state_put(ptr noundef %state) #4 align 16 !dbg !6925 {
entry:
  %state.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6927, metadata !DIExpression()), !dbg !6928
  %0 = load ptr, ptr %state.addr, align 8, !dbg !6929
  %ref = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 0, !dbg !6930
  %call = call i32 @kref_put(ptr noundef %ref, ptr noundef @__drm_atomic_state_free) #15, !dbg !6931
  ret void, !dbg !6932
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6933 dso_local void @drm_modeset_drop_locks(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6936 dso_local void @drm_modeset_acquire_fini(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kref_put(ptr noundef %kref, ptr noundef %release) #4 align 16 !dbg !6937 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca ptr, align 8
  %release.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !6941, metadata !DIExpression()), !dbg !6943
  store ptr %release, ptr %release.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %release.addr, metadata !6942, metadata !DIExpression()), !dbg !6944
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !6945
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !6947
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %refcount) #15, !dbg !6948
  br i1 %call, label %if.then, label %if.end, !dbg !6949

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %release.addr, align 8, !dbg !6950
  %2 = load ptr, ptr %kref.addr, align 8, !dbg !6952
  call void %1(ptr noundef %2) #15, !dbg !6950
  store i32 1, ptr %retval, align 4, !dbg !6953
  br label %return, !dbg !6953

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6954
  br label %return, !dbg !6954

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !6955
  ret i32 %3, !dbg !6955
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_atomic_state_free(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #4 align 16 !dbg !6956 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6961, metadata !DIExpression()), !dbg !6962
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6963
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #15, !dbg !6964
  ret i1 %call, !dbg !6965
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !6966 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6970, metadata !DIExpression()), !dbg !6972
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6971, metadata !DIExpression()), !dbg !6973
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6974
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !6975
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #15, !dbg !6976
  ret i1 %call, !dbg !6977
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !6978 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6982, metadata !DIExpression()), !dbg !6986
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6983, metadata !DIExpression()), !dbg !6987
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6984, metadata !DIExpression()), !dbg !6988
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #14, !dbg !6989
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6985, metadata !DIExpression()), !dbg !6990
  %0 = load i32, ptr %i.addr, align 4, !dbg !6991
  %1 = load ptr, ptr %r.addr, align 8, !dbg !6992
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !6993
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #15, !dbg !6994
  store i32 %call, ptr %old, align 4, !dbg !6990
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !6995
  %tobool = icmp ne ptr %2, null, !dbg !6995
  br i1 %tobool, label %if.then, label %if.end, !dbg !6997

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !6998
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !6999
  store i32 %3, ptr %4, align 4, !dbg !7000
  br label %if.end, !dbg !7001

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !7002
  %6 = load i32, ptr %i.addr, align 4, !dbg !7004
  %cmp = icmp eq i32 %5, %6, !dbg !7005
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !7006

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !7007

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !7009

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !7011

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !7011

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !7009

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !7013

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !7015

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !7015

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !7013, !srcloc !7017
  br label %do.cond7, !dbg !7013

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !7013

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !7009

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !7009

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !7018
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7018

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !7019
  %cmp12 = icmp slt i32 %7, 0, !dbg !7019
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !7019

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !7019
  %9 = load i32, ptr %i.addr, align 4, !dbg !7019
  %sub = sub i32 %8, %9, !dbg !7019
  %cmp13 = icmp slt i32 %sub, 0, !dbg !7019
  br label %lor.end, !dbg !7019

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !7019
  %lnot14 = xor i1 %lnot, true, !dbg !7019
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !7019
  %conv = sext i32 %lnot.ext to i64, !dbg !7019
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7019
  %tobool15 = icmp ne i64 %expval, 0, !dbg !7019
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !7021

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !7022
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #15, !dbg !7023
  br label %if.end17, !dbg !7023

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !7024
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7024

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #14, !dbg !7025
  %12 = load i1, ptr %retval, align 1, !dbg !7025
  ret i1 %12, !dbg !7025
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !7026 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7032, metadata !DIExpression()), !dbg !7034
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7033, metadata !DIExpression()), !dbg !7035
  br label %do.body, !dbg !7036

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7037

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7039
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #15, !dbg !7040
  %1 = load i32, ptr %i.addr, align 4, !dbg !7041
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7042
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #15, !dbg !7043
  ret i32 %call, !dbg !7044
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7045 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !7048 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7056, metadata !DIExpression()), !dbg !7058
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7057, metadata !DIExpression()), !dbg !7059
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7060
  %1 = load i64, ptr %size.addr, align 8, !dbg !7061
  %conv = trunc i64 %1 to i32, !dbg !7061
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #15, !dbg !7062
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7063
  %3 = load i64, ptr %size.addr, align 8, !dbg !7063
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #15, !dbg !7063
  ret void, !dbg !7064
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !7065 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7068, metadata !DIExpression()), !dbg !7070
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7069, metadata !DIExpression()), !dbg !7071
  %0 = load i32, ptr %i.addr, align 4, !dbg !7072
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7073
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #15, !dbg !7074
  ret i32 %call, !dbg !7075
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !7076 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7081, metadata !DIExpression()), !dbg !7083
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7082, metadata !DIExpression()), !dbg !7084
  ret i1 true, !dbg !7085
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !7086 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7091, metadata !DIExpression()), !dbg !7094
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7092, metadata !DIExpression()), !dbg !7095
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7093, metadata !DIExpression()), !dbg !7096
  ret void, !dbg !7097
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !7098 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7101, metadata !DIExpression()), !dbg !7105
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7102, metadata !DIExpression()), !dbg !7106
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #14, !dbg !7107
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !7103, metadata !DIExpression()), !dbg !7107
  %0 = load i32, ptr %i.addr, align 4, !dbg !7107
  %sub = sub i32 0, %0, !dbg !7107
  store i32 %sub, ptr %__ret, align 4, !dbg !7107
  %1 = load i32, ptr %__ret, align 4, !dbg !7107
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7107
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !7107
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #14, !dbg !7107, !srcloc !7108
  store i32 %3, ptr %__ret, align 4, !dbg !7107
  %4 = load i32, ptr %__ret, align 4, !dbg !7107
  store i32 %4, ptr %tmp, align 4, !dbg !7107
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #14, !dbg !7109
  %5 = load i32, ptr %tmp, align 4, !dbg !7107
  ret i32 %5, !dbg !7110
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!6101, !6102, !6103, !6104, !6105, !6106, !6107, !6108}
!llvm.ident = !{!6109}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_self_refresh_helper_update_avg_times322", scope: !2, file: !3, line: 172, type: !365, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/.drm_self_refresh_helper.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/drm_kms_helper\22 -D KBUILD_BASENAME=\22drm_self_refresh_helper\22 -D KBUILD_MODNAME=\22drm_kms_helper\22 -D __KBUILD_MODNAME=kmod_drm_kms_helper -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/drm_self_refresh_helper.ll drivers/gpu/drm/drm_self_refresh_helper.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !364, globals: !6067, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/drm_self_refresh_helper.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2a3a3ee4144dd9d0f35bf7dda65669b")
!4 = !{!5, !13, !18, !23, !29, !37, !53, !60, !68, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141, !184, !193, !200, !206, !211, !219, !224, !228, !244, !264, !270, !276, !283, !293, !298, !305, !310, !315, !320, !346, !356}
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
!364 = !{!365, !366, !368, !369, !372, !109, !373, !374, !381, !6066}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !367, line: 154, baseType: !7)
!367 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!368 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !368)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!373 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !367, line: 190, size: 128, elements: !378)
!378 = !{!379, !380}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !377, file: !367, line: 191, baseType: !376, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !377, file: !367, line: 191, baseType: !376, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_self_refresh_data", file: !3, line: 58, size: 1152, elements: !383)
!383 = !{!384, !6059, !6060, !6061, !6065}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !382, file: !3, line: 59, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc", file: !387, line: 932, size: 8064, elements: !388)
!387 = !DIFile(filename: "./include/drm/drm_crtc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99ea98da3699d3be12a3062031f96ca9")
!388 = !{!389, !5853, !5854, !5855, !5856, !5857, !5858, !5859, !5860, !5861, !5862, !5863, !5864, !5865, !5866, !5867, !5868, !5975, !5976, !5978, !6026, !6027, !6028, !6029, !6030, !6031, !6032, !6054, !6055, !6056, !6057, !6058}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !386, file: !387, line: 934, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !194, line: 50, size: 12736, elements: !392)
!392 = !{!393, !394, !407, !4751, !4757, !4762, !4763, !4766, !4767, !4768, !4769, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !5839, !5840, !5841, !5844, !5847, !5848, !5851, !5852}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "if_version", scope: !391, file: !194, line: 52, baseType: !109, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !391, file: !194, line: 55, baseType: !395, size: 32, offset: 32)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !396, line: 19, size: 32, elements: !397)
!396 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!397 = !{!398}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !395, file: !396, line: 20, baseType: !399, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !357, line: 113, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !357, line: 111, size: 32, elements: !401)
!401 = !{!402}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !400, file: !357, line: 112, baseType: !403, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !367, line: 174, baseType: !404)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !367, line: 172, size: 32, elements: !405)
!405 = !{!406}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !404, file: !367, line: 173, baseType: !109, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !391, file: !194, line: 58, baseType: !408, size: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !410)
!410 = !{!411, !4406, !4407, !4410, !4411, !4464, !4534, !4535, !4536, !4537, !4538, !4545, !4637, !4650, !4660, !4664, !4666, !4667, !4668, !4672, !4679, !4680, !4683, !4686, !4690, !4693, !4694, !4695, !4696, !4697, !4698, !4728, !4729, !4730, !4733, !4736, !4745, !4746, !4747, !4748, !4749, !4750}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !409, file: !94, line: 706, baseType: !412, size: 512)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !413, line: 64, size: 512, elements: !414)
!413 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!414 = !{!415, !419, !420, !422, !507, !4309, !4400, !4401, !4402, !4403, !4404, !4405}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !412, file: !413, line: 65, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!418 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !412, file: !413, line: 66, baseType: !377, size: 128, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !412, file: !413, line: 67, baseType: !421, size: 64, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !412, file: !413, line: 68, baseType: !423, size: 64, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !413, line: 168, size: 768, elements: !425)
!425 = !{!426, !427, !466, !467}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !424, file: !413, line: 169, baseType: !377, size: 128)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !424, file: !413, line: 170, baseType: !428, size: 32, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !429, line: 29, baseType: !430)
!429 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !429, line: 17, size: 32, elements: !431)
!431 = !{!432}
!432 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !429, line: 18, baseType: !433, size: 32)
!433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !429, line: 18, size: 32, elements: !434)
!434 = !{!435}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !433, file: !429, line: 19, baseType: !436, size: 32)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !437, line: 14, size: 32, elements: !438)
!437 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!438 = !{!439}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !436, file: !437, line: 15, baseType: !440, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !441, line: 44, baseType: !442)
!441 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !441, line: 14, size: 32, elements: !443)
!443 = !{!444}
!444 = !DIDerivedType(tag: DW_TAG_member, scope: !442, file: !441, line: 15, baseType: !445, size: 32)
!445 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !442, file: !441, line: 15, size: 32, elements: !446)
!446 = !{!447, !448, !458}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !445, file: !441, line: 16, baseType: !403, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, scope: !445, file: !441, line: 24, baseType: !449, size: 16)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !445, file: !441, line: 24, size: 16, elements: !450)
!450 = !{!451, !457}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !449, file: !441, line: 25, baseType: !452, size: 8)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !453, line: 17, baseType: !454)
!453 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !455, line: 21, baseType: !456)
!455 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!456 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !449, file: !441, line: 26, baseType: !452, size: 8, offset: 8)
!458 = !DIDerivedType(tag: DW_TAG_member, scope: !445, file: !441, line: 28, baseType: !459, size: 32)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !445, file: !441, line: 28, size: 32, elements: !460)
!460 = !{!461, !465}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !459, file: !441, line: 29, baseType: !462, size: 16)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !453, line: 19, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !455, line: 24, baseType: !464)
!464 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !459, file: !441, line: 30, baseType: !462, size: 16, offset: 16)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !424, file: !413, line: 171, baseType: !412, size: 512, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !424, file: !413, line: 172, baseType: !468, size: 64, offset: 704)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !470)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !413, line: 133, size: 192, elements: !471)
!471 = !{!472, !479, !484}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !470, file: !413, line: 134, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !474)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!109, !477}
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !470, file: !413, line: 135, baseType: !480, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !481)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!416, !477}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !470, file: !413, line: 136, baseType: !485, size: 64, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!109, !477, !489}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !413, line: 125, size: 20736, elements: !491)
!491 = !{!492, !497, !501, !502, !506}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !490, file: !413, line: 126, baseType: !493, size: 192)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 192, elements: !495)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!495 = !{!496}
!496 = !DISubrange(count: 3)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !490, file: !413, line: 127, baseType: !498, size: 4096, offset: 192)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 4096, elements: !499)
!499 = !{!500}
!500 = !DISubrange(count: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !490, file: !413, line: 128, baseType: !109, size: 32, offset: 4288)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !490, file: !413, line: 129, baseType: !503, size: 16384, offset: 4320)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 16384, elements: !504)
!504 = !{!505}
!505 = !DISubrange(count: 2048)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !490, file: !413, line: 130, baseType: !109, size: 32, offset: 20704)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !412, file: !413, line: 69, baseType: !508, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !510)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !413, line: 116, size: 384, elements: !511)
!511 = !{!512, !516, !543, !4271, !4299, !4303}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !510, file: !413, line: 117, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !421}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !510, file: !413, line: 118, baseType: !517, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !519)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !520, line: 254, size: 128, elements: !521)
!520 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!521 = !{!522, !536}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !519, file: !520, line: 255, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!526, !421, !530, !494}
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !367, line: 66, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !528, line: 73, baseType: !529)
!528 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !528, line: 15, baseType: !373)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !520, line: 30, size: 128, elements: !532)
!532 = !{!533, !534}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !531, file: !520, line: 31, baseType: !416, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !531, file: !520, line: 32, baseType: !535, size: 16, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !367, line: 24, baseType: !464)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !519, file: !520, line: 256, baseType: !537, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!526, !421, !530, !416, !540}
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !367, line: 61, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !528, line: 72, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !528, line: 16, baseType: !368)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !510, file: !413, line: 119, baseType: !544, size: 64, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !547)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !520, line: 84, size: 320, elements: !548)
!548 = !{!549, !550, !554, !4267, !4269}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !547, file: !520, line: 85, baseType: !416, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !547, file: !520, line: 86, baseType: !551, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!535, !421, !530, !109}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !547, file: !520, line: 88, baseType: !555, size: 64, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!535, !421, !558, !109}
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !520, line: 175, size: 512, elements: !560)
!560 = !{!561, !562, !563, !564, !4258, !4262, !4263}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !559, file: !520, line: 176, baseType: !531, size: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !559, file: !520, line: 177, baseType: !540, size: 64, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !559, file: !520, line: 178, baseType: !365, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !559, file: !520, line: 179, baseType: !565, size: 64, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!568}
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !570)
!570 = !{!571, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4252, !4253, !4254, !4255, !4256, !4257}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !569, file: !14, line: 473, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !574)
!574 = !{!575, !576, !577, !585, !586, !593, !594, !597, !598, !4030, !4031, !4032, !4033, !4034, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4074, !4077, !4078, !4079, !4088, !4089, !4090, !4091}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !573, file: !14, line: 642, baseType: !535, size: 16)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !573, file: !14, line: 643, baseType: !464, size: 16, offset: 16)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !573, file: !14, line: 644, baseType: !578, size: 32, offset: 32)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !579, line: 23, baseType: !580)
!579 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !579, line: 21, size: 32, elements: !581)
!581 = !{!582}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !580, file: !579, line: 22, baseType: !583, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !367, line: 37, baseType: !584)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !528, line: 49, baseType: !7)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !573, file: !14, line: 645, baseType: !377, size: 128, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !573, file: !14, line: 646, baseType: !587, size: 32, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !579, line: 28, baseType: !588)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !579, line: 26, size: 32, elements: !589)
!589 = !{!590}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !588, file: !579, line: 27, baseType: !591, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !367, line: 38, baseType: !592)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !528, line: 50, baseType: !7)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !573, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !573, file: !14, line: 650, baseType: !595, size: 64, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !573, file: !14, line: 651, baseType: !595, size: 64, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !573, file: !14, line: 654, baseType: !599, size: 64, offset: 384)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !601)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !602)
!602 = !{!603, !3864, !3874, !3878, !3882, !3886, !3890, !3894, !3898, !3902, !3906, !3907, !3911, !3915, !3952, !3981, !3985, !3991, !3995, !3999, !4003, !4007, !4011, !4017, !4021}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !601, file: !14, line: 1967, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!607, !572, !607, !7}
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !609, line: 82, size: 1536, elements: !610)
!609 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!610 = !{!611, !612, !622, !630, !631, !651, !652, !656, !669, !3847, !3848, !3849, !3850, !3856, !3857, !3858}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !608, file: !609, line: 84, baseType: !7, size: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !608, file: !609, line: 85, baseType: !613, size: 32, offset: 32)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !614, line: 275, baseType: !615)
!614 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !614, line: 275, size: 32, elements: !616)
!616 = !{!617}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !615, file: !614, line: 275, baseType: !618, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !614, line: 69, baseType: !619)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !614, line: 64, size: 32, elements: !620)
!620 = !{!621}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !619, file: !614, line: 65, baseType: !7, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !608, file: !609, line: 86, baseType: !623, size: 128, offset: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !624, line: 38, size: 128, elements: !625)
!624 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!625 = !{!626, !628}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !623, file: !624, line: 39, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !623, file: !624, line: 39, baseType: !629, size: 64, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !608, file: !609, line: 87, baseType: !607, size: 64, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !608, file: !609, line: 88, baseType: !632, size: 128, offset: 256)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !609, line: 49, size: 128, elements: !633)
!633 = !{!634, !648}
!634 = !DIDerivedType(tag: DW_TAG_member, scope: !632, file: !609, line: 50, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !632, file: !609, line: 50, size: 64, elements: !636)
!636 = !{!637, !644}
!637 = !DIDerivedType(tag: DW_TAG_member, scope: !635, file: !609, line: 51, baseType: !638, size: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !635, file: !609, line: 51, size: 64, elements: !639)
!639 = !{!640, !643}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !638, file: !609, line: 52, baseType: !641, size: 32)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !453, line: 21, baseType: !642)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !455, line: 27, baseType: !7)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !638, file: !609, line: 52, baseType: !641, size: 32, offset: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !635, file: !609, line: 54, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !453, line: 23, baseType: !646)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !455, line: 31, baseType: !647)
!647 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !632, file: !609, line: 56, baseType: !649, size: 64, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !456)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !608, file: !609, line: 89, baseType: !572, size: 64, offset: 384)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !608, file: !609, line: 91, baseType: !653, size: 256, offset: 448)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 256, elements: !654)
!654 = !{!655}
!655 = !DISubrange(count: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !608, file: !609, line: 94, baseType: !657, size: 64, offset: 704)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !658, line: 25, size: 64, elements: !659)
!658 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!659 = !{!660}
!660 = !DIDerivedType(tag: DW_TAG_member, scope: !657, file: !658, line: 26, baseType: !661, size: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !657, file: !658, line: 26, size: 64, elements: !662)
!662 = !{!663, !664}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !661, file: !658, line: 28, baseType: !646, size: 64, align: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, scope: !661, file: !658, line: 30, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !661, file: !658, line: 30, size: 64, elements: !666)
!666 = !{!667, !668}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !665, file: !658, line: 31, baseType: !428, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !665, file: !658, line: 32, baseType: !109, size: 32, offset: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !608, file: !609, line: 95, baseType: !670, size: 64, offset: 768)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !672)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !609, line: 128, size: 1024, align: 512, elements: !673)
!673 = !{!674, !678, !679, !686, !692, !696, !700, !704, !705, !709, !713, !3837, !3841}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !672, file: !609, line: 129, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{!109, !607, !7}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !672, file: !609, line: 130, baseType: !675, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !672, file: !609, line: 131, baseType: !680, size: 64, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!109, !683, !685}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !608)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !672, file: !609, line: 132, baseType: !687, size: 64, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!109, !683, !7, !416, !690}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !672, file: !609, line: 134, baseType: !693, size: 64, offset: 256)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{!109, !683}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !672, file: !609, line: 135, baseType: !697, size: 64, offset: 320)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!109, !607}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !672, file: !609, line: 136, baseType: !701, size: 64, offset: 384)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{null, !607}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !672, file: !609, line: 137, baseType: !701, size: 64, offset: 448)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !672, file: !609, line: 138, baseType: !706, size: 64, offset: 512)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{null, !607, !572}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !672, file: !609, line: 139, baseType: !710, size: 64, offset: 576)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!494, !607, !494, !109}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !672, file: !609, line: 140, baseType: !714, size: 64, offset: 640)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!717, !3836}
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !719, line: 70, size: 256, elements: !720)
!719 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!720 = !{!721, !722, !3832, !3833}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !718, file: !719, line: 71, baseType: !607, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !718, file: !719, line: 72, baseType: !723, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !725)
!725 = !{!726, !727, !730, !731, !732, !736, !1215, !3537, !3577, !3662, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3679, !3683, !3684, !3687, !3690, !3693, !3696, !3697, !3698, !3739, !3765, !3766, !3767, !3768, !3769, !3770, !3773, !3775, !3782, !3783, !3784, !3785, !3786, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !724, file: !14, line: 1191, baseType: !377, size: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !724, file: !14, line: 1192, baseType: !728, size: 32, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !367, line: 21, baseType: !729)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !367, line: 18, baseType: !641)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !724, file: !14, line: 1193, baseType: !456, size: 8, offset: 160)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !724, file: !14, line: 1194, baseType: !368, size: 64, offset: 192)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !724, file: !14, line: 1195, baseType: !733, size: 64, offset: 256)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !367, line: 52, baseType: !734)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !528, line: 88, baseType: !735)
!735 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !724, file: !14, line: 1196, baseType: !737, size: 64, offset: 320)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !739)
!739 = !{!740, !741, !742, !749, !753, !757, !761, !1200, !1201, !1205, !1207, !1208, !1209, !1211, !1212, !1213, !1214}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !738, file: !14, line: 2367, baseType: !416, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !738, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !738, file: !14, line: 2376, baseType: !743, size: 64, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!109, !746}
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !748, line: 32, flags: DIFlagFwdDecl)
!748 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!749 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !738, file: !14, line: 2377, baseType: !750, size: 64, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !752)
!752 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !738, file: !14, line: 2378, baseType: !754, size: 64, offset: 256)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!607, !737, !109, !416, !365}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !738, file: !14, line: 2380, baseType: !758, size: 64, offset: 320)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{null, !723}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !738, file: !14, line: 2381, baseType: !762, size: 64, offset: 384)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !764)
!764 = !{!765, !766, !767, !771, !793, !819, !820, !821, !822, !826, !831, !832, !852, !908, !909, !910, !911, !912, !915, !916, !917, !925, !929, !956, !977, !978, !979, !980, !989, !1012, !1013, !1016, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1030, !1031, !1158, !1166, !1167, !1168, !1170, !1174, !1175, !1179, !1180, !1181, !1182, !1184, !1185, !1186, !1193, !1194, !1195, !1199}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !763, file: !6, line: 403, baseType: !5, size: 32)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !763, file: !6, line: 406, baseType: !377, size: 128, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !763, file: !6, line: 409, baseType: !768, size: 448, offset: 192)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 448, elements: !769)
!769 = !{!770}
!770 = !DISubrange(count: 56)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !763, file: !6, line: 417, baseType: !772, size: 768, offset: 640)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !773)
!773 = !{!774, !775, !776, !777, !780}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !772, file: !6, line: 46, baseType: !412, size: 512)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !772, file: !6, line: 47, baseType: !762, size: 64, offset: 512)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !772, file: !6, line: 48, baseType: !421, size: 64, offset: 576)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !772, file: !6, line: 49, baseType: !778, size: 64, offset: 640)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !772, file: !6, line: 50, baseType: !781, size: 64, offset: 704)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !783, line: 26, size: 256, elements: !784)
!783 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!784 = !{!785, !786}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !782, file: !783, line: 27, baseType: !7, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !782, file: !783, line: 28, baseType: !787, size: 192, offset: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !788, line: 43, size: 192, elements: !789)
!788 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!789 = !{!790, !792}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !787, file: !788, line: 44, baseType: !791, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !437, line: 23, baseType: !436)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !787, file: !788, line: 45, baseType: !377, size: 128, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !763, file: !6, line: 418, baseType: !794, size: 64, offset: 1408)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !796)
!796 = !{!797, !798, !803, !807, !811, !815}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !795, file: !6, line: 54, baseType: !531, size: 128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !795, file: !6, line: 55, baseType: !799, size: 64, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{!526, !794, !802, !494}
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !795, file: !6, line: 57, baseType: !804, size: 64, offset: 192)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!526, !794, !802, !416, !540}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !795, file: !6, line: 59, baseType: !808, size: 64, offset: 256)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{null, !762, !416}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !795, file: !6, line: 60, baseType: !812, size: 64, offset: 320)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!109, !762}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !795, file: !6, line: 61, baseType: !816, size: 64, offset: 384)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{null, !762}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !763, file: !6, line: 419, baseType: !416, size: 64, offset: 1472)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !763, file: !6, line: 420, baseType: !416, size: 64, offset: 1536)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !763, file: !6, line: 421, baseType: !421, size: 64, offset: 1600)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !763, file: !6, line: 424, baseType: !823, size: 64, offset: 1664)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !825)
!825 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !763, file: !6, line: 425, baseType: !827, size: 64, offset: 1728)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !829)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !453, line: 20, baseType: !830)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !455, line: 26, baseType: !109)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !763, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !763, file: !6, line: 435, baseType: !833, size: 256, offset: 1856)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !834, line: 66, size: 256, elements: !835)
!834 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!835 = !{!836, !845, !846, !851}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !833, file: !834, line: 67, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !838, line: 13, baseType: !839)
!838 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !367, line: 181, baseType: !840)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !367, line: 179, size: 64, elements: !841)
!841 = !{!842}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !840, file: !367, line: 180, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !453, line: 22, baseType: !844)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !455, line: 30, baseType: !735)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !833, file: !834, line: 68, baseType: !791, size: 32, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !833, file: !834, line: 70, baseType: !847, size: 32, offset: 96)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !848, line: 15, size: 32, elements: !849)
!848 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!849 = !{!850}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !847, file: !848, line: 20, baseType: !403, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !833, file: !834, line: 72, baseType: !377, size: 128, offset: 128)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !763, file: !6, line: 437, baseType: !853, size: 64, offset: 2112)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !855, line: 69, size: 320, elements: !856)
!855 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!856 = !{!857, !858, !859, !879, !881, !885, !886}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !854, file: !855, line: 70, baseType: !416, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !854, file: !855, line: 71, baseType: !762, size: 64, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !854, file: !855, line: 72, baseType: !860, size: 64, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !862)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !855, line: 47, size: 256, elements: !863)
!863 = !{!864, !865, !871, !875}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !862, file: !855, line: 49, baseType: !7, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !862, file: !855, line: 51, baseType: !866, size: 64, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!109, !416, !869}
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !854)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !862, file: !855, line: 53, baseType: !872, size: 64, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{!109, !494, !869}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !862, file: !855, line: 55, baseType: !876, size: 64, offset: 192)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{null, !365}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !854, file: !855, line: 73, baseType: !880, size: 16, offset: 192)
!880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !462)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !854, file: !855, line: 74, baseType: !882, size: 8, offset: 208)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !453, line: 16, baseType: !883)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !455, line: 20, baseType: !884)
!884 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !854, file: !855, line: 75, baseType: !452, size: 8, offset: 216)
!886 = !DIDerivedType(tag: DW_TAG_member, scope: !854, file: !855, line: 76, baseType: !887, size: 64, offset: 256)
!887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !854, file: !855, line: 76, size: 64, elements: !888)
!888 = !{!889, !890, !897}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !887, file: !855, line: 77, baseType: !365, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !887, file: !855, line: 78, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !893)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !855, line: 86, size: 128, elements: !894)
!894 = !{!895, !896}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !893, file: !855, line: 87, baseType: !7, size: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !893, file: !855, line: 88, baseType: !494, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !887, file: !855, line: 79, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !900)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !855, line: 92, size: 256, elements: !901)
!901 = !{!902, !903, !904, !906, !907}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !900, file: !855, line: 94, baseType: !7, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !900, file: !855, line: 95, baseType: !7, size: 32, offset: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !900, file: !855, line: 96, baseType: !905, size: 64, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !900, file: !855, line: 97, baseType: !860, size: 64, offset: 128)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !900, file: !855, line: 98, baseType: !365, size: 64, offset: 192)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !763, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !763, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !763, file: !6, line: 442, baseType: !823, size: 64, offset: 2240)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !763, file: !6, line: 443, baseType: !827, size: 64, offset: 2304)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !763, file: !6, line: 444, baseType: !913, size: 8, offset: 2368)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !367, line: 35, baseType: !914)
!914 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !763, file: !6, line: 451, baseType: !913, size: 8, offset: 2376)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !763, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !763, file: !6, line: 455, baseType: !918, size: 64, offset: 2432)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !920, line: 23, size: 96, elements: !921)
!920 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!921 = !{!922, !923, !924}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !919, file: !920, line: 24, baseType: !109, size: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !919, file: !920, line: 24, baseType: !109, size: 32, offset: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !919, file: !920, line: 24, baseType: !109, size: 32, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !763, file: !6, line: 458, baseType: !926, size: 64, offset: 2496)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{!109}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !763, file: !6, line: 460, baseType: !930, size: 4032, align: 512, offset: 2560)
!930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !931, size: 4032, elements: !954)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !932)
!932 = !{!933, !934, !935}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !931, file: !6, line: 363, baseType: !365, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !931, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !931, file: !6, line: 367, baseType: !936, size: 448, offset: 128)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !937)
!937 = !{!938, !939}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !936, file: !6, line: 320, baseType: !762, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !936, file: !6, line: 321, baseType: !940, size: 384, offset: 64)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !941, line: 40, size: 384, elements: !942)
!941 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!942 = !{!943}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !940, file: !941, line: 41, baseType: !944, size: 384, align: 64)
!944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !945, size: 384, align: 64, elements: !952)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !946, line: 5, size: 192, align: 64, elements: !947)
!946 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!947 = !{!948, !949, !951}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !945, file: !946, line: 6, baseType: !368, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !945, file: !946, line: 7, baseType: !950, size: 64, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !945, file: !946, line: 8, baseType: !950, size: 64, offset: 128)
!952 = !{!953}
!953 = !DISubrange(count: 2)
!954 = !{!955}
!955 = !DISubrange(count: 7)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !763, file: !6, line: 463, baseType: !957, size: 192, offset: 6592)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !958, line: 8, size: 192, elements: !959)
!958 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!959 = !{!960, !961, !963}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !957, file: !958, line: 10, baseType: !7, size: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !957, file: !958, line: 11, baseType: !962, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !957, file: !958, line: 12, baseType: !964, size: 64, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !966, line: 59, size: 48, elements: !967)
!966 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!967 = !{!968, !972, !973, !974, !975, !976}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !965, file: !966, line: 60, baseType: !969, size: 16)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !453, line: 18, baseType: !970)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !455, line: 23, baseType: !971)
!971 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !965, file: !966, line: 61, baseType: !969, size: 16, offset: 16)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !965, file: !966, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !965, file: !966, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !965, file: !966, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !965, file: !966, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !763, file: !6, line: 465, baseType: !368, size: 64, offset: 6784)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !763, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !763, file: !6, line: 470, baseType: !377, size: 128, offset: 6912)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !763, file: !6, line: 471, baseType: !981, size: 64, offset: 7040)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !983, line: 33, size: 96, elements: !984)
!983 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!984 = !{!985, !986, !987, !988}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !982, file: !983, line: 37, baseType: !109, size: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !982, file: !983, line: 43, baseType: !109, size: 32, offset: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !982, file: !983, line: 45, baseType: !464, size: 16, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !982, file: !983, line: 47, baseType: !464, size: 16, offset: 80)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !763, file: !6, line: 476, baseType: !990, size: 64, offset: 7104)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !992)
!992 = !{!993, !1009, !1010, !1011}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !991, file: !6, line: 379, baseType: !994, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !996, line: 204, baseType: !997)
!996 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !996, line: 197, size: 192, elements: !998)
!998 = !{!999, !1001, !1002, !1003, !1005, !1007}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !997, file: !996, line: 198, baseType: !1000, size: 32)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !996, line: 21, baseType: !642)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !997, file: !996, line: 199, baseType: !456, size: 8, offset: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !997, file: !996, line: 200, baseType: !456, size: 8, offset: 40)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !997, file: !996, line: 201, baseType: !1004, size: 16, offset: 48)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !996, line: 17, baseType: !463)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !997, file: !996, line: 202, baseType: !1006, size: 64, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !996, line: 16, baseType: !646)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !997, file: !996, line: 203, baseType: !1008, size: 64, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !996, line: 22, baseType: !646)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !991, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !991, file: !6, line: 381, baseType: !494, size: 64, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !991, file: !6, line: 382, baseType: !494, size: 64, offset: 192)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !763, file: !6, line: 477, baseType: !991, size: 256, offset: 7168)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !763, file: !6, line: 480, baseType: !1014, size: 64, offset: 7424)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !763, file: !6, line: 483, baseType: !1017, size: 64, offset: 7488)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !763, file: !6, line: 488, baseType: !494, size: 64, offset: 7552)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !763, file: !6, line: 492, baseType: !365, size: 64, offset: 7616)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !763, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !763, file: !6, line: 495, baseType: !365, size: 64, offset: 7744)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !763, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !763, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !763, file: !6, line: 500, baseType: !1026, size: 64, offset: 7872)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1028, line: 45, baseType: !1029)
!1028 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !763, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !763, file: !6, line: 504, baseType: !1032, size: 64, offset: 8000)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1035, line: 96, size: 192, elements: !1036)
!1035 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1036 = !{!1037, !1038, !1118, !1122}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1034, file: !1035, line: 97, baseType: !7, size: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1034, file: !1035, line: 98, baseType: !1039, size: 64, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1035, line: 24, size: 3072, elements: !1041)
!1041 = !{!1042, !1044, !1045, !1046, !1047, !1071, !1072, !1073, !1074, !1092, !1103, !1104, !1115, !1116, !1117}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1040, file: !1035, line: 26, baseType: !1043, size: 128)
!1043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !837, size: 128, elements: !952)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1040, file: !1035, line: 27, baseType: !1043, size: 128, offset: 128)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1040, file: !1035, line: 28, baseType: !109, size: 32, offset: 256)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1040, file: !1035, line: 31, baseType: !428, size: 32, align: 512, offset: 512)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1040, file: !1035, line: 32, baseType: !1048, size: 960, offset: 576)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1049, line: 206, size: 960, elements: !1050)
!1049 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1050 = !{!1051, !1060, !1065, !1067, !1068, !1070}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1048, file: !1049, line: 207, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !367, line: 232, size: 128, align: 64, elements: !1054)
!1054 = !{!1055, !1056}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1053, file: !367, line: 233, baseType: !1052, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1053, file: !367, line: 234, baseType: !1057, size: 64, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{null, !1052}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1048, file: !1049, line: 208, baseType: !1061, size: 256, offset: 64)
!1061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1062, size: 256, elements: !1063)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1063 = !{!1064}
!1064 = !DISubrange(count: 4)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1048, file: !1049, line: 209, baseType: !1066, size: 256, offset: 320)
!1066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 256, elements: !1063)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1048, file: !1049, line: 213, baseType: !373, size: 64, offset: 576)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1048, file: !1049, line: 215, baseType: !1069, size: 256, offset: 640)
!1069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 256, elements: !1063)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1048, file: !1049, line: 216, baseType: !452, size: 8, offset: 896)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1040, file: !1035, line: 33, baseType: !368, size: 64, offset: 1536)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1040, file: !1035, line: 34, baseType: !368, size: 64, offset: 1600)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1040, file: !1035, line: 35, baseType: !913, size: 8, offset: 1664)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1040, file: !1035, line: 36, baseType: !1075, size: 320, offset: 1728)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1076, line: 11, size: 320, elements: !1077)
!1076 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1077 = !{!1078, !1085, !1086, !1091}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1075, file: !1076, line: 16, baseType: !1079, size: 128)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !367, line: 198, size: 128, elements: !1080)
!1080 = !{!1081, !1083}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1079, file: !367, line: 199, baseType: !1082, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1079, file: !367, line: 199, baseType: !1084, size: 64, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1075, file: !1076, line: 17, baseType: !368, size: 64, offset: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1075, file: !1076, line: 18, baseType: !1087, size: 64, offset: 192)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{null, !1090}
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1075, file: !1076, line: 19, baseType: !641, size: 32, offset: 256)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1040, file: !1035, line: 37, baseType: !1093, size: 256, offset: 2048)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !321, line: 98, size: 256, elements: !1094)
!1094 = !{!1095, !1096, !1097}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1093, file: !321, line: 99, baseType: !837, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1093, file: !321, line: 100, baseType: !377, size: 128, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1093, file: !321, line: 101, baseType: !1098, size: 64, offset: 192)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !321, line: 21, baseType: !1099)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{null, !1102}
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1040, file: !1035, line: 38, baseType: !1053, size: 128, align: 64, offset: 2304)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1040, file: !1035, line: 39, baseType: !1105, size: 64, offset: 2432)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1035, line: 49, size: 768, elements: !1107)
!1107 = !{!1108, !1109, !1110, !1111, !1112, !1113, !1114}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1106, file: !1035, line: 50, baseType: !428, size: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1106, file: !1035, line: 51, baseType: !1066, size: 256, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1106, file: !1035, line: 53, baseType: !1066, size: 256, offset: 320)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1106, file: !1035, line: 54, baseType: !368, size: 64, offset: 576)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1106, file: !1035, line: 55, baseType: !1105, size: 64, offset: 640)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1106, file: !1035, line: 56, baseType: !109, size: 32, offset: 704)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1106, file: !1035, line: 57, baseType: !109, size: 32, offset: 736)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1040, file: !1035, line: 40, baseType: !368, size: 64, offset: 2496)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1040, file: !1035, line: 42, baseType: !109, size: 32, offset: 2560)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1040, file: !1035, line: 43, baseType: !1033, size: 64, offset: 2624)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1034, file: !1035, line: 99, baseType: !1119, offset: 128)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1120, line: 211, elements: !1121)
!1120 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1121 = !{}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1034, file: !1035, line: 100, baseType: !1123, size: 64, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1035, line: 63, size: 3008, elements: !1125)
!1125 = !{!1126, !1127, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1157}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1124, file: !1035, line: 64, baseType: !1105, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1124, file: !1035, line: 65, baseType: !1128, size: 192, offset: 64)
!1128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1105, size: 192, elements: !495)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1124, file: !1035, line: 67, baseType: !109, size: 32, offset: 256)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1124, file: !1035, line: 68, baseType: !833, size: 256, offset: 320)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1124, file: !1035, line: 69, baseType: !428, size: 32, offset: 576)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1124, file: !1035, line: 70, baseType: !833, size: 256, offset: 640)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1124, file: !1035, line: 71, baseType: !368, size: 64, offset: 896)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1124, file: !1035, line: 72, baseType: !368, size: 64, offset: 960)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1124, file: !1035, line: 73, baseType: !368, size: 64, offset: 1024)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1124, file: !1035, line: 74, baseType: !368, size: 64, offset: 1088)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1124, file: !1035, line: 75, baseType: !368, size: 64, offset: 1152)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1124, file: !1035, line: 76, baseType: !368, size: 64, offset: 1216)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1124, file: !1035, line: 77, baseType: !368, size: 64, offset: 1280)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1124, file: !1035, line: 78, baseType: !368, size: 64, offset: 1344)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1124, file: !1035, line: 79, baseType: !913, size: 8, offset: 1408)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1124, file: !1035, line: 80, baseType: !368, size: 64, offset: 1472)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1124, file: !1035, line: 81, baseType: !833, size: 256, offset: 1536)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1124, file: !1035, line: 82, baseType: !782, size: 256, offset: 1792)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1124, file: !1035, line: 84, baseType: !403, size: 32, offset: 2048)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1124, file: !1035, line: 87, baseType: !368, size: 64, offset: 2112)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1124, file: !1035, line: 88, baseType: !368, size: 64, offset: 2176)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1124, file: !1035, line: 89, baseType: !1149, size: 704, offset: 2240)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !321, line: 111, size: 704, elements: !1150)
!1150 = !{!1151, !1152, !1153, !1156}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1149, file: !321, line: 112, baseType: !1093, size: 256)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1149, file: !321, line: 113, baseType: !1075, size: 320, offset: 256)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1149, file: !321, line: 116, baseType: !1154, size: 64, offset: 576)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !321, line: 18, flags: DIFlagFwdDecl)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1149, file: !321, line: 117, baseType: !109, size: 32, offset: 640)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1124, file: !1035, line: 90, baseType: !1033, size: 64, offset: 2944)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !763, file: !6, line: 515, baseType: !1159, size: 64, offset: 8064)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1161, line: 117, size: 128, elements: !1162)
!1161 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1162 = !{!1163, !1164, !1165}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1160, file: !1161, line: 118, baseType: !829, size: 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1160, file: !1161, line: 119, baseType: !829, size: 32, offset: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1160, file: !1161, line: 120, baseType: !373, size: 64, offset: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !763, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !763, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !763, file: !6, line: 520, baseType: !1169, size: 64, offset: 8192)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !763, file: !6, line: 523, baseType: !1171, size: 64, offset: 8256)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !763, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !763, file: !6, line: 525, baseType: !1176, size: 64, offset: 8384)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !763, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !763, file: !6, line: 533, baseType: !365, size: 64, offset: 8512)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !763, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !763, file: !6, line: 535, baseType: !1183, size: 64, offset: 8640)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !763, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !763, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !763, file: !6, line: 540, baseType: !1187, size: 64, offset: 8768)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1189, line: 32, size: 64, elements: !1190)
!1189 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1190 = !{!1191, !1192}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1188, file: !1189, line: 33, baseType: !829, size: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1188, file: !1189, line: 34, baseType: !829, size: 32, offset: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !763, file: !6, line: 563, baseType: !377, size: 128, offset: 8832)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !763, file: !6, line: 565, baseType: !377, size: 128, offset: 8960)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !763, file: !6, line: 568, baseType: !1196, size: 64, offset: 9088)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{null}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !763, file: !6, line: 570, baseType: !403, size: 32, offset: 9152)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !738, file: !14, line: 2382, baseType: !737, size: 64, offset: 448)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !738, file: !14, line: 2383, baseType: !1202, size: 64, offset: 512)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !367, line: 194, size: 64, elements: !1203)
!1203 = !{!1204}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1202, file: !367, line: 195, baseType: !1082, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !738, file: !14, line: 2385, baseType: !1206, offset: 576)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1120, line: 206, elements: !1121)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !738, file: !14, line: 2386, baseType: !1206, offset: 576)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !738, file: !14, line: 2387, baseType: !1206, offset: 576)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !738, file: !14, line: 2388, baseType: !1210, offset: 576)
!1210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1206, elements: !495)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !738, file: !14, line: 2390, baseType: !1206, offset: 576)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !738, file: !14, line: 2391, baseType: !1206, offset: 576)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !738, file: !14, line: 2392, baseType: !1206, offset: 576)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !738, file: !14, line: 2393, baseType: !1206, offset: 576)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !724, file: !14, line: 1197, baseType: !1216, size: 64, offset: 384)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1218)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1219)
!1219 = !{!1220, !1224, !1228, !1229, !1233, !1239, !1243, !1244, !1245, !1249, !1253, !1257, !1258, !1259, !1265, !1269, !1270, !3462, !3463, !3464, !3465, !3469, !3473, !3520, !3535, !3536}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1218, file: !14, line: 2058, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!572, !723}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1218, file: !14, line: 2059, baseType: !1225, size: 64, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{null, !572}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1218, file: !14, line: 2060, baseType: !1225, size: 64, offset: 128)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1218, file: !14, line: 2062, baseType: !1230, size: 64, offset: 192)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{null, !572, !109}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1218, file: !14, line: 2063, baseType: !1234, size: 64, offset: 256)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!109, !572, !1237}
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1218, file: !14, line: 2064, baseType: !1240, size: 64, offset: 320)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!109, !572}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1218, file: !14, line: 2065, baseType: !1225, size: 64, offset: 384)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1218, file: !14, line: 2066, baseType: !758, size: 64, offset: 448)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1218, file: !14, line: 2067, baseType: !1246, size: 64, offset: 512)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!109, !723, !109}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1218, file: !14, line: 2068, baseType: !1250, size: 64, offset: 576)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!109, !723, !13}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1218, file: !14, line: 2069, baseType: !1254, size: 64, offset: 640)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!109, !723}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1218, file: !14, line: 2070, baseType: !1250, size: 64, offset: 704)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1218, file: !14, line: 2071, baseType: !1254, size: 64, offset: 768)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1218, file: !14, line: 2072, baseType: !1260, size: 64, offset: 832)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!109, !607, !1263}
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1218, file: !14, line: 2073, baseType: !1266, size: 64, offset: 896)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!109, !723, !962, !494}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1218, file: !14, line: 2074, baseType: !758, size: 64, offset: 960)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1218, file: !14, line: 2076, baseType: !1271, size: 64, offset: 1024)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!109, !1274, !607}
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1276, line: 17, size: 960, elements: !1277)
!1276 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1277 = !{!1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1308, !1309, !3461}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1275, file: !1276, line: 18, baseType: !494, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1275, file: !1276, line: 19, baseType: !540, size: 64, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1275, file: !1276, line: 20, baseType: !540, size: 64, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1275, file: !1276, line: 21, baseType: !540, size: 64, offset: 192)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1275, file: !1276, line: 22, baseType: !540, size: 64, offset: 256)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1275, file: !1276, line: 23, baseType: !733, size: 64, offset: 320)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1275, file: !1276, line: 24, baseType: !733, size: 64, offset: 384)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1275, file: !1276, line: 25, baseType: !833, size: 256, offset: 448)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1275, file: !1276, line: 26, baseType: !1287, size: 64, offset: 704)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1289)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1276, line: 32, size: 256, elements: !1290)
!1290 = !{!1291, !1296, !1300, !1304}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1289, file: !1276, line: 33, baseType: !1292, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!365, !1274, !1295}
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1289, file: !1276, line: 34, baseType: !1297, size: 64, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{null, !1274, !365}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1289, file: !1276, line: 35, baseType: !1301, size: 64, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!365, !1274, !365, !1295}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1289, file: !1276, line: 36, baseType: !1305, size: 64, offset: 192)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!109, !1274, !365}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1275, file: !1276, line: 27, baseType: !109, size: 32, offset: 768)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1275, file: !1276, line: 28, baseType: !1310, size: 64, offset: 832)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1312)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1313)
!1313 = !{!1314, !1325, !1326, !1328, !1329, !1330, !1331, !1332, !3275, !3276, !3285, !3291, !3292, !3451, !3452, !3453, !3454, !3456, !3457, !3460}
!1314 = !DIDerivedType(tag: DW_TAG_member, scope: !1312, file: !14, line: 995, baseType: !1315, size: 128)
!1315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1312, file: !14, line: 995, size: 128, elements: !1316)
!1316 = !{!1317, !1323, !1324}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1315, file: !14, line: 996, baseType: !1318, size: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1319, line: 60, size: 64, elements: !1320)
!1319 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1320 = !{!1321}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1318, file: !1319, line: 61, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1315, file: !14, line: 997, baseType: !1053, size: 128, align: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1315, file: !14, line: 998, baseType: !7, size: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1312, file: !14, line: 1005, baseType: !428, size: 32, offset: 128)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1312, file: !14, line: 1006, baseType: !1327, size: 32, offset: 160)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !367, line: 156, baseType: !7)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1312, file: !14, line: 1007, baseType: !837, size: 64, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1312, file: !14, line: 1008, baseType: !833, size: 256, offset: 256)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1312, file: !14, line: 1009, baseType: !733, size: 64, offset: 512)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1312, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1312, file: !14, line: 1011, baseType: !1333, size: 256, offset: 640)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1334)
!1334 = !{!1335, !1356, !3271, !3272, !3273, !3274}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1333, file: !14, line: 949, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1337, line: 34, baseType: !1338)
!1337 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1337, line: 25, size: 64, elements: !1339)
!1339 = !{!1340}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1338, file: !1337, line: 26, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1342, line: 27, baseType: !1343)
!1342 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1342, line: 13, size: 64, elements: !1344)
!1344 = !{!1345, !1355}
!1345 = !DIDerivedType(tag: DW_TAG_member, scope: !1343, file: !1342, line: 14, baseType: !1346, size: 32)
!1346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1343, file: !1342, line: 14, size: 32, elements: !1347)
!1347 = !{!1348, !1349}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1346, file: !1342, line: 15, baseType: !403, size: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, scope: !1346, file: !1342, line: 16, baseType: !1350, size: 32)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1346, file: !1342, line: 16, size: 32, elements: !1351)
!1351 = !{!1352, !1353}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1350, file: !1342, line: 18, baseType: !452, size: 8)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1350, file: !1342, line: 19, baseType: !1354, size: 24, offset: 8)
!1354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 24, elements: !495)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1343, file: !1342, line: 26, baseType: !440, size: 32, offset: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1333, file: !14, line: 950, baseType: !1357, size: 64, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !61, line: 59, size: 768, elements: !1359)
!1359 = !{!1360, !1361, !1362, !1363, !1365, !1366, !1373, !1374}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1358, file: !61, line: 61, baseType: !399, size: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1358, file: !61, line: 62, baseType: !7, size: 32, offset: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1358, file: !61, line: 63, baseType: !428, size: 32, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1358, file: !61, line: 65, baseType: !1364, size: 256, offset: 128)
!1364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1202, size: 256, elements: !1063)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1358, file: !61, line: 66, baseType: !1202, size: 64, offset: 384)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1358, file: !61, line: 68, baseType: !1367, size: 192, offset: 448)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1368, line: 41, baseType: !1369)
!1368 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1368, line: 37, size: 192, elements: !1370)
!1370 = !{!1371, !1372}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1369, file: !1368, line: 38, baseType: !428, size: 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1369, file: !1368, line: 39, baseType: !377, size: 128, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1358, file: !61, line: 69, baseType: !1053, size: 128, align: 64, offset: 640)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1358, file: !61, line: 70, baseType: !1375, offset: 768)
!1375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1376, elements: !1861)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !61, line: 54, size: 128, elements: !1377)
!1377 = !{!1378, !1379}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1376, file: !61, line: 55, baseType: !109, size: 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1376, file: !61, line: 56, baseType: !1380, size: 64, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1382, line: 26, size: 1152, elements: !1383)
!1382 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!1383 = !{!1384, !1397, !1398, !1399, !3248, !3251, !3252, !3253, !3256, !3257, !3258, !3259, !3270}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1381, file: !1382, line: 27, baseType: !1385, size: 192)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1386, line: 19, size: 192, elements: !1387)
!1386 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!1387 = !{!1388, !1395, !1396}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1385, file: !1386, line: 20, baseType: !1389, size: 128)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1390, line: 296, size: 128, elements: !1391)
!1390 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1391 = !{!1392, !1393, !1394}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1389, file: !1390, line: 297, baseType: !428, size: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1389, file: !1390, line: 299, baseType: !366, size: 32, offset: 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1389, file: !1390, line: 300, baseType: !365, size: 64, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1385, file: !1386, line: 21, baseType: !7, size: 32, offset: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1385, file: !1386, line: 22, baseType: !7, size: 32, offset: 160)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1381, file: !1382, line: 28, baseType: !1053, size: 128, align: 64, offset: 192)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1381, file: !1382, line: 29, baseType: !7, size: 32, offset: 320)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1381, file: !1382, line: 30, baseType: !1400, size: 64, offset: 384)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1402, line: 746, size: 58368, elements: !1403)
!1402 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1403 = !{!1404, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1484, !1495, !1590, !1594, !1597, !1628, !1629, !1630, !1631, !1642, !1644, !1645, !1646, !1647, !1648, !1649, !1660, !1661, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1678, !1679, !1686, !1687, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1942, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1990, !1996, !2178, !2179, !2180, !2181, !2185, !2188, !2195, !2200, !2203, !2206, !2209, !2235, !2373, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2411, !2412, !2413, !2422, !2430, !2431, !2432, !2433, !2434, !2439, !2440, !2441, !2445, !2446, !2449, !2452, !2455, !2463, !2466, !2467, !2553, !2554, !2555, !2556, !2557, !2563, !2564, !2565, !2566, !2569, !2570, !2573, !2576, !2577, !2580, !2581, !2582, !2585, !2586, !2587, !2590, !2591, !2592, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2624, !2627, !2916, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2928, !3000, !3002, !3003, !3004, !3005, !3006, !3007, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3025, !3026, !3027}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1401, file: !1402, line: 752, baseType: !1405, size: 192)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1406, line: 56, size: 192, elements: !1407)
!1406 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1407 = !{!1408, !1409, !1410, !1411}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1405, file: !1406, line: 57, baseType: !368, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1405, file: !1406, line: 58, baseType: !368, size: 64, offset: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1405, file: !1406, line: 59, baseType: !641, size: 32, offset: 128)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1405, file: !1406, line: 61, baseType: !641, size: 32, offset: 160)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1401, file: !1402, line: 754, baseType: !7, size: 32, offset: 192)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1401, file: !1402, line: 767, baseType: !365, size: 64, offset: 256)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1401, file: !1402, line: 768, baseType: !399, size: 32, offset: 320)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1401, file: !1402, line: 770, baseType: !7, size: 32, offset: 352)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1401, file: !1402, line: 771, baseType: !7, size: 32, offset: 384)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1401, file: !1402, line: 774, baseType: !109, size: 32, offset: 416)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1401, file: !1402, line: 775, baseType: !1419, size: 128, offset: 448)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1420, line: 58, size: 128, elements: !1421)
!1420 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1421 = !{!1422, !1423, !1428, !1429}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1419, file: !1420, line: 59, baseType: !1318, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, scope: !1419, file: !1420, line: 60, baseType: !1424, size: 32, offset: 64)
!1424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1419, file: !1420, line: 60, size: 32, elements: !1425)
!1425 = !{!1426, !1427}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1424, file: !1420, line: 61, baseType: !7, size: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1424, file: !1420, line: 62, baseType: !403, size: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1419, file: !1420, line: 65, baseType: !462, size: 16, offset: 96)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1419, file: !1420, line: 65, baseType: !462, size: 16, offset: 112)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1401, file: !1402, line: 776, baseType: !7, size: 32, offset: 576)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1401, file: !1402, line: 777, baseType: !368, size: 64, offset: 640)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1401, file: !1402, line: 778, baseType: !1400, size: 64, offset: 704)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1401, file: !1402, line: 787, baseType: !109, size: 32, offset: 768)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1401, file: !1402, line: 788, baseType: !109, size: 32, offset: 800)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1401, file: !1402, line: 790, baseType: !109, size: 32, offset: 832)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1401, file: !1402, line: 792, baseType: !109, size: 32, offset: 864)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1401, file: !1402, line: 793, baseType: !109, size: 32, offset: 896)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1401, file: !1402, line: 794, baseType: !109, size: 32, offset: 928)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1401, file: !1402, line: 795, baseType: !7, size: 32, offset: 960)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1401, file: !1402, line: 797, baseType: !1441, size: 2048, offset: 1024)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1402, line: 551, size: 2048, elements: !1442)
!1442 = !{!1443, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1463, !1466, !1467, !1468}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1441, file: !1402, line: 553, baseType: !1444, size: 128)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1402, line: 411, size: 128, elements: !1445)
!1445 = !{!1446, !1447}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1444, file: !1402, line: 412, baseType: !368, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1444, file: !1402, line: 413, baseType: !641, size: 32, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1441, file: !1402, line: 554, baseType: !945, size: 192, align: 64, offset: 128)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1441, file: !1402, line: 555, baseType: !645, size: 64, offset: 320)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1441, file: !1402, line: 556, baseType: !645, size: 64, offset: 384)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1441, file: !1402, line: 558, baseType: !377, size: 128, offset: 448)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1441, file: !1402, line: 559, baseType: !7, size: 32, offset: 576)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1441, file: !1402, line: 561, baseType: !645, size: 64, offset: 640)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1441, file: !1402, line: 562, baseType: !645, size: 64, offset: 704)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1441, file: !1402, line: 563, baseType: !645, size: 64, offset: 768)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1441, file: !1402, line: 564, baseType: !645, size: 64, offset: 832)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1441, file: !1402, line: 565, baseType: !843, size: 64, offset: 896)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1441, file: !1402, line: 566, baseType: !645, size: 64, offset: 960)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1441, file: !1402, line: 568, baseType: !645, size: 64, offset: 1024)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1441, file: !1402, line: 571, baseType: !109, size: 32, offset: 1088)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1441, file: !1402, line: 572, baseType: !1462, size: 64, offset: 1152)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1441, file: !1402, line: 574, baseType: !1464, size: 64, offset: 1216)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1402, line: 49, flags: DIFlagFwdDecl)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1441, file: !1402, line: 576, baseType: !1464, size: 64, offset: 1280)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1441, file: !1402, line: 578, baseType: !368, size: 64, offset: 1344)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1441, file: !1402, line: 588, baseType: !1469, size: 512, align: 512, offset: 1536)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1402, line: 497, size: 512, align: 512, elements: !1470)
!1470 = !{!1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1469, file: !1402, line: 498, baseType: !645, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1469, file: !1402, line: 499, baseType: !645, size: 64, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1469, file: !1402, line: 500, baseType: !645, size: 64, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1469, file: !1402, line: 501, baseType: !641, size: 32, offset: 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1469, file: !1402, line: 502, baseType: !641, size: 32, offset: 224)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1469, file: !1402, line: 503, baseType: !368, size: 64, offset: 256)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1469, file: !1402, line: 504, baseType: !368, size: 64, offset: 320)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1469, file: !1402, line: 505, baseType: !368, size: 64, offset: 384)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1469, file: !1402, line: 506, baseType: !1480, size: 64, align: 64, offset: 448)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1402, line: 445, size: 64, align: 64, elements: !1481)
!1481 = !{!1482, !1483}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1480, file: !1402, line: 446, baseType: !7, size: 32)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1480, file: !1402, line: 447, baseType: !7, size: 32, offset: 32)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1401, file: !1402, line: 798, baseType: !1485, size: 384, offset: 3072)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1402, line: 592, size: 384, elements: !1486)
!1486 = !{!1487, !1488, !1489, !1490, !1491, !1492, !1493}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1485, file: !1402, line: 593, baseType: !377, size: 128)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1485, file: !1402, line: 594, baseType: !368, size: 64, offset: 128)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1485, file: !1402, line: 595, baseType: !368, size: 64, offset: 192)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1485, file: !1402, line: 596, baseType: !7, size: 32, offset: 256)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1485, file: !1402, line: 597, baseType: !464, size: 16, offset: 288)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1485, file: !1402, line: 598, baseType: !464, size: 16, offset: 304)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1485, file: !1402, line: 600, baseType: !1494, size: 64, offset: 320)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1401, file: !1402, line: 799, baseType: !1496, size: 1792, offset: 3456)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1402, line: 610, size: 1792, elements: !1497)
!1497 = !{!1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1587, !1588}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1496, file: !1402, line: 611, baseType: !945, size: 192, align: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1496, file: !1402, line: 618, baseType: !645, size: 64, offset: 192)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1496, file: !1402, line: 619, baseType: !645, size: 64, offset: 256)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1496, file: !1402, line: 620, baseType: !645, size: 64, offset: 320)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1496, file: !1402, line: 621, baseType: !645, size: 64, offset: 384)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1496, file: !1402, line: 622, baseType: !645, size: 64, offset: 448)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1496, file: !1402, line: 629, baseType: !843, size: 64, offset: 512)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1496, file: !1402, line: 630, baseType: !645, size: 64, offset: 576)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1496, file: !1402, line: 631, baseType: !7, size: 32, offset: 640)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1496, file: !1402, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1496, file: !1402, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1496, file: !1402, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1496, file: !1402, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1496, file: !1402, line: 662, baseType: !1512, size: 512, offset: 704)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !19, line: 118, size: 512, elements: !1513)
!1513 = !{!1514, !1522, !1523, !1528, !1583, !1584, !1585, !1586}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1512, file: !19, line: 119, baseType: !1515, size: 256)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1516, line: 9, size: 256, elements: !1517)
!1516 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1517 = !{!1518, !1519}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1515, file: !1516, line: 10, baseType: !945, size: 192, align: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1515, file: !1516, line: 11, baseType: !1520, size: 64, offset: 192)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1521, line: 29, baseType: !843)
!1521 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1512, file: !19, line: 120, baseType: !1520, size: 64, offset: 256)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1512, file: !19, line: 121, baseType: !1524, size: 64, offset: 320)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!18, !1527}
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1512, file: !19, line: 122, baseType: !1529, size: 64, offset: 384)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !19, line: 159, size: 512, align: 512, elements: !1531)
!1531 = !{!1532, !1557, !1558, !1561, !1566, !1567, !1578, !1582}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1530, file: !19, line: 160, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !19, line: 215, size: 4608, align: 512, elements: !1535)
!1535 = !{!1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1534, file: !19, line: 216, baseType: !791, size: 32)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1534, file: !19, line: 217, baseType: !7, size: 32, offset: 32)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1534, file: !19, line: 218, baseType: !7, size: 32, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1534, file: !19, line: 219, baseType: !7, size: 32, offset: 96)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1534, file: !19, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1534, file: !19, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1534, file: !19, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1534, file: !19, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1534, file: !19, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1534, file: !19, line: 226, baseType: !7, size: 32, offset: 160)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1534, file: !19, line: 227, baseType: !464, size: 16, offset: 192)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1534, file: !19, line: 228, baseType: !464, size: 16, offset: 208)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1534, file: !19, line: 229, baseType: !7, size: 32, offset: 224)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1534, file: !19, line: 235, baseType: !1520, size: 64, offset: 256)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1534, file: !19, line: 236, baseType: !1527, size: 64, offset: 320)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1534, file: !19, line: 237, baseType: !1520, size: 64, offset: 384)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1534, file: !19, line: 238, baseType: !1527, size: 64, offset: 448)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1534, file: !19, line: 239, baseType: !1554, size: 4096, align: 512, offset: 512)
!1554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1530, size: 4096, align: 512, elements: !1555)
!1555 = !{!1556}
!1556 = !DISubrange(count: 8)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1530, file: !19, line: 161, baseType: !7, size: 32, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1530, file: !19, line: 162, baseType: !1559, size: 32, offset: 96)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !367, line: 32, baseType: !1560)
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !528, line: 96, baseType: !109)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1530, file: !19, line: 163, baseType: !1562, size: 32, offset: 128)
!1562 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !614, line: 274, baseType: !1563)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !614, line: 274, size: 32, elements: !1564)
!1564 = !{!1565}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1563, file: !614, line: 274, baseType: !618, size: 32)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1530, file: !19, line: 164, baseType: !1527, size: 64, offset: 192)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1530, file: !19, line: 165, baseType: !1568, size: 128, offset: 256)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1516, line: 14, size: 128, elements: !1569)
!1569 = !{!1570}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1568, file: !1516, line: 15, baseType: !1571, size: 128)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !946, line: 26, size: 128, elements: !1572)
!1572 = !{!1573, !1577}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1571, file: !946, line: 27, baseType: !1574, size: 64)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !946, line: 12, size: 64, elements: !1575)
!1575 = !{!1576}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1574, file: !946, line: 13, baseType: !950, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1571, file: !946, line: 28, baseType: !950, size: 64, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1530, file: !19, line: 166, baseType: !1579, size: 64, offset: 384)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!1520}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1530, file: !19, line: 167, baseType: !1520, size: 64, offset: 448)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1512, file: !19, line: 123, baseType: !452, size: 8, offset: 448)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1512, file: !19, line: 124, baseType: !452, size: 8, offset: 456)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1512, file: !19, line: 125, baseType: !452, size: 8, offset: 464)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1512, file: !19, line: 126, baseType: !452, size: 8, offset: 472)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1496, file: !1402, line: 671, baseType: !1512, size: 512, offset: 1216)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1496, file: !1402, line: 679, baseType: !1589, size: 64, offset: 1728)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1401, file: !1402, line: 800, baseType: !1591, size: 64, offset: 5248)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1593)
!1593 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1402, line: 800, flags: DIFlagFwdDecl)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1401, file: !1402, line: 809, baseType: !1595, size: 64, offset: 5312)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1402, line: 70, flags: DIFlagFwdDecl)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1401, file: !1402, line: 825, baseType: !1598, size: 2048, align: 512, offset: 5632)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1402, line: 509, size: 2048, align: 512, elements: !1599)
!1599 = !{!1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1598, file: !1402, line: 511, baseType: !645, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1598, file: !1402, line: 512, baseType: !645, size: 64, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1598, file: !1402, line: 513, baseType: !645, size: 64, offset: 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1598, file: !1402, line: 514, baseType: !645, size: 64, offset: 192)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1598, file: !1402, line: 515, baseType: !645, size: 64, offset: 256)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1598, file: !1402, line: 516, baseType: !645, size: 64, offset: 320)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1598, file: !1402, line: 518, baseType: !645, size: 64, offset: 384)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1598, file: !1402, line: 519, baseType: !645, size: 64, offset: 448)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1598, file: !1402, line: 520, baseType: !843, size: 64, offset: 512)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1598, file: !1402, line: 522, baseType: !645, size: 64, offset: 576)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1598, file: !1402, line: 523, baseType: !645, size: 64, offset: 640)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1598, file: !1402, line: 524, baseType: !843, size: 64, offset: 704)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1598, file: !1402, line: 526, baseType: !843, size: 64, offset: 768)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1598, file: !1402, line: 527, baseType: !645, size: 64, offset: 832)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1598, file: !1402, line: 529, baseType: !645, size: 64, offset: 896)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1598, file: !1402, line: 530, baseType: !645, size: 64, offset: 960)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1598, file: !1402, line: 531, baseType: !645, size: 64, offset: 1024)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1598, file: !1402, line: 532, baseType: !645, size: 64, offset: 1088)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1598, file: !1402, line: 533, baseType: !645, size: 64, offset: 1152)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1598, file: !1402, line: 535, baseType: !645, size: 64, offset: 1216)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1598, file: !1402, line: 536, baseType: !645, size: 64, offset: 1280)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1598, file: !1402, line: 537, baseType: !645, size: 64, offset: 1344)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1598, file: !1402, line: 538, baseType: !645, size: 64, offset: 1408)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1598, file: !1402, line: 539, baseType: !645, size: 64, offset: 1472)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1598, file: !1402, line: 540, baseType: !645, size: 64, offset: 1536)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1598, file: !1402, line: 541, baseType: !645, size: 64, offset: 1600)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1598, file: !1402, line: 542, baseType: !645, size: 64, offset: 1664)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1598, file: !1402, line: 543, baseType: !645, size: 64, offset: 1728)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1401, file: !1402, line: 833, baseType: !7, size: 32, offset: 7680)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1401, file: !1402, line: 836, baseType: !7, size: 32, offset: 7712)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1401, file: !1402, line: 837, baseType: !109, size: 32, offset: 7744)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1401, file: !1402, line: 838, baseType: !1632, size: 64, offset: 7808)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1634)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1635, line: 19, baseType: !1636)
!1635 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1635, line: 19, size: 64, elements: !1637)
!1637 = !{!1638}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1636, file: !1635, line: 19, baseType: !1639, size: 64)
!1639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 64, elements: !1640)
!1640 = !{!1641}
!1641 = !DISubrange(count: 1)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1401, file: !1402, line: 839, baseType: !1643, size: 64, offset: 7872)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1401, file: !1402, line: 840, baseType: !1634, size: 64, offset: 7936)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1401, file: !1402, line: 841, baseType: !365, size: 64, offset: 8000)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1401, file: !1402, line: 843, baseType: !464, size: 16, offset: 8064)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1401, file: !1402, line: 845, baseType: !464, size: 16, offset: 8080)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1401, file: !1402, line: 848, baseType: !109, size: 32, offset: 8096)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1401, file: !1402, line: 849, baseType: !1650, size: 32, offset: 8128)
!1650 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1402, line: 718, size: 32, elements: !1651)
!1651 = !{!1652, !1659}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1650, file: !1402, line: 724, baseType: !1653, size: 32)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1650, file: !1402, line: 719, size: 32, elements: !1654)
!1654 = !{!1655, !1656, !1657, !1658}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1653, file: !1402, line: 720, baseType: !452, size: 8)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1653, file: !1402, line: 721, baseType: !452, size: 8, offset: 8)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1653, file: !1402, line: 722, baseType: !452, size: 8, offset: 16)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1653, file: !1402, line: 723, baseType: !452, size: 8, offset: 24)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1650, file: !1402, line: 725, baseType: !641, size: 32)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1401, file: !1402, line: 850, baseType: !377, size: 128, offset: 8192)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1401, file: !1402, line: 851, baseType: !1662, size: 64, offset: 8320)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1402, line: 60, flags: DIFlagFwdDecl)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1401, file: !1402, line: 855, baseType: !368, size: 64, offset: 8384)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1401, file: !1402, line: 856, baseType: !452, size: 8, offset: 8448)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1401, file: !1402, line: 857, baseType: !452, size: 8, offset: 8456)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1401, file: !1402, line: 858, baseType: !109, size: 32, offset: 8480)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1401, file: !1402, line: 859, baseType: !377, size: 128, offset: 8512)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1401, file: !1402, line: 860, baseType: !109, size: 32, offset: 8640)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1401, file: !1402, line: 861, baseType: !377, size: 128, offset: 8704)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1401, file: !1402, line: 873, baseType: !1672, size: 256, offset: 8832)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1402, line: 376, size: 256, elements: !1673)
!1673 = !{!1674, !1675, !1676, !1677}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1672, file: !1402, line: 381, baseType: !368, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1672, file: !1402, line: 384, baseType: !647, size: 64, offset: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1672, file: !1402, line: 389, baseType: !647, size: 64, offset: 128)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1672, file: !1402, line: 392, baseType: !647, size: 64, offset: 192)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1401, file: !1402, line: 875, baseType: !377, size: 128, offset: 9088)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1401, file: !1402, line: 877, baseType: !1680, size: 320, offset: 9216)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1681, line: 86, size: 320, elements: !1682)
!1681 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1682 = !{!1683, !1684, !1685}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1680, file: !1681, line: 87, baseType: !109, size: 32)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1680, file: !1681, line: 88, baseType: !377, size: 128, offset: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1680, file: !1681, line: 89, baseType: !377, size: 128, offset: 192)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1401, file: !1402, line: 878, baseType: !945, size: 192, align: 64, offset: 9536)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1401, file: !1402, line: 881, baseType: !1688, size: 64, offset: 9728)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1690)
!1690 = !{!1691, !1859}
!1691 = !DIDerivedType(tag: DW_TAG_member, scope: !1689, file: !38, line: 734, baseType: !1692, size: 10240)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1689, file: !38, line: 734, size: 10240, elements: !1693)
!1693 = !{!1694, !1698, !1711, !1716, !1717, !1718, !1719, !1720, !1721, !1730, !1731, !1732, !1738, !1739, !1740, !1741, !1742, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1779, !1789, !1792, !1837, !1838, !1839, !1842, !1845, !1846, !1849, !1850, !1851, !1857, !1858}
!1694 = !DIDerivedType(tag: DW_TAG_member, scope: !1692, file: !38, line: 739, baseType: !1695, size: 512, align: 512)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1692, file: !38, line: 739, size: 512, align: 512, elements: !1696)
!1696 = !{!1697}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1695, file: !38, line: 747, baseType: !403, size: 32)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1692, file: !38, line: 750, baseType: !1699, size: 128, offset: 512)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1700, line: 218, size: 128, elements: !1701)
!1700 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1701 = !{!1702, !1709, !1710}
!1702 = !DIDerivedType(tag: DW_TAG_member, scope: !1699, file: !1700, line: 219, baseType: !1703, size: 32)
!1703 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1699, file: !1700, line: 219, size: 32, elements: !1704)
!1704 = !{!1705, !1706}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1703, file: !1700, line: 220, baseType: !428, size: 32)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1703, file: !1700, line: 221, baseType: !1707)
!1707 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1700, line: 197, baseType: !1708)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1700, line: 197, elements: !1121)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1699, file: !1700, line: 223, baseType: !7, size: 32, offset: 32)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1699, file: !1700, line: 224, baseType: !365, size: 64, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1692, file: !38, line: 752, baseType: !1712, size: 64, offset: 640)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!368, !1715, !368, !368, !368, !368}
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1692, file: !38, line: 756, baseType: !368, size: 64, offset: 704)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1692, file: !38, line: 757, baseType: !368, size: 64, offset: 768)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1692, file: !38, line: 760, baseType: !368, size: 64, offset: 832)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1692, file: !38, line: 761, baseType: !368, size: 64, offset: 896)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1692, file: !38, line: 763, baseType: !368, size: 64, offset: 960)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1692, file: !38, line: 764, baseType: !1722, size: 64, offset: 1024)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1724, line: 299, baseType: !1725)
!1724 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1724, line: 299, size: 64, elements: !1726)
!1726 = !{!1727}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1725, file: !1724, line: 299, baseType: !1728, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1729, line: 18, baseType: !368)
!1729 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1692, file: !38, line: 773, baseType: !403, size: 32, offset: 1088)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1692, file: !38, line: 785, baseType: !403, size: 32, offset: 1120)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1692, file: !38, line: 795, baseType: !1733, size: 64, offset: 1152)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !1735)
!1735 = !{!1736, !1737}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1734, file: !38, line: 727, baseType: !645, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1734, file: !38, line: 728, baseType: !109, size: 32, offset: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1692, file: !38, line: 801, baseType: !368, size: 64, offset: 1216)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1692, file: !38, line: 804, baseType: !837, size: 64, offset: 1280)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1692, file: !38, line: 806, baseType: !109, size: 32, offset: 1344)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1692, file: !38, line: 808, baseType: !428, size: 32, offset: 1376)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1692, file: !38, line: 823, baseType: !1743, size: 320, offset: 1408)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1744, line: 48, size: 320, elements: !1745)
!1744 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1745 = !{!1746, !1747, !1748, !1749, !1750}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1743, file: !1744, line: 49, baseType: !837, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1743, file: !1744, line: 55, baseType: !837, size: 64, offset: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1743, file: !1744, line: 57, baseType: !847, size: 32, offset: 128)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1743, file: !1744, line: 59, baseType: !791, size: 32, offset: 160)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1743, file: !1744, line: 60, baseType: !377, size: 128, offset: 192)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1692, file: !38, line: 825, baseType: !377, size: 128, offset: 1728)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1692, file: !38, line: 845, baseType: !109, size: 32, offset: 1856)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1692, file: !38, line: 849, baseType: !368, size: 64, offset: 1920)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1692, file: !38, line: 850, baseType: !368, size: 64, offset: 1984)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1692, file: !38, line: 852, baseType: !368, size: 64, offset: 2048)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1692, file: !38, line: 853, baseType: !368, size: 64, offset: 2112)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1692, file: !38, line: 854, baseType: !839, size: 64, offset: 2176)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1692, file: !38, line: 855, baseType: !368, size: 64, offset: 2240)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1692, file: !38, line: 856, baseType: !368, size: 64, offset: 2304)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1692, file: !38, line: 857, baseType: !368, size: 64, offset: 2368)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1692, file: !38, line: 858, baseType: !368, size: 64, offset: 2432)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1692, file: !38, line: 865, baseType: !618, size: 32, offset: 2496)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1692, file: !38, line: 867, baseType: !428, size: 32, offset: 2528)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1692, file: !38, line: 869, baseType: !368, size: 64, offset: 2560)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1692, file: !38, line: 869, baseType: !368, size: 64, offset: 2624)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1692, file: !38, line: 869, baseType: !368, size: 64, offset: 2688)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1692, file: !38, line: 869, baseType: !368, size: 64, offset: 2752)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1692, file: !38, line: 870, baseType: !368, size: 64, offset: 2816)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1692, file: !38, line: 870, baseType: !368, size: 64, offset: 2880)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1692, file: !38, line: 870, baseType: !368, size: 64, offset: 2944)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1692, file: !38, line: 871, baseType: !368, size: 64, offset: 3008)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1692, file: !38, line: 871, baseType: !368, size: 64, offset: 3072)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1692, file: !38, line: 871, baseType: !368, size: 64, offset: 3136)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1692, file: !38, line: 871, baseType: !368, size: 64, offset: 3200)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1692, file: !38, line: 873, baseType: !1776, size: 3328, offset: 3264)
!1776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 3328, elements: !1777)
!1777 = !{!1778}
!1778 = !DISubrange(count: 52)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1692, file: !38, line: 875, baseType: !1780, size: 1280, offset: 6592)
!1780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1781, size: 1280, elements: !1063)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1782, line: 22, size: 320, elements: !1783)
!1782 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1783 = !{!1784, !1785, !1786, !1787}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1781, file: !1782, line: 23, baseType: !791, size: 32)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1781, file: !1782, line: 24, baseType: !843, size: 64, offset: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1781, file: !1782, line: 26, baseType: !377, size: 128, offset: 128)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1781, file: !1782, line: 28, baseType: !1788, size: 64, offset: 256)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1692, file: !38, line: 877, baseType: !1790, size: 64, offset: 7872)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1692, file: !38, line: 880, baseType: !1793, size: 1088, offset: 7936)
!1793 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1794, line: 72, baseType: !1795)
!1794 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1794, line: 23, size: 1088, elements: !1796)
!1796 = !{!1797, !1798, !1799, !1800, !1801, !1804, !1805, !1806, !1807, !1834, !1835, !1836}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1795, file: !1794, line: 28, baseType: !645, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1795, file: !1794, line: 38, baseType: !839, size: 64, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1795, file: !1794, line: 40, baseType: !368, size: 64, offset: 128)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1795, file: !1794, line: 43, baseType: !1743, size: 320, offset: 192)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1795, file: !1794, line: 44, baseType: !1802, size: 64, offset: 512)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1794, line: 44, flags: DIFlagFwdDecl)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1795, file: !1794, line: 48, baseType: !368, size: 64, offset: 576)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1795, file: !1794, line: 59, baseType: !833, size: 256, offset: 640)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1795, file: !1794, line: 60, baseType: !365, size: 64, offset: 896)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1795, file: !1794, line: 61, baseType: !1808, size: 64, offset: 960)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1810)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1811, line: 13, size: 1216, elements: !1812)
!1811 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1812 = !{!1813, !1814, !1815, !1816, !1817, !1818, !1819, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1810, file: !1811, line: 14, baseType: !365, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1810, file: !1811, line: 15, baseType: !368, size: 64, offset: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1810, file: !1811, line: 17, baseType: !368, size: 64, offset: 128)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1810, file: !1811, line: 17, baseType: !368, size: 64, offset: 192)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1810, file: !1811, line: 18, baseType: !368, size: 64, offset: 256)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1810, file: !1811, line: 18, baseType: !368, size: 64, offset: 320)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1810, file: !1811, line: 19, baseType: !1820, size: 64, offset: 384)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1810, file: !1811, line: 21, baseType: !373, size: 64, offset: 448)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1810, file: !1811, line: 23, baseType: !373, size: 64, offset: 512)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1810, file: !1811, line: 24, baseType: !373, size: 64, offset: 576)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1810, file: !1811, line: 25, baseType: !373, size: 64, offset: 640)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1810, file: !1811, line: 26, baseType: !373, size: 64, offset: 704)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1810, file: !1811, line: 27, baseType: !373, size: 64, offset: 768)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1810, file: !1811, line: 28, baseType: !373, size: 64, offset: 832)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1810, file: !1811, line: 29, baseType: !373, size: 64, offset: 896)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1810, file: !1811, line: 30, baseType: !373, size: 64, offset: 960)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1810, file: !1811, line: 31, baseType: !373, size: 64, offset: 1024)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1810, file: !1811, line: 32, baseType: !373, size: 64, offset: 1088)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1810, file: !1811, line: 33, baseType: !373, size: 64, offset: 1152)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1795, file: !1794, line: 63, baseType: !403, size: 32, offset: 1024)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1795, file: !1794, line: 69, baseType: !462, size: 16, offset: 1056)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1795, file: !1794, line: 70, baseType: !969, size: 16, offset: 1072)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1692, file: !38, line: 882, baseType: !368, size: 64, offset: 9024)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1692, file: !38, line: 885, baseType: !428, size: 32, offset: 9088)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1692, file: !38, line: 886, baseType: !1840, size: 64, offset: 9152)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1692, file: !38, line: 901, baseType: !1843, size: 64, offset: 9216)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !38, line: 901, flags: DIFlagFwdDecl)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1692, file: !38, line: 904, baseType: !1715, size: 64, offset: 9280)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1692, file: !38, line: 906, baseType: !1847, size: 64, offset: 9344)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1692, file: !38, line: 930, baseType: !403, size: 32, offset: 9408)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1692, file: !38, line: 933, baseType: !403, size: 32, offset: 9440)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1692, file: !38, line: 935, baseType: !1852, size: 64, offset: 9472)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !54, line: 103, size: 64, elements: !1853)
!1853 = !{!1854}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1852, file: !54, line: 104, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !54, line: 101, flags: DIFlagFwdDecl)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1692, file: !38, line: 940, baseType: !837, size: 64, offset: 9536)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1692, file: !38, line: 942, baseType: !1093, size: 256, offset: 9600)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1689, file: !38, line: 986, baseType: !1860, offset: 10240)
!1860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, elements: !1861)
!1861 = !{!1862}
!1862 = !DISubrange(count: -1)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1401, file: !1402, line: 882, baseType: !1688, size: 64, offset: 9792)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1401, file: !1402, line: 884, baseType: !109, size: 32, offset: 9856)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1401, file: !1402, line: 885, baseType: !109, size: 32, offset: 9888)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1401, file: !1402, line: 886, baseType: !109, size: 32, offset: 9920)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1401, file: !1402, line: 888, baseType: !109, size: 32, offset: 9952)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1401, file: !1402, line: 890, baseType: !368, size: 64, offset: 9984)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1401, file: !1402, line: 893, baseType: !7, size: 32, offset: 10048)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1401, file: !1402, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1401, file: !1402, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1401, file: !1402, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1401, file: !1402, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1401, file: !1402, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1401, file: !1402, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1401, file: !1402, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1401, file: !1402, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1401, file: !1402, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1401, file: !1402, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1401, file: !1402, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1401, file: !1402, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1401, file: !1402, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1401, file: !1402, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1401, file: !1402, line: 969, baseType: !368, size: 64, offset: 10176)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1401, file: !1402, line: 971, baseType: !1886, size: 448, offset: 10240)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !24, line: 25, size: 448, elements: !1887)
!1887 = !{!1888, !1889, !1894}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1886, file: !24, line: 26, baseType: !368, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1886, file: !24, line: 27, baseType: !1890, size: 64, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!373, !1893}
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, scope: !1886, file: !24, line: 28, baseType: !1895, size: 320, offset: 128)
!1895 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1886, file: !24, line: 28, size: 320, elements: !1896)
!1896 = !{!1897, !1907, !1932}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1895, file: !24, line: 37, baseType: !1898, size: 320)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1895, file: !24, line: 30, size: 320, elements: !1899)
!1899 = !{!1900, !1902, !1903, !1904, !1905, !1906}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1898, file: !24, line: 31, baseType: !1901, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1898, file: !24, line: 32, baseType: !641, size: 32, offset: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1898, file: !24, line: 33, baseType: !641, size: 32, offset: 96)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1898, file: !24, line: 34, baseType: !641, size: 32, offset: 128)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1898, file: !24, line: 35, baseType: !645, size: 64, offset: 192)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1898, file: !24, line: 36, baseType: !1901, size: 64, offset: 256)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1895, file: !24, line: 47, baseType: !1908, size: 192)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1895, file: !24, line: 39, size: 192, elements: !1909)
!1909 = !{!1910, !1911, !1912, !1931}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1908, file: !24, line: 40, baseType: !1559, size: 32)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1908, file: !24, line: 41, baseType: !23, size: 32, offset: 32)
!1912 = !DIDerivedType(tag: DW_TAG_member, scope: !1908, file: !24, line: 42, baseType: !1913, size: 64, offset: 64)
!1913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1908, file: !24, line: 42, size: 64, elements: !1914)
!1914 = !{!1915, !1923}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1913, file: !24, line: 43, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1918, line: 7, size: 128, elements: !1919)
!1918 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1919 = !{!1920, !1922}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1917, file: !1918, line: 8, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !528, line: 93, baseType: !735)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1917, file: !1918, line: 9, baseType: !735, size: 64, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1913, file: !24, line: 44, baseType: !1924, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1926, line: 7, size: 64, elements: !1927)
!1926 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1927 = !{!1928, !1930}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1925, file: !1926, line: 8, baseType: !1929, size: 32)
!1929 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1926, line: 5, baseType: !829)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1925, file: !1926, line: 9, baseType: !829, size: 32, offset: 32)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1908, file: !24, line: 46, baseType: !645, size: 64, offset: 128)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1895, file: !24, line: 55, baseType: !1933, size: 256)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1895, file: !24, line: 49, size: 256, elements: !1934)
!1934 = !{!1935, !1938, !1939, !1940, !1941}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1933, file: !24, line: 50, baseType: !1936, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !24, line: 14, flags: DIFlagFwdDecl)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1933, file: !24, line: 51, baseType: !109, size: 32, offset: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1933, file: !24, line: 52, baseType: !109, size: 32, offset: 96)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1933, file: !24, line: 53, baseType: !368, size: 64, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1933, file: !24, line: 54, baseType: !368, size: 64, offset: 192)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1401, file: !1402, line: 973, baseType: !1943, size: 32, offset: 10688)
!1943 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !367, line: 27, baseType: !1944)
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !528, line: 28, baseType: !109)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1401, file: !1402, line: 974, baseType: !1943, size: 32, offset: 10720)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1401, file: !1402, line: 978, baseType: !368, size: 64, offset: 10752)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1401, file: !1402, line: 987, baseType: !1400, size: 64, offset: 10816)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1401, file: !1402, line: 990, baseType: !1400, size: 64, offset: 10880)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1401, file: !1402, line: 995, baseType: !377, size: 128, offset: 10944)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1401, file: !1402, line: 996, baseType: !377, size: 128, offset: 11072)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1401, file: !1402, line: 997, baseType: !1400, size: 64, offset: 11200)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1401, file: !1402, line: 1005, baseType: !377, size: 128, offset: 11264)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1401, file: !1402, line: 1006, baseType: !377, size: 128, offset: 11392)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1401, file: !1402, line: 1009, baseType: !1357, size: 64, offset: 11520)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1401, file: !1402, line: 1010, baseType: !1956, size: 512, offset: 11584)
!1956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1079, size: 512, elements: !1063)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1401, file: !1402, line: 1011, baseType: !377, size: 128, offset: 12096)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1401, file: !1402, line: 1012, baseType: !377, size: 128, offset: 12224)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1401, file: !1402, line: 1014, baseType: !781, size: 64, offset: 12352)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1401, file: !1402, line: 1017, baseType: !962, size: 64, offset: 12416)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1401, file: !1402, line: 1020, baseType: !962, size: 64, offset: 12480)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1401, file: !1402, line: 1023, baseType: !365, size: 64, offset: 12544)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1401, file: !1402, line: 1025, baseType: !645, size: 64, offset: 12608)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1401, file: !1402, line: 1026, baseType: !645, size: 64, offset: 12672)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1401, file: !1402, line: 1031, baseType: !645, size: 64, offset: 12736)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1401, file: !1402, line: 1032, baseType: !1967, size: 192, offset: 12800)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1402, line: 324, size: 192, elements: !1968)
!1968 = !{!1969, !1970, !1971}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1967, file: !1402, line: 326, baseType: !645, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1967, file: !1402, line: 327, baseType: !645, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1967, file: !1402, line: 328, baseType: !791, size: 32, offset: 128)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1401, file: !1402, line: 1041, baseType: !368, size: 64, offset: 12992)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1401, file: !1402, line: 1042, baseType: !368, size: 64, offset: 13056)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1401, file: !1402, line: 1045, baseType: !645, size: 64, offset: 13120)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1401, file: !1402, line: 1048, baseType: !645, size: 64, offset: 13184)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1401, file: !1402, line: 1051, baseType: !368, size: 64, offset: 13248)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1401, file: !1402, line: 1052, baseType: !368, size: 64, offset: 13312)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1401, file: !1402, line: 1055, baseType: !1979, size: 640, offset: 13376)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1980, line: 132, size: 640, elements: !1981)
!1980 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1981 = !{!1982, !1988, !1989}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1979, file: !1980, line: 133, baseType: !1983, size: 576)
!1983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1984, size: 576, elements: !495)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1980, line: 117, size: 192, elements: !1985)
!1985 = !{!1986, !1987}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1984, file: !1980, line: 118, baseType: !645, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1984, file: !1980, line: 119, baseType: !1568, size: 128, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1979, file: !1980, line: 134, baseType: !7, size: 32, offset: 576)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1979, file: !1980, line: 135, baseType: !7, size: 32, offset: 608)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1401, file: !1402, line: 1058, baseType: !1991, size: 448, offset: 14016)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1980, line: 144, size: 448, elements: !1992)
!1992 = !{!1993, !1994, !1995}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1991, file: !1980, line: 145, baseType: !1053, size: 128, align: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1991, file: !1980, line: 146, baseType: !833, size: 256, offset: 128)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1991, file: !1980, line: 147, baseType: !7, size: 32, offset: 384)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1401, file: !1402, line: 1064, baseType: !1997, size: 64, offset: 14464)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1999)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2000, line: 110, size: 1472, elements: !2001)
!2000 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!2001 = !{!2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2018, !2019, !2020, !2021, !2022, !2023, !2133, !2134, !2135, !2136, !2137, !2160, !2161, !2165, !2173}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1999, file: !2000, line: 111, baseType: !837, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1999, file: !2000, line: 112, baseType: !578, size: 32, offset: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1999, file: !2000, line: 113, baseType: !587, size: 32, offset: 96)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1999, file: !2000, line: 114, baseType: !578, size: 32, offset: 128)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1999, file: !2000, line: 115, baseType: !587, size: 32, offset: 160)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1999, file: !2000, line: 116, baseType: !578, size: 32, offset: 192)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1999, file: !2000, line: 117, baseType: !587, size: 32, offset: 224)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1999, file: !2000, line: 118, baseType: !578, size: 32, offset: 256)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1999, file: !2000, line: 119, baseType: !587, size: 32, offset: 288)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1999, file: !2000, line: 120, baseType: !7, size: 32, offset: 320)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1999, file: !2000, line: 121, baseType: !2013, size: 64, offset: 384)
!2013 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2014, line: 24, baseType: !2015)
!2014 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2014, line: 24, size: 64, elements: !2016)
!2016 = !{!2017}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2015, file: !2014, line: 24, baseType: !645, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1999, file: !2000, line: 122, baseType: !2013, size: 64, offset: 448)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1999, file: !2000, line: 123, baseType: !2013, size: 64, offset: 512)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1999, file: !2000, line: 124, baseType: !2013, size: 64, offset: 576)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1999, file: !2000, line: 125, baseType: !2013, size: 64, offset: 640)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1999, file: !2000, line: 127, baseType: !456, size: 8, offset: 704)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1999, file: !2000, line: 129, baseType: !2024, size: 64, offset: 768)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2026, line: 195, size: 1728, elements: !2027)
!2026 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!2027 = !{!2028, !2029, !2032, !2037, !2038, !2041, !2042, !2049, !2050, !2051, !2052, !2055, !2056, !2057, !2058, !2059, !2097, !2118}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2025, file: !2026, line: 196, baseType: !399, size: 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2025, file: !2026, line: 197, baseType: !2030, size: 32, offset: 32)
!2030 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2026, line: 28, baseType: !2031)
!2031 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !367, line: 104, baseType: !829)
!2032 = !DIDerivedType(tag: DW_TAG_member, scope: !2025, file: !2026, line: 198, baseType: !2033, size: 192, offset: 64)
!2033 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2025, file: !2026, line: 198, size: 192, elements: !2034)
!2034 = !{!2035, !2036}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2033, file: !2026, line: 199, baseType: !377, size: 128)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2033, file: !2026, line: 200, baseType: !945, size: 192, align: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2025, file: !2026, line: 205, baseType: !1743, size: 320, offset: 256)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2025, file: !2026, line: 206, baseType: !2039, size: 64, offset: 576)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2026, line: 206, flags: DIFlagFwdDecl)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2025, file: !2026, line: 207, baseType: !365, size: 64, offset: 640)
!2042 = !DIDerivedType(tag: DW_TAG_member, scope: !2025, file: !2026, line: 208, baseType: !2043, size: 64, offset: 704)
!2043 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2025, file: !2026, line: 208, size: 64, elements: !2044)
!2044 = !{!2045, !2048}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2043, file: !2026, line: 209, baseType: !2046, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !2047, line: 8, baseType: !844)
!2047 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2043, file: !2026, line: 210, baseType: !2046, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2025, file: !2026, line: 212, baseType: !2046, size: 64, offset: 768)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2025, file: !2026, line: 213, baseType: !578, size: 32, offset: 832)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2025, file: !2026, line: 214, baseType: !587, size: 32, offset: 864)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2025, file: !2026, line: 215, baseType: !2053, size: 32, offset: 896)
!2053 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2026, line: 31, baseType: !2054)
!2054 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !367, line: 110, baseType: !641)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2025, file: !2026, line: 216, baseType: !464, size: 16, offset: 928)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2025, file: !2026, line: 217, baseType: !464, size: 16, offset: 944)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2025, file: !2026, line: 221, baseType: !971, size: 16, offset: 960)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2025, file: !2026, line: 228, baseType: !368, size: 64, offset: 1024)
!2059 = !DIDerivedType(tag: DW_TAG_member, scope: !2025, file: !2026, line: 245, baseType: !2060, size: 320, offset: 1088)
!2060 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2025, file: !2026, line: 245, size: 320, elements: !2061)
!2061 = !{!2062, !2089}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2060, file: !2026, line: 246, baseType: !2063, size: 320)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2026, line: 114, size: 320, elements: !2064)
!2064 = !{!2065, !2066, !2078, !2081, !2088}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2063, file: !2026, line: 116, baseType: !368, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, scope: !2063, file: !2026, line: 117, baseType: !2067, size: 64, offset: 64)
!2067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2063, file: !2026, line: 117, size: 64, elements: !2068)
!2068 = !{!2069, !2077}
!2069 = !DIDerivedType(tag: DW_TAG_member, scope: !2067, file: !2026, line: 118, baseType: !2070, size: 64)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2067, file: !2026, line: 118, size: 64, elements: !2071)
!2071 = !{!2072, !2073}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2070, file: !2026, line: 120, baseType: !462, size: 16)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2070, file: !2026, line: 121, baseType: !2074, size: 48, offset: 16)
!2074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 48, elements: !2075)
!2075 = !{!2076}
!2076 = !DISubrange(count: 6)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2067, file: !2026, line: 127, baseType: !368, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2063, file: !2026, line: 129, baseType: !2079, size: 64, offset: 128)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2026, line: 102, flags: DIFlagFwdDecl)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2063, file: !2026, line: 130, baseType: !2082, size: 64, offset: 192)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2026, line: 108, size: 192, elements: !2084)
!2084 = !{!2085, !2086, !2087}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2083, file: !2026, line: 109, baseType: !1053, size: 128, align: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2083, file: !2026, line: 110, baseType: !399, size: 32, offset: 128)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2083, file: !2026, line: 111, baseType: !913, size: 8, offset: 160)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2063, file: !2026, line: 131, baseType: !416, size: 64, offset: 256)
!2089 = !DIDerivedType(tag: DW_TAG_member, scope: !2060, file: !2026, line: 247, baseType: !2090, size: 320)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2060, file: !2026, line: 247, size: 320, elements: !2091)
!2091 = !{!2092, !2093, !2094, !2095, !2096}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2090, file: !2026, line: 248, baseType: !368, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2090, file: !2026, line: 249, baseType: !368, size: 64, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2090, file: !2026, line: 250, baseType: !2079, size: 64, offset: 128)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2090, file: !2026, line: 251, baseType: !2082, size: 64, offset: 192)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2090, file: !2026, line: 252, baseType: !494, size: 64, offset: 256)
!2097 = !DIDerivedType(tag: DW_TAG_member, scope: !2025, file: !2026, line: 260, baseType: !2098, size: 256, offset: 1408)
!2098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2025, file: !2026, line: 260, size: 256, elements: !2099)
!2099 = !{!2100, !2106}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2098, file: !2026, line: 261, baseType: !2101, size: 256)
!2101 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2026, line: 134, size: 256, elements: !2102)
!2102 = !{!2103, !2104}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2101, file: !2026, line: 135, baseType: !365, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2101, file: !2026, line: 136, baseType: !2105, size: 256)
!2105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 256, elements: !1063)
!2106 = !DIDerivedType(tag: DW_TAG_member, scope: !2098, file: !2026, line: 262, baseType: !2107, size: 256)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2098, file: !2026, line: 262, size: 256, elements: !2108)
!2108 = !{!2109, !2110}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2107, file: !2026, line: 264, baseType: !377, size: 128)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2107, file: !2026, line: 265, baseType: !2111, size: 128, offset: 128)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2112, line: 22, size: 128, elements: !2113)
!2112 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!2113 = !{!2114, !2117}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2111, file: !2112, line: 23, baseType: !2115, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2112, line: 23, flags: DIFlagFwdDecl)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2111, file: !2112, line: 24, baseType: !368, size: 64, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2025, file: !2026, line: 280, baseType: !2119, size: 64, offset: 1664)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2026, line: 176, size: 192, elements: !2121)
!2121 = !{!2122, !2131, !2132}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2120, file: !2026, line: 177, baseType: !2123, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2026, line: 171, baseType: !2124)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!109, !2024, !2127, !2129, !2024}
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2080)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2101)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2120, file: !2026, line: 178, baseType: !2024, size: 64, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2120, file: !2026, line: 179, baseType: !2079, size: 64, offset: 128)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1999, file: !2000, line: 130, baseType: !2024, size: 64, offset: 832)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1999, file: !2000, line: 131, baseType: !2024, size: 64, offset: 896)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1999, file: !2000, line: 132, baseType: !2024, size: 64, offset: 960)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1999, file: !2000, line: 135, baseType: !365, size: 64, offset: 1024)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1999, file: !2000, line: 137, baseType: !2138, size: 64, offset: 1088)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2140, line: 14, size: 1088, elements: !2141)
!2140 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2141 = !{!2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2139, file: !2140, line: 15, baseType: !399, size: 32)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2139, file: !2140, line: 17, baseType: !1781, size: 320, offset: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2139, file: !2140, line: 19, baseType: !368, size: 64, offset: 384)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2139, file: !2140, line: 20, baseType: !837, size: 64, offset: 448)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2139, file: !2140, line: 23, baseType: !1079, size: 128, offset: 512)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2139, file: !2140, line: 24, baseType: !578, size: 32, offset: 640)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2139, file: !2140, line: 29, baseType: !837, size: 64, offset: 704)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2139, file: !2140, line: 36, baseType: !2150, size: 320, offset: 768)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2151, line: 15, size: 320, elements: !2152)
!2151 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2152 = !{!2153, !2154, !2155, !2156, !2157, !2158, !2159}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2150, file: !2151, line: 16, baseType: !791, size: 32)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2150, file: !2151, line: 18, baseType: !109, size: 32, offset: 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2150, file: !2151, line: 19, baseType: !109, size: 32, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2150, file: !2151, line: 20, baseType: !109, size: 32, offset: 96)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2150, file: !2151, line: 21, baseType: !109, size: 32, offset: 128)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2150, file: !2151, line: 22, baseType: !368, size: 64, offset: 192)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2150, file: !2151, line: 23, baseType: !368, size: 64, offset: 256)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1999, file: !2000, line: 138, baseType: !1843, size: 64, offset: 1152)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1999, file: !2000, line: 139, baseType: !2162, size: 64, offset: 1216)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2164, line: 16, flags: DIFlagFwdDecl)
!2164 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1999, file: !2000, line: 140, baseType: !2166, size: 64, offset: 1280)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2000, line: 25, size: 64, elements: !2168)
!2168 = !{!2169, !2170, !2171}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2167, file: !2000, line: 26, baseType: !403, size: 32)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2167, file: !2000, line: 27, baseType: !109, size: 32, offset: 32)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2167, file: !2000, line: 28, baseType: !2172, offset: 64)
!2172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, elements: !1861)
!2173 = !DIDerivedType(tag: DW_TAG_member, scope: !1999, file: !2000, line: 142, baseType: !2174, size: 128, offset: 1344)
!2174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1999, file: !2000, line: 142, size: 128, elements: !2175)
!2175 = !{!2176, !2177}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2174, file: !2000, line: 143, baseType: !109, size: 32)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2174, file: !2000, line: 144, baseType: !1053, size: 128, align: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1401, file: !1402, line: 1067, baseType: !1997, size: 64, offset: 14528)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1401, file: !1402, line: 1070, baseType: !1997, size: 64, offset: 14592)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1401, file: !1402, line: 1074, baseType: !2024, size: 64, offset: 14656)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1401, file: !1402, line: 1084, baseType: !2182, size: 128, offset: 14720)
!2182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 128, elements: !2183)
!2183 = !{!2184}
!2184 = !DISubrange(count: 16)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1401, file: !1402, line: 1086, baseType: !2186, size: 64, offset: 14848)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1402, line: 55, flags: DIFlagFwdDecl)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1401, file: !1402, line: 1089, baseType: !2189, size: 64, offset: 14912)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2190, line: 12, size: 64, elements: !2191)
!2190 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2191 = !{!2192}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2189, file: !2190, line: 13, baseType: !2193, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2190, line: 8, flags: DIFlagFwdDecl)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1401, file: !1402, line: 1090, baseType: !2196, size: 128, offset: 14976)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2197, line: 13, size: 128, elements: !2198)
!2197 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2198 = !{!2199}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2196, file: !2197, line: 14, baseType: !377, size: 128)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1401, file: !1402, line: 1097, baseType: !2201, size: 64, offset: 15104)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1402, line: 50, flags: DIFlagFwdDecl)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1401, file: !1402, line: 1100, baseType: !2204, size: 64, offset: 15168)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1402, line: 1100, flags: DIFlagFwdDecl)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1401, file: !1402, line: 1103, baseType: !2207, size: 64, offset: 15232)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1402, line: 53, flags: DIFlagFwdDecl)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1401, file: !1402, line: 1107, baseType: !2210, size: 64, offset: 15296)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2212, line: 31, size: 576, elements: !2213)
!2212 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2213 = !{!2214, !2215, !2218, !2221, !2224, !2225, !2228, !2231, !2232}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2211, file: !2212, line: 32, baseType: !399, size: 32)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2211, file: !2212, line: 33, baseType: !2216, size: 64, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2212, line: 9, flags: DIFlagFwdDecl)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2211, file: !2212, line: 34, baseType: !2219, size: 64, offset: 128)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2212, line: 10, flags: DIFlagFwdDecl)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2211, file: !2212, line: 35, baseType: !2222, size: 64, offset: 192)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2212, line: 8, flags: DIFlagFwdDecl)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2211, file: !2212, line: 36, baseType: !1380, size: 64, offset: 256)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2211, file: !2212, line: 37, baseType: !2226, size: 64, offset: 320)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !2026, line: 34, flags: DIFlagFwdDecl)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2211, file: !2212, line: 38, baseType: !2229, size: 64, offset: 384)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2212, line: 38, flags: DIFlagFwdDecl)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2211, file: !2212, line: 39, baseType: !2229, size: 64, offset: 448)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2211, file: !2212, line: 40, baseType: !2233, size: 64, offset: 512)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2212, line: 12, flags: DIFlagFwdDecl)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1401, file: !1402, line: 1110, baseType: !2236, size: 64, offset: 15360)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2238, line: 93, size: 8768, elements: !2239)
!2238 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2239 = !{!2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2287, !2296, !2297, !2299, !2300, !2301, !2304, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2342, !2343, !2350, !2360, !2363, !2364, !2367, !2368, !2369, !2370, !2371, !2372}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2237, file: !2238, line: 94, baseType: !399, size: 32)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2237, file: !2238, line: 95, baseType: !403, size: 32, offset: 32)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2237, file: !2238, line: 96, baseType: !109, size: 32, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2237, file: !2238, line: 97, baseType: !109, size: 32, offset: 96)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2237, file: !2238, line: 98, baseType: !377, size: 128, offset: 128)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2237, file: !2238, line: 100, baseType: !1367, size: 192, offset: 256)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2237, file: !2238, line: 103, baseType: !1400, size: 64, offset: 448)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2237, file: !2238, line: 106, baseType: !2248, size: 192, offset: 512)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2164, line: 32, size: 192, elements: !2249)
!2249 = !{!2250, !2251}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2248, file: !2164, line: 33, baseType: !377, size: 128)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2248, file: !2164, line: 34, baseType: !2252, size: 64, offset: 128)
!2252 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2253, line: 25, baseType: !2254)
!2253 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2253, line: 23, size: 64, elements: !2255)
!2255 = !{!2256}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2254, file: !2253, line: 24, baseType: !1639, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2237, file: !2238, line: 109, baseType: !1202, size: 64, offset: 704)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2237, file: !2238, line: 112, baseType: !109, size: 32, offset: 768)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2237, file: !2238, line: 114, baseType: !109, size: 32, offset: 800)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2237, file: !2238, line: 115, baseType: !1400, size: 64, offset: 832)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2237, file: !2238, line: 118, baseType: !109, size: 32, offset: 896)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2237, file: !2238, line: 119, baseType: !7, size: 32, offset: 928)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2237, file: !2238, line: 121, baseType: !2264, size: 64, offset: 960)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2238, line: 80, size: 448, elements: !2266)
!2266 = !{!2267, !2268, !2274}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2265, file: !2238, line: 81, baseType: !403, size: 32)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2265, file: !2238, line: 82, baseType: !2269, size: 128, offset: 64)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2238, line: 75, size: 128, elements: !2270)
!2270 = !{!2271, !2272}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2269, file: !2238, line: 76, baseType: !1400, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2269, file: !2238, line: 77, baseType: !2273, size: 64, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2265, file: !2238, line: 83, baseType: !782, size: 256, offset: 192)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2237, file: !2238, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2237, file: !2238, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2237, file: !2238, line: 138, baseType: !7, size: 32, offset: 1056)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2237, file: !2238, line: 139, baseType: !377, size: 128, offset: 1088)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2237, file: !2238, line: 142, baseType: !1512, size: 512, offset: 1216)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2237, file: !2238, line: 143, baseType: !1520, size: 64, offset: 1728)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2237, file: !2238, line: 150, baseType: !2282, size: 256, offset: 1792)
!2282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2283, size: 256, elements: !952)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2238, line: 38, size: 128, elements: !2284)
!2284 = !{!2285, !2286}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2283, file: !2238, line: 39, baseType: !645, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2283, file: !2238, line: 40, baseType: !645, size: 64, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2237, file: !2238, line: 156, baseType: !2288, size: 192, offset: 2048)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2238, line: 66, size: 192, elements: !2289)
!2289 = !{!2290}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2288, file: !2238, line: 67, baseType: !2291, size: 192)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2238, line: 47, size: 192, elements: !2292)
!2292 = !{!2293, !2294, !2295}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2291, file: !2238, line: 48, baseType: !839, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2291, file: !2238, line: 49, baseType: !839, size: 64, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2291, file: !2238, line: 50, baseType: !839, size: 64, offset: 128)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2237, file: !2238, line: 160, baseType: !1979, size: 640, offset: 2240)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2237, file: !2238, line: 163, baseType: !2298, size: 256, offset: 2880)
!2298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1357, size: 256, elements: !1063)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2237, file: !2238, line: 169, baseType: !1357, size: 64, offset: 3136)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2237, file: !2238, line: 172, baseType: !109, size: 32, offset: 3200)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2237, file: !2238, line: 174, baseType: !2302, size: 64, offset: 3264)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2238, line: 174, flags: DIFlagFwdDecl)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2237, file: !2238, line: 185, baseType: !2305, size: 64, offset: 3328)
!2305 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !614, line: 860, baseType: !2306)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !614, line: 853, size: 64, elements: !2307)
!2307 = !{!2308, !2309}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2306, file: !614, line: 858, baseType: !613, size: 32)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2306, file: !614, line: 859, baseType: !428, size: 32, offset: 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2237, file: !2238, line: 186, baseType: !645, size: 64, offset: 3392)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2237, file: !2238, line: 186, baseType: !645, size: 64, offset: 3456)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2237, file: !2238, line: 186, baseType: !645, size: 64, offset: 3520)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2237, file: !2238, line: 186, baseType: !645, size: 64, offset: 3584)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2237, file: !2238, line: 187, baseType: !645, size: 64, offset: 3648)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2237, file: !2238, line: 188, baseType: !645, size: 64, offset: 3712)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2237, file: !2238, line: 189, baseType: !1967, size: 192, offset: 3776)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2237, file: !2238, line: 190, baseType: !368, size: 64, offset: 3968)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2237, file: !2238, line: 190, baseType: !368, size: 64, offset: 4032)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2237, file: !2238, line: 190, baseType: !368, size: 64, offset: 4096)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2237, file: !2238, line: 190, baseType: !368, size: 64, offset: 4160)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2237, file: !2238, line: 191, baseType: !368, size: 64, offset: 4224)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2237, file: !2238, line: 191, baseType: !368, size: 64, offset: 4288)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2237, file: !2238, line: 191, baseType: !368, size: 64, offset: 4352)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2237, file: !2238, line: 191, baseType: !368, size: 64, offset: 4416)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2237, file: !2238, line: 192, baseType: !368, size: 64, offset: 4480)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2237, file: !2238, line: 192, baseType: !368, size: 64, offset: 4544)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2237, file: !2238, line: 192, baseType: !368, size: 64, offset: 4608)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2237, file: !2238, line: 192, baseType: !368, size: 64, offset: 4672)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2237, file: !2238, line: 193, baseType: !368, size: 64, offset: 4736)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2237, file: !2238, line: 193, baseType: !368, size: 64, offset: 4800)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2237, file: !2238, line: 194, baseType: !2332, size: 448, offset: 4864)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2333, line: 12, size: 448, elements: !2334)
!2333 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2334 = !{!2335, !2336, !2337, !2338, !2339, !2340, !2341}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2332, file: !2333, line: 15, baseType: !645, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2332, file: !2333, line: 17, baseType: !645, size: 64, offset: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2332, file: !2333, line: 19, baseType: !645, size: 64, offset: 128)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2332, file: !2333, line: 21, baseType: !645, size: 64, offset: 192)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2332, file: !2333, line: 29, baseType: !645, size: 64, offset: 256)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2332, file: !2333, line: 35, baseType: !645, size: 64, offset: 320)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2332, file: !2333, line: 44, baseType: !645, size: 64, offset: 384)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2237, file: !2238, line: 202, baseType: !647, size: 64, offset: 5312)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2237, file: !2238, line: 213, baseType: !2344, size: 2048, offset: 5376)
!2344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2345, size: 2048, elements: !2183)
!2345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2346, line: 43, size: 128, elements: !2347)
!2346 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2347 = !{!2348, !2349}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2345, file: !2346, line: 44, baseType: !542, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2345, file: !2346, line: 45, baseType: !542, size: 64, offset: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2237, file: !2238, line: 216, baseType: !2351, size: 448, offset: 7424)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2238, line: 30, size: 448, elements: !2352)
!2352 = !{!2353, !2354, !2355, !2356, !2357, !2358, !2359}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2351, file: !2238, line: 31, baseType: !109, size: 32)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2351, file: !2238, line: 32, baseType: !373, size: 64, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2351, file: !2238, line: 33, baseType: !368, size: 64, offset: 128)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2351, file: !2238, line: 34, baseType: !645, size: 64, offset: 192)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2351, file: !2238, line: 34, baseType: !645, size: 64, offset: 256)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2351, file: !2238, line: 35, baseType: !368, size: 64, offset: 320)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2351, file: !2238, line: 35, baseType: !368, size: 64, offset: 384)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2237, file: !2238, line: 219, baseType: !2361, size: 64, offset: 7872)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2238, line: 219, flags: DIFlagFwdDecl)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2237, file: !2238, line: 222, baseType: !7, size: 32, offset: 7936)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2237, file: !2238, line: 223, baseType: !2365, size: 64, offset: 8000)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2238, line: 223, flags: DIFlagFwdDecl)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2237, file: !2238, line: 230, baseType: !913, size: 8, offset: 8064)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2237, file: !2238, line: 231, baseType: !971, size: 16, offset: 8080)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2237, file: !2238, line: 232, baseType: !971, size: 16, offset: 8096)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2237, file: !2238, line: 234, baseType: !1688, size: 64, offset: 8128)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2237, file: !2238, line: 237, baseType: !833, size: 256, offset: 8192)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2237, file: !2238, line: 243, baseType: !1743, size: 320, offset: 8448)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1401, file: !1402, line: 1111, baseType: !2374, size: 64, offset: 15424)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2238, line: 20, size: 16640, elements: !2376)
!2376 = !{!2377, !2378, !2379, !2380}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2375, file: !2238, line: 21, baseType: !428, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2375, file: !2238, line: 22, baseType: !399, size: 32, offset: 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2375, file: !2238, line: 23, baseType: !1367, size: 192, offset: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2375, file: !2238, line: 24, baseType: !2381, size: 16384, offset: 256)
!2381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2382, size: 16384, elements: !499)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2164, line: 51, size: 256, elements: !2383)
!2383 = !{!2384}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2382, file: !2164, line: 52, baseType: !2385, size: 256)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2164, line: 37, size: 256, elements: !2386)
!2386 = !{!2387, !2394, !2395, !2399}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2385, file: !2164, line: 39, baseType: !2388, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2389, line: 83, baseType: !2390)
!2389 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2389, line: 82, baseType: !2392)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{null, !109}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2385, file: !2164, line: 40, baseType: !368, size: 64, offset: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2385, file: !2164, line: 46, baseType: !2396, size: 64, offset: 128)
!2396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2389, line: 86, baseType: !2397)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2389, line: 85, baseType: !1197)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2385, file: !2164, line: 48, baseType: !2252, size: 64, offset: 192)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1401, file: !1402, line: 1112, baseType: !2252, size: 64, offset: 15488)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1401, file: !1402, line: 1113, baseType: !2252, size: 64, offset: 15552)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1401, file: !1402, line: 1115, baseType: !2252, size: 64, offset: 15616)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1401, file: !1402, line: 1116, baseType: !2248, size: 192, offset: 15680)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1401, file: !1402, line: 1117, baseType: !368, size: 64, offset: 15872)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1401, file: !1402, line: 1118, baseType: !540, size: 64, offset: 15936)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1401, file: !1402, line: 1119, baseType: !7, size: 32, offset: 16000)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1401, file: !1402, line: 1121, baseType: !1052, size: 64, offset: 16064)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1401, file: !1402, line: 1125, baseType: !2409, size: 64, offset: 16128)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1402, line: 43, flags: DIFlagFwdDecl)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1401, file: !1402, line: 1127, baseType: !578, size: 32, offset: 16192)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1401, file: !1402, line: 1128, baseType: !7, size: 32, offset: 16224)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1401, file: !1402, line: 1130, baseType: !2414, size: 128, offset: 16256)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2415, line: 37, size: 128, elements: !2416)
!2415 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2416 = !{!2417, !2418, !2419}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2414, file: !2415, line: 38, baseType: !109, size: 32)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2414, file: !2415, line: 39, baseType: !403, size: 32, offset: 32)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2414, file: !2415, line: 40, baseType: !2420, size: 64, offset: 64)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2415, line: 24, flags: DIFlagFwdDecl)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1401, file: !1402, line: 1131, baseType: !2423, size: 256, offset: 16384)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2424, line: 12, size: 256, elements: !2425)
!2424 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2425 = !{!2426, !2427, !2428, !2429}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2423, file: !2424, line: 13, baseType: !494, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2423, file: !2424, line: 14, baseType: !368, size: 64, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2423, file: !2424, line: 15, baseType: !368, size: 64, offset: 128)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2423, file: !2424, line: 16, baseType: !913, size: 8, offset: 192)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1401, file: !1402, line: 1134, baseType: !645, size: 64, offset: 16640)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1401, file: !1402, line: 1135, baseType: !645, size: 64, offset: 16704)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1401, file: !1402, line: 1138, baseType: !428, size: 32, offset: 16768)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1401, file: !1402, line: 1141, baseType: !791, size: 32, offset: 16800)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1401, file: !1402, line: 1143, baseType: !2435, size: 64, offset: 16832)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1402, line: 735, size: 64, elements: !2436)
!2436 = !{!2437}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2435, file: !1402, line: 736, baseType: !2438, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1401, file: !1402, line: 1147, baseType: !1571, size: 128, offset: 16896)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1401, file: !1402, line: 1149, baseType: !1400, size: 64, offset: 17024)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1401, file: !1402, line: 1151, baseType: !2442, size: 64, offset: 17088)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2444, line: 64, flags: DIFlagFwdDecl)
!2444 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c3b60a10bef9e89c790a516317bab43b")
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1401, file: !1402, line: 1188, baseType: !365, size: 64, offset: 17152)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1401, file: !1402, line: 1191, baseType: !2447, size: 64, offset: 17216)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1402, line: 44, flags: DIFlagFwdDecl)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1401, file: !1402, line: 1194, baseType: !2450, size: 64, offset: 17280)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1402, line: 45, flags: DIFlagFwdDecl)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1401, file: !1402, line: 1197, baseType: !2453, size: 64, offset: 17344)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1402, line: 61, flags: DIFlagFwdDecl)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1401, file: !1402, line: 1199, baseType: !2456, size: 64, offset: 17408)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2458, line: 99, size: 128, elements: !2459)
!2458 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2459 = !{!2460, !2461, !2462}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2457, file: !2458, line: 100, baseType: !837, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2457, file: !2458, line: 101, baseType: !403, size: 32, offset: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2457, file: !2458, line: 103, baseType: !464, size: 16, offset: 96)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1401, file: !1402, line: 1202, baseType: !2464, size: 64, offset: 17472)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1402, line: 48, flags: DIFlagFwdDecl)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1401, file: !1402, line: 1205, baseType: !368, size: 64, offset: 17536)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1401, file: !1402, line: 1206, baseType: !2468, size: 64, offset: 17600)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2164, line: 14, baseType: !2470)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2164, line: 12, size: 384, elements: !2471)
!2471 = !{!2472}
!2472 = !DIDerivedType(tag: DW_TAG_member, scope: !2470, file: !2164, line: 13, baseType: !2473, size: 384)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2470, file: !2164, line: 13, size: 384, elements: !2474)
!2474 = !{!2475, !2476, !2477, !2478}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2473, file: !2164, line: 13, baseType: !109, size: 32)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2473, file: !2164, line: 13, baseType: !109, size: 32, offset: 32)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2473, file: !2164, line: 13, baseType: !109, size: 32, offset: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2473, file: !2164, line: 13, baseType: !2479, size: 256, offset: 128)
!2479 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2480, line: 37, size: 256, elements: !2481)
!2480 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2481 = !{!2482, !2487, !2500, !2506, !2515, !2542, !2547}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2479, file: !2480, line: 42, baseType: !2483, size: 64)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2479, file: !2480, line: 39, size: 64, elements: !2484)
!2484 = !{!2485, !2486}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2483, file: !2480, line: 40, baseType: !1944, size: 32)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2483, file: !2480, line: 41, baseType: !584, size: 32, offset: 32)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2479, file: !2480, line: 50, baseType: !2488, size: 192)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2479, file: !2480, line: 45, size: 192, elements: !2489)
!2489 = !{!2490, !2492, !2493, !2499}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2488, file: !2480, line: 46, baseType: !2491, size: 32)
!2491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !528, line: 95, baseType: !109)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2488, file: !2480, line: 47, baseType: !109, size: 32, offset: 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2488, file: !2480, line: 48, baseType: !2494, size: 64, offset: 64)
!2494 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2480, line: 11, baseType: !2495)
!2495 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2480, line: 8, size: 64, elements: !2496)
!2496 = !{!2497, !2498}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2495, file: !2480, line: 9, baseType: !109, size: 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2495, file: !2480, line: 10, baseType: !365, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2488, file: !2480, line: 49, baseType: !109, size: 32, offset: 128)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2479, file: !2480, line: 57, baseType: !2501, size: 128)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2479, file: !2480, line: 53, size: 128, elements: !2502)
!2502 = !{!2503, !2504, !2505}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2501, file: !2480, line: 54, baseType: !1944, size: 32)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2501, file: !2480, line: 55, baseType: !584, size: 32, offset: 32)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2501, file: !2480, line: 56, baseType: !2494, size: 64, offset: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2479, file: !2480, line: 66, baseType: !2507, size: 256)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2479, file: !2480, line: 60, size: 256, elements: !2508)
!2508 = !{!2509, !2510, !2511, !2512, !2514}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2507, file: !2480, line: 61, baseType: !1944, size: 32)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2507, file: !2480, line: 62, baseType: !584, size: 32, offset: 32)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2507, file: !2480, line: 63, baseType: !109, size: 32, offset: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2507, file: !2480, line: 64, baseType: !2513, size: 64, offset: 128)
!2513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !528, line: 94, baseType: !529)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2507, file: !2480, line: 65, baseType: !2513, size: 64, offset: 192)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2479, file: !2480, line: 105, baseType: !2516, size: 256)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2479, file: !2480, line: 69, size: 256, elements: !2517)
!2517 = !{!2518, !2519}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2516, file: !2480, line: 70, baseType: !365, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, scope: !2516, file: !2480, line: 79, baseType: !2520, size: 192, offset: 64)
!2520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2516, file: !2480, line: 79, size: 192, elements: !2521)
!2521 = !{!2522, !2523, !2524, !2531, !2536}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2520, file: !2480, line: 81, baseType: !109, size: 32)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2520, file: !2480, line: 86, baseType: !971, size: 16)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2520, file: !2480, line: 92, baseType: !2525, size: 192)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2520, file: !2480, line: 88, size: 192, elements: !2526)
!2526 = !{!2527, !2529, !2530}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2525, file: !2480, line: 89, baseType: !2528, size: 64)
!2528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 64, elements: !1555)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2525, file: !2480, line: 90, baseType: !365, size: 64, offset: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2525, file: !2480, line: 91, baseType: !365, size: 64, offset: 128)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2520, file: !2480, line: 97, baseType: !2532, size: 96)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2520, file: !2480, line: 94, size: 96, elements: !2533)
!2533 = !{!2534, !2535}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2532, file: !2480, line: 95, baseType: !2528, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2532, file: !2480, line: 96, baseType: !642, size: 32, offset: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2520, file: !2480, line: 103, baseType: !2537, size: 128)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2520, file: !2480, line: 99, size: 128, elements: !2538)
!2538 = !{!2539, !2540, !2541}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2537, file: !2480, line: 100, baseType: !368, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2537, file: !2480, line: 101, baseType: !642, size: 32, offset: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2537, file: !2480, line: 102, baseType: !642, size: 32, offset: 96)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2479, file: !2480, line: 111, baseType: !2543, size: 128)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2479, file: !2480, line: 108, size: 128, elements: !2544)
!2544 = !{!2545, !2546}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2543, file: !2480, line: 109, baseType: !373, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2543, file: !2480, line: 110, baseType: !109, size: 32, offset: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2479, file: !2480, line: 118, baseType: !2548, size: 128)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2479, file: !2480, line: 114, size: 128, elements: !2549)
!2549 = !{!2550, !2551, !2552}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2548, file: !2480, line: 115, baseType: !365, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2548, file: !2480, line: 116, baseType: !109, size: 32, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2548, file: !2480, line: 117, baseType: !7, size: 32, offset: 96)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1401, file: !1402, line: 1208, baseType: !2332, size: 448, offset: 17664)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1401, file: !1402, line: 1215, baseType: !645, size: 64, offset: 18112)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1401, file: !1402, line: 1217, baseType: !645, size: 64, offset: 18176)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1401, file: !1402, line: 1219, baseType: !645, size: 64, offset: 18240)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1401, file: !1402, line: 1223, baseType: !2558, size: 64, offset: 18304)
!2558 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2559, line: 99, baseType: !2560)
!2559 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2559, line: 99, size: 64, elements: !2561)
!2561 = !{!2562}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2560, file: !2559, line: 99, baseType: !1639, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1401, file: !1402, line: 1225, baseType: !613, size: 32, offset: 18368)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1401, file: !1402, line: 1226, baseType: !109, size: 32, offset: 18400)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1401, file: !1402, line: 1227, baseType: !109, size: 32, offset: 18432)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1401, file: !1402, line: 1231, baseType: !2567, size: 64, offset: 18496)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1402, line: 1231, flags: DIFlagFwdDecl)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1401, file: !1402, line: 1233, baseType: !377, size: 128, offset: 18560)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1401, file: !1402, line: 1240, baseType: !2571, size: 64, offset: 18688)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1402, line: 62, flags: DIFlagFwdDecl)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1401, file: !1402, line: 1242, baseType: !2574, size: 64, offset: 18752)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1402, line: 1242, flags: DIFlagFwdDecl)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1401, file: !1402, line: 1244, baseType: !377, size: 128, offset: 18816)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1401, file: !1402, line: 1245, baseType: !2578, size: 64, offset: 18944)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1402, line: 51, flags: DIFlagFwdDecl)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1401, file: !1402, line: 1246, baseType: !833, size: 256, offset: 19008)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1401, file: !1402, line: 1247, baseType: !7, size: 32, offset: 19264)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1401, file: !1402, line: 1250, baseType: !2583, size: 64, offset: 19328)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1402, line: 57, flags: DIFlagFwdDecl)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1401, file: !1402, line: 1251, baseType: !833, size: 256, offset: 19392)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1401, file: !1402, line: 1252, baseType: !377, size: 128, offset: 19648)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1401, file: !1402, line: 1259, baseType: !2588, size: 64, offset: 19776)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !38, line: 717, flags: DIFlagFwdDecl)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1401, file: !1402, line: 1260, baseType: !971, size: 16, offset: 19840)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1401, file: !1402, line: 1261, baseType: !971, size: 16, offset: 19856)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1401, file: !1402, line: 1314, baseType: !2593, size: 64, offset: 19904)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2595, line: 62, size: 256, align: 256, elements: !2596)
!2595 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2596 = !{!2597, !2598, !2599, !2600, !2601, !2602, !2603}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2594, file: !2595, line: 75, baseType: !642, size: 32)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2594, file: !2595, line: 90, baseType: !642, size: 32, offset: 32)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2594, file: !2595, line: 112, baseType: !646, size: 64, offset: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2594, file: !2595, line: 132, baseType: !642, size: 32, offset: 128)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2594, file: !2595, line: 140, baseType: !642, size: 32, offset: 160)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2594, file: !2595, line: 149, baseType: !642, size: 32, offset: 192)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2594, file: !2595, line: 154, baseType: !2604, offset: 224)
!2604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, elements: !1861)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1401, file: !1402, line: 1315, baseType: !641, size: 32, offset: 19968)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1401, file: !1402, line: 1316, baseType: !641, size: 32, offset: 20000)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1401, file: !1402, line: 1321, baseType: !368, size: 64, offset: 20032)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1401, file: !1402, line: 1325, baseType: !109, size: 32, offset: 20096)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1401, file: !1402, line: 1326, baseType: !109, size: 32, offset: 20128)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1401, file: !1402, line: 1327, baseType: !109, size: 32, offset: 20160)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1401, file: !1402, line: 1328, baseType: !109, size: 32, offset: 20192)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1401, file: !1402, line: 1329, baseType: !1053, size: 128, align: 64, offset: 20224)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1401, file: !1402, line: 1332, baseType: !2614, size: 128, offset: 20352)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2615, line: 51, size: 128, elements: !2616)
!2615 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2616 = !{!2617, !2622, !2623}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2614, file: !2615, line: 60, baseType: !2618, size: 64)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2619, line: 7, size: 64, elements: !2620)
!2619 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2620 = !{!2621}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2618, file: !2619, line: 12, baseType: !1636, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2614, file: !2615, line: 63, baseType: !913, size: 8, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2614, file: !2615, line: 70, baseType: !913, size: 8, offset: 72)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1401, file: !1402, line: 1335, baseType: !2625, size: 64, offset: 20480)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1402, line: 59, flags: DIFlagFwdDecl)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1401, file: !1402, line: 1337, baseType: !2628, size: 128, offset: 20544)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2615, line: 39, size: 128, elements: !2629)
!2629 = !{!2630, !2914, !2915}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2628, file: !2615, line: 40, baseType: !2631, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !2633)
!2633 = !{!2634, !2635, !2908, !2913}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2632, file: !38, line: 75, baseType: !368, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, scope: !2632, file: !38, line: 83, baseType: !2636, size: 320, offset: 64)
!2636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2632, file: !38, line: 83, size: 320, elements: !2637)
!2637 = !{!2638, !2659, !2673, !2677, !2907}
!2638 = !DIDerivedType(tag: DW_TAG_member, scope: !2636, file: !38, line: 84, baseType: !2639, size: 320)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2636, file: !38, line: 84, size: 320, elements: !2640)
!2640 = !{!2641, !2652, !2653, !2658}
!2641 = !DIDerivedType(tag: DW_TAG_member, scope: !2639, file: !38, line: 90, baseType: !2642, size: 128)
!2642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2639, file: !38, line: 90, size: 128, elements: !2643)
!2643 = !{!2644, !2645, !2650, !2651}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2642, file: !38, line: 91, baseType: !377, size: 128)
!2645 = !DIDerivedType(tag: DW_TAG_member, scope: !2642, file: !38, line: 94, baseType: !2646, size: 128)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2642, file: !38, line: 94, size: 128, elements: !2647)
!2647 = !{!2648, !2649}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2646, file: !38, line: 96, baseType: !365, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2646, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2642, file: !38, line: 102, baseType: !377, size: 128)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2642, file: !38, line: 103, baseType: !377, size: 128)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2639, file: !38, line: 106, baseType: !568, size: 64, offset: 128)
!2653 = !DIDerivedType(tag: DW_TAG_member, scope: !2639, file: !38, line: 107, baseType: !2654, size: 64, offset: 192)
!2654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2639, file: !38, line: 107, size: 64, elements: !2655)
!2655 = !{!2656, !2657}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2654, file: !38, line: 108, baseType: !368, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2654, file: !38, line: 109, baseType: !368, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2639, file: !38, line: 117, baseType: !368, size: 64, offset: 256)
!2659 = !DIDerivedType(tag: DW_TAG_member, scope: !2636, file: !38, line: 119, baseType: !2660, size: 320)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2636, file: !38, line: 119, size: 320, elements: !2661)
!2661 = !{!2662, !2663, !2666, !2667, !2668}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2660, file: !38, line: 124, baseType: !368, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2660, file: !38, line: 125, baseType: !2664, size: 64, offset: 64)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2660, file: !38, line: 126, baseType: !368, size: 64, offset: 128)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2660, file: !38, line: 127, baseType: !368, size: 64, offset: 192)
!2668 = !DIDerivedType(tag: DW_TAG_member, scope: !2660, file: !38, line: 128, baseType: !2669, size: 64, offset: 256)
!2669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2660, file: !38, line: 128, size: 64, elements: !2670)
!2670 = !{!2671, !2672}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2669, file: !38, line: 133, baseType: !368, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2669, file: !38, line: 138, baseType: !837, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, scope: !2636, file: !38, line: 141, baseType: !2674, size: 64)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2636, file: !38, line: 141, size: 64, elements: !2675)
!2675 = !{!2676}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2674, file: !38, line: 142, baseType: !368, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, scope: !2636, file: !38, line: 144, baseType: !2678, size: 128)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2636, file: !38, line: 144, size: 128, elements: !2679)
!2679 = !{!2680, !2906}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2678, file: !38, line: 146, baseType: !2681, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !30, line: 126, size: 1216, elements: !2683)
!2683 = !{!2684, !2694, !2715, !2716, !2717, !2718, !2719, !2888, !2889, !2890}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2682, file: !30, line: 127, baseType: !2685, size: 384)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !30, line: 21, size: 384, elements: !2686)
!2686 = !{!2687, !2688, !2690, !2691, !2692, !2693}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2685, file: !30, line: 22, baseType: !368, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2685, file: !30, line: 23, baseType: !2689, size: 64, offset: 64)
!2689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2685, file: !30, line: 24, baseType: !2689, size: 64, offset: 128)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2685, file: !30, line: 25, baseType: !368, size: 64, offset: 192)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2685, file: !30, line: 26, baseType: !368, size: 64, offset: 256)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2685, file: !30, line: 27, baseType: !368, size: 64, offset: 320)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2682, file: !30, line: 128, baseType: !2695, size: 128, offset: 384)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2696, line: 105, size: 128, elements: !2697)
!2696 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2697 = !{!2698, !2699}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2695, file: !2696, line: 110, baseType: !368, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2695, file: !2696, line: 118, baseType: !2700, size: 64, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2696, line: 95, size: 448, elements: !2702)
!2702 = !{!2703, !2704, !2710, !2711, !2712, !2713, !2714}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2701, file: !2696, line: 96, baseType: !837, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2701, file: !2696, line: 97, baseType: !2705, size: 64, offset: 64)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2696, line: 60, baseType: !2707)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{null, !2709}
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2701, file: !2696, line: 98, baseType: !2705, size: 64, offset: 128)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2701, file: !2696, line: 99, baseType: !913, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2701, file: !2696, line: 100, baseType: !913, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2701, file: !2696, line: 101, baseType: !1053, size: 128, align: 64, offset: 256)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2701, file: !2696, line: 102, baseType: !2709, size: 64, offset: 384)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2682, file: !30, line: 129, baseType: !782, size: 256, offset: 512)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2682, file: !30, line: 130, baseType: !29, size: 32, offset: 768)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2682, file: !30, line: 131, baseType: !7, size: 32, offset: 800)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2682, file: !30, line: 132, baseType: !368, size: 64, offset: 832)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2682, file: !30, line: 133, baseType: !2720, size: 64, offset: 896)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2722)
!2722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !30, line: 77, size: 192, elements: !2723)
!2723 = !{!2724, !2728, !2884}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2722, file: !30, line: 83, baseType: !2725, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{null, !2631}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2722, file: !30, line: 89, baseType: !2729, size: 64, offset: 64)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!2732, !2733}
!2732 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2735, line: 512, size: 896, elements: !2736)
!2735 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2736 = !{!2737, !2851, !2852, !2859, !2866, !2876, !2877, !2878, !2880, !2882}
!2737 = !DIDerivedType(tag: DW_TAG_member, scope: !2734, file: !2735, line: 513, baseType: !2738, size: 320)
!2738 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2734, file: !2735, line: 513, size: 320, elements: !2739)
!2739 = !{!2740, !2847, !2848, !2849, !2850}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2738, file: !2735, line: 514, baseType: !2741, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !2743)
!2743 = !{!2744, !2753, !2754, !2760, !2767, !2768, !2773, !2774, !2779, !2780, !2783, !2840, !2841, !2842, !2843, !2844, !2845}
!2744 = !DIDerivedType(tag: DW_TAG_member, scope: !2742, file: !38, line: 628, baseType: !2745, size: 128)
!2745 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2742, file: !38, line: 628, size: 128, elements: !2746)
!2746 = !{!2747, !2752}
!2747 = !DIDerivedType(tag: DW_TAG_member, scope: !2745, file: !38, line: 629, baseType: !2748, size: 128)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2745, file: !38, line: 629, size: 128, elements: !2749)
!2749 = !{!2750, !2751}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2748, file: !38, line: 631, baseType: !368, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2748, file: !38, line: 632, baseType: !368, size: 64, offset: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2745, file: !38, line: 635, baseType: !1053, size: 128, align: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2742, file: !38, line: 639, baseType: !1688, size: 64, offset: 128)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2742, file: !38, line: 640, baseType: !2755, size: 64, offset: 192)
!2755 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1724, line: 297, baseType: !2756)
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1724, line: 297, size: 64, elements: !2757)
!2757 = !{!2758}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2756, file: !1724, line: 297, baseType: !2759, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1729, line: 19, baseType: !368)
!2760 = !DIDerivedType(tag: DW_TAG_member, scope: !2742, file: !38, line: 646, baseType: !2761, size: 64, offset: 256)
!2761 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2742, file: !38, line: 646, size: 64, elements: !2762)
!2762 = !{!2763, !2766}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2761, file: !38, line: 647, baseType: !2764, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2765)
!2765 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !368)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2761, file: !38, line: 648, baseType: !2765, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2742, file: !38, line: 666, baseType: !109, size: 32, offset: 320)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2742, file: !38, line: 667, baseType: !2769, size: 64, offset: 384)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !2771)
!2771 = !{!2772}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2770, file: !38, line: 580, baseType: !1743, size: 320)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2742, file: !38, line: 670, baseType: !913, size: 8, offset: 448)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2742, file: !38, line: 681, baseType: !2775, size: 256, offset: 512)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2742, file: !38, line: 678, size: 256, elements: !2776)
!2776 = !{!2777, !2778}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2775, file: !38, line: 679, baseType: !945, size: 192, align: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2775, file: !38, line: 680, baseType: !368, size: 64, offset: 192)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2742, file: !38, line: 689, baseType: !377, size: 128, offset: 768)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2742, file: !38, line: 691, baseType: !2781, size: 64, offset: 896)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2742, file: !38, line: 694, baseType: !2784, size: 64, offset: 960)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2786)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2735, line: 563, size: 1024, elements: !2787)
!2787 = !{!2788, !2792, !2793, !2797, !2801, !2805, !2806, !2810, !2814, !2818, !2819, !2820, !2824, !2828, !2832, !2836}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2786, file: !2735, line: 564, baseType: !2789, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{null, !2741}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2786, file: !2735, line: 569, baseType: !2789, size: 64, offset: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2786, file: !2735, line: 571, baseType: !2794, size: 64, offset: 128)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!109, !2741, !368}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2786, file: !2735, line: 572, baseType: !2798, size: 64, offset: 192)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!109, !2741}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2786, file: !2735, line: 578, baseType: !2802, size: 64, offset: 256)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!109, !2741, !368, !368, !368}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2786, file: !2735, line: 580, baseType: !2729, size: 64, offset: 320)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2786, file: !2735, line: 581, baseType: !2807, size: 64, offset: 384)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!2732, !2733, !7}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2786, file: !2735, line: 582, baseType: !2811, size: 64, offset: 448)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!2732, !2733, !368, !368}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2786, file: !2735, line: 584, baseType: !2815, size: 64, offset: 512)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!368, !2741}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2786, file: !2735, line: 588, baseType: !2729, size: 64, offset: 576)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2786, file: !2735, line: 591, baseType: !2729, size: 64, offset: 640)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2786, file: !2735, line: 597, baseType: !2821, size: 64, offset: 704)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!109, !2741, !368, !365, !109, !109}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2786, file: !2735, line: 603, baseType: !2825, size: 64, offset: 768)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!416, !2741}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2786, file: !2735, line: 613, baseType: !2829, size: 64, offset: 832)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!109, !2741, !2588}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2786, file: !2735, line: 625, baseType: !2833, size: 64, offset: 896)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!2588, !2741, !368}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2786, file: !2735, line: 633, baseType: !2837, size: 64, offset: 960)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!2631, !2741, !368}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2742, file: !38, line: 697, baseType: !368, size: 64, offset: 1024)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2742, file: !38, line: 699, baseType: !1715, size: 64, offset: 1088)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2742, file: !38, line: 700, baseType: !365, size: 64, offset: 1152)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2742, file: !38, line: 711, baseType: !837, size: 64, offset: 1216)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2742, file: !38, line: 717, baseType: !2588, size: 64, offset: 1280)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2742, file: !38, line: 722, baseType: !2846, offset: 1344)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !1121)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2738, file: !2735, line: 515, baseType: !366, size: 32, offset: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2738, file: !2735, line: 516, baseType: !368, size: 64, offset: 128)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2738, file: !2735, line: 517, baseType: !368, size: 64, offset: 192)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2738, file: !2735, line: 518, baseType: !368, size: 64, offset: 256)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2734, file: !2735, line: 520, baseType: !37, size: 32, offset: 320)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2734, file: !2735, line: 522, baseType: !2853, size: 64, offset: 384)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1729, line: 22, baseType: !2855)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1729, line: 22, size: 64, elements: !2856)
!2856 = !{!2857}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2855, file: !1729, line: 22, baseType: !2858, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1729, line: 15, baseType: !368)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2734, file: !2735, line: 524, baseType: !2860, size: 64, offset: 448)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1724, line: 372, baseType: !2862)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1724, line: 372, size: 64, elements: !2863)
!2863 = !{!2864}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2862, file: !1724, line: 372, baseType: !2865, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1729, line: 16, baseType: !368)
!2866 = !DIDerivedType(tag: DW_TAG_member, scope: !2734, file: !2735, line: 527, baseType: !2867, size: 64, offset: 512)
!2867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2734, file: !2735, line: 527, size: 64, elements: !2868)
!2868 = !{!2869, !2875}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2867, file: !2735, line: 528, baseType: !2870, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1729, line: 21, baseType: !2871)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1729, line: 21, size: 64, elements: !2872)
!2872 = !{!2873}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2871, file: !1729, line: 21, baseType: !2874, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1729, line: 14, baseType: !368)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2867, file: !2735, line: 529, baseType: !2854, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2734, file: !2735, line: 534, baseType: !2631, size: 64, offset: 576)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2734, file: !2735, line: 535, baseType: !2631, size: 64, offset: 640)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2734, file: !2735, line: 541, baseType: !2879, size: 64, offset: 704)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2734, file: !2735, line: 545, baseType: !2881, size: 64, offset: 768)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2734, file: !2735, line: 549, baseType: !2883, size: 64, offset: 832)
!2883 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1724, line: 520, baseType: !2631)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2722, file: !30, line: 100, baseType: !2885, size: 64, offset: 128)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!109, !2681, !368, !368, !109}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2682, file: !30, line: 134, baseType: !365, size: 64, offset: 960)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2682, file: !30, line: 135, baseType: !109, size: 32, offset: 1024)
!2890 = !DIDerivedType(tag: DW_TAG_member, scope: !2682, file: !30, line: 136, baseType: !2891, size: 128, offset: 1088)
!2891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2682, file: !30, line: 136, size: 128, elements: !2892)
!2892 = !{!2893, !2899}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2891, file: !30, line: 137, baseType: !2894, size: 128)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2895, line: 6, size: 128, elements: !2896)
!2895 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2896 = !{!2897, !2898}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2894, file: !2895, line: 7, baseType: !645, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2894, file: !2895, line: 8, baseType: !645, size: 64, offset: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, scope: !2891, file: !30, line: 138, baseType: !2900)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2891, file: !30, line: 138, elements: !2901)
!2901 = !{!2902, !2904}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2900, file: !30, line: 138, baseType: !2903)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2900, file: !30, line: 138, elements: !1121)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2900, file: !30, line: 138, baseType: !2905)
!2905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2894, elements: !1861)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2678, file: !38, line: 147, baseType: !365, size: 64, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2636, file: !38, line: 161, baseType: !1053, size: 128, align: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, scope: !2632, file: !38, line: 164, baseType: !2909, size: 32, offset: 384)
!2909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2632, file: !38, line: 164, size: 32, elements: !2910)
!2910 = !{!2911, !2912}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2909, file: !38, line: 169, baseType: !403, size: 32)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2909, file: !38, line: 177, baseType: !7, size: 32)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2632, file: !38, line: 181, baseType: !403, size: 32, offset: 416)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2628, file: !2615, line: 42, baseType: !642, size: 32, offset: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2628, file: !2615, line: 43, baseType: !642, size: 32, offset: 96)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1401, file: !1402, line: 1340, baseType: !2917, size: 64, offset: 20672)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1402, line: 69, flags: DIFlagFwdDecl)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1401, file: !1402, line: 1351, baseType: !109, size: 32, offset: 20736)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1401, file: !1402, line: 1352, baseType: !109, size: 32, offset: 20768)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1401, file: !1402, line: 1354, baseType: !368, size: 64, offset: 20800)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1401, file: !1402, line: 1364, baseType: !645, size: 64, offset: 20864)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1401, file: !1402, line: 1365, baseType: !645, size: 64, offset: 20928)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1401, file: !1402, line: 1412, baseType: !368, size: 64, offset: 20992)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1401, file: !1402, line: 1453, baseType: !2926, size: 64, offset: 21056)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1402, line: 1453, flags: DIFlagFwdDecl)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1401, file: !1402, line: 1457, baseType: !2929, size: 64, offset: 21120)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !54, line: 61, size: 576, elements: !2931)
!2931 = !{!2932, !2933, !2952, !2955, !2956, !2989, !2999}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2930, file: !54, line: 62, baseType: !53, size: 32)
!2933 = !DIDerivedType(tag: DW_TAG_member, scope: !2930, file: !54, line: 64, baseType: !2934, size: 192, offset: 64)
!2934 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2930, file: !54, line: 64, size: 192, elements: !2935)
!2935 = !{!2936, !2947}
!2936 = !DIDerivedType(tag: DW_TAG_member, scope: !2934, file: !54, line: 65, baseType: !2937, size: 192)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2934, file: !54, line: 65, size: 192, elements: !2938)
!2938 = !{!2939, !2946}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2937, file: !54, line: 66, baseType: !2940, size: 128)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2941, line: 50, size: 128, elements: !2942)
!2941 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2942 = !{!2943, !2944, !2945}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2940, file: !2941, line: 52, baseType: !368, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2940, file: !2941, line: 54, baseType: !7, size: 32, offset: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2940, file: !2941, line: 55, baseType: !7, size: 32, offset: 96)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2937, file: !54, line: 67, baseType: !368, size: 64, offset: 128)
!2947 = !DIDerivedType(tag: DW_TAG_member, scope: !2934, file: !54, line: 70, baseType: !2948, size: 192)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2934, file: !54, line: 70, size: 192, elements: !2949)
!2949 = !{!2950, !2951}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2948, file: !54, line: 71, baseType: !1053, size: 128, align: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2948, file: !54, line: 72, baseType: !368, size: 64, offset: 128)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2930, file: !54, line: 76, baseType: !2953, size: 64, offset: 256)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !54, line: 76, flags: DIFlagFwdDecl)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2930, file: !54, line: 77, baseType: !368, size: 64, offset: 320)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2930, file: !54, line: 79, baseType: !2957, size: 64, offset: 384)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2941, line: 25, size: 256, elements: !2959)
!2959 = !{!2960, !2966, !2970}
!2960 = !DIDerivedType(tag: DW_TAG_member, scope: !2958, file: !2941, line: 26, baseType: !2961, size: 128)
!2961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2958, file: !2941, line: 26, size: 128, elements: !2962)
!2962 = !{!2963, !2965}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2961, file: !2941, line: 27, baseType: !2964, size: 128)
!2964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 128, elements: !2183)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2961, file: !2941, line: 28, baseType: !2964, size: 128)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2958, file: !2941, line: 31, baseType: !2967, size: 64, offset: 128)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2969)
!2969 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2941, line: 23, flags: DIFlagFwdDecl)
!2970 = !DIDerivedType(tag: DW_TAG_member, scope: !2958, file: !2941, line: 33, baseType: !2971, size: 64, offset: 192)
!2971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2958, file: !2941, line: 33, size: 64, elements: !2972)
!2972 = !{!2973, !2979, !2984}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2971, file: !2941, line: 38, baseType: !2974, size: 64)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2971, file: !2941, line: 34, size: 64, elements: !2975)
!2975 = !{!2976, !2977, !2978}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2974, file: !2941, line: 35, baseType: !829, size: 32)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2974, file: !2941, line: 36, baseType: !452, size: 8, offset: 32)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2974, file: !2941, line: 37, baseType: !452, size: 8, offset: 40)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2971, file: !2941, line: 42, baseType: !2980, size: 16)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2971, file: !2941, line: 39, size: 16, elements: !2981)
!2981 = !{!2982, !2983}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2980, file: !2941, line: 40, baseType: !452, size: 8)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2980, file: !2941, line: 41, baseType: !452, size: 8, offset: 8)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2971, file: !2941, line: 46, baseType: !2985, size: 16)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2971, file: !2941, line: 43, size: 16, elements: !2986)
!2986 = !{!2987, !2988}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2985, file: !2941, line: 44, baseType: !452, size: 8)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2985, file: !2941, line: 45, baseType: !452, size: 8, offset: 8)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2930, file: !54, line: 81, baseType: !2990, size: 64, offset: 448)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !54, line: 85, size: 384, elements: !2992)
!2992 = !{!2993, !2994, !2995, !2996, !2997, !2998}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2991, file: !54, line: 86, baseType: !2953, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2991, file: !54, line: 87, baseType: !368, size: 64, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2991, file: !54, line: 88, baseType: !368, size: 64, offset: 128)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2991, file: !54, line: 89, baseType: !368, size: 64, offset: 192)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2991, file: !54, line: 90, baseType: !913, size: 8, offset: 256)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2991, file: !54, line: 92, baseType: !2990, size: 64, offset: 320)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2930, file: !54, line: 82, baseType: !7, size: 32, offset: 512)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1401, file: !1402, line: 1463, baseType: !3001, offset: 21184)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1402, line: 739, elements: !1121)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1401, file: !1402, line: 1470, baseType: !1053, size: 128, align: 64, offset: 21184)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1401, file: !1402, line: 1471, baseType: !399, size: 32, offset: 21312)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1401, file: !1402, line: 1472, baseType: !109, size: 32, offset: 21344)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1401, file: !1402, line: 1474, baseType: !1400, size: 64, offset: 21376)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1401, file: !1402, line: 1475, baseType: !1075, size: 320, offset: 21440)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1401, file: !1402, line: 1478, baseType: !3008, size: 64, offset: 21760)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3010, line: 14, flags: DIFlagFwdDecl)
!3010 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1401, file: !1402, line: 1482, baseType: !399, size: 32, offset: 21824)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1401, file: !1402, line: 1489, baseType: !365, size: 64, offset: 21888)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1401, file: !1402, line: 1504, baseType: !365, size: 64, offset: 21952)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1401, file: !1402, line: 1505, baseType: !646, size: 64, offset: 22016)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1401, file: !1402, line: 1506, baseType: !645, size: 64, offset: 22080)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1401, file: !1402, line: 1507, baseType: !646, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1401, file: !1402, line: 1508, baseType: !646, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1401, file: !1402, line: 1509, baseType: !646, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1401, file: !1402, line: 1510, baseType: !1053, size: 128, align: 64, offset: 22208)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1401, file: !1402, line: 1511, baseType: !109, size: 32, offset: 22336)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1401, file: !1402, line: 1515, baseType: !3022, size: 64, offset: 22400)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1319, line: 56, size: 64, elements: !3023)
!3023 = !{!3024}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3022, file: !1319, line: 57, baseType: !1322, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1401, file: !1402, line: 1518, baseType: !3022, size: 64, offset: 22464)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1401, file: !1402, line: 1528, baseType: !1053, size: 128, align: 64, offset: 22528)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1401, file: !1402, line: 1552, baseType: !3028, size: 35328, offset: 23040)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3029, line: 430, size: 35328, elements: !3030)
!3029 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3030 = !{!3031, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3060, !3061, !3062, !3063, !3064, !3065, !3068, !3069, !3070, !3071}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3028, file: !3029, line: 432, baseType: !3032, size: 192)
!3032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3033, size: 192, elements: !495)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3034, line: 16, size: 64, elements: !3035)
!3034 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3035 = !{!3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3033, file: !3034, line: 17, baseType: !462, size: 16)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3033, file: !3034, line: 18, baseType: !462, size: 16, offset: 16)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3033, file: !3034, line: 19, baseType: !462, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3033, file: !3034, line: 19, baseType: !462, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3033, file: !3034, line: 19, baseType: !462, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3033, file: !3034, line: 19, baseType: !462, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3033, file: !3034, line: 19, baseType: !462, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3033, file: !3034, line: 20, baseType: !462, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3033, file: !3034, line: 20, baseType: !462, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3033, file: !3034, line: 20, baseType: !462, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3033, file: !3034, line: 20, baseType: !462, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3033, file: !3034, line: 20, baseType: !462, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3033, file: !3034, line: 20, baseType: !462, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3028, file: !3029, line: 436, baseType: !368, size: 64, offset: 192)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3028, file: !3029, line: 440, baseType: !464, size: 16, offset: 256)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3028, file: !3029, line: 441, baseType: !464, size: 16, offset: 272)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3028, file: !3029, line: 442, baseType: !464, size: 16, offset: 288)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3028, file: !3029, line: 443, baseType: !464, size: 16, offset: 304)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3028, file: !3029, line: 447, baseType: !368, size: 64, offset: 320)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3028, file: !3029, line: 448, baseType: !368, size: 64, offset: 384)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3028, file: !3029, line: 459, baseType: !3057, size: 256, offset: 448)
!3057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3058, size: 256, elements: !1063)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3029, line: 428, flags: DIFlagFwdDecl)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3028, file: !3029, line: 461, baseType: !368, size: 64, offset: 704)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3028, file: !3029, line: 463, baseType: !368, size: 64, offset: 768)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3028, file: !3029, line: 465, baseType: !368, size: 64, offset: 832)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3028, file: !3029, line: 466, baseType: !368, size: 64, offset: 896)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3028, file: !3029, line: 467, baseType: !368, size: 64, offset: 960)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3028, file: !3029, line: 473, baseType: !3066, size: 64, offset: 1024)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3029, line: 10, flags: DIFlagFwdDecl)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3028, file: !3029, line: 480, baseType: !368, size: 64, offset: 1088)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3028, file: !3029, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3028, file: !3029, line: 491, baseType: !641, size: 32, offset: 1184)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3028, file: !3029, line: 501, baseType: !3072, size: 33792, offset: 1536)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3073, line: 448, size: 33792, elements: !3074)
!3073 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3074 = !{!3075, !3076, !3077, !3239, !3240, !3246, !3247}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3072, file: !3073, line: 461, baseType: !7, size: 32)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3072, file: !3073, line: 468, baseType: !368, size: 64, offset: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3072, file: !3073, line: 476, baseType: !3078, size: 64, offset: 128)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3073, line: 356, size: 33280, align: 512, elements: !3080)
!3080 = !{!3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3079, file: !3073, line: 358, baseType: !7, size: 32)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3079, file: !3073, line: 361, baseType: !7, size: 32, offset: 32)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3079, file: !3073, line: 364, baseType: !645, size: 64, offset: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3079, file: !3073, line: 367, baseType: !645, size: 64, offset: 128)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3079, file: !3073, line: 370, baseType: !645, size: 64, offset: 192)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3079, file: !3073, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3079, file: !3073, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3079, file: !3073, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3079, file: !3073, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3079, file: !3073, line: 397, baseType: !3091, size: 32768, offset: 512)
!3091 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3073, line: 348, size: 32768, elements: !3092)
!3092 = !{!3093, !3108, !3145, !3222, !3235}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3091, file: !3073, line: 349, baseType: !3094, size: 896)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3073, line: 12, size: 896, elements: !3095)
!3095 = !{!3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3107}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3094, file: !3073, line: 13, baseType: !641, size: 32)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3094, file: !3073, line: 14, baseType: !641, size: 32, offset: 32)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3094, file: !3073, line: 15, baseType: !641, size: 32, offset: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3094, file: !3073, line: 16, baseType: !641, size: 32, offset: 96)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3094, file: !3073, line: 17, baseType: !641, size: 32, offset: 128)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3094, file: !3073, line: 18, baseType: !641, size: 32, offset: 160)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3094, file: !3073, line: 19, baseType: !641, size: 32, offset: 192)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3094, file: !3073, line: 22, baseType: !3104, size: 640, offset: 224)
!3104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 640, elements: !3105)
!3105 = !{!3106}
!3106 = !DISubrange(count: 20)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3094, file: !3073, line: 25, baseType: !641, size: 32, offset: 864)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3091, file: !3073, line: 350, baseType: !3109, size: 4096, align: 128)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3073, line: 34, size: 4096, align: 128, elements: !3110)
!3110 = !{!3111, !3112, !3113, !3114, !3115, !3130, !3131, !3132, !3134, !3136, !3140}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3109, file: !3073, line: 35, baseType: !462, size: 16)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3109, file: !3073, line: 36, baseType: !462, size: 16, offset: 16)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3109, file: !3073, line: 37, baseType: !462, size: 16, offset: 32)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3109, file: !3073, line: 38, baseType: !462, size: 16, offset: 48)
!3115 = !DIDerivedType(tag: DW_TAG_member, scope: !3109, file: !3073, line: 39, baseType: !3116, size: 128, offset: 64)
!3116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3109, file: !3073, line: 39, size: 128, elements: !3117)
!3117 = !{!3118, !3123}
!3118 = !DIDerivedType(tag: DW_TAG_member, scope: !3116, file: !3073, line: 40, baseType: !3119, size: 128)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3116, file: !3073, line: 40, size: 128, elements: !3120)
!3120 = !{!3121, !3122}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3119, file: !3073, line: 41, baseType: !645, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3119, file: !3073, line: 42, baseType: !645, size: 64, offset: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, scope: !3116, file: !3073, line: 44, baseType: !3124, size: 128)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3116, file: !3073, line: 44, size: 128, elements: !3125)
!3125 = !{!3126, !3127, !3128, !3129}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3124, file: !3073, line: 45, baseType: !641, size: 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3124, file: !3073, line: 46, baseType: !641, size: 32, offset: 32)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3124, file: !3073, line: 47, baseType: !641, size: 32, offset: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3124, file: !3073, line: 48, baseType: !641, size: 32, offset: 96)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3109, file: !3073, line: 51, baseType: !641, size: 32, offset: 192)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3109, file: !3073, line: 52, baseType: !641, size: 32, offset: 224)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3109, file: !3073, line: 55, baseType: !3133, size: 1024, offset: 256)
!3133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 1024, elements: !654)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3109, file: !3073, line: 58, baseType: !3135, size: 2048, offset: 1280)
!3135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 2048, elements: !499)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3109, file: !3073, line: 60, baseType: !3137, size: 384, offset: 3328)
!3137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 384, elements: !3138)
!3138 = !{!3139}
!3139 = !DISubrange(count: 12)
!3140 = !DIDerivedType(tag: DW_TAG_member, scope: !3109, file: !3073, line: 62, baseType: !3141, size: 384, offset: 3712)
!3141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3109, file: !3073, line: 62, size: 384, elements: !3142)
!3142 = !{!3143, !3144}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3141, file: !3073, line: 63, baseType: !3137, size: 384)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3141, file: !3073, line: 64, baseType: !3137, size: 384)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3091, file: !3073, line: 351, baseType: !3146, size: 1088)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3073, line: 79, size: 1088, elements: !3147)
!3147 = !{!3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3221}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3146, file: !3073, line: 80, baseType: !641, size: 32)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3146, file: !3073, line: 81, baseType: !641, size: 32, offset: 32)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3146, file: !3073, line: 82, baseType: !641, size: 32, offset: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3146, file: !3073, line: 83, baseType: !641, size: 32, offset: 96)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3146, file: !3073, line: 84, baseType: !641, size: 32, offset: 128)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3146, file: !3073, line: 85, baseType: !641, size: 32, offset: 160)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3146, file: !3073, line: 86, baseType: !641, size: 32, offset: 192)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3146, file: !3073, line: 88, baseType: !3104, size: 640, offset: 224)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3146, file: !3073, line: 89, baseType: !452, size: 8, offset: 864)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3146, file: !3073, line: 90, baseType: !452, size: 8, offset: 872)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3146, file: !3073, line: 91, baseType: !452, size: 8, offset: 880)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3146, file: !3073, line: 92, baseType: !452, size: 8, offset: 888)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3146, file: !3073, line: 93, baseType: !452, size: 8, offset: 896)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3146, file: !3073, line: 94, baseType: !452, size: 8, offset: 904)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3146, file: !3073, line: 95, baseType: !3163, size: 64, offset: 960)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3165, line: 11, size: 128, elements: !3166)
!3165 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3166 = !{!3167, !3168}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3164, file: !3165, line: 12, baseType: !373, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3164, file: !3165, line: 13, baseType: !3169, size: 64, offset: 64)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3171, line: 103, size: 1344, elements: !3172)
!3171 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3172 = !{!3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3201, !3202, !3203}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3170, file: !3171, line: 109, baseType: !368, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3170, file: !3171, line: 110, baseType: !368, size: 64, offset: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3170, file: !3171, line: 111, baseType: !368, size: 64, offset: 128)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3170, file: !3171, line: 112, baseType: !368, size: 64, offset: 192)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3170, file: !3171, line: 113, baseType: !368, size: 64, offset: 256)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3170, file: !3171, line: 114, baseType: !368, size: 64, offset: 320)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3170, file: !3171, line: 117, baseType: !368, size: 64, offset: 384)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3170, file: !3171, line: 118, baseType: !368, size: 64, offset: 448)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3170, file: !3171, line: 119, baseType: !368, size: 64, offset: 512)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3170, file: !3171, line: 120, baseType: !368, size: 64, offset: 576)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3170, file: !3171, line: 121, baseType: !368, size: 64, offset: 640)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3170, file: !3171, line: 122, baseType: !368, size: 64, offset: 704)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3170, file: !3171, line: 123, baseType: !368, size: 64, offset: 768)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3170, file: !3171, line: 124, baseType: !368, size: 64, offset: 832)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3170, file: !3171, line: 125, baseType: !368, size: 64, offset: 896)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3170, file: !3171, line: 139, baseType: !368, size: 64, offset: 960)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3170, file: !3171, line: 142, baseType: !368, size: 64, offset: 1024)
!3190 = !DIDerivedType(tag: DW_TAG_member, scope: !3170, file: !3171, line: 144, baseType: !3191, size: 64, offset: 1088)
!3191 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3170, file: !3171, line: 144, size: 64, elements: !3192)
!3192 = !{!3193, !3194, !3195}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3191, file: !3171, line: 146, baseType: !462, size: 16)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3191, file: !3171, line: 148, baseType: !645, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3191, file: !3171, line: 150, baseType: !3196, size: 64)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3171, line: 59, size: 64, elements: !3197)
!3197 = !{!3198, !3199, !3200}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3196, file: !3171, line: 61, baseType: !645, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3196, file: !3171, line: 63, baseType: !645, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3196, file: !3171, line: 65, baseType: !645, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3170, file: !3171, line: 153, baseType: !368, size: 64, offset: 1152)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3170, file: !3171, line: 154, baseType: !368, size: 64, offset: 1216)
!3203 = !DIDerivedType(tag: DW_TAG_member, scope: !3170, file: !3171, line: 156, baseType: !3204, size: 64, offset: 1280)
!3204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3170, file: !3171, line: 156, size: 64, elements: !3205)
!3205 = !{!3206, !3207, !3208}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3204, file: !3171, line: 158, baseType: !462, size: 16)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3204, file: !3171, line: 160, baseType: !645, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3204, file: !3171, line: 162, baseType: !3209, size: 64)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3171, line: 69, size: 64, elements: !3210)
!3210 = !{!3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3209, file: !3171, line: 71, baseType: !645, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3209, file: !3171, line: 73, baseType: !645, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3209, file: !3171, line: 75, baseType: !645, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3209, file: !3171, line: 77, baseType: !645, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3209, file: !3171, line: 80, baseType: !645, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3209, file: !3171, line: 83, baseType: !645, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3209, file: !3171, line: 86, baseType: !645, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3209, file: !3171, line: 88, baseType: !645, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3209, file: !3171, line: 93, baseType: !645, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3209, file: !3171, line: 100, baseType: !645, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3146, file: !3073, line: 96, baseType: !641, size: 32, offset: 1024)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3091, file: !3073, line: 352, baseType: !3223, size: 4608, align: 512)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3073, line: 333, size: 4608, align: 512, elements: !3224)
!3224 = !{!3225, !3226, !3233}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3223, file: !3073, line: 334, baseType: !3109, size: 4096, align: 128)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3223, file: !3073, line: 335, baseType: !3227, size: 512, offset: 4096)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3073, line: 312, size: 512, elements: !3228)
!3228 = !{!3229, !3230, !3231}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3227, file: !3073, line: 313, baseType: !645, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3227, file: !3073, line: 314, baseType: !645, size: 64, offset: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3227, file: !3073, line: 315, baseType: !3232, size: 384, offset: 128)
!3232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !645, size: 384, elements: !2075)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3223, file: !3073, line: 336, baseType: !3234, offset: 4608)
!3234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, elements: !1861)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3091, file: !3073, line: 353, baseType: !3236, size: 32768)
!3236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 32768, elements: !3237)
!3237 = !{!3238}
!3238 = !DISubrange(count: 4096)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3072, file: !3073, line: 484, baseType: !3078, size: 64, offset: 192)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3072, file: !3073, line: 491, baseType: !3241, size: 128, offset: 256)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3073, line: 404, size: 128, elements: !3242)
!3242 = !{!3243, !3244, !3245}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3241, file: !3073, line: 424, baseType: !645, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3241, file: !3073, line: 432, baseType: !7, size: 32, offset: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3241, file: !3073, line: 440, baseType: !7, size: 32, offset: 96)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3072, file: !3073, line: 498, baseType: !3241, size: 128, offset: 384)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3072, file: !3073, line: 508, baseType: !3079, size: 33280, align: 512, offset: 512)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1381, file: !1382, line: 31, baseType: !3249, size: 64, offset: 448)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3010, line: 11, flags: DIFlagFwdDecl)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1381, file: !1382, line: 32, baseType: !7, size: 32, offset: 512)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1381, file: !1382, line: 33, baseType: !1380, size: 64, offset: 576)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !1381, file: !1382, line: 35, baseType: !3254, size: 64, offset: 640)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !1382, line: 17, flags: DIFlagFwdDecl)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1381, file: !1382, line: 37, baseType: !1843, size: 64, offset: 704)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1381, file: !1382, line: 38, baseType: !2162, size: 64, offset: 768)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1381, file: !1382, line: 39, baseType: !109, size: 32, offset: 832)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1381, file: !1382, line: 40, baseType: !3260, size: 192, offset: 896)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !3261, line: 9, size: 192, elements: !3262)
!3261 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!3262 = !{!3263, !3264, !3268, !3269}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !3260, file: !3261, line: 10, baseType: !837, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3260, file: !3261, line: 11, baseType: !3265, size: 64, offset: 64)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3267)
!3267 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !3261, line: 7, flags: DIFlagFwdDecl)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !3260, file: !3261, line: 12, baseType: !7, size: 32, offset: 128)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3260, file: !3261, line: 13, baseType: !399, size: 32, offset: 160)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !1381, file: !1382, line: 42, baseType: !109, size: 32, offset: 1088)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1333, file: !14, line: 951, baseType: !60, size: 32, offset: 128)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1333, file: !14, line: 952, baseType: !578, size: 32, offset: 160)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1333, file: !14, line: 952, baseType: !578, size: 32, offset: 192)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1333, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1312, file: !14, line: 1012, baseType: !1997, size: 64, offset: 896)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1312, file: !14, line: 1013, baseType: !3277, size: 256, offset: 960)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !3278)
!3278 = !{!3279, !3280, !3281, !3282, !3283, !3284}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3277, file: !14, line: 971, baseType: !368, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3277, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3277, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3277, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3277, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3277, file: !14, line: 976, baseType: !733, size: 64, offset: 192)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1312, file: !14, line: 1014, baseType: !3286, size: 128, offset: 1216)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !3287, line: 8, size: 128, elements: !3288)
!3287 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!3288 = !{!3289, !3290}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !3286, file: !3287, line: 9, baseType: !717, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !3286, file: !3287, line: 10, baseType: !607, size: 64, offset: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1312, file: !14, line: 1015, baseType: !572, size: 64, offset: 1344)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1312, file: !14, line: 1016, baseType: !3293, size: 64, offset: 1408)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3295)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !3296)
!3296 = !{!3297, !3298, !3302, !3306, !3310, !3338, !3339, !3345, !3358, !3366, !3370, !3371, !3375, !3376, !3380, !3385, !3386, !3390, !3394, !3400, !3401, !3405, !3406, !3410, !3414, !3418, !3424, !3428, !3432, !3436, !3440, !3441, !3447}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3295, file: !14, line: 1915, baseType: !762, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3295, file: !14, line: 1916, baseType: !3299, size: 64, offset: 64)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!733, !1715, !733, !109}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3295, file: !14, line: 1917, baseType: !3303, size: 64, offset: 128)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!526, !1715, !494, !540, !1295}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3295, file: !14, line: 1918, baseType: !3307, size: 64, offset: 192)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!526, !1715, !416, !540, !1295}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3295, file: !14, line: 1919, baseType: !3311, size: 64, offset: 256)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!526, !3314, !3336}
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !3316)
!3316 = !{!3317, !3318, !3319, !3323, !3324, !3325, !3326}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !3315, file: !14, line: 374, baseType: !1715, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !3315, file: !14, line: 375, baseType: !733, size: 64, offset: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !3315, file: !14, line: 376, baseType: !3320, size: 64, offset: 128)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{null, !3314, !373}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3315, file: !14, line: 377, baseType: !365, size: 64, offset: 192)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !3315, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !3315, file: !14, line: 379, baseType: !462, size: 16, offset: 288)
!3326 = !DIDerivedType(tag: DW_TAG_member, scope: !3315, file: !14, line: 380, baseType: !3327, size: 64, offset: 320)
!3327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3315, file: !14, line: 380, size: 64, elements: !3328)
!3328 = !{!3329, !3332}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !3327, file: !14, line: 386, baseType: !3330, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !3327, file: !14, line: 395, baseType: !3333, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!526, !365}
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3295, file: !14, line: 1920, baseType: !3311, size: 64, offset: 320)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3295, file: !14, line: 1921, baseType: !3340, size: 64, offset: 384)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!109, !3314, !3343, !7}
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3295, file: !14, line: 1923, baseType: !3346, size: 64, offset: 448)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!109, !1715, !3349}
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !3351)
!3351 = !{!3352, !3357}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3350, file: !14, line: 1859, baseType: !3353, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !3354)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!913, !3349, !416, !109, !733, !645, !7}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3350, file: !14, line: 1860, baseType: !733, size: 64, offset: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3295, file: !14, line: 1924, baseType: !3359, size: 64, offset: 512)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!3362, !1715, !3364}
!3362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3363, line: 59, baseType: !7)
!3363 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !748, line: 31, flags: DIFlagFwdDecl)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3295, file: !14, line: 1925, baseType: !3367, size: 64, offset: 576)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!373, !1715, !7, !368}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3295, file: !14, line: 1926, baseType: !3367, size: 64, offset: 640)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3295, file: !14, line: 1927, baseType: !3372, size: 64, offset: 704)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!109, !1715, !2741}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3295, file: !14, line: 1928, baseType: !368, size: 64, offset: 768)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3295, file: !14, line: 1929, baseType: !3377, size: 64, offset: 832)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!109, !572, !1715}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3295, file: !14, line: 1930, baseType: !3381, size: 64, offset: 896)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!109, !1715, !3384}
!3384 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !365)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3295, file: !14, line: 1931, baseType: !3377, size: 64, offset: 960)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3295, file: !14, line: 1932, baseType: !3387, size: 64, offset: 1024)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!109, !1715, !733, !733, !109}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3295, file: !14, line: 1933, baseType: !3391, size: 64, offset: 1088)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!109, !109, !1715, !109}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3295, file: !14, line: 1934, baseType: !3395, size: 64, offset: 1152)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!109, !1715, !109, !3398}
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3295, file: !14, line: 1935, baseType: !1712, size: 64, offset: 1216)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3295, file: !14, line: 1936, baseType: !3402, size: 64, offset: 1280)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!109, !109}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3295, file: !14, line: 1937, baseType: !3395, size: 64, offset: 1344)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3295, file: !14, line: 1938, baseType: !3407, size: 64, offset: 1408)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!526, !2625, !1715, !1295, !540, !7}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3295, file: !14, line: 1939, baseType: !3411, size: 64, offset: 1472)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!526, !1715, !1295, !2625, !540, !7}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3295, file: !14, line: 1940, baseType: !3415, size: 64, offset: 1536)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{null, !1715}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3295, file: !14, line: 1941, baseType: !3419, size: 64, offset: 1600)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!109, !1715, !109, !3422, !3423}
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3295, file: !14, line: 1942, baseType: !3425, size: 64, offset: 1664)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!373, !1715, !109, !733, !733}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3295, file: !14, line: 1944, baseType: !3429, size: 64, offset: 1728)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{null, !1274, !1715}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3295, file: !14, line: 1948, baseType: !3433, size: 64, offset: 1792)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!526, !1715, !733, !1715, !733, !540, !7}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3295, file: !14, line: 1950, baseType: !3437, size: 64, offset: 1856)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!733, !1715, !733, !1715, !733, !733, !7}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3295, file: !14, line: 1953, baseType: !3387, size: 64, offset: 1920)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3295, file: !14, line: 1954, baseType: !3442, size: 64, offset: 1984)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!109, !3445, !7}
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3295, file: !14, line: 1955, baseType: !3448, size: 64, offset: 2048)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!109, !3445, !3343, !7}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1312, file: !14, line: 1018, baseType: !645, size: 64, offset: 1472)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1312, file: !14, line: 1020, baseType: !365, size: 64, offset: 1536)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1312, file: !14, line: 1023, baseType: !365, size: 64, offset: 1600)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1312, file: !14, line: 1027, baseType: !3455, size: 64, offset: 1664)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1312, file: !14, line: 1029, baseType: !568, size: 64, offset: 1728)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1312, file: !14, line: 1030, baseType: !3458, size: 32, offset: 1792)
!3458 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3459, line: 8, baseType: !641)
!3459 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1312, file: !14, line: 1031, baseType: !3458, size: 32, offset: 1824)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1275, file: !1276, line: 29, baseType: !365, size: 64, offset: 896)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1218, file: !14, line: 2077, baseType: !1271, size: 64, offset: 1088)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1218, file: !14, line: 2078, baseType: !1271, size: 64, offset: 1152)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1218, file: !14, line: 2079, baseType: !1271, size: 64, offset: 1216)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1218, file: !14, line: 2081, baseType: !3466, size: 64, offset: 1280)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!526, !723, !109, !494, !540, !733}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1218, file: !14, line: 2082, baseType: !3470, size: 64, offset: 1344)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!526, !723, !109, !416, !540, !733}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1218, file: !14, line: 2083, baseType: !3474, size: 64, offset: 1408)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!3477, !572}
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !69, line: 296, size: 1664, elements: !3480)
!3480 = !{!3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3505, !3506, !3507}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3479, file: !69, line: 297, baseType: !1079, size: 128)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3479, file: !69, line: 298, baseType: !377, size: 128, offset: 128)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3479, file: !69, line: 299, baseType: !377, size: 128, offset: 256)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3479, file: !69, line: 300, baseType: !377, size: 128, offset: 384)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3479, file: !69, line: 301, baseType: !833, size: 256, offset: 512)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3479, file: !69, line: 302, baseType: !428, size: 32, offset: 768)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3479, file: !69, line: 303, baseType: !403, size: 32, offset: 800)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3479, file: !69, line: 304, baseType: !723, size: 64, offset: 832)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3479, file: !69, line: 305, baseType: !3490, size: 64, offset: 896)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !69, line: 68, size: 64, elements: !3491)
!3491 = !{!3492, !3504}
!3492 = !DIDerivedType(tag: DW_TAG_member, scope: !3490, file: !69, line: 69, baseType: !3493, size: 32)
!3493 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3490, file: !69, line: 69, size: 32, elements: !3494)
!3494 = !{!3495, !3496, !3497}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3493, file: !69, line: 70, baseType: !578, size: 32)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3493, file: !69, line: 71, baseType: !587, size: 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3493, file: !69, line: 72, baseType: !3498, size: 32)
!3498 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3499, line: 24, baseType: !3500)
!3499 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3499, line: 22, size: 32, elements: !3501)
!3501 = !{!3502}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3500, file: !3499, line: 23, baseType: !3503, size: 32)
!3503 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3499, line: 20, baseType: !584)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3490, file: !69, line: 74, baseType: !68, size: 32, offset: 32)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3479, file: !69, line: 306, baseType: !733, size: 64, offset: 960)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3479, file: !69, line: 307, baseType: !368, size: 64, offset: 1024)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3479, file: !69, line: 308, baseType: !3508, size: 576, offset: 1088)
!3508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !69, line: 205, size: 576, elements: !3509)
!3509 = !{!3510, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3508, file: !69, line: 206, baseType: !3511, size: 64)
!3511 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !69, line: 66, baseType: !735)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3508, file: !69, line: 207, baseType: !3511, size: 64, offset: 64)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3508, file: !69, line: 208, baseType: !3511, size: 64, offset: 128)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3508, file: !69, line: 209, baseType: !3511, size: 64, offset: 192)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3508, file: !69, line: 210, baseType: !3511, size: 64, offset: 256)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3508, file: !69, line: 211, baseType: !3511, size: 64, offset: 320)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3508, file: !69, line: 212, baseType: !3511, size: 64, offset: 384)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3508, file: !69, line: 213, baseType: !2046, size: 64, offset: 448)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3508, file: !69, line: 214, baseType: !2046, size: 64, offset: 512)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1218, file: !14, line: 2085, baseType: !3521, size: 64, offset: 1472)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!373, !723, !3524}
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3526, line: 15, size: 256, elements: !3527)
!3526 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3527 = !{!3528, !3529, !3530, !3531, !3532}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3525, file: !3526, line: 16, baseType: !366, size: 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3525, file: !3526, line: 19, baseType: !109, size: 32, offset: 32)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3525, file: !3526, line: 26, baseType: !368, size: 64, offset: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3525, file: !3526, line: 33, baseType: !368, size: 64, offset: 128)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3525, file: !3526, line: 36, baseType: !3533, size: 64, offset: 192)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1218, file: !14, line: 2087, baseType: !3521, size: 64, offset: 1536)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1218, file: !14, line: 2089, baseType: !758, size: 64, offset: 1600)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !724, file: !14, line: 1198, baseType: !3538, size: 64, offset: 448)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3540)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !69, line: 324, size: 704, elements: !3541)
!3541 = !{!3542, !3546, !3550, !3554, !3555, !3556, !3557, !3558, !3563, !3568, !3572}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3540, file: !69, line: 325, baseType: !3543, size: 64)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!109, !3478}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3540, file: !69, line: 326, baseType: !3547, size: 64, offset: 64)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{!3478, !723, !109}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3540, file: !69, line: 327, baseType: !3551, size: 64, offset: 128)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{null, !3478}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3540, file: !69, line: 328, baseType: !3543, size: 64, offset: 192)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3540, file: !69, line: 329, baseType: !3543, size: 64, offset: 256)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3540, file: !69, line: 330, baseType: !3543, size: 64, offset: 320)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3540, file: !69, line: 331, baseType: !1246, size: 64, offset: 384)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3540, file: !69, line: 334, baseType: !3559, size: 64, offset: 448)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!3562, !572}
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3540, file: !69, line: 335, baseType: !3564, size: 64, offset: 512)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{!109, !572, !3567}
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3540, file: !69, line: 337, baseType: !3569, size: 64, offset: 576)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!109, !572, !3562}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3540, file: !69, line: 339, baseType: !3573, size: 64, offset: 640)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!109, !723, !3576}
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !724, file: !14, line: 1199, baseType: !3578, size: 64, offset: 512)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3580)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !69, line: 430, size: 704, elements: !3581)
!3581 = !{!3582, !3588, !3589, !3593, !3594, !3595, !3610, !3633, !3637, !3638, !3661}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3580, file: !69, line: 431, baseType: !3583, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!109, !723, !109, !109, !3586}
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3286)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3580, file: !69, line: 432, baseType: !1246, size: 64, offset: 64)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3580, file: !69, line: 433, baseType: !3590, size: 64, offset: 128)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{!109, !723, !7}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3580, file: !69, line: 434, baseType: !3590, size: 64, offset: 192)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3580, file: !69, line: 435, baseType: !1246, size: 64, offset: 256)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3580, file: !69, line: 436, baseType: !3596, size: 64, offset: 320)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!109, !723, !109, !3599}
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !69, line: 417, size: 256, elements: !3601)
!3601 = !{!3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3600, file: !69, line: 418, baseType: !109, size: 32)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3600, file: !69, line: 419, baseType: !7, size: 32, offset: 32)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3600, file: !69, line: 420, baseType: !7, size: 32, offset: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3600, file: !69, line: 422, baseType: !7, size: 32, offset: 96)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3600, file: !69, line: 423, baseType: !7, size: 32, offset: 128)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3600, file: !69, line: 424, baseType: !7, size: 32, offset: 160)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3600, file: !69, line: 425, baseType: !7, size: 32, offset: 192)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3600, file: !69, line: 426, baseType: !7, size: 32, offset: 224)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3580, file: !69, line: 437, baseType: !3611, size: 64, offset: 384)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{!109, !723, !3490, !3614}
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !69, line: 345, size: 960, elements: !3616)
!3616 = !{!3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3615, file: !69, line: 346, baseType: !109, size: 32)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3615, file: !69, line: 347, baseType: !645, size: 64, offset: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3615, file: !69, line: 348, baseType: !645, size: 64, offset: 128)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3615, file: !69, line: 349, baseType: !645, size: 64, offset: 192)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3615, file: !69, line: 350, baseType: !645, size: 64, offset: 256)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3615, file: !69, line: 351, baseType: !645, size: 64, offset: 320)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3615, file: !69, line: 352, baseType: !645, size: 64, offset: 384)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3615, file: !69, line: 353, baseType: !843, size: 64, offset: 448)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3615, file: !69, line: 355, baseType: !843, size: 64, offset: 512)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3615, file: !69, line: 356, baseType: !109, size: 32, offset: 576)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3615, file: !69, line: 357, baseType: !109, size: 32, offset: 608)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3615, file: !69, line: 358, baseType: !645, size: 64, offset: 640)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3615, file: !69, line: 359, baseType: !645, size: 64, offset: 704)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3615, file: !69, line: 360, baseType: !645, size: 64, offset: 768)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3615, file: !69, line: 361, baseType: !843, size: 64, offset: 832)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3615, file: !69, line: 362, baseType: !109, size: 32, offset: 896)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3580, file: !69, line: 438, baseType: !3634, size: 64, offset: 448)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!109, !723, !3576, !3614}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3580, file: !69, line: 440, baseType: !3611, size: 64, offset: 512)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3580, file: !69, line: 441, baseType: !3639, size: 64, offset: 576)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!109, !723, !3642}
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !69, line: 411, size: 1408, elements: !3644)
!3644 = !{!3645, !3646}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3643, file: !69, line: 412, baseType: !7, size: 32)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3643, file: !69, line: 413, baseType: !3647, size: 1344, offset: 64)
!3647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3648, size: 1344, elements: !495)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !69, line: 397, size: 448, elements: !3649)
!3649 = !{!3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3660}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3648, file: !69, line: 398, baseType: !7, size: 32)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3648, file: !69, line: 399, baseType: !7, size: 32, offset: 32)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3648, file: !69, line: 401, baseType: !7, size: 32, offset: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3648, file: !69, line: 402, baseType: !7, size: 32, offset: 96)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3648, file: !69, line: 403, baseType: !7, size: 32, offset: 128)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3648, file: !69, line: 404, baseType: !7, size: 32, offset: 160)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3648, file: !69, line: 405, baseType: !7, size: 32, offset: 192)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3648, file: !69, line: 406, baseType: !647, size: 64, offset: 256)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3648, file: !69, line: 407, baseType: !3659, size: 64, offset: 320)
!3659 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !367, line: 132, baseType: !645)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3648, file: !69, line: 408, baseType: !3659, size: 64, offset: 384)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3580, file: !69, line: 442, baseType: !3590, size: 64, offset: 640)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !724, file: !14, line: 1200, baseType: !3663, size: 64, offset: 576)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3665)
!3665 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !724, file: !14, line: 1201, baseType: !368, size: 64, offset: 640)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !724, file: !14, line: 1202, baseType: !368, size: 64, offset: 704)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !724, file: !14, line: 1203, baseType: !368, size: 64, offset: 768)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !724, file: !14, line: 1204, baseType: !607, size: 64, offset: 832)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !724, file: !14, line: 1205, baseType: !1743, size: 320, offset: 896)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !724, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !724, file: !14, line: 1207, baseType: !403, size: 32, offset: 1248)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !724, file: !14, line: 1209, baseType: !365, size: 64, offset: 1280)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !724, file: !14, line: 1211, baseType: !3675, size: 64, offset: 1344)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3678)
!3678 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !724, file: !14, line: 1223, baseType: !3680, size: 64, offset: 1408)
!3680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !624, line: 34, size: 64, elements: !3681)
!3681 = !{!3682}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3680, file: !624, line: 35, baseType: !627, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !724, file: !14, line: 1224, baseType: !377, size: 128, offset: 1472)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !724, file: !14, line: 1225, baseType: !3685, size: 64, offset: 1600)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !724, file: !14, line: 1226, baseType: !3688, size: 64, offset: 1664)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !724, file: !14, line: 1227, baseType: !3691, size: 64, offset: 1728)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !724, file: !14, line: 1228, baseType: !3694, size: 64, offset: 1792)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !724, file: !14, line: 1229, baseType: !1079, size: 128, offset: 1856)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !724, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !724, file: !14, line: 1231, baseType: !3699, size: 2496, offset: 2048)
!3699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !69, line: 521, size: 2496, elements: !3700)
!3700 = !{!3701, !3702, !3703, !3705, !3737}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3699, file: !69, line: 522, baseType: !7, size: 32)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3699, file: !69, line: 523, baseType: !1743, size: 320, offset: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3699, file: !69, line: 524, baseType: !3704, size: 192, offset: 384)
!3704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 192, elements: !495)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3699, file: !69, line: 525, baseType: !3706, size: 1728, offset: 576)
!3706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3707, size: 1728, elements: !495)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !69, line: 222, size: 576, elements: !3708)
!3708 = !{!3709, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3707, file: !69, line: 223, baseType: !3710, size: 64)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !69, line: 445, size: 256, elements: !3712)
!3712 = !{!3713, !3714, !3727, !3728}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3711, file: !69, line: 446, baseType: !109, size: 32)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3711, file: !69, line: 447, baseType: !3715, size: 64, offset: 64)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3717)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !69, line: 312, size: 512, elements: !3718)
!3718 = !{!3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3717, file: !69, line: 313, baseType: !1246, size: 64)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3717, file: !69, line: 314, baseType: !1246, size: 64, offset: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3717, file: !69, line: 315, baseType: !1246, size: 64, offset: 128)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3717, file: !69, line: 316, baseType: !1246, size: 64, offset: 192)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3717, file: !69, line: 317, baseType: !3543, size: 64, offset: 256)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3717, file: !69, line: 318, baseType: !3543, size: 64, offset: 320)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3717, file: !69, line: 319, baseType: !3543, size: 64, offset: 384)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3717, file: !69, line: 320, baseType: !3573, size: 64, offset: 448)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3711, file: !69, line: 448, baseType: !762, size: 64, offset: 128)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3711, file: !69, line: 449, baseType: !3710, size: 64, offset: 192)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3707, file: !69, line: 224, baseType: !109, size: 32, offset: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3707, file: !69, line: 226, baseType: !377, size: 128, offset: 128)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3707, file: !69, line: 227, baseType: !368, size: 64, offset: 256)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3707, file: !69, line: 228, baseType: !7, size: 32, offset: 320)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3707, file: !69, line: 229, baseType: !7, size: 32, offset: 352)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3707, file: !69, line: 230, baseType: !3511, size: 64, offset: 384)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3707, file: !69, line: 231, baseType: !3511, size: 64, offset: 448)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3707, file: !69, line: 232, baseType: !365, size: 64, offset: 512)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3699, file: !69, line: 526, baseType: !3738, size: 192, offset: 2304)
!3738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3715, size: 192, elements: !495)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !724, file: !14, line: 1233, baseType: !3740, size: 2368, offset: 4544)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !3741)
!3741 = !{!3742, !3743, !3744}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3740, file: !14, line: 1185, baseType: !464, size: 16)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3740, file: !14, line: 1186, baseType: !464, size: 16, offset: 16)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3740, file: !14, line: 1187, baseType: !3745, size: 2304, offset: 64)
!3745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3746, size: 2304, elements: !495)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3747, line: 12, size: 768, elements: !3748)
!3747 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3748 = !{!3749, !3757, !3758, !3763, !3764}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3746, file: !3747, line: 13, baseType: !3750, size: 384)
!3750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3751, line: 17, size: 384, elements: !3752)
!3751 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3752 = !{!3753, !3754, !3755, !3756}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3750, file: !3751, line: 18, baseType: !109, size: 32)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3750, file: !3751, line: 19, baseType: !109, size: 32, offset: 32)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3750, file: !3751, line: 20, baseType: !1367, size: 192, offset: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3750, file: !3751, line: 22, baseType: !1053, size: 128, align: 64, offset: 256)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3746, file: !3747, line: 14, baseType: !905, size: 64, offset: 384)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3746, file: !3747, line: 15, baseType: !3759, size: 64, offset: 448)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3760, line: 16, size: 64, elements: !3761)
!3760 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3761 = !{!3762}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3759, file: !3760, line: 17, baseType: !1400, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3746, file: !3747, line: 16, baseType: !1367, size: 192, offset: 512)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3746, file: !3747, line: 17, baseType: !403, size: 32, offset: 704)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !724, file: !14, line: 1240, baseType: !365, size: 64, offset: 6912)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !724, file: !14, line: 1243, baseType: !641, size: 32, offset: 6976)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !724, file: !14, line: 1245, baseType: !2046, size: 64, offset: 7040)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !724, file: !14, line: 1246, baseType: !2046, size: 64, offset: 7104)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !724, file: !14, line: 1248, baseType: !642, size: 32, offset: 7168)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !724, file: !14, line: 1249, baseType: !3771, size: 64, offset: 7232)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !724, file: !14, line: 1252, baseType: !3774, size: 256, offset: 7296)
!3774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 256, elements: !654)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !724, file: !14, line: 1253, baseType: !3776, size: 128, offset: 7552)
!3776 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3777, line: 21, baseType: !3778)
!3777 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3777, line: 19, size: 128, elements: !3779)
!3779 = !{!3780}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3778, file: !3777, line: 20, baseType: !3781, size: 128)
!3781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 128, elements: !2183)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !724, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !724, file: !14, line: 1261, baseType: !833, size: 256, offset: 7744)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !724, file: !14, line: 1267, baseType: !416, size: 64, offset: 8000)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !724, file: !14, line: 1269, baseType: !670, size: 64, offset: 8064)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !724, file: !14, line: 1271, baseType: !3787, size: 448, offset: 8128)
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3526, line: 63, size: 448, elements: !3788)
!3788 = !{!3789, !3794, !3795, !3796, !3797, !3798, !3799}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3787, file: !3526, line: 64, baseType: !3790, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!368, !3793, !3524}
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3787, file: !3526, line: 66, baseType: !3790, size: 64, offset: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3787, file: !3526, line: 69, baseType: !373, size: 64, offset: 128)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3787, file: !3526, line: 70, baseType: !109, size: 32, offset: 192)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3787, file: !3526, line: 71, baseType: !7, size: 32, offset: 224)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3787, file: !3526, line: 74, baseType: !377, size: 128, offset: 256)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3787, file: !3526, line: 85, baseType: !3800, size: 64, offset: 384)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !724, file: !14, line: 1274, baseType: !837, size: 64, offset: 8576)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !724, file: !14, line: 1280, baseType: !837, size: 64, offset: 8640)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !724, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !724, file: !14, line: 1286, baseType: !3458, size: 32, offset: 8736)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !724, file: !14, line: 1289, baseType: !1154, size: 64, offset: 8768)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !724, file: !14, line: 1290, baseType: !1202, size: 64, offset: 8832)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !724, file: !14, line: 1297, baseType: !1843, size: 64, offset: 8896)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !724, file: !14, line: 1304, baseType: !3809, size: 64, offset: 8960)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3810, line: 49, size: 64, elements: !3811)
!3810 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3811 = !{!3812}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3809, file: !3810, line: 50, baseType: !3813, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3810, line: 41, size: 512, align: 512, elements: !3815)
!3815 = !{!3816, !3817, !3822}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3814, file: !3810, line: 43, baseType: !428, size: 32)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3814, file: !3810, line: 45, baseType: !3818, size: 192, offset: 64)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3810, line: 29, size: 192, elements: !3819)
!3819 = !{!3820, !3821}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3818, file: !3810, line: 30, baseType: !377, size: 128)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3818, file: !3810, line: 32, baseType: !373, size: 64, offset: 128)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3814, file: !3810, line: 46, baseType: !373, size: 64, offset: 256)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !724, file: !14, line: 1305, baseType: !3809, size: 64, offset: 9024)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !724, file: !14, line: 1306, baseType: !1053, size: 128, align: 64, offset: 9088)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !724, file: !14, line: 1307, baseType: !1093, size: 256, offset: 9216)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !724, file: !14, line: 1309, baseType: !833, size: 256, offset: 9472)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !724, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !724, file: !14, line: 1317, baseType: !428, size: 32, align: 512, offset: 10240)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !724, file: !14, line: 1318, baseType: !377, size: 128, offset: 10304)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !724, file: !14, line: 1320, baseType: !428, size: 32, offset: 10432)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !724, file: !14, line: 1321, baseType: !377, size: 128, offset: 10496)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !718, file: !719, line: 73, baseType: !109, size: 32, offset: 128)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !718, file: !719, line: 74, baseType: !3834, size: 64, offset: 192)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !2014, line: 42, flags: DIFlagFwdDecl)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !672, file: !609, line: 141, baseType: !3838, size: 64, offset: 704)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!109, !3586, !913}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !672, file: !609, line: 142, baseType: !3842, size: 64, offset: 768)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!607, !607, !3845}
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !573)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !608, file: !609, line: 96, baseType: !723, size: 64, offset: 832)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !608, file: !609, line: 97, baseType: !368, size: 64, offset: 896)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !608, file: !609, line: 98, baseType: !365, size: 64, offset: 960)
!3850 = !DIDerivedType(tag: DW_TAG_member, scope: !608, file: !609, line: 100, baseType: !3851, size: 128, offset: 1024)
!3851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !608, file: !609, line: 100, size: 128, elements: !3852)
!3852 = !{!3853, !3854}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3851, file: !609, line: 101, baseType: !377, size: 128)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3851, file: !609, line: 102, baseType: !3855, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !608, file: !609, line: 104, baseType: !377, size: 128, offset: 1152)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !608, file: !609, line: 105, baseType: !377, size: 128, offset: 1280)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !608, file: !609, line: 113, baseType: !3859, size: 128, offset: 1408)
!3859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !608, file: !609, line: 109, size: 128, elements: !3860)
!3860 = !{!3861, !3862, !3863}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3859, file: !609, line: 110, baseType: !1079, size: 128)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3859, file: !609, line: 111, baseType: !623, size: 128)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3859, file: !609, line: 112, baseType: !1053, size: 128, align: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !601, file: !14, line: 1968, baseType: !3865, size: 64, offset: 64)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!416, !607, !572, !3868}
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3870, line: 10, size: 128, elements: !3871)
!3870 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3871 = !{!3872, !3873}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3869, file: !3870, line: 11, baseType: !876, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3869, file: !3870, line: 12, baseType: !365, size: 64, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !601, file: !14, line: 1969, baseType: !3875, size: 64, offset: 128)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!109, !3834, !572, !109}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !601, file: !14, line: 1970, baseType: !3879, size: 64, offset: 192)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!595, !572, !109, !913}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !601, file: !14, line: 1972, baseType: !3883, size: 64, offset: 256)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!109, !607, !494, !109}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !601, file: !14, line: 1974, baseType: !3887, size: 64, offset: 320)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!109, !3834, !572, !607, !535, !913}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !601, file: !14, line: 1976, baseType: !3891, size: 64, offset: 384)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!109, !607, !572, !607}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !601, file: !14, line: 1977, baseType: !3895, size: 64, offset: 448)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!109, !572, !607}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !601, file: !14, line: 1978, baseType: !3899, size: 64, offset: 512)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!109, !3834, !572, !607, !416}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !601, file: !14, line: 1980, baseType: !3903, size: 64, offset: 576)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!109, !3834, !572, !607, !535}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !601, file: !14, line: 1982, baseType: !3895, size: 64, offset: 640)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !601, file: !14, line: 1983, baseType: !3908, size: 64, offset: 704)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!109, !3834, !572, !607, !535, !728}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !601, file: !14, line: 1985, baseType: !3912, size: 64, offset: 768)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!109, !3834, !572, !607, !572, !607, !7}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !601, file: !14, line: 1987, baseType: !3916, size: 64, offset: 832)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!109, !3834, !607, !3919}
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3921)
!3921 = !{!3922, !3923, !3924, !3934, !3943, !3944, !3949, !3950, !3951}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3920, file: !14, line: 227, baseType: !7, size: 32)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3920, file: !14, line: 228, baseType: !535, size: 16, offset: 32)
!3924 = !DIDerivedType(tag: DW_TAG_member, scope: !3920, file: !14, line: 241, baseType: !3925, size: 32, offset: 64)
!3925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3920, file: !14, line: 241, size: 32, elements: !3926)
!3926 = !{!3927, !3928}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3925, file: !14, line: 242, baseType: !578, size: 32)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3925, file: !14, line: 243, baseType: !3929, size: 32)
!3929 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3930, line: 16, baseType: !3931)
!3930 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3931 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3930, line: 14, size: 32, elements: !3932)
!3932 = !{!3933}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3931, file: !3930, line: 15, baseType: !583, size: 32)
!3934 = !DIDerivedType(tag: DW_TAG_member, scope: !3920, file: !14, line: 245, baseType: !3935, size: 32, offset: 96)
!3935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3920, file: !14, line: 245, size: 32, elements: !3936)
!3936 = !{!3937, !3938}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3935, file: !14, line: 246, baseType: !587, size: 32)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3935, file: !14, line: 247, baseType: !3939, size: 32)
!3939 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3930, line: 20, baseType: !3940)
!3940 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3930, line: 18, size: 32, elements: !3941)
!3941 = !{!3942}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3940, file: !3930, line: 19, baseType: !591, size: 32)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3920, file: !14, line: 249, baseType: !733, size: 64, offset: 128)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3920, file: !14, line: 250, baseType: !3945, size: 128, offset: 192)
!3945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !2047, line: 13, size: 128, elements: !3946)
!3946 = !{!3947, !3948}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3945, file: !2047, line: 14, baseType: !2046, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3945, file: !2047, line: 15, baseType: !373, size: 64, offset: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3920, file: !14, line: 251, baseType: !3945, size: 128, offset: 320)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3920, file: !14, line: 252, baseType: !3945, size: 128, offset: 448)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3920, file: !14, line: 259, baseType: !1715, size: 64, offset: 576)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !601, file: !14, line: 1988, baseType: !3953, size: 64, offset: 896)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{!109, !3834, !3586, !3956, !641, !7}
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3958, line: 22, size: 1280, elements: !3959)
!3958 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3959 = !{!3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3957, file: !3958, line: 23, baseType: !641, size: 32)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3957, file: !3958, line: 24, baseType: !535, size: 16, offset: 32)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3957, file: !3958, line: 25, baseType: !7, size: 32, offset: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3957, file: !3958, line: 26, baseType: !2054, size: 32, offset: 96)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3957, file: !3958, line: 27, baseType: !645, size: 64, offset: 128)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3957, file: !3958, line: 28, baseType: !645, size: 64, offset: 192)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3957, file: !3958, line: 41, baseType: !645, size: 64, offset: 256)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3957, file: !3958, line: 42, baseType: !728, size: 32, offset: 320)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3957, file: !3958, line: 43, baseType: !728, size: 32, offset: 352)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3957, file: !3958, line: 44, baseType: !578, size: 32, offset: 384)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3957, file: !3958, line: 45, baseType: !587, size: 32, offset: 416)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3957, file: !3958, line: 46, baseType: !733, size: 64, offset: 448)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3957, file: !3958, line: 47, baseType: !3945, size: 128, offset: 512)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3957, file: !3958, line: 48, baseType: !3945, size: 128, offset: 640)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3957, file: !3958, line: 49, baseType: !3945, size: 128, offset: 768)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3957, file: !3958, line: 50, baseType: !3945, size: 128, offset: 896)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3957, file: !3958, line: 51, baseType: !645, size: 64, offset: 1024)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3957, file: !3958, line: 52, baseType: !645, size: 64, offset: 1088)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3957, file: !3958, line: 53, baseType: !641, size: 32, offset: 1152)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3957, file: !3958, line: 54, baseType: !641, size: 32, offset: 1184)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3957, file: !3958, line: 55, baseType: !645, size: 64, offset: 1216)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !601, file: !14, line: 1990, baseType: !3982, size: 64, offset: 960)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!526, !607, !494, !540}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !601, file: !14, line: 1991, baseType: !3986, size: 64, offset: 1024)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!109, !572, !3989, !645, !645}
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !601, file: !14, line: 1993, baseType: !3992, size: 64, offset: 1088)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!109, !572, !109}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !601, file: !14, line: 1994, baseType: !3996, size: 64, offset: 1152)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!109, !572, !607, !1715, !7, !535}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !601, file: !14, line: 1997, baseType: !4000, size: 64, offset: 1216)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!109, !3834, !572, !1715, !535}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !601, file: !14, line: 1999, baseType: !4004, size: 64, offset: 1280)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!595, !3834, !607, !109}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !601, file: !14, line: 2001, baseType: !4008, size: 64, offset: 1344)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!109, !3834, !607, !595, !109}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !601, file: !14, line: 2003, baseType: !4012, size: 64, offset: 1408)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{!109, !3834, !607, !4015}
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !601, file: !14, line: 2005, baseType: !4018, size: 64, offset: 1472)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!109, !607, !4015}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !601, file: !14, line: 2006, baseType: !4022, size: 64, offset: 1536)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{!4025, !572}
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !4027)
!4027 = !{!4028, !4029}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4026, file: !14, line: 3193, baseType: !1389, size: 128)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4026, file: !14, line: 3194, baseType: !641, size: 32, offset: 128)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !573, file: !14, line: 655, baseType: !723, size: 64, offset: 448)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !573, file: !14, line: 656, baseType: !568, size: 64, offset: 512)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !573, file: !14, line: 659, baseType: !365, size: 64, offset: 576)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !573, file: !14, line: 663, baseType: !368, size: 64, offset: 640)
!4034 = !DIDerivedType(tag: DW_TAG_member, scope: !573, file: !14, line: 671, baseType: !4035, size: 32, offset: 704)
!4035 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !573, file: !14, line: 671, size: 32, elements: !4036)
!4036 = !{!4037, !4039}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4035, file: !14, line: 672, baseType: !4038, size: 32)
!4038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4035, file: !14, line: 673, baseType: !7, size: 32)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !573, file: !14, line: 675, baseType: !728, size: 32, offset: 736)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !573, file: !14, line: 676, baseType: !733, size: 64, offset: 768)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !573, file: !14, line: 677, baseType: !3945, size: 128, offset: 832)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !573, file: !14, line: 678, baseType: !3945, size: 128, offset: 960)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !573, file: !14, line: 679, baseType: !3945, size: 128, offset: 1088)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !573, file: !14, line: 680, baseType: !428, size: 32, offset: 1216)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !573, file: !14, line: 681, baseType: !464, size: 16, offset: 1248)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !573, file: !14, line: 682, baseType: !452, size: 8, offset: 1264)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !573, file: !14, line: 683, baseType: !452, size: 8, offset: 1272)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !573, file: !14, line: 684, baseType: !3659, size: 64, offset: 1280)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !573, file: !14, line: 691, baseType: !368, size: 64, offset: 1344)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !573, file: !14, line: 692, baseType: !1743, size: 320, offset: 1408)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !573, file: !14, line: 694, baseType: !368, size: 64, offset: 1728)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !573, file: !14, line: 695, baseType: !368, size: 64, offset: 1792)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !573, file: !14, line: 697, baseType: !1079, size: 128, offset: 1856)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !573, file: !14, line: 698, baseType: !377, size: 128, offset: 1984)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !573, file: !14, line: 707, baseType: !377, size: 128, offset: 2112)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !573, file: !14, line: 708, baseType: !377, size: 128, offset: 2240)
!4058 = !DIDerivedType(tag: DW_TAG_member, scope: !573, file: !14, line: 709, baseType: !4059, size: 128, offset: 2368)
!4059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !573, file: !14, line: 709, size: 128, elements: !4060)
!4060 = !{!4061, !4062}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4059, file: !14, line: 710, baseType: !1202, size: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4059, file: !14, line: 711, baseType: !1053, size: 128, align: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !573, file: !14, line: 713, baseType: !839, size: 64, offset: 2496)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !573, file: !14, line: 714, baseType: !839, size: 64, offset: 2560)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !573, file: !14, line: 715, baseType: !403, size: 32, offset: 2624)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !573, file: !14, line: 716, baseType: !403, size: 32, offset: 2656)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !573, file: !14, line: 717, baseType: !403, size: 32, offset: 2688)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !573, file: !14, line: 719, baseType: !403, size: 32, offset: 2720)
!4069 = !DIDerivedType(tag: DW_TAG_member, scope: !573, file: !14, line: 721, baseType: !4070, size: 64, offset: 2752)
!4070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !573, file: !14, line: 721, size: 64, elements: !4071)
!4071 = !{!4072, !4073}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4070, file: !14, line: 722, baseType: !3293, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4070, file: !14, line: 723, baseType: !1225, size: 64)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !573, file: !14, line: 725, baseType: !4075, size: 64, offset: 2816)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !573, file: !14, line: 726, baseType: !569, size: 1536, align: 64, offset: 2880)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !573, file: !14, line: 727, baseType: !377, size: 128, offset: 4416)
!4079 = !DIDerivedType(tag: DW_TAG_member, scope: !573, file: !14, line: 728, baseType: !4080, size: 64, offset: 4544)
!4080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !573, file: !14, line: 728, size: 64, elements: !4081)
!4081 = !{!4082, !4083, !4086, !4087}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4080, file: !14, line: 729, baseType: !2625, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4080, file: !14, line: 730, baseType: !4084, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4080, file: !14, line: 731, baseType: !494, size: 64)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4080, file: !14, line: 732, baseType: !7, size: 32)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !573, file: !14, line: 735, baseType: !642, size: 32, offset: 4608)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !573, file: !14, line: 738, baseType: !642, size: 32, offset: 4640)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !573, file: !14, line: 739, baseType: !3771, size: 64, offset: 4672)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !573, file: !14, line: 750, baseType: !365, size: 64, offset: 4736)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !569, file: !14, line: 474, baseType: !1389, size: 128, offset: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !569, file: !14, line: 475, baseType: !1743, size: 320, offset: 192)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !569, file: !14, line: 476, baseType: !366, size: 32, offset: 512)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !569, file: !14, line: 477, baseType: !403, size: 32, offset: 544)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !569, file: !14, line: 482, baseType: !1571, size: 128, offset: 576)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !569, file: !14, line: 483, baseType: !368, size: 64, offset: 704)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !569, file: !14, line: 484, baseType: !368, size: 64, offset: 768)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !569, file: !14, line: 485, baseType: !4100, size: 64, offset: 832)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4102)
!4102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !4103)
!4103 = !{!4104, !4108, !4178, !4182, !4186, !4192, !4197, !4201, !4206, !4210, !4214, !4218, !4219, !4223, !4227, !4231, !4236, !4240, !4247, !4248}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4102, file: !14, line: 405, baseType: !4105, size: 64)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{!109, !2631, !1237}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4102, file: !14, line: 406, baseType: !4109, size: 64, offset: 64)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{!109, !1715, !4112}
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !4114)
!4114 = !{!4115, !4145, !4159}
!4115 = !DIDerivedType(tag: DW_TAG_member, scope: !4113, file: !38, line: 295, baseType: !4116, size: 512)
!4116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4113, file: !38, line: 295, size: 512, elements: !4117)
!4117 = !{!4118, !4144}
!4118 = !DIDerivedType(tag: DW_TAG_member, scope: !4116, file: !38, line: 296, baseType: !4119, size: 448)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4116, file: !38, line: 296, size: 448, elements: !4120)
!4120 = !{!4121, !4122, !4131, !4132, !4133, !4142, !4143}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4119, file: !38, line: 298, baseType: !368, size: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, scope: !4119, file: !38, line: 299, baseType: !4123, size: 128, offset: 64)
!4123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4119, file: !38, line: 299, size: 128, elements: !4124)
!4124 = !{!4125, !4126}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4123, file: !38, line: 300, baseType: !377, size: 128)
!4126 = !DIDerivedType(tag: DW_TAG_member, scope: !4123, file: !38, line: 302, baseType: !4127, size: 128)
!4127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4123, file: !38, line: 302, size: 128, elements: !4128)
!4128 = !{!4129, !4130}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4127, file: !38, line: 303, baseType: !365, size: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4127, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4119, file: !38, line: 310, baseType: !568, size: 64, offset: 192)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4119, file: !38, line: 311, baseType: !368, size: 64, offset: 256)
!4133 = !DIDerivedType(tag: DW_TAG_member, scope: !4119, file: !38, line: 312, baseType: !4134, size: 64, offset: 320)
!4134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4119, file: !38, line: 312, size: 64, elements: !4135)
!4135 = !{!4136, !4137}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4134, file: !38, line: 313, baseType: !365, size: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4134, file: !38, line: 314, baseType: !4138, size: 64)
!4138 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !4139)
!4139 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !4140)
!4140 = !{!4141}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4139, file: !38, line: 256, baseType: !368, size: 64)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4119, file: !38, line: 316, baseType: !403, size: 32, offset: 384)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4119, file: !38, line: 317, baseType: !403, size: 32, offset: 416)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4116, file: !38, line: 323, baseType: !2632, size: 512, align: 128)
!4145 = !DIDerivedType(tag: DW_TAG_member, scope: !4113, file: !38, line: 325, baseType: !4146, size: 512, offset: 512)
!4146 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4113, file: !38, line: 325, size: 512, elements: !4147)
!4147 = !{!4148, !4158}
!4148 = !DIDerivedType(tag: DW_TAG_member, scope: !4146, file: !38, line: 326, baseType: !4149, size: 320)
!4149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4146, file: !38, line: 326, size: 320, elements: !4150)
!4150 = !{!4151, !4152, !4153, !4154, !4155, !4156, !4157}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4149, file: !38, line: 327, baseType: !368, size: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4149, file: !38, line: 328, baseType: !368, size: 64, offset: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4149, file: !38, line: 329, baseType: !368, size: 64, offset: 128)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4149, file: !38, line: 331, baseType: !403, size: 32, offset: 192)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4149, file: !38, line: 332, baseType: !403, size: 32, offset: 224)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4149, file: !38, line: 333, baseType: !403, size: 32, offset: 256)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4149, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4146, file: !38, line: 339, baseType: !2632, size: 512, align: 128)
!4159 = !DIDerivedType(tag: DW_TAG_member, scope: !4113, file: !38, line: 341, baseType: !4160, size: 512, offset: 1024)
!4160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4113, file: !38, line: 341, size: 512, elements: !4161)
!4161 = !{!4162, !4171, !4177}
!4162 = !DIDerivedType(tag: DW_TAG_member, scope: !4160, file: !38, line: 342, baseType: !4163, size: 384)
!4163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4160, file: !38, line: 342, size: 384, elements: !4164)
!4164 = !{!4165, !4166, !4167, !4168, !4169, !4170}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4163, file: !38, line: 343, baseType: !368, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4163, file: !38, line: 344, baseType: !368, size: 64, offset: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4163, file: !38, line: 346, baseType: !365, size: 64, offset: 128)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4163, file: !38, line: 347, baseType: !365, size: 64, offset: 192)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4163, file: !38, line: 348, baseType: !365, size: 64, offset: 256)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4163, file: !38, line: 349, baseType: !365, size: 64, offset: 320)
!4171 = !DIDerivedType(tag: DW_TAG_member, scope: !4160, file: !38, line: 352, baseType: !4172, size: 256)
!4172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4160, file: !38, line: 352, size: 256, elements: !4173)
!4173 = !{!4174, !4175, !4176}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4172, file: !38, line: 353, baseType: !368, size: 64)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4172, file: !38, line: 354, baseType: !368, size: 64, offset: 64)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4172, file: !38, line: 356, baseType: !377, size: 128, offset: 128)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4160, file: !38, line: 359, baseType: !2632, size: 512, align: 128)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4102, file: !14, line: 409, baseType: !4179, size: 64, offset: 128)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!109, !568, !1237}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4102, file: !14, line: 412, baseType: !4183, size: 64, offset: 192)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{!913, !568, !4112}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4102, file: !14, line: 414, baseType: !4187, size: 64, offset: 256)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{null, !4190}
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4102, file: !14, line: 416, baseType: !4193, size: 64, offset: 320)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{!109, !1715, !568, !733, !7, !4196, !3423}
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4102, file: !14, line: 419, baseType: !4198, size: 64, offset: 384)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{!109, !1715, !568, !733, !7, !7, !2631, !365}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4102, file: !14, line: 424, baseType: !4202, size: 64, offset: 448)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!4205, !568, !4205}
!4205 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !367, line: 131, baseType: !645)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4102, file: !14, line: 425, baseType: !4207, size: 64, offset: 512)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DISubroutineType(types: !4209)
!4209 = !{null, !4112, !540, !540}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4102, file: !14, line: 426, baseType: !4211, size: 64, offset: 576)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DISubroutineType(types: !4213)
!4213 = !{!913, !4112, !366}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4102, file: !14, line: 427, baseType: !4215, size: 64, offset: 640)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{null, !4112}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4102, file: !14, line: 428, baseType: !3311, size: 64, offset: 704)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4102, file: !14, line: 433, baseType: !4220, size: 64, offset: 768)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{!109, !568, !4112, !4112, !74}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4102, file: !14, line: 435, baseType: !4224, size: 64, offset: 832)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!109, !4112}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4102, file: !14, line: 436, baseType: !4228, size: 64, offset: 896)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!913, !4112, !540, !540}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4102, file: !14, line: 438, baseType: !4232, size: 64, offset: 960)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{null, !4112, !4235, !4235}
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4102, file: !14, line: 439, baseType: !4237, size: 64, offset: 1024)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!109, !568, !2631}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4102, file: !14, line: 442, baseType: !4241, size: 64, offset: 1088)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{!109, !4244, !1715, !4246}
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4102, file: !14, line: 444, baseType: !3415, size: 64, offset: 1152)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4102, file: !14, line: 445, baseType: !4249, size: 64, offset: 1216)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!109, !3314, !3336}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !569, file: !14, line: 486, baseType: !368, size: 64, offset: 896)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !569, file: !14, line: 487, baseType: !1743, size: 320, offset: 960)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !569, file: !14, line: 488, baseType: !3458, size: 32, offset: 1280)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !569, file: !14, line: 489, baseType: !428, size: 32, offset: 1312)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !569, file: !14, line: 490, baseType: !377, size: 128, offset: 1344)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !569, file: !14, line: 491, baseType: !365, size: 64, offset: 1472)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !559, file: !520, line: 180, baseType: !4259, size: 64, offset: 320)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{!526, !1715, !421, !558, !494, !733, !540}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !559, file: !520, line: 182, baseType: !4259, size: 64, offset: 384)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !559, file: !520, line: 184, baseType: !4264, size: 64, offset: 448)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DISubroutineType(types: !4266)
!4266 = !{!109, !1715, !421, !558, !2741}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !547, file: !520, line: 90, baseType: !4268, size: 64, offset: 192)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !547, file: !520, line: 91, baseType: !4270, size: 64, offset: 256)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !510, file: !413, line: 120, baseType: !4272, size: 64, offset: 192)
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = !DISubroutineType(types: !4274)
!4274 = !{!4275, !477}
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4277)
!4277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !4278)
!4278 = !{!4279, !4280, !4284, !4288, !4294, !4298}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4277, file: !82, line: 40, baseType: !81, size: 32)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4277, file: !82, line: 41, baseType: !4281, size: 64, offset: 64)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = !DISubroutineType(types: !4283)
!4283 = !{!913}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4277, file: !82, line: 42, baseType: !4285, size: 64, offset: 128)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{!365}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4277, file: !82, line: 43, baseType: !4289, size: 64, offset: 192)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{!1820, !4292}
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4277, file: !82, line: 44, baseType: !4295, size: 64, offset: 256)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{!1820}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4277, file: !82, line: 45, baseType: !876, size: 64, offset: 320)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !510, file: !413, line: 121, baseType: !4300, size: 64, offset: 256)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!1820, !477}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !510, file: !413, line: 122, baseType: !4304, size: 64, offset: 320)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{null, !477, !4307, !4308}
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !412, file: !413, line: 70, baseType: !4310, size: 64, offset: 384)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !748, line: 190, size: 1152, elements: !4312)
!4312 = !{!4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4392, !4393, !4394, !4395, !4396, !4399}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4311, file: !748, line: 191, baseType: !403, size: 32)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4311, file: !748, line: 192, baseType: !403, size: 32, offset: 32)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4311, file: !748, line: 202, baseType: !4310, size: 64, offset: 64)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4311, file: !748, line: 203, baseType: !416, size: 64, offset: 128)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4311, file: !748, line: 205, baseType: !945, size: 192, align: 64, offset: 192)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4311, file: !748, line: 207, baseType: !1820, size: 64, offset: 384)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4311, file: !748, line: 208, baseType: !7, size: 32, offset: 448)
!4320 = !DIDerivedType(tag: DW_TAG_member, scope: !4311, file: !748, line: 209, baseType: !4321, size: 256, offset: 512)
!4321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4311, file: !748, line: 209, size: 256, elements: !4322)
!4322 = !{!4323, !4332, !4336}
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4321, file: !748, line: 210, baseType: !4324, size: 256)
!4324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !748, line: 153, size: 256, elements: !4325)
!4325 = !{!4326, !4327, !4328, !4331}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4324, file: !748, line: 154, baseType: !368, size: 64)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4324, file: !748, line: 156, baseType: !1574, size: 64, offset: 64)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4324, file: !748, line: 162, baseType: !4329, size: 64, offset: 128)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !748, line: 162, flags: DIFlagFwdDecl)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4324, file: !748, line: 167, baseType: !368, size: 64, offset: 192)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4321, file: !748, line: 211, baseType: !4333, size: 64)
!4333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !748, line: 170, size: 64, elements: !4334)
!4334 = !{!4335}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4333, file: !748, line: 171, baseType: !4310, size: 64)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4321, file: !748, line: 212, baseType: !4337, size: 256)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !748, line: 174, size: 256, elements: !4338)
!4338 = !{!4339, !4387, !4390, !4391}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4337, file: !748, line: 175, baseType: !4340, size: 64)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4342)
!4342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !748, line: 271, size: 768, elements: !4343)
!4343 = !{!4344, !4364, !4368, !4369, !4370, !4371, !4372, !4376, !4377, !4378, !4379, !4383}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4342, file: !748, line: 276, baseType: !4345, size: 64)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DISubroutineType(types: !4347)
!4347 = !{!109, !4348}
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !748, line: 251, size: 1216, elements: !4350)
!4350 = !{!4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4349, file: !748, line: 253, baseType: !4310, size: 64)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4349, file: !748, line: 254, baseType: !1715, size: 64, offset: 64)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4349, file: !748, line: 255, baseType: !1274, size: 64, offset: 128)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4349, file: !748, line: 256, baseType: !365, size: 64, offset: 192)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4349, file: !748, line: 259, baseType: !833, size: 256, offset: 256)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4349, file: !748, line: 260, baseType: !833, size: 256, offset: 512)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4349, file: !748, line: 261, baseType: !109, size: 32, offset: 768)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4349, file: !748, line: 262, baseType: !377, size: 128, offset: 832)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4349, file: !748, line: 263, baseType: !494, size: 64, offset: 960)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4349, file: !748, line: 265, baseType: !540, size: 64, offset: 1024)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4349, file: !748, line: 266, baseType: !913, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4349, file: !748, line: 267, baseType: !913, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4349, file: !748, line: 268, baseType: !2784, size: 64, offset: 1152)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4342, file: !748, line: 277, baseType: !4365, size: 64, offset: 64)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{null, !4348}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4342, file: !748, line: 290, baseType: !1305, size: 64, offset: 128)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4342, file: !748, line: 292, baseType: !1292, size: 64, offset: 192)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4342, file: !748, line: 293, baseType: !1301, size: 64, offset: 256)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4342, file: !748, line: 294, baseType: !1297, size: 64, offset: 320)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4342, file: !748, line: 296, baseType: !4373, size: 64, offset: 384)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = !DISubroutineType(types: !4375)
!4375 = !{!526, !4348, !494, !540, !733}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4342, file: !748, line: 306, baseType: !540, size: 64, offset: 448)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4342, file: !748, line: 313, baseType: !913, size: 8, offset: 512)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4342, file: !748, line: 314, baseType: !4373, size: 64, offset: 576)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4342, file: !748, line: 317, baseType: !4380, size: 64, offset: 640)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{!3362, !4348, !3364}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4342, file: !748, line: 320, baseType: !4384, size: 64, offset: 704)
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = !DISubroutineType(types: !4386)
!4386 = !{!109, !4348, !2741}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4337, file: !748, line: 176, baseType: !4388, size: 64, offset: 64)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !748, line: 35, flags: DIFlagFwdDecl)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4337, file: !748, line: 177, baseType: !733, size: 64, offset: 128)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4337, file: !748, line: 178, baseType: !4310, size: 64, offset: 192)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4311, file: !748, line: 215, baseType: !365, size: 64, offset: 768)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4311, file: !748, line: 221, baseType: !645, size: 64, offset: 832)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4311, file: !748, line: 223, baseType: !464, size: 16, offset: 896)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4311, file: !748, line: 224, baseType: !535, size: 16, offset: 912)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4311, file: !748, line: 225, baseType: !4397, size: 64, offset: 960)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !748, line: 36, flags: DIFlagFwdDecl)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4311, file: !748, line: 227, baseType: !1053, size: 128, align: 64, offset: 1024)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !412, file: !413, line: 71, baseType: !395, size: 32, offset: 448)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !412, file: !413, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !412, file: !413, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !412, file: !413, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !412, file: !413, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !412, file: !413, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !409, file: !94, line: 707, baseType: !408, size: 64, offset: 512)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !409, file: !94, line: 709, baseType: !4408, size: 64, offset: 576)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !409, file: !94, line: 711, baseType: !416, size: 64, offset: 640)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !409, file: !94, line: 712, baseType: !4412, size: 64, offset: 704)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4414)
!4414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4415)
!4415 = !{!4416, !4417, !4418, !4424, !4429, !4433}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4414, file: !94, line: 90, baseType: !416, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4414, file: !94, line: 91, baseType: !544, size: 64, offset: 64)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4414, file: !94, line: 92, baseType: !4419, size: 64, offset: 128)
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = !DISubroutineType(types: !4421)
!4421 = !{!109, !4422, !489}
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4414, file: !94, line: 93, baseType: !4425, size: 64, offset: 192)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{!494, !4422, !4428, !4307, !4308}
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4414, file: !94, line: 95, baseType: !4430, size: 64, offset: 256)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{null, !408}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4414, file: !94, line: 97, baseType: !4434, size: 64, offset: 320)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4436)
!4436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4437)
!4437 = !{!4438, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463}
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4436, file: !101, line: 287, baseType: !4439, size: 64)
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{!109, !408}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4436, file: !101, line: 288, baseType: !4430, size: 64, offset: 64)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4436, file: !101, line: 289, baseType: !4439, size: 64, offset: 128)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4436, file: !101, line: 290, baseType: !4439, size: 64, offset: 192)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4436, file: !101, line: 291, baseType: !4439, size: 64, offset: 256)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4436, file: !101, line: 292, baseType: !4439, size: 64, offset: 320)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4436, file: !101, line: 293, baseType: !4439, size: 64, offset: 384)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4436, file: !101, line: 294, baseType: !4439, size: 64, offset: 448)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4436, file: !101, line: 295, baseType: !4439, size: 64, offset: 512)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4436, file: !101, line: 296, baseType: !4439, size: 64, offset: 576)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4436, file: !101, line: 297, baseType: !4439, size: 64, offset: 640)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4436, file: !101, line: 298, baseType: !4439, size: 64, offset: 704)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4436, file: !101, line: 299, baseType: !4439, size: 64, offset: 768)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4436, file: !101, line: 300, baseType: !4439, size: 64, offset: 832)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4436, file: !101, line: 301, baseType: !4439, size: 64, offset: 896)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4436, file: !101, line: 302, baseType: !4439, size: 64, offset: 960)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4436, file: !101, line: 303, baseType: !4439, size: 64, offset: 1024)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4436, file: !101, line: 304, baseType: !4439, size: 64, offset: 1088)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4436, file: !101, line: 305, baseType: !4439, size: 64, offset: 1152)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4436, file: !101, line: 306, baseType: !4439, size: 64, offset: 1216)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4436, file: !101, line: 307, baseType: !4439, size: 64, offset: 1280)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4436, file: !101, line: 308, baseType: !4439, size: 64, offset: 1344)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4436, file: !101, line: 309, baseType: !4439, size: 64, offset: 1408)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !409, file: !94, line: 714, baseType: !4465, size: 64, offset: 768)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4467)
!4467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4468, line: 80, size: 1344, elements: !4469)
!4468 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4469 = !{!4470, !4471, !4472, !4473, !4474, !4475, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4533}
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4467, file: !4468, line: 81, baseType: !416, size: 64)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4467, file: !4468, line: 82, baseType: !416, size: 64, offset: 64)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4467, file: !4468, line: 83, baseType: !544, size: 64, offset: 128)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4467, file: !4468, line: 84, baseType: !544, size: 64, offset: 192)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4467, file: !4468, line: 85, baseType: !544, size: 64, offset: 256)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4467, file: !4468, line: 87, baseType: !4476, size: 64, offset: 320)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{!109, !408, !4479}
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4481)
!4481 = !{!4482, !4483, !4484, !4485, !4486, !4487, !4488, !4492, !4496, !4497, !4498, !4499, !4500, !4508, !4509, !4510, !4511, !4512, !4513}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4480, file: !88, line: 97, baseType: !416, size: 64)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4480, file: !88, line: 98, baseType: !4465, size: 64, offset: 64)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4480, file: !88, line: 100, baseType: !762, size: 64, offset: 128)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4480, file: !88, line: 101, baseType: !416, size: 64, offset: 192)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4480, file: !88, line: 103, baseType: !913, size: 8, offset: 256)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4480, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4480, file: !88, line: 106, baseType: !4489, size: 64, offset: 320)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4491)
!4491 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !88, line: 106, flags: DIFlagFwdDecl)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4480, file: !88, line: 107, baseType: !4493, size: 64, offset: 384)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4495)
!4495 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !88, line: 107, flags: DIFlagFwdDecl)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4480, file: !88, line: 109, baseType: !4439, size: 64, offset: 448)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4480, file: !88, line: 110, baseType: !4430, size: 64, offset: 512)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4480, file: !88, line: 111, baseType: !4439, size: 64, offset: 576)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4480, file: !88, line: 112, baseType: !4430, size: 64, offset: 640)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4480, file: !88, line: 113, baseType: !4501, size: 64, offset: 704)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = !DISubroutineType(types: !4503)
!4503 = !{!109, !408, !4504}
!4504 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4505)
!4505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4506)
!4506 = !{!4507}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4505, file: !101, line: 59, baseType: !109, size: 32)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4480, file: !88, line: 114, baseType: !4439, size: 64, offset: 768)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4480, file: !88, line: 115, baseType: !544, size: 64, offset: 832)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4480, file: !88, line: 116, baseType: !544, size: 64, offset: 896)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4480, file: !88, line: 118, baseType: !4434, size: 64, offset: 960)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4480, file: !88, line: 119, baseType: !4430, size: 64, offset: 1024)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4480, file: !88, line: 121, baseType: !4514, size: 64, offset: 1088)
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4515, size: 64)
!4515 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4467, file: !4468, line: 88, baseType: !4419, size: 64, offset: 384)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4467, file: !4468, line: 89, baseType: !4439, size: 64, offset: 448)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4467, file: !4468, line: 90, baseType: !4430, size: 64, offset: 512)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4467, file: !4468, line: 91, baseType: !4430, size: 64, offset: 576)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4467, file: !4468, line: 92, baseType: !4430, size: 64, offset: 640)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4467, file: !4468, line: 94, baseType: !4439, size: 64, offset: 704)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4467, file: !4468, line: 95, baseType: !4439, size: 64, offset: 768)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4467, file: !4468, line: 97, baseType: !4501, size: 64, offset: 832)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4467, file: !4468, line: 98, baseType: !4439, size: 64, offset: 896)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4467, file: !4468, line: 100, baseType: !4439, size: 64, offset: 960)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4467, file: !4468, line: 102, baseType: !4439, size: 64, offset: 1024)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4467, file: !4468, line: 103, baseType: !4430, size: 64, offset: 1088)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4467, file: !4468, line: 105, baseType: !4434, size: 64, offset: 1152)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4467, file: !4468, line: 107, baseType: !4530, size: 64, offset: 1216)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4532)
!4532 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4468, line: 107, flags: DIFlagFwdDecl)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4467, file: !4468, line: 109, baseType: !913, size: 8, offset: 1280)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !409, file: !94, line: 715, baseType: !4479, size: 64, offset: 832)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !409, file: !94, line: 717, baseType: !365, size: 64, offset: 896)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !409, file: !94, line: 719, baseType: !365, size: 64, offset: 960)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !409, file: !94, line: 721, baseType: !833, size: 256, offset: 1024)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !409, file: !94, line: 725, baseType: !4539, size: 448, offset: 1280)
!4539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4540)
!4540 = !{!4541, !4542, !4543, !4544}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4539, file: !94, line: 518, baseType: !377, size: 128)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4539, file: !94, line: 519, baseType: !377, size: 128, offset: 128)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4539, file: !94, line: 520, baseType: !377, size: 128, offset: 256)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4539, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !409, file: !94, line: 726, baseType: !4546, size: 2496, offset: 1728)
!4546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4547)
!4547 = !{!4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4630, !4634}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4546, file: !101, line: 664, baseType: !4504, size: 32)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4546, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4546, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4546, file: !101, line: 667, baseType: !913, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4546, file: !101, line: 668, baseType: !913, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4546, file: !101, line: 669, baseType: !913, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4546, file: !101, line: 670, baseType: !913, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4546, file: !101, line: 671, baseType: !913, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4546, file: !101, line: 672, baseType: !913, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4546, file: !101, line: 673, baseType: !913, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4546, file: !101, line: 674, baseType: !913, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4546, file: !101, line: 675, baseType: !641, size: 32, offset: 64)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4546, file: !101, line: 676, baseType: !428, size: 32, offset: 96)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4546, file: !101, line: 678, baseType: !377, size: 128, offset: 128)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4546, file: !101, line: 679, baseType: !782, size: 256, offset: 256)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4546, file: !101, line: 680, baseType: !4564, size: 64, offset: 512)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4566, line: 43, size: 1536, elements: !4567)
!4566 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4567 = !{!4568, !4569, !4570, !4571, !4572, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589}
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4565, file: !4566, line: 44, baseType: !416, size: 64)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4565, file: !4566, line: 45, baseType: !109, size: 32, offset: 64)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4565, file: !4566, line: 46, baseType: !377, size: 128, offset: 128)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4565, file: !4566, line: 47, baseType: !428, size: 32, offset: 256)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4565, file: !4566, line: 48, baseType: !4573, size: 64, offset: 320)
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4565, file: !4566, line: 49, baseType: !1075, size: 320, offset: 384)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4565, file: !4566, line: 50, baseType: !368, size: 64, offset: 704)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4565, file: !4566, line: 51, baseType: !1520, size: 64, offset: 768)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4565, file: !4566, line: 52, baseType: !1520, size: 64, offset: 832)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4565, file: !4566, line: 53, baseType: !1520, size: 64, offset: 896)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4565, file: !4566, line: 54, baseType: !1520, size: 64, offset: 960)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4565, file: !4566, line: 55, baseType: !1520, size: 64, offset: 1024)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4565, file: !4566, line: 56, baseType: !368, size: 64, offset: 1088)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4565, file: !4566, line: 57, baseType: !368, size: 64, offset: 1152)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4565, file: !4566, line: 58, baseType: !368, size: 64, offset: 1216)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4565, file: !4566, line: 59, baseType: !368, size: 64, offset: 1280)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4565, file: !4566, line: 60, baseType: !368, size: 64, offset: 1344)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4565, file: !4566, line: 61, baseType: !408, size: 64, offset: 1408)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4565, file: !4566, line: 62, baseType: !913, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4565, file: !4566, line: 63, baseType: !913, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4546, file: !101, line: 681, baseType: !913, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4546, file: !101, line: 682, baseType: !913, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4546, file: !101, line: 683, baseType: !913, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4546, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4546, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4546, file: !101, line: 690, baseType: !1512, size: 512, offset: 640)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4546, file: !101, line: 691, baseType: !645, size: 64, offset: 1152)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4546, file: !101, line: 692, baseType: !1093, size: 256, offset: 1216)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4546, file: !101, line: 693, baseType: !1367, size: 192, offset: 1472)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4546, file: !101, line: 694, baseType: !4573, size: 64, offset: 1664)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4546, file: !101, line: 695, baseType: !403, size: 32, offset: 1728)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4546, file: !101, line: 696, baseType: !403, size: 32, offset: 1760)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4546, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4546, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4546, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4546, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4546, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4546, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4546, file: !101, line: 703, baseType: !913, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4546, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4546, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4546, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4546, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4546, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4546, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4546, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4546, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4546, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4546, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4546, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4546, file: !101, line: 715, baseType: !645, size: 64, offset: 2048)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4546, file: !101, line: 716, baseType: !645, size: 64, offset: 2112)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4546, file: !101, line: 717, baseType: !645, size: 64, offset: 2176)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4546, file: !101, line: 718, baseType: !645, size: 64, offset: 2240)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4546, file: !101, line: 720, baseType: !4625, size: 64, offset: 2304)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4627)
!4627 = !{!4628, !4629}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4626, file: !101, line: 633, baseType: !428, size: 32)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4626, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4546, file: !101, line: 721, baseType: !4631, size: 64, offset: 2368)
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4632, size: 64)
!4632 = !DISubroutineType(types: !4633)
!4633 = !{null, !408, !829}
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4546, file: !101, line: 722, baseType: !4635, size: 64, offset: 2432)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !409, file: !94, line: 727, baseType: !4638, size: 64, offset: 4224)
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4640)
!4640 = !{!4641, !4642, !4643, !4647, !4648, !4649}
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4639, file: !101, line: 743, baseType: !4436, size: 1472)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4639, file: !101, line: 744, baseType: !4439, size: 64, offset: 1472)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4639, file: !101, line: 745, baseType: !4644, size: 64, offset: 1536)
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4645, size: 64)
!4645 = !DISubroutineType(types: !4646)
!4646 = !{null, !408, !913}
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4639, file: !101, line: 746, baseType: !4439, size: 64, offset: 1600)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4639, file: !101, line: 747, baseType: !4430, size: 64, offset: 1664)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4639, file: !101, line: 748, baseType: !4430, size: 64, offset: 1728)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !409, file: !94, line: 736, baseType: !4651, size: 128, offset: 4288)
!4651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4652)
!4652 = !{!4653, !4657}
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4651, file: !94, line: 531, baseType: !4654, size: 64)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4656, line: 13, flags: DIFlagFwdDecl)
!4656 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4651, file: !94, line: 532, baseType: !4658, size: 64, offset: 64)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !409, file: !94, line: 738, baseType: !4661, size: 64, offset: 4416)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4663)
!4663 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !409, file: !94, line: 740, baseType: !4665, size: 64, offset: 4480)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !409, file: !94, line: 741, baseType: !645, size: 64, offset: 4544)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !409, file: !94, line: 746, baseType: !645, size: 64, offset: 4608)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !409, file: !94, line: 747, baseType: !4669, size: 64, offset: 4672)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4671)
!4671 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !409, file: !94, line: 749, baseType: !4673, size: 64, offset: 4736)
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4675)
!4675 = !{!4676, !4677, !4678}
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4674, file: !94, line: 433, baseType: !7, size: 32)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4674, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4674, file: !94, line: 435, baseType: !368, size: 64, offset: 64)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !409, file: !94, line: 751, baseType: !377, size: 128, offset: 4800)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !409, file: !94, line: 762, baseType: !4681, size: 64, offset: 4928)
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4682, size: 64)
!4682 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !409, file: !94, line: 770, baseType: !4684, offset: 4992)
!4684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4685, line: 5, elements: !1121)
!4685 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !409, file: !94, line: 772, baseType: !4687, size: 64, offset: 4992)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4689, line: 18, flags: DIFlagFwdDecl)
!4689 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !409, file: !94, line: 773, baseType: !4691, size: 64, offset: 5056)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4468, line: 22, flags: DIFlagFwdDecl)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !409, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !409, file: !94, line: 778, baseType: !728, size: 32, offset: 5152)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !409, file: !94, line: 779, baseType: !641, size: 32, offset: 5184)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !409, file: !94, line: 781, baseType: !428, size: 32, offset: 5216)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !409, file: !94, line: 782, baseType: !377, size: 128, offset: 5248)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !409, file: !94, line: 784, baseType: !4699, size: 64, offset: 5376)
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4701)
!4701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4702, line: 52, size: 768, elements: !4703)
!4702 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4703 = !{!4704, !4705, !4706, !4707, !4708, !4712, !4716, !4717, !4718, !4719, !4723, !4727}
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4701, file: !4702, line: 53, baseType: !416, size: 64)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4701, file: !4702, line: 55, baseType: !544, size: 64, offset: 64)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4701, file: !4702, line: 56, baseType: !544, size: 64, offset: 128)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4701, file: !4702, line: 58, baseType: !4419, size: 64, offset: 192)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4701, file: !4702, line: 59, baseType: !4709, size: 64, offset: 256)
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4710, size: 64)
!4710 = !DISubroutineType(types: !4711)
!4711 = !{!494, !4422, !4428}
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4701, file: !4702, line: 61, baseType: !4713, size: 64, offset: 320)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = !DISubroutineType(types: !4715)
!4715 = !{null, !4699}
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4701, file: !4702, line: 62, baseType: !4430, size: 64, offset: 384)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4701, file: !4702, line: 64, baseType: !4439, size: 64, offset: 448)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4701, file: !4702, line: 66, baseType: !4275, size: 64, offset: 512)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4701, file: !4702, line: 67, baseType: !4720, size: 64, offset: 576)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DISubroutineType(types: !4722)
!4722 = !{!1820, !4422}
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4701, file: !4702, line: 69, baseType: !4724, size: 64, offset: 640)
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4725, size: 64)
!4725 = !DISubroutineType(types: !4726)
!4726 = !{null, !4422, !4307, !4308}
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4701, file: !4702, line: 71, baseType: !4434, size: 64, offset: 704)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !409, file: !94, line: 785, baseType: !544, size: 64, offset: 5440)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !409, file: !94, line: 787, baseType: !4430, size: 64, offset: 5504)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !409, file: !94, line: 788, baseType: !4731, size: 64, offset: 5568)
!4731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4732, size: 64)
!4732 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !409, file: !94, line: 789, baseType: !4734, size: 64, offset: 5632)
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !409, file: !94, line: 791, baseType: !4737, size: 64, offset: 5696)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4739)
!4739 = !{!4740, !4741, !4742, !4743, !4744}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4738, file: !94, line: 598, baseType: !116, size: 32)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4738, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4738, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4738, file: !94, line: 601, baseType: !913, size: 8, offset: 96)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4738, file: !94, line: 602, baseType: !913, size: 8, offset: 104)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !409, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !409, file: !94, line: 795, baseType: !913, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !409, file: !94, line: 796, baseType: !913, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !409, file: !94, line: 797, baseType: !913, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !409, file: !94, line: 798, baseType: !913, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !409, file: !94, line: 799, baseType: !913, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !391, file: !194, line: 73, baseType: !4752, size: 256, offset: 128)
!4752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !391, file: !194, line: 66, size: 256, elements: !4753)
!4753 = !{!4754, !4755, !4756}
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4752, file: !194, line: 68, baseType: !377, size: 128)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "final_kfree", scope: !4752, file: !194, line: 70, baseType: !365, size: 64, offset: 128)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4752, file: !194, line: 72, baseType: !428, size: 32, offset: 192)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !391, file: !194, line: 76, baseType: !4758, size: 64, offset: 384)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4760)
!4760 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_driver", file: !4761, line: 42, flags: DIFlagFwdDecl)
!4761 = !DIFile(filename: "./include/drm/drm_legacy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0a48cbf735602b48f7f8b8e0cbee53a7")
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private", scope: !391, file: !194, line: 88, baseType: !365, size: 64, offset: 448)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !391, file: !194, line: 98, baseType: !4764, size: 64, offset: 512)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_minor", file: !194, line: 13, flags: DIFlagFwdDecl)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !391, file: !194, line: 107, baseType: !4764, size: 64, offset: 576)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !391, file: !194, line: 110, baseType: !4764, size: 64, offset: 640)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !391, file: !194, line: 117, baseType: !913, size: 8, offset: 704)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !391, file: !194, line: 125, baseType: !4770, size: 64, offset: 768)
!4770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4771, size: 64)
!4771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_master", file: !4772, line: 65, size: 1280, elements: !4773)
!4772 = !DIFile(filename: "./include/drm/drm_auth.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10e944a391afc2612335b30db18d0dee")
!4773 = !{!4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785}
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4771, file: !4772, line: 66, baseType: !395, size: 32)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4771, file: !4772, line: 67, baseType: !390, size: 64, offset: 64)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !4771, file: !4772, line: 72, baseType: !494, size: 64, offset: 128)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "unique_len", scope: !4771, file: !4772, line: 77, baseType: !109, size: 32, offset: 192)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "magic_map", scope: !4771, file: !4772, line: 82, baseType: !1385, size: 192, offset: 256)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !4771, file: !4772, line: 83, baseType: !365, size: 64, offset: 448)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "lessor", scope: !4771, file: !4772, line: 99, baseType: !4770, size: 64, offset: 512)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_id", scope: !4771, file: !4772, line: 107, baseType: !109, size: 32, offset: 576)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_list", scope: !4771, file: !4772, line: 116, baseType: !377, size: 128, offset: 640)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "lessees", scope: !4771, file: !4772, line: 128, baseType: !377, size: 128, offset: 768)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "leases", scope: !4771, file: !4772, line: 139, baseType: !1385, size: 192, offset: 896)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_idr", scope: !4771, file: !4772, line: 147, baseType: !1385, size: 192, offset: 1088)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !391, file: !194, line: 135, baseType: !641, size: 32, offset: 832)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "unplugged", scope: !391, file: !194, line: 143, baseType: !913, size: 8, offset: 864)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "anon_inode", scope: !391, file: !194, line: 146, baseType: !572, size: 64, offset: 896)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !391, file: !194, line: 149, baseType: !494, size: 64, offset: 960)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "struct_mutex", scope: !391, file: !194, line: 159, baseType: !833, size: 256, offset: 1024)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "master_mutex", scope: !391, file: !194, line: 166, baseType: !833, size: 256, offset: 1280)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "open_count", scope: !391, file: !194, line: 174, baseType: !403, size: 32, offset: 1536)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_mutex", scope: !391, file: !194, line: 177, baseType: !833, size: 256, offset: 1600)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !391, file: !194, line: 183, baseType: !377, size: 128, offset: 1856)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_internal", scope: !391, file: !194, line: 191, baseType: !377, size: 128, offset: 1984)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist_mutex", scope: !391, file: !194, line: 198, baseType: !833, size: 256, offset: 2112)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist", scope: !391, file: !194, line: 205, baseType: !377, size: 128, offset: 2368)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_disable_immediate", scope: !391, file: !194, line: 220, baseType: !913, size: 8, offset: 2496)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "vblank", scope: !391, file: !194, line: 230, baseType: !4800, size: 64, offset: 2560)
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4801 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vblank_crtc", file: !194, line: 15, flags: DIFlagFwdDecl)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_time_lock", scope: !391, file: !194, line: 237, baseType: !428, size: 32, offset: 2624)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "vbl_lock", scope: !391, file: !194, line: 242, baseType: !428, size: 32, offset: 2656)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !391, file: !194, line: 265, baseType: !641, size: 32, offset: 2688)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_event_list", scope: !391, file: !194, line: 268, baseType: !377, size: 128, offset: 2752)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !391, file: !194, line: 276, baseType: !428, size: 32, offset: 2880)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtcs", scope: !391, file: !194, line: 279, baseType: !7, size: 32, offset: 2912)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "mode_config", scope: !391, file: !194, line: 282, baseType: !4809, size: 8704, offset: 2944)
!4809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config", file: !4810, line: 375, size: 8704, elements: !4811)
!4810 = !DIFile(filename: "./include/drm/drm_mode_config.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3fe2bd3e9391801689324df8a16c9607")
!4811 = !{!4812, !4813, !4832, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !5755, !5756, !5757, !5758, !5759, !5760, !5761, !5762, !5763, !5764, !5765, !5766, !5767, !5768, !5769, !5770, !5771, !5772, !5773, !5774, !5775, !5776, !5777, !5778, !5779, !5780, !5781, !5782, !5783, !5784, !5785, !5786, !5787, !5788, !5789, !5790, !5791, !5792, !5793, !5794, !5795, !5796, !5797, !5798, !5799, !5800, !5801, !5802, !5803, !5804, !5805, !5806, !5807, !5808, !5809, !5810, !5811, !5812, !5813, !5814, !5815, !5816, !5817, !5818, !5819, !5820, !5821, !5822, !5823, !5824, !5825, !5826, !5827, !5828, !5829}
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4809, file: !4810, line: 386, baseType: !833, size: 256)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "connection_mutex", scope: !4809, file: !4810, line: 396, baseType: !4814, size: 448, offset: 256)
!4814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_lock", file: !4815, line: 85, size: 448, elements: !4816)
!4815 = !DIFile(filename: "./include/drm/drm_modeset_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90e902ea14584677125d9e33023828e6")
!4816 = !{!4817, !4831}
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4814, file: !4815, line: 89, baseType: !4818, size: 320)
!4818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !4819, line: 47, size: 320, elements: !4820)
!4819 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a05845e2a030669ed50c8f228f8c6582")
!4820 = !{!4821, !4822}
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4818, file: !4819, line: 48, baseType: !833, size: 256)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4818, file: !4819, line: 49, baseType: !4823, size: 64, offset: 256)
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4824, size: 64)
!4824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !4819, line: 55, size: 192, elements: !4825)
!4825 = !{!4826, !4827, !4828, !4829, !4830}
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4824, file: !4819, line: 56, baseType: !1400, size: 64)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !4824, file: !4819, line: 57, baseType: !368, size: 64, offset: 64)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !4824, file: !4819, line: 58, baseType: !7, size: 32, offset: 128)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !4824, file: !4819, line: 59, baseType: !464, size: 16, offset: 160)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !4824, file: !4819, line: 60, baseType: !464, size: 16, offset: 176)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4814, file: !4815, line: 95, baseType: !377, size: 128, offset: 320)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !4809, file: !4810, line: 406, baseType: !4833, size: 64, offset: 704)
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64)
!4834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_acquire_ctx", file: !4815, line: 46, size: 512, elements: !4835)
!4835 = !{!4836, !4837, !4839, !4842, !4843, !4844}
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "ww_ctx", scope: !4834, file: !4815, line: 48, baseType: !4824, size: 192)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !4834, file: !4815, line: 55, baseType: !4838, size: 64, offset: 192)
!4838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "stack_depot", scope: !4834, file: !4815, line: 61, baseType: !4840, size: 32, offset: 256)
!4840 = !DIDerivedType(tag: DW_TAG_typedef, name: "depot_stack_handle_t", file: !4841, line: 27, baseType: !641)
!4841 = !DIFile(filename: "./include/linux/stackdepot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "787fdf2c1a48da25b4d7ecc2db077a40")
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !4834, file: !4815, line: 66, baseType: !377, size: 128, offset: 320)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_only", scope: !4834, file: !4815, line: 71, baseType: !913, size: 8, offset: 448)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !4834, file: !4815, line: 74, baseType: !913, size: 8, offset: 456)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "idr_mutex", scope: !4809, file: !4810, line: 414, baseType: !833, size: 256, offset: 768)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !4809, file: !4810, line: 422, baseType: !1385, size: 192, offset: 1024)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "tile_idr", scope: !4809, file: !4810, line: 430, baseType: !1385, size: 192, offset: 1216)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "fb_lock", scope: !4809, file: !4810, line: 433, baseType: !833, size: 256, offset: 1408)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "num_fb", scope: !4809, file: !4810, line: 435, baseType: !109, size: 32, offset: 1664)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "fb_list", scope: !4809, file: !4810, line: 437, baseType: !377, size: 128, offset: 1728)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list_lock", scope: !4809, file: !4810, line: 443, baseType: !428, size: 32, offset: 1856)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !4809, file: !4810, line: 448, baseType: !109, size: 32, offset: 1888)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "connector_ida", scope: !4809, file: !4810, line: 452, baseType: !4854, size: 128, offset: 1920)
!4854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1386, line: 246, size: 128, elements: !4855)
!4855 = !{!4856}
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4854, file: !1386, line: 247, baseType: !1389, size: 128)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list", scope: !4809, file: !4810, line: 460, baseType: !377, size: 128, offset: 2048)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_list", scope: !4809, file: !4810, line: 470, baseType: !3022, size: 64, offset: 2176)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_work", scope: !4809, file: !4810, line: 474, baseType: !1093, size: 256, offset: 2240)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "num_encoder", scope: !4809, file: !4810, line: 482, baseType: !109, size: 32, offset: 2496)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_list", scope: !4809, file: !4810, line: 490, baseType: !377, size: 128, offset: 2560)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "num_total_plane", scope: !4809, file: !4810, line: 499, baseType: !109, size: 32, offset: 2688)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "plane_list", scope: !4809, file: !4810, line: 506, baseType: !377, size: 128, offset: 2752)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtc", scope: !4809, file: !4810, line: 514, baseType: !109, size: 32, offset: 2880)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_list", scope: !4809, file: !4810, line: 521, baseType: !377, size: 128, offset: 2944)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "property_list", scope: !4809, file: !4810, line: 530, baseType: !377, size: 128, offset: 3072)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "privobj_list", scope: !4809, file: !4810, line: 539, baseType: !377, size: 128, offset: 3200)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !4809, file: !4810, line: 541, baseType: !109, size: 32, offset: 3328)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !4809, file: !4810, line: 541, baseType: !109, size: 32, offset: 3360)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !4809, file: !4810, line: 542, baseType: !109, size: 32, offset: 3392)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !4809, file: !4810, line: 542, baseType: !109, size: 32, offset: 3424)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4809, file: !4810, line: 543, baseType: !4873, size: 64, offset: 3456)
!4873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4874, size: 64)
!4874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4875)
!4875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_funcs", file: !4810, line: 47, size: 576, elements: !4876)
!4876 = !{!4877, !4901, !4908, !4912, !4954, !5742, !5746, !5750, !5754}
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "fb_create", scope: !4875, file: !4810, line: 83, baseType: !4878, size: 64)
!4878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4879, size: 64)
!4879 = !DISubroutineType(types: !4880)
!4880 = !{!4881, !390, !4883, !4886}
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer", file: !4810, line: 83, flags: DIFlagFwdDecl)
!4883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4884, size: 64)
!4884 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !4885, line: 9, flags: DIFlagFwdDecl)
!4885 = !DIFile(filename: "./include/drm/drm_lease.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f6d675704e04807ddd52843c3d74a46")
!4886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4887, size: 64)
!4887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4888)
!4888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_fb_cmd2", file: !229, line: 703, size: 832, elements: !4889)
!4889 = !{!4890, !4891, !4892, !4893, !4894, !4895, !4897, !4898, !4899}
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "fb_id", scope: !4888, file: !229, line: 705, baseType: !642, size: 32)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4888, file: !229, line: 707, baseType: !642, size: 32, offset: 32)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4888, file: !229, line: 709, baseType: !642, size: 32, offset: 64)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !4888, file: !229, line: 714, baseType: !642, size: 32, offset: 96)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4888, file: !229, line: 719, baseType: !642, size: 32, offset: 128)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !4888, file: !229, line: 725, baseType: !4896, size: 128, offset: 160)
!4896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 128, elements: !1063)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !4888, file: !229, line: 727, baseType: !4896, size: 128, offset: 288)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !4888, file: !229, line: 729, baseType: !4896, size: 128, offset: 416)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !4888, file: !229, line: 735, baseType: !4900, size: 256, offset: 576)
!4900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !646, size: 256, elements: !1063)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "get_format_info", scope: !4875, file: !4810, line: 98, baseType: !4902, size: 64, offset: 64)
!4902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4903, size: 64)
!4903 = !DISubroutineType(types: !4904)
!4904 = !{!4905, !4886}
!4905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4906, size: 64)
!4906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4907)
!4907 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_format_info", file: !4810, line: 38, flags: DIFlagFwdDecl)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_changed", scope: !4875, file: !4810, line: 114, baseType: !4909, size: 64, offset: 128)
!4909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4910, size: 64)
!4910 = !DISubroutineType(types: !4911)
!4911 = !{null, !390}
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !4875, file: !4810, line: 124, baseType: !4913, size: 64, offset: 192)
!4913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4914, size: 64)
!4914 = !DISubroutineType(types: !4915)
!4915 = !{!141, !390, !4916}
!4916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4917, size: 64)
!4917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4918)
!4918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_mode", file: !142, line: 252, size: 960, elements: !4919)
!4919 = !{!4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953}
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !4918, file: !142, line: 258, baseType: !109, size: 32)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "hdisplay", scope: !4918, file: !142, line: 259, baseType: !462, size: 16, offset: 32)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_start", scope: !4918, file: !142, line: 260, baseType: !462, size: 16, offset: 48)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_end", scope: !4918, file: !142, line: 261, baseType: !462, size: 16, offset: 64)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "htotal", scope: !4918, file: !142, line: 262, baseType: !462, size: 16, offset: 80)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "hskew", scope: !4918, file: !142, line: 263, baseType: !462, size: 16, offset: 96)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "vdisplay", scope: !4918, file: !142, line: 264, baseType: !462, size: 16, offset: 112)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_start", scope: !4918, file: !142, line: 265, baseType: !462, size: 16, offset: 128)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_end", scope: !4918, file: !142, line: 266, baseType: !462, size: 16, offset: 144)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "vtotal", scope: !4918, file: !142, line: 267, baseType: !462, size: 16, offset: 160)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "vscan", scope: !4918, file: !142, line: 268, baseType: !462, size: 16, offset: 176)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4918, file: !142, line: 303, baseType: !641, size: 32, offset: 192)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_clock", scope: !4918, file: !142, line: 320, baseType: !109, size: 32, offset: 224)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hdisplay", scope: !4918, file: !142, line: 321, baseType: !462, size: 16, offset: 256)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_start", scope: !4918, file: !142, line: 322, baseType: !462, size: 16, offset: 272)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_end", scope: !4918, file: !142, line: 323, baseType: !462, size: 16, offset: 288)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_start", scope: !4918, file: !142, line: 324, baseType: !462, size: 16, offset: 304)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_end", scope: !4918, file: !142, line: 325, baseType: !462, size: 16, offset: 320)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_htotal", scope: !4918, file: !142, line: 326, baseType: !462, size: 16, offset: 336)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hskew", scope: !4918, file: !142, line: 327, baseType: !462, size: 16, offset: 352)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vdisplay", scope: !4918, file: !142, line: 328, baseType: !462, size: 16, offset: 368)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_start", scope: !4918, file: !142, line: 329, baseType: !462, size: 16, offset: 384)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_end", scope: !4918, file: !142, line: 330, baseType: !462, size: 16, offset: 400)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_start", scope: !4918, file: !142, line: 331, baseType: !462, size: 16, offset: 416)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_end", scope: !4918, file: !142, line: 332, baseType: !462, size: 16, offset: 432)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vtotal", scope: !4918, file: !142, line: 333, baseType: !462, size: 16, offset: 448)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !4918, file: !142, line: 341, baseType: !462, size: 16, offset: 464)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !4918, file: !142, line: 349, baseType: !462, size: 16, offset: 480)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4918, file: !142, line: 378, baseType: !452, size: 8, offset: 496)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "expose_to_userspace", scope: !4918, file: !142, line: 389, baseType: !913, size: 8, offset: 504)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4918, file: !142, line: 396, baseType: !377, size: 128, offset: 512)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4918, file: !142, line: 403, baseType: !3774, size: 256, offset: 640)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4918, file: !142, line: 411, baseType: !141, size: 32, offset: 896)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !4918, file: !142, line: 418, baseType: !184, size: 32, offset: 928)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !4875, file: !4810, line: 201, baseType: !4955, size: 64, offset: 256)
!4955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4956, size: 64)
!4956 = !DISubroutineType(types: !4957)
!4957 = !{!109, !390, !4958}
!4958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4959, size: 64)
!4959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_atomic_state", file: !4960, line: 365, size: 960, elements: !4961)
!4960 = !DIFile(filename: "./include/drm/drm_atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28de65f10f2586a2044f2cca3eae067c")
!4961 = !{!4962, !4963, !4964, !4965, !4966, !4967, !4968, !5211, !5252, !5253, !5700, !5701, !5739, !5740, !5741}
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4959, file: !4960, line: 366, baseType: !395, size: 32)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4959, file: !4960, line: 368, baseType: !390, size: 64, offset: 64)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "allow_modeset", scope: !4959, file: !4960, line: 378, baseType: !913, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cursor_update", scope: !4959, file: !4960, line: 390, baseType: !913, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "async_update", scope: !4959, file: !4960, line: 391, baseType: !913, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "duplicated", scope: !4959, file: !4960, line: 400, baseType: !913, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "planes", scope: !4959, file: !4960, line: 401, baseType: !4969, size: 64, offset: 192)
!4969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4970, size: 64)
!4970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_planes_state", file: !4960, line: 160, size: 256, elements: !4971)
!4971 = !{!4972, !5208, !5209, !5210}
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4970, file: !4960, line: 161, baseType: !4973, size: 64)
!4973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4974, size: 64)
!4974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane", file: !220, line: 603, size: 5312, elements: !4975)
!4975 = !{!4976, !4977, !4978, !4979, !4980, !5017, !5018, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5173, !5174, !5175, !5176, !5200, !5201, !5202, !5203, !5204, !5205, !5206, !5207}
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4974, file: !220, line: 605, baseType: !390, size: 64)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4974, file: !220, line: 614, baseType: !377, size: 128, offset: 64)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4974, file: !220, line: 617, baseType: !494, size: 64, offset: 192)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4974, file: !220, line: 628, baseType: !4814, size: 448, offset: 256)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4974, file: !220, line: 631, baseType: !4981, size: 256, offset: 704)
!4981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_object", file: !4982, line: 55, size: 256, elements: !4983)
!4982 = !DIFile(filename: "./include/drm/drm_mode_object.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ffaf2d776d1d6cf92a08dd44b890967f")
!4983 = !{!4984, !4985, !4986, !5011, !5012}
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4981, file: !4982, line: 56, baseType: !2054, size: 32)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4981, file: !4982, line: 57, baseType: !2054, size: 32, offset: 32)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4981, file: !4982, line: 58, baseType: !4987, size: 64, offset: 64)
!4987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4988, size: 64)
!4988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_object_properties", file: !4982, line: 67, size: 3136, elements: !4989)
!4989 = !{!4990, !4991, !5009}
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4988, file: !4982, line: 73, baseType: !109, size: 32)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4988, file: !4982, line: 82, baseType: !4992, size: 1536, offset: 64)
!4992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4993, size: 1536, elements: !5007)
!4993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4994, size: 64)
!4994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property", file: !4995, line: 80, size: 960, elements: !4996)
!4995 = !DIFile(filename: "./include/drm/drm_property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "320ae008033d09c99df86eb5eb8877c7")
!4996 = !{!4997, !4998, !4999, !5000, !5001, !5002, !5005, !5006}
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4994, file: !4995, line: 84, baseType: !377, size: 128)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4994, file: !4995, line: 89, baseType: !4981, size: 256, offset: 128)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4994, file: !4995, line: 166, baseType: !2054, size: 32, offset: 384)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4994, file: !4995, line: 171, baseType: !3774, size: 256, offset: 416)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "num_values", scope: !4994, file: !4995, line: 176, baseType: !2054, size: 32, offset: 672)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !4994, file: !4995, line: 184, baseType: !5003, size: 64, offset: 704)
!5003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5004, size: 64)
!5004 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !367, line: 113, baseType: !645)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4994, file: !4995, line: 189, baseType: !390, size: 64, offset: 768)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "enum_list", scope: !4994, file: !4995, line: 197, baseType: !377, size: 128, offset: 832)
!5007 = !{!5008}
!5008 = !DISubrange(count: 24)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !4988, file: !4982, line: 106, baseType: !5010, size: 1536, offset: 1600)
!5010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5004, size: 1536, elements: !5007)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4981, file: !4982, line: 59, baseType: !395, size: 32, offset: 128)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "free_cb", scope: !4981, file: !4982, line: 60, baseType: !5013, size: 64, offset: 192)
!5013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5014, size: 64)
!5014 = !DISubroutineType(types: !5015)
!5015 = !{null, !5016}
!5016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "possible_crtcs", scope: !4974, file: !220, line: 637, baseType: !2054, size: 32, offset: 960)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "format_types", scope: !4974, file: !220, line: 639, baseType: !5019, size: 64, offset: 1024)
!5019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "format_count", scope: !4974, file: !220, line: 641, baseType: !7, size: 32, offset: 1088)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "format_default", scope: !4974, file: !220, line: 646, baseType: !913, size: 8, offset: 1120)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers", scope: !4974, file: !220, line: 649, baseType: !5003, size: 64, offset: 1152)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "modifier_count", scope: !4974, file: !220, line: 651, baseType: !7, size: 32, offset: 1216)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !4974, file: !220, line: 660, baseType: !385, size: 64, offset: 1280)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !4974, file: !220, line: 669, baseType: !4881, size: 64, offset: 1344)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "old_fb", scope: !4974, file: !220, line: 677, baseType: !4881, size: 64, offset: 1408)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4974, file: !220, line: 680, baseType: !5028, size: 64, offset: 1472)
!5028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5029, size: 64)
!5029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5030)
!5030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_funcs", file: !220, line: 279, size: 832, elements: !5031)
!5031 = !{!5032, !5036, !5040, !5044, !5045, !5049, !5115, !5119, !5123, !5129, !5133, !5134, !5169}
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "update_plane", scope: !5030, file: !220, line: 306, baseType: !5033, size: 64)
!5033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5034, size: 64)
!5034 = !DISubroutineType(types: !5035)
!5035 = !{!109, !4973, !385, !4881, !109, !109, !7, !7, !2054, !2054, !2054, !2054, !4833}
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "disable_plane", scope: !5030, file: !220, line: 329, baseType: !5037, size: 64, offset: 64)
!5037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5038, size: 64)
!5038 = !DISubroutineType(types: !5039)
!5039 = !{!109, !4973, !4833}
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5030, file: !220, line: 339, baseType: !5041, size: 64, offset: 128)
!5041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5042, size: 64)
!5042 = !DISubroutineType(types: !5043)
!5043 = !{null, !4973}
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5030, file: !220, line: 351, baseType: !5041, size: 64, offset: 192)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5030, file: !220, line: 367, baseType: !5046, size: 64, offset: 256)
!5046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5047, size: 64)
!5047 = !DISubroutineType(types: !5048)
!5048 = !{!109, !4973, !4993, !5004}
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5030, file: !220, line: 401, baseType: !5050, size: 64, offset: 320)
!5050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5051, size: 64)
!5051 = !DISubroutineType(types: !5052)
!5052 = !{!5053, !4973}
!5053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5054, size: 64)
!5054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_state", file: !220, line: 52, size: 1280, elements: !5055)
!5055 = !{!5056, !5057, !5058, !5059, !5062, !5063, !5064, !5065, !5066, !5067, !5068, !5069, !5070, !5071, !5073, !5074, !5075, !5076, !5077, !5078, !5088, !5089, !5097, !5098, !5099, !5100, !5114}
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !5054, file: !220, line: 54, baseType: !4973, size: 64)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5054, file: !220, line: 62, baseType: !385, size: 64, offset: 64)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !5054, file: !220, line: 70, baseType: !4881, size: 64, offset: 128)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !5054, file: !220, line: 83, baseType: !5060, size: 64, offset: 192)
!5060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5061, size: 64)
!5061 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !220, line: 83, flags: DIFlagFwdDecl)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_x", scope: !5054, file: !220, line: 92, baseType: !2031, size: 32, offset: 256)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_y", scope: !5054, file: !220, line: 99, baseType: !2031, size: 32, offset: 288)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_w", scope: !5054, file: !220, line: 103, baseType: !2054, size: 32, offset: 320)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_h", scope: !5054, file: !220, line: 103, baseType: !2054, size: 32, offset: 352)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "src_x", scope: !5054, file: !220, line: 109, baseType: !2054, size: 32, offset: 384)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "src_y", scope: !5054, file: !220, line: 114, baseType: !2054, size: 32, offset: 416)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "src_h", scope: !5054, file: !220, line: 117, baseType: !2054, size: 32, offset: 448)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "src_w", scope: !5054, file: !220, line: 117, baseType: !2054, size: 32, offset: 480)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !5054, file: !220, line: 125, baseType: !462, size: 16, offset: 512)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_blend_mode", scope: !5054, file: !220, line: 133, baseType: !5072, size: 16, offset: 528)
!5072 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !367, line: 109, baseType: !462)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "rotation", scope: !5054, file: !220, line: 140, baseType: !7, size: 32, offset: 544)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "zpos", scope: !5054, file: !220, line: 155, baseType: !7, size: 32, offset: 576)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_zpos", scope: !5054, file: !220, line: 164, baseType: !7, size: 32, offset: 608)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "color_encoding", scope: !5054, file: !220, line: 171, baseType: !298, size: 32, offset: 640)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "color_range", scope: !5054, file: !220, line: 178, baseType: !305, size: 32, offset: 672)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "fb_damage_clips", scope: !5054, file: !220, line: 191, baseType: !5079, size: 64, offset: 704)
!5079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5080, size: 64)
!5080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property_blob", file: !4995, line: 216, size: 704, elements: !5081)
!5081 = !{!5082, !5083, !5084, !5085, !5086, !5087}
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5080, file: !4995, line: 217, baseType: !4981, size: 256)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5080, file: !4995, line: 218, baseType: !390, size: 64, offset: 256)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "head_global", scope: !5080, file: !4995, line: 219, baseType: !377, size: 128, offset: 320)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "head_file", scope: !5080, file: !4995, line: 220, baseType: !377, size: 128, offset: 448)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5080, file: !4995, line: 221, baseType: !540, size: 64, offset: 576)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5080, file: !4995, line: 222, baseType: !365, size: 64, offset: 640)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_damage_clips", scope: !5054, file: !220, line: 201, baseType: !913, size: 8, offset: 768)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !5054, file: !220, line: 223, baseType: !5090, size: 128, offset: 800)
!5090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_rect", file: !5091, line: 46, size: 128, elements: !5092)
!5091 = !DIFile(filename: "./include/drm/drm_rect.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "16c059bec9955b5d3fc8d798e393cc6b")
!5092 = !{!5093, !5094, !5095, !5096}
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !5090, file: !5091, line: 47, baseType: !109, size: 32)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !5090, file: !5091, line: 47, baseType: !109, size: 32, offset: 32)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !5090, file: !5091, line: 47, baseType: !109, size: 32, offset: 64)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !5090, file: !5091, line: 47, baseType: !109, size: 32, offset: 96)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !5054, file: !220, line: 223, baseType: !5090, size: 128, offset: 928)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "visible", scope: !5054, file: !220, line: 231, baseType: !913, size: 8, offset: 1056)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter", scope: !5054, file: !220, line: 238, baseType: !219, size: 32, offset: 1088)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5054, file: !220, line: 246, baseType: !5101, size: 64, offset: 1152)
!5101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5102, size: 64)
!5102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_commit", file: !4960, line: 72, size: 1152, elements: !5103)
!5103 = !{!5104, !5105, !5106, !5107, !5108, !5109, !5110, !5113}
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5102, file: !4960, line: 78, baseType: !385, size: 64)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5102, file: !4960, line: 87, baseType: !395, size: 32, offset: 64)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "flip_done", scope: !5102, file: !4960, line: 101, baseType: !782, size: 256, offset: 128)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "hw_done", scope: !5102, file: !4960, line: 119, baseType: !782, size: 256, offset: 384)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_done", scope: !5102, file: !4960, line: 133, baseType: !782, size: 256, offset: 640)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "commit_entry", scope: !5102, file: !4960, line: 141, baseType: !377, size: 128, offset: 896)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5102, file: !4960, line: 148, baseType: !5111, size: 64, offset: 1024)
!5111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5112, size: 64)
!5112 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_pending_vblank_event", file: !387, line: 58, flags: DIFlagFwdDecl)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "abort_completion", scope: !5102, file: !4960, line: 157, baseType: !913, size: 8, offset: 1088)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5054, file: !220, line: 249, baseType: !4958, size: 64, offset: 1216)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5030, file: !220, line: 411, baseType: !5116, size: 64, offset: 384)
!5116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5117, size: 64)
!5117 = !DISubroutineType(types: !5118)
!5118 = !{null, !4973, !5053}
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5030, file: !220, line: 456, baseType: !5120, size: 64, offset: 448)
!5120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5121, size: 64)
!5121 = !DISubroutineType(types: !5122)
!5122 = !{!109, !4973, !5053, !4993, !5004}
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5030, file: !220, line: 479, baseType: !5124, size: 64, offset: 512)
!5124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5125, size: 64)
!5125 = !DISubroutineType(types: !5126)
!5126 = !{!109, !4973, !5127, !4993, !5003}
!5127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5128, size: 64)
!5128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5054)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5030, file: !220, line: 496, baseType: !5130, size: 64, offset: 576)
!5130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5131, size: 64)
!5131 = !DISubroutineType(types: !5132)
!5132 = !{!109, !4973}
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5030, file: !220, line: 507, baseType: !5041, size: 64, offset: 640)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5030, file: !220, line: 518, baseType: !5135, size: 64, offset: 704)
!5135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5136, size: 64)
!5136 = !DISubroutineType(types: !5137)
!5137 = !{null, !5138, !5127}
!5138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5139, size: 64)
!5139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_printer", file: !5140, line: 76, size: 256, elements: !5141)
!5140 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8183d9b00573922c1c038b9801bc144f")
!5141 = !{!5142, !5163, !5167, !5168}
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "printfn", scope: !5139, file: !5140, line: 78, baseType: !5143, size: 64)
!5143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5144, size: 64)
!5144 = !DISubroutineType(types: !5145)
!5145 = !{null, !5138, !5146}
!5146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5147, size: 64)
!5147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "va_format", file: !5148, line: 79, size: 128, elements: !5149)
!5148 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5149 = !{!5150, !5151}
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !5147, file: !5148, line: 80, baseType: !416, size: 64)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !5147, file: !5148, line: 81, baseType: !5152, size: 64, offset: 64)
!5152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5153, size: 64)
!5153 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !5154, line: 5, baseType: !5155)
!5154 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!5155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !5156)
!5156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5157, size: 192, elements: !1640)
!5157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !5158)
!5158 = !{!5159, !5160, !5161, !5162}
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !5157, file: !3, baseType: !7, size: 32)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !5157, file: !3, baseType: !7, size: 32, offset: 32)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !5157, file: !3, baseType: !365, size: 64, offset: 64)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !5157, file: !3, baseType: !365, size: 64, offset: 128)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "puts", scope: !5139, file: !5140, line: 79, baseType: !5164, size: 64, offset: 64)
!5164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5165, size: 64)
!5165 = !DISubroutineType(types: !5166)
!5166 = !{null, !5138, !416}
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5139, file: !5140, line: 80, baseType: !365, size: 64, offset: 128)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !5139, file: !5140, line: 81, baseType: !416, size: 64, offset: 192)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "format_mod_supported", scope: !5030, file: !220, line: 537, baseType: !5170, size: 64, offset: 768)
!5170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5171, size: 64)
!5171 = !DISubroutineType(types: !5172)
!5172 = !{!913, !4973, !2054, !5004}
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4974, file: !220, line: 683, baseType: !4988, size: 3136, offset: 1536)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4974, file: !220, line: 686, baseType: !310, size: 32, offset: 4672)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4974, file: !220, line: 692, baseType: !7, size: 32, offset: 4704)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4974, file: !220, line: 695, baseType: !5177, size: 64, offset: 4736)
!5177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5178, size: 64)
!5178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5179)
!5179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_helper_funcs", file: !294, line: 1189, size: 640, elements: !5180)
!5180 = !{!5181, !5185, !5186, !5187, !5188, !5192, !5196, !5197, !5198, !5199}
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_fb", scope: !5179, file: !294, line: 1232, baseType: !5182, size: 64)
!5182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5183, size: 64)
!5183 = !DISubroutineType(types: !5184)
!5184 = !{!109, !4973, !5053}
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_fb", scope: !5179, file: !294, line: 1243, baseType: !5116, size: 64, offset: 64)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "begin_fb_access", scope: !5179, file: !294, line: 1266, baseType: !5182, size: 64, offset: 128)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "end_fb_access", scope: !5179, file: !294, line: 1274, baseType: !5116, size: 64, offset: 192)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !5179, file: !294, line: 1311, baseType: !5189, size: 64, offset: 256)
!5189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5190, size: 64)
!5190 = !DISubroutineType(types: !5191)
!5191 = !{!109, !4973, !4958}
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_update", scope: !5179, file: !294, line: 1328, baseType: !5193, size: 64, offset: 320)
!5193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5194, size: 64)
!5194 = !DISubroutineType(types: !5195)
!5195 = !{null, !4973, !4958}
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_enable", scope: !5179, file: !294, line: 1353, baseType: !5193, size: 64, offset: 384)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_disable", scope: !5179, file: !294, line: 1378, baseType: !5193, size: 64, offset: 448)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_async_check", scope: !5179, file: !294, line: 1397, baseType: !5189, size: 64, offset: 512)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_async_update", scope: !5179, file: !294, line: 1434, baseType: !5193, size: 64, offset: 576)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4974, file: !220, line: 710, baseType: !5053, size: 64, offset: 4800)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "alpha_property", scope: !4974, file: !220, line: 717, baseType: !4993, size: 64, offset: 4864)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "zpos_property", scope: !4974, file: !220, line: 723, baseType: !4993, size: 64, offset: 4928)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_property", scope: !4974, file: !220, line: 729, baseType: !4993, size: 64, offset: 4992)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "blend_mode_property", scope: !4974, file: !220, line: 737, baseType: !4993, size: 64, offset: 5056)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "color_encoding_property", scope: !4974, file: !220, line: 746, baseType: !4993, size: 64, offset: 5120)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "color_range_property", scope: !4974, file: !220, line: 754, baseType: !4993, size: 64, offset: 5184)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter_property", scope: !4974, file: !220, line: 760, baseType: !4993, size: 64, offset: 5248)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4970, file: !4960, line: 162, baseType: !5053, size: 64, offset: 64)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !4970, file: !4960, line: 162, baseType: !5053, size: 64, offset: 128)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !4970, file: !4960, line: 162, baseType: !5053, size: 64, offset: 192)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "crtcs", scope: !4959, file: !4960, line: 402, baseType: !5212, size: 64, offset: 256)
!5212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5213, size: 64)
!5213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_crtcs_state", file: !4960, line: 165, size: 448, elements: !5214)
!5214 = !{!5215, !5216, !5247, !5248, !5249, !5250, !5251}
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5213, file: !4960, line: 166, baseType: !385, size: 64)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5213, file: !4960, line: 167, baseType: !5217, size: 64, offset: 64)
!5217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5218, size: 64)
!5218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_state", file: !387, line: 81, size: 2688, elements: !5219)
!5219 = !{!5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5246}
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5218, file: !387, line: 83, baseType: !385, size: 64)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !5218, file: !387, line: 90, baseType: !913, size: 8, offset: 64)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5218, file: !387, line: 105, baseType: !913, size: 8, offset: 72)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "planes_changed", scope: !5218, file: !387, line: 111, baseType: !913, size: 1, offset: 80, flags: DIFlagBitField, extraData: i64 80)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "mode_changed", scope: !5218, file: !387, line: 123, baseType: !913, size: 1, offset: 81, flags: DIFlagBitField, extraData: i64 80)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "active_changed", scope: !5218, file: !387, line: 130, baseType: !913, size: 1, offset: 82, flags: DIFlagBitField, extraData: i64 80)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "connectors_changed", scope: !5218, file: !387, line: 141, baseType: !913, size: 1, offset: 83, flags: DIFlagBitField, extraData: i64 80)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "zpos_changed", scope: !5218, file: !387, line: 147, baseType: !913, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 80)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "color_mgmt_changed", scope: !5218, file: !387, line: 153, baseType: !913, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 80)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "no_vblank", scope: !5218, file: !387, line: 189, baseType: !913, size: 1, offset: 86, flags: DIFlagBitField, extraData: i64 80)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "plane_mask", scope: !5218, file: !387, line: 195, baseType: !641, size: 32, offset: 96)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "connector_mask", scope: !5218, file: !387, line: 201, baseType: !641, size: 32, offset: 128)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_mask", scope: !5218, file: !387, line: 207, baseType: !641, size: 32, offset: 160)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "adjusted_mode", scope: !5218, file: !387, line: 222, baseType: !4918, size: 960, offset: 192)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5218, file: !387, line: 239, baseType: !4918, size: 960, offset: 1152)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "mode_blob", scope: !5218, file: !387, line: 245, baseType: !5079, size: 64, offset: 2112)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut", scope: !5218, file: !387, line: 254, baseType: !5079, size: 64, offset: 2176)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "ctm", scope: !5218, file: !387, line: 262, baseType: !5079, size: 64, offset: 2240)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut", scope: !5218, file: !387, line: 275, baseType: !5079, size: 64, offset: 2304)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "target_vblank", scope: !5218, file: !387, line: 283, baseType: !641, size: 32, offset: 2368)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "async_flip", scope: !5218, file: !387, line: 291, baseType: !913, size: 8, offset: 2400)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_enabled", scope: !5218, file: !387, line: 300, baseType: !913, size: 8, offset: 2408)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_active", scope: !5218, file: !387, line: 311, baseType: !913, size: 8, offset: 2416)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter", scope: !5218, file: !387, line: 318, baseType: !219, size: 32, offset: 2432)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5218, file: !387, line: 375, baseType: !5111, size: 64, offset: 2496)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5218, file: !387, line: 384, baseType: !5101, size: 64, offset: 2560)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5218, file: !387, line: 387, baseType: !4958, size: 64, offset: 2624)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !5213, file: !4960, line: 167, baseType: !5217, size: 64, offset: 128)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !5213, file: !4960, line: 167, baseType: !5217, size: 64, offset: 192)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5213, file: !4960, line: 177, baseType: !5101, size: 64, offset: 256)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "out_fence_ptr", scope: !5213, file: !4960, line: 179, baseType: !1788, size: 64, offset: 320)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "last_vblank_count", scope: !5213, file: !4960, line: 180, baseType: !645, size: 64, offset: 384)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !4959, file: !4960, line: 403, baseType: !109, size: 32, offset: 320)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "connectors", scope: !4959, file: !4960, line: 404, baseType: !5254, size: 64, offset: 384)
!5254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5255, size: 64)
!5255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_connnectors_state", file: !4960, line: 183, size: 320, elements: !5256)
!5256 = !{!5257, !5696, !5697, !5698, !5699}
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5255, file: !4960, line: 184, baseType: !5258, size: 64)
!5258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5259, size: 64)
!5259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector", file: !201, line: 1494, size: 10880, elements: !5260)
!5260 = !{!5261, !5262, !5263, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5283, !5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5364, !5538, !5539, !5540, !5541, !5542, !5543, !5544, !5545, !5548, !5560, !5561, !5562, !5564, !5565, !5612, !5634, !5635, !5639, !5640, !5641, !5642, !5643, !5647, !5648, !5650, !5652, !5653, !5656, !5657, !5658, !5659, !5660, !5661, !5662, !5663, !5664, !5673, !5674, !5675, !5676, !5677, !5678, !5679, !5680, !5681}
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5259, file: !201, line: 1496, baseType: !390, size: 64)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "kdev", scope: !5259, file: !201, line: 1498, baseType: !408, size: 64, offset: 64)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5259, file: !201, line: 1500, baseType: !5264, size: 64, offset: 128)
!5264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5265, size: 64)
!5265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !94, line: 106, size: 256, elements: !5266)
!5266 = !{!5267, !5268, !5272}
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5265, file: !94, line: 107, baseType: !531, size: 128)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5265, file: !94, line: 108, baseType: !5269, size: 64, offset: 128)
!5269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5270, size: 64)
!5270 = !DISubroutineType(types: !5271)
!5271 = !{!526, !408, !5264, !494}
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5265, file: !94, line: 110, baseType: !5273, size: 64, offset: 192)
!5273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5274, size: 64)
!5274 = !DISubroutineType(types: !5275)
!5275 = !{!526, !408, !5264, !416, !540}
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5259, file: !201, line: 1508, baseType: !4691, size: 64, offset: 192)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5259, file: !201, line: 1518, baseType: !377, size: 128, offset: 256)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "global_connector_list_entry", scope: !5259, file: !201, line: 1526, baseType: !377, size: 128, offset: 384)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5259, file: !201, line: 1529, baseType: !4981, size: 256, offset: 512)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5259, file: !201, line: 1532, baseType: !494, size: 64, offset: 768)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5259, file: !201, line: 1539, baseType: !833, size: 256, offset: 832)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5259, file: !201, line: 1547, baseType: !7, size: 32, offset: 1088)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type", scope: !5259, file: !201, line: 1553, baseType: !109, size: 32, offset: 1120)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type_id", scope: !5259, file: !201, line: 1555, baseType: !109, size: 32, offset: 1152)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "interlace_allowed", scope: !5259, file: !201, line: 1561, baseType: !913, size: 8, offset: 1184)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "doublescan_allowed", scope: !5259, file: !201, line: 1567, baseType: !913, size: 8, offset: 1192)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "stereo_allowed", scope: !5259, file: !201, line: 1573, baseType: !913, size: 8, offset: 1200)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "ycbcr_420_allowed", scope: !5259, file: !201, line: 1581, baseType: !913, size: 8, offset: 1208)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "registration_state", scope: !5259, file: !201, line: 1589, baseType: !200, size: 32, offset: 1216)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !5259, file: !201, line: 1596, baseType: !377, size: 128, offset: 1280)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5259, file: !201, line: 1603, baseType: !206, size: 32, offset: 1408)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "probed_modes", scope: !5259, file: !201, line: 1611, baseType: !377, size: 128, offset: 1472)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "display_info", scope: !5259, file: !201, line: 1622, baseType: !5294, size: 1536, offset: 1600)
!5294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_info", file: !201, line: 651, size: 1536, elements: !5295)
!5295 = !{!5296, !5297, !5298, !5299, !5300, !5301, !5302, !5305, !5306, !5307, !5308, !5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316, !5346, !5347, !5352, !5357, !5358, !5359, !5360, !5362, !5363}
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !5294, file: !201, line: 655, baseType: !7, size: 32)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !5294, file: !201, line: 660, baseType: !7, size: 32, offset: 32)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "bpc", scope: !5294, file: !201, line: 665, baseType: !7, size: 32, offset: 64)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "subpixel_order", scope: !5294, file: !201, line: 670, baseType: !211, size: 32, offset: 96)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !5294, file: !201, line: 684, baseType: !109, size: 32, offset: 128)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "color_formats", scope: !5294, file: !201, line: 692, baseType: !641, size: 32, offset: 160)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "bus_formats", scope: !5294, file: !201, line: 699, baseType: !5303, size: 64, offset: 192)
!5303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5304, size: 64)
!5304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !641)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "num_bus_formats", scope: !5294, file: !201, line: 703, baseType: !7, size: 32, offset: 256)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !5294, file: !201, line: 710, baseType: !641, size: 32, offset: 288)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "max_tmds_clock", scope: !5294, file: !201, line: 716, baseType: !109, size: 32, offset: 320)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_dual", scope: !5294, file: !201, line: 721, baseType: !913, size: 8, offset: 352)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "is_hdmi", scope: !5294, file: !201, line: 729, baseType: !913, size: 8, offset: 360)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "has_audio", scope: !5294, file: !201, line: 737, baseType: !913, size: 8, offset: 368)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "has_hdmi_infoframe", scope: !5294, file: !201, line: 742, baseType: !913, size: 8, offset: 376)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "rgb_quant_range_selectable", scope: !5294, file: !201, line: 748, baseType: !913, size: 8, offset: 384)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "edid_hdmi_rgb444_dc_modes", scope: !5294, file: !201, line: 754, baseType: !452, size: 8, offset: 392)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "edid_hdmi_ycbcr444_dc_modes", scope: !5294, file: !201, line: 760, baseType: !452, size: 8, offset: 400)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "cea_rev", scope: !5294, file: !201, line: 765, baseType: !452, size: 8, offset: 408)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi", scope: !5294, file: !201, line: 770, baseType: !5317, size: 768, offset: 448)
!5317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_hdmi_info", file: !201, line: 293, size: 768, elements: !5318)
!5318 = !{!5319, !5329, !5330, !5331, !5332, !5333, !5334}
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "scdc", scope: !5317, file: !201, line: 295, baseType: !5320, size: 32)
!5320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scdc", file: !201, line: 231, size: 32, elements: !5321)
!5321 = !{!5322, !5323, !5324}
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !5320, file: !201, line: 235, baseType: !913, size: 8)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "read_request", scope: !5320, file: !201, line: 239, baseType: !913, size: 8, offset: 8)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling", scope: !5320, file: !201, line: 243, baseType: !5325, size: 16, offset: 16)
!5325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scrambling", file: !201, line: 214, size: 16, elements: !5326)
!5326 = !{!5327, !5328}
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !5325, file: !201, line: 218, baseType: !913, size: 8)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "low_rates", scope: !5325, file: !201, line: 222, baseType: !913, size: 8, offset: 8)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "y420_vdb_modes", scope: !5317, file: !201, line: 303, baseType: !1066, size: 256, offset: 64)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "y420_cmdb_modes", scope: !5317, file: !201, line: 311, baseType: !1066, size: 256, offset: 320)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "y420_dc_modes", scope: !5317, file: !201, line: 314, baseType: !452, size: 8, offset: 576)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "max_frl_rate_per_lane", scope: !5317, file: !201, line: 317, baseType: !452, size: 8, offset: 584)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "max_lanes", scope: !5317, file: !201, line: 320, baseType: !452, size: 8, offset: 592)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "dsc_cap", scope: !5317, file: !201, line: 323, baseType: !5335, size: 128, offset: 608)
!5335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_hdmi_dsc_cap", file: !201, line: 253, size: 128, elements: !5336)
!5336 = !{!5337, !5338, !5339, !5340, !5341, !5342, !5343, !5344, !5345}
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "v_1p2", scope: !5335, file: !201, line: 255, baseType: !913, size: 8)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "native_420", scope: !5335, file: !201, line: 258, baseType: !913, size: 8, offset: 8)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "all_bpp", scope: !5335, file: !201, line: 264, baseType: !913, size: 8, offset: 16)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "bpc_supported", scope: !5335, file: !201, line: 269, baseType: !452, size: 8, offset: 24)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "max_slices", scope: !5335, file: !201, line: 272, baseType: !452, size: 8, offset: 32)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "clk_per_slice", scope: !5335, file: !201, line: 275, baseType: !109, size: 32, offset: 64)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "max_lanes", scope: !5335, file: !201, line: 278, baseType: !452, size: 8, offset: 96)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "max_frl_rate_per_lane", scope: !5335, file: !201, line: 281, baseType: !452, size: 8, offset: 104)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "total_chunk_kbytes", scope: !5335, file: !201, line: 284, baseType: !452, size: 8, offset: 112)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop", scope: !5294, file: !201, line: 775, baseType: !913, size: 8, offset: 1216)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_range", scope: !5294, file: !201, line: 780, baseType: !5348, size: 32, offset: 1232)
!5348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_monitor_range_info", file: !201, line: 383, size: 32, elements: !5349)
!5349 = !{!5350, !5351}
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "min_vfreq", scope: !5348, file: !201, line: 384, baseType: !462, size: 16)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "max_vfreq", scope: !5348, file: !201, line: 385, baseType: !462, size: 16, offset: 16)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "luminance_range", scope: !5294, file: !201, line: 785, baseType: !5353, size: 64, offset: 1280)
!5353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_luminance_range_info", file: !201, line: 399, size: 64, elements: !5354)
!5354 = !{!5355, !5356}
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "min_luminance", scope: !5353, file: !201, line: 400, baseType: !641, size: 32)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "max_luminance", scope: !5353, file: !201, line: 401, baseType: !641, size: 32, offset: 32)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "mso_stream_count", scope: !5294, file: !201, line: 792, baseType: !452, size: 8, offset: 1344)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "mso_pixel_overlap", scope: !5294, file: !201, line: 797, baseType: !452, size: 8, offset: 1352)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "max_dsc_bpp", scope: !5294, file: !201, line: 803, baseType: !641, size: 32, offset: 1376)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "vics", scope: !5294, file: !201, line: 808, baseType: !5361, size: 64, offset: 1408)
!5361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "vics_len", scope: !5294, file: !201, line: 813, baseType: !109, size: 32, offset: 1472)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !5294, file: !201, line: 818, baseType: !641, size: 32, offset: 1504)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5259, file: !201, line: 1625, baseType: !5365, size: 64, offset: 3136)
!5365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5366, size: 64)
!5366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5367)
!5367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_funcs", file: !201, line: 1034, size: 1024, elements: !5368)
!5368 = !{!5369, !5373, !5377, !5381, !5382, !5386, !5390, !5394, !5395, !5396, !5515, !5519, !5523, !5529, !5533, !5534}
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5367, file: !201, line: 1051, baseType: !5370, size: 64)
!5370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5371, size: 64)
!5371 = !DISubroutineType(types: !5372)
!5372 = !{!109, !5258, !109}
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5367, file: !201, line: 1063, baseType: !5374, size: 64, offset: 64)
!5374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5375, size: 64)
!5375 = !DISubroutineType(types: !5376)
!5376 = !{null, !5258}
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !5367, file: !201, line: 1096, baseType: !5378, size: 64, offset: 128)
!5378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5379, size: 64)
!5379 = !DISubroutineType(types: !5380)
!5380 = !{!206, !5258, !913}
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5367, file: !201, line: 1113, baseType: !5374, size: 64, offset: 192)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "fill_modes", scope: !5367, file: !201, line: 1138, baseType: !5383, size: 64, offset: 256)
!5383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5384, size: 64)
!5384 = !DISubroutineType(types: !5385)
!5385 = !{!109, !5258, !2054, !2054}
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5367, file: !201, line: 1154, baseType: !5387, size: 64, offset: 320)
!5387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5388, size: 64)
!5388 = !DISubroutineType(types: !5389)
!5389 = !{!109, !5258, !4993, !5004}
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5367, file: !201, line: 1173, baseType: !5391, size: 64, offset: 384)
!5391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5392, size: 64)
!5392 = !DISubroutineType(types: !5393)
!5393 = !{!109, !5258}
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5367, file: !201, line: 1186, baseType: !5374, size: 64, offset: 448)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5367, file: !201, line: 1196, baseType: !5374, size: 64, offset: 512)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5367, file: !201, line: 1229, baseType: !5397, size: 64, offset: 576)
!5397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5398, size: 64)
!5398 = !DISubroutineType(types: !5399)
!5399 = !{!5400, !5258}
!5400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5401, size: 64)
!5401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_state", file: !201, line: 884, size: 1280, elements: !5402)
!5402 = !{!5403, !5404, !5405, !5478, !5479, !5480, !5481, !5501, !5502, !5503, !5504, !5505, !5506, !5507, !5508, !5511, !5512, !5513, !5514}
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "connector", scope: !5401, file: !201, line: 886, baseType: !5258, size: 64)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5401, file: !201, line: 894, baseType: !385, size: 64, offset: 64)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "best_encoder", scope: !5401, file: !201, line: 912, baseType: !5406, size: 64, offset: 128)
!5406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5407, size: 64)
!5407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder", file: !5408, line: 98, size: 960, elements: !5409)
!5408 = !DIFile(filename: "./include/drm/drm_encoder.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74b3d858470ff421c0475e349d8db40a")
!5409 = !{!5410, !5411, !5412, !5413, !5414, !5415, !5416, !5417, !5418, !5419, !5420, !5435}
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5407, file: !5408, line: 99, baseType: !390, size: 64)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5407, file: !5408, line: 100, baseType: !377, size: 128, offset: 64)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5407, file: !5408, line: 102, baseType: !4981, size: 256, offset: 192)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5407, file: !5408, line: 103, baseType: !494, size: 64, offset: 448)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_type", scope: !5407, file: !5408, line: 130, baseType: !109, size: 32, offset: 512)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5407, file: !5408, line: 136, baseType: !7, size: 32, offset: 544)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "possible_crtcs", scope: !5407, file: !5408, line: 149, baseType: !2054, size: 32, offset: 576)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "possible_clones", scope: !5407, file: !5408, line: 170, baseType: !2054, size: 32, offset: 608)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5407, file: !5408, line: 177, baseType: !385, size: 64, offset: 640)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_chain", scope: !5407, file: !5408, line: 183, baseType: !377, size: 128, offset: 704)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5407, file: !5408, line: 185, baseType: !5421, size: 64, offset: 832)
!5421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5422, size: 64)
!5422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5423)
!5423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder_funcs", file: !5408, line: 40, size: 256, elements: !5424)
!5424 = !{!5425, !5429, !5430, !5434}
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5423, file: !5408, line: 48, baseType: !5426, size: 64)
!5426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5427, size: 64)
!5427 = !DISubroutineType(types: !5428)
!5428 = !{null, !5406}
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5423, file: !5408, line: 57, baseType: !5426, size: 64, offset: 64)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5423, file: !5408, line: 72, baseType: !5431, size: 64, offset: 128)
!5431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5432, size: 64)
!5432 = !DISubroutineType(types: !5433)
!5433 = !{!109, !5406}
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5423, file: !5408, line: 83, baseType: !5426, size: 64, offset: 192)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5407, file: !5408, line: 186, baseType: !5436, size: 64, offset: 896)
!5436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5437, size: 64)
!5437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5438)
!5438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder_helper_funcs", file: !294, line: 511, size: 832, elements: !5439)
!5439 = !{!5440, !5444, !5448, !5453, !5454, !5455, !5459, !5463, !5467, !5471, !5472, !5473, !5474}
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5438, file: !294, line: 528, baseType: !5441, size: 64)
!5441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5442, size: 64)
!5442 = !DISubroutineType(types: !5443)
!5443 = !{null, !5406, !109}
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !5438, file: !294, line: 561, baseType: !5445, size: 64, offset: 64)
!5445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5446, size: 64)
!5446 = !DISubroutineType(types: !5447)
!5447 = !{!141, !5406, !4916}
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "mode_fixup", scope: !5438, file: !294, line: 604, baseType: !5449, size: 64, offset: 128)
!5449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5450, size: 64)
!5450 = !DISubroutineType(types: !5451)
!5451 = !{!913, !5406, !4916, !5452}
!5452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4918, size: 64)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !5438, file: !294, line: 621, baseType: !5426, size: 64, offset: 192)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5438, file: !294, line: 636, baseType: !5426, size: 64, offset: 256)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "mode_set", scope: !5438, file: !294, line: 660, baseType: !5456, size: 64, offset: 320)
!5456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5457, size: 64)
!5457 = !DISubroutineType(types: !5458)
!5458 = !{null, !5406, !5452, !5452}
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_mode_set", scope: !5438, file: !294, line: 683, baseType: !5460, size: 64, offset: 384)
!5460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5461, size: 64)
!5461 = !DISubroutineType(types: !5462)
!5462 = !{null, !5406, !5217, !5400}
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !5438, file: !294, line: 702, baseType: !5464, size: 64, offset: 448)
!5464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5465, size: 64)
!5465 = !DISubroutineType(types: !5466)
!5466 = !{!206, !5406, !5258}
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_disable", scope: !5438, file: !294, line: 725, baseType: !5468, size: 64, offset: 512)
!5468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5469, size: 64)
!5469 = !DISubroutineType(types: !5470)
!5470 = !{null, !5406, !4958}
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_enable", scope: !5438, file: !294, line: 748, baseType: !5468, size: 64, offset: 576)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !5438, file: !294, line: 782, baseType: !5426, size: 64, offset: 640)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !5438, file: !294, line: 800, baseType: !5426, size: 64, offset: 704)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !5438, file: !294, line: 838, baseType: !5475, size: 64, offset: 768)
!5475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5476, size: 64)
!5476 = !DISubroutineType(types: !5477)
!5477 = !{!109, !5406, !5217, !5400}
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "link_status", scope: !5401, file: !201, line: 918, baseType: !224, size: 32, offset: 192)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5401, file: !201, line: 921, baseType: !4958, size: 64, offset: 256)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5401, file: !201, line: 928, baseType: !5101, size: 64, offset: 320)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "tv", scope: !5401, file: !201, line: 931, baseType: !5482, size: 448, offset: 384)
!5482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tv_connector_state", file: !201, line: 867, size: 448, elements: !5483)
!5483 = !{!5484, !5485, !5486, !5493, !5494, !5495, !5496, !5497, !5498, !5499, !5500}
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "select_subconnector", scope: !5482, file: !201, line: 868, baseType: !228, size: 32)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "subconnector", scope: !5482, file: !201, line: 869, baseType: !228, size: 32, offset: 32)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !5482, file: !201, line: 870, baseType: !5487, size: 128, offset: 64)
!5487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_tv_margins", file: !201, line: 831, size: 128, elements: !5488)
!5488 = !{!5489, !5490, !5491, !5492}
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !5487, file: !201, line: 835, baseType: !7, size: 32)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !5487, file: !201, line: 840, baseType: !7, size: 32, offset: 32)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !5487, file: !201, line: 845, baseType: !7, size: 32, offset: 64)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !5487, file: !201, line: 850, baseType: !7, size: 32, offset: 96)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mode", scope: !5482, file: !201, line: 871, baseType: !7, size: 32, offset: 192)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5482, file: !201, line: 872, baseType: !7, size: 32, offset: 224)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !5482, file: !201, line: 873, baseType: !7, size: 32, offset: 256)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "contrast", scope: !5482, file: !201, line: 874, baseType: !7, size: 32, offset: 288)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "flicker_reduction", scope: !5482, file: !201, line: 875, baseType: !7, size: 32, offset: 320)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "overscan", scope: !5482, file: !201, line: 876, baseType: !7, size: 32, offset: 352)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "saturation", scope: !5482, file: !201, line: 877, baseType: !7, size: 32, offset: 384)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "hue", scope: !5482, file: !201, line: 878, baseType: !7, size: 32, offset: 416)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_aware", scope: !5401, file: !201, line: 945, baseType: !913, size: 8, offset: 832)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !5401, file: !201, line: 954, baseType: !184, size: 32, offset: 864)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !5401, file: !201, line: 962, baseType: !7, size: 32, offset: 896)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type", scope: !5401, file: !201, line: 968, baseType: !7, size: 32, offset: 928)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode", scope: !5401, file: !201, line: 974, baseType: !7, size: 32, offset: 960)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection", scope: !5401, file: !201, line: 980, baseType: !7, size: 32, offset: 992)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !5401, file: !201, line: 987, baseType: !244, size: 32, offset: 1024)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_job", scope: !5401, file: !201, line: 1000, baseType: !5509, size: 64, offset: 1088)
!5509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5510, size: 64)
!5510 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_writeback_job", file: !201, line: 1000, flags: DIFlagFwdDecl)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "max_requested_bpc", scope: !5401, file: !201, line: 1006, baseType: !452, size: 8, offset: 1152)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc", scope: !5401, file: !201, line: 1012, baseType: !452, size: 8, offset: 1160)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_sw_state", scope: !5401, file: !201, line: 1018, baseType: !264, size: 32, offset: 1184)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata", scope: !5401, file: !201, line: 1024, baseType: !5079, size: 64, offset: 1216)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5367, file: !201, line: 1239, baseType: !5516, size: 64, offset: 640)
!5516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5517, size: 64)
!5517 = !DISubroutineType(types: !5518)
!5518 = !{null, !5258, !5400}
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5367, file: !201, line: 1284, baseType: !5520, size: 64, offset: 704)
!5520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5521, size: 64)
!5521 = !DISubroutineType(types: !5522)
!5522 = !{!109, !5258, !5400, !4993, !5004}
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5367, file: !201, line: 1307, baseType: !5524, size: 64, offset: 768)
!5524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5525, size: 64)
!5525 = !DISubroutineType(types: !5526)
!5526 = !{!109, !5258, !5527, !4993, !5003}
!5527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5528, size: 64)
!5528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5401)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5367, file: !201, line: 1321, baseType: !5530, size: 64, offset: 832)
!5530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5531, size: 64)
!5531 = !DISubroutineType(types: !5532)
!5532 = !{null, !5138, !5527}
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "oob_hotplug_event", scope: !5367, file: !201, line: 1330, baseType: !5374, size: 64, offset: 896)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_init", scope: !5367, file: !201, line: 1337, baseType: !5535, size: 64, offset: 960)
!5535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5536, size: 64)
!5536 = !DISubroutineType(types: !5537)
!5537 = !{null, !5258, !607}
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "edid_blob_ptr", scope: !5259, file: !201, line: 1632, baseType: !5079, size: 64, offset: 3200)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5259, file: !201, line: 1635, baseType: !4988, size: 3136, offset: 3264)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !5259, file: !201, line: 1641, baseType: !4993, size: 64, offset: 6400)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_capable_property", scope: !5259, file: !201, line: 1652, baseType: !4993, size: 64, offset: 6464)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace_property", scope: !5259, file: !201, line: 1658, baseType: !4993, size: 64, offset: 6528)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "path_blob_ptr", scope: !5259, file: !201, line: 1666, baseType: !5079, size: 64, offset: 6592)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc_property", scope: !5259, file: !201, line: 1672, baseType: !4993, size: 64, offset: 6656)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen", scope: !5259, file: !201, line: 1675, baseType: !5546, size: 64, offset: 6720)
!5546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5547, size: 64)
!5547 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_privacy_screen", file: !201, line: 46, flags: DIFlagFwdDecl)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_notifier", scope: !5259, file: !201, line: 1678, baseType: !5549, size: 192, offset: 6784)
!5549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !5550, line: 54, size: 192, elements: !5551)
!5550 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!5551 = !{!5552, !5558, !5559}
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !5549, file: !5550, line: 55, baseType: !5553, size: 64)
!5553 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !5550, line: 51, baseType: !5554)
!5554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5555, size: 64)
!5555 = !DISubroutineType(types: !5556)
!5556 = !{!109, !5557, !368, !365}
!5557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5549, size: 64)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5549, file: !5550, line: 56, baseType: !5557, size: 64, offset: 64)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !5549, file: !5550, line: 57, baseType: !109, size: 32, offset: 128)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_sw_state_property", scope: !5259, file: !201, line: 1684, baseType: !4993, size: 64, offset: 6976)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_hw_state_property", scope: !5259, file: !201, line: 1690, baseType: !4993, size: 64, offset: 7040)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "polled", scope: !5259, file: !201, line: 1717, baseType: !5563, size: 8, offset: 7104)
!5563 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !367, line: 108, baseType: !452)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5259, file: !201, line: 1725, baseType: !109, size: 32, offset: 7136)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5259, file: !201, line: 1728, baseType: !5566, size: 64, offset: 7168)
!5566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5567, size: 64)
!5567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5568)
!5568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_helper_funcs", file: !294, line: 860, size: 768, elements: !5569)
!5569 = !{!5570, !5571, !5575, !5579, !5584, !5588, !5592, !5596, !5600, !5606, !5610, !5611}
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "get_modes", scope: !5568, file: !294, line: 904, baseType: !5391, size: 64)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "detect_ctx", scope: !5568, file: !294, line: 930, baseType: !5572, size: 64, offset: 64)
!5572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5573, size: 64)
!5573 = !DISubroutineType(types: !5574)
!5574 = !{!109, !5258, !4833, !913}
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !5568, file: !294, line: 968, baseType: !5576, size: 64, offset: 128)
!5576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5577, size: 64)
!5577 = !DISubroutineType(types: !5578)
!5578 = !{!141, !5258, !5452}
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid_ctx", scope: !5568, file: !294, line: 1007, baseType: !5580, size: 64, offset: 192)
!5580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5581, size: 64)
!5581 = !DISubroutineType(types: !5582)
!5582 = !{!109, !5258, !5452, !4833, !5583}
!5583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "best_encoder", scope: !5568, file: !294, line: 1040, baseType: !5585, size: 64, offset: 256)
!5585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5586, size: 64)
!5586 = !DISubroutineType(types: !5587)
!5587 = !{!5406, !5258}
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_best_encoder", scope: !5568, file: !294, line: 1066, baseType: !5589, size: 64, offset: 320)
!5589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5590, size: 64)
!5590 = !DISubroutineType(types: !5591)
!5591 = !{!5406, !5258, !4958}
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !5568, file: !294, line: 1100, baseType: !5593, size: 64, offset: 384)
!5593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5594, size: 64)
!5594 = !DISubroutineType(types: !5595)
!5595 = !{!109, !5258, !4958}
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !5568, file: !294, line: 1115, baseType: !5597, size: 64, offset: 448)
!5597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5598, size: 64)
!5598 = !DISubroutineType(types: !5599)
!5599 = !{null, !5258, !4958}
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_writeback_job", scope: !5568, file: !294, line: 1132, baseType: !5601, size: 64, offset: 512)
!5601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5602, size: 64)
!5602 = !DISubroutineType(types: !5603)
!5603 = !{!109, !5604, !5509}
!5604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5605, size: 64)
!5605 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_writeback_connector", file: !294, line: 51, flags: DIFlagFwdDecl)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_writeback_job", scope: !5568, file: !294, line: 1147, baseType: !5607, size: 64, offset: 576)
!5607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5608, size: 64)
!5608 = !DISubroutineType(types: !5609)
!5609 = !{null, !5604, !5509}
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "enable_hpd", scope: !5568, file: !294, line: 1159, baseType: !5374, size: 64, offset: 640)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "disable_hpd", scope: !5568, file: !294, line: 1170, baseType: !5374, size: 64, offset: 704)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_mode", scope: !5259, file: !201, line: 1731, baseType: !5613, size: 768, offset: 7232)
!5613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_cmdline_mode", file: !201, line: 1348, size: 768, elements: !5614)
!5614 = !{!5615, !5616, !5617, !5618, !5619, !5620, !5621, !5622, !5623, !5624, !5625, !5626, !5627, !5628, !5629, !5630, !5631, !5632, !5633}
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5613, file: !201, line: 1354, baseType: !3774, size: 256)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "specified", scope: !5613, file: !201, line: 1361, baseType: !913, size: 8, offset: 256)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "refresh_specified", scope: !5613, file: !201, line: 1368, baseType: !913, size: 8, offset: 264)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "bpp_specified", scope: !5613, file: !201, line: 1375, baseType: !913, size: 8, offset: 272)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_clock", scope: !5613, file: !201, line: 1382, baseType: !7, size: 32, offset: 288)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !5613, file: !201, line: 1389, baseType: !109, size: 32, offset: 320)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !5613, file: !201, line: 1396, baseType: !109, size: 32, offset: 352)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !5613, file: !201, line: 1403, baseType: !109, size: 32, offset: 384)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !5613, file: !201, line: 1410, baseType: !109, size: 32, offset: 416)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !5613, file: !201, line: 1417, baseType: !913, size: 8, offset: 448)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !5613, file: !201, line: 1424, baseType: !913, size: 8, offset: 456)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "cvt", scope: !5613, file: !201, line: 1432, baseType: !913, size: 8, offset: 464)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !5613, file: !201, line: 1440, baseType: !913, size: 8, offset: 472)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5613, file: !201, line: 1448, baseType: !270, size: 32, offset: 480)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_reflection", scope: !5613, file: !201, line: 1458, baseType: !7, size: 32, offset: 512)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !5613, file: !201, line: 1466, baseType: !276, size: 32, offset: 544)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "tv_margins", scope: !5613, file: !201, line: 1471, baseType: !5487, size: 128, offset: 576)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode", scope: !5613, file: !201, line: 1476, baseType: !283, size: 32, offset: 704)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_specified", scope: !5613, file: !201, line: 1483, baseType: !913, size: 8, offset: 736)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5259, file: !201, line: 1733, baseType: !270, size: 32, offset: 8000)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "edid_override", scope: !5259, file: !201, line: 1741, baseType: !5636, size: 64, offset: 8064)
!5636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5637, size: 64)
!5637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5638)
!5638 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_edid", file: !201, line: 1741, flags: DIFlagFwdDecl)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "edid_override_mutex", scope: !5259, file: !201, line: 1746, baseType: !833, size: 256, offset: 8128)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "epoch_counter", scope: !5259, file: !201, line: 1749, baseType: !645, size: 64, offset: 8384)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "possible_encoders", scope: !5259, file: !201, line: 1756, baseType: !641, size: 32, offset: 8448)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !5259, file: !201, line: 1764, baseType: !5406, size: 64, offset: 8512)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "eld", scope: !5259, file: !201, line: 1768, baseType: !5644, size: 1024, offset: 8576)
!5644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5563, size: 1024, elements: !5645)
!5645 = !{!5646}
!5646 = !DISubrange(count: 128)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "eld_mutex", scope: !5259, file: !201, line: 1770, baseType: !833, size: 256, offset: 9600)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "latency_present", scope: !5259, file: !201, line: 1773, baseType: !5649, size: 16, offset: 9856)
!5649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !913, size: 16, elements: !952)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "video_latency", scope: !5259, file: !201, line: 1778, baseType: !5651, size: 64, offset: 9888)
!5651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 64, elements: !952)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "audio_latency", scope: !5259, file: !201, line: 1783, baseType: !5651, size: 64, offset: 9952)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "ddc", scope: !5259, file: !201, line: 1794, baseType: !5654, size: 64, offset: 10048)
!5654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5655, size: 64)
!5655 = !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !201, line: 48, flags: DIFlagFwdDecl)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "null_edid_counter", scope: !5259, file: !201, line: 1800, baseType: !109, size: 32, offset: 10112)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "bad_edid_counter", scope: !5259, file: !201, line: 1803, baseType: !7, size: 32, offset: 10144)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "edid_corrupt", scope: !5259, file: !201, line: 1810, baseType: !913, size: 8, offset: 10176)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "real_edid_checksum", scope: !5259, file: !201, line: 1816, baseType: !452, size: 8, offset: 10184)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_entry", scope: !5259, file: !201, line: 1819, baseType: !607, size: 64, offset: 10240)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5259, file: !201, line: 1835, baseType: !5400, size: 64, offset: 10304)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "tile_blob_ptr", scope: !5259, file: !201, line: 1852, baseType: !5079, size: 64, offset: 10368)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "has_tile", scope: !5259, file: !201, line: 1855, baseType: !913, size: 8, offset: 10432)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "tile_group", scope: !5259, file: !201, line: 1857, baseType: !5665, size: 64, offset: 10496)
!5665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5666, size: 64)
!5666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tile_group", file: !201, line: 2058, size: 256, elements: !5667)
!5667 = !{!5668, !5669, !5670, !5671}
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5666, file: !201, line: 2059, baseType: !395, size: 32)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5666, file: !201, line: 2060, baseType: !390, size: 64, offset: 64)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5666, file: !201, line: 2061, baseType: !109, size: 32, offset: 128)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "group_data", scope: !5666, file: !201, line: 2062, baseType: !5672, size: 64, offset: 160)
!5672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 64, elements: !1555)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "tile_is_single_monitor", scope: !5259, file: !201, line: 1859, baseType: !913, size: 8, offset: 10560)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "num_h_tile", scope: !5259, file: !201, line: 1863, baseType: !5563, size: 8, offset: 10568)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "num_v_tile", scope: !5259, file: !201, line: 1863, baseType: !5563, size: 8, offset: 10576)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_loc", scope: !5259, file: !201, line: 1866, baseType: !5563, size: 8, offset: 10584)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_loc", scope: !5259, file: !201, line: 1866, baseType: !5563, size: 8, offset: 10592)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_size", scope: !5259, file: !201, line: 1869, baseType: !5072, size: 16, offset: 10608)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_size", scope: !5259, file: !201, line: 1869, baseType: !5072, size: 16, offset: 10624)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "free_node", scope: !5259, file: !201, line: 1878, baseType: !1318, size: 64, offset: 10688)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_sink_metadata", scope: !5259, file: !201, line: 1881, baseType: !5682, size: 96, offset: 10752)
!5682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_sink_metadata", file: !185, line: 383, size: 96, elements: !5683)
!5683 = !{!5684, !5685}
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !5682, file: !185, line: 387, baseType: !642, size: 32)
!5685 = !DIDerivedType(tag: DW_TAG_member, scope: !5682, file: !185, line: 391, baseType: !5686, size: 64, offset: 32)
!5686 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5682, file: !185, line: 391, size: 64, elements: !5687)
!5687 = !{!5688}
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi_type1", scope: !5686, file: !185, line: 392, baseType: !5689, size: 64)
!5689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_static_metadata", file: !185, line: 370, size: 64, elements: !5690)
!5690 = !{!5691, !5692, !5693, !5694, !5695}
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "eotf", scope: !5689, file: !185, line: 371, baseType: !454, size: 8)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !5689, file: !185, line: 372, baseType: !454, size: 8, offset: 8)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "max_cll", scope: !5689, file: !185, line: 373, baseType: !463, size: 16, offset: 16)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "max_fall", scope: !5689, file: !185, line: 374, baseType: !463, size: 16, offset: 32)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "min_cll", scope: !5689, file: !185, line: 375, baseType: !463, size: 16, offset: 48)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5255, file: !4960, line: 185, baseType: !5400, size: 64, offset: 64)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !5255, file: !4960, line: 185, baseType: !5400, size: 64, offset: 128)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !5255, file: !4960, line: 185, baseType: !5400, size: 64, offset: 192)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "out_fence_ptr", scope: !5255, file: !4960, line: 193, baseType: !1788, size: 64, offset: 256)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "num_private_objs", scope: !4959, file: !4960, line: 405, baseType: !109, size: 32, offset: 448)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "private_objs", scope: !4959, file: !4960, line: 406, baseType: !5702, size: 64, offset: 512)
!5702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5703, size: 64)
!5703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_private_objs_state", file: !4960, line: 343, size: 256, elements: !5704)
!5704 = !{!5705, !5736, !5737, !5738}
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5703, file: !4960, line: 344, baseType: !5706, size: 64)
!5706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5707, size: 64)
!5707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_private_obj", file: !4960, line: 286, size: 704, elements: !5708)
!5708 = !{!5709, !5710, !5711, !5717}
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5707, file: !4960, line: 291, baseType: !377, size: 128)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5707, file: !4960, line: 296, baseType: !4814, size: 448, offset: 128)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5707, file: !4960, line: 301, baseType: !5712, size: 64, offset: 576)
!5712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5713, size: 64)
!5713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_private_state", file: !4960, line: 331, size: 128, elements: !5714)
!5714 = !{!5715, !5716}
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5713, file: !4960, line: 335, baseType: !4958, size: 64)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !5713, file: !4960, line: 340, baseType: !5706, size: 64, offset: 64)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5707, file: !4960, line: 309, baseType: !5718, size: 64, offset: 640)
!5718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5719, size: 64)
!5719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5720)
!5720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_private_state_funcs", file: !4960, line: 209, size: 192, elements: !5721)
!5721 = !{!5722, !5726, !5730}
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5720, file: !4960, line: 221, baseType: !5723, size: 64)
!5723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5724, size: 64)
!5724 = !DISubroutineType(types: !5725)
!5725 = !{!5712, !5706}
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5720, file: !4960, line: 228, baseType: !5727, size: 64, offset: 64)
!5727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5728, size: 64)
!5728 = !DISubroutineType(types: !5729)
!5729 = !{null, !5706, !5712}
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5720, file: !4960, line: 240, baseType: !5731, size: 64, offset: 128)
!5731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5732, size: 64)
!5732 = !DISubroutineType(types: !5733)
!5733 = !{null, !5138, !5734}
!5734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5735, size: 64)
!5735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5713)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5703, file: !4960, line: 345, baseType: !5712, size: 64, offset: 64)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !5703, file: !4960, line: 345, baseType: !5712, size: 64, offset: 128)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !5703, file: !4960, line: 345, baseType: !5712, size: 64, offset: 192)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !4959, file: !4960, line: 408, baseType: !4833, size: 64, offset: 576)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "fake_commit", scope: !4959, file: !4960, line: 420, baseType: !5101, size: 64, offset: 640)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "commit_work", scope: !4959, file: !4960, line: 428, baseType: !1093, size: 256, offset: 704)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !4875, file: !4810, line: 283, baseType: !5743, size: 64, offset: 320)
!5743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5744, size: 64)
!5744 = !DISubroutineType(types: !5745)
!5745 = !{!109, !390, !4958, !913}
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_alloc", scope: !4875, file: !4810, line: 302, baseType: !5747, size: 64, offset: 384)
!5747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5748, size: 64)
!5748 = !DISubroutineType(types: !5749)
!5749 = !{!4958, !390}
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_clear", scope: !4875, file: !4810, line: 323, baseType: !5751, size: 64, offset: 448)
!5751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5752, size: 64)
!5752 = !DISubroutineType(types: !5753)
!5753 = !{null, !4958}
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_free", scope: !4875, file: !4810, line: 338, baseType: !5751, size: 64, offset: 512)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "poll_enabled", scope: !4809, file: !4810, line: 546, baseType: !913, size: 8, offset: 3520)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "poll_running", scope: !4809, file: !4810, line: 547, baseType: !913, size: 8, offset: 3528)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_event", scope: !4809, file: !4810, line: 548, baseType: !913, size: 8, offset: 3536)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_work", scope: !4809, file: !4810, line: 549, baseType: !1149, size: 704, offset: 3584)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "blob_lock", scope: !4809, file: !4810, line: 557, baseType: !833, size: 256, offset: 4288)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "property_blob_list", scope: !4809, file: !4810, line: 565, baseType: !377, size: 128, offset: 4544)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "edid_property", scope: !4809, file: !4810, line: 573, baseType: !4993, size: 64, offset: 4672)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "dpms_property", scope: !4809, file: !4810, line: 578, baseType: !4993, size: 64, offset: 4736)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "path_property", scope: !4809, file: !4810, line: 583, baseType: !4993, size: 64, offset: 4800)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "tile_property", scope: !4809, file: !4810, line: 589, baseType: !4993, size: 64, offset: 4864)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "link_status_property", scope: !4809, file: !4810, line: 594, baseType: !4993, size: 64, offset: 4928)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "plane_type_property", scope: !4809, file: !4810, line: 599, baseType: !4993, size: 64, offset: 4992)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_x", scope: !4809, file: !4810, line: 604, baseType: !4993, size: 64, offset: 5056)
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_y", scope: !4809, file: !4810, line: 609, baseType: !4993, size: 64, offset: 5120)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_w", scope: !4809, file: !4810, line: 614, baseType: !4993, size: 64, offset: 5184)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_h", scope: !4809, file: !4810, line: 619, baseType: !4993, size: 64, offset: 5248)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_x", scope: !4809, file: !4810, line: 624, baseType: !4993, size: 64, offset: 5312)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_y", scope: !4809, file: !4810, line: 629, baseType: !4993, size: 64, offset: 5376)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_w", scope: !4809, file: !4810, line: 634, baseType: !4993, size: 64, offset: 5440)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_h", scope: !4809, file: !4810, line: 639, baseType: !4993, size: 64, offset: 5504)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_id", scope: !4809, file: !4810, line: 644, baseType: !4993, size: 64, offset: 5568)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "prop_in_fence_fd", scope: !4809, file: !4810, line: 649, baseType: !4993, size: 64, offset: 5632)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "prop_out_fence_ptr", scope: !4809, file: !4810, line: 655, baseType: !4993, size: 64, offset: 5696)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_id", scope: !4809, file: !4810, line: 660, baseType: !4993, size: 64, offset: 5760)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_damage_clips", scope: !4809, file: !4810, line: 669, baseType: !4993, size: 64, offset: 5824)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "prop_active", scope: !4809, file: !4810, line: 675, baseType: !4993, size: 64, offset: 5888)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "prop_mode_id", scope: !4809, file: !4810, line: 681, baseType: !4993, size: 64, offset: 5952)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "prop_vrr_enabled", scope: !4809, file: !4810, line: 686, baseType: !4993, size: 64, offset: 6016)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_subconnector_property", scope: !4809, file: !4810, line: 692, baseType: !4993, size: 64, offset: 6080)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_select_subconnector_property", scope: !4809, file: !4810, line: 697, baseType: !4993, size: 64, offset: 6144)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "dp_subconnector_property", scope: !4809, file: !4810, line: 703, baseType: !4993, size: 64, offset: 6208)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "tv_subconnector_property", scope: !4809, file: !4810, line: 709, baseType: !4993, size: 64, offset: 6272)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "tv_select_subconnector_property", scope: !4809, file: !4810, line: 714, baseType: !4993, size: 64, offset: 6336)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_tv_mode_property", scope: !4809, file: !4810, line: 722, baseType: !4993, size: 64, offset: 6400)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_property", scope: !4809, file: !4810, line: 728, baseType: !4993, size: 64, offset: 6464)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "tv_left_margin_property", scope: !4809, file: !4810, line: 734, baseType: !4993, size: 64, offset: 6528)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "tv_right_margin_property", scope: !4809, file: !4810, line: 739, baseType: !4993, size: 64, offset: 6592)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "tv_top_margin_property", scope: !4809, file: !4810, line: 744, baseType: !4993, size: 64, offset: 6656)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "tv_bottom_margin_property", scope: !4809, file: !4810, line: 749, baseType: !4993, size: 64, offset: 6720)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "tv_brightness_property", scope: !4809, file: !4810, line: 754, baseType: !4993, size: 64, offset: 6784)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "tv_contrast_property", scope: !4809, file: !4810, line: 759, baseType: !4993, size: 64, offset: 6848)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "tv_flicker_reduction_property", scope: !4809, file: !4810, line: 764, baseType: !4993, size: 64, offset: 6912)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "tv_overscan_property", scope: !4809, file: !4810, line: 769, baseType: !4993, size: 64, offset: 6976)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "tv_saturation_property", scope: !4809, file: !4810, line: 774, baseType: !4993, size: 64, offset: 7040)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "tv_hue_property", scope: !4809, file: !4810, line: 778, baseType: !4993, size: 64, offset: 7104)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !4809, file: !4810, line: 784, baseType: !4993, size: 64, offset: 7168)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_property", scope: !4809, file: !4810, line: 789, baseType: !4993, size: 64, offset: 7232)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_property", scope: !4809, file: !4810, line: 794, baseType: !4993, size: 64, offset: 7296)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_property", scope: !4809, file: !4810, line: 799, baseType: !4993, size: 64, offset: 7360)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_size_property", scope: !4809, file: !4810, line: 804, baseType: !4993, size: 64, offset: 7424)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "ctm_property", scope: !4809, file: !4810, line: 810, baseType: !4993, size: 64, offset: 7488)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_property", scope: !4809, file: !4810, line: 816, baseType: !4993, size: 64, offset: 7552)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_size_property", scope: !4809, file: !4810, line: 821, baseType: !4993, size: 64, offset: 7616)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_x_property", scope: !4809, file: !4810, line: 827, baseType: !4993, size: 64, offset: 7680)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_y_property", scope: !4809, file: !4810, line: 832, baseType: !4993, size: 64, offset: 7744)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop_property", scope: !4809, file: !4810, line: 839, baseType: !4993, size: 64, offset: 7808)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation_property", scope: !4809, file: !4810, line: 846, baseType: !4993, size: 64, offset: 7872)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_fb_id_property", scope: !4809, file: !4810, line: 853, baseType: !4993, size: 64, offset: 7936)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_pixel_formats_property", scope: !4809, file: !4810, line: 861, baseType: !4993, size: 64, offset: 8000)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_out_fence_ptr_property", scope: !4809, file: !4810, line: 869, baseType: !4993, size: 64, offset: 8064)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata_property", scope: !4809, file: !4810, line: 876, baseType: !4993, size: 64, offset: 8128)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection_property", scope: !4809, file: !4810, line: 882, baseType: !4993, size: 64, offset: 8192)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type_property", scope: !4809, file: !4810, line: 888, baseType: !4993, size: 64, offset: 8256)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_depth", scope: !4809, file: !4810, line: 891, baseType: !2054, size: 32, offset: 8320)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow", scope: !4809, file: !4810, line: 891, baseType: !2054, size: 32, offset: 8352)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_xbgr_30bpp", scope: !4809, file: !4810, line: 899, baseType: !913, size: 8, offset: 8384)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_host_byte_order", scope: !4809, file: !4810, line: 913, baseType: !913, size: 8, offset: 8392)
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "async_page_flip", scope: !4809, file: !4810, line: 919, baseType: !913, size: 8, offset: 8400)
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "fb_modifiers_not_supported", scope: !4809, file: !4810, line: 929, baseType: !913, size: 8, offset: 8408)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "normalize_zpos", scope: !4809, file: !4810, line: 937, baseType: !913, size: 8, offset: 8416)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers_property", scope: !4809, file: !4810, line: 943, baseType: !4993, size: 64, offset: 8448)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_width", scope: !4809, file: !4810, line: 946, baseType: !2054, size: 32, offset: 8512)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_height", scope: !4809, file: !4810, line: 946, baseType: !2054, size: 32, offset: 8544)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_state", scope: !4809, file: !4810, line: 955, baseType: !4958, size: 64, offset: 8576)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4809, file: !4810, line: 957, baseType: !5830, size: 64, offset: 8640)
!5830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5831, size: 64)
!5831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5832)
!5832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_helper_funcs", file: !294, line: 1454, size: 128, elements: !5833)
!5833 = !{!5834, !5835}
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit_tail", scope: !5832, file: !294, line: 1490, baseType: !5751, size: 64)
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit_setup", scope: !5832, file: !294, line: 1511, baseType: !5836, size: 64, offset: 64)
!5836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5837, size: 64)
!5837 = !DISubroutineType(types: !5838)
!5838 = !{!109, !4958}
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_lock", scope: !391, file: !194, line: 285, baseType: !833, size: 256, offset: 11648)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_idr", scope: !391, file: !194, line: 288, baseType: !1385, size: 192, offset: 11904)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "vma_offset_manager", scope: !391, file: !194, line: 291, baseType: !5842, size: 64, offset: 12096)
!5842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5843, size: 64)
!5843 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !194, line: 16, flags: DIFlagFwdDecl)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "vram_mm", scope: !391, file: !194, line: 294, baseType: !5845, size: 64, offset: 12160)
!5845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5846, size: 64)
!5846 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vram_mm", file: !194, line: 17, flags: DIFlagFwdDecl)
!5847 = !DIDerivedType(tag: DW_TAG_member, name: "switch_power_state", scope: !391, file: !194, line: 304, baseType: !193, size: 32, offset: 12224)
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "fb_helper", scope: !391, file: !194, line: 312, baseType: !5849, size: 64, offset: 12288)
!5849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5850, size: 64)
!5850 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_fb_helper", file: !194, line: 18, flags: DIFlagFwdDecl)
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !391, file: !194, line: 319, baseType: !833, size: 256, offset: 12352)
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !391, file: !194, line: 327, baseType: !377, size: 128, offset: 12608)
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !386, file: !387, line: 936, baseType: !4687, size: 64, offset: 64)
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !386, file: !387, line: 944, baseType: !377, size: 128, offset: 128)
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !386, file: !387, line: 947, baseType: !494, size: 64, offset: 256)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !386, file: !387, line: 959, baseType: !4814, size: 448, offset: 320)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !386, file: !387, line: 962, baseType: !4981, size: 256, offset: 768)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !386, file: !387, line: 971, baseType: !4973, size: 64, offset: 1024)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "cursor", scope: !386, file: !387, line: 980, baseType: !4973, size: 64, offset: 1088)
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !386, file: !387, line: 986, baseType: !7, size: 32, offset: 1152)
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_x", scope: !386, file: !387, line: 995, baseType: !109, size: 32, offset: 1184)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_y", scope: !386, file: !387, line: 1003, baseType: !109, size: 32, offset: 1216)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !386, file: !387, line: 1013, baseType: !913, size: 8, offset: 1248)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !386, file: !387, line: 1023, baseType: !4918, size: 960, offset: 1280)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "hwmode", scope: !386, file: !387, line: 1039, baseType: !4918, size: 960, offset: 2240)
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !386, file: !387, line: 1048, baseType: !109, size: 32, offset: 3200)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !386, file: !387, line: 1056, baseType: !109, size: 32, offset: 3232)
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !386, file: !387, line: 1059, baseType: !5869, size: 64, offset: 3264)
!5869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5870, size: 64)
!5870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5871)
!5871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_funcs", file: !387, line: 402, size: 1536, elements: !5872)
!5872 = !{!5873, !5877, !5881, !5885, !5889, !5894, !5895, !5910, !5914, !5918, !5922, !5926, !5930, !5934, !5940, !5944, !5945, !5949, !5954, !5960, !5964, !5968, !5969, !5970}
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5871, file: !387, line: 413, baseType: !5874, size: 64)
!5874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5875, size: 64)
!5875 = !DISubroutineType(types: !5876)
!5876 = !{null, !385}
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_set", scope: !5871, file: !387, line: 436, baseType: !5878, size: 64, offset: 64)
!5878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5879, size: 64)
!5879 = !DISubroutineType(types: !5880)
!5880 = !{!109, !385, !4883, !2054, !2054, !2054}
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_set2", scope: !5871, file: !387, line: 458, baseType: !5882, size: 64, offset: 128)
!5882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5883, size: 64)
!5883 = !DISubroutineType(types: !5884)
!5884 = !{!109, !385, !4883, !2054, !2054, !2054, !2031, !2031}
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_move", scope: !5871, file: !387, line: 478, baseType: !5886, size: 64, offset: 192)
!5886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5887, size: 64)
!5887 = !DISubroutineType(types: !5888)
!5888 = !{!109, !385, !109, !109}
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_set", scope: !5871, file: !387, line: 493, baseType: !5890, size: 64, offset: 256)
!5890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5891, size: 64)
!5891 = !DISubroutineType(types: !5892)
!5892 = !{!109, !385, !5893, !5893, !5893, !2054, !4833}
!5893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5871, file: !387, line: 504, baseType: !5874, size: 64, offset: 320)
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !5871, file: !387, line: 520, baseType: !5896, size: 64, offset: 384)
!5896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5897, size: 64)
!5897 = !DISubroutineType(types: !5898)
!5898 = !{!109, !5899, !4833}
!5899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5900, size: 64)
!5900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_set", file: !387, line: 1193, size: 384, elements: !5901)
!5901 = !{!5902, !5903, !5904, !5905, !5906, !5907, !5909}
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !5900, file: !387, line: 1194, baseType: !4881, size: 64)
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5900, file: !387, line: 1195, baseType: !385, size: 64, offset: 64)
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5900, file: !387, line: 1196, baseType: !5452, size: 64, offset: 128)
!5905 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !5900, file: !387, line: 1198, baseType: !2054, size: 32, offset: 192)
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !5900, file: !387, line: 1199, baseType: !2054, size: 32, offset: 224)
!5907 = !DIDerivedType(tag: DW_TAG_member, name: "connectors", scope: !5900, file: !387, line: 1201, baseType: !5908, size: 64, offset: 256)
!5908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5258, size: 64)
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "num_connectors", scope: !5900, file: !387, line: 1202, baseType: !540, size: 64, offset: 320)
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "page_flip", scope: !5871, file: !387, line: 576, baseType: !5911, size: 64, offset: 448)
!5911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5912, size: 64)
!5912 = !DISubroutineType(types: !5913)
!5913 = !{!109, !385, !4881, !5111, !2054, !4833}
!5914 = !DIDerivedType(tag: DW_TAG_member, name: "page_flip_target", scope: !5871, file: !387, line: 595, baseType: !5915, size: 64, offset: 512)
!5915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5916, size: 64)
!5916 = !DISubroutineType(types: !5917)
!5917 = !{!109, !385, !4881, !5111, !2054, !2054, !4833}
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5871, file: !387, line: 615, baseType: !5919, size: 64, offset: 576)
!5919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5920, size: 64)
!5920 = !DISubroutineType(types: !5921)
!5921 = !{!109, !385, !4993, !5004}
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5871, file: !387, line: 649, baseType: !5923, size: 64, offset: 640)
!5923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5924, size: 64)
!5924 = !DISubroutineType(types: !5925)
!5925 = !{!5217, !385}
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5871, file: !387, line: 659, baseType: !5927, size: 64, offset: 704)
!5927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5928, size: 64)
!5928 = !DISubroutineType(types: !5929)
!5929 = !{null, !385, !5217}
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5871, file: !387, line: 704, baseType: !5931, size: 64, offset: 768)
!5931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5932, size: 64)
!5932 = !DISubroutineType(types: !5933)
!5933 = !{!109, !385, !5217, !4993, !5004}
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5871, file: !387, line: 726, baseType: !5935, size: 64, offset: 832)
!5935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5936, size: 64)
!5936 = !DISubroutineType(types: !5937)
!5937 = !{!109, !385, !5938, !4993, !5003}
!5938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5939, size: 64)
!5939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5218)
!5940 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5871, file: !387, line: 744, baseType: !5941, size: 64, offset: 896)
!5941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5942, size: 64)
!5942 = !DISubroutineType(types: !5943)
!5943 = !{!109, !385}
!5944 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5871, file: !387, line: 755, baseType: !5874, size: 64, offset: 960)
!5945 = !DIDerivedType(tag: DW_TAG_member, name: "set_crc_source", scope: !5871, file: !387, line: 784, baseType: !5946, size: 64, offset: 1024)
!5946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5947, size: 64)
!5947 = !DISubroutineType(types: !5948)
!5948 = !{!109, !385, !416}
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "verify_crc_source", scope: !5871, file: !387, line: 800, baseType: !5950, size: 64, offset: 1088)
!5950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5951, size: 64)
!5951 = !DISubroutineType(types: !5952)
!5952 = !{!109, !385, !416, !5953}
!5953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!5954 = !DIDerivedType(tag: DW_TAG_member, name: "get_crc_sources", scope: !5871, file: !387, line: 822, baseType: !5955, size: 64, offset: 1152)
!5955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5956, size: 64)
!5956 = !DISubroutineType(types: !5957)
!5957 = !{!5958, !385, !5953}
!5958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5959, size: 64)
!5959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!5960 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5871, file: !387, line: 834, baseType: !5961, size: 64, offset: 1216)
!5961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5962, size: 64)
!5962 = !DISubroutineType(types: !5963)
!5963 = !{null, !5138, !5938}
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_counter", scope: !5871, file: !387, line: 861, baseType: !5965, size: 64, offset: 1280)
!5965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5966, size: 64)
!5966 = !DISubroutineType(types: !5967)
!5967 = !{!641, !385}
!5968 = !DIDerivedType(tag: DW_TAG_member, name: "enable_vblank", scope: !5871, file: !387, line: 874, baseType: !5941, size: 64, offset: 1344)
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "disable_vblank", scope: !5871, file: !387, line: 882, baseType: !5874, size: 64, offset: 1408)
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_timestamp", scope: !5871, file: !387, line: 920, baseType: !5971, size: 64, offset: 1472)
!5971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5972, size: 64)
!5972 = !DISubroutineType(types: !5973)
!5973 = !{!913, !385, !962, !5974, !913}
!5974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!5975 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_size", scope: !386, file: !387, line: 1068, baseType: !2054, size: 32, offset: 3328)
!5976 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_store", scope: !386, file: !387, line: 1077, baseType: !5977, size: 64, offset: 3392)
!5977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5072, size: 64)
!5978 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !386, file: !387, line: 1080, baseType: !5979, size: 64, offset: 3456)
!5979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5980, size: 64)
!5980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5981)
!5981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_helper_funcs", file: !294, line: 65, size: 1024, elements: !5982)
!5982 = !{!5983, !5987, !5988, !5989, !5993, !5997, !6001, !6002, !6006, !6010, !6011, !6015, !6019, !6020, !6021, !6022}
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5981, file: !294, line: 82, baseType: !5984, size: 64)
!5984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5985, size: 64)
!5985 = !DISubroutineType(types: !5986)
!5986 = !{null, !385, !109}
!5987 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !5981, file: !294, line: 97, baseType: !5874, size: 64, offset: 64)
!5988 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5981, file: !294, line: 112, baseType: !5874, size: 64, offset: 128)
!5989 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !5981, file: !294, line: 145, baseType: !5990, size: 64, offset: 192)
!5990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5991, size: 64)
!5991 = !DISubroutineType(types: !5992)
!5992 = !{!141, !385, !4916}
!5993 = !DIDerivedType(tag: DW_TAG_member, name: "mode_fixup", scope: !5981, file: !294, line: 191, baseType: !5994, size: 64, offset: 256)
!5994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5995, size: 64)
!5995 = !DISubroutineType(types: !5996)
!5996 = !{!913, !385, !4916, !5452}
!5997 = !DIDerivedType(tag: DW_TAG_member, name: "mode_set", scope: !5981, file: !294, line: 210, baseType: !5998, size: 64, offset: 320)
!5998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5999, size: 64)
!5999 = !DISubroutineType(types: !6000)
!6000 = !{!109, !385, !5452, !5452, !109, !109, !4881}
!6001 = !DIDerivedType(tag: DW_TAG_member, name: "mode_set_nofb", scope: !5981, file: !294, line: 233, baseType: !5874, size: 64, offset: 384)
!6002 = !DIDerivedType(tag: DW_TAG_member, name: "mode_set_base", scope: !5981, file: !294, line: 252, baseType: !6003, size: 64, offset: 448)
!6003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6004, size: 64)
!6004 = !DISubroutineType(types: !6005)
!6005 = !{!109, !385, !109, !109, !4881}
!6006 = !DIDerivedType(tag: DW_TAG_member, name: "mode_set_base_atomic", scope: !5981, file: !294, line: 269, baseType: !6007, size: 64, offset: 512)
!6007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6008, size: 64)
!6008 = !DISubroutineType(types: !6009)
!6009 = !{!109, !385, !4881, !109, !109, !293}
!6010 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !5981, file: !294, line: 304, baseType: !5874, size: 64, offset: 576)
!6011 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !5981, file: !294, line: 356, baseType: !6012, size: 64, offset: 640)
!6012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6013, size: 64)
!6013 = !DISubroutineType(types: !6014)
!6014 = !{!109, !385, !4958}
!6015 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_begin", scope: !5981, file: !294, line: 377, baseType: !6016, size: 64, offset: 704)
!6016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6017, size: 64)
!6017 = !DISubroutineType(types: !6018)
!6018 = !{null, !385, !4958}
!6019 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flush", scope: !5981, file: !294, line: 401, baseType: !6016, size: 64, offset: 768)
!6020 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_enable", scope: !5981, file: !294, line: 423, baseType: !6016, size: 64, offset: 832)
!6021 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_disable", scope: !5981, file: !294, line: 443, baseType: !6016, size: 64, offset: 896)
!6022 = !DIDerivedType(tag: DW_TAG_member, name: "get_scanout_position", scope: !5981, file: !294, line: 488, baseType: !6023, size: 64, offset: 960)
!6023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6024, size: 64)
!6024 = !DISubroutineType(types: !6025)
!6025 = !{!913, !385, !913, !962, !962, !5974, !5974, !4916}
!6026 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !386, file: !387, line: 1083, baseType: !4988, size: 3136, offset: 3520)
!6027 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter_property", scope: !386, file: !387, line: 1089, baseType: !4993, size: 64, offset: 6656)
!6028 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !386, file: !387, line: 1104, baseType: !5217, size: 64, offset: 6720)
!6029 = !DIDerivedType(tag: DW_TAG_member, name: "commit_list", scope: !386, file: !387, line: 1121, baseType: !377, size: 128, offset: 6784)
!6030 = !DIDerivedType(tag: DW_TAG_member, name: "commit_lock", scope: !386, file: !387, line: 1128, baseType: !428, size: 32, offset: 6912)
!6031 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_entry", scope: !386, file: !387, line: 1135, baseType: !607, size: 64, offset: 6976)
!6032 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !386, file: !387, line: 1142, baseType: !6033, size: 576, offset: 7040)
!6033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_crc", file: !6034, line: 53, size: 576, elements: !6035)
!6034 = !DIFile(filename: "./include/drm/drm_debugfs_crc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e277ec0ede400e3d94103804613a92f2")
!6035 = !{!6036, !6037, !6038, !6039, !6040, !6050, !6051, !6052, !6053}
!6036 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6033, file: !6034, line: 54, baseType: !428, size: 32)
!6037 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !6033, file: !6034, line: 55, baseType: !416, size: 64, offset: 64)
!6038 = !DIDerivedType(tag: DW_TAG_member, name: "opened", scope: !6033, file: !6034, line: 56, baseType: !913, size: 8, offset: 128)
!6039 = !DIDerivedType(tag: DW_TAG_member, name: "overflow", scope: !6033, file: !6034, line: 56, baseType: !913, size: 8, offset: 136)
!6040 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !6033, file: !6034, line: 57, baseType: !6041, size: 64, offset: 192)
!6041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6042, size: 64)
!6042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_crc_entry", file: !6034, line: 33, size: 384, elements: !6043)
!6043 = !{!6044, !6045, !6046}
!6044 = !DIDerivedType(tag: DW_TAG_member, name: "has_frame_counter", scope: !6042, file: !6034, line: 34, baseType: !913, size: 8)
!6045 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !6042, file: !6034, line: 35, baseType: !2054, size: 32, offset: 32)
!6046 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !6042, file: !6034, line: 36, baseType: !6047, size: 320, offset: 64)
!6047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2054, size: 320, elements: !6048)
!6048 = !{!6049}
!6049 = !DISubrange(count: 10)
!6050 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !6033, file: !6034, line: 58, baseType: !109, size: 32, offset: 256)
!6051 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !6033, file: !6034, line: 58, baseType: !109, size: 32, offset: 288)
!6052 = !DIDerivedType(tag: DW_TAG_member, name: "values_cnt", scope: !6033, file: !6034, line: 59, baseType: !540, size: 64, offset: 320)
!6053 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !6033, file: !6034, line: 60, baseType: !1367, size: 192, offset: 384)
!6054 = !DIDerivedType(tag: DW_TAG_member, name: "fence_context", scope: !386, file: !387, line: 1149, baseType: !7, size: 32, offset: 7616)
!6055 = !DIDerivedType(tag: DW_TAG_member, name: "fence_lock", scope: !386, file: !387, line: 1156, baseType: !428, size: 32, offset: 7648)
!6056 = !DIDerivedType(tag: DW_TAG_member, name: "fence_seqno", scope: !386, file: !387, line: 1163, baseType: !368, size: 64, offset: 7680)
!6057 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_name", scope: !386, file: !387, line: 1170, baseType: !3774, size: 256, offset: 7744)
!6058 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_data", scope: !386, file: !387, line: 1177, baseType: !381, size: 64, offset: 8000)
!6059 = !DIDerivedType(tag: DW_TAG_member, name: "entry_work", scope: !382, file: !3, line: 60, baseType: !1149, size: 704, offset: 64)
!6060 = !DIDerivedType(tag: DW_TAG_member, name: "avg_mutex", scope: !382, file: !3, line: 62, baseType: !833, size: 256, offset: 768)
!6061 = !DIDerivedType(tag: DW_TAG_member, name: "entry_avg_ms", scope: !382, file: !3, line: 63, baseType: !6062, size: 64, offset: 1024)
!6062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ewma_psr_time", file: !3, line: 56, size: 64, elements: !6063)
!6063 = !{!6064}
!6064 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !6062, file: !3, line: 56, baseType: !368, size: 64)
!6065 = !DIDerivedType(tag: DW_TAG_member, name: "exit_avg_ms", scope: !382, file: !3, line: 64, baseType: !6062, size: 64, offset: 1088)
!6066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!6067 = !{!0, !6068, !6070, !6075, !6087, !6089, !6092, !6094, !6096}
!6068 = !DIGlobalVariableExpression(var: !6069, expr: !DIExpression())
!6069 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_self_refresh_helper_alter_state323", scope: !2, file: !3, line: 224, type: !365, isLocal: true, isDefinition: true)
!6070 = !DIGlobalVariableExpression(var: !6071, expr: !DIExpression())
!6071 = distinct !DIGlobalVariable(scope: null, file: !3, line: 237, type: !6072, isLocal: true, isDefinition: true)
!6072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 336, elements: !6073)
!6073 = !{!6074}
!6074 = !DISubrange(count: 42)
!6075 = !DIGlobalVariableExpression(var: !6076, expr: !DIExpression())
!6076 = distinct !DIGlobalVariable(name: "__key", scope: !6077, file: !3, line: 244, type: !1206, isLocal: true, isDefinition: true)
!6077 = distinct !DISubprogram(name: "drm_self_refresh_helper_init", scope: !3, file: !3, line: 232, type: !5942, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6078)
!6078 = !{!6079, !6080, !6081, !6084}
!6079 = !DILocalVariable(name: "crtc", arg: 1, scope: !6077, file: !3, line: 232, type: !385)
!6080 = !DILocalVariable(name: "sr_data", scope: !6077, file: !3, line: 234, type: !381)
!6081 = !DILocalVariable(name: "__ret_warn_on", scope: !6082, file: !3, line: 237, type: !109)
!6082 = distinct !DILexicalBlock(scope: !6083, file: !3, line: 237, column: 6)
!6083 = distinct !DILexicalBlock(scope: !6077, file: !3, line: 237, column: 6)
!6084 = !DILocalVariable(name: "__flags", scope: !6085, file: !3, line: 237, type: !109)
!6085 = distinct !DILexicalBlock(scope: !6086, file: !3, line: 237, column: 6)
!6086 = distinct !DILexicalBlock(scope: !6082, file: !3, line: 237, column: 6)
!6087 = !DIGlobalVariableExpression(var: !6088, expr: !DIExpression())
!6088 = distinct !DIGlobalVariable(name: "__key", scope: !6077, file: !3, line: 247, type: !1206, isLocal: true, isDefinition: true)
!6089 = !DIGlobalVariableExpression(var: !6090, expr: !DIExpression())
!6090 = distinct !DIGlobalVariable(scope: null, file: !3, line: 247, type: !6091, isLocal: true, isDefinition: true)
!6091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 160, elements: !3105)
!6092 = !DIGlobalVariableExpression(var: !6093, expr: !DIExpression())
!6093 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_self_refresh_helper_init324", scope: !2, file: !3, line: 262, type: !365, isLocal: true, isDefinition: true)
!6094 = !DIGlobalVariableExpression(var: !6095, expr: !DIExpression())
!6095 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_self_refresh_helper_cleanup325", scope: !2, file: !3, line: 281, type: !365, isLocal: true, isDefinition: true)
!6096 = !DIGlobalVariableExpression(var: !6097, expr: !DIExpression())
!6097 = distinct !DIGlobalVariable(scope: null, file: !347, line: 480, type: !6098, isLocal: true, isDefinition: true)
!6098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 168, elements: !6099)
!6099 = !{!6100}
!6100 = !DISubrange(count: 21)
!6101 = !{i32 7, !"Dwarf Version", i32 5}
!6102 = !{i32 2, !"Debug Info Version", i32 3}
!6103 = !{i32 1, !"wchar_size", i32 2}
!6104 = !{i32 8, !"cf-protection-branch", i32 1}
!6105 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6106 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6107 = !{i32 1, !"Code Model", i32 2}
!6108 = !{i32 1, !"override-stack-alignment", i32 8}
!6109 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6110 = distinct !DISubprogram(name: "drm_self_refresh_helper_update_avg_times", scope: !3, file: !3, line: 145, type: !6111, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6113)
!6111 = !DISubroutineType(types: !6112)
!6112 = !{null, !4958, !7, !7}
!6113 = !{!6114, !6115, !6116, !6117, !6118, !6119, !6120, !6125, !6126}
!6114 = !DILocalVariable(name: "state", arg: 1, scope: !6110, file: !3, line: 145, type: !4958)
!6115 = !DILocalVariable(name: "commit_time_ms", arg: 2, scope: !6110, file: !3, line: 146, type: !7)
!6116 = !DILocalVariable(name: "new_self_refresh_mask", arg: 3, scope: !6110, file: !3, line: 147, type: !7)
!6117 = !DILocalVariable(name: "crtc", scope: !6110, file: !3, line: 149, type: !385)
!6118 = !DILocalVariable(name: "old_crtc_state", scope: !6110, file: !3, line: 150, type: !5217)
!6119 = !DILocalVariable(name: "i", scope: !6110, file: !3, line: 151, type: !109)
!6120 = !DILocalVariable(name: "new_self_refresh_active", scope: !6121, file: !3, line: 154, type: !913)
!6121 = distinct !DILexicalBlock(scope: !6122, file: !3, line: 153, column: 61)
!6122 = distinct !DILexicalBlock(scope: !6123, file: !3, line: 153, column: 2)
!6123 = distinct !DILexicalBlock(scope: !6124, file: !3, line: 153, column: 2)
!6124 = distinct !DILexicalBlock(scope: !6110, file: !3, line: 153, column: 2)
!6125 = !DILocalVariable(name: "sr_data", scope: !6121, file: !3, line: 155, type: !381)
!6126 = !DILocalVariable(name: "time", scope: !6121, file: !3, line: 156, type: !6127)
!6127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6062, size: 64)
!6128 = !DILocation(line: 145, column: 67, scope: !6110)
!6129 = !DILocation(line: 146, column: 20, scope: !6110)
!6130 = !DILocation(line: 147, column: 20, scope: !6110)
!6131 = !DILocation(line: 149, column: 2, scope: !6110)
!6132 = !DILocation(line: 149, column: 19, scope: !6110)
!6133 = !DILocation(line: 150, column: 2, scope: !6110)
!6134 = !DILocation(line: 150, column: 25, scope: !6110)
!6135 = !DILocation(line: 151, column: 2, scope: !6110)
!6136 = !DILocation(line: 151, column: 6, scope: !6110)
!6137 = !DILocation(line: 153, column: 2, scope: !6124)
!6138 = !DILocation(line: 153, column: 2, scope: !6123)
!6139 = !DILocation(line: 153, column: 2, scope: !6122)
!6140 = !DILocation(line: 153, column: 2, scope: !6141)
!6141 = distinct !DILexicalBlock(scope: !6122, file: !3, line: 153, column: 2)
!6142 = !DILocation(line: 154, column: 3, scope: !6121)
!6143 = !DILocation(line: 154, column: 8, scope: !6121)
!6144 = !DILocation(line: 154, column: 34, scope: !6121)
!6145 = !DILocation(line: 154, column: 58, scope: !6121)
!6146 = !DILocation(line: 154, column: 56, scope: !6121)
!6147 = !DILocation(line: 155, column: 3, scope: !6121)
!6148 = !DILocation(line: 155, column: 33, scope: !6121)
!6149 = !DILocation(line: 155, column: 43, scope: !6121)
!6150 = !DILocation(line: 155, column: 49, scope: !6121)
!6151 = !DILocation(line: 156, column: 3, scope: !6121)
!6152 = !DILocation(line: 156, column: 25, scope: !6121)
!6153 = !DILocation(line: 158, column: 7, scope: !6154)
!6154 = distinct !DILexicalBlock(scope: !6121, file: !3, line: 158, column: 7)
!6155 = !DILocation(line: 158, column: 23, scope: !6154)
!6156 = !{i8 0, i8 2}
!6157 = !DILocation(line: 159, column: 7, scope: !6154)
!6158 = !DILocation(line: 158, column: 43, scope: !6154)
!6159 = !DILocation(line: 158, column: 7, scope: !6121)
!6160 = !DILocation(line: 160, column: 4, scope: !6154)
!6161 = !DILocation(line: 162, column: 7, scope: !6162)
!6162 = distinct !DILexicalBlock(scope: !6121, file: !3, line: 162, column: 7)
!6163 = !DILocation(line: 162, column: 7, scope: !6121)
!6164 = !DILocation(line: 163, column: 12, scope: !6162)
!6165 = !DILocation(line: 163, column: 21, scope: !6162)
!6166 = !DILocation(line: 163, column: 9, scope: !6162)
!6167 = !DILocation(line: 163, column: 4, scope: !6162)
!6168 = !DILocation(line: 165, column: 12, scope: !6162)
!6169 = !DILocation(line: 165, column: 21, scope: !6162)
!6170 = !DILocation(line: 165, column: 9, scope: !6162)
!6171 = !DILocation(line: 167, column: 15, scope: !6121)
!6172 = !DILocation(line: 167, column: 24, scope: !6121)
!6173 = !DILocation(line: 167, column: 3, scope: !6121)
!6174 = !DILocation(line: 168, column: 21, scope: !6121)
!6175 = !DILocation(line: 168, column: 27, scope: !6121)
!6176 = !DILocation(line: 168, column: 3, scope: !6121)
!6177 = !DILocation(line: 169, column: 17, scope: !6121)
!6178 = !DILocation(line: 169, column: 26, scope: !6121)
!6179 = !DILocation(line: 169, column: 3, scope: !6121)
!6180 = !DILocation(line: 170, column: 2, scope: !6122)
!6181 = distinct !{!6181, !6137, !6182, !6183, !6184}
!6182 = !DILocation(line: 170, column: 2, scope: !6124)
!6183 = !{!"llvm.loop.mustprogress"}
!6184 = !{!"llvm.loop.unroll.disable"}
!6185 = !DILocation(line: 171, column: 1, scope: !6110)
!6186 = !DISubprogram(name: "mutex_lock", scope: !834, file: !834, line: 227, type: !6187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6187 = !DISubroutineType(types: !6188)
!6188 = !{null, !6189}
!6189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!6190 = distinct !DISubprogram(name: "ewma_psr_time_add", scope: !3, file: !3, line: 56, type: !6191, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6193)
!6191 = !DISubroutineType(types: !6192)
!6192 = !{null, !6127, !368}
!6193 = !{!6194, !6195, !6196, !6197, !6198}
!6194 = !DILocalVariable(name: "e", arg: 1, scope: !6190, file: !3, line: 56, type: !6127)
!6195 = !DILocalVariable(name: "val", arg: 2, scope: !6190, file: !3, line: 56, type: !368)
!6196 = !DILocalVariable(name: "internal", scope: !6190, file: !3, line: 56, type: !368)
!6197 = !DILocalVariable(name: "weight_rcp", scope: !6190, file: !3, line: 56, type: !368)
!6198 = !DILocalVariable(name: "precision", scope: !6190, file: !3, line: 56, type: !368)
!6199 = !DILocation(line: 56, column: 1, scope: !6190)
!6200 = !DILocation(line: 56, column: 1, scope: !6201)
!6201 = distinct !DILexicalBlock(scope: !6190, file: !3, line: 56, column: 1)
!6202 = !DILocation(line: 56, column: 1, scope: !6203)
!6203 = distinct !DILexicalBlock(scope: !6201, file: !3, line: 56, column: 1)
!6204 = !DILocation(line: 56, column: 1, scope: !6205)
!6205 = distinct !DILexicalBlock(scope: !6190, file: !3, line: 56, column: 1)
!6206 = !DILocation(line: 56, column: 1, scope: !6207)
!6207 = distinct !DILexicalBlock(scope: !6190, file: !3, line: 56, column: 1)
!6208 = !DILocation(line: 56, column: 1, scope: !6209)
!6209 = distinct !DILexicalBlock(scope: !6190, file: !3, line: 56, column: 1)
!6210 = !DILocation(line: 56, column: 1, scope: !6211)
!6211 = distinct !DILexicalBlock(scope: !6190, file: !3, line: 56, column: 1)
!6212 = !DILocation(line: 56, column: 1, scope: !6213)
!6213 = distinct !DILexicalBlock(scope: !6190, file: !3, line: 56, column: 1)
!6214 = !DILocation(line: 56, column: 1, scope: !6215)
!6215 = distinct !DILexicalBlock(scope: !6213, file: !3, line: 56, column: 1)
!6216 = !DILocation(line: 56, column: 1, scope: !6217)
!6217 = distinct !DILexicalBlock(scope: !6213, file: !3, line: 56, column: 1)
!6218 = !DISubprogram(name: "mutex_unlock", scope: !834, file: !834, line: 246, type: !6187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6219 = distinct !DISubprogram(name: "drm_self_refresh_helper_alter_state", scope: !3, file: !3, line: 187, type: !5752, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6220)
!6220 = !{!6221, !6222, !6223, !6224, !6225, !6230}
!6221 = !DILocalVariable(name: "state", arg: 1, scope: !6219, file: !3, line: 187, type: !4958)
!6222 = !DILocalVariable(name: "crtc", scope: !6219, file: !3, line: 189, type: !385)
!6223 = !DILocalVariable(name: "crtc_state", scope: !6219, file: !3, line: 190, type: !5217)
!6224 = !DILocalVariable(name: "i", scope: !6219, file: !3, line: 191, type: !109)
!6225 = !DILocalVariable(name: "sr_data", scope: !6226, file: !3, line: 204, type: !381)
!6226 = distinct !DILexicalBlock(scope: !6227, file: !3, line: 203, column: 57)
!6227 = distinct !DILexicalBlock(scope: !6228, file: !3, line: 203, column: 2)
!6228 = distinct !DILexicalBlock(scope: !6229, file: !3, line: 203, column: 2)
!6229 = distinct !DILexicalBlock(scope: !6219, file: !3, line: 203, column: 2)
!6230 = !DILocalVariable(name: "delay", scope: !6226, file: !3, line: 205, type: !7)
!6231 = !DILocation(line: 187, column: 67, scope: !6219)
!6232 = !DILocation(line: 189, column: 2, scope: !6219)
!6233 = !DILocation(line: 189, column: 19, scope: !6219)
!6234 = !DILocation(line: 190, column: 2, scope: !6219)
!6235 = !DILocation(line: 190, column: 25, scope: !6219)
!6236 = !DILocation(line: 191, column: 2, scope: !6219)
!6237 = !DILocation(line: 191, column: 6, scope: !6219)
!6238 = !DILocation(line: 193, column: 6, scope: !6239)
!6239 = distinct !DILexicalBlock(scope: !6219, file: !3, line: 193, column: 6)
!6240 = !DILocation(line: 193, column: 13, scope: !6239)
!6241 = !DILocation(line: 193, column: 26, scope: !6239)
!6242 = !DILocation(line: 193, column: 30, scope: !6239)
!6243 = !DILocation(line: 193, column: 37, scope: !6239)
!6244 = !DILocation(line: 193, column: 6, scope: !6219)
!6245 = !DILocation(line: 194, column: 3, scope: !6246)
!6246 = distinct !DILexicalBlock(scope: !6247, file: !3, line: 194, column: 3)
!6247 = distinct !DILexicalBlock(scope: !6239, file: !3, line: 193, column: 52)
!6248 = !DILocation(line: 194, column: 3, scope: !6249)
!6249 = distinct !DILexicalBlock(scope: !6246, file: !3, line: 194, column: 3)
!6250 = !DILocation(line: 194, column: 3, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !6249, file: !3, line: 194, column: 3)
!6252 = !DILocation(line: 194, column: 3, scope: !6253)
!6253 = distinct !DILexicalBlock(scope: !6251, file: !3, line: 194, column: 3)
!6254 = !DILocation(line: 195, column: 8, scope: !6255)
!6255 = distinct !DILexicalBlock(scope: !6256, file: !3, line: 195, column: 8)
!6256 = distinct !DILexicalBlock(scope: !6251, file: !3, line: 194, column: 58)
!6257 = !DILocation(line: 195, column: 20, scope: !6255)
!6258 = !DILocation(line: 195, column: 8, scope: !6256)
!6259 = !DILocation(line: 196, column: 5, scope: !6260)
!6260 = distinct !DILexicalBlock(scope: !6255, file: !3, line: 195, column: 41)
!6261 = !DILocation(line: 196, column: 12, scope: !6260)
!6262 = !DILocation(line: 196, column: 25, scope: !6260)
!6263 = !DILocation(line: 197, column: 5, scope: !6260)
!6264 = !DILocation(line: 197, column: 12, scope: !6260)
!6265 = !DILocation(line: 197, column: 26, scope: !6260)
!6266 = !DILocation(line: 198, column: 5, scope: !6260)
!6267 = distinct !{!6267, !6245, !6268, !6183, !6184}
!6268 = !DILocation(line: 200, column: 3, scope: !6246)
!6269 = !DILocation(line: 201, column: 2, scope: !6247)
!6270 = !DILocation(line: 203, column: 2, scope: !6229)
!6271 = !DILocation(line: 203, column: 2, scope: !6228)
!6272 = !DILocation(line: 203, column: 2, scope: !6227)
!6273 = !DILocation(line: 203, column: 2, scope: !6274)
!6274 = distinct !DILexicalBlock(scope: !6227, file: !3, line: 203, column: 2)
!6275 = !DILocation(line: 204, column: 3, scope: !6226)
!6276 = !DILocation(line: 204, column: 33, scope: !6226)
!6277 = !DILocation(line: 205, column: 3, scope: !6226)
!6278 = !DILocation(line: 205, column: 16, scope: !6226)
!6279 = !DILocation(line: 208, column: 7, scope: !6280)
!6280 = distinct !DILexicalBlock(scope: !6226, file: !3, line: 208, column: 7)
!6281 = !DILocation(line: 208, column: 19, scope: !6280)
!6282 = !DILocation(line: 208, column: 7, scope: !6226)
!6283 = !DILocation(line: 209, column: 4, scope: !6280)
!6284 = !DILocation(line: 211, column: 13, scope: !6226)
!6285 = !DILocation(line: 211, column: 19, scope: !6226)
!6286 = !DILocation(line: 211, column: 11, scope: !6226)
!6287 = !DILocation(line: 212, column: 8, scope: !6288)
!6288 = distinct !DILexicalBlock(scope: !6226, file: !3, line: 212, column: 7)
!6289 = !DILocation(line: 212, column: 7, scope: !6226)
!6290 = !DILocation(line: 213, column: 4, scope: !6288)
!6291 = !DILocation(line: 215, column: 15, scope: !6226)
!6292 = !DILocation(line: 215, column: 24, scope: !6226)
!6293 = !DILocation(line: 215, column: 3, scope: !6226)
!6294 = !DILocation(line: 216, column: 32, scope: !6226)
!6295 = !DILocation(line: 216, column: 41, scope: !6226)
!6296 = !DILocation(line: 216, column: 12, scope: !6226)
!6297 = !DILocation(line: 217, column: 25, scope: !6226)
!6298 = !DILocation(line: 217, column: 34, scope: !6226)
!6299 = !DILocation(line: 217, column: 5, scope: !6226)
!6300 = !DILocation(line: 216, column: 55, scope: !6226)
!6301 = !DILocation(line: 217, column: 48, scope: !6226)
!6302 = !DILocation(line: 216, column: 11, scope: !6226)
!6303 = !DILocation(line: 216, column: 9, scope: !6226)
!6304 = !DILocation(line: 218, column: 17, scope: !6226)
!6305 = !DILocation(line: 218, column: 26, scope: !6226)
!6306 = !DILocation(line: 218, column: 3, scope: !6226)
!6307 = !DILocation(line: 220, column: 20, scope: !6226)
!6308 = !DILocation(line: 220, column: 32, scope: !6226)
!6309 = !DILocation(line: 220, column: 41, scope: !6226)
!6310 = !DILocation(line: 221, column: 23, scope: !6226)
!6311 = !DILocation(line: 221, column: 6, scope: !6226)
!6312 = !DILocation(line: 220, column: 3, scope: !6226)
!6313 = !DILocation(line: 222, column: 2, scope: !6227)
!6314 = distinct !{!6314, !6270, !6315, !6183, !6184}
!6315 = !DILocation(line: 222, column: 2, scope: !6229)
!6316 = !DILocation(line: 223, column: 1, scope: !6219)
!6317 = distinct !DISubprogram(name: "ewma_psr_time_read", scope: !3, file: !3, line: 56, type: !6318, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6320)
!6318 = !DISubroutineType(types: !6319)
!6319 = !{!368, !6127}
!6320 = !{!6321}
!6321 = !DILocalVariable(name: "e", arg: 1, scope: !6317, file: !3, line: 56, type: !6127)
!6322 = !DILocation(line: 56, column: 1, scope: !6317)
!6323 = !DILocation(line: 56, column: 1, scope: !6324)
!6324 = distinct !DILexicalBlock(scope: !6317, file: !3, line: 56, column: 1)
!6325 = !DILocation(line: 56, column: 1, scope: !6326)
!6326 = distinct !DILexicalBlock(scope: !6317, file: !3, line: 56, column: 1)
!6327 = !DILocation(line: 56, column: 1, scope: !6328)
!6328 = distinct !DILexicalBlock(scope: !6317, file: !3, line: 56, column: 1)
!6329 = !DILocation(line: 56, column: 1, scope: !6330)
!6330 = distinct !DILexicalBlock(scope: !6317, file: !3, line: 56, column: 1)
!6331 = distinct !DISubprogram(name: "mod_delayed_work", scope: !321, file: !321, line: 588, type: !6332, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6334)
!6332 = !DISubroutineType(types: !6333)
!6333 = !{!913, !1154, !6066, !368}
!6334 = !{!6335, !6336, !6337}
!6335 = !DILocalVariable(name: "wq", arg: 1, scope: !6331, file: !321, line: 588, type: !1154)
!6336 = !DILocalVariable(name: "dwork", arg: 2, scope: !6331, file: !321, line: 589, type: !6066)
!6337 = !DILocalVariable(name: "delay", arg: 3, scope: !6331, file: !321, line: 590, type: !368)
!6338 = !DILocation(line: 588, column: 62, scope: !6331)
!6339 = !DILocation(line: 589, column: 30, scope: !6331)
!6340 = !DILocation(line: 590, column: 23, scope: !6331)
!6341 = !DILocation(line: 592, column: 47, scope: !6331)
!6342 = !DILocation(line: 592, column: 51, scope: !6331)
!6343 = !DILocation(line: 592, column: 58, scope: !6331)
!6344 = !DILocation(line: 592, column: 9, scope: !6331)
!6345 = !DILocation(line: 592, column: 2, scope: !6331)
!6346 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !6347, file: !6347, line: 515, type: !6348, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6350)
!6347 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "190f1e06c9553a58717d0072201a9169")
!6348 = !DISubroutineType(types: !6349)
!6349 = !{!368, !4038}
!6350 = !{!6351}
!6351 = !DILocalVariable(name: "m", arg: 1, scope: !6346, file: !6347, line: 515, type: !4038)
!6352 = !DILocation(line: 515, column: 74, scope: !6346)
!6353 = !DILocation(line: 517, column: 27, scope: !6354)
!6354 = distinct !DILexicalBlock(scope: !6346, file: !6347, line: 517, column: 6)
!6355 = !DILocation(line: 517, column: 6, scope: !6354)
!6356 = !DILocation(line: 517, column: 6, scope: !6346)
!6357 = !DILocation(line: 518, column: 12, scope: !6358)
!6358 = distinct !DILexicalBlock(scope: !6359, file: !6347, line: 518, column: 7)
!6359 = distinct !DILexicalBlock(scope: !6354, file: !6347, line: 517, column: 31)
!6360 = !DILocation(line: 518, column: 14, scope: !6358)
!6361 = !DILocation(line: 518, column: 7, scope: !6359)
!6362 = !DILocation(line: 519, column: 4, scope: !6358)
!6363 = !DILocation(line: 520, column: 28, scope: !6359)
!6364 = !DILocation(line: 520, column: 10, scope: !6359)
!6365 = !DILocation(line: 520, column: 3, scope: !6359)
!6366 = !DILocation(line: 522, column: 29, scope: !6367)
!6367 = distinct !DILexicalBlock(scope: !6354, file: !6347, line: 521, column: 9)
!6368 = !DILocation(line: 522, column: 10, scope: !6367)
!6369 = !DILocation(line: 522, column: 3, scope: !6367)
!6370 = !DILocation(line: 524, column: 1, scope: !6346)
!6371 = !DILocation(line: 232, column: 51, scope: !6077)
!6372 = !DILocation(line: 234, column: 2, scope: !6077)
!6373 = !DILocation(line: 234, column: 32, scope: !6077)
!6374 = !DILocation(line: 234, column: 42, scope: !6077)
!6375 = !DILocation(line: 234, column: 48, scope: !6077)
!6376 = !DILocation(line: 237, column: 6, scope: !6082)
!6377 = !DILocation(line: 237, column: 6, scope: !6086)
!6378 = !DILocation(line: 237, column: 6, scope: !6085)
!6379 = !DILocation(line: 237, column: 6, scope: !6380)
!6380 = distinct !DILexicalBlock(scope: !6085, file: !3, line: 237, column: 6)
!6381 = !DILocation(line: 237, column: 6, scope: !6382)
!6382 = distinct !DILexicalBlock(scope: !6085, file: !3, line: 237, column: 6)
!6383 = !{i64 2155481338, i64 2155481367, i64 2155481413, i64 2155481471, i64 2155481525, i64 2155481579, i64 2155481634, i64 2155481665, i64 2155481973, i64 2155481979, i64 2155482026, i64 2155482049, i64 2155482075}
!6384 = !DILocation(line: 237, column: 6, scope: !6385)
!6385 = distinct !DILexicalBlock(scope: !6085, file: !3, line: 237, column: 6)
!6386 = !DILocation(line: 237, column: 6, scope: !6083)
!6387 = !DILocation(line: 237, column: 6, scope: !6077)
!6388 = !DILocation(line: 238, column: 3, scope: !6083)
!6389 = !DILocation(line: 240, column: 12, scope: !6077)
!6390 = !DILocation(line: 240, column: 10, scope: !6077)
!6391 = !DILocation(line: 241, column: 7, scope: !6392)
!6392 = distinct !DILexicalBlock(scope: !6077, file: !3, line: 241, column: 6)
!6393 = !DILocation(line: 241, column: 6, scope: !6077)
!6394 = !DILocation(line: 242, column: 3, scope: !6392)
!6395 = !DILocation(line: 244, column: 2, scope: !6077)
!6396 = !DILocation(line: 244, column: 2, scope: !6397)
!6397 = distinct !DILexicalBlock(scope: !6077, file: !3, line: 244, column: 2)
!6398 = !DILocation(line: 244, column: 2, scope: !6399)
!6399 = distinct !DILexicalBlock(scope: !6397, file: !3, line: 244, column: 2)
!6400 = !DILocation(line: 244, column: 2, scope: !6401)
!6401 = distinct !DILexicalBlock(scope: !6399, file: !3, line: 244, column: 2)
!6402 = !DILocation(line: 246, column: 18, scope: !6077)
!6403 = !DILocation(line: 246, column: 2, scope: !6077)
!6404 = !DILocation(line: 246, column: 11, scope: !6077)
!6405 = !DILocation(line: 246, column: 16, scope: !6077)
!6406 = !DILocation(line: 247, column: 2, scope: !6077)
!6407 = !DILocation(line: 247, column: 2, scope: !6408)
!6408 = distinct !DILexicalBlock(scope: !6077, file: !3, line: 247, column: 2)
!6409 = !DILocation(line: 248, column: 22, scope: !6077)
!6410 = !DILocation(line: 248, column: 31, scope: !6077)
!6411 = !DILocation(line: 248, column: 2, scope: !6077)
!6412 = !DILocation(line: 249, column: 22, scope: !6077)
!6413 = !DILocation(line: 249, column: 31, scope: !6077)
!6414 = !DILocation(line: 249, column: 2, scope: !6077)
!6415 = !DILocation(line: 256, column: 21, scope: !6077)
!6416 = !DILocation(line: 256, column: 30, scope: !6077)
!6417 = !DILocation(line: 256, column: 2, scope: !6077)
!6418 = !DILocation(line: 257, column: 21, scope: !6077)
!6419 = !DILocation(line: 257, column: 30, scope: !6077)
!6420 = !DILocation(line: 257, column: 2, scope: !6077)
!6421 = !DILocation(line: 259, column: 28, scope: !6077)
!6422 = !DILocation(line: 259, column: 2, scope: !6077)
!6423 = !DILocation(line: 259, column: 8, scope: !6077)
!6424 = !DILocation(line: 259, column: 26, scope: !6077)
!6425 = !DILocation(line: 260, column: 2, scope: !6077)
!6426 = !DILocation(line: 261, column: 1, scope: !6077)
!6427 = distinct !DISubprogram(name: "kzalloc", scope: !347, file: !347, line: 719, type: !6428, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6430)
!6428 = !DISubroutineType(types: !6429)
!6429 = !{!365, !540, !366}
!6430 = !{!6431, !6432}
!6431 = !DILocalVariable(name: "size", arg: 1, scope: !6427, file: !347, line: 719, type: !540)
!6432 = !DILocalVariable(name: "flags", arg: 2, scope: !6427, file: !347, line: 719, type: !366)
!6433 = !DILocation(line: 719, column: 52, scope: !6427)
!6434 = !DILocation(line: 719, column: 64, scope: !6427)
!6435 = !DILocation(line: 721, column: 17, scope: !6427)
!6436 = !DILocation(line: 721, column: 23, scope: !6427)
!6437 = !DILocation(line: 721, column: 29, scope: !6427)
!6438 = !DILocation(line: 721, column: 9, scope: !6427)
!6439 = !DILocation(line: 721, column: 2, scope: !6427)
!6440 = distinct !DISubprogram(name: "__init_work", scope: !321, file: !321, line: 263, type: !6441, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6443)
!6441 = !DISubroutineType(types: !6442)
!6442 = !{null, !1102, !109}
!6443 = !{!6444, !6445}
!6444 = !DILocalVariable(name: "work", arg: 1, scope: !6440, file: !321, line: 263, type: !1102)
!6445 = !DILocalVariable(name: "onstack", arg: 2, scope: !6440, file: !321, line: 263, type: !109)
!6446 = !DILocation(line: 263, column: 52, scope: !6440)
!6447 = !DILocation(line: 263, column: 62, scope: !6440)
!6448 = !DILocation(line: 263, column: 73, scope: !6440)
!6449 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !6450, file: !6450, line: 35, type: !6451, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6453)
!6450 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6451 = !DISubroutineType(types: !6452)
!6452 = !{null, !376}
!6453 = !{!6454}
!6454 = !DILocalVariable(name: "list", arg: 1, scope: !6449, file: !6450, line: 35, type: !376)
!6455 = !DILocation(line: 35, column: 53, scope: !6449)
!6456 = !DILocation(line: 37, column: 2, scope: !6449)
!6457 = !DILocation(line: 37, column: 2, scope: !6458)
!6458 = distinct !DILexicalBlock(scope: !6449, file: !6450, line: 37, column: 2)
!6459 = !DILocation(line: 37, column: 2, scope: !6460)
!6460 = distinct !DILexicalBlock(scope: !6458, file: !6450, line: 37, column: 2)
!6461 = !DILocation(line: 37, column: 2, scope: !6462)
!6462 = distinct !DILexicalBlock(scope: !6458, file: !6450, line: 37, column: 2)
!6463 = !DILocation(line: 38, column: 2, scope: !6449)
!6464 = !DILocation(line: 38, column: 2, scope: !6465)
!6465 = distinct !DILexicalBlock(scope: !6449, file: !6450, line: 38, column: 2)
!6466 = !DILocation(line: 38, column: 2, scope: !6467)
!6467 = distinct !DILexicalBlock(scope: !6465, file: !6450, line: 38, column: 2)
!6468 = !DILocation(line: 38, column: 2, scope: !6469)
!6469 = distinct !DILexicalBlock(scope: !6465, file: !6450, line: 38, column: 2)
!6470 = !DILocation(line: 39, column: 1, scope: !6449)
!6471 = distinct !DISubprogram(name: "drm_self_refresh_helper_entry_work", scope: !3, file: !3, line: 67, type: !1100, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6472)
!6472 = !{!6473, !6474, !6475, !6477, !6478, !6479, !6480, !6481, !6482, !6483, !6484, !6485, !6486, !6487, !6488}
!6473 = !DILocalVariable(name: "work", arg: 1, scope: !6471, file: !3, line: 67, type: !1102)
!6474 = !DILocalVariable(name: "sr_data", scope: !6471, file: !3, line: 69, type: !381)
!6475 = !DILocalVariable(name: "__mptr", scope: !6476, file: !3, line: 69, type: !365)
!6476 = distinct !DILexicalBlock(scope: !6471, file: !3, line: 69, column: 42)
!6477 = !DILocalVariable(name: "crtc", scope: !6471, file: !3, line: 72, type: !385)
!6478 = !DILocalVariable(name: "dev", scope: !6471, file: !3, line: 73, type: !390)
!6479 = !DILocalVariable(name: "ctx", scope: !6471, file: !3, line: 74, type: !4834)
!6480 = !DILocalVariable(name: "state", scope: !6471, file: !3, line: 75, type: !4958)
!6481 = !DILocalVariable(name: "conn", scope: !6471, file: !3, line: 76, type: !5258)
!6482 = !DILocalVariable(name: "conn_state", scope: !6471, file: !3, line: 77, type: !5400)
!6483 = !DILocalVariable(name: "crtc_state", scope: !6471, file: !3, line: 78, type: !5217)
!6484 = !DILocalVariable(name: "i", scope: !6471, file: !3, line: 79, type: !109)
!6485 = !DILocalVariable(name: "ret", scope: !6471, file: !3, line: 79, type: !109)
!6486 = !DILabel(scope: !6471, name: "retry", file: !3, line: 89)
!6487 = !DILabel(scope: !6471, name: "out", file: !3, line: 117)
!6488 = !DILabel(scope: !6471, name: "out_drop_locks", file: !3, line: 127)
!6489 = !DILocation(line: 67, column: 68, scope: !6471)
!6490 = !DILocation(line: 69, column: 2, scope: !6471)
!6491 = !DILocation(line: 69, column: 32, scope: !6471)
!6492 = !DILocation(line: 69, column: 42, scope: !6476)
!6493 = !DILocation(line: 69, column: 42, scope: !6471)
!6494 = !DILocation(line: 72, column: 2, scope: !6471)
!6495 = !DILocation(line: 72, column: 19, scope: !6471)
!6496 = !DILocation(line: 72, column: 26, scope: !6471)
!6497 = !DILocation(line: 72, column: 35, scope: !6471)
!6498 = !DILocation(line: 73, column: 2, scope: !6471)
!6499 = !DILocation(line: 73, column: 21, scope: !6471)
!6500 = !DILocation(line: 73, column: 27, scope: !6471)
!6501 = !DILocation(line: 73, column: 33, scope: !6471)
!6502 = !DILocation(line: 74, column: 2, scope: !6471)
!6503 = !DILocation(line: 74, column: 33, scope: !6471)
!6504 = !DILocation(line: 75, column: 2, scope: !6471)
!6505 = !DILocation(line: 75, column: 27, scope: !6471)
!6506 = !DILocation(line: 76, column: 2, scope: !6471)
!6507 = !DILocation(line: 76, column: 24, scope: !6471)
!6508 = !DILocation(line: 77, column: 2, scope: !6471)
!6509 = !DILocation(line: 77, column: 30, scope: !6471)
!6510 = !DILocation(line: 78, column: 2, scope: !6471)
!6511 = !DILocation(line: 78, column: 25, scope: !6471)
!6512 = !DILocation(line: 79, column: 2, scope: !6471)
!6513 = !DILocation(line: 79, column: 6, scope: !6471)
!6514 = !DILocation(line: 79, column: 9, scope: !6471)
!6515 = !DILocation(line: 81, column: 2, scope: !6471)
!6516 = !DILocation(line: 83, column: 33, scope: !6471)
!6517 = !DILocation(line: 83, column: 10, scope: !6471)
!6518 = !DILocation(line: 83, column: 8, scope: !6471)
!6519 = !DILocation(line: 84, column: 7, scope: !6520)
!6520 = distinct !DILexicalBlock(scope: !6471, file: !3, line: 84, column: 6)
!6521 = !DILocation(line: 84, column: 6, scope: !6471)
!6522 = !DILocation(line: 85, column: 7, scope: !6523)
!6523 = distinct !DILexicalBlock(scope: !6520, file: !3, line: 84, column: 14)
!6524 = !DILocation(line: 86, column: 3, scope: !6523)
!6525 = !DILocation(line: 89, column: 1, scope: !6471)
!6526 = !DILocation(line: 90, column: 2, scope: !6471)
!6527 = !DILocation(line: 90, column: 9, scope: !6471)
!6528 = !DILocation(line: 90, column: 21, scope: !6471)
!6529 = !DILocation(line: 92, column: 41, scope: !6471)
!6530 = !DILocation(line: 92, column: 48, scope: !6471)
!6531 = !DILocation(line: 92, column: 15, scope: !6471)
!6532 = !DILocation(line: 92, column: 13, scope: !6471)
!6533 = !DILocation(line: 93, column: 13, scope: !6534)
!6534 = distinct !DILexicalBlock(scope: !6471, file: !3, line: 93, column: 6)
!6535 = !DILocation(line: 93, column: 6, scope: !6534)
!6536 = !DILocation(line: 93, column: 6, scope: !6471)
!6537 = !DILocation(line: 94, column: 17, scope: !6538)
!6538 = distinct !DILexicalBlock(scope: !6534, file: !3, line: 93, column: 26)
!6539 = !DILocation(line: 94, column: 9, scope: !6538)
!6540 = !DILocation(line: 94, column: 7, scope: !6538)
!6541 = !DILocation(line: 95, column: 3, scope: !6538)
!6542 = !DILocation(line: 98, column: 7, scope: !6543)
!6543 = distinct !DILexicalBlock(scope: !6471, file: !3, line: 98, column: 6)
!6544 = !DILocation(line: 98, column: 19, scope: !6543)
!6545 = !DILocation(line: 98, column: 6, scope: !6471)
!6546 = !DILocation(line: 99, column: 3, scope: !6543)
!6547 = !DILocation(line: 101, column: 43, scope: !6471)
!6548 = !DILocation(line: 101, column: 50, scope: !6471)
!6549 = !DILocation(line: 101, column: 8, scope: !6471)
!6550 = !DILocation(line: 101, column: 6, scope: !6471)
!6551 = !DILocation(line: 102, column: 6, scope: !6552)
!6552 = distinct !DILexicalBlock(scope: !6471, file: !3, line: 102, column: 6)
!6553 = !DILocation(line: 102, column: 6, scope: !6471)
!6554 = !DILocation(line: 103, column: 3, scope: !6552)
!6555 = !DILocation(line: 105, column: 2, scope: !6556)
!6556 = distinct !DILexicalBlock(scope: !6471, file: !3, line: 105, column: 2)
!6557 = !DILocation(line: 105, column: 2, scope: !6558)
!6558 = distinct !DILexicalBlock(scope: !6556, file: !3, line: 105, column: 2)
!6559 = !DILocation(line: 105, column: 2, scope: !6560)
!6560 = distinct !DILexicalBlock(scope: !6558, file: !3, line: 105, column: 2)
!6561 = !DILocation(line: 105, column: 2, scope: !6562)
!6562 = distinct !DILexicalBlock(scope: !6560, file: !3, line: 105, column: 2)
!6563 = !DILocation(line: 106, column: 8, scope: !6564)
!6564 = distinct !DILexicalBlock(scope: !6565, file: !3, line: 106, column: 7)
!6565 = distinct !DILexicalBlock(scope: !6560, file: !3, line: 105, column: 62)
!6566 = !DILocation(line: 106, column: 20, scope: !6564)
!6567 = !DILocation(line: 106, column: 7, scope: !6565)
!6568 = !DILocation(line: 107, column: 4, scope: !6564)
!6569 = distinct !{!6569, !6555, !6570, !6183, !6184}
!6570 = !DILocation(line: 108, column: 2, scope: !6556)
!6571 = !DILocation(line: 110, column: 2, scope: !6471)
!6572 = !DILocation(line: 110, column: 14, scope: !6471)
!6573 = !DILocation(line: 110, column: 21, scope: !6471)
!6574 = !DILocation(line: 111, column: 2, scope: !6471)
!6575 = !DILocation(line: 111, column: 14, scope: !6471)
!6576 = !DILocation(line: 111, column: 34, scope: !6471)
!6577 = !DILocation(line: 113, column: 26, scope: !6471)
!6578 = !DILocation(line: 113, column: 8, scope: !6471)
!6579 = !DILocation(line: 113, column: 6, scope: !6471)
!6580 = !DILocation(line: 114, column: 6, scope: !6581)
!6581 = distinct !DILexicalBlock(scope: !6471, file: !3, line: 114, column: 6)
!6582 = !DILocation(line: 114, column: 6, scope: !6471)
!6583 = !DILocation(line: 115, column: 3, scope: !6581)
!6584 = !DILocation(line: 117, column: 1, scope: !6471)
!6585 = !DILocation(line: 118, column: 6, scope: !6586)
!6586 = distinct !DILexicalBlock(scope: !6471, file: !3, line: 118, column: 6)
!6587 = !DILocation(line: 118, column: 10, scope: !6586)
!6588 = !DILocation(line: 118, column: 6, scope: !6471)
!6589 = !DILocation(line: 119, column: 26, scope: !6590)
!6590 = distinct !DILexicalBlock(scope: !6586, file: !3, line: 118, column: 23)
!6591 = !DILocation(line: 119, column: 3, scope: !6590)
!6592 = !DILocation(line: 120, column: 9, scope: !6590)
!6593 = !DILocation(line: 120, column: 7, scope: !6590)
!6594 = !DILocation(line: 121, column: 8, scope: !6595)
!6595 = distinct !DILexicalBlock(scope: !6590, file: !3, line: 121, column: 7)
!6596 = !DILocation(line: 121, column: 7, scope: !6590)
!6597 = !DILocation(line: 122, column: 4, scope: !6595)
!6598 = !DILocation(line: 123, column: 2, scope: !6590)
!6599 = !DILocation(line: 125, column: 23, scope: !6471)
!6600 = !DILocation(line: 125, column: 2, scope: !6471)
!6601 = !DILocation(line: 127, column: 1, scope: !6471)
!6602 = !DILocation(line: 128, column: 2, scope: !6471)
!6603 = !DILocation(line: 129, column: 2, scope: !6471)
!6604 = !DILocation(line: 130, column: 1, scope: !6471)
!6605 = !DISubprogram(name: "init_timer_key", scope: !1076, file: !1076, line: 91, type: !6606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6606 = !DISubroutineType(types: !6607)
!6607 = !{null, !1090, !1087, !7, !416, !6608}
!6608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!6609 = !DISubprogram(name: "__mutex_init", scope: !834, file: !834, line: 121, type: !6610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6610 = !DISubroutineType(types: !6611)
!6611 = !{null, !6189, !416, !6608}
!6612 = distinct !DISubprogram(name: "ewma_psr_time_init", scope: !3, file: !3, line: 56, type: !6613, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6615)
!6613 = !DISubroutineType(types: !6614)
!6614 = !{null, !6127}
!6615 = !{!6616}
!6616 = !DILocalVariable(name: "e", arg: 1, scope: !6612, file: !3, line: 56, type: !6127)
!6617 = !DILocation(line: 56, column: 1, scope: !6612)
!6618 = !DILocation(line: 56, column: 1, scope: !6619)
!6619 = distinct !DILexicalBlock(scope: !6612, file: !3, line: 56, column: 1)
!6620 = !DILocation(line: 56, column: 1, scope: !6621)
!6621 = distinct !DILexicalBlock(scope: !6612, file: !3, line: 56, column: 1)
!6622 = !DILocation(line: 56, column: 1, scope: !6623)
!6623 = distinct !DILexicalBlock(scope: !6612, file: !3, line: 56, column: 1)
!6624 = !DILocation(line: 56, column: 1, scope: !6625)
!6625 = distinct !DILexicalBlock(scope: !6612, file: !3, line: 56, column: 1)
!6626 = distinct !DISubprogram(name: "drm_self_refresh_helper_cleanup", scope: !3, file: !3, line: 268, type: !5875, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6627)
!6627 = !{!6628, !6629}
!6628 = !DILocalVariable(name: "crtc", arg: 1, scope: !6626, file: !3, line: 268, type: !385)
!6629 = !DILocalVariable(name: "sr_data", scope: !6626, file: !3, line: 270, type: !381)
!6630 = !DILocation(line: 268, column: 55, scope: !6626)
!6631 = !DILocation(line: 270, column: 2, scope: !6626)
!6632 = !DILocation(line: 270, column: 32, scope: !6626)
!6633 = !DILocation(line: 270, column: 42, scope: !6626)
!6634 = !DILocation(line: 270, column: 48, scope: !6626)
!6635 = !DILocation(line: 273, column: 7, scope: !6636)
!6636 = distinct !DILexicalBlock(scope: !6626, file: !3, line: 273, column: 6)
!6637 = !DILocation(line: 273, column: 6, scope: !6626)
!6638 = !DILocation(line: 274, column: 3, scope: !6636)
!6639 = !DILocation(line: 276, column: 2, scope: !6626)
!6640 = !DILocation(line: 276, column: 8, scope: !6626)
!6641 = !DILocation(line: 276, column: 26, scope: !6626)
!6642 = !DILocation(line: 278, column: 28, scope: !6626)
!6643 = !DILocation(line: 278, column: 37, scope: !6626)
!6644 = !DILocation(line: 278, column: 2, scope: !6626)
!6645 = !DILocation(line: 279, column: 8, scope: !6626)
!6646 = !DILocation(line: 279, column: 2, scope: !6626)
!6647 = !DILocation(line: 280, column: 1, scope: !6626)
!6648 = !DISubprogram(name: "cancel_delayed_work_sync", scope: !321, file: !321, line: 519, type: !6649, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6649 = !DISubroutineType(types: !6650)
!6650 = !{!913, !6066}
!6651 = !DISubprogram(name: "kfree", scope: !347, file: !347, line: 227, type: !6652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6652 = !DISubroutineType(types: !6653)
!6653 = !{null, !1820}
!6654 = !DISubprogram(name: "mod_delayed_work_on", scope: !321, file: !321, line: 502, type: !6655, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6655 = !DISubroutineType(types: !6656)
!6656 = !{!913, !109, !1154, !6066, !368}
!6657 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !6347, file: !6347, line: 458, type: !6348, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6658)
!6658 = !{!6659}
!6659 = !DILocalVariable(name: "m", arg: 1, scope: !6657, file: !6347, line: 458, type: !4038)
!6660 = !DILocation(line: 458, column: 66, scope: !6657)
!6661 = !DILocation(line: 460, column: 10, scope: !6657)
!6662 = !DILocation(line: 460, column: 12, scope: !6657)
!6663 = !DILocation(line: 460, column: 34, scope: !6657)
!6664 = !DILocation(line: 460, column: 39, scope: !6657)
!6665 = !DILocation(line: 460, column: 2, scope: !6657)
!6666 = !DISubprogram(name: "__msecs_to_jiffies", scope: !6347, file: !6347, line: 451, type: !6348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6667 = distinct !DISubprogram(name: "kmalloc", scope: !347, file: !347, line: 591, type: !6428, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6668)
!6668 = !{!6669, !6670, !6671}
!6669 = !DILocalVariable(name: "size", arg: 1, scope: !6667, file: !347, line: 591, type: !540)
!6670 = !DILocalVariable(name: "flags", arg: 2, scope: !6667, file: !347, line: 591, type: !366)
!6671 = !DILocalVariable(name: "index", scope: !6672, file: !347, line: 594, type: !7)
!6672 = distinct !DILexicalBlock(scope: !6673, file: !347, line: 593, column: 42)
!6673 = distinct !DILexicalBlock(scope: !6667, file: !347, line: 593, column: 6)
!6674 = !DILocation(line: 591, column: 61, scope: !6667)
!6675 = !DILocation(line: 591, column: 73, scope: !6667)
!6676 = !DILocation(line: 593, column: 27, scope: !6673)
!6677 = !DILocation(line: 593, column: 6, scope: !6673)
!6678 = !DILocation(line: 593, column: 33, scope: !6673)
!6679 = !DILocation(line: 593, column: 36, scope: !6673)
!6680 = !DILocation(line: 593, column: 6, scope: !6667)
!6681 = !DILocation(line: 594, column: 3, scope: !6672)
!6682 = !DILocation(line: 594, column: 16, scope: !6672)
!6683 = !DILocation(line: 596, column: 7, scope: !6684)
!6684 = distinct !DILexicalBlock(scope: !6672, file: !347, line: 596, column: 7)
!6685 = !DILocation(line: 596, column: 12, scope: !6684)
!6686 = !DILocation(line: 596, column: 7, scope: !6672)
!6687 = !DILocation(line: 597, column: 25, scope: !6684)
!6688 = !DILocation(line: 597, column: 31, scope: !6684)
!6689 = !DILocation(line: 597, column: 11, scope: !6684)
!6690 = !DILocation(line: 597, column: 4, scope: !6684)
!6691 = !DILocation(line: 599, column: 11, scope: !6672)
!6692 = !DILocation(line: 599, column: 9, scope: !6672)
!6693 = !DILocation(line: 601, column: 33, scope: !6672)
!6694 = !DILocation(line: 601, column: 40, scope: !6672)
!6695 = !DILocation(line: 601, column: 20, scope: !6672)
!6696 = !DILocation(line: 601, column: 5, scope: !6672)
!6697 = !DILocation(line: 601, column: 51, scope: !6672)
!6698 = !DILocation(line: 602, column: 5, scope: !6672)
!6699 = !DILocation(line: 602, column: 12, scope: !6672)
!6700 = !DILocation(line: 600, column: 10, scope: !6672)
!6701 = !DILocation(line: 600, column: 3, scope: !6672)
!6702 = !DILocation(line: 603, column: 2, scope: !6673)
!6703 = !DILocation(line: 604, column: 19, scope: !6667)
!6704 = !DILocation(line: 604, column: 25, scope: !6667)
!6705 = !DILocation(line: 604, column: 9, scope: !6667)
!6706 = !DILocation(line: 604, column: 2, scope: !6667)
!6707 = !DILocation(line: 605, column: 1, scope: !6667)
!6708 = !DISubprogram(name: "kmalloc_large", scope: !347, file: !347, line: 531, type: !6428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6709 = distinct !DISubprogram(name: "__kmalloc_index", scope: !347, file: !347, line: 444, type: !6710, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6712)
!6710 = !DISubroutineType(types: !6711)
!6711 = !{!7, !540, !913}
!6712 = !{!6713, !6714}
!6713 = !DILocalVariable(name: "size", arg: 1, scope: !6709, file: !347, line: 444, type: !540)
!6714 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6709, file: !347, line: 445, type: !913)
!6715 = !DILocation(line: 444, column: 60, scope: !6709)
!6716 = !DILocation(line: 445, column: 16, scope: !6709)
!6717 = !DILocation(line: 447, column: 7, scope: !6718)
!6718 = distinct !DILexicalBlock(scope: !6709, file: !347, line: 447, column: 6)
!6719 = !DILocation(line: 447, column: 6, scope: !6709)
!6720 = !DILocation(line: 448, column: 3, scope: !6718)
!6721 = !DILocation(line: 450, column: 6, scope: !6722)
!6722 = distinct !DILexicalBlock(scope: !6709, file: !347, line: 450, column: 6)
!6723 = !DILocation(line: 450, column: 11, scope: !6722)
!6724 = !DILocation(line: 450, column: 6, scope: !6709)
!6725 = !DILocation(line: 451, column: 3, scope: !6722)
!6726 = !DILocation(line: 453, column: 32, scope: !6727)
!6727 = distinct !DILexicalBlock(scope: !6709, file: !347, line: 453, column: 6)
!6728 = !DILocation(line: 453, column: 37, scope: !6727)
!6729 = !DILocation(line: 453, column: 42, scope: !6727)
!6730 = !DILocation(line: 453, column: 45, scope: !6727)
!6731 = !DILocation(line: 453, column: 50, scope: !6727)
!6732 = !DILocation(line: 453, column: 6, scope: !6709)
!6733 = !DILocation(line: 454, column: 3, scope: !6727)
!6734 = !DILocation(line: 455, column: 32, scope: !6735)
!6735 = distinct !DILexicalBlock(scope: !6709, file: !347, line: 455, column: 6)
!6736 = !DILocation(line: 455, column: 37, scope: !6735)
!6737 = !DILocation(line: 455, column: 43, scope: !6735)
!6738 = !DILocation(line: 455, column: 46, scope: !6735)
!6739 = !DILocation(line: 455, column: 51, scope: !6735)
!6740 = !DILocation(line: 455, column: 6, scope: !6709)
!6741 = !DILocation(line: 456, column: 3, scope: !6735)
!6742 = !DILocation(line: 457, column: 6, scope: !6743)
!6743 = distinct !DILexicalBlock(scope: !6709, file: !347, line: 457, column: 6)
!6744 = !DILocation(line: 457, column: 11, scope: !6743)
!6745 = !DILocation(line: 457, column: 6, scope: !6709)
!6746 = !DILocation(line: 457, column: 26, scope: !6743)
!6747 = !DILocation(line: 458, column: 6, scope: !6748)
!6748 = distinct !DILexicalBlock(scope: !6709, file: !347, line: 458, column: 6)
!6749 = !DILocation(line: 458, column: 11, scope: !6748)
!6750 = !DILocation(line: 458, column: 6, scope: !6709)
!6751 = !DILocation(line: 458, column: 26, scope: !6748)
!6752 = !DILocation(line: 459, column: 6, scope: !6753)
!6753 = distinct !DILexicalBlock(scope: !6709, file: !347, line: 459, column: 6)
!6754 = !DILocation(line: 459, column: 11, scope: !6753)
!6755 = !DILocation(line: 459, column: 6, scope: !6709)
!6756 = !DILocation(line: 459, column: 26, scope: !6753)
!6757 = !DILocation(line: 460, column: 6, scope: !6758)
!6758 = distinct !DILexicalBlock(scope: !6709, file: !347, line: 460, column: 6)
!6759 = !DILocation(line: 460, column: 11, scope: !6758)
!6760 = !DILocation(line: 460, column: 6, scope: !6709)
!6761 = !DILocation(line: 460, column: 26, scope: !6758)
!6762 = !DILocation(line: 461, column: 6, scope: !6763)
!6763 = distinct !DILexicalBlock(scope: !6709, file: !347, line: 461, column: 6)
!6764 = !DILocation(line: 461, column: 11, scope: !6763)
!6765 = !DILocation(line: 461, column: 6, scope: !6709)
!6766 = !DILocation(line: 461, column: 26, scope: !6763)
!6767 = !DILocation(line: 462, column: 6, scope: !6768)
!6768 = distinct !DILexicalBlock(scope: !6709, file: !347, line: 462, column: 6)
!6769 = !DILocation(line: 462, column: 11, scope: !6768)
!6770 = !DILocation(line: 462, column: 6, scope: !6709)
!6771 = !DILocation(line: 462, column: 26, scope: !6768)
!6772 = !DILocation(line: 463, column: 6, scope: !6773)
!6773 = distinct !DILexicalBlock(scope: !6709, file: !347, line: 463, column: 6)
!6774 = !DILocation(line: 463, column: 11, scope: !6773)
!6775 = !DILocation(line: 463, column: 6, scope: !6709)
!6776 = !DILocation(line: 463, column: 26, scope: !6773)
!6777 = !DILocation(line: 464, column: 6, scope: !6778)
!6778 = distinct !DILexicalBlock(scope: !6709, file: !347, line: 464, column: 6)
!6779 = !DILocation(line: 464, column: 11, scope: !6778)
!6780 = !DILocation(line: 464, column: 6, scope: !6709)
!6781 = !DILocation(line: 464, column: 26, scope: !6778)
!6782 = !DILocation(line: 465, column: 6, scope: !6783)
!6783 = distinct !DILexicalBlock(scope: !6709, file: !347, line: 465, column: 6)
!6784 = !DILocation(line: 465, column: 11, scope: !6783)
!6785 = !DILocation(line: 465, column: 6, scope: !6709)
!6786 = !DILocation(line: 465, column: 26, scope: !6783)
!6787 = !DILocation(line: 466, column: 6, scope: !6788)
!6788 = distinct !DILexicalBlock(scope: !6709, file: !347, line: 466, column: 6)
!6789 = !DILocation(line: 466, column: 11, scope: !6788)
!6790 = !DILocation(line: 466, column: 6, scope: !6709)
!6791 = !DILocation(line: 466, column: 26, scope: !6788)
!6792 = !DILocation(line: 467, column: 6, scope: !6793)
!6793 = distinct !DILexicalBlock(scope: !6709, file: !347, line: 467, column: 6)
!6794 = !DILocation(line: 467, column: 11, scope: !6793)
!6795 = !DILocation(line: 467, column: 6, scope: !6709)
!6796 = !DILocation(line: 467, column: 26, scope: !6793)
!6797 = !DILocation(line: 468, column: 6, scope: !6798)
!6798 = distinct !DILexicalBlock(scope: !6709, file: !347, line: 468, column: 6)
!6799 = !DILocation(line: 468, column: 11, scope: !6798)
!6800 = !DILocation(line: 468, column: 6, scope: !6709)
!6801 = !DILocation(line: 468, column: 26, scope: !6798)
!6802 = !DILocation(line: 469, column: 6, scope: !6803)
!6803 = distinct !DILexicalBlock(scope: !6709, file: !347, line: 469, column: 6)
!6804 = !DILocation(line: 469, column: 11, scope: !6803)
!6805 = !DILocation(line: 469, column: 6, scope: !6709)
!6806 = !DILocation(line: 469, column: 26, scope: !6803)
!6807 = !DILocation(line: 470, column: 6, scope: !6808)
!6808 = distinct !DILexicalBlock(scope: !6709, file: !347, line: 470, column: 6)
!6809 = !DILocation(line: 470, column: 11, scope: !6808)
!6810 = !DILocation(line: 470, column: 6, scope: !6709)
!6811 = !DILocation(line: 470, column: 26, scope: !6808)
!6812 = !DILocation(line: 471, column: 6, scope: !6813)
!6813 = distinct !DILexicalBlock(scope: !6709, file: !347, line: 471, column: 6)
!6814 = !DILocation(line: 471, column: 11, scope: !6813)
!6815 = !DILocation(line: 471, column: 6, scope: !6709)
!6816 = !DILocation(line: 471, column: 26, scope: !6813)
!6817 = !DILocation(line: 472, column: 6, scope: !6818)
!6818 = distinct !DILexicalBlock(scope: !6709, file: !347, line: 472, column: 6)
!6819 = !DILocation(line: 472, column: 11, scope: !6818)
!6820 = !DILocation(line: 472, column: 6, scope: !6709)
!6821 = !DILocation(line: 472, column: 26, scope: !6818)
!6822 = !DILocation(line: 473, column: 6, scope: !6823)
!6823 = distinct !DILexicalBlock(scope: !6709, file: !347, line: 473, column: 6)
!6824 = !DILocation(line: 473, column: 11, scope: !6823)
!6825 = !DILocation(line: 473, column: 6, scope: !6709)
!6826 = !DILocation(line: 473, column: 26, scope: !6823)
!6827 = !DILocation(line: 474, column: 6, scope: !6828)
!6828 = distinct !DILexicalBlock(scope: !6709, file: !347, line: 474, column: 6)
!6829 = !DILocation(line: 474, column: 11, scope: !6828)
!6830 = !DILocation(line: 474, column: 6, scope: !6709)
!6831 = !DILocation(line: 474, column: 27, scope: !6828)
!6832 = !DILocation(line: 475, column: 6, scope: !6833)
!6833 = distinct !DILexicalBlock(scope: !6709, file: !347, line: 475, column: 6)
!6834 = !DILocation(line: 475, column: 11, scope: !6833)
!6835 = !DILocation(line: 475, column: 6, scope: !6709)
!6836 = !DILocation(line: 475, column: 32, scope: !6833)
!6837 = !DILocation(line: 477, column: 50, scope: !6838)
!6838 = distinct !DILexicalBlock(scope: !6709, file: !347, line: 477, column: 6)
!6839 = !DILocation(line: 477, column: 6, scope: !6709)
!6840 = !DILocation(line: 478, column: 3, scope: !6838)
!6841 = !DILocation(line: 478, column: 3, scope: !6842)
!6842 = distinct !DILexicalBlock(scope: !6843, file: !347, line: 478, column: 3)
!6843 = distinct !DILexicalBlock(scope: !6838, file: !347, line: 478, column: 3)
!6844 = !{i32 -2143552255}
!6845 = !DILocation(line: 478, column: 3, scope: !6843)
!6846 = !DILocation(line: 480, column: 3, scope: !6838)
!6847 = !DILocation(line: 480, column: 3, scope: !6848)
!6848 = distinct !DILexicalBlock(scope: !6838, file: !347, line: 480, column: 3)
!6849 = !DILocation(line: 480, column: 3, scope: !6850)
!6850 = distinct !DILexicalBlock(scope: !6848, file: !347, line: 480, column: 3)
!6851 = !DILocation(line: 480, column: 3, scope: !6852)
!6852 = distinct !DILexicalBlock(scope: !6848, file: !347, line: 480, column: 3)
!6853 = !{i64 2151415244, i64 2151415273, i64 2151415319, i64 2151415377, i64 2151415431, i64 2151415485, i64 2151415540, i64 2151415571}
!6854 = !DILocation(line: 483, column: 2, scope: !6709)
!6855 = !DILocation(line: 484, column: 1, scope: !6709)
!6856 = !DISubprogram(name: "kmalloc_trace", scope: !347, file: !347, line: 525, type: !6857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6857 = !DISubroutineType(types: !6858)
!6858 = !{!365, !3249, !366, !540}
!6859 = distinct !DISubprogram(name: "kmalloc_type", scope: !347, file: !347, line: 401, type: !6860, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6862)
!6860 = !DISubroutineType(types: !6861)
!6861 = !{!346, !366, !368}
!6862 = !{!6863, !6864}
!6863 = !DILocalVariable(name: "flags", arg: 1, scope: !6859, file: !347, line: 401, type: !366)
!6864 = !DILocalVariable(name: "caller", arg: 2, scope: !6859, file: !347, line: 401, type: !368)
!6865 = !DILocation(line: 401, column: 67, scope: !6859)
!6866 = !DILocation(line: 401, column: 88, scope: !6859)
!6867 = !DILocation(line: 407, column: 6, scope: !6868)
!6868 = distinct !DILexicalBlock(scope: !6859, file: !347, line: 407, column: 6)
!6869 = !DILocation(line: 407, column: 6, scope: !6859)
!6870 = !DILocation(line: 413, column: 3, scope: !6868)
!6871 = !DILocation(line: 423, column: 38, scope: !6872)
!6872 = distinct !DILexicalBlock(scope: !6859, file: !347, line: 423, column: 6)
!6873 = !DILocation(line: 423, column: 44, scope: !6872)
!6874 = !DILocation(line: 423, column: 6, scope: !6859)
!6875 = !DILocation(line: 424, column: 3, scope: !6872)
!6876 = !DILocation(line: 426, column: 3, scope: !6877)
!6877 = distinct !DILexicalBlock(scope: !6859, file: !347, line: 425, column: 6)
!6878 = !DILocation(line: 429, column: 1, scope: !6859)
!6879 = !DISubprogram(name: "__kmalloc", scope: !347, file: !347, line: 488, type: !6428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6880 = !DISubprogram(name: "__compiletime_assert_117", scope: !347, file: !347, line: 478, type: !1197, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6881 = distinct !DISubprogram(name: "to_delayed_work", scope: !321, file: !321, line: 206, type: !6882, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6884)
!6882 = !DISubroutineType(types: !6883)
!6883 = !{!6066, !1102}
!6884 = !{!6885, !6886}
!6885 = !DILocalVariable(name: "work", arg: 1, scope: !6881, file: !321, line: 206, type: !1102)
!6886 = !DILocalVariable(name: "__mptr", scope: !6887, file: !321, line: 208, type: !365)
!6887 = distinct !DILexicalBlock(scope: !6881, file: !321, line: 208, column: 9)
!6888 = !DILocation(line: 206, column: 72, scope: !6881)
!6889 = !DILocation(line: 208, column: 9, scope: !6887)
!6890 = !DILocation(line: 208, column: 9, scope: !6881)
!6891 = !DILocation(line: 208, column: 2, scope: !6881)
!6892 = !DISubprogram(name: "drm_modeset_acquire_init", scope: !4815, file: !4815, line: 100, type: !6893, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6893 = !DISubroutineType(types: !6894)
!6894 = !{null, !4833, !2054}
!6895 = !DISubprogram(name: "drm_atomic_state_alloc", scope: !4960, file: !4960, line: 463, type: !5748, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6896 = !DISubprogram(name: "drm_atomic_get_crtc_state", scope: !4960, file: !4960, line: 499, type: !6897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6897 = !DISubroutineType(types: !6898)
!6898 = !{!5217, !4958, !385}
!6899 = distinct !DISubprogram(name: "IS_ERR", scope: !6900, file: !6900, line: 59, type: !6901, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6903)
!6900 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6901 = !DISubroutineType(types: !6902)
!6902 = !{!913, !1820}
!6903 = !{!6904}
!6904 = !DILocalVariable(name: "ptr", arg: 1, scope: !6899, file: !6900, line: 59, type: !1820)
!6905 = !DILocation(line: 59, column: 60, scope: !6899)
!6906 = !DILocation(line: 61, column: 9, scope: !6899)
!6907 = !DILocation(line: 61, column: 2, scope: !6899)
!6908 = distinct !DISubprogram(name: "PTR_ERR", scope: !6900, file: !6900, line: 49, type: !6909, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6911)
!6909 = !DISubroutineType(types: !6910)
!6910 = !{!373, !1820}
!6911 = !{!6912}
!6912 = !DILocalVariable(name: "ptr", arg: 1, scope: !6908, file: !6900, line: 49, type: !1820)
!6913 = !DILocation(line: 49, column: 61, scope: !6908)
!6914 = !DILocation(line: 51, column: 16, scope: !6908)
!6915 = !DILocation(line: 51, column: 9, scope: !6908)
!6916 = !DILocation(line: 51, column: 2, scope: !6908)
!6917 = !DISubprogram(name: "drm_atomic_add_affected_connectors", scope: !4960, file: !4960, line: 736, type: !6918, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6918 = !DISubroutineType(types: !6919)
!6919 = !{!109, !4958, !385}
!6920 = !DISubprogram(name: "drm_atomic_commit", scope: !4960, file: !4960, line: 743, type: !5837, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6921 = !DISubprogram(name: "drm_atomic_state_clear", scope: !4960, file: !4960, line: 464, type: !5752, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6922 = !DISubprogram(name: "drm_modeset_backoff", scope: !4815, file: !4815, line: 104, type: !6923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6923 = !DISubroutineType(types: !6924)
!6924 = !{!109, !4833}
!6925 = distinct !DISubprogram(name: "drm_atomic_state_put", scope: !4960, file: !4960, line: 488, type: !5752, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6926)
!6926 = !{!6927}
!6927 = !DILocalVariable(name: "state", arg: 1, scope: !6925, file: !4960, line: 488, type: !4958)
!6928 = !DILocation(line: 488, column: 66, scope: !6925)
!6929 = !DILocation(line: 490, column: 12, scope: !6925)
!6930 = !DILocation(line: 490, column: 19, scope: !6925)
!6931 = !DILocation(line: 490, column: 2, scope: !6925)
!6932 = !DILocation(line: 491, column: 1, scope: !6925)
!6933 = !DISubprogram(name: "drm_modeset_drop_locks", scope: !4815, file: !4815, line: 103, type: !6934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6934 = !DISubroutineType(types: !6935)
!6935 = !{null, !4833}
!6936 = !DISubprogram(name: "drm_modeset_acquire_fini", scope: !4815, file: !4815, line: 102, type: !6934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6937 = distinct !DISubprogram(name: "kref_put", scope: !396, file: !396, line: 62, type: !6938, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6940)
!6938 = !DISubroutineType(types: !6939)
!6939 = !{!109, !5016, !5013}
!6940 = !{!6941, !6942}
!6941 = !DILocalVariable(name: "kref", arg: 1, scope: !6937, file: !396, line: 62, type: !5016)
!6942 = !DILocalVariable(name: "release", arg: 2, scope: !6937, file: !396, line: 62, type: !5013)
!6943 = !DILocation(line: 62, column: 41, scope: !6937)
!6944 = !DILocation(line: 62, column: 54, scope: !6937)
!6945 = !DILocation(line: 64, column: 29, scope: !6946)
!6946 = distinct !DILexicalBlock(scope: !6937, file: !396, line: 64, column: 6)
!6947 = !DILocation(line: 64, column: 35, scope: !6946)
!6948 = !DILocation(line: 64, column: 6, scope: !6946)
!6949 = !DILocation(line: 64, column: 6, scope: !6937)
!6950 = !DILocation(line: 65, column: 3, scope: !6951)
!6951 = distinct !DILexicalBlock(scope: !6946, file: !396, line: 64, column: 46)
!6952 = !DILocation(line: 65, column: 11, scope: !6951)
!6953 = !DILocation(line: 66, column: 3, scope: !6951)
!6954 = !DILocation(line: 68, column: 2, scope: !6937)
!6955 = !DILocation(line: 69, column: 1, scope: !6937)
!6956 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !357, file: !357, line: 331, type: !6957, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6960)
!6957 = !DISubroutineType(types: !6958)
!6958 = !{!913, !6959}
!6959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!6960 = !{!6961}
!6961 = !DILocalVariable(name: "r", arg: 1, scope: !6956, file: !357, line: 331, type: !6959)
!6962 = !DILocation(line: 331, column: 67, scope: !6956)
!6963 = !DILocation(line: 333, column: 33, scope: !6956)
!6964 = !DILocation(line: 333, column: 9, scope: !6956)
!6965 = !DILocation(line: 333, column: 2, scope: !6956)
!6966 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !357, file: !357, line: 313, type: !6967, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6969)
!6967 = !DISubroutineType(types: !6968)
!6968 = !{!913, !6959, !962}
!6969 = !{!6970, !6971}
!6970 = !DILocalVariable(name: "r", arg: 1, scope: !6966, file: !357, line: 313, type: !6959)
!6971 = !DILocalVariable(name: "oldp", arg: 2, scope: !6966, file: !357, line: 313, type: !962)
!6972 = !DILocation(line: 313, column: 69, scope: !6966)
!6973 = !DILocation(line: 313, column: 77, scope: !6966)
!6974 = !DILocation(line: 315, column: 36, scope: !6966)
!6975 = !DILocation(line: 315, column: 39, scope: !6966)
!6976 = !DILocation(line: 315, column: 9, scope: !6966)
!6977 = !DILocation(line: 315, column: 2, scope: !6966)
!6978 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !357, file: !357, line: 270, type: !6979, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6981)
!6979 = !DISubroutineType(types: !6980)
!6980 = !{!913, !109, !6959, !962}
!6981 = !{!6982, !6983, !6984, !6985}
!6982 = !DILocalVariable(name: "i", arg: 1, scope: !6978, file: !357, line: 270, type: !109)
!6983 = !DILocalVariable(name: "r", arg: 2, scope: !6978, file: !357, line: 270, type: !6959)
!6984 = !DILocalVariable(name: "oldp", arg: 3, scope: !6978, file: !357, line: 270, type: !962)
!6985 = !DILocalVariable(name: "old", scope: !6978, file: !357, line: 272, type: !109)
!6986 = !DILocation(line: 270, column: 61, scope: !6978)
!6987 = !DILocation(line: 270, column: 76, scope: !6978)
!6988 = !DILocation(line: 270, column: 84, scope: !6978)
!6989 = !DILocation(line: 272, column: 2, scope: !6978)
!6990 = !DILocation(line: 272, column: 6, scope: !6978)
!6991 = !DILocation(line: 272, column: 37, scope: !6978)
!6992 = !DILocation(line: 272, column: 41, scope: !6978)
!6993 = !DILocation(line: 272, column: 44, scope: !6978)
!6994 = !DILocation(line: 272, column: 12, scope: !6978)
!6995 = !DILocation(line: 274, column: 6, scope: !6996)
!6996 = distinct !DILexicalBlock(scope: !6978, file: !357, line: 274, column: 6)
!6997 = !DILocation(line: 274, column: 6, scope: !6978)
!6998 = !DILocation(line: 275, column: 11, scope: !6996)
!6999 = !DILocation(line: 275, column: 4, scope: !6996)
!7000 = !DILocation(line: 275, column: 9, scope: !6996)
!7001 = !DILocation(line: 275, column: 3, scope: !6996)
!7002 = !DILocation(line: 277, column: 6, scope: !7003)
!7003 = distinct !DILexicalBlock(scope: !6978, file: !357, line: 277, column: 6)
!7004 = !DILocation(line: 277, column: 13, scope: !7003)
!7005 = !DILocation(line: 277, column: 10, scope: !7003)
!7006 = !DILocation(line: 277, column: 6, scope: !6978)
!7007 = !DILocation(line: 278, column: 3, scope: !7008)
!7008 = distinct !DILexicalBlock(scope: !7003, file: !357, line: 277, column: 16)
!7009 = !DILocation(line: 278, column: 3, scope: !7010)
!7010 = distinct !DILexicalBlock(scope: !7008, file: !357, line: 278, column: 3)
!7011 = !DILocation(line: 278, column: 3, scope: !7012)
!7012 = distinct !DILexicalBlock(scope: !7010, file: !357, line: 278, column: 3)
!7013 = !DILocation(line: 278, column: 3, scope: !7014)
!7014 = distinct !DILexicalBlock(scope: !7010, file: !357, line: 278, column: 3)
!7015 = !DILocation(line: 278, column: 3, scope: !7016)
!7016 = distinct !DILexicalBlock(scope: !7014, file: !357, line: 278, column: 3)
!7017 = !{i64 2150232062}
!7018 = !DILocation(line: 279, column: 3, scope: !7008)
!7019 = !DILocation(line: 282, column: 6, scope: !7020)
!7020 = distinct !DILexicalBlock(scope: !6978, file: !357, line: 282, column: 6)
!7021 = !DILocation(line: 282, column: 6, scope: !6978)
!7022 = !DILocation(line: 283, column: 26, scope: !7020)
!7023 = !DILocation(line: 283, column: 3, scope: !7020)
!7024 = !DILocation(line: 285, column: 2, scope: !6978)
!7025 = !DILocation(line: 286, column: 1, scope: !6978)
!7026 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !7027, file: !7027, line: 397, type: !7028, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7031)
!7027 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!7028 = !DISubroutineType(types: !7029)
!7029 = !{!109, !109, !7030}
!7030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!7031 = !{!7032, !7033}
!7032 = !DILocalVariable(name: "i", arg: 1, scope: !7026, file: !7027, line: 397, type: !109)
!7033 = !DILocalVariable(name: "v", arg: 2, scope: !7026, file: !7027, line: 397, type: !7030)
!7034 = !DILocation(line: 397, column: 30, scope: !7026)
!7035 = !DILocation(line: 397, column: 43, scope: !7026)
!7036 = !DILocation(line: 399, column: 2, scope: !7026)
!7037 = !DILocation(line: 399, column: 2, scope: !7038)
!7038 = distinct !DILexicalBlock(scope: !7026, file: !7027, line: 399, column: 2)
!7039 = !DILocation(line: 400, column: 31, scope: !7026)
!7040 = !DILocation(line: 400, column: 2, scope: !7026)
!7041 = !DILocation(line: 401, column: 38, scope: !7026)
!7042 = !DILocation(line: 401, column: 41, scope: !7026)
!7043 = !DILocation(line: 401, column: 9, scope: !7026)
!7044 = !DILocation(line: 401, column: 2, scope: !7026)
!7045 = !DISubprogram(name: "refcount_warn_saturate", scope: !357, file: !357, line: 127, type: !7046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7046 = !DISubroutineType(types: !7047)
!7047 = !{null, !6959, !356}
!7048 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !7049, file: !7049, line: 94, type: !7050, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7055)
!7049 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7050 = !DISubroutineType(types: !7051)
!7051 = !{null, !7052, !540}
!7052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7053, size: 64)
!7053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7054)
!7054 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7055 = !{!7056, !7057}
!7056 = !DILocalVariable(name: "v", arg: 1, scope: !7048, file: !7049, line: 94, type: !7052)
!7057 = !DILocalVariable(name: "size", arg: 2, scope: !7048, file: !7049, line: 94, type: !540)
!7058 = !DILocation(line: 94, column: 79, scope: !7048)
!7059 = !DILocation(line: 94, column: 89, scope: !7048)
!7060 = !DILocation(line: 96, column: 20, scope: !7048)
!7061 = !DILocation(line: 96, column: 23, scope: !7048)
!7062 = !DILocation(line: 96, column: 2, scope: !7048)
!7063 = !DILocation(line: 97, column: 2, scope: !7048)
!7064 = !DILocation(line: 98, column: 1, scope: !7048)
!7065 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !7066, file: !7066, line: 928, type: !7028, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7067)
!7066 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!7067 = !{!7068, !7069}
!7068 = !DILocalVariable(name: "i", arg: 1, scope: !7065, file: !7066, line: 928, type: !109)
!7069 = !DILocalVariable(name: "v", arg: 2, scope: !7065, file: !7066, line: 928, type: !7030)
!7070 = !DILocation(line: 928, column: 34, scope: !7065)
!7071 = !DILocation(line: 928, column: 47, scope: !7065)
!7072 = !DILocation(line: 936, column: 31, scope: !7065)
!7073 = !DILocation(line: 936, column: 34, scope: !7065)
!7074 = !DILocation(line: 936, column: 9, scope: !7065)
!7075 = !DILocation(line: 936, column: 2, scope: !7065)
!7076 = distinct !DISubprogram(name: "kasan_check_write", scope: !7077, file: !7077, line: 44, type: !7078, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7080)
!7077 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7078 = !DISubroutineType(types: !7079)
!7079 = !{!913, !7052, !7}
!7080 = !{!7081, !7082}
!7081 = !DILocalVariable(name: "p", arg: 1, scope: !7076, file: !7077, line: 44, type: !7052)
!7082 = !DILocalVariable(name: "size", arg: 2, scope: !7076, file: !7077, line: 44, type: !7)
!7083 = !DILocation(line: 44, column: 59, scope: !7076)
!7084 = !DILocation(line: 44, column: 75, scope: !7076)
!7085 = !DILocation(line: 46, column: 2, scope: !7076)
!7086 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7087, file: !7087, line: 229, type: !7088, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7090)
!7087 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7088 = !DISubroutineType(types: !7089)
!7089 = !{null, !7052, !540, !109}
!7090 = !{!7091, !7092, !7093}
!7091 = !DILocalVariable(name: "ptr", arg: 1, scope: !7086, file: !7087, line: 229, type: !7052)
!7092 = !DILocalVariable(name: "size", arg: 2, scope: !7086, file: !7087, line: 229, type: !540)
!7093 = !DILocalVariable(name: "type", arg: 3, scope: !7086, file: !7087, line: 230, type: !109)
!7094 = !DILocation(line: 229, column: 60, scope: !7086)
!7095 = !DILocation(line: 229, column: 72, scope: !7086)
!7096 = !DILocation(line: 230, column: 15, scope: !7086)
!7097 = !DILocation(line: 230, column: 23, scope: !7086)
!7098 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !7099, file: !7099, line: 101, type: !7028, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7100)
!7099 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!7100 = !{!7101, !7102, !7103}
!7101 = !DILocalVariable(name: "i", arg: 1, scope: !7098, file: !7099, line: 101, type: !109)
!7102 = !DILocalVariable(name: "v", arg: 2, scope: !7098, file: !7099, line: 101, type: !7030)
!7103 = !DILocalVariable(name: "__ret", scope: !7104, file: !7099, line: 103, type: !109)
!7104 = distinct !DILexicalBlock(scope: !7098, file: !7099, line: 103, column: 9)
!7105 = !DILocation(line: 101, column: 54, scope: !7098)
!7106 = !DILocation(line: 101, column: 67, scope: !7098)
!7107 = !DILocation(line: 103, column: 9, scope: !7104)
!7108 = !{i64 2148941549, i64 2148941588, i64 2148941609, i64 2148941646, i64 2148941669, i64 2148941678}
!7109 = !DILocation(line: 103, column: 9, scope: !7098)
!7110 = !DILocation(line: 103, column: 2, scope: !7098)
