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
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
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
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }

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

; Function Attrs: nounwind uwtable
define dso_local void @ED_operatortypes_anim() local_unnamed_addr #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_change_frame) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_previewrange_set) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_previewrange_clear) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_keyframe_insert) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_keyframe_delete) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_keyframe_insert_menu) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_keyframe_delete_v3d) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_keyframe_clear_v3d) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_keyframe_insert_button) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_keyframe_delete_button) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_keyframe_clear_button) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_driver_button_add) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_driver_button_remove) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_copy_driver_button) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_paste_driver_button) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_keyingset_button_add) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_keyingset_button_remove) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_keying_set_add) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_keying_set_remove) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_keying_set_path_add) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_keying_set_path_remove) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @ANIM_OT_keying_set_active_set) #6
  ret void
}

declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @ANIM_OT_change_frame(ptr nocapture noundef %0) #0 {
  store ptr @.str.7, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @change_frame_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @change_frame_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @change_frame_modal, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @change_frame_poll, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 22, ptr %8, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef -300000, i32 noundef 300000, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef -300000, i32 noundef 300000) #6
  %12 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %11, ptr %12, align 8, !tbaa !50
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ANIM_OT_previewrange_set(ptr noundef %0) #0 {
  store ptr @.str.13, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @previewrange_define_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %7, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_animview_active, ptr %8, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !48
  tail call void @WM_operator_properties_border(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @ANIM_OT_previewrange_clear(ptr nocapture noundef writeonly %0) #2 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.6, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.15, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @previewrange_clear_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_animview_active, ptr %5, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !48
  ret void
}

declare void @ANIM_OT_keyframe_insert(ptr noundef) #1

declare void @ANIM_OT_keyframe_delete(ptr noundef) #1

declare void @ANIM_OT_keyframe_insert_menu(ptr noundef) #1

declare void @ANIM_OT_keyframe_delete_v3d(ptr noundef) #1

declare void @ANIM_OT_keyframe_clear_v3d(ptr noundef) #1

declare void @ANIM_OT_keyframe_insert_button(ptr noundef) #1

declare void @ANIM_OT_keyframe_delete_button(ptr noundef) #1

declare void @ANIM_OT_keyframe_clear_button(ptr noundef) #1

declare void @ANIM_OT_driver_button_add(ptr noundef) #1

declare void @ANIM_OT_driver_button_remove(ptr noundef) #1

declare void @ANIM_OT_copy_driver_button(ptr noundef) #1

declare void @ANIM_OT_paste_driver_button(ptr noundef) #1

declare void @ANIM_OT_keyingset_button_add(ptr noundef) #1

declare void @ANIM_OT_keyingset_button_remove(ptr noundef) #1

declare void @ANIM_OT_keying_set_add(ptr noundef) #1

declare void @ANIM_OT_keying_set_remove(ptr noundef) #1

declare void @ANIM_OT_keying_set_path_add(ptr noundef) #1

declare void @ANIM_OT_keying_set_path_remove(ptr noundef) #1

declare void @ANIM_OT_keying_set_active_set(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_keymap_anim(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0) #6
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 5, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %4 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 116, i32 noundef 1, i32 noundef 2, i32 noundef 0) #6
  %5 = getelementptr inbounds %struct.wmKeyMapItem, ptr %4, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  tail call void @RNA_string_set(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #6
  %7 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef 112, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %8 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 112, i32 noundef 1, i32 noundef 4, i32 noundef 0) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @WM_keymap_verify_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @change_frame_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.9) #6
  %8 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  store i32 %7, ptr %8, align 8, !tbaa !56
  %9 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !79
  %10 = and i32 %9, 16777216
  %11 = icmp eq i32 %10, 0
  %12 = tail call i32 @llvm.smax.i32(i32 %7, i32 0)
  %13 = select i1 %11, i32 %7, i32 %12
  store i32 %13, ptr %8, align 8
  %14 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 8
  store float 0.000000e+00, ptr %14, align 4, !tbaa !83
  tail call void @sound_seek_scene(ptr noundef %3, ptr noundef %4) #6
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %4) #6
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @change_frame_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #6
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %8 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !84
  %11 = sitofp i32 %10 to float
  %12 = tail call float @UI_view2d_region_to_view_x(ptr noundef nonnull %8, float noundef %11) #6
  %13 = fadd float %12, 5.000000e-01
  %14 = tail call float @llvm.floor.f32(float %13)
  %15 = fptosi float %14 to i32
  %16 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 13
  %17 = load i16, ptr %16, align 8, !tbaa !85
  %18 = zext i16 %17 to i32
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %3
  %22 = and i32 %18, 1
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 9
  %25 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 6
  %26 = select i1 %23, ptr %25, ptr %24
  %27 = load i32, ptr %26, align 4, !tbaa !84
  %28 = icmp sgt i32 %27, %15
  %29 = and i16 %17, 1
  %30 = icmp eq i16 %29, 0
  br i1 %28, label %31, label %34

31:                                               ; preds = %21
  %32 = select i1 %30, ptr %25, ptr %24
  %33 = load i32, ptr %32, align 4, !tbaa !84
  br label %40

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 10
  %36 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 7
  %37 = select i1 %30, ptr %36, ptr %35
  %38 = load i32, ptr %37, align 4, !tbaa !84
  %39 = tail call i32 @llvm.smin.i32(i32 %38, i32 %15)
  br label %40

40:                                               ; preds = %3, %31, %34
  %41 = phi i32 [ %33, %31 ], [ %15, %3 ], [ %39, %34 ]
  tail call void @RNA_int_set(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef %41) #6
  %42 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %43 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %44 = load ptr, ptr %4, align 8, !tbaa !54
  %45 = tail call i32 @RNA_int_get(ptr noundef %44, ptr noundef nonnull @.str.9) #6
  %46 = getelementptr inbounds %struct.Scene, ptr %43, i64 0, i32 22, i32 5
  store i32 %45, ptr %46, align 8, !tbaa !56
  %47 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !79
  %48 = and i32 %47, 16777216
  %49 = icmp eq i32 %48, 0
  %50 = tail call i32 @llvm.smax.i32(i32 %45, i32 0)
  %51 = select i1 %49, i32 %45, i32 %50
  store i32 %51, ptr %46, align 8
  %52 = getelementptr inbounds %struct.Scene, ptr %43, i64 0, i32 22, i32 8
  store float 0.000000e+00, ptr %52, align 4, !tbaa !83
  tail call void @sound_seek_scene(ptr noundef %42, ptr noundef %43) #6
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %43) #6
  %53 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #6
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @change_frame_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !86
  switch i16 %5, label %60 [
    i16 218, label %61
    i16 4, label %6
    i16 1, label %56
    i16 3, label %56
    i16 2, label %56
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #6
  %10 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %11 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 2
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !84
  %14 = sitofp i32 %13 to float
  %15 = tail call float @UI_view2d_region_to_view_x(ptr noundef nonnull %11, float noundef %14) #6
  %16 = fadd float %15, 5.000000e-01
  %17 = tail call float @llvm.floor.f32(float %16)
  %18 = fptosi float %17 to i32
  %19 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 13
  %20 = load i16, ptr %19, align 8, !tbaa !85
  %21 = zext i16 %20 to i32
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %6
  %25 = and i32 %21, 1
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 9
  %28 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 6
  %29 = select i1 %26, ptr %28, ptr %27
  %30 = load i32, ptr %29, align 4, !tbaa !84
  %31 = icmp sgt i32 %30, %18
  %32 = and i16 %20, 1
  %33 = icmp eq i16 %32, 0
  br i1 %31, label %34, label %37

34:                                               ; preds = %24
  %35 = select i1 %33, ptr %28, ptr %27
  %36 = load i32, ptr %35, align 4, !tbaa !84
  br label %43

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 10
  %39 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 7
  %40 = select i1 %33, ptr %39, ptr %38
  %41 = load i32, ptr %40, align 4, !tbaa !84
  %42 = tail call i32 @llvm.smin.i32(i32 %41, i32 %18)
  br label %43

43:                                               ; preds = %6, %34, %37
  %44 = phi i32 [ %36, %34 ], [ %18, %6 ], [ %42, %37 ]
  tail call void @RNA_int_set(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef %44) #6
  %45 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %46 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %47 = load ptr, ptr %7, align 8, !tbaa !54
  %48 = tail call i32 @RNA_int_get(ptr noundef %47, ptr noundef nonnull @.str.9) #6
  %49 = getelementptr inbounds %struct.Scene, ptr %46, i64 0, i32 22, i32 5
  store i32 %48, ptr %49, align 8, !tbaa !56
  %50 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !79
  %51 = and i32 %50, 16777216
  %52 = icmp eq i32 %51, 0
  %53 = tail call i32 @llvm.smax.i32(i32 %48, i32 0)
  %54 = select i1 %52, i32 %48, i32 %53
  store i32 %54, ptr %49, align 8
  %55 = getelementptr inbounds %struct.Scene, ptr %46, i64 0, i32 22, i32 8
  store float 0.000000e+00, ptr %55, align 4, !tbaa !83
  tail call void @sound_seek_scene(ptr noundef %45, ptr noundef %46) #6
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %46) #6
  br label %60

56:                                               ; preds = %3, %3, %3
  %57 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %58 = load i16, ptr %57, align 2, !tbaa !89
  %59 = icmp eq i16 %58, 2
  br i1 %59, label %61, label %60

60:                                               ; preds = %56, %3, %43
  br label %61

61:                                               ; preds = %56, %3, %60
  %62 = phi i32 [ 1, %60 ], [ 4, %3 ], [ 4, %56 ]
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @change_frame_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #6
  %3 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !90
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = icmp eq ptr %2, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %9 = load i8, ptr %8, align 8, !tbaa !92
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
  tail call void @CTX_wm_operator_poll_msg_set(ptr noundef %0, ptr noundef nonnull @.str.12) #6
  br label %12

12:                                               ; preds = %7, %7, %7, %7, %7, %1, %11, %10
  %13 = phi i32 [ 0, %10 ], [ 0, %11 ], [ 0, %1 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ]
  ret i32 %13
}

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @sound_seek_scene(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

declare float @UI_view2d_region_to_view_x(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #4

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

declare void @CTX_wm_operator_poll_msg_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @previewrange_define_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.rcti, align 4
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @WM_operator_properties_border_to_rcti(ptr noundef %1, ptr noundef nonnull %3) #6
  %6 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %3, align 4, !tbaa !94
  %8 = sitofp i32 %7 to float
  %9 = call float @UI_view2d_region_to_view_x(ptr noundef nonnull %6, float noundef %8) #6
  %10 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !95
  %12 = sitofp i32 %11 to float
  %13 = call float @UI_view2d_region_to_view_x(ptr noundef nonnull %6, float noundef %12) #6
  %14 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !79
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
  %26 = load i16, ptr %25, align 8, !tbaa !85
  %27 = or i16 %26, 1
  store i16 %27, ptr %25, align 8, !tbaa !85
  %28 = fadd float %19, 5.000000e-01
  %29 = call float @llvm.floor.f32(float %28)
  %30 = fptosi float %29 to i32
  %31 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 9
  store i32 %30, ptr %31, align 8, !tbaa !96
  %32 = fadd float %24, 5.000000e-01
  %33 = call float @llvm.floor.f32(float %32)
  %34 = fptosi float %33 to i32
  %35 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 10
  store i32 %34, ptr %35, align 4, !tbaa !97
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %4) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  ret i32 4
}

declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #1

declare void @WM_border_select_cancel(ptr noundef, ptr noundef) #1

declare i32 @ED_operator_animview_active(ptr noundef) #1

declare void @WM_operator_properties_border(ptr noundef) local_unnamed_addr #1

declare void @WM_operator_properties_border_to_rcti(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @previewrange_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #6
  %5 = icmp eq ptr %3, null
  %6 = icmp eq ptr %4, null
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 13
  %10 = load i16, ptr %9, align 8, !tbaa !85
  %11 = and i16 %10, -2
  store i16 %11, ptr %9, align 8, !tbaa !85
  %12 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 9
  store i32 0, ptr %12, align 8, !tbaa !96
  %13 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 10
  store i32 0, ptr %13, align 4, !tbaa !97
  tail call void @ED_area_tag_redraw(ptr noundef %4) #6
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %3) #6
  br label %14

14:                                               ; preds = %2, %8
  %15 = phi i32 [ 4, %8 ], [ 2, %2 ]
  ret i32 %15
}

declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 0}
!35 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !41, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 8}
!43 = !{!35, !36, i64 24}
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 48}
!46 = !{!35, !36, i64 64}
!47 = !{!35, !36, i64 72}
!48 = !{!35, !41, i64 184}
!49 = !{!35, !36, i64 88}
!50 = !{!35, !36, i64 104}
!51 = !{!35, !36, i64 56}
!52 = !{!53, !36, i64 176}
!53 = !{!"wmKeyMapItem", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !37, i64 88, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !41, i64 164, !41, i64 166, !41, i64 168, !41, i64 170, !41, i64 172, !41, i64 174, !36, i64 176}
!54 = !{!55, !36, i64 112}
!55 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!56 = !{!57, !59, i64 680}
!57 = !{!"Scene", !58, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !59, i64 232, !59, i64 236, !59, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !60, i64 280, !70, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !59, i64 4380, !39, i64 4384, !71, i64 4400, !72, i64 4416, !75, i64 4600, !36, i64 4608, !76, i64 4616, !36, i64 4640, !77, i64 4648, !77, i64 4656, !63, i64 4664, !64, i64 4824, !78, i64 4888, !36, i64 4952}
!58 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !59, i64 100, !59, i64 104, !59, i64 108, !36, i64 112}
!59 = !{!"int", !37, i64 0}
!60 = !{!"RenderData", !61, i64 0, !36, i64 248, !36, i64 256, !65, i64 264, !66, i64 328, !59, i64 400, !59, i64 404, !59, i64 408, !62, i64 412, !59, i64 416, !59, i64 420, !59, i64 424, !59, i64 428, !41, i64 432, !41, i64 434, !62, i64 436, !62, i64 440, !62, i64 444, !62, i64 448, !62, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !59, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !59, i64 484, !59, i64 488, !41, i64 492, !41, i64 494, !59, i64 496, !59, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !59, i64 516, !59, i64 520, !59, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !67, i64 544, !67, i64 560, !68, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !62, i64 612, !62, i64 616, !62, i64 620, !62, i64 624, !59, i64 628, !62, i64 632, !62, i64 636, !62, i64 640, !62, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !62, i64 660, !62, i64 664, !41, i64 668, !41, i64 670, !62, i64 672, !62, i64 676, !37, i64 680, !59, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !59, i64 2520, !41, i64 2524, !41, i64 2526, !62, i64 2528, !62, i64 2532, !41, i64 2536, !41, i64 2538, !62, i64 2540, !41, i64 2544, !41, i64 2546, !59, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !62, i64 2560, !62, i64 2564, !36, i64 2568, !59, i64 2576, !62, i64 2580, !37, i64 2584, !69, i64 2616, !59, i64 3976, !59, i64 3980}
!61 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !62, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !63, i64 24, !64, i64 184}
!62 = !{!"float", !37, i64 0}
!63 = !{!"ColorManagedViewSettings", !59, i64 0, !59, i64 4, !37, i64 8, !37, i64 72, !62, i64 136, !62, i64 140, !36, i64 144, !36, i64 152}
!64 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!65 = !{!"QuicktimeCodecSettings", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !59, i64 16, !59, i64 20, !59, i64 24, !59, i64 28, !59, i64 32, !59, i64 36, !59, i64 40, !59, i64 44, !41, i64 48, !41, i64 50, !59, i64 52, !59, i64 56, !59, i64 60}
!66 = !{!"FFMpegCodecData", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !59, i64 16, !59, i64 20, !59, i64 24, !59, i64 28, !62, i64 32, !59, i64 36, !59, i64 40, !59, i64 44, !59, i64 48, !59, i64 52, !59, i64 56, !59, i64 60, !36, i64 64}
!67 = !{!"rctf", !62, i64 0, !62, i64 4, !62, i64 8, !62, i64 12}
!68 = !{!"rcti", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12}
!69 = !{!"BakeData", !61, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !62, i64 1280, !62, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!70 = !{!"AudioData", !59, i64 0, !62, i64 4, !62, i64 8, !62, i64 12, !59, i64 16, !41, i64 20, !41, i64 22, !62, i64 24, !62, i64 28}
!71 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!72 = !{!"GameData", !71, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !73, i64 40, !41, i64 64, !41, i64 66, !62, i64 68, !74, i64 72, !62, i64 128, !62, i64 132, !59, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !62, i64 164, !62, i64 168, !62, i64 172, !62, i64 176, !62, i64 180}
!73 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !62, i64 8, !62, i64 12, !36, i64 16}
!74 = !{!"RecastData", !62, i64 0, !62, i64 4, !62, i64 8, !62, i64 12, !62, i64 16, !62, i64 20, !62, i64 24, !62, i64 28, !62, i64 32, !62, i64 36, !59, i64 40, !62, i64 44, !62, i64 48, !41, i64 52, !41, i64 54}
!75 = !{!"UnitSettings", !62, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!76 = !{!"PhysicsSettings", !37, i64 0, !59, i64 12, !59, i64 16, !59, i64 20}
!77 = !{!"long", !37, i64 0}
!78 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!79 = !{!80, !59, i64 8}
!80 = !{!"UserDef", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !59, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !59, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !59, i64 8484, !59, i64 8488, !59, i64 8492, !41, i64 8496, !41, i64 8498, !59, i64 8500, !59, i64 8504, !59, i64 8508, !59, i64 8512, !59, i64 8516, !59, i64 8520, !59, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !37, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !59, i64 8912, !59, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !62, i64 8956, !62, i64 8960, !59, i64 8964, !41, i64 8968, !41, i64 8970, !62, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !81, i64 8984, !37, i64 9760, !37, i64 9772, !41, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !59, i64 10896, !59, i64 10900, !62, i64 10904, !62, i64 10908, !59, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !82, i64 10928}
!81 = !{!"ColorBand", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!82 = !{!"WalkNavigation", !62, i64 0, !62, i64 4, !62, i64 8, !62, i64 12, !62, i64 16, !62, i64 20, !41, i64 24, !37, i64 26}
!83 = !{!57, !62, i64 692}
!84 = !{!59, !59, i64 0}
!85 = !{!57, !41, i64 712}
!86 = !{!87, !41, i64 16}
!87 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !59, i64 20, !59, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !59, i64 48, !59, i64 52, !88, i64 56, !59, i64 64, !59, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !59, i64 108, !36, i64 112}
!88 = !{!"double", !37, i64 0}
!89 = !{!87, !41, i64 18}
!90 = !{!91, !37, i64 2090}
!91 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !59, i64 2096, !59, i64 2100, !37, i64 2104, !59, i64 2108, !59, i64 2112, !37, i64 2116}
!92 = !{!93, !37, i64 72}
!93 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !68, i64 56, !37, i64 72, !37, i64 73, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !41, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !39, i64 96, !39, i64 112, !39, i64 128, !39, i64 144}
!94 = !{!68, !59, i64 0}
!95 = !{!68, !59, i64 4}
!96 = !{!57, !59, i64 696}
!97 = !{!57, !59, i64 700}
