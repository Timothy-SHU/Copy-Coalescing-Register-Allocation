; ModuleID = 'blender/source/blender/editors/animation/anim_ops.c'
source_filename = "blender/source/blender/editors/animation/anim_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [10 x i8] c"Animation\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"ANIM_OT_change_frame\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"WM_OT_context_toggle\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"data_path\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"space_data.show_seconds\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"ANIM_OT_previewrange_set\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"ANIM_OT_previewrange_clear\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Change Frame\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"Interactively change the current frame number\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Frame\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.12 = private unnamed_addr constant [49 x i8] c"Expected an timeline/animation area to be active\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Set Preview Range\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"Interactively define frame range used for playback\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"Clear Preview Range\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_operatortypes_anim() local_unnamed_addr #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_change_frame) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_previewrange_set) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_previewrange_clear) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_keyframe_insert) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_keyframe_delete) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_keyframe_insert_menu) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_keyframe_delete_v3d) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_keyframe_clear_v3d) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_keyframe_insert_button) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_keyframe_delete_button) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_keyframe_clear_button) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_driver_button_add) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_driver_button_remove) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_copy_driver_button) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_paste_driver_button) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_keyingset_button_add) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_keyingset_button_remove) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_keying_set_add) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_keying_set_remove) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_keying_set_path_add) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_keying_set_path_remove) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_keying_set_active_set) #7
  ret void
}

; Function Attrs: optsize
declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ANIM_OT_change_frame(ptr nocapture noundef %0) #0 {
  store ptr @.str.7, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @change_frame_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @change_frame_invoke, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @change_frame_modal, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @change_frame_poll, ptr %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 22, ptr %8, align 8, !tbaa !19
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !20
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef -300000, i32 noundef 300000, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef -300000, i32 noundef 300000) #7
  %12 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %11, ptr %12, align 8, !tbaa !21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ANIM_OT_previewrange_set(ptr noundef %0) #0 {
  store ptr @.str.13, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @previewrange_define_exec, ptr %5, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %7, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_animview_active, ptr %8, align 8, !tbaa !18
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !19
  tail call void @WM_operator_properties_border(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @ANIM_OT_previewrange_clear(ptr nocapture noundef writeonly %0) #2 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.6, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.15, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @previewrange_clear_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_animview_active, ptr %5, align 8, !tbaa !18
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !19
  ret void
}

; Function Attrs: optsize
declare void @ANIM_OT_keyframe_insert(ptr noundef) #1

; Function Attrs: optsize
declare void @ANIM_OT_keyframe_delete(ptr noundef) #1

; Function Attrs: optsize
declare void @ANIM_OT_keyframe_insert_menu(ptr noundef) #1

; Function Attrs: optsize
declare void @ANIM_OT_keyframe_delete_v3d(ptr noundef) #1

; Function Attrs: optsize
declare void @ANIM_OT_keyframe_clear_v3d(ptr noundef) #1

; Function Attrs: optsize
declare void @ANIM_OT_keyframe_insert_button(ptr noundef) #1

; Function Attrs: optsize
declare void @ANIM_OT_keyframe_delete_button(ptr noundef) #1

; Function Attrs: optsize
declare void @ANIM_OT_keyframe_clear_button(ptr noundef) #1

; Function Attrs: optsize
declare void @ANIM_OT_driver_button_add(ptr noundef) #1

; Function Attrs: optsize
declare void @ANIM_OT_driver_button_remove(ptr noundef) #1

; Function Attrs: optsize
declare void @ANIM_OT_copy_driver_button(ptr noundef) #1

; Function Attrs: optsize
declare void @ANIM_OT_paste_driver_button(ptr noundef) #1

; Function Attrs: optsize
declare void @ANIM_OT_keyingset_button_add(ptr noundef) #1

; Function Attrs: optsize
declare void @ANIM_OT_keyingset_button_remove(ptr noundef) #1

; Function Attrs: optsize
declare void @ANIM_OT_keying_set_add(ptr noundef) #1

; Function Attrs: optsize
declare void @ANIM_OT_keying_set_remove(ptr noundef) #1

; Function Attrs: optsize
declare void @ANIM_OT_keying_set_path_add(ptr noundef) #1

; Function Attrs: optsize
declare void @ANIM_OT_keying_set_path_remove(ptr noundef) #1

; Function Attrs: optsize
declare void @ANIM_OT_keying_set_active_set(ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_keymap_anim(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0) #7
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 5, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  %4 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 116, i32 noundef 1, i32 noundef 2, i32 noundef 0) #7
  %5 = getelementptr inbounds %struct.wmKeyMapItem, ptr %4, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !23
  tail call void @RNA_string_set(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #7
  %7 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef 112, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  %8 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 112, i32 noundef 1, i32 noundef 4, i32 noundef 0) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_keymap_verify_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @change_frame_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  tail call fastcc void @change_frame_apply(ptr noundef %0, ptr noundef %1) #8
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @change_frame_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !25
  %6 = tail call fastcc i32 @frame_from_event(ptr noundef %0, ptr noundef %2) #8
  tail call void @RNA_int_set(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef %6) #7
  tail call fastcc void @change_frame_apply(ptr noundef %0, ptr noundef %1) #8
  %7 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #7
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @change_frame_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !27
  switch i16 %5, label %14 [
    i16 218, label %15
    i16 4, label %6
    i16 1, label %10
    i16 3, label %10
    i16 2, label %10
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !25
  %9 = tail call fastcc i32 @frame_from_event(ptr noundef %0, ptr noundef nonnull %2) #8
  tail call void @RNA_int_set(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef %9) #7
  tail call fastcc void @change_frame_apply(ptr noundef %0, ptr noundef %1) #8
  br label %14

10:                                               ; preds = %3, %3, %3
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %12 = load i16, ptr %11, align 2, !tbaa !31
  %13 = icmp eq i16 %12, 2
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %3, %6
  br label %15

15:                                               ; preds = %10, %3, %14
  %16 = phi i32 [ 1, %14 ], [ 4, %3 ], [ 4, %10 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @change_frame_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %3 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !32
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = icmp eq ptr %2, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %9 = load i8, ptr %8, align 8, !tbaa !34
  switch i8 %9, label %11 [
    i8 15, label %12
    i8 12, label %12
    i8 13, label %12
    i8 8, label %12
    i8 20, label %12
    i8 2, label %10
  ]

10:                                               ; preds = %7
  br label %12

11:                                               ; preds = %7, %5
  tail call void @CTX_wm_operator_poll_msg_set(ptr noundef %0, ptr noundef nonnull @.str.12) #7
  br label %12

12:                                               ; preds = %7, %7, %7, %7, %7, %1, %11, %10
  %13 = phi i32 [ 0, %10 ], [ 0, %11 ], [ 0, %1 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ]
  ret i32 %13
}

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @change_frame_apply(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !25
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.9) #7
  %8 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %9 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !37
  %10 = and i32 %9, 16777216
  %11 = icmp eq i32 %10, 0
  %12 = tail call i32 @llvm.smax.i32(i32 %7, i32 0)
  %13 = select i1 %11, i32 %7, i32 %12
  store i32 %13, ptr %8, align 8
  %14 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 8
  store float 0.000000e+00, ptr %14, align 4, !tbaa !42
  tail call void @sound_seek_scene(ptr noundef %3, ptr noundef %4) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %4) #7
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @sound_seek_scene(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @frame_from_event(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2
  %6 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !62
  %8 = sitofp i32 %7 to float
  %9 = tail call float @UI_view2d_region_to_view_x(ptr noundef nonnull %5, float noundef %8) #7
  %10 = tail call fastcc i32 @iroundf(float noundef %9) #8
  %11 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 13
  %12 = load i16, ptr %11, align 8, !tbaa !63
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %35, label %16

16:                                               ; preds = %2
  %17 = and i32 %13, 1
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 9
  %20 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 6
  %21 = select i1 %18, ptr %20, ptr %19
  %22 = load i32, ptr %21, align 4, !tbaa !62
  %23 = icmp slt i32 %10, %22
  %24 = and i16 %12, 1
  %25 = icmp eq i16 %24, 0
  br i1 %23, label %26, label %29

26:                                               ; preds = %16
  %27 = select i1 %25, ptr %20, ptr %19
  %28 = load i32, ptr %27, align 4, !tbaa !62
  br label %35

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 10
  %31 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 7
  %32 = select i1 %25, ptr %31, ptr %30
  %33 = load i32, ptr %32, align 4, !tbaa !62
  %34 = tail call i32 @llvm.smin.i32(i32 %10, i32 %33)
  br label %35

35:                                               ; preds = %29, %26, %2
  %36 = phi i32 [ %28, %26 ], [ %10, %2 ], [ %34, %29 ]
  ret i32 %36
}

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @UI_view2d_region_to_view_x(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @iroundf(float noundef %0) unnamed_addr #4 {
  %2 = fadd float %0, 5.000000e-01
  %3 = tail call float @llvm.floor.f32(float %2)
  %4 = fptosi float %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #5

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_wm_operator_poll_msg_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @previewrange_define_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.rcti, align 4
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @WM_operator_properties_border_to_rcti(ptr noundef %1, ptr noundef nonnull %3) #7
  %6 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %3, align 4, !tbaa !64
  %8 = sitofp i32 %7 to float
  %9 = call float @UI_view2d_region_to_view_x(ptr noundef nonnull %6, float noundef %8) #7
  %10 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !65
  %12 = sitofp i32 %11 to float
  %13 = call float @UI_view2d_region_to_view_x(ptr noundef nonnull %6, float noundef %12) #7
  %14 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !37
  %15 = and i32 %14, 16777216
  %16 = icmp ne i32 %15, 0
  %17 = fcmp olt float %9, 0.000000e+00
  %18 = select i1 %16, i1 %17, i1 false
  %19 = select i1 %18, float 0.000000e+00, float %9
  %20 = fcmp olt float %13, 0.000000e+00
  %21 = select i1 %16, i1 %20, i1 false
  %22 = select i1 %21, float 0.000000e+00, float %13
  %23 = fcmp olt float %22, %19
  %24 = select i1 %23, float %19, float %22
  %25 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 13
  %26 = load i16, ptr %25, align 8, !tbaa !63
  %27 = or i16 %26, 1
  store i16 %27, ptr %25, align 8, !tbaa !63
  %28 = call fastcc i32 @iroundf(float noundef %19) #8
  %29 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 9
  store i32 %28, ptr %29, align 8, !tbaa !66
  %30 = call fastcc i32 @iroundf(float noundef %24) #8
  %31 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 10
  store i32 %30, ptr %31, align 4, !tbaa !67
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret i32 4
}

; Function Attrs: optsize
declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare void @WM_border_select_cancel(ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare i32 @ED_operator_animview_active(ptr noundef) #1

; Function Attrs: optsize
declare void @WM_operator_properties_border(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_operator_properties_border_to_rcti(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @previewrange_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %5 = icmp eq ptr %3, null
  %6 = icmp eq ptr %4, null
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 13
  %10 = load i16, ptr %9, align 8, !tbaa !63
  %11 = and i16 %10, -2
  store i16 %11, ptr %9, align 8, !tbaa !63
  %12 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 9
  store i32 0, ptr %12, align 8, !tbaa !66
  %13 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 10
  store i32 0, ptr %13, align 4, !tbaa !67
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %4) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef nonnull %3) #7
  br label %14

14:                                               ; preds = %2, %8
  %15 = phi i32 [ 4, %8 ], [ 2, %2 ]
  ret i32 %15
}

; Function Attrs: optsize
declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !10, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !11, i64 152, !12, i64 184}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!12 = !{!"short", !8, i64 0}
!13 = !{!6, !7, i64 8}
!14 = !{!6, !7, i64 24}
!15 = !{!6, !7, i64 32}
!16 = !{!6, !7, i64 48}
!17 = !{!6, !7, i64 64}
!18 = !{!6, !7, i64 72}
!19 = !{!6, !12, i64 184}
!20 = !{!6, !7, i64 88}
!21 = !{!6, !7, i64 104}
!22 = !{!6, !7, i64 56}
!23 = !{!24, !7, i64 176}
!24 = !{!"wmKeyMapItem", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !8, i64 88, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !12, i64 164, !12, i64 166, !12, i64 168, !12, i64 170, !12, i64 172, !12, i64 174, !7, i64 176}
!25 = !{!26, !7, i64 112}
!26 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!27 = !{!28, !12, i64 16}
!28 = !{!"wmEvent", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 18, !29, i64 20, !29, i64 24, !8, i64 28, !8, i64 36, !8, i64 42, !8, i64 43, !12, i64 44, !12, i64 46, !29, i64 48, !29, i64 52, !30, i64 56, !29, i64 64, !29, i64 68, !12, i64 72, !12, i64 74, !12, i64 76, !12, i64 78, !12, i64 80, !12, i64 82, !7, i64 88, !7, i64 96, !12, i64 104, !12, i64 106, !29, i64 108, !7, i64 112}
!29 = !{!"int", !8, i64 0}
!30 = !{!"double", !8, i64 0}
!31 = !{!28, !12, i64 18}
!32 = !{!33, !8, i64 2090}
!33 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !10, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !12, i64 2084, !12, i64 2086, !12, i64 2088, !8, i64 2090, !12, i64 2092, !29, i64 2096, !29, i64 2100, !8, i64 2104, !29, i64 2108, !29, i64 2112, !8, i64 2116}
!34 = !{!35, !8, i64 72}
!35 = !{!"ScrArea", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !36, i64 56, !8, i64 72, !8, i64 73, !12, i64 74, !12, i64 76, !12, i64 78, !12, i64 80, !12, i64 82, !12, i64 84, !8, i64 86, !8, i64 87, !7, i64 88, !10, i64 96, !10, i64 112, !10, i64 128, !10, i64 144}
!36 = !{!"rcti", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12}
!37 = !{!38, !29, i64 8}
!38 = !{!"UserDef", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12, !29, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !29, i64 8468, !12, i64 8472, !12, i64 8474, !12, i64 8476, !12, i64 8478, !12, i64 8480, !12, i64 8482, !29, i64 8484, !29, i64 8488, !29, i64 8492, !12, i64 8496, !12, i64 8498, !29, i64 8500, !29, i64 8504, !29, i64 8508, !29, i64 8512, !29, i64 8516, !29, i64 8520, !29, i64 8524, !12, i64 8528, !12, i64 8530, !12, i64 8532, !12, i64 8534, !10, i64 8536, !10, i64 8552, !10, i64 8568, !10, i64 8584, !10, i64 8600, !10, i64 8616, !10, i64 8632, !8, i64 8648, !12, i64 8712, !12, i64 8714, !12, i64 8716, !12, i64 8718, !12, i64 8720, !12, i64 8722, !12, i64 8724, !12, i64 8726, !8, i64 8728, !12, i64 8896, !12, i64 8898, !12, i64 8900, !12, i64 8902, !12, i64 8904, !12, i64 8906, !12, i64 8908, !12, i64 8910, !29, i64 8912, !29, i64 8916, !12, i64 8920, !12, i64 8922, !12, i64 8924, !12, i64 8926, !12, i64 8928, !12, i64 8930, !12, i64 8932, !12, i64 8934, !12, i64 8936, !12, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !12, i64 8944, !12, i64 8946, !12, i64 8948, !12, i64 8950, !12, i64 8952, !12, i64 8954, !39, i64 8956, !39, i64 8960, !29, i64 8964, !12, i64 8968, !12, i64 8970, !39, i64 8972, !12, i64 8976, !12, i64 8978, !12, i64 8980, !12, i64 8982, !40, i64 8984, !8, i64 9760, !8, i64 9772, !12, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !29, i64 10896, !29, i64 10900, !39, i64 10904, !39, i64 10908, !29, i64 10912, !12, i64 10916, !12, i64 10918, !12, i64 10920, !12, i64 10922, !12, i64 10924, !12, i64 10926, !41, i64 10928}
!39 = !{!"float", !8, i64 0}
!40 = !{!"ColorBand", !12, i64 0, !12, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!41 = !{!"WalkNavigation", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !12, i64 24, !8, i64 26}
!42 = !{!43, !39, i64 692}
!43 = !{!"Scene", !44, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !29, i64 232, !29, i64 236, !29, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !45, i64 280, !53, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !29, i64 4380, !10, i64 4384, !54, i64 4400, !55, i64 4416, !58, i64 4600, !7, i64 4608, !59, i64 4616, !7, i64 4640, !60, i64 4648, !60, i64 4656, !47, i64 4664, !48, i64 4824, !61, i64 4888, !7, i64 4952}
!44 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !29, i64 100, !29, i64 104, !29, i64 108, !7, i64 112}
!45 = !{!"RenderData", !46, i64 0, !7, i64 248, !7, i64 256, !49, i64 264, !50, i64 328, !29, i64 400, !29, i64 404, !29, i64 408, !39, i64 412, !29, i64 416, !29, i64 420, !29, i64 424, !29, i64 428, !12, i64 432, !12, i64 434, !39, i64 436, !39, i64 440, !39, i64 444, !39, i64 448, !39, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !29, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !29, i64 484, !29, i64 488, !12, i64 492, !12, i64 494, !29, i64 496, !29, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !29, i64 516, !29, i64 520, !29, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !51, i64 544, !51, i64 560, !36, i64 576, !10, i64 592, !12, i64 608, !12, i64 610, !39, i64 612, !39, i64 616, !39, i64 620, !39, i64 624, !29, i64 628, !39, i64 632, !39, i64 636, !39, i64 640, !39, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !39, i64 660, !39, i64 664, !12, i64 668, !12, i64 670, !39, i64 672, !39, i64 676, !8, i64 680, !29, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !29, i64 2520, !12, i64 2524, !12, i64 2526, !39, i64 2528, !39, i64 2532, !12, i64 2536, !12, i64 2538, !39, i64 2540, !12, i64 2544, !12, i64 2546, !29, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !39, i64 2560, !39, i64 2564, !7, i64 2568, !29, i64 2576, !39, i64 2580, !8, i64 2584, !52, i64 2616, !29, i64 3976, !29, i64 3980}
!46 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !39, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !47, i64 24, !48, i64 184}
!47 = !{!"ColorManagedViewSettings", !29, i64 0, !29, i64 4, !8, i64 8, !8, i64 72, !39, i64 136, !39, i64 140, !7, i64 144, !7, i64 152}
!48 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!49 = !{!"QuicktimeCodecSettings", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12, !29, i64 16, !29, i64 20, !29, i64 24, !29, i64 28, !29, i64 32, !29, i64 36, !29, i64 40, !29, i64 44, !12, i64 48, !12, i64 50, !29, i64 52, !29, i64 56, !29, i64 60}
!50 = !{!"FFMpegCodecData", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12, !29, i64 16, !29, i64 20, !29, i64 24, !29, i64 28, !39, i64 32, !29, i64 36, !29, i64 40, !29, i64 44, !29, i64 48, !29, i64 52, !29, i64 56, !29, i64 60, !7, i64 64}
!51 = !{!"rctf", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!52 = !{!"BakeData", !46, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !39, i64 1280, !39, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!53 = !{!"AudioData", !29, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !29, i64 16, !12, i64 20, !12, i64 22, !39, i64 24, !39, i64 28}
!54 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!55 = !{!"GameData", !54, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !56, i64 40, !12, i64 64, !12, i64 66, !39, i64 68, !57, i64 72, !39, i64 128, !39, i64 132, !29, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180}
!56 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !39, i64 8, !39, i64 12, !7, i64 16}
!57 = !{!"RecastData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !29, i64 40, !39, i64 44, !39, i64 48, !12, i64 52, !12, i64 54}
!58 = !{!"UnitSettings", !39, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!59 = !{!"PhysicsSettings", !8, i64 0, !29, i64 12, !29, i64 16, !29, i64 20}
!60 = !{!"long", !8, i64 0}
!61 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!62 = !{!29, !29, i64 0}
!63 = !{!43, !12, i64 712}
!64 = !{!36, !29, i64 0}
!65 = !{!36, !29, i64 4}
!66 = !{!43, !29, i64 696}
!67 = !{!43, !29, i64 700}
