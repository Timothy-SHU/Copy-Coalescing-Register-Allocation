; ModuleID = 'blender/source/blender/editors/space_clip/clip_utils.c'
source_filename = "blender/source/blender/editors/space_clip/clip_utils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SpaceClip = type { ptr, ptr, %struct.ListBase, i32, float, float, float, float, float, %struct.MovieClipUser, ptr, %struct.MovieClipScopes, i32, i16, i16, i32, [2 x float], float, float, i32, [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i32, i32, [2 x float], %struct.MaskSpaceInfo }
%struct.ListBase = type { ptr, ptr }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.MovieClipScopes = type { i16, i16, i32, i32, i32, %struct.MovieTrackingMarker, ptr, ptr, [2 x float], i16, i16, i32, ptr, ptr, [2 x float] }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }
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
%struct.MovieTrackingPlaneTrack = type { ptr, ptr, [64 x i8], ptr, i32, i32, ptr, i32, i32, ptr, float, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
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

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"new point tracks array\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"tracks[\22%s\22]\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @clip_graph_tracking_values_iterate_track(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef readonly %4, ptr noundef readonly %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = tail call ptr @ED_space_clip_get_clip(ptr noundef %0) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #3
  %10 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 9
  call void @BKE_movieclip_get_size(ptr noundef %9, ptr noundef nonnull %10, ptr noundef nonnull %7, ptr noundef nonnull %8) #3
  %11 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 8
  %12 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 10
  %13 = icmp eq ptr %5, null
  %14 = icmp eq ptr %4, null
  %15 = icmp eq ptr %3, null
  %16 = icmp ne ptr %5, null
  br label %17

17:                                               ; preds = %6, %83
  %18 = phi i64 [ 0, %6 ], [ %84, %83 ]
  %19 = load i32, ptr %11, align 8, !tbaa !34
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %77

21:                                               ; preds = %17
  %22 = icmp eq i64 %18, 0
  %23 = trunc i64 %18 to i32
  %24 = trunc i64 %18 to i32
  %25 = trunc i64 %18 to i32
  br label %26

26:                                               ; preds = %21, %69
  %27 = phi i64 [ 0, %21 ], [ %73, %69 ]
  %28 = phi float [ 0.000000e+00, %21 ], [ %72, %69 ]
  %29 = phi i8 [ 0, %21 ], [ %71, %69 ]
  %30 = phi i32 [ 0, %21 ], [ %70, %69 ]
  %31 = load ptr, ptr %12, align 8, !tbaa !42
  %32 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %31, i64 %27
  %33 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %31, i64 %27, i32 5
  %34 = load i32, ptr %33, align 4, !tbaa !43
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  %37 = icmp eq i8 %29, 0
  br i1 %36, label %41, label %38

38:                                               ; preds = %26
  %39 = or i1 %13, %37
  br i1 %39, label %69, label %40

40:                                               ; preds = %38
  call void %5(ptr noundef %2, i32 noundef %23) #3
  br label %69

41:                                               ; preds = %26
  br i1 %37, label %42, label %47

42:                                               ; preds = %41
  br i1 %14, label %44, label %43

43:                                               ; preds = %42
  call void %4(ptr noundef %2, ptr noundef %1, i32 noundef %24) #3
  br label %44

44:                                               ; preds = %43, %42
  %45 = getelementptr inbounds [2 x float], ptr %32, i64 0, i64 %18
  %46 = load float, ptr %45, align 4, !tbaa !45
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi float [ %28, %41 ], [ %46, %44 ]
  %49 = getelementptr inbounds [2 x float], ptr %32, i64 0, i64 %18
  %50 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %31, i64 %27, i32 4
  br i1 %15, label %66, label %51

51:                                               ; preds = %47
  %52 = load float, ptr %49, align 4, !tbaa !45
  %53 = fsub float %52, %48
  %54 = load i32, ptr %7, align 4
  %55 = load i32, ptr %8, align 4
  %56 = select i1 %22, i32 %54, i32 %55
  %57 = sitofp i32 %56 to float
  %58 = fmul float %53, %57
  %59 = load i32, ptr %50, align 4, !tbaa !46
  %60 = sub nsw i32 %59, %30
  %61 = sitofp i32 %60 to float
  %62 = fdiv float %58, %61
  %63 = sitofp i32 %59 to float
  %64 = call float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef %9, float noundef %63) #3
  %65 = fptosi float %64 to i32
  call void %3(ptr noundef %2, ptr noundef %1, ptr noundef %32, i32 noundef %25, i32 noundef %65, float noundef %62) #3
  br label %66

66:                                               ; preds = %51, %47
  %67 = load float, ptr %49, align 4, !tbaa !45
  %68 = load i32, ptr %50, align 4, !tbaa !46
  br label %69

69:                                               ; preds = %38, %40, %66
  %70 = phi i32 [ %68, %66 ], [ %30, %40 ], [ %30, %38 ]
  %71 = phi i8 [ 1, %66 ], [ 0, %40 ], [ 0, %38 ]
  %72 = phi float [ %67, %66 ], [ %28, %40 ], [ %28, %38 ]
  %73 = add nuw nsw i64 %27, 1
  %74 = load i32, ptr %11, align 8, !tbaa !34
  %75 = sext i32 %74 to i64
  %76 = icmp slt i64 %73, %75
  br i1 %76, label %26, label %77, !llvm.loop !47

77:                                               ; preds = %69, %17
  %78 = phi i8 [ 0, %17 ], [ %71, %69 ]
  %79 = icmp ne i8 %78, 0
  %80 = and i1 %16, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = trunc i64 %18 to i32
  call void %5(ptr noundef %2, i32 noundef %82) #3
  br label %83

83:                                               ; preds = %81, %77
  %84 = add nuw nsw i64 %18, 1
  %85 = icmp eq i64 %18, 0
  br i1 %85, label %17, label %86, !llvm.loop !50

86:                                               ; preds = %83
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @ED_space_clip_get_clip(ptr noundef) local_unnamed_addr #2

declare void @BKE_movieclip_get_size(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @clip_graph_tracking_values_iterate(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = tail call ptr @ED_space_clip_get_clip(ptr noundef %0) #3
  %9 = getelementptr inbounds %struct.MovieClip, ptr %8, i64 0, i32 11
  %10 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %9) #3
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = icmp eq ptr %11, null
  br i1 %12, label %43, label %13

13:                                               ; preds = %7
  %14 = icmp eq i8 %2, 0
  %15 = icmp eq i8 %1, 0
  br label %16

16:                                               ; preds = %13, %40
  %17 = phi ptr [ %11, %13 ], [ %41, %40 ]
  br i1 %14, label %18, label %23

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %17, i64 0, i32 13
  %20 = load i32, ptr %19, align 8, !tbaa !52
  %21 = and i32 %20, 32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %18, %16
  br i1 %15, label %39, label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %17, i64 0, i32 13
  %26 = load i32, ptr %25, align 8, !tbaa !52
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %17, i64 0, i32 14
  %31 = load i32, ptr %30, align 4, !tbaa !53
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %17, i64 0, i32 15
  %36 = load i32, ptr %35, align 8, !tbaa !54
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34, %29, %24, %23
  tail call void @clip_graph_tracking_values_iterate_track(ptr noundef %0, ptr noundef nonnull %17, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  br label %40

40:                                               ; preds = %34, %18, %39
  %41 = load ptr, ptr %17, align 8, !tbaa !51
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %16, !llvm.loop !55

43:                                               ; preds = %40, %7
  ret void
}

declare ptr @BKE_tracking_get_active_tracks(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @clip_graph_tracking_iterate(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef readonly %4) local_unnamed_addr #0 {
  %6 = tail call ptr @ED_space_clip_get_clip(ptr noundef %0) #3
  %7 = getelementptr inbounds %struct.MovieClip, ptr %6, i64 0, i32 11
  %8 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %7) #3
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = icmp eq ptr %9, null
  br i1 %10, label %62, label %11

11:                                               ; preds = %5
  %12 = icmp eq i8 %2, 0
  %13 = icmp eq i8 %1, 0
  %14 = icmp eq ptr %4, null
  br label %15

15:                                               ; preds = %11, %59
  %16 = phi ptr [ %9, %11 ], [ %60, %59 ]
  br i1 %12, label %17, label %22

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 13
  %19 = load i32, ptr %18, align 8, !tbaa !52
  %20 = and i32 %19, 32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %59

22:                                               ; preds = %17, %15
  br i1 %13, label %38, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 13
  %25 = load i32, ptr %24, align 8, !tbaa !52
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 14
  %30 = load i32, ptr %29, align 4, !tbaa !53
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 15
  %35 = load i32, ptr %34, align 8, !tbaa !54
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %59, label %38

38:                                               ; preds = %33, %28, %23, %22
  %39 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 8
  %40 = load i32, ptr %39, align 8, !tbaa !34
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 10
  br label %44

44:                                               ; preds = %42, %54
  %45 = phi i64 [ 0, %42 ], [ %55, %54 ]
  %46 = load ptr, ptr %43, align 8, !tbaa !42
  %47 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %46, i64 %45, i32 5
  %48 = load i32, ptr %47, align 4, !tbaa !43
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  %51 = or i1 %14, %50
  br i1 %51, label %54, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %46, i64 %45
  tail call void %4(ptr noundef %3, ptr noundef %53) #3
  br label %54

54:                                               ; preds = %52, %44
  %55 = add nuw nsw i64 %45, 1
  %56 = load i32, ptr %39, align 8, !tbaa !34
  %57 = sext i32 %56 to i64
  %58 = icmp slt i64 %55, %57
  br i1 %58, label %44, label %59, !llvm.loop !56

59:                                               ; preds = %54, %38, %33, %17
  %60 = load ptr, ptr %16, align 8, !tbaa !51
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %15, !llvm.loop !57

62:                                               ; preds = %59, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @clip_delete_track(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [64 x i8], align 16
  %5 = alloca [128 x i8], align 16
  %6 = getelementptr inbounds %struct.MovieClip, ptr %1, i64 0, i32 11
  %7 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %6) #3
  %8 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %6) #3
  %9 = tail call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %6) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #3
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #3
  %10 = icmp eq ptr %7, %2
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.MovieClip, ptr %1, i64 0, i32 11, i32 6
  store ptr null, ptr %12, align 8, !tbaa !58
  br label %13

13:                                               ; preds = %11, %3
  %14 = getelementptr inbounds %struct.MovieClip, ptr %1, i64 0, i32 11, i32 5, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  %16 = icmp eq ptr %15, %2
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store ptr null, ptr %14, align 8, !tbaa !66
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2, i64 0, i32 13
  %20 = load i32, ptr %19, align 8, !tbaa !52
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  %23 = load ptr, ptr %9, align 8, !tbaa !67
  %24 = icmp eq ptr %23, null
  br i1 %24, label %79, label %25

25:                                               ; preds = %18, %77
  %26 = phi ptr [ %27, %77 ], [ %23, %18 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !68
  %28 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %26, i64 0, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !70
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %77

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %26, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !71
  %34 = zext nneg i32 %29 to i64
  br label %38

35:                                               ; preds = %38
  %36 = add nuw nsw i64 %39, 1
  %37 = icmp eq i64 %36, %34
  br i1 %37, label %77, label %38, !llvm.loop !72

38:                                               ; preds = %31, %35
  %39 = phi i64 [ 0, %31 ], [ %36, %35 ]
  %40 = getelementptr inbounds ptr, ptr %33, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !51
  %42 = icmp eq ptr %41, %2
  br i1 %42, label %43, label %35

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %26, i64 0, i32 4
  %45 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %26, i64 0, i32 3
  %46 = icmp sgt i32 %29, 4
  br i1 %46, label %47, label %76

47:                                               ; preds = %43
  %48 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %49 = zext nneg i32 %29 to i64
  %50 = shl nuw nsw i64 %49, 3
  %51 = tail call ptr %48(i64 noundef %50, ptr noundef nonnull @.str) #3
  %52 = load i32, ptr %44, align 8, !tbaa !70
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %47
  %55 = zext nneg i32 %52 to i64
  br label %56

56:                                               ; preds = %54, %67
  %57 = phi i64 [ 0, %54 ], [ %69, %67 ]
  %58 = phi i32 [ 0, %54 ], [ %68, %67 ]
  %59 = load ptr, ptr %45, align 8, !tbaa !71
  %60 = getelementptr inbounds ptr, ptr %59, i64 %57
  %61 = load ptr, ptr %60, align 8, !tbaa !51
  %62 = icmp eq ptr %61, %2
  br i1 %62, label %67, label %63

63:                                               ; preds = %56
  %64 = add nsw i32 %58, 1
  %65 = sext i32 %58 to i64
  %66 = getelementptr inbounds ptr, ptr %51, i64 %65
  store ptr %61, ptr %66, align 8, !tbaa !51
  br label %67

67:                                               ; preds = %56, %63
  %68 = phi i32 [ %64, %63 ], [ %58, %56 ]
  %69 = add nuw nsw i64 %57, 1
  %70 = icmp eq i64 %69, %55
  br i1 %70, label %71, label %56, !llvm.loop !73

71:                                               ; preds = %67, %47
  %72 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  %73 = load ptr, ptr %45, align 8, !tbaa !71
  tail call void %72(ptr noundef %73) #3
  store ptr %51, ptr %45, align 8, !tbaa !71
  %74 = load i32, ptr %44, align 8, !tbaa !70
  %75 = add nsw i32 %74, -1
  store i32 %75, ptr %44, align 8, !tbaa !70
  br label %77

76:                                               ; preds = %43
  tail call void @BKE_tracking_plane_track_free(ptr noundef nonnull %26) #3
  tail call void @BLI_freelinkN(ptr noundef nonnull %9, ptr noundef nonnull %26) #3
  br label %77

77:                                               ; preds = %35, %25, %71, %76
  %78 = icmp eq ptr %27, null
  br i1 %78, label %79, label %25, !llvm.loop !74

79:                                               ; preds = %77, %18
  %80 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2, i64 0, i32 2
  %81 = call i64 @BLI_strescape(ptr noundef nonnull %4, ptr noundef nonnull %80, i64 noundef 64) #3
  %82 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 128, ptr noundef nonnull @.str.1, ptr noundef nonnull %4) #3
  call void @BKE_animdata_fix_paths_remove(ptr noundef %1, ptr noundef nonnull %5) #3
  call void @BKE_tracking_track_free(ptr noundef %2) #3
  call void @BLI_freelinkN(ptr noundef %8, ptr noundef %2) #3
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef %1) #3
  br i1 %16, label %83, label %85

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.MovieClip, ptr %1, i64 0, i32 11, i32 5, i32 9
  store i32 0, ptr %84, align 8, !tbaa !75
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 338886656, ptr noundef %1) #3
  br label %85

85:                                               ; preds = %83, %79
  call void @DAG_id_tag_update(ptr noundef %1, i16 noundef signext 0) #3
  br i1 %22, label %87, label %86

86:                                               ; preds = %85
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef null) #3
  br label %87

87:                                               ; preds = %86, %85
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #3
  ret void
}

declare ptr @BKE_tracking_track_get_active(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_get_active_plane_tracks(ptr noundef) local_unnamed_addr #2

declare void @BKE_tracking_plane_track_free(ptr noundef) local_unnamed_addr #2

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @BLI_strescape(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BKE_animdata_fix_paths_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_tracking_track_free(ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @clip_delete_marker(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @clip_delete_track(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %12

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %3, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !46
  tail call void @BKE_tracking_marker_delete(ptr noundef %2, i32 noundef %11) #3
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef %1) #3
  br label %12

12:                                               ; preds = %9, %8
  ret void
}

declare void @BKE_tracking_marker_delete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @clip_view_center_to_point(ptr noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #3
  call void @ED_space_clip_get_size(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #3
  call void @ED_space_clip_get_aspect(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #3
  %8 = fadd float %1, -5.000000e-01
  %9 = load i32, ptr %4, align 4, !tbaa !76
  %10 = sitofp i32 %9 to float
  %11 = fmul float %8, %10
  %12 = load float, ptr %6, align 4, !tbaa !45
  %13 = fmul float %12, %11
  %14 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 4
  store float %13, ptr %14, align 4, !tbaa !77
  %15 = fadd float %2, -5.000000e-01
  %16 = load i32, ptr %5, align 4, !tbaa !76
  %17 = sitofp i32 %16 to float
  %18 = fmul float %15, %17
  %19 = load float, ptr %7, align 4, !tbaa !45
  %20 = fmul float %19, %18
  %21 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 5
  store float %20, ptr %21, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #3
  ret void
}

declare void @ED_space_clip_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_space_clip_get_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @clip_draw_cfra(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca [2 x float], align 4
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #3
  %8 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !83
  %10 = sitofp i32 %9 to float
  %11 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 15
  %12 = load float, ptr %11, align 4, !tbaa !84
  %13 = fmul float %12, %10
  store float %13, ptr %6, align 4, !tbaa !45
  tail call void @UI_ThemeColor(i32 noundef 49) #3
  tail call void @glLineWidth(float noundef 2.000000e+00) #3
  tail call void @glBegin(i32 noundef 3) #3
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %15 = load float, ptr %14, align 8, !tbaa !105
  %16 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  store float %15, ptr %16, align 4, !tbaa !45
  call void @glVertex2fv(ptr noundef nonnull %6) #3
  %17 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %18 = load float, ptr %17, align 4, !tbaa !107
  store float %18, ptr %16, align 4, !tbaa !45
  call void @glVertex2fv(ptr noundef nonnull %6) #3
  call void @glEnd() #3
  call void @glLineWidth(float noundef 1.000000e+00) #3
  call void @UI_view2d_view_orthoSpecial(ptr noundef %1, ptr noundef nonnull %7, i8 noundef zeroext 1) #3
  call void @UI_view2d_scale_get(ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %5) #3
  %19 = load float, ptr %4, align 4, !tbaa !45
  %20 = fdiv float 1.000000e+00, %19
  call void @glScalef(float noundef %20, float noundef 1.000000e+00, float noundef 1.000000e+00) #3
  %21 = load i32, ptr %8, align 8, !tbaa !83
  %22 = sitofp i32 %21 to float
  %23 = load float, ptr %4, align 4, !tbaa !45
  %24 = fmul float %23, %22
  call void @ED_region_cache_draw_curfra_label(i32 noundef %21, float noundef %24, float noundef 1.800000e+01) #3
  %25 = load float, ptr %4, align 4, !tbaa !45
  call void @glScalef(float noundef %25, float noundef 1.000000e+00, float noundef 1.000000e+00) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #3
  ret void
}

declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

declare void @glLineWidth(float noundef) local_unnamed_addr #2

declare void @glBegin(i32 noundef) local_unnamed_addr #2

declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

declare void @glEnd() local_unnamed_addr #2

declare void @UI_view2d_view_orthoSpecial(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @UI_view2d_scale_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @ED_region_cache_draw_curfra_label(i32 noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @clip_draw_sfra_efra(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void @UI_view2d_view_ortho(ptr noundef %0) #3
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #3
  tail call void @glEnable(i32 noundef 3042) #3
  tail call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x3FD99999A0000000) #3
  %3 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %4 = load float, ptr %3, align 8, !tbaa !108
  %5 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %6 = load float, ptr %5, align 8, !tbaa !105
  %7 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !109
  %9 = sitofp i32 %8 to float
  %10 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %11 = load float, ptr %10, align 4, !tbaa !107
  tail call void @glRectf(float noundef %4, float noundef %6, float noundef %9, float noundef %11) #3
  %12 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !110
  %14 = sitofp i32 %13 to float
  %15 = load float, ptr %5, align 8, !tbaa !105
  %16 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %17 = load float, ptr %16, align 4, !tbaa !111
  %18 = load float, ptr %10, align 4, !tbaa !107
  tail call void @glRectf(float noundef %14, float noundef %15, float noundef %17, float noundef %18) #3
  tail call void @glDisable(i32 noundef 3042) #3
  tail call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef -60) #3
  %19 = load i32, ptr %7, align 4, !tbaa !109
  %20 = sitofp i32 %19 to float
  %21 = load float, ptr %5, align 8, !tbaa !105
  %22 = load float, ptr %10, align 4, !tbaa !107
  tail call void @fdrawline(float noundef %20, float noundef %21, float noundef %20, float noundef %22) #3
  %23 = load i32, ptr %12, align 8, !tbaa !110
  %24 = sitofp i32 %23 to float
  %25 = load float, ptr %5, align 8, !tbaa !105
  %26 = load float, ptr %10, align 4, !tbaa !107
  tail call void @fdrawline(float noundef %24, float noundef %25, float noundef %24, float noundef %26) #3
  ret void
}

declare void @UI_view2d_view_ortho(ptr noundef) local_unnamed_addr #2

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glEnable(i32 noundef) local_unnamed_addr #2

declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glDisable(i32 noundef) local_unnamed_addr #2

declare void @UI_ThemeColorShade(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @fdrawline(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!34 = !{!35, !39, i64 120}
!35 = !{!"MovieTrackingTrack", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !39, i64 120, !39, i64 124, !36, i64 128, !37, i64 136, !40, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !37, i64 164, !41, i64 176, !41, i64 178, !41, i64 180, !41, i64 182, !39, i64 184, !40, i64 188, !36, i64 192, !40, i64 200, !40, i64 204}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"float", !37, i64 0}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 128}
!43 = !{!44, !39, i64 60}
!44 = !{!"MovieTrackingMarker", !37, i64 0, !37, i64 8, !37, i64 40, !37, i64 48, !39, i64 56, !39, i64 60}
!45 = !{!40, !40, i64 0}
!46 = !{!44, !39, i64 56}
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = distinct !{!50, !48, !49}
!51 = !{!36, !36, i64 0}
!52 = !{!35, !39, i64 152}
!53 = !{!35, !39, i64 156}
!54 = !{!35, !39, i64 160}
!55 = distinct !{!55, !48, !49}
!56 = distinct !{!56, !48, !49}
!57 = distinct !{!57, !48, !49}
!58 = !{!59, !36, i64 232}
!59 = !{!"MovieTracking", !60, i64 0, !61, i64 72, !62, i64 128, !62, i64 144, !63, i64 160, !64, i64 184, !36, i64 232, !36, i64 240, !62, i64 248, !39, i64 264, !39, i64 268, !36, i64 272, !65, i64 280}
!60 = !{!"MovieTrackingSettings", !39, i64 0, !41, i64 4, !41, i64 6, !40, i64 8, !41, i64 12, !41, i64 14, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !40, i64 24, !41, i64 28, !41, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !41, i64 44, !41, i64 46, !40, i64 48, !39, i64 52, !39, i64 56, !40, i64 60, !40, i64 64, !39, i64 68}
!61 = !{!"MovieTrackingCamera", !36, i64 0, !41, i64 8, !41, i64 10, !40, i64 12, !40, i64 16, !40, i64 20, !41, i64 24, !41, i64 26, !37, i64 28, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52}
!62 = !{!"ListBase", !36, i64 0, !36, i64 8}
!63 = !{!"MovieTrackingReconstruction", !39, i64 0, !40, i64 4, !39, i64 8, !39, i64 12, !36, i64 16}
!64 = !{!"MovieTrackingStabilization", !39, i64 0, !39, i64 4, !39, i64 8, !40, i64 12, !36, i64 16, !40, i64 24, !40, i64 28, !40, i64 32, !39, i64 36, !39, i64 40, !40, i64 44}
!65 = !{!"MovieTrackingDopesheet", !39, i64 0, !41, i64 4, !41, i64 6, !62, i64 8, !62, i64 24, !39, i64 40, !39, i64 44}
!66 = !{!64, !36, i64 16}
!67 = !{!62, !36, i64 0}
!68 = !{!69, !36, i64 0}
!69 = !{!"MovieTrackingPlaneTrack", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !39, i64 88, !39, i64 92, !36, i64 96, !39, i64 104, !39, i64 108, !36, i64 112, !40, i64 120, !39, i64 124}
!70 = !{!69, !39, i64 88}
!71 = !{!69, !36, i64 80}
!72 = distinct !{!72, !48, !49}
!73 = distinct !{!73, !48, !49}
!74 = distinct !{!74, !48, !49}
!75 = !{!59, !39, i64 224}
!76 = !{!39, !39, i64 0}
!77 = !{!78, !40, i64 36}
!78 = !{!"SpaceClip", !36, i64 0, !36, i64 8, !62, i64 16, !39, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !79, i64 56, !36, i64 64, !80, i64 72, !39, i64 208, !41, i64 212, !41, i64 214, !39, i64 216, !37, i64 220, !40, i64 228, !40, i64 232, !39, i64 236, !37, i64 240, !37, i64 304, !39, i64 368, !41, i64 372, !41, i64 374, !39, i64 376, !39, i64 380, !37, i64 384, !81, i64 392}
!79 = !{!"MovieClipUser", !39, i64 0, !41, i64 4, !41, i64 6}
!80 = !{!"MovieClipScopes", !41, i64 0, !41, i64 2, !39, i64 4, !39, i64 8, !39, i64 12, !44, i64 16, !36, i64 80, !36, i64 88, !37, i64 96, !41, i64 104, !41, i64 106, !39, i64 108, !36, i64 112, !36, i64 120, !37, i64 128}
!81 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!82 = !{!78, !40, i64 40}
!83 = !{!78, !39, i64 56}
!84 = !{!85, !40, i64 716}
!85 = !{!"Scene", !86, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !62, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !39, i64 232, !39, i64 236, !39, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !87, i64 280, !96, i64 4264, !62, i64 4296, !62, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !39, i64 4380, !62, i64 4384, !97, i64 4400, !98, i64 4416, !101, i64 4600, !36, i64 4608, !102, i64 4616, !36, i64 4640, !103, i64 4648, !103, i64 4656, !89, i64 4664, !90, i64 4824, !104, i64 4888, !36, i64 4952}
!86 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!87 = !{!"RenderData", !88, i64 0, !36, i64 248, !36, i64 256, !91, i64 264, !92, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !40, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !41, i64 432, !41, i64 434, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !39, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !39, i64 484, !39, i64 488, !41, i64 492, !41, i64 494, !39, i64 496, !39, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !93, i64 544, !93, i64 560, !94, i64 576, !62, i64 592, !41, i64 608, !41, i64 610, !40, i64 612, !40, i64 616, !40, i64 620, !40, i64 624, !39, i64 628, !40, i64 632, !40, i64 636, !40, i64 640, !40, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !40, i64 660, !40, i64 664, !41, i64 668, !41, i64 670, !40, i64 672, !40, i64 676, !37, i64 680, !39, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !41, i64 2524, !41, i64 2526, !40, i64 2528, !40, i64 2532, !41, i64 2536, !41, i64 2538, !40, i64 2540, !41, i64 2544, !41, i64 2546, !39, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !40, i64 2560, !40, i64 2564, !36, i64 2568, !39, i64 2576, !40, i64 2580, !37, i64 2584, !95, i64 2616, !39, i64 3976, !39, i64 3980}
!88 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !40, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !89, i64 24, !90, i64 184}
!89 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !40, i64 136, !40, i64 140, !36, i64 144, !36, i64 152}
!90 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!91 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !41, i64 48, !41, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!92 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !40, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!93 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!94 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!95 = !{!"BakeData", !88, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !40, i64 1280, !40, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!96 = !{!"AudioData", !39, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !39, i64 16, !41, i64 20, !41, i64 22, !40, i64 24, !40, i64 28}
!97 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!98 = !{!"GameData", !97, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !99, i64 40, !41, i64 64, !41, i64 66, !40, i64 68, !100, i64 72, !40, i64 128, !40, i64 132, !39, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180}
!99 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !40, i64 8, !40, i64 12, !36, i64 16}
!100 = !{!"RecastData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !39, i64 40, !40, i64 44, !40, i64 48, !41, i64 52, !41, i64 54}
!101 = !{!"UnitSettings", !40, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!102 = !{!"PhysicsSettings", !37, i64 0, !39, i64 12, !39, i64 16, !39, i64 20}
!103 = !{!"long", !37, i64 0}
!104 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!105 = !{!106, !40, i64 24}
!106 = !{!"View2D", !93, i64 0, !93, i64 16, !94, i64 32, !94, i64 48, !94, i64 64, !37, i64 80, !37, i64 88, !40, i64 96, !40, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !39, i64 136, !39, i64 140, !36, i64 144, !36, i64 152}
!107 = !{!106, !40, i64 28}
!108 = !{!106, !40, i64 16}
!109 = !{!85, !39, i64 684}
!110 = !{!85, !39, i64 688}
!111 = !{!106, !40, i64 20}
