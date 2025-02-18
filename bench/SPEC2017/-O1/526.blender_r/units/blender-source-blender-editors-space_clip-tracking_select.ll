; ModuleID = 'blender/source/blender/editors/space_clip/tracking_select.c'
source_filename = "blender/source/blender/editors/space_clip/tracking_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type opaque
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
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
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }
%struct.MovieTrackingPlaneTrack = type { ptr, ptr, [64 x i8], ptr, i32, i32, ptr, i32, i32, ptr, float, i32 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.rctf = type { float, float, float, float }

@.str = private unnamed_addr constant [7 x i8] c"Select\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Select tracking markers\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"CLIP_OT_select\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Extend\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"Extend selection rather than clearing the existing selection\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.8 = private unnamed_addr constant [80 x i8] c"Mouse location in normalized coordinates, 0.0 to 1.0 is within the image bounds\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Border Select\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Select markers using border selection\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"CLIP_OT_select_border\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Lasso Select\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"Select markers using lasso selection\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"CLIP_OT_select_lasso\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@RNA_OperatorMousePath = external global %struct.StructRNA, align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"Path\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"deselect\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"Deselect\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"Deselect rather than select items\00", align 1
@.str.21 = private unnamed_addr constant [57 x i8] c"Extend selection instead of deselecting everything first\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"Circle Select\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"Select markers using circle selection\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"CLIP_OT_select_circle\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"Radius\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"gesture_mode\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"Gesture Mode\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"(De)select All\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"Change selection of all tracking markers\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"CLIP_OT_select_all\00", align 1
@CLIP_OT_select_grouped.select_group_items = internal global [8 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.36, i32 0, ptr @.str.37, ptr @.str.38 }, %struct.EnumPropertyItem { i32 1, ptr @.str.39, i32 0, ptr @.str.40, ptr @.str.41 }, %struct.EnumPropertyItem { i32 2, ptr @.str.42, i32 0, ptr @.str.43, ptr @.str.44 }, %struct.EnumPropertyItem { i32 3, ptr @.str.45, i32 0, ptr @.str.46, ptr @.str.47 }, %struct.EnumPropertyItem { i32 4, ptr @.str.48, i32 0, ptr @.str.49, ptr @.str.50 }, %struct.EnumPropertyItem { i32 5, ptr @.str.51, i32 0, ptr @.str.52, ptr @.str.53 }, %struct.EnumPropertyItem { i32 6, ptr @.str.54, i32 0, ptr @.str.55, ptr @.str.56 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.36 = private unnamed_addr constant [10 x i8] c"KEYFRAMED\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"Keyframed tracks\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"Select all keyframed tracks\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"ESTIMATED\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"Estimated tracks\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"Select all estimated tracks\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"TRACKED\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"Tracked tracks\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"Select all tracked tracks\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"LOCKED\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"Locked tracks\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c"Select all locked tracks\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"DISABLED\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"Disabled tracks\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"Select all disabled tracks\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"COLOR\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"Tracks with same color\00", align 1
@.str.53 = private unnamed_addr constant [50 x i8] c"Select all tracks with same color as active track\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"Failed Tracks\00", align 1
@.str.56 = private unnamed_addr constant [51 x i8] c"Select all tracks which failed to be reconstructed\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"Select Grouped\00", align 1
@.str.58 = private unnamed_addr constant [39 x i8] c"Select all tracks from specified group\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"CLIP_OT_select_grouped\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@.str.62 = private unnamed_addr constant [24 x i8] c"Clear action to execute\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.63 = private unnamed_addr constant [7 x i8] c"action\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_select(ptr nocapture noundef %0) local_unnamed_addr #0 {
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
  store ptr @select_poll, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #5
  %11 = load ptr, ptr %8, align 8, !tbaa !48
  %12 = tail call ptr @RNA_def_float_vector(ptr noundef %11, ptr noundef nonnull @.str.6, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, float noundef -1.000000e+02, float noundef 1.000000e+02) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @select_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x float], align 4
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca [2 x float], align 4
  %11 = alloca [2 x float], align 4
  %12 = alloca [2 x float], align 4
  %13 = alloca [2 x float], align 4
  %14 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #5
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  call void @RNA_float_get_array(ptr noundef %16, ptr noundef nonnull @.str.6, ptr noundef nonnull %14) #5
  %17 = load ptr, ptr %15, align 8, !tbaa !49
  %18 = call i32 @RNA_boolean_get(ptr noundef %17, ptr noundef nonnull @.str.3) #5
  %19 = call ptr @CTX_wm_space_clip(ptr noundef %0) #5
  %20 = call ptr @ED_space_clip_get_clip(ptr noundef %19) #5
  %21 = getelementptr inbounds %struct.MovieClip, ptr %20, i64 0, i32 11
  %22 = call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %21) #5
  %23 = call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %21) #5
  %24 = call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %21) #5
  %25 = call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %19) #5
  %26 = load ptr, ptr %22, align 8, !tbaa !51
  %27 = icmp eq ptr %26, null
  br i1 %27, label %171, label %28

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.SpaceClip, ptr %19, i64 0, i32 12
  %30 = getelementptr inbounds %struct.SpaceClip, ptr %19, i64 0, i32 10
  %31 = getelementptr inbounds float, ptr %14, i64 1
  %32 = getelementptr inbounds %struct.SpaceClip, ptr %19, i64 0, i32 12
  %33 = getelementptr inbounds float, ptr %4, i64 1
  %34 = getelementptr inbounds float, ptr %9, i64 1
  %35 = getelementptr inbounds float, ptr %10, i64 1
  %36 = getelementptr inbounds float, ptr %11, i64 1
  %37 = getelementptr inbounds float, ptr %12, i64 1
  %38 = getelementptr inbounds float, ptr %13, i64 1
  br label %39

39:                                               ; preds = %28, %166
  %40 = phi ptr [ %26, %28 ], [ %169, %166 ]
  %41 = phi ptr [ null, %28 ], [ %168, %166 ]
  %42 = phi float [ 0.000000e+00, %28 ], [ %167, %166 ]
  %43 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %40, i32 noundef %25) #5
  %44 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %40, i64 0, i32 13
  %45 = load i32, ptr %44, align 8, !tbaa !52
  %46 = and i32 %45, 32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %166

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %43, i64 0, i32 5
  %50 = load i32, ptr %49, align 4, !tbaa !56
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %48
  %54 = load i32, ptr %29, align 8, !tbaa !58
  %55 = and i32 %54, 128
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %30, align 8, !tbaa !63
  %59 = getelementptr inbounds %struct.MovieClip, ptr %58, i64 0, i32 11, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !64
  %61 = icmp eq ptr %60, %40
  br i1 %61, label %62, label %166

62:                                               ; preds = %57, %53, %48
  %63 = load float, ptr %14, align 4, !tbaa !75
  %64 = load float, ptr %43, align 4, !tbaa !75
  %65 = fsub float %63, %64
  %66 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %40, i64 0, i32 7
  %67 = load float, ptr %66, align 8, !tbaa !75
  %68 = fsub float %65, %67
  %69 = load float, ptr %31, align 4, !tbaa !75
  %70 = getelementptr inbounds [2 x float], ptr %43, i64 0, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !75
  %72 = fsub float %69, %71
  %73 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %40, i64 0, i32 7, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !75
  %75 = fsub float %72, %74
  %76 = fmul float %75, %75
  %77 = call float @llvm.fmuladd.f32(float %68, float %68, float %76)
  %78 = call float @sqrtf(float noundef %77) #5
  %79 = load i32, ptr %32, align 8, !tbaa !58
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %104, label %82

82:                                               ; preds = %62
  %83 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %43, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  %84 = load float, ptr %14, align 4, !tbaa !75
  %85 = load float, ptr %43, align 4, !tbaa !75
  %86 = fsub float %84, %85
  store float %86, ptr %4, align 4, !tbaa !75
  %87 = load float, ptr %31, align 4, !tbaa !75
  %88 = load float, ptr %70, align 4, !tbaa !75
  %89 = fsub float %87, %88
  store float %89, ptr %33, align 4, !tbaa !75
  %90 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %43, i64 0, i32 1, i64 1
  %91 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %43, i64 0, i32 1, i64 2
  %92 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %43, i64 0, i32 1, i64 3
  %93 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %4, ptr noundef nonnull %83, ptr noundef nonnull %90) #5
  %94 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %4, ptr noundef nonnull %90, ptr noundef nonnull %91) #5
  %95 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %4, ptr noundef nonnull %91, ptr noundef nonnull %92) #5
  %96 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %4, ptr noundef nonnull %92, ptr noundef nonnull %83) #5
  %97 = fcmp olt float %93, %94
  %98 = select i1 %97, float %93, float %94
  %99 = fcmp olt float %98, %95
  %100 = select i1 %99, float %98, float %95
  %101 = fcmp olt float %100, %96
  %102 = select i1 %101, float %100, float %96
  %103 = call float @sqrtf(float noundef %102) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  br label %104

104:                                              ; preds = %82, %62
  %105 = phi float [ %103, %82 ], [ 0x47EFFFFFE0000000, %62 ]
  %106 = load i32, ptr %32, align 8, !tbaa !58
  %107 = and i32 %106, 2
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %155, label %109

109:                                              ; preds = %104
  %110 = load i32, ptr %44, align 8, !tbaa !52
  %111 = and i32 %110, 32
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %155

113:                                              ; preds = %109
  %114 = and i32 %110, 1
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %113
  %117 = and i32 %106, 1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %40, i64 0, i32 14
  %121 = load i32, ptr %120, align 4, !tbaa !76
  %122 = and i32 %121, 1
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %116, %119
  %125 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %40, i64 0, i32 15
  %126 = load i32, ptr %125, align 8, !tbaa !77
  %127 = and i32 %126, 1
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %155, label %129

129:                                              ; preds = %124, %119, %113
  %130 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %43, i64 0, i32 2
  %131 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %43, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #5
  %132 = load float, ptr %14, align 4, !tbaa !75
  %133 = load float, ptr %43, align 4, !tbaa !75
  %134 = fsub float %132, %133
  store float %134, ptr %9, align 4, !tbaa !75
  %135 = load float, ptr %31, align 4, !tbaa !75
  %136 = load float, ptr %70, align 4, !tbaa !75
  %137 = fsub float %135, %136
  store float %137, ptr %34, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #5
  %138 = load float, ptr %130, align 4, !tbaa !75
  store float %138, ptr %10, align 4, !tbaa !75
  %139 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %43, i64 0, i32 2, i64 1
  %140 = load float, ptr %139, align 4, !tbaa !75
  store float %140, ptr %35, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #5
  %141 = load float, ptr %131, align 4, !tbaa !75
  store float %141, ptr %11, align 4, !tbaa !75
  store float %140, ptr %36, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #5
  store float %141, ptr %12, align 4, !tbaa !75
  %142 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %43, i64 0, i32 3, i64 1
  %143 = load float, ptr %142, align 4, !tbaa !75
  store float %143, ptr %37, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #5
  store float %138, ptr %13, align 4, !tbaa !75
  store float %143, ptr %38, align 4, !tbaa !75
  %144 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #5
  %145 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %12) #5
  %146 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %9, ptr noundef nonnull %12, ptr noundef nonnull %13) #5
  %147 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %9, ptr noundef nonnull %13, ptr noundef nonnull %10) #5
  %148 = fcmp olt float %144, %145
  %149 = select i1 %148, float %144, float %145
  %150 = fcmp olt float %149, %146
  %151 = select i1 %150, float %149, float %146
  %152 = fcmp olt float %151, %147
  %153 = select i1 %152, float %151, float %147
  %154 = call float @sqrtf(float noundef %153) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #5
  br label %155

155:                                              ; preds = %129, %124, %109, %104
  %156 = phi float [ %154, %129 ], [ 0x47EFFFFFE0000000, %124 ], [ 0x47EFFFFFE0000000, %109 ], [ 0x47EFFFFFE0000000, %104 ]
  %157 = fcmp olt float %78, %105
  %158 = select i1 %157, float %78, float %105
  %159 = fcmp olt float %158, %156
  %160 = select i1 %159, float %158, float %156
  %161 = icmp eq ptr %41, null
  %162 = fcmp olt float %160, %42
  %163 = select i1 %161, i1 true, i1 %162
  %164 = select i1 %163, float %160, float %42
  %165 = select i1 %163, ptr %40, ptr %41
  br label %166

166:                                              ; preds = %155, %57, %39
  %167 = phi float [ %164, %155 ], [ %42, %57 ], [ %42, %39 ]
  %168 = phi ptr [ %165, %155 ], [ %41, %57 ], [ %41, %39 ]
  %169 = load ptr, ptr %40, align 8, !tbaa !51
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %39, !llvm.loop !78

171:                                              ; preds = %166, %2
  %172 = phi float [ 0.000000e+00, %2 ], [ %167, %166 ]
  %173 = phi ptr [ null, %2 ], [ %168, %166 ]
  %174 = call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %19) #5
  %175 = load ptr, ptr %23, align 8, !tbaa !51
  %176 = icmp eq ptr %175, null
  br i1 %176, label %211, label %177

177:                                              ; preds = %171, %206
  %178 = phi ptr [ %209, %206 ], [ %175, %171 ]
  %179 = phi ptr [ %208, %206 ], [ null, %171 ]
  %180 = phi float [ %207, %206 ], [ 0.000000e+00, %171 ]
  %181 = call ptr @BKE_tracking_plane_marker_get(ptr noundef nonnull %178, i32 noundef %174) #5
  %182 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %178, i64 0, i32 8
  %183 = load i32, ptr %182, align 4, !tbaa !81
  %184 = and i32 %183, 32
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %206

186:                                              ; preds = %177
  %187 = getelementptr inbounds [2 x float], ptr %181, i64 1
  %188 = getelementptr inbounds [2 x float], ptr %181, i64 2
  %189 = getelementptr inbounds [2 x float], ptr %181, i64 3
  %190 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %14, ptr noundef %181, ptr noundef nonnull %187) #5
  %191 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %14, ptr noundef nonnull %187, ptr noundef nonnull %188) #5
  %192 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %14, ptr noundef nonnull %188, ptr noundef nonnull %189) #5
  %193 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %14, ptr noundef nonnull %189, ptr noundef %181) #5
  %194 = fcmp olt float %190, %191
  %195 = select i1 %194, float %190, float %191
  %196 = fcmp olt float %195, %192
  %197 = select i1 %196, float %195, float %192
  %198 = fcmp olt float %197, %193
  %199 = select i1 %198, float %197, float %193
  %200 = call float @sqrtf(float noundef %199) #5
  %201 = icmp eq ptr %179, null
  %202 = fcmp olt float %200, %180
  %203 = select i1 %201, i1 true, i1 %202
  %204 = select i1 %203, float %200, float %180
  %205 = select i1 %203, ptr %178, ptr %179
  br label %206

206:                                              ; preds = %186, %177
  %207 = phi float [ %204, %186 ], [ %180, %177 ]
  %208 = phi ptr [ %205, %186 ], [ %179, %177 ]
  %209 = load ptr, ptr %178, align 8, !tbaa !51
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %177, !llvm.loop !83

211:                                              ; preds = %206, %171
  %212 = phi float [ 0.000000e+00, %171 ], [ %207, %206 ]
  %213 = phi ptr [ null, %171 ], [ %208, %206 ]
  %214 = icmp ne ptr %173, null
  %215 = icmp ne ptr %213, null
  %216 = select i1 %214, i1 %215, i1 false
  %217 = fcmp olt float %172, %212
  %218 = select i1 %217, ptr %173, ptr null
  %219 = select i1 %216, ptr %218, ptr %173
  %220 = select i1 %216, i1 %217, i1 false
  %221 = select i1 %220, ptr null, ptr %213
  %222 = icmp eq i32 %18, 0
  br i1 %222, label %223, label %233

223:                                              ; preds = %211
  %224 = load ptr, ptr %23, align 8, !tbaa !51
  %225 = icmp eq ptr %224, null
  br i1 %225, label %233, label %226

226:                                              ; preds = %223, %226
  %227 = phi ptr [ %231, %226 ], [ %224, %223 ]
  %228 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %227, i64 0, i32 8
  %229 = load i32, ptr %228, align 4, !tbaa !81
  %230 = and i32 %229, -2
  store i32 %230, ptr %228, align 4, !tbaa !81
  %231 = load ptr, ptr %227, align 8, !tbaa !51
  %232 = icmp eq ptr %231, null
  br i1 %232, label %233, label %226, !llvm.loop !84

233:                                              ; preds = %226, %223, %211
  %234 = icmp eq ptr %219, null
  br i1 %234, label %486, label %235

235:                                              ; preds = %233
  %236 = call ptr @CTX_wm_space_clip(ptr noundef %0) #5
  %237 = call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %236) #5
  %238 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %219, i32 noundef %237) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #5
  call void @ED_space_clip_get_size(ptr noundef %236, ptr noundef nonnull %7, ptr noundef nonnull %8) #5
  call void @BKE_tracking_marker_pattern_minmax(ptr noundef %238, ptr noundef nonnull %5, ptr noundef nonnull %6) #5
  %239 = load float, ptr %5, align 4, !tbaa !75
  %240 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %238, i64 0, i32 2
  %241 = load float, ptr %240, align 4, !tbaa !75
  %242 = fsub float %239, %241
  %243 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %238, i64 0, i32 3
  %244 = load float, ptr %243, align 4, !tbaa !75
  %245 = load float, ptr %6, align 4, !tbaa !75
  %246 = fsub float %244, %245
  %247 = call float @llvm.fabs.f32(float %239)
  %248 = call float @llvm.fabs.f32(float %245)
  %249 = fcmp olt float %242, %246
  %250 = select i1 %249, float %242, float %246
  %251 = fcmp olt float %250, %247
  %252 = select i1 %251, float %250, float %247
  %253 = fcmp olt float %252, %248
  %254 = select i1 %253, float %252, float %248
  %255 = fmul float %254, 5.000000e-01
  %256 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %257 = load float, ptr %256, align 4, !tbaa !75
  %258 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %238, i64 0, i32 2, i64 1
  %259 = load float, ptr %258, align 4, !tbaa !75
  %260 = fsub float %257, %259
  %261 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %238, i64 0, i32 3, i64 1
  %262 = load float, ptr %261, align 4, !tbaa !75
  %263 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %264 = load float, ptr %263, align 4, !tbaa !75
  %265 = fsub float %262, %264
  %266 = call float @llvm.fabs.f32(float %257)
  %267 = call float @llvm.fabs.f32(float %264)
  %268 = fcmp olt float %260, %265
  %269 = select i1 %268, float %260, float %265
  %270 = fcmp olt float %269, %266
  %271 = select i1 %270, float %269, float %266
  %272 = fcmp olt float %271, %267
  %273 = select i1 %272, float %271, float %267
  %274 = fmul float %273, 5.000000e-01
  %275 = load i32, ptr %7, align 4, !tbaa !85
  %276 = sitofp i32 %275 to float
  %277 = fdiv float 2.000000e+00, %276
  %278 = fcmp ogt float %255, %277
  %279 = select i1 %278, float %255, float %277
  %280 = load i32, ptr %8, align 4, !tbaa !85
  %281 = sitofp i32 %280 to float
  %282 = fdiv float 2.000000e+00, %281
  %283 = fcmp ogt float %274, %282
  %284 = select i1 %283, float %274, float %282
  %285 = getelementptr inbounds %struct.SpaceClip, ptr %236, i64 0, i32 12
  %286 = load i32, ptr %285, align 8, !tbaa !58
  %287 = and i32 %286, 2
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %364, label %289

289:                                              ; preds = %235
  %290 = load float, ptr %238, align 4, !tbaa !75
  %291 = fadd float %241, %290
  %292 = getelementptr inbounds float, ptr %238, i64 1
  %293 = fadd float %244, %290
  %294 = fcmp ogt float %291, %293
  %295 = select i1 %294, float %291, float %293
  %296 = select i1 %294, float %293, float %291
  %297 = load float, ptr %14, align 4, !tbaa !75
  %298 = fsub float %296, %279
  %299 = fcmp ult float %297, %298
  %300 = fadd float %279, %295
  %301 = fcmp ugt float %297, %300
  %302 = or i1 %299, %301
  br i1 %302, label %313, label %303

303:                                              ; preds = %289
  %304 = load float, ptr %292, align 4, !tbaa !75
  %305 = fadd float %259, %304
  %306 = getelementptr inbounds float, ptr %14, i64 1
  %307 = load float, ptr %306, align 4, !tbaa !75
  %308 = fsub float %305, %284
  %309 = fcmp ult float %307, %308
  %310 = fadd float %284, %305
  %311 = fcmp ugt float %307, %310
  %312 = or i1 %309, %311
  br i1 %312, label %313, label %427

313:                                              ; preds = %303, %289
  %314 = fsub float %291, %279
  %315 = fcmp ult float %297, %314
  %316 = fadd float %279, %291
  %317 = fcmp ugt float %297, %316
  %318 = or i1 %315, %317
  br i1 %318, label %333, label %319

319:                                              ; preds = %313
  %320 = load float, ptr %292, align 4, !tbaa !75
  %321 = fadd float %259, %320
  %322 = fadd float %262, %320
  %323 = fcmp ogt float %321, %322
  %324 = select i1 %323, float %321, float %322
  %325 = select i1 %323, float %322, float %321
  %326 = getelementptr inbounds float, ptr %14, i64 1
  %327 = load float, ptr %326, align 4, !tbaa !75
  %328 = fsub float %325, %284
  %329 = fcmp ult float %327, %328
  %330 = fadd float %284, %324
  %331 = fcmp ugt float %327, %330
  %332 = or i1 %329, %331
  br i1 %332, label %333, label %427

333:                                              ; preds = %319, %313
  br i1 %302, label %344, label %334

334:                                              ; preds = %333
  %335 = load float, ptr %292, align 4, !tbaa !75
  %336 = fadd float %262, %335
  %337 = getelementptr inbounds float, ptr %14, i64 1
  %338 = load float, ptr %337, align 4, !tbaa !75
  %339 = fsub float %336, %284
  %340 = fcmp ult float %338, %339
  %341 = fadd float %284, %336
  %342 = fcmp ugt float %338, %341
  %343 = or i1 %340, %342
  br i1 %343, label %344, label %427

344:                                              ; preds = %334, %333
  %345 = fsub float %293, %279
  %346 = fcmp ult float %297, %345
  %347 = fadd float %279, %293
  %348 = fcmp ugt float %297, %347
  %349 = or i1 %346, %348
  br i1 %349, label %364, label %350

350:                                              ; preds = %344
  %351 = load float, ptr %292, align 4, !tbaa !75
  %352 = fadd float %259, %351
  %353 = fadd float %262, %351
  %354 = fcmp ogt float %352, %353
  %355 = select i1 %354, float %352, float %353
  %356 = select i1 %354, float %353, float %352
  %357 = getelementptr inbounds float, ptr %14, i64 1
  %358 = load float, ptr %357, align 4, !tbaa !75
  %359 = fsub float %356, %284
  %360 = fcmp ult float %358, %359
  %361 = fadd float %284, %355
  %362 = fcmp ugt float %358, %361
  %363 = or i1 %360, %362
  br i1 %363, label %364, label %427

364:                                              ; preds = %350, %344, %235
  %365 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %238, i64 0, i32 5
  %366 = load i32, ptr %365, align 4, !tbaa !56
  %367 = and i32 %366, 1
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %369, label %426

369:                                              ; preds = %364
  %370 = and i32 %286, 1
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %400, label %372

372:                                              ; preds = %369
  %373 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %238, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  %374 = load float, ptr %14, align 4, !tbaa !75
  %375 = load float, ptr %238, align 4, !tbaa !75
  %376 = fsub float %374, %375
  store float %376, ptr %3, align 4, !tbaa !75
  %377 = getelementptr inbounds float, ptr %3, i64 1
  %378 = getelementptr inbounds float, ptr %14, i64 1
  %379 = load float, ptr %378, align 4, !tbaa !75
  %380 = getelementptr inbounds float, ptr %238, i64 1
  %381 = load float, ptr %380, align 4, !tbaa !75
  %382 = fsub float %379, %381
  store float %382, ptr %377, align 4, !tbaa !75
  %383 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %238, i64 0, i32 1, i64 1
  %384 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %238, i64 0, i32 1, i64 2
  %385 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %238, i64 0, i32 1, i64 3
  %386 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %3, ptr noundef nonnull %373, ptr noundef nonnull %383) #5
  %387 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %3, ptr noundef nonnull %383, ptr noundef nonnull %384) #5
  %388 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %3, ptr noundef nonnull %384, ptr noundef nonnull %385) #5
  %389 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %3, ptr noundef nonnull %385, ptr noundef nonnull %373) #5
  %390 = fcmp olt float %386, %387
  %391 = select i1 %390, float %386, float %387
  %392 = fcmp olt float %391, %388
  %393 = select i1 %392, float %391, float %388
  %394 = fcmp olt float %393, %389
  %395 = select i1 %394, float %393, float %389
  %396 = call float @sqrtf(float noundef %395) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  %397 = fcmp ogt float %279, %284
  %398 = select i1 %397, float %279, float %284
  %399 = fcmp uge float %396, %398
  br i1 %399, label %400, label %427

400:                                              ; preds = %372, %369
  %401 = load i32, ptr %7, align 4, !tbaa !85
  %402 = sitofp i32 %401 to float
  %403 = fdiv float 1.200000e+01, %402
  %404 = load float, ptr %14, align 4, !tbaa !75
  %405 = load float, ptr %238, align 4, !tbaa !75
  %406 = fsub float %404, %405
  %407 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %219, i64 0, i32 7
  %408 = load float, ptr %407, align 8, !tbaa !75
  %409 = fsub float %406, %408
  %410 = call float @llvm.fabs.f32(float %409)
  %411 = fcmp olt float %410, %403
  br i1 %411, label %412, label %426

412:                                              ; preds = %400
  %413 = load i32, ptr %8, align 4, !tbaa !85
  %414 = sitofp i32 %413 to float
  %415 = fdiv float 1.200000e+01, %414
  %416 = getelementptr inbounds float, ptr %14, i64 1
  %417 = load float, ptr %416, align 4, !tbaa !75
  %418 = getelementptr inbounds [2 x float], ptr %238, i64 0, i64 1
  %419 = load float, ptr %418, align 4, !tbaa !75
  %420 = fsub float %417, %419
  %421 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %219, i64 0, i32 7, i64 1
  %422 = load float, ptr %421, align 4, !tbaa !75
  %423 = fsub float %420, %422
  %424 = call float @llvm.fabs.f32(float %423)
  %425 = fcmp ugt float %424, %415
  br i1 %425, label %426, label %427

426:                                              ; preds = %412, %400, %364
  br label %427

427:                                              ; preds = %426, %412, %372, %350, %334, %319, %303
  %428 = phi i32 [ -1, %426 ], [ 2, %372 ], [ 1, %412 ], [ 4, %334 ], [ 4, %319 ], [ 4, %303 ], [ 4, %350 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  br i1 %222, label %455, label %429

429:                                              ; preds = %427
  %430 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %219, i64 0, i32 13
  %431 = load i32, ptr %430, align 8, !tbaa !52
  %432 = and i32 %431, 32
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %434, label %455

434:                                              ; preds = %429
  %435 = and i32 %431, 1
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %456

437:                                              ; preds = %434
  %438 = getelementptr inbounds %struct.SpaceClip, ptr %19, i64 0, i32 12
  %439 = load i32, ptr %438, align 8, !tbaa !58
  %440 = and i32 %439, 1
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %447, label %442

442:                                              ; preds = %437
  %443 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %219, i64 0, i32 14
  %444 = load i32, ptr %443, align 4, !tbaa !76
  %445 = and i32 %444, 1
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %447, label %456

447:                                              ; preds = %442, %437
  %448 = and i32 %439, 2
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %455, label %450

450:                                              ; preds = %447
  %451 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %219, i64 0, i32 15
  %452 = load i32, ptr %451, align 8, !tbaa !77
  %453 = and i32 %452, 1
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %455, label %456

455:                                              ; preds = %450, %447, %429, %427
  br label %456

456:                                              ; preds = %455, %450, %442, %434
  %457 = phi i32 [ %428, %434 ], [ %428, %442 ], [ %428, %450 ], [ 7, %455 ]
  br i1 %222, label %480, label %458

458:                                              ; preds = %456
  switch i32 %457, label %469 [
    i32 1, label %459
    i32 2, label %464
  ]

459:                                              ; preds = %458
  %460 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %219, i64 0, i32 13
  %461 = load i32, ptr %460, align 8, !tbaa !52
  %462 = and i32 %461, 1
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %480, label %474

464:                                              ; preds = %458
  %465 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %219, i64 0, i32 14
  %466 = load i32, ptr %465, align 4, !tbaa !76
  %467 = and i32 %466, 1
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %480, label %474

469:                                              ; preds = %458
  %470 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %219, i64 0, i32 15
  %471 = load i32, ptr %470, align 8, !tbaa !77
  %472 = and i32 %471, 1
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %480, label %474

474:                                              ; preds = %469, %464, %459
  %475 = icmp eq ptr %219, %24
  br i1 %475, label %476, label %477

476:                                              ; preds = %474
  call void @BKE_tracking_track_deselect(ptr noundef nonnull %219, i32 noundef %457) #5
  br label %511

477:                                              ; preds = %474
  %478 = getelementptr inbounds %struct.MovieClip, ptr %20, i64 0, i32 11, i32 6
  store ptr %219, ptr %478, align 8, !tbaa !64
  %479 = getelementptr inbounds %struct.MovieClip, ptr %20, i64 0, i32 11, i32 7
  store ptr null, ptr %479, align 8, !tbaa !86
  br label %511

480:                                              ; preds = %469, %464, %459, %456
  %481 = icmp eq i32 %457, 1
  %482 = select i1 %481, i32 7, i32 %457
  %483 = trunc i32 %18 to i8
  call void @BKE_tracking_track_select(ptr noundef nonnull %22, ptr noundef nonnull %219, i32 noundef %482, i8 noundef zeroext %483) #5
  %484 = getelementptr inbounds %struct.MovieClip, ptr %20, i64 0, i32 11, i32 6
  store ptr %219, ptr %484, align 8, !tbaa !64
  %485 = getelementptr inbounds %struct.MovieClip, ptr %20, i64 0, i32 11, i32 7
  store ptr null, ptr %485, align 8, !tbaa !86
  br label %511

486:                                              ; preds = %233
  %487 = icmp eq ptr %221, null
  br i1 %487, label %511, label %488

488:                                              ; preds = %486
  br i1 %222, label %489, label %496

489:                                              ; preds = %488
  %490 = load ptr, ptr %22, align 8, !tbaa !51
  %491 = icmp eq ptr %490, null
  br i1 %491, label %496, label %492

492:                                              ; preds = %489, %492
  %493 = phi ptr [ %494, %492 ], [ %490, %489 ]
  call void @BKE_tracking_track_flag_clear(ptr noundef nonnull %493, i32 noundef 7, i32 noundef 1) #5
  %494 = load ptr, ptr %493, align 8, !tbaa !51
  %495 = icmp eq ptr %494, null
  br i1 %495, label %496, label %492, !llvm.loop !87

496:                                              ; preds = %492, %489, %488
  %497 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %221, i64 0, i32 8
  %498 = load i32, ptr %497, align 4, !tbaa !81
  %499 = and i32 %498, 3
  %500 = icmp eq i32 %499, 1
  br i1 %500, label %501, label %504

501:                                              ; preds = %496
  br i1 %222, label %508, label %502

502:                                              ; preds = %501
  %503 = and i32 %498, -4
  br label %506

504:                                              ; preds = %496
  %505 = or i32 %498, 1
  br label %506

506:                                              ; preds = %502, %504
  %507 = phi i32 [ %505, %504 ], [ %503, %502 ]
  store i32 %507, ptr %497, align 4, !tbaa !81
  br label %508

508:                                              ; preds = %506, %501
  %509 = getelementptr inbounds %struct.MovieClip, ptr %20, i64 0, i32 11, i32 6
  store ptr null, ptr %509, align 8, !tbaa !64
  %510 = getelementptr inbounds %struct.MovieClip, ptr %20, i64 0, i32 11, i32 7
  store ptr %221, ptr %510, align 8, !tbaa !86
  br label %511

511:                                              ; preds = %508, %486, %480, %477, %476
  br i1 %222, label %512, label %515

512:                                              ; preds = %511
  %513 = getelementptr inbounds %struct.SpaceClip, ptr %19, i64 0, i32 6
  store float 0.000000e+00, ptr %513, align 4, !tbaa !88
  %514 = getelementptr inbounds %struct.SpaceClip, ptr %19, i64 0, i32 7
  store float 0.000000e+00, ptr %514, align 8, !tbaa !89
  br label %515

515:                                              ; preds = %511, %512
  call void @BKE_tracking_dopesheet_tag_update(ptr noundef nonnull %21) #5
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #5
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @select_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #5
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.3) #5
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = tail call ptr @tracking_marker_check_slide(ptr noundef %0, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null) #5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = tail call ptr @ED_space_clip_get_clip(ptr noundef %5) #5
  %17 = getelementptr inbounds %struct.MovieClip, ptr %16, i64 0, i32 11, i32 6
  store ptr %13, ptr %17, align 8, !tbaa !64
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef null) #5
  br label %22

18:                                               ; preds = %12, %3
  %19 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @ED_clip_mouse_pos(ptr noundef %5, ptr noundef %6, ptr noundef nonnull %19, ptr noundef nonnull %4) #5
  %20 = load ptr, ptr %7, align 8, !tbaa !49
  call void @RNA_float_set_array(ptr noundef %20, ptr noundef nonnull @.str.6, ptr noundef nonnull %4) #5
  %21 = call i32 @select_exec(ptr noundef %0, ptr noundef %1)
  br label %22

22:                                               ; preds = %15, %18
  %23 = phi i32 [ 4, %18 ], [ 8, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @select_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SpaceClip, ptr %2, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.SpaceClip, ptr %2, i64 0, i32 14
  %10 = load i16, ptr %9, align 2, !tbaa !90
  %11 = icmp eq i16 %10, 0
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %1, %4, %8
  %14 = phi i32 [ 0, %4 ], [ %12, %8 ], [ 0, %1 ]
  ret i32 %14
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @RNA_def_float_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_select_border(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @border_select_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !91
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %8, align 8, !tbaa !47
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 1) #5
  ret void
}

declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @border_select_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.rcti, align 4
  %4 = alloca %struct.rctf, align 4
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #5
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #5
  %7 = tail call ptr @ED_space_clip_get_clip(ptr noundef %5) #5
  %8 = getelementptr inbounds %struct.MovieClip, ptr %7, i64 0, i32 11
  %9 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %8) #5
  %10 = tail call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  %11 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %5) #5
  call void @WM_operator_properties_border_to_rcti(ptr noundef %1, ptr noundef nonnull %3) #5
  %12 = load i32, ptr %3, align 4, !tbaa !92
  %13 = sitofp i32 %12 to float
  %14 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !94
  %16 = sitofp i32 %15 to float
  %17 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 2
  call void @ED_clip_point_stable_pos(ptr noundef %5, ptr noundef %6, float noundef %13, float noundef %16, ptr noundef nonnull %4, ptr noundef nonnull %17) #5
  %18 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !95
  %20 = sitofp i32 %19 to float
  %21 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !96
  %23 = sitofp i32 %22 to float
  %24 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 1
  %25 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 3
  call void @ED_clip_point_stable_pos(ptr noundef %5, ptr noundef %6, float noundef %20, float noundef %23, ptr noundef nonnull %24, ptr noundef nonnull %25) #5
  %26 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  %28 = call i32 @RNA_int_get(ptr noundef %27, ptr noundef nonnull @.str.31) #5
  %29 = load ptr, ptr %26, align 8, !tbaa !49
  %30 = call i32 @RNA_boolean_get(ptr noundef %29, ptr noundef nonnull @.str.3) #5
  %31 = load ptr, ptr %9, align 8, !tbaa !51
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.SpaceClip, ptr %5, i64 0, i32 12
  %35 = getelementptr inbounds %struct.SpaceClip, ptr %5, i64 0, i32 10
  %36 = icmp eq i32 %28, 3
  %37 = icmp eq i32 %30, 0
  br label %45

38:                                               ; preds = %75, %2
  %39 = phi i8 [ 0, %2 ], [ %76, %75 ]
  %40 = load ptr, ptr %10, align 8, !tbaa !51
  %41 = icmp eq ptr %40, null
  br i1 %41, label %112, label %42

42:                                               ; preds = %38
  %43 = icmp eq i32 %28, 3
  %44 = icmp eq i32 %30, 0
  br label %79

45:                                               ; preds = %33, %75
  %46 = phi ptr [ %31, %33 ], [ %77, %75 ]
  %47 = phi i8 [ 0, %33 ], [ %76, %75 ]
  %48 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %46, i64 0, i32 13
  %49 = load i32, ptr %48, align 8, !tbaa !52
  %50 = and i32 %49, 32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %45
  %53 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %46, i32 noundef %11) #5
  %54 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %53, i64 0, i32 5
  %55 = load i32, ptr %54, align 4, !tbaa !56
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %52
  %59 = load i32, ptr %34, align 8, !tbaa !58
  %60 = and i32 %59, 128
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %35, align 8, !tbaa !63
  %64 = getelementptr inbounds %struct.MovieClip, ptr %63, i64 0, i32 11, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !64
  %66 = icmp eq ptr %65, %46
  br i1 %66, label %67, label %75

67:                                               ; preds = %62, %58, %52
  %68 = call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef nonnull %4, ptr noundef %53) #5
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  br i1 %36, label %71, label %72

71:                                               ; preds = %70
  call void @BKE_tracking_track_flag_set(ptr noundef nonnull %46, i32 noundef 7, i32 noundef 1) #5
  br label %75

72:                                               ; preds = %70
  call void @BKE_tracking_track_flag_clear(ptr noundef nonnull %46, i32 noundef 7, i32 noundef 1) #5
  br label %75

73:                                               ; preds = %67
  br i1 %37, label %74, label %75

74:                                               ; preds = %73
  call void @BKE_tracking_track_flag_clear(ptr noundef nonnull %46, i32 noundef 7, i32 noundef 1) #5
  br label %75

75:                                               ; preds = %62, %73, %74, %71, %72, %45
  %76 = phi i8 [ %47, %45 ], [ %47, %62 ], [ 1, %73 ], [ 1, %74 ], [ 1, %71 ], [ 1, %72 ]
  %77 = load ptr, ptr %46, align 8, !tbaa !51
  %78 = icmp eq ptr %77, null
  br i1 %78, label %38, label %45, !llvm.loop !97

79:                                               ; preds = %42, %108
  %80 = phi ptr [ %40, %42 ], [ %110, %108 ]
  %81 = phi i8 [ %39, %42 ], [ %109, %108 ]
  %82 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %80, i64 0, i32 8
  %83 = load i32, ptr %82, align 4, !tbaa !81
  %84 = and i32 %83, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %108

86:                                               ; preds = %79
  %87 = call ptr @BKE_tracking_plane_marker_get(ptr noundef nonnull %80, i32 noundef %11) #5
  br label %88

88:                                               ; preds = %86, %105
  %89 = phi i64 [ 0, %86 ], [ %106, %105 ]
  %90 = getelementptr inbounds [4 x [2 x float]], ptr %87, i64 0, i64 %89
  %91 = call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef nonnull %4, ptr noundef %90) #5
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %88
  %94 = load i32, ptr %82, align 4, !tbaa !81
  br i1 %43, label %95, label %97

95:                                               ; preds = %93
  %96 = or i32 %94, 1
  br label %103

97:                                               ; preds = %93
  %98 = and i32 %94, -2
  br label %103

99:                                               ; preds = %88
  br i1 %44, label %100, label %105

100:                                              ; preds = %99
  %101 = load i32, ptr %82, align 4, !tbaa !81
  %102 = and i32 %101, -2
  br label %103

103:                                              ; preds = %100, %95, %97
  %104 = phi i32 [ %98, %97 ], [ %96, %95 ], [ %102, %100 ]
  store i32 %104, ptr %82, align 4, !tbaa !81
  br label %105

105:                                              ; preds = %103, %99
  %106 = add nuw nsw i64 %89, 1
  %107 = icmp eq i64 %106, 4
  br i1 %107, label %108, label %88, !llvm.loop !98

108:                                              ; preds = %105, %79
  %109 = phi i8 [ %81, %79 ], [ 1, %105 ]
  %110 = load ptr, ptr %80, align 8, !tbaa !51
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %79, !llvm.loop !99

112:                                              ; preds = %108, %38
  %113 = phi i8 [ %39, %38 ], [ %109, %108 ]
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %112
  call void @BKE_tracking_dopesheet_tag_update(ptr noundef nonnull %8) #5
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef null) #5
  br label %116

116:                                              ; preds = %112, %115
  %117 = phi i32 [ 4, %115 ], [ 2, %112 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  ret i32 %117
}

declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @ED_space_clip_tracking_poll(ptr noundef) #1

declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_select_lasso(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_gesture_lasso_invoke, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_gesture_lasso_modal, ptr %5, align 8, !tbaa !91
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @clip_lasso_select_exec, ptr %6, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_gesture_lasso_cancel, ptr %8, align 8, !tbaa !100
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %9, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = tail call ptr @RNA_def_collection_runtime(ptr noundef %11, ptr noundef nonnull @.str.15, ptr noundef nonnull @RNA_OperatorMousePath, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #5
  %13 = load ptr, ptr %10, align 8, !tbaa !48
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #5
  %15 = load ptr, ptr %10, align 8, !tbaa !48
  %16 = tail call ptr @RNA_def_boolean(ptr noundef %15, ptr noundef nonnull @.str.3, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.21) #5
  ret void
}

declare i32 @WM_gesture_lasso_invoke(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @WM_gesture_lasso_modal(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @clip_lasso_select_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.rcti, align 4
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  %7 = call ptr @WM_gesture_lasso_path_to_array(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %123, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.18) #5
  %13 = icmp eq i32 %12, 0
  %14 = load i32, ptr %6, align 4, !tbaa !85
  %15 = call ptr @CTX_wm_space_clip(ptr noundef %0) #5
  %16 = call ptr @CTX_wm_region(ptr noundef %0) #5
  %17 = call ptr @ED_space_clip_get_clip(ptr noundef %15) #5
  %18 = getelementptr inbounds %struct.MovieClip, ptr %17, i64 0, i32 11
  %19 = call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %18) #5
  %20 = call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %18) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  %21 = call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %15) #5
  %22 = shl i32 %14, 16
  %23 = ashr exact i32 %22, 16
  call void @BLI_lasso_boundbox(ptr noundef nonnull %3, ptr noundef nonnull %7, i32 noundef %23) #5
  %24 = load ptr, ptr %19, align 8, !tbaa !51
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %9
  %27 = getelementptr inbounds %struct.SpaceClip, ptr %15, i64 0, i32 12
  %28 = getelementptr inbounds %struct.SpaceClip, ptr %15, i64 0, i32 10
  %29 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  br label %37

30:                                               ; preds = %77, %9
  %31 = phi i8 [ 0, %9 ], [ %78, %77 ]
  %32 = load ptr, ptr %20, align 8, !tbaa !51
  %33 = icmp eq ptr %32, null
  br i1 %33, label %117, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %36 = zext i1 %13 to i32
  br label %81

37:                                               ; preds = %26, %77
  %38 = phi ptr [ %24, %26 ], [ %79, %77 ]
  %39 = phi i8 [ 0, %26 ], [ %78, %77 ]
  %40 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %38, i64 0, i32 13
  %41 = load i32, ptr %40, align 8, !tbaa !52
  %42 = and i32 %41, 32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %77

44:                                               ; preds = %37
  %45 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %38, i32 noundef %21) #5
  %46 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %45, i64 0, i32 5
  %47 = load i32, ptr %46, align 4, !tbaa !56
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %44
  %51 = load i32, ptr %27, align 8, !tbaa !58
  %52 = and i32 %51, 128
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %28, align 8, !tbaa !63
  %56 = getelementptr inbounds %struct.MovieClip, ptr %55, i64 0, i32 11, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !64
  %58 = icmp eq ptr %57, %38
  br i1 %58, label %59, label %77

59:                                               ; preds = %54, %50, %44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  call void @ED_clip_point_stable_pos__reverse(ptr noundef %15, ptr noundef %16, ptr noundef %45, ptr noundef nonnull %4) #5
  %60 = load float, ptr %4, align 4, !tbaa !75
  %61 = fptosi float %60 to i32
  %62 = load float, ptr %29, align 4, !tbaa !75
  %63 = fptosi float %62 to i32
  %64 = call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %3, i32 noundef %61, i32 noundef %63) #5
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %59
  %67 = load float, ptr %4, align 4, !tbaa !75
  %68 = fptosi float %67 to i32
  %69 = load float, ptr %29, align 4, !tbaa !75
  %70 = fptosi float %69 to i32
  %71 = call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef nonnull %7, i32 noundef %23, i32 noundef %68, i32 noundef %70, i32 noundef 12000) #5
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  br i1 %13, label %74, label %75

74:                                               ; preds = %73
  call void @BKE_tracking_track_flag_set(ptr noundef nonnull %38, i32 noundef 7, i32 noundef 1) #5
  br label %76

75:                                               ; preds = %73
  call void @BKE_tracking_track_flag_clear(ptr noundef nonnull %38, i32 noundef 7, i32 noundef 1) #5
  br label %76

76:                                               ; preds = %75, %74, %66, %59
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  br label %77

77:                                               ; preds = %76, %54, %37
  %78 = phi i8 [ %39, %37 ], [ 1, %76 ], [ %39, %54 ]
  %79 = load ptr, ptr %38, align 8, !tbaa !51
  %80 = icmp eq ptr %79, null
  br i1 %80, label %30, label %37, !llvm.loop !101

81:                                               ; preds = %34, %113
  %82 = phi ptr [ %32, %34 ], [ %115, %113 ]
  %83 = phi i8 [ %31, %34 ], [ %114, %113 ]
  %84 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %82, i64 0, i32 8
  %85 = load i32, ptr %84, align 4, !tbaa !81
  %86 = and i32 %85, 2
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %113

88:                                               ; preds = %81
  %89 = call ptr @BKE_tracking_plane_marker_get(ptr noundef nonnull %82, i32 noundef %21) #5
  br label %90

90:                                               ; preds = %88, %110
  %91 = phi i64 [ 0, %88 ], [ %111, %110 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %92 = getelementptr inbounds [4 x [2 x float]], ptr %89, i64 0, i64 %91
  call void @ED_clip_point_stable_pos__reverse(ptr noundef %15, ptr noundef %16, ptr noundef %92, ptr noundef nonnull %5) #5
  %93 = load float, ptr %5, align 4, !tbaa !75
  %94 = fptosi float %93 to i32
  %95 = load float, ptr %35, align 4, !tbaa !75
  %96 = fptosi float %95 to i32
  %97 = call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %3, i32 noundef %94, i32 noundef %96) #5
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %110, label %99

99:                                               ; preds = %90
  %100 = load float, ptr %5, align 4, !tbaa !75
  %101 = fptosi float %100 to i32
  %102 = load float, ptr %35, align 4, !tbaa !75
  %103 = fptosi float %102 to i32
  %104 = call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef nonnull %7, i32 noundef %23, i32 noundef %101, i32 noundef %103, i32 noundef 12000) #5
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %99
  %107 = load i32, ptr %84, align 4, !tbaa !81
  %108 = and i32 %107, -2
  %109 = or disjoint i32 %108, %36
  store i32 %109, ptr %84, align 4, !tbaa !81
  br label %110

110:                                              ; preds = %106, %99, %90
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  %111 = add nuw nsw i64 %91, 1
  %112 = icmp eq i64 %111, 4
  br i1 %112, label %113, label %90, !llvm.loop !102

113:                                              ; preds = %110, %81
  %114 = phi i8 [ %83, %81 ], [ 1, %110 ]
  %115 = load ptr, ptr %82, align 8, !tbaa !51
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %81, !llvm.loop !103

117:                                              ; preds = %113, %30
  %118 = phi i8 [ %31, %30 ], [ %114, %113 ]
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %117
  call void @BKE_tracking_dopesheet_tag_update(ptr noundef nonnull %18) #5
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef null) #5
  br label %121

121:                                              ; preds = %117, %120
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  %122 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %122(ptr noundef nonnull %7) #5
  br label %123

123:                                              ; preds = %2, %121
  %124 = phi i32 [ 4, %121 ], [ 8, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  ret i32 %124
}

declare void @WM_gesture_lasso_cancel(ptr noundef, ptr noundef) #1

declare ptr @RNA_def_collection_runtime(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_select_circle(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.22, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.23, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.24, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_gesture_circle_invoke, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_gesture_circle_modal, ptr %5, align 8, !tbaa !91
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @circle_select_exec, ptr %6, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %8, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.25, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.17, i32 noundef -2147483648, i32 noundef 2147483647) #5
  %12 = load ptr, ptr %9, align 8, !tbaa !48
  %13 = tail call ptr @RNA_def_int(ptr noundef %12, ptr noundef nonnull @.str.27, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.17, i32 noundef -2147483648, i32 noundef 2147483647) #5
  %14 = load ptr, ptr %9, align 8, !tbaa !48
  %15 = tail call ptr @RNA_def_int(ptr noundef %14, ptr noundef nonnull @.str.29, i32 noundef 1, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.17, i32 noundef 1, i32 noundef 2147483647) #5
  %16 = load ptr, ptr %9, align 8, !tbaa !48
  %17 = tail call ptr @RNA_def_int(ptr noundef %16, ptr noundef nonnull @.str.31, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.17, i32 noundef -2147483648, i32 noundef 2147483647) #5
  ret void
}

declare i32 @WM_gesture_circle_invoke(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @WM_gesture_circle_modal(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @circle_select_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca [2 x float], align 4
  %8 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #5
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #5
  %10 = tail call ptr @ED_space_clip_get_clip(ptr noundef %8) #5
  %11 = getelementptr inbounds %struct.MovieClip, ptr %10, i64 0, i32 11
  %12 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %11) #5
  %13 = tail call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %11) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5
  %14 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %8) #5
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  %17 = tail call i32 @RNA_int_get(ptr noundef %16, ptr noundef nonnull @.str.25) #5
  %18 = load ptr, ptr %15, align 8, !tbaa !49
  %19 = tail call i32 @RNA_int_get(ptr noundef %18, ptr noundef nonnull @.str.27) #5
  %20 = load ptr, ptr %15, align 8, !tbaa !49
  %21 = tail call i32 @RNA_int_get(ptr noundef %20, ptr noundef nonnull @.str.29) #5
  %22 = load ptr, ptr %15, align 8, !tbaa !49
  %23 = tail call i32 @RNA_int_get(ptr noundef %22, ptr noundef nonnull @.str.31) #5
  call void @ED_space_clip_get_size(ptr noundef %8, ptr noundef nonnull %3, ptr noundef nonnull %4) #5
  call void @ED_space_clip_get_zoom(ptr noundef %8, ptr noundef %9, ptr noundef nonnull %5, ptr noundef nonnull %6) #5
  %24 = load i32, ptr %3, align 4, !tbaa !85
  %25 = sitofp i32 %24 to float
  %26 = load float, ptr %5, align 4, !tbaa !75
  %27 = fmul float %26, %25
  %28 = sitofp i32 %21 to float
  %29 = fdiv float %27, %28
  %30 = load i32, ptr %4, align 4, !tbaa !85
  %31 = sitofp i32 %30 to float
  %32 = load float, ptr %6, align 4, !tbaa !75
  %33 = fmul float %32, %31
  %34 = fdiv float %33, %28
  %35 = sitofp i32 %17 to float
  %36 = sitofp i32 %19 to float
  %37 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  call void @ED_clip_point_stable_pos(ptr noundef %8, ptr noundef %9, float noundef %35, float noundef %36, ptr noundef nonnull %7, ptr noundef nonnull %37) #5
  %38 = load ptr, ptr %12, align 8, !tbaa !51
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %2
  %41 = getelementptr inbounds %struct.SpaceClip, ptr %8, i64 0, i32 12
  %42 = getelementptr inbounds %struct.SpaceClip, ptr %8, i64 0, i32 10
  %43 = icmp eq i32 %23, 3
  br label %51

44:                                               ; preds = %89, %2
  %45 = phi i8 [ 0, %2 ], [ %90, %89 ]
  %46 = load ptr, ptr %13, align 8, !tbaa !51
  %47 = icmp eq ptr %46, null
  br i1 %47, label %128, label %48

48:                                               ; preds = %44
  %49 = icmp eq i32 %23, 3
  %50 = zext i1 %49 to i32
  br label %93

51:                                               ; preds = %40, %89
  %52 = phi ptr [ %38, %40 ], [ %91, %89 ]
  %53 = phi i8 [ 0, %40 ], [ %90, %89 ]
  %54 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %52, i64 0, i32 13
  %55 = load i32, ptr %54, align 8, !tbaa !52
  %56 = and i32 %55, 32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %89

58:                                               ; preds = %51
  %59 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %52, i32 noundef %14) #5
  %60 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %59, i64 0, i32 5
  %61 = load i32, ptr %60, align 4, !tbaa !56
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %58
  %65 = load i32, ptr %41, align 8, !tbaa !58
  %66 = and i32 %65, 128
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %42, align 8, !tbaa !63
  %70 = getelementptr inbounds %struct.MovieClip, ptr %69, i64 0, i32 11, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !64
  %72 = icmp eq ptr %71, %52
  br i1 %72, label %73, label %89

73:                                               ; preds = %68, %64, %58
  %74 = load float, ptr %59, align 4, !tbaa !75
  %75 = load float, ptr %7, align 4, !tbaa !75
  %76 = fsub float %74, %75
  %77 = fmul float %29, %76
  %78 = getelementptr inbounds float, ptr %59, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !75
  %80 = load float, ptr %37, align 4, !tbaa !75
  %81 = fsub float %79, %80
  %82 = fmul float %34, %81
  %83 = fmul float %82, %82
  %84 = call float @llvm.fmuladd.f32(float %77, float %77, float %83)
  %85 = fcmp uge float %84, 1.000000e+00
  br i1 %85, label %89, label %86

86:                                               ; preds = %73
  br i1 %43, label %87, label %88

87:                                               ; preds = %86
  call void @BKE_tracking_track_flag_set(ptr noundef nonnull %52, i32 noundef 7, i32 noundef 1) #5
  br label %89

88:                                               ; preds = %86
  call void @BKE_tracking_track_flag_clear(ptr noundef nonnull %52, i32 noundef 7, i32 noundef 1) #5
  br label %89

89:                                               ; preds = %68, %73, %88, %87, %51
  %90 = phi i8 [ %53, %51 ], [ %53, %73 ], [ %53, %68 ], [ 1, %88 ], [ 1, %87 ]
  %91 = load ptr, ptr %52, align 8, !tbaa !51
  %92 = icmp eq ptr %91, null
  br i1 %92, label %44, label %51, !llvm.loop !104

93:                                               ; preds = %48, %124
  %94 = phi ptr [ %46, %48 ], [ %126, %124 ]
  %95 = phi i8 [ %45, %48 ], [ %125, %124 ]
  %96 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %94, i64 0, i32 8
  %97 = load i32, ptr %96, align 4, !tbaa !81
  %98 = and i32 %97, 2
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %124

100:                                              ; preds = %93
  %101 = call ptr @BKE_tracking_plane_marker_get(ptr noundef nonnull %94, i32 noundef %14) #5
  %102 = load float, ptr %7, align 4, !tbaa !75
  %103 = load float, ptr %37, align 4, !tbaa !75
  br label %104

104:                                              ; preds = %100, %121
  %105 = phi i64 [ 0, %100 ], [ %122, %121 ]
  %106 = getelementptr inbounds [4 x [2 x float]], ptr %101, i64 0, i64 %105
  %107 = load float, ptr %106, align 4, !tbaa !75
  %108 = fsub float %107, %102
  %109 = fmul float %29, %108
  %110 = getelementptr inbounds float, ptr %106, i64 1
  %111 = load float, ptr %110, align 4, !tbaa !75
  %112 = fsub float %111, %103
  %113 = fmul float %34, %112
  %114 = fmul float %113, %113
  %115 = call float @llvm.fmuladd.f32(float %109, float %109, float %114)
  %116 = fcmp uge float %115, 1.000000e+00
  br i1 %116, label %121, label %117

117:                                              ; preds = %104
  %118 = load i32, ptr %96, align 4, !tbaa !81
  %119 = and i32 %118, -2
  %120 = or disjoint i32 %119, %50
  store i32 %120, ptr %96, align 4, !tbaa !81
  br label %121

121:                                              ; preds = %117, %104
  %122 = add nuw nsw i64 %105, 1
  %123 = icmp eq i64 %122, 4
  br i1 %123, label %124, label %104, !llvm.loop !105

124:                                              ; preds = %121, %93
  %125 = phi i8 [ %95, %93 ], [ 1, %121 ]
  %126 = load ptr, ptr %94, align 8, !tbaa !51
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %93, !llvm.loop !106

128:                                              ; preds = %124, %44
  %129 = phi i8 [ %45, %44 ], [ %125, %124 ]
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %128
  call void @BKE_tracking_dopesheet_tag_update(ptr noundef nonnull %11) #5
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef null) #5
  br label %132

132:                                              ; preds = %128, %131
  %133 = phi i32 [ 4, %131 ], [ 2, %128 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %133
}

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_select_all(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.33, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.34, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.35, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_all_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @select_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #5
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #5
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #5
  %7 = tail call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %5) #5
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.63) #5
  %11 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %3) #5
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %13, label %75

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %15 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 10
  %16 = load ptr, ptr %6, align 8, !tbaa !51
  %17 = icmp eq ptr %16, null
  br i1 %17, label %64, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  br label %20

20:                                               ; preds = %18, %61
  %21 = phi ptr [ %16, %18 ], [ %62, %61 ]
  %22 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %21, i64 0, i32 13
  %23 = load i32, ptr %22, align 8, !tbaa !52
  %24 = and i32 %23, 32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %61

26:                                               ; preds = %20
  %27 = and i32 %23, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %26
  %30 = load i32, ptr %19, align 8, !tbaa !58
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %21, i64 0, i32 14
  %35 = load i32, ptr %34, align 4, !tbaa !76
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33, %29
  %39 = and i32 %30, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %61, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %21, i64 0, i32 15
  %43 = load i32, ptr %42, align 8, !tbaa !77
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %61, label %46

46:                                               ; preds = %41, %33, %26
  %47 = tail call ptr @BKE_tracking_marker_get(ptr noundef nonnull %21, i32 noundef %11) #5
  %48 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %47, i64 0, i32 5
  %49 = load i32, ptr %48, align 4, !tbaa !56
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %46
  %53 = load i32, ptr %14, align 8, !tbaa !58
  %54 = and i32 %53, 128
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %15, align 8, !tbaa !63
  %58 = getelementptr inbounds %struct.MovieClip, ptr %57, i64 0, i32 11, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !64
  %60 = icmp eq ptr %59, %21
  br i1 %60, label %64, label %61

61:                                               ; preds = %20, %38, %41, %56
  %62 = load ptr, ptr %21, align 8, !tbaa !51
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %20, !llvm.loop !107

64:                                               ; preds = %61, %56, %52, %46, %13
  %65 = phi i32 [ 1, %13 ], [ 1, %61 ], [ 2, %56 ], [ 2, %52 ], [ 2, %46 ]
  br label %66

66:                                               ; preds = %70, %64
  %67 = phi ptr [ %7, %64 ], [ %68, %70 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !51
  %69 = icmp eq ptr %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %68, i64 0, i32 8
  %72 = load i32, ptr %71, align 4, !tbaa !81
  %73 = and i32 %72, 3
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %66, !llvm.loop !108

75:                                               ; preds = %70, %66, %2
  %76 = phi i32 [ %10, %2 ], [ %65, %66 ], [ 2, %70 ]
  %77 = load ptr, ptr %6, align 8, !tbaa !51
  %78 = icmp eq ptr %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %81 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 10
  %82 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  br label %87

83:                                               ; preds = %162, %75
  %84 = phi i8 [ 0, %75 ], [ %163, %162 ]
  %85 = load ptr, ptr %7, align 8, !tbaa !51
  %86 = icmp eq ptr %85, null
  br i1 %86, label %191, label %166

87:                                               ; preds = %79, %162
  %88 = phi ptr [ %77, %79 ], [ %164, %162 ]
  %89 = phi i8 [ 0, %79 ], [ %163, %162 ]
  %90 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %88, i64 0, i32 13
  %91 = load i32, ptr %90, align 8, !tbaa !52
  %92 = and i32 %91, 32
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %137

94:                                               ; preds = %87
  %95 = tail call ptr @BKE_tracking_marker_get(ptr noundef nonnull %88, i32 noundef %11) #5
  %96 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %95, i64 0, i32 5
  %97 = load i32, ptr %96, align 4, !tbaa !56
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %94
  %101 = load i32, ptr %80, align 8, !tbaa !58
  %102 = and i32 %101, 128
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  %105 = load ptr, ptr %81, align 8, !tbaa !63
  %106 = getelementptr inbounds %struct.MovieClip, ptr %105, i64 0, i32 11, i32 6
  %107 = load ptr, ptr %106, align 8, !tbaa !64
  %108 = icmp eq ptr %107, %88
  br i1 %108, label %109, label %137

109:                                              ; preds = %104, %100, %94
  switch i32 %76, label %137 [
    i32 1, label %110
    i32 2, label %119
    i32 3, label %128
  ]

110:                                              ; preds = %109
  %111 = load i32, ptr %90, align 8, !tbaa !52
  %112 = or i32 %111, 1
  store i32 %112, ptr %90, align 8, !tbaa !52
  %113 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %88, i64 0, i32 14
  %114 = load i32, ptr %113, align 4, !tbaa !76
  %115 = or i32 %114, 1
  store i32 %115, ptr %113, align 4, !tbaa !76
  %116 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %88, i64 0, i32 15
  %117 = load i32, ptr %116, align 8, !tbaa !77
  %118 = or i32 %117, 1
  store i32 %118, ptr %116, align 8, !tbaa !77
  br label %137

119:                                              ; preds = %109
  %120 = load i32, ptr %90, align 8, !tbaa !52
  %121 = and i32 %120, -2
  store i32 %121, ptr %90, align 8, !tbaa !52
  %122 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %88, i64 0, i32 14
  %123 = load i32, ptr %122, align 4, !tbaa !76
  %124 = and i32 %123, -2
  store i32 %124, ptr %122, align 4, !tbaa !76
  %125 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %88, i64 0, i32 15
  %126 = load i32, ptr %125, align 8, !tbaa !77
  %127 = and i32 %126, -2
  store i32 %127, ptr %125, align 8, !tbaa !77
  br label %137

128:                                              ; preds = %109
  %129 = load i32, ptr %90, align 8, !tbaa !52
  %130 = xor i32 %129, 1
  store i32 %130, ptr %90, align 8, !tbaa !52
  %131 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %88, i64 0, i32 14
  %132 = load i32, ptr %131, align 4, !tbaa !76
  %133 = xor i32 %132, 1
  store i32 %133, ptr %131, align 4, !tbaa !76
  %134 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %88, i64 0, i32 15
  %135 = load i32, ptr %134, align 8, !tbaa !77
  %136 = xor i32 %135, 1
  store i32 %136, ptr %134, align 8, !tbaa !77
  br label %137

137:                                              ; preds = %104, %109, %128, %119, %110, %87
  %138 = load i32, ptr %90, align 8, !tbaa !52
  %139 = and i32 %138, 32
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %162

141:                                              ; preds = %137
  %142 = and i32 %138, 1
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %161

144:                                              ; preds = %141
  %145 = load i32, ptr %82, align 8, !tbaa !58
  %146 = and i32 %145, 1
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %88, i64 0, i32 14
  %150 = load i32, ptr %149, align 4, !tbaa !76
  %151 = and i32 %150, 1
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %148, %144
  %154 = and i32 %145, 2
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %88, i64 0, i32 15
  %158 = load i32, ptr %157, align 8, !tbaa !77
  %159 = and i32 %158, 1
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %156, %148, %141
  br label %162

162:                                              ; preds = %137, %153, %156, %161
  %163 = phi i8 [ 1, %161 ], [ %89, %156 ], [ %89, %153 ], [ %89, %137 ]
  %164 = load ptr, ptr %88, align 8, !tbaa !51
  %165 = icmp eq ptr %164, null
  br i1 %165, label %83, label %87, !llvm.loop !109

166:                                              ; preds = %83, %187
  %167 = phi ptr [ %189, %187 ], [ %85, %83 ]
  %168 = phi i8 [ %188, %187 ], [ %84, %83 ]
  %169 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %167, i64 0, i32 8
  %170 = load i32, ptr %169, align 4, !tbaa !81
  %171 = and i32 %170, 2
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %187

173:                                              ; preds = %166
  switch i32 %76, label %182 [
    i32 1, label %174
    i32 2, label %176
    i32 3, label %178
  ]

174:                                              ; preds = %173
  %175 = or i32 %170, 1
  br label %180

176:                                              ; preds = %173
  %177 = and i32 %170, -4
  br label %180

178:                                              ; preds = %173
  %179 = xor i32 %170, 1
  br label %180

180:                                              ; preds = %174, %176, %178
  %181 = phi i32 [ %179, %178 ], [ %177, %176 ], [ %175, %174 ]
  store i32 %181, ptr %169, align 4, !tbaa !81
  br label %182

182:                                              ; preds = %180, %173
  %183 = load i32, ptr %169, align 4, !tbaa !81
  %184 = and i32 %183, 1
  %185 = icmp eq i32 %184, 0
  %186 = select i1 %185, i8 %168, i8 1
  br label %187

187:                                              ; preds = %182, %166
  %188 = phi i8 [ %168, %166 ], [ %186, %182 ]
  %189 = load ptr, ptr %167, align 8, !tbaa !51
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %166, !llvm.loop !110

191:                                              ; preds = %187, %83
  %192 = phi i8 [ %84, %83 ], [ %188, %187 ]
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %196 = load i32, ptr %195, align 8, !tbaa !58
  %197 = and i32 %196, -5
  store i32 %197, ptr %195, align 8, !tbaa !58
  br label %198

198:                                              ; preds = %194, %191
  tail call void @BKE_tracking_dopesheet_tag_update(ptr noundef nonnull %5) #5
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef null) #5
  ret i32 4
}

declare void @WM_operator_properties_select_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_select_grouped(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.57, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.58, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.59, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_groped_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.60, ptr noundef nonnull @CLIP_OT_select_grouped.select_group_items, i32 noundef 1, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @select_groped_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #5
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #5
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #5
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.60) #5
  %10 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %3) #5
  %11 = load ptr, ptr %6, align 8, !tbaa !51
  %12 = icmp eq ptr %11, null
  br i1 %12, label %120, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  br label %15

15:                                               ; preds = %13, %117
  %16 = phi ptr [ %11, %13 ], [ %118, %117 ]
  %17 = tail call ptr @BKE_tracking_marker_get(ptr noundef nonnull %16, i32 noundef %10) #5
  switch i32 %9, label %96 [
    i32 0, label %18
    i32 1, label %30
    i32 2, label %35
    i32 3, label %47
    i32 4, label %52
    i32 5, label %57
    i32 6, label %90
  ]

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %17, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !111
  %21 = icmp eq i32 %20, %10
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %17, i64 0, i32 5
  %24 = load i32, ptr %23, align 4, !tbaa !56
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br label %27

27:                                               ; preds = %22, %18
  %28 = phi i1 [ false, %18 ], [ %26, %22 ]
  %29 = zext i1 %28 to i8
  br label %96

30:                                               ; preds = %15
  %31 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %17, i64 0, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !111
  %33 = icmp ne i32 %32, %10
  %34 = zext i1 %33 to i8
  br label %96

35:                                               ; preds = %15
  %36 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %17, i64 0, i32 4
  %37 = load i32, ptr %36, align 4, !tbaa !111
  %38 = icmp eq i32 %37, %10
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %17, i64 0, i32 5
  %41 = load i32, ptr %40, align 4, !tbaa !56
  %42 = and i32 %41, 2
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %39, %35
  %45 = phi i1 [ false, %35 ], [ %43, %39 ]
  %46 = zext i1 %45 to i8
  br label %96

47:                                               ; preds = %15
  %48 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 13
  %49 = load i32, ptr %48, align 8, !tbaa !52
  %50 = trunc i32 %49 to i8
  %51 = and i8 %50, 64
  br label %96

52:                                               ; preds = %15
  %53 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %17, i64 0, i32 5
  %54 = load i32, ptr %53, align 4, !tbaa !56
  %55 = trunc i32 %54 to i8
  %56 = and i8 %55, 1
  br label %96

57:                                               ; preds = %15
  %58 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %5) #5
  %59 = icmp eq ptr %58, null
  br i1 %59, label %96, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 13
  %62 = load i32, ptr %61, align 8, !tbaa !52
  %63 = and i32 %62, 128
  %64 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %58, i64 0, i32 13
  %65 = load i32, ptr %64, align 8, !tbaa !52
  %66 = and i32 %65, 128
  %67 = icmp eq i32 %63, %66
  %68 = zext i1 %67 to i8
  %69 = icmp ne i32 %63, 0
  %70 = and i1 %69, %67
  br i1 %70, label %71, label %96

71:                                               ; preds = %60
  %72 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 16
  %73 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %58, i64 0, i32 16
  %74 = load float, ptr %72, align 4, !tbaa !75
  %75 = load float, ptr %73, align 4, !tbaa !75
  %76 = fcmp oeq float %74, %75
  br i1 %76, label %77, label %96

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 16, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !75
  %80 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %58, i64 0, i32 16, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !75
  %82 = fcmp oeq float %79, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 16, i64 2
  %85 = load float, ptr %84, align 4, !tbaa !75
  %86 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %58, i64 0, i32 16, i64 2
  %87 = load float, ptr %86, align 4, !tbaa !75
  %88 = fcmp oeq float %85, %87
  %89 = zext i1 %88 to i8
  br label %96

90:                                               ; preds = %15
  %91 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 13
  %92 = load i32, ptr %91, align 8, !tbaa !52
  %93 = and i32 %92, 2
  %94 = icmp eq i32 %93, 0
  %95 = zext i1 %94 to i8
  br label %96

96:                                               ; preds = %83, %77, %71, %15, %57, %60, %30, %47, %90, %52, %44, %27
  %97 = phi i8 [ %29, %27 ], [ %34, %30 ], [ %46, %44 ], [ %51, %47 ], [ %56, %52 ], [ %95, %90 ], [ %68, %60 ], [ 0, %57 ], [ 0, %15 ], [ 0, %77 ], [ 0, %71 ], [ %89, %83 ]
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %117, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 13
  %101 = load i32, ptr %100, align 8, !tbaa !52
  %102 = or i32 %101, 1
  store i32 %102, ptr %100, align 8, !tbaa !52
  %103 = load i32, ptr %14, align 8, !tbaa !58
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 14
  %108 = load i32, ptr %107, align 4, !tbaa !76
  %109 = or i32 %108, 1
  store i32 %109, ptr %107, align 4, !tbaa !76
  br label %110

110:                                              ; preds = %106, %99
  %111 = and i32 %103, 2
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 15
  %115 = load i32, ptr %114, align 8, !tbaa !77
  %116 = or i32 %115, 1
  store i32 %116, ptr %114, align 8, !tbaa !77
  br label %117

117:                                              ; preds = %110, %113, %96
  %118 = load ptr, ptr %16, align 8, !tbaa !51
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %15, !llvm.loop !112

120:                                              ; preds = %117, %2
  tail call void @BKE_tracking_dopesheet_tag_update(ptr noundef nonnull %5) #5
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 338886656, ptr noundef %4) #5
  ret i32 4
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare ptr @CTX_wm_space_clip(ptr noundef) local_unnamed_addr #1

declare ptr @ED_space_clip_get_clip(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_tracking_get_active_tracks(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_tracking_get_active_plane_tracks(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_tracking_track_get_active(ptr noundef) local_unnamed_addr #1

declare void @BKE_tracking_track_deselect(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BKE_tracking_track_select(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @BKE_tracking_dopesheet_tag_update(ptr noundef) local_unnamed_addr #1

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ED_space_clip_get_clip_frame_number(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_tracking_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare float @dist_squared_to_line_segment_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_tracking_plane_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ED_space_clip_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_tracking_marker_pattern_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

declare void @BKE_tracking_track_flag_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

declare ptr @tracking_marker_check_slide(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_clip_mouse_pos(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_operator_properties_border_to_rcti(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_clip_point_stable_pos(ptr noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_tracking_track_flag_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @WM_gesture_lasso_path_to_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_lasso_boundbox(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ED_clip_point_stable_pos__reverse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BLI_rcti_isect_pt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i8 @BLI_lasso_is_point_inside(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @ED_space_clip_get_zoom(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!51 = !{!36, !36, i64 0}
!52 = !{!53, !54, i64 152}
!53 = !{!"MovieTrackingTrack", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !54, i64 120, !54, i64 124, !36, i64 128, !37, i64 136, !55, i64 148, !54, i64 152, !54, i64 156, !54, i64 160, !37, i64 164, !41, i64 176, !41, i64 178, !41, i64 180, !41, i64 182, !54, i64 184, !55, i64 188, !36, i64 192, !55, i64 200, !55, i64 204}
!54 = !{!"int", !37, i64 0}
!55 = !{!"float", !37, i64 0}
!56 = !{!57, !54, i64 60}
!57 = !{!"MovieTrackingMarker", !37, i64 0, !37, i64 8, !37, i64 40, !37, i64 48, !54, i64 56, !54, i64 60}
!58 = !{!59, !54, i64 208}
!59 = !{!"SpaceClip", !36, i64 0, !36, i64 8, !39, i64 16, !54, i64 32, !55, i64 36, !55, i64 40, !55, i64 44, !55, i64 48, !55, i64 52, !60, i64 56, !36, i64 64, !61, i64 72, !54, i64 208, !41, i64 212, !41, i64 214, !54, i64 216, !37, i64 220, !55, i64 228, !55, i64 232, !54, i64 236, !37, i64 240, !37, i64 304, !54, i64 368, !41, i64 372, !41, i64 374, !54, i64 376, !54, i64 380, !37, i64 384, !62, i64 392}
!60 = !{!"MovieClipUser", !54, i64 0, !41, i64 4, !41, i64 6}
!61 = !{!"MovieClipScopes", !41, i64 0, !41, i64 2, !54, i64 4, !54, i64 8, !54, i64 12, !57, i64 16, !36, i64 80, !36, i64 88, !37, i64 96, !41, i64 104, !41, i64 106, !54, i64 108, !36, i64 112, !36, i64 120, !37, i64 128}
!62 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!63 = !{!59, !36, i64 64}
!64 = !{!65, !36, i64 1432}
!65 = !{!"MovieClip", !66, i64 0, !36, i64 120, !37, i64 128, !54, i64 1152, !54, i64 1156, !37, i64 1160, !55, i64 1168, !55, i64 1172, !36, i64 1176, !36, i64 1184, !36, i64 1192, !67, i64 1200, !36, i64 1528, !73, i64 1536, !54, i64 2312, !54, i64 2316, !54, i64 2320, !54, i64 2324, !74, i64 2328}
!66 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !54, i64 100, !54, i64 104, !54, i64 108, !36, i64 112}
!67 = !{!"MovieTracking", !68, i64 0, !69, i64 72, !39, i64 128, !39, i64 144, !70, i64 160, !71, i64 184, !36, i64 232, !36, i64 240, !39, i64 248, !54, i64 264, !54, i64 268, !36, i64 272, !72, i64 280}
!68 = !{!"MovieTrackingSettings", !54, i64 0, !41, i64 4, !41, i64 6, !55, i64 8, !41, i64 12, !41, i64 14, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !55, i64 24, !41, i64 28, !41, i64 30, !54, i64 32, !54, i64 36, !54, i64 40, !41, i64 44, !41, i64 46, !55, i64 48, !54, i64 52, !54, i64 56, !55, i64 60, !55, i64 64, !54, i64 68}
!69 = !{!"MovieTrackingCamera", !36, i64 0, !41, i64 8, !41, i64 10, !55, i64 12, !55, i64 16, !55, i64 20, !41, i64 24, !41, i64 26, !37, i64 28, !55, i64 36, !55, i64 40, !55, i64 44, !55, i64 48, !55, i64 52}
!70 = !{!"MovieTrackingReconstruction", !54, i64 0, !55, i64 4, !54, i64 8, !54, i64 12, !36, i64 16}
!71 = !{!"MovieTrackingStabilization", !54, i64 0, !54, i64 4, !54, i64 8, !55, i64 12, !36, i64 16, !55, i64 24, !55, i64 28, !55, i64 32, !54, i64 36, !54, i64 40, !55, i64 44}
!72 = !{!"MovieTrackingDopesheet", !54, i64 0, !41, i64 4, !41, i64 6, !39, i64 8, !39, i64 24, !54, i64 40, !54, i64 44}
!73 = !{!"MovieClipProxy", !37, i64 0, !41, i64 768, !41, i64 770, !41, i64 772, !41, i64 774}
!74 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!75 = !{!55, !55, i64 0}
!76 = !{!53, !54, i64 156}
!77 = !{!53, !54, i64 160}
!78 = distinct !{!78, !79, !80}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = !{!82, !54, i64 108}
!82 = !{!"MovieTrackingPlaneTrack", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !54, i64 88, !54, i64 92, !36, i64 96, !54, i64 104, !54, i64 108, !36, i64 112, !55, i64 120, !54, i64 124}
!83 = distinct !{!83, !79, !80}
!84 = distinct !{!84, !79, !80}
!85 = !{!54, !54, i64 0}
!86 = !{!65, !36, i64 1440}
!87 = distinct !{!87, !79, !80}
!88 = !{!59, !55, i64 44}
!89 = !{!59, !55, i64 48}
!90 = !{!59, !41, i64 214}
!91 = !{!35, !36, i64 64}
!92 = !{!93, !54, i64 0}
!93 = !{!"rcti", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12}
!94 = !{!93, !54, i64 8}
!95 = !{!93, !54, i64 4}
!96 = !{!93, !54, i64 12}
!97 = distinct !{!97, !79, !80}
!98 = distinct !{!98, !79, !80}
!99 = distinct !{!99, !79, !80}
!100 = !{!35, !36, i64 56}
!101 = distinct !{!101, !79, !80}
!102 = distinct !{!102, !79, !80}
!103 = distinct !{!103, !79, !80}
!104 = distinct !{!104, !79, !80}
!105 = distinct !{!105, !79, !80}
!106 = distinct !{!106, !79, !80}
!107 = distinct !{!107, !79, !80}
!108 = distinct !{!108, !79, !80}
!109 = distinct !{!109, !79, !80}
!110 = distinct !{!110, !79, !80}
!111 = !{!57, !54, i64 56}
!112 = distinct !{!112, !79, !80}
