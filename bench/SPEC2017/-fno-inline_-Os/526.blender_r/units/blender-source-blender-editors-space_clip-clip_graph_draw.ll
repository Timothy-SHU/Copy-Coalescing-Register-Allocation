; ModuleID = 'blender/source/blender/editors/space_clip/clip_graph_draw.c'
source_filename = "blender/source/blender/editors/space_clip/clip_graph_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.TrackMotionCurveUserData = type { ptr, i8, float, float, float }
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
%struct.TrackErrorCurveUserData = type { ptr, ptr, ptr, ptr, i8, i32, [4 x [4 x float]], i32, i32, float }
%struct.MovieReconstructedCamera = type { i32, float, [4 x [4 x float]] }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }

@draw_curve_knot.displist = internal unnamed_addr global i32 0, align 4
@__const.tracking_segment_start_cb.colors = private unnamed_addr constant [2 x [3 x float]] [[3 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00]], align 16
@__const.tracking_error_segment_start_cb.col = private unnamed_addr constant [4 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @clip_draw_graph(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %7 = load i16, ptr %6, align 8, !tbaa !34
  %8 = sext i16 %7 to i32
  %9 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %10 = load i16, ptr %9, align 2, !tbaa !46
  %11 = sext i16 %10 to i32
  %12 = tail call ptr @UI_view2d_grid_calc(ptr noundef %2, ptr noundef nonnull %5, i16 noundef signext 2, i16 noundef signext 0, i16 noundef signext 3, i16 noundef signext 0, i32 noundef %8, i32 noundef %11) #8
  tail call void @UI_view2d_grid_draw(ptr noundef nonnull %5, ptr noundef %12, i32 noundef 31) #8
  tail call void @UI_view2d_grid_free(ptr noundef %12) #8
  %13 = icmp eq ptr %4, null
  br i1 %13, label %32, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 12
  %16 = load i32, ptr %15, align 8, !tbaa !47
  %17 = and i32 %16, 32768
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  tail call fastcc void @draw_tracks_motion_curves(ptr noundef nonnull %5, ptr noundef nonnull %0) #9
  %20 = load i32, ptr %15, align 8, !tbaa !47
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi i32 [ %20, %19 ], [ %16, %14 ]
  %23 = and i32 %22, 2097152
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  tail call fastcc void @draw_tracks_error_curves(ptr noundef nonnull %0) #9
  %26 = load i32, ptr %15, align 8, !tbaa !47
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi i32 [ %26, %25 ], [ %22, %21 ]
  %29 = and i32 %28, 16384
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call fastcc void @draw_frame_curves(ptr noundef nonnull %0) #9
  br label %32

32:                                               ; preds = %27, %31, %3
  tail call void @clip_draw_sfra_efra(ptr noundef nonnull %5, ptr noundef %2) #8
  tail call void @clip_draw_cfra(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @ED_space_clip_get_clip(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @UI_view2d_grid_calc(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_grid_draw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_grid_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_tracks_motion_curves(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !53 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TrackMotionCurveUserData, align 8
  %6 = tail call ptr @ED_space_clip_get_clip(ptr noundef %1) #8
  %7 = getelementptr inbounds %struct.MovieClip, ptr %6, i64 0, i32 11
  %8 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %9 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 9
  call void @BKE_movieclip_get_size(ptr noundef %6, ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %10 = load i32, ptr %3, align 4, !tbaa !54
  %11 = icmp ne i32 %10, 0
  %12 = load i32, ptr %4, align 4
  %13 = icmp ne i32 %12, 0
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %43

15:                                               ; preds = %2
  %16 = call float @UI_GetThemeValuef(i32 noundef 130) #8
  %17 = getelementptr inbounds %struct.TrackMotionCurveUserData, ptr %5, i64 0, i32 4
  store float %16, ptr %17, align 4, !tbaa !55
  %18 = getelementptr inbounds %struct.TrackMotionCurveUserData, ptr %5, i64 0, i32 1
  store i8 0, ptr %18, align 8, !tbaa !57
  store ptr %8, ptr %5, align 8, !tbaa !58
  %19 = getelementptr inbounds %struct.TrackMotionCurveUserData, ptr %5, i64 0, i32 2
  %20 = getelementptr inbounds %struct.TrackMotionCurveUserData, ptr %5, i64 0, i32 3
  call void @UI_view2d_scale_get(ptr noundef %0, ptr noundef nonnull %19, ptr noundef nonnull %20) #8
  %21 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 12
  %22 = load i32, ptr %21, align 8, !tbaa !47
  %23 = lshr i32 %22, 19
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = lshr i32 %22, 20
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  call void @clip_graph_tracking_values_iterate(ptr noundef %1, i8 noundef zeroext %25, i8 noundef zeroext %28, ptr noundef nonnull %5, ptr noundef nonnull @tracking_segment_knot_cb, ptr noundef null, ptr noundef null) #8
  call void @glEnable(i32 noundef 3042) #8
  %29 = load i32, ptr %21, align 8, !tbaa !47
  %30 = lshr i32 %29, 19
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = lshr i32 %29, 20
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  call void @clip_graph_tracking_values_iterate(ptr noundef %1, i8 noundef zeroext %32, i8 noundef zeroext %35, ptr noundef %8, ptr noundef nonnull @tracking_segment_point_cb, ptr noundef nonnull @tracking_segment_start_cb, ptr noundef nonnull @tracking_segment_end_cb) #8
  call void @glDisable(i32 noundef 3042) #8
  store i8 1, ptr %18, align 8, !tbaa !57
  %36 = load i32, ptr %21, align 8, !tbaa !47
  %37 = lshr i32 %36, 19
  %38 = trunc i32 %37 to i8
  %39 = and i8 %38, 1
  %40 = lshr i32 %36, 20
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  call void @clip_graph_tracking_values_iterate(ptr noundef %1, i8 noundef zeroext %39, i8 noundef zeroext %42, ptr noundef nonnull %5, ptr noundef nonnull @tracking_segment_knot_cb, ptr noundef null, ptr noundef null) #8
  br label %43

43:                                               ; preds = %2, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_tracks_error_curves(ptr noundef %0) unnamed_addr #0 !PGOFuncName !59 {
  %2 = alloca %struct.TrackErrorCurveUserData, align 8
  %3 = tail call ptr @ED_space_clip_get_clip(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.MovieClip, ptr %3, i64 0, i32 11
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %2) #10
  store ptr %3, ptr %2, align 8, !tbaa !60
  %5 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %2, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !62
  %6 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %4) #8
  %7 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %2, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !63
  %8 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %4) #8
  %9 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %2, i64 0, i32 3
  store ptr %8, ptr %9, align 8, !tbaa !64
  %10 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %2, i64 0, i32 4
  store i8 0, ptr %10, align 8, !tbaa !65
  %11 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 9
  %12 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %2, i64 0, i32 7
  %13 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %2, i64 0, i32 8
  call void @BKE_movieclip_get_size(ptr noundef %3, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13) #8
  %14 = getelementptr inbounds %struct.MovieClip, ptr %3, i64 0, i32 11, i32 1, i32 4
  %15 = load float, ptr %14, align 8, !tbaa !66
  %16 = fdiv float 1.000000e+00, %15
  %17 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %2, i64 0, i32 9
  store float %16, ptr %17, align 8, !tbaa !73
  %18 = load i32, ptr %12, align 8, !tbaa !74
  %19 = icmp ne i32 %18, 0
  %20 = load i32, ptr %13, align 4
  %21 = icmp ne i32 %20, 0
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 12
  %25 = load i32, ptr %24, align 8, !tbaa !47
  %26 = lshr i32 %25, 19
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = lshr i32 %25, 20
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  call void @clip_graph_tracking_values_iterate(ptr noundef %0, i8 noundef zeroext %28, i8 noundef zeroext %31, ptr noundef nonnull %2, ptr noundef nonnull @tracking_error_segment_point_cb, ptr noundef nonnull @tracking_error_segment_start_cb, ptr noundef nonnull @tracking_error_segment_end_cb) #8
  br label %32

32:                                               ; preds = %1, %23
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %2) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_frame_curves(ptr noundef %0) unnamed_addr #0 !PGOFuncName !75 {
  %2 = tail call ptr @ED_space_clip_get_clip(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.MovieClip, ptr %2, i64 0, i32 11
  %4 = tail call ptr @BKE_tracking_get_active_reconstruction(ptr noundef nonnull %3) #8
  tail call void @glColor3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #8
  %5 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !76
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %37

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %4, i64 0, i32 4
  br label %10

10:                                               ; preds = %8, %23
  %11 = phi i64 [ 0, %8 ], [ %32, %23 ]
  %12 = phi i1 [ true, %8 ], [ false, %23 ]
  %13 = phi i32 [ 0, %8 ], [ %31, %23 ]
  %14 = load ptr, ptr %9, align 8, !tbaa !77
  %15 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %14, i64 %11
  br i1 %12, label %21, label %16

16:                                               ; preds = %10
  %17 = load i32, ptr %15, align 4, !tbaa !78
  %18 = add nsw i32 %13, 1
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  tail call void @glEnd() #8
  br label %21

21:                                               ; preds = %10, %20
  tail call void @glBegin(i32 noundef 3) #8
  %22 = load i32, ptr %15, align 4, !tbaa !78
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi i32 [ %17, %16 ], [ %22, %21 ]
  %25 = sitofp i32 %24 to float
  %26 = tail call float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef %2, float noundef %25) #8
  %27 = fptosi float %26 to i32
  %28 = sitofp i32 %27 to float
  %29 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %14, i64 %11, i32 1
  %30 = load float, ptr %29, align 4, !tbaa !80
  tail call void @glVertex2f(float noundef %28, float noundef %30) #8
  %31 = load i32, ptr %15, align 4, !tbaa !78
  %32 = add nuw nsw i64 %11, 1
  %33 = load i32, ptr %5, align 4, !tbaa !76
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %32, %34
  br i1 %35, label %10, label %36, !llvm.loop !81

36:                                               ; preds = %23
  tail call void @glEnd() #8
  br label %37

37:                                               ; preds = %1, %36
  ret void
}

; Function Attrs: optsize
declare void @clip_draw_sfra_efra(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @clip_draw_cfra(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BKE_tracking_track_get_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_movieclip_get_size(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @UI_GetThemeValuef(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_scale_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @clip_graph_tracking_values_iterate(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @tracking_segment_knot_cb(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, float noundef %5) #0 !PGOFuncName !83 {
  %7 = load ptr, ptr %0, align 8, !tbaa !58
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %9, label %29

9:                                                ; preds = %6
  %10 = icmp eq i32 %3, 0
  %11 = select i1 %10, i32 4, i32 8
  %12 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 5
  %13 = load i32, ptr %12, align 4, !tbaa !84
  %14 = and i32 %13, %11
  %15 = icmp ne i32 %14, 0
  %16 = getelementptr inbounds %struct.TrackMotionCurveUserData, ptr %0, i64 0, i32 1
  %17 = load i8, ptr %16, align 8, !tbaa !57
  %18 = zext i1 %15 to i8
  %19 = icmp eq i8 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %9
  %21 = select i1 %15, i32 129, i32 128
  tail call void @UI_ThemeColor(i32 noundef %21) #8
  %22 = sitofp i32 %4 to float
  %23 = getelementptr inbounds %struct.TrackMotionCurveUserData, ptr %0, i64 0, i32 2
  %24 = load float, ptr %23, align 4, !tbaa !85
  %25 = getelementptr inbounds %struct.TrackMotionCurveUserData, ptr %0, i64 0, i32 3
  %26 = load float, ptr %25, align 8, !tbaa !86
  %27 = getelementptr inbounds %struct.TrackMotionCurveUserData, ptr %0, i64 0, i32 4
  %28 = load float, ptr %27, align 4, !tbaa !55
  tail call fastcc void @draw_curve_knot(float noundef %22, float noundef %5, float noundef %24, float noundef %26, float noundef %28) #9
  br label %29

29:                                               ; preds = %9, %20, %6
  ret void
}

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @tracking_segment_point_cb(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, i32 %3, i32 noundef %4, float noundef %5) #0 !PGOFuncName !87 {
  %7 = sitofp i32 %4 to float
  tail call void @glVertex2f(float noundef %7, float noundef %5) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @tracking_segment_start_cb(ptr noundef readnone %0, ptr noundef readnone %1, i32 noundef %2) #0 !PGOFuncName !88 {
  %4 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds [2 x [3 x float]], ptr @__const.tracking_segment_start_cb.colors, i64 0, i64 %5
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %6) #9
  %7 = icmp eq ptr %1, %0
  %8 = select i1 %7, float 2.000000e+00, float 1.000000e+00
  %9 = select i1 %7, float 1.000000e+00, float 5.000000e-01
  tail call void @glLineWidth(float noundef %8) #8
  %10 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  store float %9, ptr %10, align 4
  call void @glColor4fv(ptr noundef nonnull %4) #8
  call void @glBegin(i32 noundef 3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @tracking_segment_end_cb(ptr nocapture readnone %0, i32 %1) #0 !PGOFuncName !89 {
  tail call void @glEnd() #8
  tail call void @glLineWidth(float noundef 1.000000e+00) #8
  ret void
}

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_curve_knot(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) unnamed_addr #0 !PGOFuncName !90 {
  %6 = load i32, ptr @draw_curve_knot.displist, align 4, !tbaa !54
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = tail call i32 @glGenLists(i32 noundef 1) #8
  store i32 %9, ptr @draw_curve_knot.displist, align 4, !tbaa !54
  tail call void @glNewList(i32 noundef %9, i32 noundef 4864) #8
  %10 = tail call ptr @gluNewQuadric() #8
  tail call void @gluQuadricDrawStyle(ptr noundef %10, i32 noundef 100013) #8
  tail call void @gluDisk(ptr noundef %10, double noundef 0.000000e+00, double noundef 0x3FE6666666666666, i32 noundef 8, i32 noundef 1) #8
  tail call void @gluDeleteQuadric(ptr noundef %10) #8
  tail call void @glEndList() #8
  br label %11

11:                                               ; preds = %8, %5
  tail call void @glPushMatrix() #8
  tail call void @glTranslatef(float noundef %0, float noundef %1, float noundef 0.000000e+00) #8
  %12 = fdiv float 1.000000e+00, %2
  %13 = fmul float %12, %4
  %14 = fdiv float 1.000000e+00, %3
  %15 = fmul float %14, %4
  tail call void @glScalef(float noundef %13, float noundef %15, float noundef 1.000000e+00) #8
  %16 = load i32, ptr @draw_curve_knot.displist, align 4, !tbaa !54
  tail call void @glCallList(i32 noundef %16) #8
  tail call void @glPopMatrix() #8
  ret void
}

; Function Attrs: optsize
declare i32 @glGenLists(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glNewList(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gluNewQuadric() local_unnamed_addr #2

; Function Attrs: optsize
declare void @gluQuadricDrawStyle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gluDisk(ptr noundef, double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gluDeleteQuadric(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEndList() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPushMatrix() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glCallList(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPopMatrix() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !91 {
  %3 = load float, ptr %1, align 4, !tbaa !92
  store float %3, ptr %0, align 4, !tbaa !92
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !92
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !92
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !92
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !92
  ret void
}

; Function Attrs: optsize
declare void @glLineWidth(float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor4fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_tracking_object_get_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @tracking_error_segment_point_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, float %5) #0 !PGOFuncName !93 {
  %7 = alloca [4 x float], align 16
  %8 = alloca [4 x float], align 16
  %9 = alloca [2 x float], align 4
  %10 = alloca [2 x float], align 4
  %11 = icmp eq i32 %3, 1
  br i1 %11, label %12, label %80

12:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #10
  %13 = load ptr, ptr %0, align 8, !tbaa !60
  %14 = tail call float @BKE_tracking_track_get_weight_for_marker(ptr noundef %13, ptr noundef %1, ptr noundef %2) #8
  %15 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %0, i64 0, i32 4
  %16 = load i8, ptr %15, align 8, !tbaa !65
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %0, i64 0, i32 5
  %20 = load i32, ptr %19, align 4, !tbaa !94
  %21 = icmp eq i32 %20, %4
  br i1 %21, label %32, label %22

22:                                               ; preds = %18, %12
  %23 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !62
  %25 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !63
  %27 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %0, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !74
  %29 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %0, i64 0, i32 8
  %30 = load i32, ptr %29, align 4, !tbaa !95
  %31 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %0, i64 0, i32 6
  tail call void @BKE_tracking_get_projection_matrix(ptr noundef %24, ptr noundef %26, i32 noundef %4, i32 noundef %28, i32 noundef %30, ptr noundef nonnull %31) #8
  br label %32

32:                                               ; preds = %22, %18
  %33 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 11
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %33) #9
  %34 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  store float 1.000000e+00, ptr %34, align 4, !tbaa !92
  %35 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %0, i64 0, i32 6
  call void @mul_v4_m4v4(ptr noundef nonnull %7, ptr noundef nonnull %35, ptr noundef nonnull %8) #8
  %36 = load float, ptr %7, align 16, !tbaa !92
  %37 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  %38 = load float, ptr %37, align 4, !tbaa !92
  %39 = fmul float %38, 2.000000e+00
  %40 = fdiv float %36, %39
  %41 = fadd float %40, 5.000000e-01
  %42 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %0, i64 0, i32 7
  %43 = load i32, ptr %42, align 8, !tbaa !74
  %44 = sitofp i32 %43 to float
  %45 = fmul float %41, %44
  store float %45, ptr %7, align 16, !tbaa !92
  %46 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !92
  %48 = fdiv float %47, %39
  %49 = fadd float %48, 5.000000e-01
  %50 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %0, i64 0, i32 8
  %51 = load i32, ptr %50, align 4, !tbaa !95
  %52 = sitofp i32 %51 to float
  %53 = fmul float %49, %52
  %54 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %0, i64 0, i32 9
  %55 = load float, ptr %54, align 8, !tbaa !73
  %56 = fmul float %55, %53
  store float %56, ptr %46, align 4, !tbaa !92
  %57 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %0, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !62
  call void @BKE_tracking_distort_v2(ptr noundef %58, ptr noundef nonnull %7, ptr noundef nonnull %7) #8
  %59 = load float, ptr %2, align 4, !tbaa !92
  %60 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 7
  %61 = load float, ptr %60, align 8, !tbaa !92
  %62 = fadd float %59, %61
  %63 = load i32, ptr %42, align 8, !tbaa !74
  %64 = sitofp i32 %63 to float
  %65 = fmul float %62, %64
  store float %65, ptr %9, align 4, !tbaa !92
  %66 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !92
  %68 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 7, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !92
  %70 = fadd float %67, %69
  %71 = load i32, ptr %50, align 4, !tbaa !95
  %72 = sitofp i32 %71 to float
  %73 = fmul float %70, %72
  %74 = load float, ptr %54, align 8, !tbaa !73
  %75 = fmul float %74, %73
  %76 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  store float %75, ptr %76, align 4, !tbaa !92
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %10, ptr noundef nonnull %7, ptr noundef nonnull %9) #9
  %77 = call fastcc float @len_v2(ptr noundef nonnull %10) #9
  %78 = fmul float %14, %77
  %79 = sitofp i32 %4 to float
  call void @glVertex2f(float noundef %79, float noundef %78) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  br label %80

80:                                               ; preds = %32, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @tracking_error_segment_start_cb(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) #0 !PGOFuncName !96 {
  %4 = alloca [4 x float], align 16
  %5 = icmp eq i32 %2, 1
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) @__const.tracking_error_segment_start_cb.col, i64 16, i1 false)
  %7 = getelementptr inbounds %struct.TrackErrorCurveUserData, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !64
  %9 = icmp eq ptr %8, %1
  %10 = select i1 %9, float 2.000000e+00, float 1.000000e+00
  %11 = select i1 %9, float 1.000000e+00, float 5.000000e-01
  tail call void @glLineWidth(float noundef %10) #8
  %12 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  store float %11, ptr %12, align 4
  call void @glColor4fv(ptr noundef nonnull %4) #8
  call void @glBegin(i32 noundef 3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  br label %13

13:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @tracking_error_segment_end_cb(ptr nocapture readnone %0, i32 noundef %1) #0 !PGOFuncName !97 {
  %3 = icmp eq i32 %1, 1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @glEnd() #8
  tail call void @glLineWidth(float noundef 1.000000e+00) #8
  br label %5

5:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: optsize
declare float @BKE_tracking_track_get_weight_for_marker(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_tracking_get_projection_matrix(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_v4_m4v4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_tracking_distort_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !98 {
  %4 = load float, ptr %1, align 4, !tbaa !92
  %5 = load float, ptr %2, align 4, !tbaa !92
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !92
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !92
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !92
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !92
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !99 {
  %2 = load float, ptr %0, align 4, !tbaa !92
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !92
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = tail call float @llvm.sqrt.f32(float %6)
  ret float %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: optsize
declare ptr @BKE_tracking_get_active_reconstruction(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind }

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
!53 = !{!"clip_graph_draw.c:draw_tracks_motion_curves"}
!54 = !{!43, !43, i64 0}
!55 = !{!56, !41, i64 20}
!56 = !{!"TrackMotionCurveUserData", !36, i64 0, !37, i64 8, !41, i64 12, !41, i64 16, !41, i64 20}
!57 = !{!56, !37, i64 8}
!58 = !{!56, !36, i64 0}
!59 = !{!"clip_graph_draw.c:draw_tracks_error_curves"}
!60 = !{!61, !36, i64 0}
!61 = !{!"TrackErrorCurveUserData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !43, i64 36, !37, i64 40, !43, i64 104, !43, i64 108, !41, i64 112}
!62 = !{!61, !36, i64 8}
!63 = !{!61, !36, i64 16}
!64 = !{!61, !36, i64 24}
!65 = !{!61, !37, i64 32}
!66 = !{!67, !41, i64 88}
!67 = !{!"MovieTracking", !68, i64 0, !69, i64 72, !45, i64 128, !45, i64 144, !70, i64 160, !71, i64 184, !36, i64 232, !36, i64 240, !45, i64 248, !43, i64 264, !43, i64 268, !36, i64 272, !72, i64 280}
!68 = !{!"MovieTrackingSettings", !43, i64 0, !44, i64 4, !44, i64 6, !41, i64 8, !44, i64 12, !44, i64 14, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !41, i64 24, !44, i64 28, !44, i64 30, !43, i64 32, !43, i64 36, !43, i64 40, !44, i64 44, !44, i64 46, !41, i64 48, !43, i64 52, !43, i64 56, !41, i64 60, !41, i64 64, !43, i64 68}
!69 = !{!"MovieTrackingCamera", !36, i64 0, !44, i64 8, !44, i64 10, !41, i64 12, !41, i64 16, !41, i64 20, !44, i64 24, !44, i64 26, !37, i64 28, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52}
!70 = !{!"MovieTrackingReconstruction", !43, i64 0, !41, i64 4, !43, i64 8, !43, i64 12, !36, i64 16}
!71 = !{!"MovieTrackingStabilization", !43, i64 0, !43, i64 4, !43, i64 8, !41, i64 12, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !43, i64 36, !43, i64 40, !41, i64 44}
!72 = !{!"MovieTrackingDopesheet", !43, i64 0, !44, i64 4, !44, i64 6, !45, i64 8, !45, i64 24, !43, i64 40, !43, i64 44}
!73 = !{!61, !41, i64 112}
!74 = !{!61, !43, i64 104}
!75 = !{!"clip_graph_draw.c:draw_frame_curves"}
!76 = !{!70, !43, i64 12}
!77 = !{!70, !36, i64 16}
!78 = !{!79, !43, i64 0}
!79 = !{!"MovieReconstructedCamera", !43, i64 0, !41, i64 4, !37, i64 8}
!80 = !{!79, !41, i64 4}
!81 = distinct !{!81, !82}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!"clip_graph_draw.c:tracking_segment_knot_cb"}
!84 = !{!51, !43, i64 60}
!85 = !{!56, !41, i64 12}
!86 = !{!56, !41, i64 16}
!87 = !{!"clip_graph_draw.c:tracking_segment_point_cb"}
!88 = !{!"clip_graph_draw.c:tracking_segment_start_cb"}
!89 = !{!"clip_graph_draw.c:tracking_segment_end_cb"}
!90 = !{!"clip_graph_draw.c:draw_curve_knot"}
!91 = !{!"clip_graph_draw.c:copy_v3_v3"}
!92 = !{!41, !41, i64 0}
!93 = !{!"clip_graph_draw.c:tracking_error_segment_point_cb"}
!94 = !{!61, !43, i64 36}
!95 = !{!61, !43, i64 108}
!96 = !{!"clip_graph_draw.c:tracking_error_segment_start_cb"}
!97 = !{!"clip_graph_draw.c:tracking_error_segment_end_cb"}
!98 = !{!"clip_graph_draw.c:sub_v2_v2v2"}
!99 = !{!"clip_graph_draw.c:len_v2"}
