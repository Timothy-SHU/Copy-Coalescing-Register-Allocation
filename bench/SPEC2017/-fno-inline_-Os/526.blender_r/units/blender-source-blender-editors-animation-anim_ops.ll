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
define internal void @ANIM_OT_change_frame(ptr nocapture noundef %0) #0 !PGOFuncName !34 {
  store ptr @.str.7, ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @change_frame_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @change_frame_invoke, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @change_frame_modal, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @change_frame_poll, ptr %7, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 22, ptr %8, align 8, !tbaa !49
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef -300000, i32 noundef 300000, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef -300000, i32 noundef 300000) #7
  %12 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %11, ptr %12, align 8, !tbaa !51
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ANIM_OT_previewrange_set(ptr noundef %0) #0 !PGOFuncName !52 {
  store ptr @.str.13, ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @previewrange_define_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %7, align 8, !tbaa !53
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_animview_active, ptr %8, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !49
  tail call void @WM_operator_properties_border(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @ANIM_OT_previewrange_clear(ptr nocapture noundef writeonly %0) #2 !PGOFuncName !54 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.6, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.15, ptr %3, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @previewrange_clear_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_animview_active, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !49
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
  %6 = load ptr, ptr %5, align 8, !tbaa !55
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
define internal noundef i32 @change_frame_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !57 {
  tail call fastcc void @change_frame_apply(ptr noundef %0, ptr noundef %1) #8
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @change_frame_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !58 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = tail call fastcc i32 @frame_from_event(ptr noundef %0, ptr noundef %2) #8
  tail call void @RNA_int_set(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef %6) #7
  tail call fastcc void @change_frame_apply(ptr noundef %0, ptr noundef %1) #8
  %7 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #7
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @change_frame_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !61 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !62
  switch i16 %5, label %14 [
    i16 218, label %15
    i16 4, label %6
    i16 1, label %10
    i16 3, label %10
    i16 2, label %10
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = tail call fastcc i32 @frame_from_event(ptr noundef %0, ptr noundef nonnull %2) #8
  tail call void @RNA_int_set(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef %9) #7
  tail call fastcc void @change_frame_apply(ptr noundef %0, ptr noundef %1) #8
  br label %14

10:                                               ; preds = %3, %3, %3
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %12 = load i16, ptr %11, align 2, !tbaa !66
  %13 = icmp eq i16 %12, 2
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %3, %6
  br label %15

15:                                               ; preds = %10, %3, %14
  %16 = phi i32 [ 1, %14 ], [ 4, %3 ], [ 4, %10 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @change_frame_poll(ptr noundef %0) #0 !PGOFuncName !67 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %3 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !68
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = icmp eq ptr %2, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %9 = load i8, ptr %8, align 8, !tbaa !70
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
define internal fastcc void @change_frame_apply(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !73 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.9) #7
  %8 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %9 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !74
  %10 = and i32 %9, 16777216
  %11 = icmp eq i32 %10, 0
  %12 = tail call i32 @llvm.smax.i32(i32 %7, i32 0)
  %13 = select i1 %11, i32 %7, i32 %12
  store i32 %13, ptr %8, align 8
  %14 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 8
  store float 0.000000e+00, ptr %14, align 4, !tbaa !79
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
define internal fastcc i32 @frame_from_event(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !99 {
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2
  %6 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !100
  %8 = sitofp i32 %7 to float
  %9 = tail call float @UI_view2d_region_to_view_x(ptr noundef nonnull %5, float noundef %8) #7
  %10 = tail call fastcc i32 @iroundf(float noundef %9) #8
  %11 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 13
  %12 = load i16, ptr %11, align 8, !tbaa !101
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
  %22 = load i32, ptr %21, align 4, !tbaa !100
  %23 = icmp slt i32 %10, %22
  %24 = and i16 %12, 1
  %25 = icmp eq i16 %24, 0
  br i1 %23, label %26, label %29

26:                                               ; preds = %16
  %27 = select i1 %25, ptr %20, ptr %19
  %28 = load i32, ptr %27, align 4, !tbaa !100
  br label %35

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 10
  %31 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 7
  %32 = select i1 %25, ptr %31, ptr %30
  %33 = load i32, ptr %32, align 4, !tbaa !100
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
define internal fastcc i32 @iroundf(float noundef %0) unnamed_addr #4 !PGOFuncName !102 {
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
define internal noundef i32 @previewrange_define_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !103 {
  %3 = alloca %struct.rcti, align 4
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @WM_operator_properties_border_to_rcti(ptr noundef %1, ptr noundef nonnull %3) #7
  %6 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %3, align 4, !tbaa !104
  %8 = sitofp i32 %7 to float
  %9 = call float @UI_view2d_region_to_view_x(ptr noundef nonnull %6, float noundef %8) #7
  %10 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !105
  %12 = sitofp i32 %11 to float
  %13 = call float @UI_view2d_region_to_view_x(ptr noundef nonnull %6, float noundef %12) #7
  %14 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !74
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
  %26 = load i16, ptr %25, align 8, !tbaa !101
  %27 = or i16 %26, 1
  store i16 %27, ptr %25, align 8, !tbaa !101
  %28 = call fastcc i32 @iroundf(float noundef %19) #8
  %29 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 9
  store i32 %28, ptr %29, align 8, !tbaa !106
  %30 = call fastcc i32 @iroundf(float noundef %24) #8
  %31 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 10
  store i32 %30, ptr %31, align 4, !tbaa !107
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
define internal noundef i32 @previewrange_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !108 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %5 = icmp eq ptr %3, null
  %6 = icmp eq ptr %4, null
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 13
  %10 = load i16, ptr %9, align 8, !tbaa !101
  %11 = and i16 %10, -2
  store i16 %11, ptr %9, align 8, !tbaa !101
  %12 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 9
  store i32 0, ptr %12, align 8, !tbaa !106
  %13 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 10
  store i32 0, ptr %13, align 4, !tbaa !107
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

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"anim_ops.c:ANIM_OT_change_frame"}
!35 = !{!36, !37, i64 0}
!36 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !40, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !41, i64 152, !42, i64 184}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"ListBase", !37, i64 0, !37, i64 8}
!41 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!42 = !{!"short", !38, i64 0}
!43 = !{!36, !37, i64 8}
!44 = !{!36, !37, i64 24}
!45 = !{!36, !37, i64 32}
!46 = !{!36, !37, i64 48}
!47 = !{!36, !37, i64 64}
!48 = !{!36, !37, i64 72}
!49 = !{!36, !42, i64 184}
!50 = !{!36, !37, i64 88}
!51 = !{!36, !37, i64 104}
!52 = !{!"anim_ops.c:ANIM_OT_previewrange_set"}
!53 = !{!36, !37, i64 56}
!54 = !{!"anim_ops.c:ANIM_OT_previewrange_clear"}
!55 = !{!56, !37, i64 176}
!56 = !{!"wmKeyMapItem", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !38, i64 88, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158, !42, i64 160, !42, i64 162, !42, i64 164, !42, i64 166, !42, i64 168, !42, i64 170, !42, i64 172, !42, i64 174, !37, i64 176}
!57 = !{!"anim_ops.c:change_frame_exec"}
!58 = !{!"anim_ops.c:change_frame_invoke"}
!59 = !{!60, !37, i64 112}
!60 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !40, i64 128, !37, i64 144, !37, i64 152, !42, i64 160, !38, i64 162}
!61 = !{!"anim_ops.c:change_frame_modal"}
!62 = !{!63, !42, i64 16}
!63 = !{!"wmEvent", !37, i64 0, !37, i64 8, !42, i64 16, !42, i64 18, !64, i64 20, !64, i64 24, !38, i64 28, !38, i64 36, !38, i64 42, !38, i64 43, !42, i64 44, !42, i64 46, !64, i64 48, !64, i64 52, !65, i64 56, !64, i64 64, !64, i64 68, !42, i64 72, !42, i64 74, !42, i64 76, !42, i64 78, !42, i64 80, !42, i64 82, !37, i64 88, !37, i64 96, !42, i64 104, !42, i64 106, !64, i64 108, !37, i64 112}
!64 = !{!"int", !38, i64 0}
!65 = !{!"double", !38, i64 0}
!66 = !{!63, !42, i64 18}
!67 = !{!"anim_ops.c:change_frame_poll"}
!68 = !{!69, !38, i64 2090}
!69 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !40, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !42, i64 2084, !42, i64 2086, !42, i64 2088, !38, i64 2090, !42, i64 2092, !64, i64 2096, !64, i64 2100, !38, i64 2104, !64, i64 2108, !64, i64 2112, !38, i64 2116}
!70 = !{!71, !38, i64 72}
!71 = !{!"ScrArea", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !72, i64 56, !38, i64 72, !38, i64 73, !42, i64 74, !42, i64 76, !42, i64 78, !42, i64 80, !42, i64 82, !42, i64 84, !38, i64 86, !38, i64 87, !37, i64 88, !40, i64 96, !40, i64 112, !40, i64 128, !40, i64 144}
!72 = !{!"rcti", !64, i64 0, !64, i64 4, !64, i64 8, !64, i64 12}
!73 = !{!"anim_ops.c:change_frame_apply"}
!74 = !{!75, !64, i64 8}
!75 = !{!"UserDef", !64, i64 0, !64, i64 4, !64, i64 8, !64, i64 12, !64, i64 16, !38, i64 20, !38, i64 788, !38, i64 1556, !38, i64 2580, !38, i64 3348, !38, i64 4116, !38, i64 4884, !38, i64 5652, !38, i64 6420, !38, i64 7444, !64, i64 8468, !42, i64 8472, !42, i64 8474, !42, i64 8476, !42, i64 8478, !42, i64 8480, !42, i64 8482, !64, i64 8484, !64, i64 8488, !64, i64 8492, !42, i64 8496, !42, i64 8498, !64, i64 8500, !64, i64 8504, !64, i64 8508, !64, i64 8512, !64, i64 8516, !64, i64 8520, !64, i64 8524, !42, i64 8528, !42, i64 8530, !42, i64 8532, !42, i64 8534, !40, i64 8536, !40, i64 8552, !40, i64 8568, !40, i64 8584, !40, i64 8600, !40, i64 8616, !40, i64 8632, !38, i64 8648, !42, i64 8712, !42, i64 8714, !42, i64 8716, !42, i64 8718, !42, i64 8720, !42, i64 8722, !42, i64 8724, !42, i64 8726, !38, i64 8728, !42, i64 8896, !42, i64 8898, !42, i64 8900, !42, i64 8902, !42, i64 8904, !42, i64 8906, !42, i64 8908, !42, i64 8910, !64, i64 8912, !64, i64 8916, !42, i64 8920, !42, i64 8922, !42, i64 8924, !42, i64 8926, !42, i64 8928, !42, i64 8930, !42, i64 8932, !42, i64 8934, !42, i64 8936, !42, i64 8938, !38, i64 8940, !38, i64 8941, !38, i64 8942, !38, i64 8943, !42, i64 8944, !42, i64 8946, !42, i64 8948, !42, i64 8950, !42, i64 8952, !42, i64 8954, !76, i64 8956, !76, i64 8960, !64, i64 8964, !42, i64 8968, !42, i64 8970, !76, i64 8972, !42, i64 8976, !42, i64 8978, !42, i64 8980, !42, i64 8982, !77, i64 8984, !38, i64 9760, !38, i64 9772, !42, i64 9788, !38, i64 9790, !38, i64 9791, !38, i64 9792, !38, i64 9872, !64, i64 10896, !64, i64 10900, !76, i64 10904, !76, i64 10908, !64, i64 10912, !42, i64 10916, !42, i64 10918, !42, i64 10920, !42, i64 10922, !42, i64 10924, !42, i64 10926, !78, i64 10928}
!76 = !{!"float", !38, i64 0}
!77 = !{!"ColorBand", !42, i64 0, !42, i64 2, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !38, i64 8}
!78 = !{!"WalkNavigation", !76, i64 0, !76, i64 4, !76, i64 8, !76, i64 12, !76, i64 16, !76, i64 20, !42, i64 24, !38, i64 26}
!79 = !{!80, !76, i64 692}
!80 = !{!"Scene", !81, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !40, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !64, i64 232, !64, i64 236, !64, i64 240, !42, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !82, i64 280, !90, i64 4264, !40, i64 4296, !40, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !42, i64 4376, !42, i64 4378, !64, i64 4380, !40, i64 4384, !91, i64 4400, !92, i64 4416, !95, i64 4600, !37, i64 4608, !96, i64 4616, !37, i64 4640, !97, i64 4648, !97, i64 4656, !84, i64 4664, !85, i64 4824, !98, i64 4888, !37, i64 4952}
!81 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !42, i64 98, !64, i64 100, !64, i64 104, !64, i64 108, !37, i64 112}
!82 = !{!"RenderData", !83, i64 0, !37, i64 248, !37, i64 256, !86, i64 264, !87, i64 328, !64, i64 400, !64, i64 404, !64, i64 408, !76, i64 412, !64, i64 416, !64, i64 420, !64, i64 424, !64, i64 428, !42, i64 432, !42, i64 434, !76, i64 436, !76, i64 440, !76, i64 444, !76, i64 448, !76, i64 452, !42, i64 456, !42, i64 458, !42, i64 460, !42, i64 462, !42, i64 464, !42, i64 466, !64, i64 468, !42, i64 472, !42, i64 474, !42, i64 476, !42, i64 478, !42, i64 480, !42, i64 482, !64, i64 484, !64, i64 488, !42, i64 492, !42, i64 494, !64, i64 496, !64, i64 500, !42, i64 504, !42, i64 506, !42, i64 508, !42, i64 510, !42, i64 512, !38, i64 514, !38, i64 515, !64, i64 516, !64, i64 520, !64, i64 524, !42, i64 528, !42, i64 530, !42, i64 532, !42, i64 534, !42, i64 536, !42, i64 538, !42, i64 540, !42, i64 542, !88, i64 544, !88, i64 560, !72, i64 576, !40, i64 592, !42, i64 608, !42, i64 610, !76, i64 612, !76, i64 616, !76, i64 620, !76, i64 624, !64, i64 628, !76, i64 632, !76, i64 636, !76, i64 640, !76, i64 644, !42, i64 648, !42, i64 650, !42, i64 652, !42, i64 654, !42, i64 656, !42, i64 658, !76, i64 660, !76, i64 664, !42, i64 668, !42, i64 670, !76, i64 672, !76, i64 676, !38, i64 680, !64, i64 1704, !42, i64 1708, !42, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !64, i64 2520, !42, i64 2524, !42, i64 2526, !76, i64 2528, !76, i64 2532, !42, i64 2536, !42, i64 2538, !76, i64 2540, !42, i64 2544, !42, i64 2546, !64, i64 2548, !42, i64 2552, !42, i64 2554, !42, i64 2556, !42, i64 2558, !76, i64 2560, !76, i64 2564, !37, i64 2568, !64, i64 2576, !76, i64 2580, !38, i64 2584, !89, i64 2616, !64, i64 3976, !64, i64 3980}
!83 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !42, i64 8, !42, i64 10, !76, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !84, i64 24, !85, i64 184}
!84 = !{!"ColorManagedViewSettings", !64, i64 0, !64, i64 4, !38, i64 8, !38, i64 72, !76, i64 136, !76, i64 140, !37, i64 144, !37, i64 152}
!85 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!86 = !{!"QuicktimeCodecSettings", !64, i64 0, !64, i64 4, !64, i64 8, !64, i64 12, !64, i64 16, !64, i64 20, !64, i64 24, !64, i64 28, !64, i64 32, !64, i64 36, !64, i64 40, !64, i64 44, !42, i64 48, !42, i64 50, !64, i64 52, !64, i64 56, !64, i64 60}
!87 = !{!"FFMpegCodecData", !64, i64 0, !64, i64 4, !64, i64 8, !64, i64 12, !64, i64 16, !64, i64 20, !64, i64 24, !64, i64 28, !76, i64 32, !64, i64 36, !64, i64 40, !64, i64 44, !64, i64 48, !64, i64 52, !64, i64 56, !64, i64 60, !37, i64 64}
!88 = !{!"rctf", !76, i64 0, !76, i64 4, !76, i64 8, !76, i64 12}
!89 = !{!"BakeData", !83, i64 0, !38, i64 248, !42, i64 1272, !42, i64 1274, !42, i64 1276, !42, i64 1278, !76, i64 1280, !76, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!90 = !{!"AudioData", !64, i64 0, !76, i64 4, !76, i64 8, !76, i64 12, !64, i64 16, !42, i64 20, !42, i64 22, !76, i64 24, !76, i64 28}
!91 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!92 = !{!"GameData", !91, i64 0, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !42, i64 32, !38, i64 34, !93, i64 40, !42, i64 64, !42, i64 66, !76, i64 68, !94, i64 72, !76, i64 128, !76, i64 132, !64, i64 136, !42, i64 140, !42, i64 142, !42, i64 144, !42, i64 146, !42, i64 148, !42, i64 150, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158, !42, i64 160, !42, i64 162, !76, i64 164, !76, i64 168, !76, i64 172, !76, i64 176, !76, i64 180}
!93 = !{!"GameDome", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !76, i64 8, !76, i64 12, !37, i64 16}
!94 = !{!"RecastData", !76, i64 0, !76, i64 4, !76, i64 8, !76, i64 12, !76, i64 16, !76, i64 20, !76, i64 24, !76, i64 28, !76, i64 32, !76, i64 36, !64, i64 40, !76, i64 44, !76, i64 48, !42, i64 52, !42, i64 54}
!95 = !{!"UnitSettings", !76, i64 0, !38, i64 4, !38, i64 5, !42, i64 6}
!96 = !{!"PhysicsSettings", !38, i64 0, !64, i64 12, !64, i64 16, !64, i64 20}
!97 = !{!"long", !38, i64 0}
!98 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!99 = !{!"anim_ops.c:frame_from_event"}
!100 = !{!64, !64, i64 0}
!101 = !{!80, !42, i64 712}
!102 = !{!"anim_ops.c:iroundf"}
!103 = !{!"anim_ops.c:previewrange_define_exec"}
!104 = !{!72, !64, i64 0}
!105 = !{!72, !64, i64 4}
!106 = !{!80, !64, i64 696}
!107 = !{!80, !64, i64 700}
!108 = !{!"anim_ops.c:previewrange_clear_exec"}
