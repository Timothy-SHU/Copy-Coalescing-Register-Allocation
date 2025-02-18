; ModuleID = 'blender/source/blender/editors/space_clip/clip_graph_ops.c'
source_filename = "blender/source/blender/editors/space_clip/clip_graph_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.MouseSelectUserData = type { i32, i8, float, [2 x float], [2 x float], [2 x float], ptr, ptr }
%struct.SelectUserData = type { i32 }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
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
%struct.SpaceClip = type { ptr, ptr, %struct.ListBase, i32, float, float, float, float, float, %struct.MovieClipUser, ptr, %struct.MovieClipScopes, i32, i16, i16, i32, [2 x float], float, float, i32, [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i32, i32, [2 x float], %struct.MaskSpaceInfo }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.MovieClipScopes = type { i16, i16, i32, i32, i32, %struct.MovieTrackingMarker, ptr, ptr, [2 x float], i16, i16, i32, ptr, ptr, [2 x float] }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.BorderSelectuserData = type { %struct.rctf, i32, i8, i8 }
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

; Function Attrs: nounwind uwtable
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
  %10 = tail call ptr @RNA_def_float_vector(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, float noundef -1.000000e+02, float noundef 1.000000e+02) #7
  %11 = load ptr, ptr %8, align 8, !tbaa !48
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @select_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.MouseSelectUserData, align 8
  %4 = alloca %struct.SelectUserData, align 4
  %5 = alloca %struct.MouseSelectUserData, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.SelectUserData, align 4
  %11 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #7
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  %14 = tail call i32 @RNA_boolean_get(ptr noundef %13, ptr noundef nonnull @.str.6) #7
  %15 = trunc i32 %14 to i8
  %16 = load ptr, ptr %12, align 8, !tbaa !49
  call void @RNA_float_get_array(ptr noundef %16, ptr noundef nonnull @.str.3, ptr noundef nonnull %11) #7
  %17 = call ptr @CTX_wm_space_clip(ptr noundef %0) #7
  %18 = call ptr @ED_space_clip_get_clip(ptr noundef %17) #7
  %19 = call ptr @CTX_wm_region(ptr noundef %0) #7
  %20 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 2
  %21 = getelementptr inbounds %struct.MovieClip, ptr %18, i64 0, i32 11
  %22 = call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %21) #7
  %23 = icmp eq ptr %22, null
  br i1 %23, label %79, label %24

24:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %25 = getelementptr inbounds %struct.MouseSelectUserData, ptr %5, i64 0, i32 2
  store float 0x47EFFFFFE0000000, ptr %25, align 8, !tbaa !51
  %26 = getelementptr inbounds %struct.MouseSelectUserData, ptr %5, i64 0, i32 3
  %27 = load float, ptr %11, align 4, !tbaa !55
  store float %27, ptr %26, align 4, !tbaa !55
  %28 = getelementptr inbounds float, ptr %11, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !55
  %30 = getelementptr inbounds %struct.MouseSelectUserData, ptr %5, i64 0, i32 3, i64 1
  store float %29, ptr %30, align 8, !tbaa !55
  call void @clip_graph_tracking_values_iterate_track(ptr noundef %17, ptr noundef nonnull %22, ptr noundef nonnull %5, ptr noundef nonnull @find_nearest_tracking_knot_cb, ptr noundef null, ptr noundef null) #7
  %31 = getelementptr inbounds %struct.MouseSelectUserData, ptr %5, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !56
  %33 = icmp eq ptr %32, null
  br i1 %33, label %78, label %34

34:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  %35 = load float, ptr %11, align 4, !tbaa !55
  %36 = load float, ptr %28, align 4, !tbaa !55
  %37 = call zeroext i8 @UI_view2d_view_to_region_clip(ptr noundef nonnull %20, float noundef %35, float noundef %36, ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %77, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.MouseSelectUserData, ptr %5, i64 0, i32 5
  %41 = load float, ptr %40, align 4, !tbaa !55
  %42 = getelementptr inbounds %struct.MouseSelectUserData, ptr %5, i64 0, i32 5, i64 1
  %43 = load float, ptr %42, align 8, !tbaa !55
  %44 = call zeroext i8 @UI_view2d_view_to_region_clip(ptr noundef nonnull %20, float noundef %41, float noundef %43, ptr noundef nonnull %8, ptr noundef nonnull %9) #7
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %77, label %46

46:                                               ; preds = %39
  %47 = load i32, ptr %8, align 4, !tbaa !57
  %48 = load i32, ptr %6, align 4, !tbaa !57
  %49 = sub nsw i32 %47, %48
  %50 = call i32 @llvm.abs.i32(i32 %49, i1 true)
  %51 = icmp ult i32 %50, 7
  br i1 %51, label %52, label %77

52:                                               ; preds = %46
  %53 = load i32, ptr %9, align 4, !tbaa !57
  %54 = load i32, ptr %7, align 4, !tbaa !57
  %55 = sub nsw i32 %53, %54
  %56 = call i32 @llvm.abs.i32(i32 %55, i1 true)
  %57 = icmp ult i32 %56, 7
  br i1 %57, label %58, label %77

58:                                               ; preds = %52
  %59 = icmp eq i8 %15, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #7
  store i32 2, ptr %10, align 4
  %61 = getelementptr inbounds %struct.SpaceClip, ptr %17, i64 0, i32 12
  %62 = load i32, ptr %61, align 8, !tbaa !58
  %63 = lshr i32 %62, 19
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  %66 = lshr i32 %62, 20
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 1
  call void @clip_graph_tracking_iterate(ptr noundef %17, i8 noundef zeroext %65, i8 noundef zeroext %68, ptr noundef nonnull %10, ptr noundef nonnull @toggle_selection_cb) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #7
  br label %69

69:                                               ; preds = %60, %58
  %70 = load i32, ptr %5, align 8, !tbaa !64
  %71 = icmp eq i32 %70, 0
  %72 = load ptr, ptr %31, align 8, !tbaa !56
  %73 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %72, i64 0, i32 5
  %74 = load i32, ptr %73, align 4, !tbaa !65
  %75 = select i1 %71, i32 4, i32 8
  %76 = or i32 %74, %75
  store i32 %76, ptr %73, align 4, !tbaa !65
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #7
  br label %118

77:                                               ; preds = %52, %46, %39, %34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  br label %78

78:                                               ; preds = %77, %24
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #7
  br label %79

79:                                               ; preds = %2, %78
  %80 = call ptr @CTX_wm_space_clip(ptr noundef %0) #7
  %81 = call ptr @ED_space_clip_get_clip(ptr noundef %80) #7
  %82 = getelementptr inbounds %struct.MovieClip, ptr %81, i64 0, i32 11
  %83 = call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %82) #7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %84 = getelementptr inbounds %struct.MouseSelectUserData, ptr %3, i64 0, i32 2
  store float 0x47EFFFFFE0000000, ptr %84, align 8, !tbaa !51
  %85 = getelementptr inbounds %struct.MouseSelectUserData, ptr %3, i64 0, i32 3
  %86 = load float, ptr %11, align 4, !tbaa !55
  store float %86, ptr %85, align 4, !tbaa !55
  %87 = getelementptr inbounds float, ptr %11, i64 1
  %88 = load float, ptr %87, align 4, !tbaa !55
  %89 = getelementptr inbounds %struct.MouseSelectUserData, ptr %3, i64 0, i32 3, i64 1
  store float %88, ptr %89, align 8, !tbaa !55
  %90 = getelementptr inbounds %struct.SpaceClip, ptr %80, i64 0, i32 12
  %91 = load i32, ptr %90, align 8, !tbaa !58
  %92 = lshr i32 %91, 19
  %93 = trunc i32 %92 to i8
  %94 = and i8 %93, 1
  %95 = lshr i32 %91, 20
  %96 = trunc i32 %95 to i8
  %97 = and i8 %96, 1
  call void @clip_graph_tracking_values_iterate(ptr noundef %80, i8 noundef zeroext %94, i8 noundef zeroext %97, ptr noundef nonnull %3, ptr noundef nonnull @find_nearest_tracking_segment_cb, ptr noundef null, ptr noundef nonnull @find_nearest_tracking_segment_end_cb) #7
  %98 = getelementptr inbounds %struct.MouseSelectUserData, ptr %3, i64 0, i32 6
  %99 = load ptr, ptr %98, align 8, !tbaa !66
  %100 = icmp eq ptr %99, null
  br i1 %100, label %119, label %101

101:                                              ; preds = %79
  %102 = icmp ne i8 %15, 0
  %103 = icmp eq ptr %83, %99
  %104 = select i1 %102, i1 true, i1 %103
  br i1 %104, label %117, label %105

105:                                              ; preds = %101
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 2, ptr %4, align 4
  %106 = call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %82) #7
  %107 = call ptr @BKE_tracking_object_get_tracks(ptr noundef nonnull %82, ptr noundef %106) #7
  %108 = load ptr, ptr %98, align 8, !tbaa !66
  %109 = getelementptr inbounds %struct.MovieClip, ptr %81, i64 0, i32 11, i32 6
  store ptr %108, ptr %109, align 8, !tbaa !67
  call void @BKE_tracking_track_select(ptr noundef %107, ptr noundef %108, i32 noundef 7, i8 noundef zeroext 1) #7
  %110 = load i32, ptr %90, align 8, !tbaa !58
  %111 = lshr i32 %110, 19
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  %114 = lshr i32 %110, 20
  %115 = trunc i32 %114 to i8
  %116 = and i8 %115, 1
  call void @clip_graph_tracking_iterate(ptr noundef %80, i8 noundef zeroext %113, i8 noundef zeroext %116, ptr noundef nonnull %4, ptr noundef nonnull @toggle_selection_cb) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br label %117

117:                                              ; preds = %105, %101
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #7
  br label %118

118:                                              ; preds = %117, %69
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef null) #7
  br label %120

119:                                              ; preds = %79
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #7
  br label %120

120:                                              ; preds = %119, %118
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #7
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @select_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  %6 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !57
  %9 = sitofp i32 %8 to float
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !57
  %12 = sitofp i32 %11 to float
  %13 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %6, float noundef %9, float noundef %12, ptr noundef nonnull %4, ptr noundef nonnull %13) #7
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !49
  call void @RNA_float_set_array(ptr noundef %15, ptr noundef nonnull @.str.3, ptr noundef nonnull %4) #7
  %16 = call i32 @select_exec(ptr noundef %0, ptr noundef %1)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal i32 @clip_graph_knots_poll(ptr noundef %0) #0 {
  %2 = tail call i32 @ED_space_clip_tracking_poll(ptr noundef %0) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %5, i64 0, i32 14
  %7 = load i16, ptr %6, align 2, !tbaa !74
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #7
  %11 = getelementptr inbounds %struct.SpaceClip, ptr %10, i64 0, i32 12
  %12 = load i32, ptr %11, align 8, !tbaa !58
  %13 = lshr i32 %12, 15
  %14 = and i32 %13, 1
  br label %15

15:                                               ; preds = %1, %4, %9
  %16 = phi i32 [ %14, %9 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %16
}

declare ptr @RNA_def_float_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
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
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @clip_graph_knots_poll, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %8, align 8, !tbaa !47
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 1) #7
  ret void
}

declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @border_select_graph_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BorderSelectuserData, align 4
  %4 = alloca %struct.rctf, align 4
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #7
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %7 = tail call ptr @ED_space_clip_get_clip(ptr noundef %5) #7
  %8 = getelementptr inbounds %struct.MovieClip, ptr %7, i64 0, i32 11
  %9 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %2
  call void @WM_operator_properties_border_to_rctf(ptr noundef %1, ptr noundef nonnull %4) #7
  %12 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2
  call void @UI_view2d_region_to_view_rctf(ptr noundef nonnull %12, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %13 = getelementptr inbounds %struct.BorderSelectuserData, ptr %3, i64 0, i32 2
  store i8 0, ptr %13, align 4, !tbaa !76
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !49
  %16 = call i32 @RNA_int_get(ptr noundef %15, ptr noundef nonnull @.str.42) #7
  %17 = getelementptr inbounds %struct.BorderSelectuserData, ptr %3, i64 0, i32 1
  store i32 %16, ptr %17, align 4, !tbaa !79
  %18 = load ptr, ptr %14, align 8, !tbaa !49
  %19 = call i32 @RNA_boolean_get(ptr noundef %18, ptr noundef nonnull @.str.6) #7
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.BorderSelectuserData, ptr %3, i64 0, i32 3
  store i8 %20, ptr %21, align 1, !tbaa !80
  call void @clip_graph_tracking_values_iterate_track(ptr noundef %5, ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef nonnull @border_select_cb, ptr noundef null, ptr noundef null) #7
  %22 = load i8, ptr %13, align 4, !tbaa !76
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %11
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef null) #7
  br label %25

25:                                               ; preds = %11, %2, %24
  %26 = phi i32 [ 4, %24 ], [ 2, %2 ], [ 2, %11 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  ret i32 %26
}

declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #1

declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
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
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graph_select_all_markers_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #7
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #7
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %5) #7
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.39) #7
  %10 = icmp eq ptr %6, null
  br i1 %10, label %57, label %11

11:                                               ; preds = %2
  %12 = icmp eq i32 %9, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %6, i64 0, i32 8
  %15 = load i32, ptr %14, align 8, !tbaa !81
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %6, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !83
  %20 = zext nneg i32 %15 to i64
  br label %24

21:                                               ; preds = %24
  %22 = add nuw nsw i64 %25, 1
  %23 = icmp eq i64 %22, %20
  br i1 %23, label %30, label %24, !llvm.loop !84

24:                                               ; preds = %17, %21
  %25 = phi i64 [ 0, %17 ], [ %22, %21 ]
  %26 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %19, i64 %25, i32 5
  %27 = load i32, ptr %26, align 4, !tbaa !65
  %28 = and i32 %27, 12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %21, label %30

30:                                               ; preds = %21, %24, %13, %11
  %31 = phi i32 [ %9, %11 ], [ 1, %13 ], [ 2, %24 ], [ 1, %21 ]
  %32 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %6, i64 0, i32 8
  %33 = load i32, ptr %32, align 8, !tbaa !81
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %6, i64 0, i32 10
  %37 = load ptr, ptr %36, align 8, !tbaa !83
  %38 = zext nneg i32 %33 to i64
  br label %39

39:                                               ; preds = %35, %53
  %40 = phi i64 [ 0, %35 ], [ %54, %53 ]
  switch i32 %31, label %53 [
    i32 1, label %41
    i32 2, label %45
    i32 3, label %49
  ]

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %37, i64 %40, i32 5
  %43 = load i32, ptr %42, align 4, !tbaa !65
  %44 = or i32 %43, 12
  store i32 %44, ptr %42, align 4, !tbaa !65
  br label %53

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %37, i64 %40, i32 5
  %47 = load i32, ptr %46, align 4, !tbaa !65
  %48 = and i32 %47, -13
  store i32 %48, ptr %46, align 4, !tbaa !65
  br label %53

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %37, i64 %40, i32 5
  %51 = load i32, ptr %50, align 4, !tbaa !65
  %52 = xor i32 %51, 12
  store i32 %52, ptr %50, align 4, !tbaa !65
  br label %53

53:                                               ; preds = %41, %45, %49, %39
  %54 = add nuw nsw i64 %40, 1
  %55 = icmp eq i64 %54, %38
  br i1 %55, label %56, label %39, !llvm.loop !87

56:                                               ; preds = %53, %30
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef null) #7
  br label %57

57:                                               ; preds = %2, %56
  %58 = phi i32 [ 4, %56 ], [ 2, %2 ]
  ret i32 %58
}

declare void @WM_operator_properties_select_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
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

declare i32 @WM_operator_confirm(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @delete_curve_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #7
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #7
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %5) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @clip_delete_track(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %6) #7
  br label %9

9:                                                ; preds = %2, %8
  %10 = phi i32 [ 4, %8 ], [ 2, %2 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
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

; Function Attrs: nounwind uwtable
define internal noundef i32 @delete_knot_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #7
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #7
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %5) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %6, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !81
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %6, i64 0, i32 10
  br label %14

14:                                               ; preds = %12, %26
  %15 = phi i32 [ 0, %12 ], [ %27, %26 ]
  %16 = load ptr, ptr %13, align 8, !tbaa !83
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %16, i64 %17, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !65
  %20 = and i32 %19, 12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %16, i64 %17
  tail call void @clip_delete_marker(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %6, ptr noundef %23) #7
  br label %26

24:                                               ; preds = %14
  %25 = add nsw i32 %15, 1
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %15, %22 ], [ %25, %24 ]
  %28 = load i32, ptr %9, align 8, !tbaa !81
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %14, label %30, !llvm.loop !88

30:                                               ; preds = %26, %8, %2
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
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

; Function Attrs: nounwind uwtable
define internal noundef i32 @view_all_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ViewAllUserData, align 4
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %6 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %7 = getelementptr inbounds %struct.ViewAllUserData, ptr %3, i64 0, i32 1
  store float 0xC7EFFFFFE0000000, ptr %7, align 4, !tbaa !89
  store float 0x47EFFFFFE0000000, ptr %3, align 4, !tbaa !91
  %8 = getelementptr inbounds %struct.SpaceClip, ptr %6, i64 0, i32 12
  %9 = load i32, ptr %8, align 8, !tbaa !58
  %10 = lshr i32 %9, 19
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = lshr i32 %9, 20
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  call void @clip_graph_tracking_values_iterate(ptr noundef %6, i8 noundef zeroext %12, i8 noundef zeroext %15, ptr noundef nonnull %3, ptr noundef nonnull @view_all_cb, ptr noundef null, ptr noundef null) #7
  %16 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 6
  %17 = load i32, ptr %16, align 4, !tbaa !92
  %18 = sitofp i32 %17 to float
  %19 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 1
  store float %18, ptr %19, align 8, !tbaa !112
  %20 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !114
  %22 = sitofp i32 %21 to float
  %23 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 1, i32 1
  store float %22, ptr %23, align 4, !tbaa !115
  %24 = load float, ptr %3, align 4, !tbaa !91
  %25 = load float, ptr %7, align 4, !tbaa !89
  %26 = fcmp olt float %24, %25
  %27 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 1, i32 2
  %28 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 1, i32 3
  %29 = select i1 %26, float %24, float -1.000000e+01
  %30 = select i1 %26, float %25, float 1.000000e+01
  store float %29, ptr %27, align 8, !tbaa !116
  store float %30, ptr %28, align 4, !tbaa !117
  %31 = fsub float %22, %18
  %32 = fmul float %31, 0x3F847AE140000000
  %33 = fsub float %18, %32
  store float %33, ptr %19, align 8, !tbaa !112
  %34 = fadd float %32, %22
  store float %34, ptr %23, align 4, !tbaa !115
  %35 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 1, i32 3
  %36 = load float, ptr %35, align 4, !tbaa !118
  %37 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 1, i32 2
  %38 = load float, ptr %37, align 4, !tbaa !119
  %39 = fsub float %36, %38
  %40 = fmul float %39, 0x3F847AE140000000
  %41 = fsub float %38, %40
  store float %41, ptr %37, align 8, !tbaa !116
  %42 = fadd float %36, %40
  store float %42, ptr %35, align 4, !tbaa !117
  call void @ED_region_tag_redraw(ptr noundef %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal i32 @ED_space_clip_graph_poll(ptr noundef %0) #0 {
  %2 = tail call i32 @ED_space_clip_tracking_poll(ptr noundef %0) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %5, i64 0, i32 14
  %7 = load i16, ptr %6, align 2, !tbaa !74
  %8 = icmp eq i16 %7, 1
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ED_clip_graph_center_current_frame(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  %5 = load float, ptr %4, align 4, !tbaa !120
  %6 = load float, ptr %3, align 4, !tbaa !121
  %7 = fsub float %5, %6
  %8 = fmul float %7, 5.000000e-01
  %9 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !122
  %11 = sitofp i32 %10 to float
  %12 = fsub float %11, %8
  store float %12, ptr %3, align 8, !tbaa !112
  %13 = fadd float %8, %11
  store float %13, ptr %4, align 4, !tbaa !115
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
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

; Function Attrs: nounwind uwtable
define internal noundef i32 @center_current_frame_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1
  %6 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1, i32 1
  %7 = load float, ptr %6, align 4, !tbaa !120
  %8 = load float, ptr %5, align 4, !tbaa !121
  %9 = fsub float %7, %8
  %10 = fmul float %9, 5.000000e-01
  %11 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !122
  %13 = sitofp i32 %12 to float
  %14 = fsub float %13, %10
  store float %14, ptr %5, align 8, !tbaa !112
  %15 = fadd float %10, %13
  store float %15, ptr %6, align 4, !tbaa !115
  tail call void @ED_region_tag_redraw(ptr noundef %4) #7
  ret i32 4
}

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.39, ptr noundef nonnull @CLIP_OT_graph_disable_markers.actions_items, i32 noundef 0, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @graph_disable_markers_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #7
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #7
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %5) #7
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.39) #7
  %10 = icmp eq ptr %6, null
  br i1 %10, label %43, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %6, i64 0, i32 13
  %13 = load i32, ptr %12, align 8, !tbaa !123
  %14 = and i32 %13, 64
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %6, i64 0, i32 8
  %18 = load i32, ptr %17, align 8, !tbaa !81
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %6, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !83
  %23 = zext nneg i32 %18 to i64
  br label %24

24:                                               ; preds = %20, %39
  %25 = phi i64 [ 0, %20 ], [ %40, %39 ]
  %26 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %22, i64 %25, i32 5
  %27 = load i32, ptr %26, align 4, !tbaa !65
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
  store i32 %38, ptr %26, align 4, !tbaa !65
  br label %39

39:                                               ; preds = %37, %24
  %40 = add nuw nsw i64 %25, 1
  %41 = icmp eq i64 %40, %23
  br i1 %41, label %42, label %24, !llvm.loop !124

42:                                               ; preds = %39, %16
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 0) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544322, ptr noundef %4) #7
  br label %43

43:                                               ; preds = %2, %11, %42
  %44 = phi i32 [ 4, %42 ], [ 2, %11 ], [ 2, %2 ]
  ret i32 %44
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_space_clip(ptr noundef) local_unnamed_addr #1

declare ptr @ED_space_clip_get_clip(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_tracking_track_get_active(ptr noundef) local_unnamed_addr #1

declare void @clip_graph_tracking_values_iterate_track(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @find_nearest_tracking_knot_cb(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) #3 {
  %7 = sitofp i32 %4 to float
  %8 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 3
  %9 = load float, ptr %8, align 4, !tbaa !55
  %10 = fsub float %7, %9
  %11 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 3, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !55
  %13 = fsub float %5, %12
  %14 = fmul float %13, %13
  %15 = tail call float @llvm.fmuladd.f32(float %10, float %10, float %14)
  %16 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !56
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 2
  %21 = load float, ptr %20, align 8, !tbaa !51
  %22 = fcmp olt float %15, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19, %6
  %24 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 6
  store ptr %1, ptr %24, align 8, !tbaa !66
  store ptr %2, ptr %16, align 8, !tbaa !56
  %25 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 2
  store float %15, ptr %25, align 8, !tbaa !51
  store i32 %3, ptr %0, align 8, !tbaa !64
  %26 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 5
  store float %7, ptr %26, align 4, !tbaa !55
  %27 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 5, i64 1
  store float %5, ptr %27, align 4, !tbaa !55
  br label %28

28:                                               ; preds = %23, %19
  ret void
}

declare zeroext i8 @UI_view2d_view_to_region_clip(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

declare void @clip_graph_tracking_iterate(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @toggle_selection_cb(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #3 {
  %3 = load i32, ptr %0, align 4, !tbaa !125
  switch i32 %3, label %16 [
    i32 1, label %4
    i32 2, label %8
    i32 3, label %12
  ]

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !65
  %7 = or i32 %6, 12
  store i32 %7, ptr %5, align 4, !tbaa !65
  br label %16

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %1, i64 0, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !65
  %11 = and i32 %10, -13
  store i32 %11, ptr %9, align 4, !tbaa !65
  br label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %1, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !65
  %15 = xor i32 %14, 12
  store i32 %15, ptr %13, align 4, !tbaa !65
  br label %16

16:                                               ; preds = %2, %12, %8, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare void @clip_graph_tracking_values_iterate(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @find_nearest_tracking_segment_cb(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, i32 noundef %3, i32 noundef %4, float noundef %5) #0 {
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  %8 = sitofp i32 %4 to float
  store float %8, ptr %7, align 4, !tbaa !55
  %9 = getelementptr inbounds float, ptr %7, i64 1
  store float %5, ptr %9, align 4, !tbaa !55
  %10 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 1
  %11 = load i8, ptr %10, align 4, !tbaa !127
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 3
  %15 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 4
  %16 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %7) #7
  %17 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !66
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 2
  %22 = load float, ptr %21, align 8, !tbaa !51
  %23 = fcmp olt float %16, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20, %13
  store ptr %1, ptr %17, align 8, !tbaa !66
  %25 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 2
  store float %16, ptr %25, align 8, !tbaa !51
  store i32 %3, ptr %0, align 8, !tbaa !64
  %26 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 5
  %27 = load float, ptr %7, align 4, !tbaa !55
  store float %27, ptr %26, align 4, !tbaa !55
  %28 = load float, ptr %9, align 4, !tbaa !55
  %29 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 5, i64 1
  store float %28, ptr %29, align 4, !tbaa !55
  br label %30

30:                                               ; preds = %20, %24, %6
  store i8 1, ptr %10, align 4, !tbaa !127
  %31 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 4
  %32 = load float, ptr %7, align 4, !tbaa !55
  store float %32, ptr %31, align 4, !tbaa !55
  %33 = load float, ptr %9, align 4, !tbaa !55
  %34 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 4, i64 1
  store float %33, ptr %34, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @find_nearest_tracking_segment_end_cb(ptr nocapture noundef writeonly %0, i32 %1) #2 {
  %3 = getelementptr inbounds %struct.MouseSelectUserData, ptr %0, i64 0, i32 1
  store i8 0, ptr %3, align 4, !tbaa !127
  ret void
}

declare ptr @BKE_tracking_object_get_active(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_tracking_object_get_tracks(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_tracking_track_select(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

declare float @dist_squared_to_line_segment_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_operator_properties_border_to_rctf(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @UI_view2d_region_to_view_rctf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @border_select_cb(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) #0 {
  %7 = sitofp i32 %4 to float
  %8 = tail call zeroext i8 @BLI_rctf_isect_pt(ptr noundef %0, float noundef %7, float noundef %5) #7
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  %11 = icmp eq i32 %3, 0
  %12 = select i1 %11, i32 4, i32 8
  %13 = getelementptr inbounds %struct.BorderSelectuserData, ptr %0, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !79
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 5
  %18 = load i32, ptr %17, align 4, !tbaa !65
  %19 = or i32 %18, %12
  store i32 %19, ptr %17, align 4, !tbaa !65
  br label %25

20:                                               ; preds = %10
  %21 = xor i32 %12, -1
  %22 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 5
  %23 = load i32, ptr %22, align 4, !tbaa !65
  %24 = and i32 %23, %21
  store i32 %24, ptr %22, align 4, !tbaa !65
  br label %25

25:                                               ; preds = %20, %16
  %26 = getelementptr inbounds %struct.BorderSelectuserData, ptr %0, i64 0, i32 2
  store i8 1, ptr %26, align 4, !tbaa !76
  br label %35

27:                                               ; preds = %6
  %28 = getelementptr inbounds %struct.BorderSelectuserData, ptr %0, i64 0, i32 3
  %29 = load i8, ptr %28, align 1, !tbaa !80
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !65
  %34 = and i32 %33, -13
  store i32 %34, ptr %32, align 4, !tbaa !65
  br label %35

35:                                               ; preds = %27, %31, %25
  ret void
}

declare zeroext i8 @BLI_rctf_isect_pt(ptr noundef, float noundef, float noundef) local_unnamed_addr #1

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @clip_delete_track(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @clip_delete_marker(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @view_all_cb(ptr nocapture noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, i32 %3, i32 %4, float noundef %5) #3 {
  %7 = load float, ptr %0, align 4, !tbaa !91
  %8 = fcmp ogt float %7, %5
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store float %5, ptr %0, align 4, !tbaa !91
  br label %10

10:                                               ; preds = %9, %6
  %11 = getelementptr inbounds %struct.ViewAllUserData, ptr %0, i64 0, i32 1
  %12 = load float, ptr %11, align 4, !tbaa !89
  %13 = fcmp olt float %12, %5
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store float %5, ptr %11, align 4, !tbaa !89
  br label %15

15:                                               ; preds = %14, %10
  ret void
}

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #1

declare i32 @ED_space_clip_tracking_poll(ptr noundef) local_unnamed_addr #1

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

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
!42 = !{!35, !36, i64 24}
!43 = !{!35, !36, i64 8}
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 48}
!46 = !{!35, !36, i64 72}
!47 = !{!35, !41, i64 184}
!48 = !{!35, !36, i64 88}
!49 = !{!50, !36, i64 112}
!50 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!51 = !{!52, !54, i64 8}
!52 = !{!"", !53, i64 0, !37, i64 4, !54, i64 8, !37, i64 12, !37, i64 20, !37, i64 28, !36, i64 40, !36, i64 48}
!53 = !{!"int", !37, i64 0}
!54 = !{!"float", !37, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!52, !36, i64 48}
!57 = !{!53, !53, i64 0}
!58 = !{!59, !53, i64 208}
!59 = !{!"SpaceClip", !36, i64 0, !36, i64 8, !39, i64 16, !53, i64 32, !54, i64 36, !54, i64 40, !54, i64 44, !54, i64 48, !54, i64 52, !60, i64 56, !36, i64 64, !61, i64 72, !53, i64 208, !41, i64 212, !41, i64 214, !53, i64 216, !37, i64 220, !54, i64 228, !54, i64 232, !53, i64 236, !37, i64 240, !37, i64 304, !53, i64 368, !41, i64 372, !41, i64 374, !53, i64 376, !53, i64 380, !37, i64 384, !63, i64 392}
!60 = !{!"MovieClipUser", !53, i64 0, !41, i64 4, !41, i64 6}
!61 = !{!"MovieClipScopes", !41, i64 0, !41, i64 2, !53, i64 4, !53, i64 8, !53, i64 12, !62, i64 16, !36, i64 80, !36, i64 88, !37, i64 96, !41, i64 104, !41, i64 106, !53, i64 108, !36, i64 112, !36, i64 120, !37, i64 128}
!62 = !{!"MovieTrackingMarker", !37, i64 0, !37, i64 8, !37, i64 40, !37, i64 48, !53, i64 56, !53, i64 60}
!63 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!64 = !{!52, !53, i64 0}
!65 = !{!62, !53, i64 60}
!66 = !{!52, !36, i64 40}
!67 = !{!68, !36, i64 232}
!68 = !{!"MovieTracking", !69, i64 0, !70, i64 72, !39, i64 128, !39, i64 144, !71, i64 160, !72, i64 184, !36, i64 232, !36, i64 240, !39, i64 248, !53, i64 264, !53, i64 268, !36, i64 272, !73, i64 280}
!69 = !{!"MovieTrackingSettings", !53, i64 0, !41, i64 4, !41, i64 6, !54, i64 8, !41, i64 12, !41, i64 14, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !54, i64 24, !41, i64 28, !41, i64 30, !53, i64 32, !53, i64 36, !53, i64 40, !41, i64 44, !41, i64 46, !54, i64 48, !53, i64 52, !53, i64 56, !54, i64 60, !54, i64 64, !53, i64 68}
!70 = !{!"MovieTrackingCamera", !36, i64 0, !41, i64 8, !41, i64 10, !54, i64 12, !54, i64 16, !54, i64 20, !41, i64 24, !41, i64 26, !37, i64 28, !54, i64 36, !54, i64 40, !54, i64 44, !54, i64 48, !54, i64 52}
!71 = !{!"MovieTrackingReconstruction", !53, i64 0, !54, i64 4, !53, i64 8, !53, i64 12, !36, i64 16}
!72 = !{!"MovieTrackingStabilization", !53, i64 0, !53, i64 4, !53, i64 8, !54, i64 12, !36, i64 16, !54, i64 24, !54, i64 28, !54, i64 32, !53, i64 36, !53, i64 40, !54, i64 44}
!73 = !{!"MovieTrackingDopesheet", !53, i64 0, !41, i64 4, !41, i64 6, !39, i64 8, !39, i64 24, !53, i64 40, !53, i64 44}
!74 = !{!59, !41, i64 214}
!75 = !{!35, !36, i64 64}
!76 = !{!77, !37, i64 20}
!77 = !{!"BorderSelectuserData", !78, i64 0, !53, i64 16, !37, i64 20, !37, i64 21}
!78 = !{!"rctf", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12}
!79 = !{!77, !53, i64 16}
!80 = !{!77, !37, i64 21}
!81 = !{!82, !53, i64 120}
!82 = !{!"MovieTrackingTrack", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !53, i64 120, !53, i64 124, !36, i64 128, !37, i64 136, !54, i64 148, !53, i64 152, !53, i64 156, !53, i64 160, !37, i64 164, !41, i64 176, !41, i64 178, !41, i64 180, !41, i64 182, !53, i64 184, !54, i64 188, !36, i64 192, !54, i64 200, !54, i64 204}
!83 = !{!82, !36, i64 128}
!84 = distinct !{!84, !85, !86}
!85 = !{!"llvm.loop.mustprogress"}
!86 = !{!"llvm.loop.unroll.disable"}
!87 = distinct !{!87, !85, !86}
!88 = distinct !{!88, !85, !86}
!89 = !{!90, !54, i64 4}
!90 = !{!"", !54, i64 0, !54, i64 4}
!91 = !{!90, !54, i64 0}
!92 = !{!93, !53, i64 684}
!93 = !{!"Scene", !94, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !53, i64 232, !53, i64 236, !53, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !95, i64 280, !103, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !53, i64 4380, !39, i64 4384, !104, i64 4400, !105, i64 4416, !108, i64 4600, !36, i64 4608, !109, i64 4616, !36, i64 4640, !110, i64 4648, !110, i64 4656, !97, i64 4664, !98, i64 4824, !111, i64 4888, !36, i64 4952}
!94 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !53, i64 100, !53, i64 104, !53, i64 108, !36, i64 112}
!95 = !{!"RenderData", !96, i64 0, !36, i64 248, !36, i64 256, !99, i64 264, !100, i64 328, !53, i64 400, !53, i64 404, !53, i64 408, !54, i64 412, !53, i64 416, !53, i64 420, !53, i64 424, !53, i64 428, !41, i64 432, !41, i64 434, !54, i64 436, !54, i64 440, !54, i64 444, !54, i64 448, !54, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !53, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !53, i64 484, !53, i64 488, !41, i64 492, !41, i64 494, !53, i64 496, !53, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !53, i64 516, !53, i64 520, !53, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !78, i64 544, !78, i64 560, !101, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !54, i64 612, !54, i64 616, !54, i64 620, !54, i64 624, !53, i64 628, !54, i64 632, !54, i64 636, !54, i64 640, !54, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !54, i64 660, !54, i64 664, !41, i64 668, !41, i64 670, !54, i64 672, !54, i64 676, !37, i64 680, !53, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !53, i64 2520, !41, i64 2524, !41, i64 2526, !54, i64 2528, !54, i64 2532, !41, i64 2536, !41, i64 2538, !54, i64 2540, !41, i64 2544, !41, i64 2546, !53, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !54, i64 2560, !54, i64 2564, !36, i64 2568, !53, i64 2576, !54, i64 2580, !37, i64 2584, !102, i64 2616, !53, i64 3976, !53, i64 3980}
!96 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !54, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !97, i64 24, !98, i64 184}
!97 = !{!"ColorManagedViewSettings", !53, i64 0, !53, i64 4, !37, i64 8, !37, i64 72, !54, i64 136, !54, i64 140, !36, i64 144, !36, i64 152}
!98 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!99 = !{!"QuicktimeCodecSettings", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !53, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !41, i64 48, !41, i64 50, !53, i64 52, !53, i64 56, !53, i64 60}
!100 = !{!"FFMpegCodecData", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !54, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !53, i64 48, !53, i64 52, !53, i64 56, !53, i64 60, !36, i64 64}
!101 = !{!"rcti", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!102 = !{!"BakeData", !96, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !54, i64 1280, !54, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!103 = !{!"AudioData", !53, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !53, i64 16, !41, i64 20, !41, i64 22, !54, i64 24, !54, i64 28}
!104 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!105 = !{!"GameData", !104, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !106, i64 40, !41, i64 64, !41, i64 66, !54, i64 68, !107, i64 72, !54, i64 128, !54, i64 132, !53, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !54, i64 164, !54, i64 168, !54, i64 172, !54, i64 176, !54, i64 180}
!106 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !54, i64 8, !54, i64 12, !36, i64 16}
!107 = !{!"RecastData", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !54, i64 28, !54, i64 32, !54, i64 36, !53, i64 40, !54, i64 44, !54, i64 48, !41, i64 52, !41, i64 54}
!108 = !{!"UnitSettings", !54, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!109 = !{!"PhysicsSettings", !37, i64 0, !53, i64 12, !53, i64 16, !53, i64 20}
!110 = !{!"long", !37, i64 0}
!111 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!112 = !{!113, !54, i64 16}
!113 = !{!"View2D", !78, i64 0, !78, i64 16, !101, i64 32, !101, i64 48, !101, i64 64, !37, i64 80, !37, i64 88, !54, i64 96, !54, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !53, i64 136, !53, i64 140, !36, i64 144, !36, i64 152}
!114 = !{!93, !53, i64 688}
!115 = !{!113, !54, i64 20}
!116 = !{!113, !54, i64 24}
!117 = !{!113, !54, i64 28}
!118 = !{!78, !54, i64 12}
!119 = !{!78, !54, i64 8}
!120 = !{!78, !54, i64 4}
!121 = !{!78, !54, i64 0}
!122 = !{!93, !53, i64 680}
!123 = !{!82, !53, i64 152}
!124 = distinct !{!124, !85, !86}
!125 = !{!126, !53, i64 0}
!126 = !{!"", !53, i64 0}
!127 = !{!52, !37, i64 4}
