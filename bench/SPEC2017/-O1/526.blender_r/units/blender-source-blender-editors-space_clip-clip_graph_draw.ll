; ModuleID = 'blender/source/blender/editors/space_clip/clip_graph_draw.c'
source_filename = "blender/source/blender/editors/space_clip/clip_graph_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TrackErrorCurveUserData = type { ptr, ptr, ptr, ptr, i8, i32, [4 x [4 x float]], i32, i32, float }
%struct.TrackMotionCurveUserData = type { ptr, i8, float, float, float }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.SpaceClip = type { ptr, ptr, %struct.ListBase, i32, float, float, float, float, float, %struct.MovieClipUser, ptr, %struct.MovieClipScopes, i32, i16, i16, i32, [2 x float], float, float, i32, [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i32, i32, [2 x float], %struct.MaskSpaceInfo }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.MovieClipScopes = type { i16, i16, i32, i32, i32, %struct.MovieTrackingMarker, ptr, ptr, [2 x float], i16, i16, i32, ptr, ptr, [2 x float] }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
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
%struct.MovieReconstructedCamera = type { i32, float, [4 x [4 x float]] }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }

@draw_curve_knot.displist = internal unnamed_addr global i32 0, align 4
@__const.tracking_segment_start_cb.colors = private unnamed_addr constant [2 x [3 x float]] [[3 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00]], align 16
@__const.tracking_error_segment_start_cb.col = private unnamed_addr constant [4 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00], align 16

; Function Attrs: nounwind uwtable
define dso_local void @clip_draw_graph(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.TrackErrorCurveUserData, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TrackMotionCurveUserData, align 8
  %8 = tail call ptr @ED_space_clip_get_clip(ptr noundef %0) #6
  %9 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %10 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %11 = load i16, ptr %10, align 8, !tbaa !34
  %12 = sext i16 %11 to i32
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %14 = load i16, ptr %13, align 2, !tbaa !46
  %15 = sext i16 %14 to i32
  %16 = tail call ptr @UI_view2d_grid_calc(ptr noundef %2, ptr noundef nonnull %9, i16 noundef signext 2, i16 noundef signext 0, i16 noundef signext 3, i16 noundef signext 0, i32 noundef %12, i32 noundef %15) #6
  tail call void @UI_view2d_grid_draw(ptr noundef nonnull %9, ptr noundef %16, i32 noundef 31) #6
  tail call void @UI_view2d_grid_free(ptr noundef %16) #6
  %17 = icmp eq ptr %8, null
  br i1 %17, label %134, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 12
  %20 = load i32, ptr %19, align 8, !tbaa !47
  %21 = and i32 %20, 32768
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %61, label %23

23:                                               ; preds = %18
  %24 = tail call ptr @ED_space_clip_get_clip(ptr noundef %0) #6
  %25 = getelementptr inbounds %struct.MovieClip, ptr %24, i64 0, i32 11
  %26 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %25) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #6
  %27 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 9
  call void @BKE_movieclip_get_size(ptr noundef %24, ptr noundef nonnull %27, ptr noundef nonnull %5, ptr noundef nonnull %6) #6
  %28 = load i32, ptr %5, align 4, !tbaa !53
  %29 = icmp ne i32 %28, 0
  %30 = load i32, ptr %6, align 4
  %31 = icmp ne i32 %30, 0
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %60

33:                                               ; preds = %23
  %34 = call float @UI_GetThemeValuef(i32 noundef 130) #6
  %35 = getelementptr inbounds %struct.TrackMotionCurveUserData, ptr %7, i64 0, i32 4
  store float %34, ptr %35, align 4, !tbaa !54
  %36 = getelementptr inbounds %struct.TrackMotionCurveUserData, ptr %7, i64 0, i32 1
  store i8 0, ptr %36, align 8, !tbaa !56
  store ptr %26, ptr %7, align 8, !tbaa !57
  %37 = getelementptr inbounds %struct.TrackMotionCurveUserData, ptr %7, i64 0, i32 2
  %38 = getelementptr inbounds %struct.TrackMotionCurveUserData, ptr %7, i64 0, i32 3
  call void @UI_view2d_scale_get(ptr noundef nonnull %9, ptr noundef nonnull %37, ptr noundef nonnull %38) #6
  %39 = load i32, ptr %19, align 8, !tbaa !47
  %40 = lshr i32 %39, 19
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  %43 = lshr i32 %39, 20
  %44 = trunc i32 %43 to i8
  %45 = and i8 %44, 1
  call void @clip_graph_tracking_values_iterate(ptr noundef %0, i8 noundef zeroext %42, i8 noundef zeroext %45, ptr noundef nonnull %7, ptr noundef nonnull @tracking_segment_knot_cb, ptr noundef null, ptr noundef null) #6
  call void @glEnable(i32 noundef 3042) #6
  %46 = load i32, ptr %19, align 8, !tbaa !47
  %47 = lshr i32 %46, 19
  %48 = trunc i32 %47 to i8
  %49 = and i8 %48, 1
  %50 = lshr i32 %46, 20
  %51 = trunc i32 %50 to i8
  %52 = and i8 %51, 1
  call void @clip_graph_tracking_values_iterate(ptr noundef %0, i8 noundef zeroext %49, i8 noundef zeroext %52, ptr noundef %26, ptr noundef nonnull @tracking_segment_point_cb, ptr noundef nonnull @tracking_segment_start_cb, ptr noundef nonnull @tracking_segment_end_cb) #6
  call void @glDisable(i32 noundef 3042) #6
  store i8 1, ptr %36, align 8, !tbaa !56
  %53 = load i32, ptr %19, align 8, !tbaa !47
  %54 = lshr i32 %53, 19
  %55 = trunc i32 %54 to i8
  %56 = and i8 %55, 1
  %57 = lshr i32 %53, 20
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  call void @clip_graph_tracking_values_iterate(ptr noundef %0, i8 noundef zeroext %56, i8 noundef zeroext %59, ptr noundef nonnull %7, ptr noundef nonnull @tracking_segment_knot_cb, ptr noundef null, ptr noundef null) #6
  br label %60

60:                                               ; preds = %23, %33
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  br label %61

61:                                               ; preds = %60, %18
  %62 = load i32, ptr %19, align 8, !tbaa !47
  %63 = and i32 %62, 2097152
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %95, label %65

65:                                               ; preds = %61
  %66 = call ptr @ED_space_clip_get_clip(ptr noundef %0) #6
  %67 = getelementptr inbounds %struct.MovieClip, ptr %66, i64 0, i32 11
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #6
  store ptr %66, ptr %4, align 8, !tbaa !58
  %68 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %4, i64 0, i32 1
  store ptr %67, ptr %68, align 8, !tbaa !60
  %69 = call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %67) #6
  %70 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %4, i64 0, i32 2
  store ptr %69, ptr %70, align 8, !tbaa !61
  %71 = call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %67) #6
  %72 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %4, i64 0, i32 3
  store ptr %71, ptr %72, align 8, !tbaa !62
  %73 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %4, i64 0, i32 4
  store i8 0, ptr %73, align 8, !tbaa !63
  %74 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 9
  %75 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %4, i64 0, i32 7
  %76 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %4, i64 0, i32 8
  call void @BKE_movieclip_get_size(ptr noundef %66, ptr noundef nonnull %74, ptr noundef nonnull %75, ptr noundef nonnull %76) #6
  %77 = getelementptr inbounds %struct.MovieClip, ptr %66, i64 0, i32 11, i32 1, i32 4
  %78 = load float, ptr %77, align 8, !tbaa !64
  %79 = fdiv float 1.000000e+00, %78
  %80 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %4, i64 0, i32 9
  store float %79, ptr %80, align 8, !tbaa !71
  %81 = load i32, ptr %75, align 8, !tbaa !72
  %82 = icmp ne i32 %81, 0
  %83 = load i32, ptr %76, align 4
  %84 = icmp ne i32 %83, 0
  %85 = select i1 %82, i1 %84, i1 false
  br i1 %85, label %86, label %94

86:                                               ; preds = %65
  %87 = load i32, ptr %19, align 8, !tbaa !47
  %88 = lshr i32 %87, 19
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = lshr i32 %87, 20
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 1
  call void @clip_graph_tracking_values_iterate(ptr noundef %0, i8 noundef zeroext %90, i8 noundef zeroext %93, ptr noundef nonnull %4, ptr noundef nonnull @tracking_error_segment_point_cb, ptr noundef nonnull @tracking_error_segment_start_cb, ptr noundef nonnull @tracking_error_segment_end_cb) #6
  br label %94

94:                                               ; preds = %65, %86
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #6
  br label %95

95:                                               ; preds = %94, %61
  %96 = load i32, ptr %19, align 8, !tbaa !47
  %97 = and i32 %96, 16384
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %134, label %99

99:                                               ; preds = %95
  %100 = call ptr @ED_space_clip_get_clip(ptr noundef %0) #6
  %101 = getelementptr inbounds %struct.MovieClip, ptr %100, i64 0, i32 11
  %102 = call ptr @BKE_tracking_get_active_reconstruction(ptr noundef nonnull %101) #6
  call void @glColor3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #6
  %103 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %102, i64 0, i32 3
  %104 = load i32, ptr %103, align 4, !tbaa !73
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %134

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %102, i64 0, i32 4
  br label %108

108:                                              ; preds = %106, %120
  %109 = phi i64 [ 0, %106 ], [ %129, %120 ]
  %110 = phi i1 [ true, %106 ], [ false, %120 ]
  %111 = phi i32 [ 0, %106 ], [ %128, %120 ]
  %112 = load ptr, ptr %107, align 8, !tbaa !74
  %113 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %112, i64 %109
  br i1 %110, label %119, label %114

114:                                              ; preds = %108
  %115 = load i32, ptr %113, align 4, !tbaa !75
  %116 = add nsw i32 %111, 1
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %120, label %118

118:                                              ; preds = %114
  call void @glEnd() #6
  br label %119

119:                                              ; preds = %118, %108
  call void @glBegin(i32 noundef 3) #6
  br label %120

120:                                              ; preds = %119, %114
  %121 = load i32, ptr %113, align 4, !tbaa !75
  %122 = sitofp i32 %121 to float
  %123 = call float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef %100, float noundef %122) #6
  %124 = fptosi float %123 to i32
  %125 = sitofp i32 %124 to float
  %126 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %112, i64 %109, i32 1
  %127 = load float, ptr %126, align 4, !tbaa !77
  call void @glVertex2f(float noundef %125, float noundef %127) #6
  %128 = load i32, ptr %113, align 4, !tbaa !75
  %129 = add nuw nsw i64 %109, 1
  %130 = load i32, ptr %103, align 4, !tbaa !73
  %131 = sext i32 %130 to i64
  %132 = icmp slt i64 %129, %131
  br i1 %132, label %108, label %133, !llvm.loop !78

133:                                              ; preds = %120
  call void @glEnd() #6
  br label %134

134:                                              ; preds = %99, %133, %95, %3
  call void @clip_draw_sfra_efra(ptr noundef nonnull %9, ptr noundef %2) #6
  call void @clip_draw_cfra(ptr noundef %0, ptr noundef %1, ptr noundef %2) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @ED_space_clip_get_clip(ptr noundef) local_unnamed_addr #2

declare ptr @UI_view2d_grid_calc(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @UI_view2d_grid_draw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @UI_view2d_grid_free(ptr noundef) local_unnamed_addr #2

declare void @clip_draw_sfra_efra(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @clip_draw_cfra(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @BKE_tracking_track_get_active(ptr noundef) local_unnamed_addr #2

declare void @BKE_movieclip_get_size(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @UI_GetThemeValuef(i32 noundef) local_unnamed_addr #2

declare void @UI_view2d_scale_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @clip_graph_tracking_values_iterate(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @tracking_segment_knot_cb(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, float noundef %5) #0 {
  %7 = load ptr, ptr %0, align 8, !tbaa !57
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %9, label %40

9:                                                ; preds = %6
  %10 = icmp eq i32 %3, 0
  %11 = select i1 %10, i32 4, i32 8
  %12 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 5
  %13 = load i32, ptr %12, align 4, !tbaa !81
  %14 = and i32 %13, %11
  %15 = icmp ne i32 %14, 0
  %16 = getelementptr inbounds %struct.TrackMotionCurveUserData, ptr %0, i64 0, i32 1
  %17 = load i8, ptr %16, align 8, !tbaa !56
  %18 = zext i1 %15 to i8
  %19 = icmp eq i8 %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %9
  %21 = select i1 %15, i32 129, i32 128
  tail call void @UI_ThemeColor(i32 noundef %21) #6
  %22 = sitofp i32 %4 to float
  %23 = getelementptr inbounds %struct.TrackMotionCurveUserData, ptr %0, i64 0, i32 2
  %24 = load float, ptr %23, align 4, !tbaa !82
  %25 = getelementptr inbounds %struct.TrackMotionCurveUserData, ptr %0, i64 0, i32 3
  %26 = load float, ptr %25, align 8, !tbaa !83
  %27 = getelementptr inbounds %struct.TrackMotionCurveUserData, ptr %0, i64 0, i32 4
  %28 = load float, ptr %27, align 4, !tbaa !54
  %29 = load i32, ptr @draw_curve_knot.displist, align 4, !tbaa !53
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = tail call i32 @glGenLists(i32 noundef 1) #6
  store i32 %32, ptr @draw_curve_knot.displist, align 4, !tbaa !53
  tail call void @glNewList(i32 noundef %32, i32 noundef 4864) #6
  %33 = tail call ptr @gluNewQuadric() #6
  tail call void @gluQuadricDrawStyle(ptr noundef %33, i32 noundef 100013) #6
  tail call void @gluDisk(ptr noundef %33, double noundef 0.000000e+00, double noundef 0x3FE6666666666666, i32 noundef 8, i32 noundef 1) #6
  tail call void @gluDeleteQuadric(ptr noundef %33) #6
  tail call void @glEndList() #6
  br label %34

34:                                               ; preds = %20, %31
  tail call void @glPushMatrix() #6
  tail call void @glTranslatef(float noundef %22, float noundef %5, float noundef 0.000000e+00) #6
  %35 = fdiv float 1.000000e+00, %24
  %36 = fmul float %35, %28
  %37 = fdiv float 1.000000e+00, %26
  %38 = fmul float %37, %28
  tail call void @glScalef(float noundef %36, float noundef %38, float noundef 1.000000e+00) #6
  %39 = load i32, ptr @draw_curve_knot.displist, align 4, !tbaa !53
  tail call void @glCallList(i32 noundef %39) #6
  tail call void @glPopMatrix() #6
  br label %40

40:                                               ; preds = %9, %34, %6
  ret void
}

declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @tracking_segment_point_cb(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, i32 %3, i32 noundef %4, float noundef %5) #0 {
  %7 = sitofp i32 %4 to float
  tail call void @glVertex2f(float noundef %7, float noundef %5) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tracking_segment_start_cb(ptr noundef readnone %0, ptr noundef readnone %1, i32 noundef %2) #0 {
  %4 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds [2 x [3 x float]], ptr @__const.tracking_segment_start_cb.colors, i64 0, i64 %5
  %7 = load float, ptr %6, align 4, !tbaa !84
  store float %7, ptr %4, align 16, !tbaa !84
  %8 = getelementptr inbounds float, ptr %6, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !84
  %10 = getelementptr inbounds float, ptr %4, i64 1
  store float %9, ptr %10, align 4, !tbaa !84
  %11 = getelementptr inbounds float, ptr %6, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !84
  %13 = getelementptr inbounds float, ptr %4, i64 2
  store float %12, ptr %13, align 8, !tbaa !84
  %14 = icmp eq ptr %1, %0
  %15 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  %16 = select i1 %14, float 1.000000e+00, float 5.000000e-01
  %17 = select i1 %14, float 2.000000e+00, float 1.000000e+00
  store float %16, ptr %15, align 4, !tbaa !84
  tail call void @glLineWidth(float noundef %17) #6
  call void @glColor4fv(ptr noundef nonnull %4) #6
  call void @glBegin(i32 noundef 3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tracking_segment_end_cb(ptr nocapture readnone %0, i32 %1) #0 {
  tail call void @glEnd() #6
  tail call void @glLineWidth(float noundef 1.000000e+00) #6
  ret void
}

declare void @glDisable(i32 noundef) local_unnamed_addr #2

declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

declare i32 @glGenLists(i32 noundef) local_unnamed_addr #2

declare void @glNewList(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @gluNewQuadric() local_unnamed_addr #2

declare void @gluQuadricDrawStyle(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @gluDisk(ptr noundef, double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @gluDeleteQuadric(ptr noundef) local_unnamed_addr #2

declare void @glEndList() local_unnamed_addr #2

declare void @glPushMatrix() local_unnamed_addr #2

declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glCallList(i32 noundef) local_unnamed_addr #2

declare void @glPopMatrix() local_unnamed_addr #2

declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @glLineWidth(float noundef) local_unnamed_addr #2

declare void @glColor4fv(ptr noundef) local_unnamed_addr #2

declare void @glBegin(i32 noundef) local_unnamed_addr #2

declare void @glEnd() local_unnamed_addr #2

declare ptr @BKE_tracking_object_get_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @tracking_error_segment_point_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, float %5) #0 {
  %7 = alloca [4 x float], align 16
  %8 = alloca [4 x float], align 16
  %9 = icmp eq i32 %3, 1
  br i1 %9, label %10, label %90

10:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6
  %11 = load ptr, ptr %0, align 8, !tbaa !58
  %12 = tail call float @BKE_tracking_track_get_weight_for_marker(ptr noundef %11, ptr noundef %1, ptr noundef %2) #6
  %13 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %0, i64 0, i32 4
  %14 = load i8, ptr %13, align 8, !tbaa !63
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %0, i64 0, i32 5
  %18 = load i32, ptr %17, align 4, !tbaa !85
  %19 = icmp eq i32 %18, %4
  br i1 %19, label %30, label %20

20:                                               ; preds = %16, %10
  %21 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !60
  %23 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !61
  %25 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %0, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !72
  %27 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %0, i64 0, i32 8
  %28 = load i32, ptr %27, align 4, !tbaa !86
  %29 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %0, i64 0, i32 6
  tail call void @BKE_tracking_get_projection_matrix(ptr noundef %22, ptr noundef %24, i32 noundef %4, i32 noundef %26, i32 noundef %28, ptr noundef nonnull %29) #6
  br label %30

30:                                               ; preds = %20, %16
  %31 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 11
  %32 = load float, ptr %31, align 4, !tbaa !84
  store float %32, ptr %8, align 16, !tbaa !84
  %33 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 11, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !84
  %35 = getelementptr inbounds float, ptr %8, i64 1
  store float %34, ptr %35, align 4, !tbaa !84
  %36 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 11, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !84
  %38 = getelementptr inbounds float, ptr %8, i64 2
  store float %37, ptr %38, align 8, !tbaa !84
  %39 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  store float 1.000000e+00, ptr %39, align 4, !tbaa !84
  %40 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %0, i64 0, i32 6
  call void @mul_v4_m4v4(ptr noundef nonnull %7, ptr noundef nonnull %40, ptr noundef nonnull %8) #6
  %41 = load float, ptr %7, align 16, !tbaa !84
  %42 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  %43 = load float, ptr %42, align 4, !tbaa !84
  %44 = fmul float %43, 2.000000e+00
  %45 = fdiv float %41, %44
  %46 = fadd float %45, 5.000000e-01
  %47 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %0, i64 0, i32 7
  %48 = load i32, ptr %47, align 8, !tbaa !72
  %49 = sitofp i32 %48 to float
  %50 = fmul float %46, %49
  store float %50, ptr %7, align 16, !tbaa !84
  %51 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !84
  %53 = fdiv float %52, %44
  %54 = fadd float %53, 5.000000e-01
  %55 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %0, i64 0, i32 8
  %56 = load i32, ptr %55, align 4, !tbaa !86
  %57 = sitofp i32 %56 to float
  %58 = fmul float %54, %57
  %59 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %0, i64 0, i32 9
  %60 = load float, ptr %59, align 8, !tbaa !71
  %61 = fmul float %60, %58
  store float %61, ptr %51, align 4, !tbaa !84
  %62 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %0, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !60
  call void @BKE_tracking_distort_v2(ptr noundef %63, ptr noundef nonnull %7, ptr noundef nonnull %7) #6
  %64 = load float, ptr %2, align 4, !tbaa !84
  %65 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 7
  %66 = load float, ptr %65, align 8, !tbaa !84
  %67 = fadd float %64, %66
  %68 = load i32, ptr %47, align 8, !tbaa !72
  %69 = sitofp i32 %68 to float
  %70 = fmul float %67, %69
  %71 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !84
  %73 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 7, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !84
  %75 = fadd float %72, %74
  %76 = load i32, ptr %55, align 4, !tbaa !86
  %77 = sitofp i32 %76 to float
  %78 = fmul float %75, %77
  %79 = load float, ptr %59, align 8, !tbaa !71
  %80 = fmul float %79, %78
  %81 = load float, ptr %7, align 16, !tbaa !84
  %82 = fsub float %81, %70
  %83 = load float, ptr %51, align 4, !tbaa !84
  %84 = fsub float %83, %80
  %85 = fmul float %84, %84
  %86 = call float @llvm.fmuladd.f32(float %82, float %82, float %85)
  %87 = call float @sqrtf(float noundef %86) #6
  %88 = fmul float %12, %87
  %89 = sitofp i32 %4 to float
  call void @glVertex2f(float noundef %89, float noundef %88) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6
  br label %90

90:                                               ; preds = %30, %6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tracking_error_segment_start_cb(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) #0 {
  %4 = alloca [4 x float], align 16
  %5 = icmp eq i32 %2, 1
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) @__const.tracking_error_segment_start_cb.col, i64 16, i1 false)
  %7 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = icmp eq ptr %8, %1
  %10 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  %11 = select i1 %9, float 1.000000e+00, float 5.000000e-01
  %12 = select i1 %9, float 2.000000e+00, float 1.000000e+00
  store float %11, ptr %10, align 4, !tbaa !84
  tail call void @glLineWidth(float noundef %12) #6
  call void @glColor4fv(ptr noundef nonnull %4) #6
  call void @glBegin(i32 noundef 3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  br label %13

13:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tracking_error_segment_end_cb(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @glEnd() #6
  tail call void @glLineWidth(float noundef 1.000000e+00) #6
  br label %5

5:                                                ; preds = %4, %2
  ret void
}

declare float @BKE_tracking_track_get_weight_for_marker(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_tracking_get_projection_matrix(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_v4_m4v4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_tracking_distort_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare ptr @BKE_tracking_get_active_reconstruction(ptr noundef) local_unnamed_addr #2

declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef, float noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!34 = !{!35, !44, i64 208}
!35 = !{!"ARegion", !36, i64 0, !36, i64 8, !39, i64 16, !42, i64 176, !42, i64 192, !44, i64 208, !44, i64 210, !44, i64 212, !44, i64 214, !44, i64 216, !44, i64 218, !41, i64 220, !44, i64 224, !44, i64 226, !44, i64 228, !44, i64 230, !44, i64 232, !44, i64 234, !44, i64 236, !44, i64 238, !36, i64 240, !45, i64 248, !45, i64 264, !45, i64 280, !45, i64 296, !45, i64 312, !45, i64 328, !45, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"View2D", !40, i64 0, !40, i64 16, !42, i64 32, !42, i64 48, !42, i64 64, !37, i64 80, !37, i64 88, !41, i64 96, !41, i64 100, !44, i64 104, !44, i64 106, !44, i64 108, !44, i64 110, !44, i64 112, !44, i64 114, !44, i64 116, !44, i64 118, !44, i64 120, !44, i64 122, !44, i64 124, !44, i64 126, !36, i64 128, !43, i64 136, !43, i64 140, !36, i64 144, !36, i64 152}
!40 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!41 = !{!"float", !37, i64 0}
!42 = !{!"rcti", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!43 = !{!"int", !37, i64 0}
!44 = !{!"short", !37, i64 0}
!45 = !{!"ListBase", !36, i64 0, !36, i64 8}
!46 = !{!35, !44, i64 210}
!47 = !{!48, !43, i64 208}
!48 = !{!"SpaceClip", !36, i64 0, !36, i64 8, !45, i64 16, !43, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !49, i64 56, !36, i64 64, !50, i64 72, !43, i64 208, !44, i64 212, !44, i64 214, !43, i64 216, !37, i64 220, !41, i64 228, !41, i64 232, !43, i64 236, !37, i64 240, !37, i64 304, !43, i64 368, !44, i64 372, !44, i64 374, !43, i64 376, !43, i64 380, !37, i64 384, !52, i64 392}
!49 = !{!"MovieClipUser", !43, i64 0, !44, i64 4, !44, i64 6}
!50 = !{!"MovieClipScopes", !44, i64 0, !44, i64 2, !43, i64 4, !43, i64 8, !43, i64 12, !51, i64 16, !36, i64 80, !36, i64 88, !37, i64 96, !44, i64 104, !44, i64 106, !43, i64 108, !36, i64 112, !36, i64 120, !37, i64 128}
!51 = !{!"MovieTrackingMarker", !37, i64 0, !37, i64 8, !37, i64 40, !37, i64 48, !43, i64 56, !43, i64 60}
!52 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!53 = !{!43, !43, i64 0}
!54 = !{!55, !41, i64 20}
!55 = !{!"TrackMotionCurveUserData", !36, i64 0, !37, i64 8, !41, i64 12, !41, i64 16, !41, i64 20}
!56 = !{!55, !37, i64 8}
!57 = !{!55, !36, i64 0}
!58 = !{!59, !36, i64 0}
!59 = !{!"TrackErrorCurveUserData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !43, i64 36, !37, i64 40, !43, i64 104, !43, i64 108, !41, i64 112}
!60 = !{!59, !36, i64 8}
!61 = !{!59, !36, i64 16}
!62 = !{!59, !36, i64 24}
!63 = !{!59, !37, i64 32}
!64 = !{!65, !41, i64 88}
!65 = !{!"MovieTracking", !66, i64 0, !67, i64 72, !45, i64 128, !45, i64 144, !68, i64 160, !69, i64 184, !36, i64 232, !36, i64 240, !45, i64 248, !43, i64 264, !43, i64 268, !36, i64 272, !70, i64 280}
!66 = !{!"MovieTrackingSettings", !43, i64 0, !44, i64 4, !44, i64 6, !41, i64 8, !44, i64 12, !44, i64 14, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !41, i64 24, !44, i64 28, !44, i64 30, !43, i64 32, !43, i64 36, !43, i64 40, !44, i64 44, !44, i64 46, !41, i64 48, !43, i64 52, !43, i64 56, !41, i64 60, !41, i64 64, !43, i64 68}
!67 = !{!"MovieTrackingCamera", !36, i64 0, !44, i64 8, !44, i64 10, !41, i64 12, !41, i64 16, !41, i64 20, !44, i64 24, !44, i64 26, !37, i64 28, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52}
!68 = !{!"MovieTrackingReconstruction", !43, i64 0, !41, i64 4, !43, i64 8, !43, i64 12, !36, i64 16}
!69 = !{!"MovieTrackingStabilization", !43, i64 0, !43, i64 4, !43, i64 8, !41, i64 12, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !43, i64 36, !43, i64 40, !41, i64 44}
!70 = !{!"MovieTrackingDopesheet", !43, i64 0, !44, i64 4, !44, i64 6, !45, i64 8, !45, i64 24, !43, i64 40, !43, i64 44}
!71 = !{!59, !41, i64 112}
!72 = !{!59, !43, i64 104}
!73 = !{!68, !43, i64 12}
!74 = !{!68, !36, i64 16}
!75 = !{!76, !43, i64 0}
!76 = !{!"MovieReconstructedCamera", !43, i64 0, !41, i64 4, !37, i64 8}
!77 = !{!76, !41, i64 4}
!78 = distinct !{!78, !79, !80}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = !{!51, !43, i64 60}
!82 = !{!55, !41, i64 12}
!83 = !{!55, !41, i64 16}
!84 = !{!41, !41, i64 0}
!85 = !{!59, !43, i64 36}
!86 = !{!59, !43, i64 108}
