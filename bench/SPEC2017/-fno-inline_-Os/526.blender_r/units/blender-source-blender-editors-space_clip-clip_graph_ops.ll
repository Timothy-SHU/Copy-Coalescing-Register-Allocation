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
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @select_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @clip_graph_knots_poll, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_float_vector(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, float noundef -1.000000e+02, float noundef 1.000000e+02) #8
  %11 = load ptr, ptr %8, align 8, !tbaa !48
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @select_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !49 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.6) #8
  %7 = trunc i32 %6 to i8
  %8 = load ptr, ptr %4, align 8, !tbaa !50
  call void @RNA_float_get_array(ptr noundef %8, ptr noundef nonnull @.str.3, ptr noundef nonnull %3) #8
  call fastcc void @mouse_select(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @select_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !52 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %6 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !53
  %9 = sitofp i32 %8 to float
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !53
  %12 = sitofp i32 %11 to float
  %13 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %6, float noundef %9, float noundef %12, ptr noundef nonnull %4, ptr noundef nonnull %13) #8
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !50
  call void @RNA_float_set_array(ptr noundef %15, ptr noundef nonnull @.str.3, ptr noundef nonnull %4) #8
  %16 = call i32 @select_exec(ptr noundef %0, ptr noundef %1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @clip_graph_knots_poll(ptr noundef %0) #0 !PGOFuncName !55 {
  %2 = tail call i32 @ED_space_clip_graph_poll(ptr noundef %0) #10, !range !56
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %5, i64 0, i32 12
  %7 = load i32, ptr %6, align 8, !tbaa !57
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
  store ptr @.str.9, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @border_select_graph_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @clip_graph_knots_poll, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %8, align 8, !tbaa !47
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 1) #8
  ret void
}

; Function Attrs: optsize
declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @border_select_graph_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !65 {
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
  store i8 0, ptr %13, align 4, !tbaa !66
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !50
  %16 = call i32 @RNA_int_get(ptr noundef %15, ptr noundef nonnull @.str.42) #8
  %17 = getelementptr inbounds %struct.BorderSelectuserData, ptr %3, i64 0, i32 1
  store i32 %16, ptr %17, align 4, !tbaa !69
  %18 = load ptr, ptr %14, align 8, !tbaa !50
  %19 = call i32 @RNA_boolean_get(ptr noundef %18, ptr noundef nonnull @.str.6) #8
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.BorderSelectuserData, ptr %3, i64 0, i32 3
  store i8 %20, ptr %21, align 1, !tbaa !70
  call void @clip_graph_tracking_values_iterate_track(ptr noundef %5, ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef nonnull @border_select_cb, ptr noundef null, ptr noundef null) #8
  %22 = load i8, ptr %13, align 4, !tbaa !66
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
  store ptr @.str.12, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graph_select_all_markers_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @clip_graph_knots_poll, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @graph_select_all_markers_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !71 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %5) #8
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.39) #8
  %10 = icmp eq ptr %6, null
  br i1 %10, label %55, label %11

11:                                               ; preds = %2
  %12 = icmp eq i32 %9, 0
  %13 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %6, i64 0, i32 8
  %14 = load i32, ptr %13, align 8, !tbaa !72
  br i1 %12, label %15, label %30

15:                                               ; preds = %11
  %16 = icmp sgt i32 %14, 0
  br i1 %16, label %17, label %54

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %6, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !74
  %20 = zext nneg i32 %14 to i64
  br label %24

21:                                               ; preds = %24
  %22 = add nuw nsw i64 %25, 1
  %23 = icmp eq i64 %22, %20
  br i1 %23, label %30, label %24, !llvm.loop !75

24:                                               ; preds = %17, %21
  %25 = phi i64 [ 0, %17 ], [ %22, %21 ]
  %26 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %19, i64 %25, i32 5
  %27 = load i32, ptr %26, align 4, !tbaa !77
  %28 = and i32 %27, 12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %21, label %30

30:                                               ; preds = %21, %24, %11
  %31 = phi i32 [ %9, %11 ], [ 1, %21 ], [ 2, %24 ]
  %32 = icmp sgt i32 %14, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %6, i64 0, i32 10
  %35 = load ptr, ptr %34, align 8, !tbaa !74
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
  %41 = load i32, ptr %40, align 4, !tbaa !77
  %42 = or i32 %41, 12
  store i32 %42, ptr %40, align 4, !tbaa !77
  br label %51

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %35, i64 %38, i32 5
  %45 = load i32, ptr %44, align 4, !tbaa !77
  %46 = and i32 %45, -13
  store i32 %46, ptr %44, align 4, !tbaa !77
  br label %51

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %35, i64 %38, i32 5
  %49 = load i32, ptr %48, align 4, !tbaa !77
  %50 = xor i32 %49, 12
  store i32 %50, ptr %48, align 4, !tbaa !77
  br label %51

51:                                               ; preds = %39, %43, %47, %37
  %52 = add nuw nsw i64 %38, 1
  %53 = icmp eq i64 %52, %36
  br i1 %53, label %54, label %37, !llvm.loop !78

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
  store ptr @.str.15, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.16, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @delete_curve_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @clip_graph_knots_poll, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  ret void
}

; Function Attrs: optsize
declare i32 @WM_operator_confirm(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @delete_curve_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !79 {
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
  store ptr @.str.18, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @delete_knot_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @clip_graph_knots_poll, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @delete_knot_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !80 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %5) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %6, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !72
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %6, i64 0, i32 10
  br label %14

14:                                               ; preds = %12, %28
  %15 = phi i32 [ %10, %12 ], [ %29, %28 ]
  %16 = phi i32 [ 0, %12 ], [ %30, %28 ]
  %17 = load ptr, ptr %13, align 8, !tbaa !74
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %17, i64 %18, i32 5
  %20 = load i32, ptr %19, align 4, !tbaa !77
  %21 = and i32 %20, 12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %17, i64 %18
  tail call void @clip_delete_marker(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %6, ptr noundef %24) #8
  %25 = load i32, ptr %9, align 8, !tbaa !72
  br label %28

26:                                               ; preds = %14
  %27 = add nsw i32 %16, 1
  br label %28

28:                                               ; preds = %26, %23
  %29 = phi i32 [ %25, %23 ], [ %15, %26 ]
  %30 = phi i32 [ %16, %23 ], [ %27, %26 ]
  %31 = icmp slt i32 %30, %29
  br i1 %31, label %14, label %32, !llvm.loop !81

32:                                               ; preds = %28, %8, %2
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_graph_view_all(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.22, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.23, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_all_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_graph_poll, ptr %5, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view_all_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !82 {
  %3 = alloca %struct.ViewAllUserData, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %6 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %7 = getelementptr inbounds %struct.ViewAllUserData, ptr %3, i64 0, i32 1
  store <2 x float> <float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000>, ptr %3, align 8, !tbaa !83
  %8 = getelementptr inbounds %struct.SpaceClip, ptr %6, i64 0, i32 12
  %9 = load i32, ptr %8, align 8, !tbaa !57
  %10 = lshr i32 %9, 19
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = lshr i32 %9, 20
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  call void @clip_graph_tracking_values_iterate(ptr noundef %6, i8 noundef zeroext %12, i8 noundef zeroext %15, ptr noundef nonnull %3, ptr noundef nonnull @view_all_cb, ptr noundef null, ptr noundef null) #8
  %16 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 6
  %17 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 1
  %18 = load float, ptr %3, align 8, !tbaa !84
  %19 = load float, ptr %7, align 4, !tbaa !86
  %20 = fcmp olt float %18, %19
  %21 = select i1 %20, float %18, float -1.000000e+01
  %22 = select i1 %20, float %19, float 1.000000e+01
  %23 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 1, i32 2
  %24 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 1, i32 3
  %25 = load <2 x i32>, ptr %16, align 4, !tbaa !53
  %26 = sitofp <2 x i32> %25 to <2 x float>
  store <2 x float> %26, ptr %17, align 8, !tbaa !83
  store float %21, ptr %23, align 8
  store float %22, ptr %24, align 4
  %27 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %17) #10
  %28 = fmul float %27, 0x3F847AE140000000
  %29 = insertelement <2 x float> poison, float %28, i64 0
  %30 = shufflevector <2 x float> %29, <2 x float> poison, <2 x i32> zeroinitializer
  %31 = fsub <2 x float> %26, %30
  %32 = fadd <2 x float> %30, %26
  %33 = shufflevector <2 x float> %31, <2 x float> %32, <2 x i32> <i32 0, i32 3>
  store <2 x float> %33, ptr %17, align 8, !tbaa !83
  %34 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %17) #10
  %35 = fmul float %34, 0x3F847AE140000000
  %36 = fsub float %21, %35
  store float %36, ptr %23, align 8, !tbaa !87
  %37 = fadd float %35, %22
  store float %37, ptr %24, align 4, !tbaa !90
  call void @ED_region_tag_redraw(ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ED_space_clip_graph_poll(ptr noundef %0) #0 !PGOFuncName !91 {
  %2 = tail call i32 @ED_space_clip_tracking_poll(ptr noundef %0) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %5, i64 0, i32 14
  %7 = load i16, ptr %6, align 2, !tbaa !92
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
  %7 = load i32, ptr %6, align 8, !tbaa !93
  %8 = sitofp i32 %7 to float
  %9 = fsub float %8, %5
  store float %9, ptr %3, align 8, !tbaa !112
  %10 = fadd float %5, %8
  %11 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  store float %10, ptr %11, align 4, !tbaa !113
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !114 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !115
  %4 = load float, ptr %0, align 4, !tbaa !116
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_graph_center_current_frame(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.25, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.26, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @center_current_frame_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_graph_poll, ptr %5, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @center_current_frame_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !117 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  tail call void @ED_clip_graph_center_current_frame(ptr noundef %3, ptr noundef %4) #10
  tail call void @ED_region_tag_redraw(ptr noundef %4) #8
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CLIP_OT_graph_disable_markers(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.36, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.37, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.38, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graph_disable_markers_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_graph_poll, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.39, ptr noundef nonnull @CLIP_OT_graph_disable_markers.actions_items, i32 noundef 0, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @graph_disable_markers_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !118 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %5) #8
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.39) #8
  %10 = icmp eq ptr %6, null
  br i1 %10, label %43, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %6, i64 0, i32 13
  %13 = load i32, ptr %12, align 8, !tbaa !119
  %14 = and i32 %13, 64
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %6, i64 0, i32 8
  %18 = load i32, ptr %17, align 8, !tbaa !72
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %6, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !74
  %23 = zext nneg i32 %18 to i64
  br label %24

24:                                               ; preds = %20, %39
  %25 = phi i64 [ 0, %20 ], [ %40, %39 ]
  %26 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %22, i64 %25, i32 5
  %27 = load i32, ptr %26, align 4, !tbaa !77
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
  store i32 %38, ptr %26, align 4, !tbaa !77
  br label %39

39:                                               ; preds = %37, %24
  %40 = add nuw nsw i64 %25, 1
  %41 = icmp eq i64 %40, %23
  br i1 %41, label %42, label %24, !llvm.loop !120

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
define internal fastcc void @mouse_select(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !121 {
  %4 = tail call fastcc zeroext i8 @mouse_select_knot(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #10, !range !122
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i8 @mouse_select_curve(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #10, !range !122
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3, %6
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef null) #8
  br label %10

10:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @mouse_select_knot(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !123 {
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
  %19 = load ptr, ptr %18, align 8, !tbaa !124
  %20 = icmp eq ptr %19, null
  br i1 %20, label %66, label %21

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  %22 = load float, ptr %1, align 4, !tbaa !83
  %23 = getelementptr inbounds float, ptr %1, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !83
  %25 = call zeroext i8 @UI_view2d_view_to_region_clip(ptr noundef nonnull %13, float noundef %22, float noundef %24, ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %65, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.MouseSelectUserData, ptr %4, i64 0, i32 5
  %29 = load float, ptr %28, align 4, !tbaa !83
  %30 = getelementptr inbounds %struct.MouseSelectUserData, ptr %4, i64 0, i32 5, i64 1
  %31 = load float, ptr %30, align 8, !tbaa !83
  %32 = call zeroext i8 @UI_view2d_view_to_region_clip(ptr noundef nonnull %13, float noundef %29, float noundef %31, ptr noundef nonnull %7, ptr noundef nonnull %8) #8
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %65, label %34

34:                                               ; preds = %27
  %35 = load i32, ptr %7, align 4, !tbaa !53
  %36 = load i32, ptr %5, align 4, !tbaa !53
  %37 = sub nsw i32 %35, %36
  %38 = call i32 @llvm.abs.i32(i32 %37, i1 true)
  %39 = icmp ult i32 %38, 7
  br i1 %39, label %40, label %65

40:                                               ; preds = %34
  %41 = load i32, ptr %8, align 4, !tbaa !53
  %42 = load i32, ptr %6, align 4, !tbaa !53
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
  %50 = load i32, ptr %49, align 8, !tbaa !57
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
  %58 = load i32, ptr %4, align 8, !tbaa !126
  %59 = icmp eq i32 %58, 0
  %60 = load ptr, ptr %18, align 8, !tbaa !124
  %61 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %60, i64 0, i32 5
  %62 = load i32, ptr %61, align 4, !tbaa !77
  %63 = select i1 %59, i32 4, i32 8
  %64 = or i32 %62, %63
  store i32 %64, ptr %61, align 4, !tbaa !77
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
define internal fastcc noundef zeroext i8 @mouse_select_curve(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !127 {
  %4 = alloca %struct.MouseSelectUserData, align 8
  %5 = alloca %struct.SelectUserData, align 4
  %6 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %7 = tail call ptr @ED_space_clip_get_clip(ptr noundef %6) #8
  %8 = getelementptr inbounds %struct.MovieClip, ptr %7, i64 0, i32 11
  %9 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #9
  call fastcc void @mouse_select_init_data(ptr noundef nonnull %4, ptr noundef %1) #10
  %10 = getelementptr inbounds %struct.SpaceClip, ptr %6, i64 0, i32 12
  %11 = load i32, ptr %10, align 8, !tbaa !57
  %12 = lshr i32 %11, 19
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = lshr i32 %11, 20
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  call void @clip_graph_tracking_values_iterate(ptr noundef %6, i8 noundef zeroext %14, i8 noundef zeroext %17, ptr noundef nonnull %4, ptr noundef nonnull @find_nearest_tracking_segment_cb, ptr noundef null, ptr noundef nonnull @find_nearest_tracking_segment_end_cb) #8
  %18 = getelementptr inbounds %struct.MouseSelectUserData, ptr %4, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !128
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
  %28 = load ptr, ptr %18, align 8, !tbaa !128
  %29 = getelementptr inbounds %struct.MovieClip, ptr %7, i64 0, i32 11, i32 6
  store ptr %28, ptr %29, align 8, !tbaa !129
  call void @BKE_tracking_track_select(ptr noundef %27, ptr noundef %28, i32 noundef 7, i8 noundef zeroext 1) #8
  %30 = load i32, ptr %10, align 8, !tbaa !57
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
define internal fastcc void @mouse_select_init_data(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !136 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  %3 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 2
  store float 0x47EFFFFFE0000000, ptr %3, align 8, !tbaa !137
  %4 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 3
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %4, ptr noundef %1) #10
  ret void
}

; Function Attrs: optsize
declare void @clip_graph_tracking_values_iterate_track(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @find_nearest_tracking_knot_cb(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) #3 !PGOFuncName !138 {
  %7 = alloca [2 x float], align 8
  %8 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  %9 = sitofp i32 %4 to float
  %10 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 3
  %11 = load <2 x float>, ptr %10, align 4, !tbaa !83
  %12 = insertelement <2 x float> poison, float %9, i64 0
  %13 = insertelement <2 x float> %12, float %5, i64 1
  %14 = fsub <2 x float> %13, %11
  store <2 x float> %14, ptr %7, align 8, !tbaa !83
  %15 = call fastcc float @len_squared_v2(ptr noundef nonnull %7) #10
  %16 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !124
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 2
  %21 = load float, ptr %20, align 8, !tbaa !137
  %22 = fcmp olt float %15, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19, %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  store float %9, ptr %8, align 4, !tbaa !83
  %24 = getelementptr inbounds float, ptr %8, i64 1
  store float %5, ptr %24, align 4, !tbaa !83
  %25 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 6
  store ptr %1, ptr %25, align 8, !tbaa !128
  store ptr %2, ptr %16, align 8, !tbaa !124
  %26 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 2
  store float %15, ptr %26, align 8, !tbaa !137
  store i32 %3, ptr %0, align 8, !tbaa !126
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
define internal void @toggle_selection_cb(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #3 !PGOFuncName !139 {
  %3 = load i32, ptr %0, align 4, !tbaa !140
  switch i32 %3, label %16 [
    i32 1, label %4
    i32 2, label %8
    i32 3, label %12
  ]

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !77
  %7 = or i32 %6, 12
  store i32 %7, ptr %5, align 4, !tbaa !77
  br label %16

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %1, i64 0, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !77
  %11 = and i32 %10, -13
  store i32 %11, ptr %9, align 4, !tbaa !77
  br label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %1, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !77
  %15 = xor i32 %14, 12
  store i32 %15, ptr %13, align 4, !tbaa !77
  br label %16

16:                                               ; preds = %2, %12, %8, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !142 {
  %3 = load float, ptr %1, align 4, !tbaa !83
  store float %3, ptr %0, align 4, !tbaa !83
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !83
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_squared_v2(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !143 {
  %2 = load float, ptr %0, align 4, !tbaa !83
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !83
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  ret float %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: optsize
declare void @clip_graph_tracking_values_iterate(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @find_nearest_tracking_segment_cb(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, i32 noundef %3, i32 noundef %4, float noundef %5) #0 !PGOFuncName !144 {
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  %8 = sitofp i32 %4 to float
  store float %8, ptr %7, align 4, !tbaa !83
  %9 = getelementptr inbounds float, ptr %7, i64 1
  store float %5, ptr %9, align 4, !tbaa !83
  %10 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 1
  %11 = load i8, ptr %10, align 4, !tbaa !145
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 3
  %15 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 4
  %16 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %7) #8
  %17 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !128
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 2
  %22 = load float, ptr %21, align 8, !tbaa !137
  %23 = fcmp olt float %16, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20, %13
  store ptr %1, ptr %17, align 8, !tbaa !128
  %25 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 2
  store float %16, ptr %25, align 8, !tbaa !137
  store i32 %3, ptr %0, align 8, !tbaa !126
  %26 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 5
  call fastcc void @copy_v2_v2(ptr noundef nonnull %26, ptr noundef nonnull %7) #10
  br label %27

27:                                               ; preds = %20, %24, %6
  store i8 1, ptr %10, align 4, !tbaa !145
  %28 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 4
  call fastcc void @copy_v2_v2(ptr noundef nonnull %28, ptr noundef nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @find_nearest_tracking_segment_end_cb(ptr nocapture noundef writeonly %0, i32 %1) #2 !PGOFuncName !146 {
  %3 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 1
  store i8 0, ptr %3, align 4, !tbaa !145
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
define internal void @border_select_cb(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) #0 !PGOFuncName !147 {
  %7 = sitofp i32 %4 to float
  %8 = tail call zeroext i8 @BLI_rctf_isect_pt(ptr noundef %0, float noundef %7, float noundef %5) #8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  %11 = icmp eq i32 %3, 0
  %12 = select i1 %11, i32 4, i32 8
  %13 = getelementptr inbounds %struct.BorderSelectuserData, ptr %0, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !69
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 5
  %18 = load i32, ptr %17, align 4, !tbaa !77
  %19 = or i32 %18, %12
  store i32 %19, ptr %17, align 4, !tbaa !77
  br label %25

20:                                               ; preds = %10
  %21 = xor i32 %12, -1
  %22 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 5
  %23 = load i32, ptr %22, align 4, !tbaa !77
  %24 = and i32 %23, %21
  store i32 %24, ptr %22, align 4, !tbaa !77
  br label %25

25:                                               ; preds = %20, %16
  %26 = getelementptr inbounds %struct.BorderSelectuserData, ptr %0, i64 0, i32 2
  store i8 1, ptr %26, align 4, !tbaa !66
  br label %35

27:                                               ; preds = %6
  %28 = getelementptr inbounds %struct.BorderSelectuserData, ptr %0, i64 0, i32 3
  %29 = load i8, ptr %28, align 1, !tbaa !70
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !77
  %34 = and i32 %33, -13
  store i32 %34, ptr %32, align 4, !tbaa !77
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
define internal void @view_all_cb(ptr nocapture noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, i32 %3, i32 %4, float noundef %5) #3 !PGOFuncName !148 {
  %7 = load float, ptr %0, align 4, !tbaa !84
  %8 = fcmp ogt float %7, %5
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store float %5, ptr %0, align 4, !tbaa !84
  br label %10

10:                                               ; preds = %9, %6
  %11 = getelementptr inbounds %struct.ViewAllUserData, ptr %0, i64 0, i32 1
  %12 = load float, ptr %11, align 4, !tbaa !86
  %13 = fcmp olt float %12, %5
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store float %5, ptr %11, align 4, !tbaa !86
  br label %15

15:                                               ; preds = %14, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !149 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !150
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !151
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
!34 = !{!35, !36, i64 0}
!35 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !41, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 24}
!43 = !{!35, !36, i64 8}
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 48}
!46 = !{!35, !36, i64 72}
!47 = !{!35, !41, i64 184}
!48 = !{!35, !36, i64 88}
!49 = !{!"clip_graph_ops.c:select_exec"}
!50 = !{!51, !36, i64 112}
!51 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!52 = !{!"clip_graph_ops.c:select_invoke"}
!53 = !{!54, !54, i64 0}
!54 = !{!"int", !37, i64 0}
!55 = !{!"clip_graph_ops.c:clip_graph_knots_poll"}
!56 = !{i32 0, i32 2}
!57 = !{!58, !54, i64 208}
!58 = !{!"SpaceClip", !36, i64 0, !36, i64 8, !39, i64 16, !54, i64 32, !59, i64 36, !59, i64 40, !59, i64 44, !59, i64 48, !59, i64 52, !60, i64 56, !36, i64 64, !61, i64 72, !54, i64 208, !41, i64 212, !41, i64 214, !54, i64 216, !37, i64 220, !59, i64 228, !59, i64 232, !54, i64 236, !37, i64 240, !37, i64 304, !54, i64 368, !41, i64 372, !41, i64 374, !54, i64 376, !54, i64 380, !37, i64 384, !63, i64 392}
!59 = !{!"float", !37, i64 0}
!60 = !{!"MovieClipUser", !54, i64 0, !41, i64 4, !41, i64 6}
!61 = !{!"MovieClipScopes", !41, i64 0, !41, i64 2, !54, i64 4, !54, i64 8, !54, i64 12, !62, i64 16, !36, i64 80, !36, i64 88, !37, i64 96, !41, i64 104, !41, i64 106, !54, i64 108, !36, i64 112, !36, i64 120, !37, i64 128}
!62 = !{!"MovieTrackingMarker", !37, i64 0, !37, i64 8, !37, i64 40, !37, i64 48, !54, i64 56, !54, i64 60}
!63 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!64 = !{!35, !36, i64 64}
!65 = !{!"clip_graph_ops.c:border_select_graph_exec"}
!66 = !{!67, !37, i64 20}
!67 = !{!"BorderSelectuserData", !68, i64 0, !54, i64 16, !37, i64 20, !37, i64 21}
!68 = !{!"rctf", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12}
!69 = !{!67, !54, i64 16}
!70 = !{!67, !37, i64 21}
!71 = !{!"clip_graph_ops.c:graph_select_all_markers_exec"}
!72 = !{!73, !54, i64 120}
!73 = !{!"MovieTrackingTrack", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !54, i64 120, !54, i64 124, !36, i64 128, !37, i64 136, !59, i64 148, !54, i64 152, !54, i64 156, !54, i64 160, !37, i64 164, !41, i64 176, !41, i64 178, !41, i64 180, !41, i64 182, !54, i64 184, !59, i64 188, !36, i64 192, !59, i64 200, !59, i64 204}
!74 = !{!73, !36, i64 128}
!75 = distinct !{!75, !76}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!62, !54, i64 60}
!78 = distinct !{!78, !76}
!79 = !{!"clip_graph_ops.c:delete_curve_exec"}
!80 = !{!"clip_graph_ops.c:delete_knot_exec"}
!81 = distinct !{!81, !76}
!82 = !{!"clip_graph_ops.c:view_all_exec"}
!83 = !{!59, !59, i64 0}
!84 = !{!85, !59, i64 0}
!85 = !{!"", !59, i64 0, !59, i64 4}
!86 = !{!85, !59, i64 4}
!87 = !{!88, !59, i64 24}
!88 = !{!"View2D", !68, i64 0, !68, i64 16, !89, i64 32, !89, i64 48, !89, i64 64, !37, i64 80, !37, i64 88, !59, i64 96, !59, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !54, i64 136, !54, i64 140, !36, i64 144, !36, i64 152}
!89 = !{!"rcti", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12}
!90 = !{!88, !59, i64 28}
!91 = !{!"clip_graph_ops.c:ED_space_clip_graph_poll"}
!92 = !{!58, !41, i64 214}
!93 = !{!94, !54, i64 680}
!94 = !{!"Scene", !95, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !54, i64 232, !54, i64 236, !54, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !96, i64 280, !103, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !54, i64 4380, !39, i64 4384, !104, i64 4400, !105, i64 4416, !108, i64 4600, !36, i64 4608, !109, i64 4616, !36, i64 4640, !110, i64 4648, !110, i64 4656, !98, i64 4664, !99, i64 4824, !111, i64 4888, !36, i64 4952}
!95 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !54, i64 100, !54, i64 104, !54, i64 108, !36, i64 112}
!96 = !{!"RenderData", !97, i64 0, !36, i64 248, !36, i64 256, !100, i64 264, !101, i64 328, !54, i64 400, !54, i64 404, !54, i64 408, !59, i64 412, !54, i64 416, !54, i64 420, !54, i64 424, !54, i64 428, !41, i64 432, !41, i64 434, !59, i64 436, !59, i64 440, !59, i64 444, !59, i64 448, !59, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !54, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !54, i64 484, !54, i64 488, !41, i64 492, !41, i64 494, !54, i64 496, !54, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !54, i64 516, !54, i64 520, !54, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !68, i64 544, !68, i64 560, !89, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !59, i64 612, !59, i64 616, !59, i64 620, !59, i64 624, !54, i64 628, !59, i64 632, !59, i64 636, !59, i64 640, !59, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !59, i64 660, !59, i64 664, !41, i64 668, !41, i64 670, !59, i64 672, !59, i64 676, !37, i64 680, !54, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !54, i64 2520, !41, i64 2524, !41, i64 2526, !59, i64 2528, !59, i64 2532, !41, i64 2536, !41, i64 2538, !59, i64 2540, !41, i64 2544, !41, i64 2546, !54, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !59, i64 2560, !59, i64 2564, !36, i64 2568, !54, i64 2576, !59, i64 2580, !37, i64 2584, !102, i64 2616, !54, i64 3976, !54, i64 3980}
!97 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !59, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !98, i64 24, !99, i64 184}
!98 = !{!"ColorManagedViewSettings", !54, i64 0, !54, i64 4, !37, i64 8, !37, i64 72, !59, i64 136, !59, i64 140, !36, i64 144, !36, i64 152}
!99 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!100 = !{!"QuicktimeCodecSettings", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !54, i64 28, !54, i64 32, !54, i64 36, !54, i64 40, !54, i64 44, !41, i64 48, !41, i64 50, !54, i64 52, !54, i64 56, !54, i64 60}
!101 = !{!"FFMpegCodecData", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !54, i64 28, !59, i64 32, !54, i64 36, !54, i64 40, !54, i64 44, !54, i64 48, !54, i64 52, !54, i64 56, !54, i64 60, !36, i64 64}
!102 = !{!"BakeData", !97, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !59, i64 1280, !59, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!103 = !{!"AudioData", !54, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !54, i64 16, !41, i64 20, !41, i64 22, !59, i64 24, !59, i64 28}
!104 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!105 = !{!"GameData", !104, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !106, i64 40, !41, i64 64, !41, i64 66, !59, i64 68, !107, i64 72, !59, i64 128, !59, i64 132, !54, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !59, i64 164, !59, i64 168, !59, i64 172, !59, i64 176, !59, i64 180}
!106 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !59, i64 8, !59, i64 12, !36, i64 16}
!107 = !{!"RecastData", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !59, i64 16, !59, i64 20, !59, i64 24, !59, i64 28, !59, i64 32, !59, i64 36, !54, i64 40, !59, i64 44, !59, i64 48, !41, i64 52, !41, i64 54}
!108 = !{!"UnitSettings", !59, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!109 = !{!"PhysicsSettings", !37, i64 0, !54, i64 12, !54, i64 16, !54, i64 20}
!110 = !{!"long", !37, i64 0}
!111 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!112 = !{!88, !59, i64 16}
!113 = !{!88, !59, i64 20}
!114 = !{!"clip_graph_ops.c:BLI_rctf_size_x"}
!115 = !{!68, !59, i64 4}
!116 = !{!68, !59, i64 0}
!117 = !{!"clip_graph_ops.c:center_current_frame_exec"}
!118 = !{!"clip_graph_ops.c:graph_disable_markers_exec"}
!119 = !{!73, !54, i64 152}
!120 = distinct !{!120, !76}
!121 = !{!"clip_graph_ops.c:mouse_select"}
!122 = !{i8 0, i8 2}
!123 = !{!"clip_graph_ops.c:mouse_select_knot"}
!124 = !{!125, !36, i64 48}
!125 = !{!"", !54, i64 0, !37, i64 4, !59, i64 8, !37, i64 12, !37, i64 20, !37, i64 28, !36, i64 40, !36, i64 48}
!126 = !{!125, !54, i64 0}
!127 = !{!"clip_graph_ops.c:mouse_select_curve"}
!128 = !{!125, !36, i64 40}
!129 = !{!130, !36, i64 232}
!130 = !{!"MovieTracking", !131, i64 0, !132, i64 72, !39, i64 128, !39, i64 144, !133, i64 160, !134, i64 184, !36, i64 232, !36, i64 240, !39, i64 248, !54, i64 264, !54, i64 268, !36, i64 272, !135, i64 280}
!131 = !{!"MovieTrackingSettings", !54, i64 0, !41, i64 4, !41, i64 6, !59, i64 8, !41, i64 12, !41, i64 14, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !59, i64 24, !41, i64 28, !41, i64 30, !54, i64 32, !54, i64 36, !54, i64 40, !41, i64 44, !41, i64 46, !59, i64 48, !54, i64 52, !54, i64 56, !59, i64 60, !59, i64 64, !54, i64 68}
!132 = !{!"MovieTrackingCamera", !36, i64 0, !41, i64 8, !41, i64 10, !59, i64 12, !59, i64 16, !59, i64 20, !41, i64 24, !41, i64 26, !37, i64 28, !59, i64 36, !59, i64 40, !59, i64 44, !59, i64 48, !59, i64 52}
!133 = !{!"MovieTrackingReconstruction", !54, i64 0, !59, i64 4, !54, i64 8, !54, i64 12, !36, i64 16}
!134 = !{!"MovieTrackingStabilization", !54, i64 0, !54, i64 4, !54, i64 8, !59, i64 12, !36, i64 16, !59, i64 24, !59, i64 28, !59, i64 32, !54, i64 36, !54, i64 40, !59, i64 44}
!135 = !{!"MovieTrackingDopesheet", !54, i64 0, !41, i64 4, !41, i64 6, !39, i64 8, !39, i64 24, !54, i64 40, !54, i64 44}
!136 = !{!"clip_graph_ops.c:mouse_select_init_data"}
!137 = !{!125, !59, i64 8}
!138 = !{!"clip_graph_ops.c:find_nearest_tracking_knot_cb"}
!139 = !{!"clip_graph_ops.c:toggle_selection_cb"}
!140 = !{!141, !54, i64 0}
!141 = !{!"", !54, i64 0}
!142 = !{!"clip_graph_ops.c:copy_v2_v2"}
!143 = !{!"clip_graph_ops.c:len_squared_v2"}
!144 = !{!"clip_graph_ops.c:find_nearest_tracking_segment_cb"}
!145 = !{!125, !37, i64 4}
!146 = !{!"clip_graph_ops.c:find_nearest_tracking_segment_end_cb"}
!147 = !{!"clip_graph_ops.c:border_select_cb"}
!148 = !{!"clip_graph_ops.c:view_all_cb"}
!149 = !{!"clip_graph_ops.c:BLI_rctf_size_y"}
!150 = !{!68, !59, i64 12}
!151 = !{!68, !59, i64 8}
