; ModuleID = 'blender/source/blender/editors/space_clip/clip_graph_ops.c'
source_filename = "blender/source/blender/editors/space_clip/clip_graph_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.SpaceClip = type { ptr, ptr, %struct.ListBase, i32, float, float, float, float, float, %struct.MovieClipUser, ptr, %struct.MovieClipScopes, i32, i16, i16, i32, [2 x float], float, float, i32, [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i32, i32, [2 x float], %struct.MaskSpaceInfo }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.MovieClipScopes = type { i16, i16, i32, i32, i32, %struct.MovieTrackingMarker, ptr, ptr, [2 x float], i16, i16, i32, ptr, ptr, [2 x float] }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.BorderSelectuserData = type { %struct.rctf, i32, i8, i8 }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }
%struct.ViewAllUserData = type { float, float }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
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
%struct.MouseSelectUserData = type { i32, i8, float, [2 x float], [2 x float], [2 x float], ptr, ptr }
%struct.SelectUserData = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"Select\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Select graph curves\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"CLIP_OT_graph_select\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Mouse location to select nearest entity\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Extend\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"Extend selection rather than clearing the existing selection\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Border Select\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"Select curve points using border selection\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"CLIP_OT_graph_select_border\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"(De)select All Markers\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"Change selection of all markers of active track\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"CLIP_OT_graph_select_all_markers\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"Delete Curve\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"Delete track corresponding to the selected curve\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"CLIP_OT_graph_delete_curve\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"Delete Knot\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"Delete curve knots\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"CLIP_OT_graph_delete_knot\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"View All\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"View all curves in editor\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"CLIP_OT_graph_view_all\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"Center Current Frame\00", align 1
@.str.25 = private unnamed_addr constant [47 x i8] c"Scroll view so current frame would be centered\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"CLIP_OT_graph_center_current_frame\00", align 1
@CLIP_OT_graph_disable_markers.actions_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.27, i32 0, ptr @.str.28, ptr @.str.29 }, %struct.EnumPropertyItem { i32 1, ptr @.str.30, i32 0, ptr @.str.31, ptr @.str.32 }, %struct.EnumPropertyItem { i32 2, ptr @.str.33, i32 0, ptr @.str.34, ptr @.str.35 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.27 = private unnamed_addr constant [8 x i8] c"DISABLE\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"Disable\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"Disable selected markers\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"ENABLE\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"Enable\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"Enable selected markers\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"TOGGLE\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"Toggle\00", align 1
@.str.35 = private unnamed_addr constant [42 x i8] c"Toggle disabled flag for selected markers\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"Disable Markers\00", align 1
@.str.37 = private unnamed_addr constant [32 x i8] c"Disable/enable selected markers\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"CLIP_OT_graph_disable_markers\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"Disable action to execute\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"gesture_mode\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CLIP_OT_graph_select(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @select_invoke, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @clip_graph_knots_poll, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = tail call ptr @RNA_def_float_vector(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, float noundef -1.000000e+02, float noundef 1.000000e+02) #8
  %11 = load ptr, ptr %8, align 8, !tbaa !19
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @select_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !20
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.6) #8
  %7 = trunc i32 %6 to i8
  %8 = load ptr, ptr %4, align 8, !tbaa !20
  call void @RNA_float_get_array(ptr noundef %8, ptr noundef nonnull @.str.3, ptr noundef nonnull %3) #8
  call fastcc void @mouse_select(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @select_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %6 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !22
  %9 = sitofp i32 %8 to float
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !22
  %12 = sitofp i32 %11 to float
  %13 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %6, float noundef %9, float noundef %12, ptr noundef nonnull %4, ptr noundef nonnull %13) #8
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !20
  call void @RNA_float_set_array(ptr noundef %15, ptr noundef nonnull @.str.3, ptr noundef nonnull %4) #8
  %16 = call i32 @select_exec(ptr noundef %0, ptr noundef %1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @clip_graph_knots_poll(ptr noundef %0) #0 {
  %2 = tail call i32 @ED_space_clip_graph_poll(ptr noundef %0) #10, !range !24
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %5, i64 0, i32 12
  %7 = load i32, ptr %6, align 8, !tbaa !25
  %8 = lshr i32 %7, 15
  %9 = and i32 %8, 1
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: optsize
declare ptr @RNA_def_float_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CLIP_OT_graph_select_border(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @border_select_graph_exec, ptr %5, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !32
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @clip_graph_knots_poll, ptr %7, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %8, align 8, !tbaa !18
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 1) #8
  ret void
}

; Function Attrs: optsize
declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @border_select_graph_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BorderSelectuserData, align 4
  %4 = alloca %struct.rctf, align 4
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %7 = tail call ptr @ED_space_clip_get_clip(ptr noundef %5) #8
  %8 = getelementptr inbounds %struct.MovieClip, ptr %7, i64 0, i32 11
  %9 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %2
  call void @WM_operator_properties_border_to_rctf(ptr noundef %1, ptr noundef nonnull %4) #8
  %12 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2
  call void @UI_view2d_region_to_view_rctf(ptr noundef nonnull %12, ptr noundef nonnull %4, ptr noundef nonnull %3) #8
  %13 = getelementptr inbounds %struct.BorderSelectuserData, ptr %3, i64 0, i32 2
  store i8 0, ptr %13, align 4, !tbaa !33
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !20
  %16 = call i32 @RNA_int_get(ptr noundef %15, ptr noundef nonnull @.str.42) #8
  %17 = getelementptr inbounds %struct.BorderSelectuserData, ptr %3, i64 0, i32 1
  store i32 %16, ptr %17, align 4, !tbaa !36
  %18 = load ptr, ptr %14, align 8, !tbaa !20
  %19 = call i32 @RNA_boolean_get(ptr noundef %18, ptr noundef nonnull @.str.6) #8
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.BorderSelectuserData, ptr %3, i64 0, i32 3
  store i8 %20, ptr %21, align 1, !tbaa !37
  call void @clip_graph_tracking_values_iterate_track(ptr noundef %5, ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef nonnull @border_select_cb, ptr noundef null, ptr noundef null) #8
  %22 = load i8, ptr %13, align 4, !tbaa !33
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %11
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef null) #8
  br label %25

25:                                               ; preds = %11, %2, %24
  %26 = phi i32 [ 4, %24 ], [ 2, %2 ], [ 2, %11 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret i32 %26
}

; Function Attrs: optsize
declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CLIP_OT_graph_select_all_markers(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graph_select_all_markers_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @clip_graph_knots_poll, ptr %5, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !18
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @graph_select_all_markers_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %5) #8
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.39) #8
  %10 = icmp eq ptr %6, null
  br i1 %10, label %55, label %11

11:                                               ; preds = %2
  %12 = icmp eq i32 %9, 0
  %13 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %6, i64 0, i32 8
  %14 = load i32, ptr %13, align 8, !tbaa !38
  br i1 %12, label %15, label %30

15:                                               ; preds = %11
  %16 = icmp sgt i32 %14, 0
  br i1 %16, label %17, label %54

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %6, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !40
  %20 = zext nneg i32 %14 to i64
  br label %24

21:                                               ; preds = %24
  %22 = add nuw nsw i64 %25, 1
  %23 = icmp eq i64 %22, %20
  br i1 %23, label %30, label %24, !llvm.loop !41

24:                                               ; preds = %17, %21
  %25 = phi i64 [ 0, %17 ], [ %22, %21 ]
  %26 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %19, i64 %25, i32 5
  %27 = load i32, ptr %26, align 4, !tbaa !43
  %28 = and i32 %27, 12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %21, label %30

30:                                               ; preds = %21, %24, %11
  %31 = phi i32 [ %9, %11 ], [ 1, %21 ], [ 2, %24 ]
  %32 = icmp sgt i32 %14, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %6, i64 0, i32 10
  %35 = load ptr, ptr %34, align 8, !tbaa !40
  %36 = zext nneg i32 %14 to i64
  br label %37

37:                                               ; preds = %33, %51
  %38 = phi i64 [ 0, %33 ], [ %52, %51 ]
  switch i32 %31, label %51 [
    i32 1, label %39
    i32 2, label %43
    i32 3, label %47
  ]

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %35, i64 %38, i32 5
  %41 = load i32, ptr %40, align 4, !tbaa !43
  %42 = or i32 %41, 12
  store i32 %42, ptr %40, align 4, !tbaa !43
  br label %51

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %35, i64 %38, i32 5
  %45 = load i32, ptr %44, align 4, !tbaa !43
  %46 = and i32 %45, -13
  store i32 %46, ptr %44, align 4, !tbaa !43
  br label %51

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %35, i64 %38, i32 5
  %49 = load i32, ptr %48, align 4, !tbaa !43
  %50 = xor i32 %49, 12
  store i32 %50, ptr %48, align 4, !tbaa !43
  br label %51

51:                                               ; preds = %39, %43, %47, %37
  %52 = add nuw nsw i64 %38, 1
  %53 = icmp eq i64 %52, %36
  br i1 %53, label %54, label %37, !llvm.loop !44

54:                                               ; preds = %51, %15, %30
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef null) #8
  br label %55

55:                                               ; preds = %2, %54
  %56 = phi i32 [ 4, %54 ], [ 2, %2 ]
  ret i32 %56
}

; Function Attrs: optsize
declare void @WM_operator_properties_select_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_graph_delete_curve(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.16, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @delete_curve_exec, ptr %5, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @clip_graph_knots_poll, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !18
  ret void
}

; Function Attrs: optsize
declare i32 @WM_operator_confirm(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @delete_curve_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %5) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @clip_delete_track(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %6) #8
  br label %9

9:                                                ; preds = %2, %8
  %10 = phi i32 [ 4, %8 ], [ 2, %2 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_graph_delete_knot(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @delete_knot_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @clip_graph_knots_poll, ptr %5, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @delete_knot_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %5) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %6, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !38
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %6, i64 0, i32 10
  br label %14

14:                                               ; preds = %12, %28
  %15 = phi i32 [ %10, %12 ], [ %29, %28 ]
  %16 = phi i32 [ 0, %12 ], [ %30, %28 ]
  %17 = load ptr, ptr %13, align 8, !tbaa !40
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %17, i64 %18, i32 5
  %20 = load i32, ptr %19, align 4, !tbaa !43
  %21 = and i32 %20, 12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %17, i64 %18
  tail call void @clip_delete_marker(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %6, ptr noundef %24) #8
  %25 = load i32, ptr %9, align 8, !tbaa !38
  br label %28

26:                                               ; preds = %14
  %27 = add nsw i32 %16, 1
  br label %28

28:                                               ; preds = %26, %23
  %29 = phi i32 [ %25, %23 ], [ %15, %26 ]
  %30 = phi i32 [ %16, %23 ], [ %27, %26 ]
  %31 = icmp slt i32 %30, %29
  br i1 %31, label %14, label %32, !llvm.loop !45

32:                                               ; preds = %28, %8, %2
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_graph_view_all(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.22, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.23, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_all_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_graph_poll, ptr %5, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view_all_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ViewAllUserData, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %6 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %7 = getelementptr inbounds %struct.ViewAllUserData, ptr %3, i64 0, i32 1
  store <2 x float> <float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000>, ptr %3, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.SpaceClip, ptr %6, i64 0, i32 12
  %9 = load i32, ptr %8, align 8, !tbaa !25
  %10 = lshr i32 %9, 19
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = lshr i32 %9, 20
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  call void @clip_graph_tracking_values_iterate(ptr noundef %6, i8 noundef zeroext %12, i8 noundef zeroext %15, ptr noundef nonnull %3, ptr noundef nonnull @view_all_cb, ptr noundef null, ptr noundef null) #8
  %16 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 6
  %17 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 1
  %18 = load float, ptr %3, align 8, !tbaa !47
  %19 = load float, ptr %7, align 4, !tbaa !49
  %20 = fcmp olt float %18, %19
  %21 = select i1 %20, float %18, float -1.000000e+01
  %22 = select i1 %20, float %19, float 1.000000e+01
  %23 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 1, i32 2
  %24 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 1, i32 3
  %25 = load <2 x i32>, ptr %16, align 4, !tbaa !22
  %26 = sitofp <2 x i32> %25 to <2 x float>
  store <2 x float> %26, ptr %17, align 8, !tbaa !46
  store float %21, ptr %23, align 8
  store float %22, ptr %24, align 4
  %27 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %17) #10
  %28 = fmul float %27, 0x3F847AE140000000
  %29 = insertelement <2 x float> poison, float %28, i64 0
  %30 = shufflevector <2 x float> %29, <2 x float> poison, <2 x i32> zeroinitializer
  %31 = fsub <2 x float> %26, %30
  %32 = fadd <2 x float> %30, %26
  %33 = shufflevector <2 x float> %31, <2 x float> %32, <2 x i32> <i32 0, i32 3>
  store <2 x float> %33, ptr %17, align 8, !tbaa !46
  %34 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %17) #10
  %35 = fmul float %34, 0x3F847AE140000000
  %36 = fsub float %21, %35
  store float %36, ptr %23, align 8, !tbaa !50
  %37 = fadd float %35, %22
  store float %37, ptr %24, align 4, !tbaa !53
  call void @ED_region_tag_redraw(ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ED_space_clip_graph_poll(ptr noundef %0) #0 {
  %2 = tail call i32 @ED_space_clip_tracking_poll(ptr noundef %0) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %5, i64 0, i32 14
  %7 = load i16, ptr %6, align 2, !tbaa !54
  %8 = icmp eq i16 %7, 1
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @ED_clip_graph_center_current_frame(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %4 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %3) #10
  %5 = fmul float %4, 5.000000e-01
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !55
  %8 = sitofp i32 %7 to float
  %9 = fsub float %8, %5
  store float %9, ptr %3, align 8, !tbaa !74
  %10 = fadd float %5, %8
  %11 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  store float %10, ptr %11, align 4, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !76
  %4 = load float, ptr %0, align 4, !tbaa !77
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_graph_center_current_frame(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.25, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.26, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @center_current_frame_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_graph_poll, ptr %5, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @center_current_frame_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  tail call void @ED_clip_graph_center_current_frame(ptr noundef %3, ptr noundef %4) #10
  tail call void @ED_region_tag_redraw(ptr noundef %4) #8
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CLIP_OT_graph_disable_markers(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.36, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.37, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.38, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graph_disable_markers_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_graph_poll, ptr %5, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.39, ptr noundef nonnull @CLIP_OT_graph_disable_markers.actions_items, i32 noundef 0, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @graph_disable_markers_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %5) #8
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.39) #8
  %10 = icmp eq ptr %6, null
  br i1 %10, label %43, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %6, i64 0, i32 13
  %13 = load i32, ptr %12, align 8, !tbaa !78
  %14 = and i32 %13, 64
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %6, i64 0, i32 8
  %18 = load i32, ptr %17, align 8, !tbaa !38
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %6, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !40
  %23 = zext nneg i32 %18 to i64
  br label %24

24:                                               ; preds = %20, %39
  %25 = phi i64 [ 0, %20 ], [ %40, %39 ]
  %26 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %22, i64 %25, i32 5
  %27 = load i32, ptr %26, align 4, !tbaa !43
  %28 = and i32 %27, 12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %24
  switch i32 %9, label %35 [
    i32 0, label %31
    i32 1, label %33
  ]

31:                                               ; preds = %30
  %32 = or i32 %27, 1
  br label %37

33:                                               ; preds = %30
  %34 = and i32 %27, -2
  br label %37

35:                                               ; preds = %30
  %36 = xor i32 %27, 1
  br label %37

37:                                               ; preds = %31, %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ], [ %32, %31 ]
  store i32 %38, ptr %26, align 4, !tbaa !43
  br label %39

39:                                               ; preds = %37, %24
  %40 = add nuw nsw i64 %25, 1
  %41 = icmp eq i64 %40, %23
  br i1 %41, label %42, label %24, !llvm.loop !79

42:                                               ; preds = %39, %16
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 0) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544322, ptr noundef %4) #8
  br label %43

43:                                               ; preds = %2, %11, %42
  %44 = phi i32 [ 4, %42 ], [ 2, %11 ], [ 2, %2 ]
  ret i32 %44
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mouse_select(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @mouse_select_knot(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #10, !range !80
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i8 @mouse_select_curve(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #10, !range !80
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3, %6
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef null) #8
  br label %10

10:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @mouse_select_knot(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.MouseSelectUserData, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.SelectUserData, align 4
  %10 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %11 = tail call ptr @ED_space_clip_get_clip(ptr noundef %10) #8
  %12 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %13 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 2
  %14 = getelementptr inbounds %struct.MovieClip, ptr %11, i64 0, i32 11
  %15 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %14) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %67, label %17

17:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #9
  call fastcc void @mouse_select_init_data(ptr noundef nonnull %4, ptr noundef %1) #10
  call void @clip_graph_tracking_values_iterate_track(ptr noundef %10, ptr noundef nonnull %15, ptr noundef nonnull %4, ptr noundef nonnull @find_nearest_tracking_knot_cb, ptr noundef null, ptr noundef null) #8
  %18 = getelementptr inbounds %struct.MouseSelectUserData, ptr %4, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !81
  %20 = icmp eq ptr %19, null
  br i1 %20, label %66, label %21

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  %22 = load float, ptr %1, align 4, !tbaa !46
  %23 = getelementptr inbounds float, ptr %1, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !46
  %25 = call zeroext i8 @UI_view2d_view_to_region_clip(ptr noundef nonnull %13, float noundef %22, float noundef %24, ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %65, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.MouseSelectUserData, ptr %4, i64 0, i32 5
  %29 = load float, ptr %28, align 4, !tbaa !46
  %30 = getelementptr inbounds %struct.MouseSelectUserData, ptr %4, i64 0, i32 5, i64 1
  %31 = load float, ptr %30, align 8, !tbaa !46
  %32 = call zeroext i8 @UI_view2d_view_to_region_clip(ptr noundef nonnull %13, float noundef %29, float noundef %31, ptr noundef nonnull %7, ptr noundef nonnull %8) #8
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %65, label %34

34:                                               ; preds = %27
  %35 = load i32, ptr %7, align 4, !tbaa !22
  %36 = load i32, ptr %5, align 4, !tbaa !22
  %37 = sub nsw i32 %35, %36
  %38 = call i32 @llvm.abs.i32(i32 %37, i1 true)
  %39 = icmp ult i32 %38, 7
  br i1 %39, label %40, label %65

40:                                               ; preds = %34
  %41 = load i32, ptr %8, align 4, !tbaa !22
  %42 = load i32, ptr %6, align 4, !tbaa !22
  %43 = sub nsw i32 %41, %42
  %44 = call i32 @llvm.abs.i32(i32 %43, i1 true)
  %45 = icmp ult i32 %44, 7
  br i1 %45, label %46, label %65

46:                                               ; preds = %40
  %47 = icmp eq i8 %2, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  store i32 2, ptr %9, align 4
  %49 = getelementptr inbounds %struct.SpaceClip, ptr %10, i64 0, i32 12
  %50 = load i32, ptr %49, align 8, !tbaa !25
  %51 = lshr i32 %50, 19
  %52 = trunc i32 %51 to i8
  %53 = and i8 %52, 1
  %54 = lshr i32 %50, 20
  %55 = trunc i32 %54 to i8
  %56 = and i8 %55, 1
  call void @clip_graph_tracking_iterate(ptr noundef %10, i8 noundef zeroext %53, i8 noundef zeroext %56, ptr noundef nonnull %9, ptr noundef nonnull @toggle_selection_cb) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  br label %57

57:                                               ; preds = %48, %46
  %58 = load i32, ptr %4, align 8, !tbaa !83
  %59 = icmp eq i32 %58, 0
  %60 = load ptr, ptr %18, align 8, !tbaa !81
  %61 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %60, i64 0, i32 5
  %62 = load i32, ptr %61, align 4, !tbaa !43
  %63 = select i1 %59, i32 4, i32 8
  %64 = or i32 %62, %63
  store i32 %64, ptr %61, align 4, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #9
  br label %67

65:                                               ; preds = %21, %27, %34, %40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  br label %66

66:                                               ; preds = %17, %65
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #9
  br label %67

67:                                               ; preds = %3, %66, %57
  %68 = phi i8 [ 1, %57 ], [ 0, %66 ], [ 0, %3 ]
  ret i8 %68
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @mouse_select_curve(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.MouseSelectUserData, align 8
  %5 = alloca %struct.SelectUserData, align 4
  %6 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %7 = tail call ptr @ED_space_clip_get_clip(ptr noundef %6) #8
  %8 = getelementptr inbounds %struct.MovieClip, ptr %7, i64 0, i32 11
  %9 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #9
  call fastcc void @mouse_select_init_data(ptr noundef nonnull %4, ptr noundef %1) #10
  %10 = getelementptr inbounds %struct.SpaceClip, ptr %6, i64 0, i32 12
  %11 = load i32, ptr %10, align 8, !tbaa !25
  %12 = lshr i32 %11, 19
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = lshr i32 %11, 20
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  call void @clip_graph_tracking_values_iterate(ptr noundef %6, i8 noundef zeroext %14, i8 noundef zeroext %17, ptr noundef nonnull %4, ptr noundef nonnull @find_nearest_tracking_segment_cb, ptr noundef null, ptr noundef nonnull @find_nearest_tracking_segment_end_cb) #8
  %18 = getelementptr inbounds %struct.MouseSelectUserData, ptr %4, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !84
  %20 = icmp eq ptr %19, null
  br i1 %20, label %37, label %21

21:                                               ; preds = %3
  %22 = icmp ne i8 %2, 0
  %23 = icmp eq ptr %9, %19
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %37, label %25

25:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 2, ptr %5, align 4
  %26 = call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %8) #8
  %27 = call ptr @BKE_tracking_object_get_tracks(ptr noundef nonnull %8, ptr noundef %26) #8
  %28 = load ptr, ptr %18, align 8, !tbaa !84
  %29 = getelementptr inbounds %struct.MovieClip, ptr %7, i64 0, i32 11, i32 6
  store ptr %28, ptr %29, align 8, !tbaa !85
  call void @BKE_tracking_track_select(ptr noundef %27, ptr noundef %28, i32 noundef 7, i8 noundef zeroext 1) #8
  %30 = load i32, ptr %10, align 8, !tbaa !25
  %31 = lshr i32 %30, 19
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = lshr i32 %30, 20
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  call void @clip_graph_tracking_iterate(ptr noundef nonnull %6, i8 noundef zeroext %33, i8 noundef zeroext %36, ptr noundef nonnull %5, ptr noundef nonnull @toggle_selection_cb) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  br label %37

37:                                               ; preds = %3, %25, %21
  %38 = phi i8 [ 1, %21 ], [ 1, %25 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #9
  ret i8 %38
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_space_clip(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ED_space_clip_get_clip(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_tracking_track_get_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mouse_select_init_data(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  %3 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 2
  store float 0x47EFFFFFE0000000, ptr %3, align 8, !tbaa !92
  %4 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 3
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %4, ptr noundef %1) #10
  ret void
}

; Function Attrs: optsize
declare void @clip_graph_tracking_values_iterate_track(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @find_nearest_tracking_knot_cb(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) #3 {
  %7 = alloca [2 x float], align 8
  %8 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  %9 = sitofp i32 %4 to float
  %10 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 3
  %11 = load <2 x float>, ptr %10, align 4, !tbaa !46
  %12 = insertelement <2 x float> poison, float %9, i64 0
  %13 = insertelement <2 x float> %12, float %5, i64 1
  %14 = fsub <2 x float> %13, %11
  store <2 x float> %14, ptr %7, align 8, !tbaa !46
  %15 = call fastcc float @len_squared_v2(ptr noundef nonnull %7) #10
  %16 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !81
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 2
  %21 = load float, ptr %20, align 8, !tbaa !92
  %22 = fcmp olt float %15, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19, %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  store float %9, ptr %8, align 4, !tbaa !46
  %24 = getelementptr inbounds float, ptr %8, i64 1
  store float %5, ptr %24, align 4, !tbaa !46
  %25 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 6
  store ptr %1, ptr %25, align 8, !tbaa !84
  store ptr %2, ptr %16, align 8, !tbaa !81
  %26 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 2
  store float %15, ptr %26, align 8, !tbaa !92
  store i32 %3, ptr %0, align 8, !tbaa !83
  %27 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 5
  call fastcc void @copy_v2_v2(ptr noundef nonnull %27, ptr noundef nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br label %28

28:                                               ; preds = %23, %19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @UI_view2d_view_to_region_clip(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: optsize
declare void @clip_graph_tracking_iterate(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @toggle_selection_cb(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #3 {
  %3 = load i32, ptr %0, align 4, !tbaa !93
  switch i32 %3, label %16 [
    i32 1, label %4
    i32 2, label %8
    i32 3, label %12
  ]

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !43
  %7 = or i32 %6, 12
  store i32 %7, ptr %5, align 4, !tbaa !43
  br label %16

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %1, i64 0, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !43
  %11 = and i32 %10, -13
  store i32 %11, ptr %9, align 4, !tbaa !43
  br label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %1, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !43
  %15 = xor i32 %14, 12
  store i32 %15, ptr %13, align 4, !tbaa !43
  br label %16

16:                                               ; preds = %2, %12, %8, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !46
  store float %3, ptr %0, align 4, !tbaa !46
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !46
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_squared_v2(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load float, ptr %0, align 4, !tbaa !46
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !46
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  ret float %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: optsize
declare void @clip_graph_tracking_values_iterate(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @find_nearest_tracking_segment_cb(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, i32 noundef %3, i32 noundef %4, float noundef %5) #0 {
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  %8 = sitofp i32 %4 to float
  store float %8, ptr %7, align 4, !tbaa !46
  %9 = getelementptr inbounds float, ptr %7, i64 1
  store float %5, ptr %9, align 4, !tbaa !46
  %10 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 1
  %11 = load i8, ptr %10, align 4, !tbaa !95
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 3
  %15 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 4
  %16 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %7) #8
  %17 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !84
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 2
  %22 = load float, ptr %21, align 8, !tbaa !92
  %23 = fcmp olt float %16, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20, %13
  store ptr %1, ptr %17, align 8, !tbaa !84
  %25 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 2
  store float %16, ptr %25, align 8, !tbaa !92
  store i32 %3, ptr %0, align 8, !tbaa !83
  %26 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 5
  call fastcc void @copy_v2_v2(ptr noundef nonnull %26, ptr noundef nonnull %7) #10
  br label %27

27:                                               ; preds = %20, %24, %6
  store i8 1, ptr %10, align 4, !tbaa !95
  %28 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 4
  call fastcc void @copy_v2_v2(ptr noundef nonnull %28, ptr noundef nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @find_nearest_tracking_segment_end_cb(ptr nocapture noundef writeonly %0, i32 %1) #2 {
  %3 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 1
  store i8 0, ptr %3, align 4, !tbaa !95
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_tracking_object_get_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_tracking_object_get_tracks(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_tracking_track_select(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare float @dist_squared_to_line_segment_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_operator_properties_border_to_rctf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_view2d_region_to_view_rctf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @border_select_cb(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) #0 {
  %7 = sitofp i32 %4 to float
  %8 = tail call zeroext i8 @BLI_rctf_isect_pt(ptr noundef %0, float noundef %7, float noundef %5) #8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  %11 = icmp eq i32 %3, 0
  %12 = select i1 %11, i32 4, i32 8
  %13 = getelementptr inbounds %struct.BorderSelectuserData, ptr %0, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !36
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 5
  %18 = load i32, ptr %17, align 4, !tbaa !43
  %19 = or i32 %18, %12
  store i32 %19, ptr %17, align 4, !tbaa !43
  br label %25

20:                                               ; preds = %10
  %21 = xor i32 %12, -1
  %22 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 5
  %23 = load i32, ptr %22, align 4, !tbaa !43
  %24 = and i32 %23, %21
  store i32 %24, ptr %22, align 4, !tbaa !43
  br label %25

25:                                               ; preds = %20, %16
  %26 = getelementptr inbounds %struct.BorderSelectuserData, ptr %0, i64 0, i32 2
  store i8 1, ptr %26, align 4, !tbaa !33
  br label %35

27:                                               ; preds = %6
  %28 = getelementptr inbounds %struct.BorderSelectuserData, ptr %0, i64 0, i32 3
  %29 = load i8, ptr %28, align 1, !tbaa !37
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !43
  %34 = and i32 %33, -13
  store i32 %34, ptr %32, align 4, !tbaa !43
  br label %35

35:                                               ; preds = %27, %31, %25
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_rctf_isect_pt(ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @clip_delete_track(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @clip_delete_marker(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @view_all_cb(ptr nocapture noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, i32 %3, i32 %4, float noundef %5) #3 {
  %7 = load float, ptr %0, align 4, !tbaa !47
  %8 = fcmp ogt float %7, %5
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store float %5, ptr %0, align 4, !tbaa !47
  br label %10

10:                                               ; preds = %9, %6
  %11 = getelementptr inbounds %struct.ViewAllUserData, ptr %0, i64 0, i32 1
  %12 = load float, ptr %11, align 4, !tbaa !49
  %13 = fcmp olt float %12, %5
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store float %5, ptr %11, align 4, !tbaa !49
  br label %15

15:                                               ; preds = %14, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !96
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !97
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ED_space_clip_tracking_poll(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind }
attributes #10 = { optsize }

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
!13 = !{!6, !7, i64 24}
!14 = !{!6, !7, i64 8}
!15 = !{!6, !7, i64 32}
!16 = !{!6, !7, i64 48}
!17 = !{!6, !7, i64 72}
!18 = !{!6, !12, i64 184}
!19 = !{!6, !7, i64 88}
!20 = !{!21, !7, i64 112}
!21 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!22 = !{!23, !23, i64 0}
!23 = !{!"int", !8, i64 0}
!24 = !{i32 0, i32 2}
!25 = !{!26, !23, i64 208}
!26 = !{!"SpaceClip", !7, i64 0, !7, i64 8, !10, i64 16, !23, i64 32, !27, i64 36, !27, i64 40, !27, i64 44, !27, i64 48, !27, i64 52, !28, i64 56, !7, i64 64, !29, i64 72, !23, i64 208, !12, i64 212, !12, i64 214, !23, i64 216, !8, i64 220, !27, i64 228, !27, i64 232, !23, i64 236, !8, i64 240, !8, i64 304, !23, i64 368, !12, i64 372, !12, i64 374, !23, i64 376, !23, i64 380, !8, i64 384, !31, i64 392}
!27 = !{!"float", !8, i64 0}
!28 = !{!"MovieClipUser", !23, i64 0, !12, i64 4, !12, i64 6}
!29 = !{!"MovieClipScopes", !12, i64 0, !12, i64 2, !23, i64 4, !23, i64 8, !23, i64 12, !30, i64 16, !7, i64 80, !7, i64 88, !8, i64 96, !12, i64 104, !12, i64 106, !23, i64 108, !7, i64 112, !7, i64 120, !8, i64 128}
!30 = !{!"MovieTrackingMarker", !8, i64 0, !8, i64 8, !8, i64 40, !8, i64 48, !23, i64 56, !23, i64 60}
!31 = !{!"MaskSpaceInfo", !7, i64 0, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11}
!32 = !{!6, !7, i64 64}
!33 = !{!34, !8, i64 20}
!34 = !{!"BorderSelectuserData", !35, i64 0, !23, i64 16, !8, i64 20, !8, i64 21}
!35 = !{!"rctf", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12}
!36 = !{!34, !23, i64 16}
!37 = !{!34, !8, i64 21}
!38 = !{!39, !23, i64 120}
!39 = !{!"MovieTrackingTrack", !7, i64 0, !7, i64 8, !8, i64 16, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !23, i64 120, !23, i64 124, !7, i64 128, !8, i64 136, !27, i64 148, !23, i64 152, !23, i64 156, !23, i64 160, !8, i64 164, !12, i64 176, !12, i64 178, !12, i64 180, !12, i64 182, !23, i64 184, !27, i64 188, !7, i64 192, !27, i64 200, !27, i64 204}
!40 = !{!39, !7, i64 128}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!30, !23, i64 60}
!44 = distinct !{!44, !42}
!45 = distinct !{!45, !42}
!46 = !{!27, !27, i64 0}
!47 = !{!48, !27, i64 0}
!48 = !{!"", !27, i64 0, !27, i64 4}
!49 = !{!48, !27, i64 4}
!50 = !{!51, !27, i64 24}
!51 = !{!"View2D", !35, i64 0, !35, i64 16, !52, i64 32, !52, i64 48, !52, i64 64, !8, i64 80, !8, i64 88, !27, i64 96, !27, i64 100, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !12, i64 112, !12, i64 114, !12, i64 116, !12, i64 118, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !7, i64 128, !23, i64 136, !23, i64 140, !7, i64 144, !7, i64 152}
!52 = !{!"rcti", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12}
!53 = !{!51, !27, i64 28}
!54 = !{!26, !12, i64 214}
!55 = !{!56, !23, i64 680}
!56 = !{!"Scene", !57, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !23, i64 232, !23, i64 236, !23, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !58, i64 280, !65, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !23, i64 4380, !10, i64 4384, !66, i64 4400, !67, i64 4416, !70, i64 4600, !7, i64 4608, !71, i64 4616, !7, i64 4640, !72, i64 4648, !72, i64 4656, !60, i64 4664, !61, i64 4824, !73, i64 4888, !7, i64 4952}
!57 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !23, i64 100, !23, i64 104, !23, i64 108, !7, i64 112}
!58 = !{!"RenderData", !59, i64 0, !7, i64 248, !7, i64 256, !62, i64 264, !63, i64 328, !23, i64 400, !23, i64 404, !23, i64 408, !27, i64 412, !23, i64 416, !23, i64 420, !23, i64 424, !23, i64 428, !12, i64 432, !12, i64 434, !27, i64 436, !27, i64 440, !27, i64 444, !27, i64 448, !27, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !23, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !23, i64 484, !23, i64 488, !12, i64 492, !12, i64 494, !23, i64 496, !23, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !23, i64 516, !23, i64 520, !23, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !35, i64 544, !35, i64 560, !52, i64 576, !10, i64 592, !12, i64 608, !12, i64 610, !27, i64 612, !27, i64 616, !27, i64 620, !27, i64 624, !23, i64 628, !27, i64 632, !27, i64 636, !27, i64 640, !27, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !27, i64 660, !27, i64 664, !12, i64 668, !12, i64 670, !27, i64 672, !27, i64 676, !8, i64 680, !23, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !23, i64 2520, !12, i64 2524, !12, i64 2526, !27, i64 2528, !27, i64 2532, !12, i64 2536, !12, i64 2538, !27, i64 2540, !12, i64 2544, !12, i64 2546, !23, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !27, i64 2560, !27, i64 2564, !7, i64 2568, !23, i64 2576, !27, i64 2580, !8, i64 2584, !64, i64 2616, !23, i64 3976, !23, i64 3980}
!59 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !27, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !60, i64 24, !61, i64 184}
!60 = !{!"ColorManagedViewSettings", !23, i64 0, !23, i64 4, !8, i64 8, !8, i64 72, !27, i64 136, !27, i64 140, !7, i64 144, !7, i64 152}
!61 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!62 = !{!"QuicktimeCodecSettings", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !23, i64 24, !23, i64 28, !23, i64 32, !23, i64 36, !23, i64 40, !23, i64 44, !12, i64 48, !12, i64 50, !23, i64 52, !23, i64 56, !23, i64 60}
!63 = !{!"FFMpegCodecData", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !23, i64 24, !23, i64 28, !27, i64 32, !23, i64 36, !23, i64 40, !23, i64 44, !23, i64 48, !23, i64 52, !23, i64 56, !23, i64 60, !7, i64 64}
!64 = !{!"BakeData", !59, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !27, i64 1280, !27, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!65 = !{!"AudioData", !23, i64 0, !27, i64 4, !27, i64 8, !27, i64 12, !23, i64 16, !12, i64 20, !12, i64 22, !27, i64 24, !27, i64 28}
!66 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!67 = !{!"GameData", !66, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !68, i64 40, !12, i64 64, !12, i64 66, !27, i64 68, !69, i64 72, !27, i64 128, !27, i64 132, !23, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !27, i64 164, !27, i64 168, !27, i64 172, !27, i64 176, !27, i64 180}
!68 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !27, i64 8, !27, i64 12, !7, i64 16}
!69 = !{!"RecastData", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12, !27, i64 16, !27, i64 20, !27, i64 24, !27, i64 28, !27, i64 32, !27, i64 36, !23, i64 40, !27, i64 44, !27, i64 48, !12, i64 52, !12, i64 54}
!70 = !{!"UnitSettings", !27, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!71 = !{!"PhysicsSettings", !8, i64 0, !23, i64 12, !23, i64 16, !23, i64 20}
!72 = !{!"long", !8, i64 0}
!73 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!74 = !{!51, !27, i64 16}
!75 = !{!51, !27, i64 20}
!76 = !{!35, !27, i64 4}
!77 = !{!35, !27, i64 0}
!78 = !{!39, !23, i64 152}
!79 = distinct !{!79, !42}
!80 = !{i8 0, i8 2}
!81 = !{!82, !7, i64 48}
!82 = !{!"", !23, i64 0, !8, i64 4, !27, i64 8, !8, i64 12, !8, i64 20, !8, i64 28, !7, i64 40, !7, i64 48}
!83 = !{!82, !23, i64 0}
!84 = !{!82, !7, i64 40}
!85 = !{!86, !7, i64 232}
!86 = !{!"MovieTracking", !87, i64 0, !88, i64 72, !10, i64 128, !10, i64 144, !89, i64 160, !90, i64 184, !7, i64 232, !7, i64 240, !10, i64 248, !23, i64 264, !23, i64 268, !7, i64 272, !91, i64 280}
!87 = !{!"MovieTrackingSettings", !23, i64 0, !12, i64 4, !12, i64 6, !27, i64 8, !12, i64 12, !12, i64 14, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !27, i64 24, !12, i64 28, !12, i64 30, !23, i64 32, !23, i64 36, !23, i64 40, !12, i64 44, !12, i64 46, !27, i64 48, !23, i64 52, !23, i64 56, !27, i64 60, !27, i64 64, !23, i64 68}
!88 = !{!"MovieTrackingCamera", !7, i64 0, !12, i64 8, !12, i64 10, !27, i64 12, !27, i64 16, !27, i64 20, !12, i64 24, !12, i64 26, !8, i64 28, !27, i64 36, !27, i64 40, !27, i64 44, !27, i64 48, !27, i64 52}
!89 = !{!"MovieTrackingReconstruction", !23, i64 0, !27, i64 4, !23, i64 8, !23, i64 12, !7, i64 16}
!90 = !{!"MovieTrackingStabilization", !23, i64 0, !23, i64 4, !23, i64 8, !27, i64 12, !7, i64 16, !27, i64 24, !27, i64 28, !27, i64 32, !23, i64 36, !23, i64 40, !27, i64 44}
!91 = !{!"MovieTrackingDopesheet", !23, i64 0, !12, i64 4, !12, i64 6, !10, i64 8, !10, i64 24, !23, i64 40, !23, i64 44}
!92 = !{!82, !27, i64 8}
!93 = !{!94, !23, i64 0}
!94 = !{!"", !23, i64 0}
!95 = !{!82, !8, i64 4}
!96 = !{!35, !27, i64 12}
!97 = !{!35, !27, i64 8}
