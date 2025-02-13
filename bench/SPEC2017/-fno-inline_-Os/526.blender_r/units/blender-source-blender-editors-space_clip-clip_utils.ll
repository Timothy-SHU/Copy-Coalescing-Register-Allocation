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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @clip_graph_tracking_values_iterate_track(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef readonly %4, ptr noundef readonly %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = tail call ptr @ED_space_clip_get_clip(ptr noundef %0) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #4
  %10 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 9
  call void @BKE_movieclip_get_size(ptr noundef %9, ptr noundef nonnull %10, ptr noundef nonnull %7, ptr noundef nonnull %8) #3
  %11 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 8
  %12 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 10
  %13 = icmp eq ptr %5, null
  %14 = icmp eq ptr %4, null
  %15 = icmp eq ptr %3, null
  %16 = icmp ne ptr %5, null
  br label %17

17:                                               ; preds = %6, %85
  %18 = phi i1 [ true, %6 ], [ false, %85 ]
  %19 = phi i64 [ 0, %6 ], [ 1, %85 ]
  %20 = load i32, ptr %11, align 8, !tbaa !34
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %85

22:                                               ; preds = %17
  %23 = trunc i64 %19 to i32
  %24 = trunc i64 %19 to i32
  %25 = trunc i64 %19 to i32
  br label %26

26:                                               ; preds = %22, %73
  %27 = phi i64 [ 0, %22 ], [ %77, %73 ]
  %28 = phi float [ 0.000000e+00, %22 ], [ %76, %73 ]
  %29 = phi i8 [ 0, %22 ], [ %75, %73 ]
  %30 = phi i32 [ 0, %22 ], [ %74, %73 ]
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
  br i1 %39, label %73, label %40

40:                                               ; preds = %38
  call void %5(ptr noundef %2, i32 noundef %23) #3
  br label %73

41:                                               ; preds = %26
  br i1 %37, label %45, label %42

42:                                               ; preds = %41
  %43 = getelementptr inbounds [2 x float], ptr %32, i64 0, i64 %19
  %44 = load float, ptr %43, align 4, !tbaa !45
  br label %50

45:                                               ; preds = %41
  br i1 %14, label %47, label %46

46:                                               ; preds = %45
  call void %4(ptr noundef %2, ptr noundef nonnull %1, i32 noundef %24) #3
  br label %47

47:                                               ; preds = %46, %45
  %48 = getelementptr inbounds [2 x float], ptr %32, i64 0, i64 %19
  %49 = load float, ptr %48, align 4, !tbaa !45
  br label %50

50:                                               ; preds = %42, %47
  %51 = phi float [ %44, %42 ], [ %49, %47 ]
  %52 = phi float [ %28, %42 ], [ %49, %47 ]
  %53 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %31, i64 %27, i32 4
  br i1 %15, label %70, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds [2 x float], ptr %32, i64 0, i64 %19
  %56 = fsub float %51, %52
  %57 = load i32, ptr %7, align 4
  %58 = load i32, ptr %8, align 4
  %59 = select i1 %18, i32 %57, i32 %58
  %60 = sitofp i32 %59 to float
  %61 = fmul float %56, %60
  %62 = load i32, ptr %53, align 4, !tbaa !46
  %63 = sub nsw i32 %62, %30
  %64 = sitofp i32 %63 to float
  %65 = fdiv float %61, %64
  %66 = sitofp i32 %62 to float
  %67 = call float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef %9, float noundef %66) #3
  %68 = fptosi float %67 to i32
  call void %3(ptr noundef %2, ptr noundef nonnull %1, ptr noundef nonnull %32, i32 noundef %25, i32 noundef %68, float noundef %65) #3
  %69 = load float, ptr %55, align 4, !tbaa !45
  br label %70

70:                                               ; preds = %54, %50
  %71 = phi float [ %69, %54 ], [ %51, %50 ]
  %72 = load i32, ptr %53, align 4, !tbaa !46
  br label %73

73:                                               ; preds = %38, %40, %70
  %74 = phi i32 [ %72, %70 ], [ %30, %40 ], [ %30, %38 ]
  %75 = phi i8 [ 1, %70 ], [ 0, %40 ], [ 0, %38 ]
  %76 = phi float [ %71, %70 ], [ %28, %40 ], [ %28, %38 ]
  %77 = add nuw nsw i64 %27, 1
  %78 = load i32, ptr %11, align 8, !tbaa !34
  %79 = sext i32 %78 to i64
  %80 = icmp slt i64 %77, %79
  br i1 %80, label %26, label %81, !llvm.loop !47

81:                                               ; preds = %73
  %82 = and i1 %16, %36
  br i1 %82, label %83, label %85

83:                                               ; preds = %81
  %84 = trunc i64 %19 to i32
  call void %5(ptr noundef %2, i32 noundef %84) #3
  br label %85

85:                                               ; preds = %17, %83, %81
  br i1 %18, label %17, label %86, !llvm.loop !49

86:                                               ; preds = %85
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @ED_space_clip_get_clip(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_movieclip_get_size(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @clip_graph_tracking_values_iterate(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = tail call ptr @ED_space_clip_get_clip(ptr noundef %0) #3
  %9 = getelementptr inbounds %struct.MovieClip, ptr %8, i64 0, i32 11
  %10 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %9) #3
  %11 = load ptr, ptr %10, align 8, !tbaa !50
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
  %20 = load i32, ptr %19, align 8, !tbaa !51
  %21 = and i32 %20, 32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %18, %16
  br i1 %15, label %39, label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %17, i64 0, i32 13
  %26 = load i32, ptr %25, align 8, !tbaa !51
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %17, i64 0, i32 14
  %31 = load i32, ptr %30, align 4, !tbaa !52
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %17, i64 0, i32 15
  %36 = load i32, ptr %35, align 8, !tbaa !53
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34, %29, %24, %23
  tail call void @clip_graph_tracking_values_iterate_track(ptr noundef %0, ptr noundef nonnull %17, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #5
  br label %40

40:                                               ; preds = %34, %18, %39
  %41 = load ptr, ptr %17, align 8, !tbaa !50
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %16, !llvm.loop !54

43:                                               ; preds = %40, %7
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_tracking_get_active_tracks(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @clip_graph_tracking_iterate(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef readonly %4) local_unnamed_addr #0 {
  %6 = tail call ptr @ED_space_clip_get_clip(ptr noundef %0) #3
  %7 = getelementptr inbounds %struct.MovieClip, ptr %6, i64 0, i32 11
  %8 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %7) #3
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = icmp eq ptr %9, null
  br i1 %10, label %64, label %11

11:                                               ; preds = %5
  %12 = icmp eq i8 %2, 0
  %13 = icmp eq i8 %1, 0
  %14 = icmp eq ptr %4, null
  br label %15

15:                                               ; preds = %11, %61
  %16 = phi ptr [ %9, %11 ], [ %62, %61 ]
  br i1 %12, label %17, label %22

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 13
  %19 = load i32, ptr %18, align 8, !tbaa !51
  %20 = and i32 %19, 32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %17, %15
  br i1 %13, label %38, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 13
  %25 = load i32, ptr %24, align 8, !tbaa !51
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 14
  %30 = load i32, ptr %29, align 4, !tbaa !52
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 15
  %35 = load i32, ptr %34, align 8, !tbaa !53
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %61, label %38

38:                                               ; preds = %33, %28, %23, %22
  %39 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 8
  %40 = load i32, ptr %39, align 8, !tbaa !34
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 10
  br label %44

44:                                               ; preds = %42, %56
  %45 = phi i32 [ %40, %42 ], [ %57, %56 ]
  %46 = phi i64 [ 0, %42 ], [ %58, %56 ]
  %47 = load ptr, ptr %43, align 8, !tbaa !42
  %48 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %47, i64 %46, i32 5
  %49 = load i32, ptr %48, align 4, !tbaa !43
  %50 = and i32 %49, 1
  %51 = icmp ne i32 %50, 0
  %52 = or i1 %14, %51
  br i1 %52, label %56, label %53

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %47, i64 %46
  tail call void %4(ptr noundef %3, ptr noundef nonnull %54) #3
  %55 = load i32, ptr %39, align 8, !tbaa !34
  br label %56

56:                                               ; preds = %53, %44
  %57 = phi i32 [ %55, %53 ], [ %45, %44 ]
  %58 = add nuw nsw i64 %46, 1
  %59 = sext i32 %57 to i64
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %44, label %61, !llvm.loop !55

61:                                               ; preds = %56, %38, %33, %17
  %62 = load ptr, ptr %16, align 8, !tbaa !50
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %15, !llvm.loop !56

64:                                               ; preds = %61, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @clip_delete_track(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [64 x i8], align 16
  %5 = alloca [128 x i8], align 16
  %6 = getelementptr inbounds %struct.MovieClip, ptr %1, i64 0, i32 11
  %7 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %6) #3
  %8 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %6) #3
  %9 = tail call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %6) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #4
  %10 = icmp eq ptr %7, %2
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.MovieClip, ptr %1, i64 0, i32 11, i32 6
  store ptr null, ptr %12, align 8, !tbaa !57
  br label %13

13:                                               ; preds = %11, %3
  %14 = getelementptr inbounds %struct.MovieClip, ptr %1, i64 0, i32 11, i32 5, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !65
  %16 = icmp eq ptr %15, %2
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store ptr null, ptr %14, align 8, !tbaa !65
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2, i64 0, i32 13
  %20 = load i32, ptr %19, align 8, !tbaa !51
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  %23 = load ptr, ptr %9, align 8, !tbaa !66
  %24 = icmp eq ptr %23, null
  br i1 %24, label %76, label %25

25:                                               ; preds = %18, %74
  %26 = phi ptr [ %27, %74 ], [ %23, %18 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !67
  %28 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %26, i64 0, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !69
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %74

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %26, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !70
  %34 = zext nneg i32 %29 to i64
  br label %38

35:                                               ; preds = %38
  %36 = add nuw nsw i64 %39, 1
  %37 = icmp eq i64 %36, %34
  br i1 %37, label %74, label %38, !llvm.loop !71

38:                                               ; preds = %31, %35
  %39 = phi i64 [ 0, %31 ], [ %36, %35 ]
  %40 = getelementptr inbounds ptr, ptr %33, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !50
  %42 = icmp eq ptr %41, %2
  br i1 %42, label %43, label %35

43:                                               ; preds = %38
  %44 = icmp sgt i32 %29, 4
  br i1 %44, label %45, label %73

45:                                               ; preds = %43
  %46 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %47 = shl nuw nsw i64 %34, 3
  %48 = tail call ptr %46(i64 noundef %47, ptr noundef nonnull @.str) #3
  %49 = load i32, ptr %28, align 8, !tbaa !69
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %45
  %52 = zext nneg i32 %49 to i64
  br label %53

53:                                               ; preds = %51, %64
  %54 = phi i64 [ 0, %51 ], [ %66, %64 ]
  %55 = phi i32 [ 0, %51 ], [ %65, %64 ]
  %56 = load ptr, ptr %32, align 8, !tbaa !70
  %57 = getelementptr inbounds ptr, ptr %56, i64 %54
  %58 = load ptr, ptr %57, align 8, !tbaa !50
  %59 = icmp eq ptr %58, %2
  br i1 %59, label %64, label %60

60:                                               ; preds = %53
  %61 = add nsw i32 %55, 1
  %62 = sext i32 %55 to i64
  %63 = getelementptr inbounds ptr, ptr %48, i64 %62
  store ptr %58, ptr %63, align 8, !tbaa !50
  br label %64

64:                                               ; preds = %53, %60
  %65 = phi i32 [ %61, %60 ], [ %55, %53 ]
  %66 = add nuw nsw i64 %54, 1
  %67 = icmp eq i64 %66, %52
  br i1 %67, label %68, label %53, !llvm.loop !72

68:                                               ; preds = %64, %45
  %69 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  %70 = load ptr, ptr %32, align 8, !tbaa !70
  tail call void %69(ptr noundef %70) #3
  store ptr %48, ptr %32, align 8, !tbaa !70
  %71 = load i32, ptr %28, align 8, !tbaa !69
  %72 = add nsw i32 %71, -1
  store i32 %72, ptr %28, align 8, !tbaa !69
  br label %74

73:                                               ; preds = %43
  tail call void @BKE_tracking_plane_track_free(ptr noundef nonnull %26) #3
  tail call void @BLI_freelinkN(ptr noundef nonnull %9, ptr noundef nonnull %26) #3
  br label %74

74:                                               ; preds = %35, %25, %68, %73
  %75 = icmp eq ptr %27, null
  br i1 %75, label %76, label %25, !llvm.loop !73

76:                                               ; preds = %74, %18
  %77 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2, i64 0, i32 2
  %78 = call i64 @BLI_strescape(ptr noundef nonnull %4, ptr noundef nonnull %77, i64 noundef 64) #3
  %79 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 128, ptr noundef nonnull @.str.1, ptr noundef nonnull %4) #3
  call void @BKE_animdata_fix_paths_remove(ptr noundef %1, ptr noundef nonnull %5) #3
  call void @BKE_tracking_track_free(ptr noundef %2) #3
  call void @BLI_freelinkN(ptr noundef %8, ptr noundef %2) #3
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef %1) #3
  br i1 %16, label %80, label %82

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.MovieClip, ptr %1, i64 0, i32 11, i32 5, i32 9
  store i32 0, ptr %81, align 8, !tbaa !74
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 338886656, ptr noundef %1) #3
  br label %82

82:                                               ; preds = %80, %76
  call void @DAG_id_tag_update(ptr noundef %1, i16 noundef signext 0) #3
  br i1 %22, label %84, label %83

83:                                               ; preds = %82
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef null) #3
  br label %84

84:                                               ; preds = %83, %82
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #4
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_tracking_track_get_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_tracking_get_active_plane_tracks(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_tracking_plane_track_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_strescape(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_animdata_fix_paths_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_tracking_track_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @clip_delete_marker(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @clip_delete_track(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #5
  br label %12

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %3, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !46
  tail call void @BKE_tracking_marker_delete(ptr noundef nonnull %2, i32 noundef %11) #3
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef %1) #3
  br label %12

12:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: optsize
declare void @BKE_tracking_marker_delete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @clip_view_center_to_point(ptr noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #4
  call void @ED_space_clip_get_size(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #3
  call void @ED_space_clip_get_aspect(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #3
  %8 = insertelement <2 x float> poison, float %1, i64 0
  %9 = insertelement <2 x float> %8, float %2, i64 1
  %10 = fadd <2 x float> %9, <float -5.000000e-01, float -5.000000e-01>
  %11 = load i32, ptr %4, align 4, !tbaa !75
  %12 = load float, ptr %6, align 4, !tbaa !45
  %13 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 4
  %14 = load i32, ptr %5, align 4, !tbaa !75
  %15 = load float, ptr %7, align 4, !tbaa !45
  %16 = insertelement <2 x i32> poison, i32 %11, i64 0
  %17 = insertelement <2 x i32> %16, i32 %14, i64 1
  %18 = sitofp <2 x i32> %17 to <2 x float>
  %19 = fmul <2 x float> %10, %18
  %20 = insertelement <2 x float> poison, float %12, i64 0
  %21 = insertelement <2 x float> %20, float %15, i64 1
  %22 = fmul <2 x float> %21, %19
  store <2 x float> %22, ptr %13, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  ret void
}

; Function Attrs: optsize
declare void @ED_space_clip_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_space_clip_get_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @clip_draw_cfra(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca [2 x float], align 4
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #4
  %8 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !76
  %10 = sitofp i32 %9 to float
  %11 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 15
  %12 = load float, ptr %11, align 4, !tbaa !81
  %13 = fmul float %12, %10
  store float %13, ptr %6, align 4, !tbaa !45
  tail call void @UI_ThemeColor(i32 noundef 49) #3
  tail call void @glLineWidth(float noundef 2.000000e+00) #3
  tail call void @glBegin(i32 noundef 3) #3
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %15 = load float, ptr %14, align 8, !tbaa !102
  %16 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  store float %15, ptr %16, align 4, !tbaa !45
  call void @glVertex2fv(ptr noundef nonnull %6) #3
  %17 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %18 = load float, ptr %17, align 4, !tbaa !104
  store float %18, ptr %16, align 4, !tbaa !45
  call void @glVertex2fv(ptr noundef nonnull %6) #3
  call void @glEnd() #3
  call void @glLineWidth(float noundef 1.000000e+00) #3
  call void @UI_view2d_view_orthoSpecial(ptr noundef %1, ptr noundef nonnull %7, i8 noundef zeroext 1) #3
  call void @UI_view2d_scale_get(ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %5) #3
  %19 = load float, ptr %4, align 4, !tbaa !45
  %20 = fdiv float 1.000000e+00, %19
  call void @glScalef(float noundef %20, float noundef 1.000000e+00, float noundef 1.000000e+00) #3
  %21 = load i32, ptr %8, align 8, !tbaa !76
  %22 = sitofp i32 %21 to float
  %23 = load float, ptr %4, align 4, !tbaa !45
  %24 = fmul float %23, %22
  call void @ED_region_cache_draw_curfra_label(i32 noundef %21, float noundef %24, float noundef 1.800000e+01) #3
  %25 = load float, ptr %4, align 4, !tbaa !45
  call void @glScalef(float noundef %25, float noundef 1.000000e+00, float noundef 1.000000e+00) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  ret void
}

; Function Attrs: optsize
declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glLineWidth(float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_view_orthoSpecial(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_scale_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_cache_draw_curfra_label(i32 noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @clip_draw_sfra_efra(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void @UI_view2d_view_ortho(ptr noundef %0) #3
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #3
  tail call void @glEnable(i32 noundef 3042) #3
  tail call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x3FD99999A0000000) #3
  %3 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %4 = load float, ptr %3, align 8, !tbaa !105
  %5 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %6 = load float, ptr %5, align 8, !tbaa !102
  %7 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !106
  %9 = sitofp i32 %8 to float
  %10 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %11 = load float, ptr %10, align 4, !tbaa !104
  tail call void @glRectf(float noundef %4, float noundef %6, float noundef %9, float noundef %11) #3
  %12 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !107
  %14 = sitofp i32 %13 to float
  %15 = load float, ptr %5, align 8, !tbaa !102
  %16 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %17 = load float, ptr %16, align 4, !tbaa !108
  %18 = load float, ptr %10, align 4, !tbaa !104
  tail call void @glRectf(float noundef %14, float noundef %15, float noundef %17, float noundef %18) #3
  tail call void @glDisable(i32 noundef 3042) #3
  tail call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef -60) #3
  %19 = load i32, ptr %7, align 4, !tbaa !106
  %20 = sitofp i32 %19 to float
  %21 = load float, ptr %5, align 8, !tbaa !102
  %22 = load float, ptr %10, align 4, !tbaa !104
  tail call void @fdrawline(float noundef %20, float noundef %21, float noundef %20, float noundef %22) #3
  %23 = load i32, ptr %12, align 8, !tbaa !107
  %24 = sitofp i32 %23 to float
  %25 = load float, ptr %5, align 8, !tbaa !102
  %26 = load float, ptr %10, align 4, !tbaa !104
  tail call void @fdrawline(float noundef %24, float noundef %25, float noundef %24, float noundef %26) #3
  ret void
}

; Function Attrs: optsize
declare void @UI_view2d_view_ortho(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_ThemeColorShade(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fdrawline(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize }
attributes #4 = { nounwind }
attributes #5 = { optsize }

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
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = distinct !{!49, !48}
!50 = !{!36, !36, i64 0}
!51 = !{!35, !39, i64 152}
!52 = !{!35, !39, i64 156}
!53 = !{!35, !39, i64 160}
!54 = distinct !{!54, !48}
!55 = distinct !{!55, !48}
!56 = distinct !{!56, !48}
!57 = !{!58, !36, i64 232}
!58 = !{!"MovieTracking", !59, i64 0, !60, i64 72, !61, i64 128, !61, i64 144, !62, i64 160, !63, i64 184, !36, i64 232, !36, i64 240, !61, i64 248, !39, i64 264, !39, i64 268, !36, i64 272, !64, i64 280}
!59 = !{!"MovieTrackingSettings", !39, i64 0, !41, i64 4, !41, i64 6, !40, i64 8, !41, i64 12, !41, i64 14, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !40, i64 24, !41, i64 28, !41, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !41, i64 44, !41, i64 46, !40, i64 48, !39, i64 52, !39, i64 56, !40, i64 60, !40, i64 64, !39, i64 68}
!60 = !{!"MovieTrackingCamera", !36, i64 0, !41, i64 8, !41, i64 10, !40, i64 12, !40, i64 16, !40, i64 20, !41, i64 24, !41, i64 26, !37, i64 28, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52}
!61 = !{!"ListBase", !36, i64 0, !36, i64 8}
!62 = !{!"MovieTrackingReconstruction", !39, i64 0, !40, i64 4, !39, i64 8, !39, i64 12, !36, i64 16}
!63 = !{!"MovieTrackingStabilization", !39, i64 0, !39, i64 4, !39, i64 8, !40, i64 12, !36, i64 16, !40, i64 24, !40, i64 28, !40, i64 32, !39, i64 36, !39, i64 40, !40, i64 44}
!64 = !{!"MovieTrackingDopesheet", !39, i64 0, !41, i64 4, !41, i64 6, !61, i64 8, !61, i64 24, !39, i64 40, !39, i64 44}
!65 = !{!63, !36, i64 16}
!66 = !{!61, !36, i64 0}
!67 = !{!68, !36, i64 0}
!68 = !{!"MovieTrackingPlaneTrack", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !39, i64 88, !39, i64 92, !36, i64 96, !39, i64 104, !39, i64 108, !36, i64 112, !40, i64 120, !39, i64 124}
!69 = !{!68, !39, i64 88}
!70 = !{!68, !36, i64 80}
!71 = distinct !{!71, !48}
!72 = distinct !{!72, !48}
!73 = distinct !{!73, !48}
!74 = !{!58, !39, i64 224}
!75 = !{!39, !39, i64 0}
!76 = !{!77, !39, i64 56}
!77 = !{!"SpaceClip", !36, i64 0, !36, i64 8, !61, i64 16, !39, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !78, i64 56, !36, i64 64, !79, i64 72, !39, i64 208, !41, i64 212, !41, i64 214, !39, i64 216, !37, i64 220, !40, i64 228, !40, i64 232, !39, i64 236, !37, i64 240, !37, i64 304, !39, i64 368, !41, i64 372, !41, i64 374, !39, i64 376, !39, i64 380, !37, i64 384, !80, i64 392}
!78 = !{!"MovieClipUser", !39, i64 0, !41, i64 4, !41, i64 6}
!79 = !{!"MovieClipScopes", !41, i64 0, !41, i64 2, !39, i64 4, !39, i64 8, !39, i64 12, !44, i64 16, !36, i64 80, !36, i64 88, !37, i64 96, !41, i64 104, !41, i64 106, !39, i64 108, !36, i64 112, !36, i64 120, !37, i64 128}
!80 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!81 = !{!82, !40, i64 716}
!82 = !{!"Scene", !83, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !61, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !39, i64 232, !39, i64 236, !39, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !84, i64 280, !93, i64 4264, !61, i64 4296, !61, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !39, i64 4380, !61, i64 4384, !94, i64 4400, !95, i64 4416, !98, i64 4600, !36, i64 4608, !99, i64 4616, !36, i64 4640, !100, i64 4648, !100, i64 4656, !86, i64 4664, !87, i64 4824, !101, i64 4888, !36, i64 4952}
!83 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!84 = !{!"RenderData", !85, i64 0, !36, i64 248, !36, i64 256, !88, i64 264, !89, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !40, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !41, i64 432, !41, i64 434, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !39, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !39, i64 484, !39, i64 488, !41, i64 492, !41, i64 494, !39, i64 496, !39, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !90, i64 544, !90, i64 560, !91, i64 576, !61, i64 592, !41, i64 608, !41, i64 610, !40, i64 612, !40, i64 616, !40, i64 620, !40, i64 624, !39, i64 628, !40, i64 632, !40, i64 636, !40, i64 640, !40, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !40, i64 660, !40, i64 664, !41, i64 668, !41, i64 670, !40, i64 672, !40, i64 676, !37, i64 680, !39, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !41, i64 2524, !41, i64 2526, !40, i64 2528, !40, i64 2532, !41, i64 2536, !41, i64 2538, !40, i64 2540, !41, i64 2544, !41, i64 2546, !39, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !40, i64 2560, !40, i64 2564, !36, i64 2568, !39, i64 2576, !40, i64 2580, !37, i64 2584, !92, i64 2616, !39, i64 3976, !39, i64 3980}
!85 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !40, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !86, i64 24, !87, i64 184}
!86 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !40, i64 136, !40, i64 140, !36, i64 144, !36, i64 152}
!87 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!88 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !41, i64 48, !41, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!89 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !40, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!90 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!91 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!92 = !{!"BakeData", !85, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !40, i64 1280, !40, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!93 = !{!"AudioData", !39, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !39, i64 16, !41, i64 20, !41, i64 22, !40, i64 24, !40, i64 28}
!94 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!95 = !{!"GameData", !94, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !96, i64 40, !41, i64 64, !41, i64 66, !40, i64 68, !97, i64 72, !40, i64 128, !40, i64 132, !39, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180}
!96 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !40, i64 8, !40, i64 12, !36, i64 16}
!97 = !{!"RecastData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !39, i64 40, !40, i64 44, !40, i64 48, !41, i64 52, !41, i64 54}
!98 = !{!"UnitSettings", !40, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!99 = !{!"PhysicsSettings", !37, i64 0, !39, i64 12, !39, i64 16, !39, i64 20}
!100 = !{!"long", !37, i64 0}
!101 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!102 = !{!103, !40, i64 24}
!103 = !{!"View2D", !90, i64 0, !90, i64 16, !91, i64 32, !91, i64 48, !91, i64 64, !37, i64 80, !37, i64 88, !40, i64 96, !40, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !39, i64 136, !39, i64 140, !36, i64 144, !36, i64 152}
!104 = !{!103, !40, i64 28}
!105 = !{!103, !40, i64 16}
!106 = !{!82, !39, i64 684}
!107 = !{!82, !39, i64 688}
!108 = !{!103, !40, i64 20}
