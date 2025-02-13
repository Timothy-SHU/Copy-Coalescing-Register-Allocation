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
  %20 = load i32, ptr %11, align 8, !tbaa !5
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
  %31 = load ptr, ptr %12, align 8, !tbaa !13
  %32 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %31, i64 %27
  %33 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %31, i64 %27, i32 5
  %34 = load i32, ptr %33, align 4, !tbaa !14
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
  %44 = load float, ptr %43, align 4, !tbaa !16
  br label %50

45:                                               ; preds = %41
  br i1 %14, label %47, label %46

46:                                               ; preds = %45
  call void %4(ptr noundef %2, ptr noundef nonnull %1, i32 noundef %24) #3
  br label %47

47:                                               ; preds = %46, %45
  %48 = getelementptr inbounds [2 x float], ptr %32, i64 0, i64 %19
  %49 = load float, ptr %48, align 4, !tbaa !16
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
  %62 = load i32, ptr %53, align 4, !tbaa !17
  %63 = sub nsw i32 %62, %30
  %64 = sitofp i32 %63 to float
  %65 = fdiv float %61, %64
  %66 = sitofp i32 %62 to float
  %67 = call float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef %9, float noundef %66) #3
  %68 = fptosi float %67 to i32
  call void %3(ptr noundef %2, ptr noundef nonnull %1, ptr noundef nonnull %32, i32 noundef %25, i32 noundef %68, float noundef %65) #3
  %69 = load float, ptr %55, align 4, !tbaa !16
  br label %70

70:                                               ; preds = %54, %50
  %71 = phi float [ %69, %54 ], [ %51, %50 ]
  %72 = load i32, ptr %53, align 4, !tbaa !17
  br label %73

73:                                               ; preds = %38, %40, %70
  %74 = phi i32 [ %72, %70 ], [ %30, %40 ], [ %30, %38 ]
  %75 = phi i8 [ 1, %70 ], [ 0, %40 ], [ 0, %38 ]
  %76 = phi float [ %71, %70 ], [ %28, %40 ], [ %28, %38 ]
  %77 = add nuw nsw i64 %27, 1
  %78 = load i32, ptr %11, align 8, !tbaa !5
  %79 = sext i32 %78 to i64
  %80 = icmp slt i64 %77, %79
  br i1 %80, label %26, label %81, !llvm.loop !18

81:                                               ; preds = %73
  %82 = and i1 %16, %36
  br i1 %82, label %83, label %85

83:                                               ; preds = %81
  %84 = trunc i64 %19 to i32
  call void %5(ptr noundef %2, i32 noundef %84) #3
  br label %85

85:                                               ; preds = %17, %83, %81
  br i1 %18, label %17, label %86, !llvm.loop !20

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
  %11 = load ptr, ptr %10, align 8, !tbaa !21
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
  %20 = load i32, ptr %19, align 8, !tbaa !22
  %21 = and i32 %20, 32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %18, %16
  br i1 %15, label %39, label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %17, i64 0, i32 13
  %26 = load i32, ptr %25, align 8, !tbaa !22
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %17, i64 0, i32 14
  %31 = load i32, ptr %30, align 4, !tbaa !23
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %17, i64 0, i32 15
  %36 = load i32, ptr %35, align 8, !tbaa !24
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34, %29, %24, %23
  tail call void @clip_graph_tracking_values_iterate_track(ptr noundef %0, ptr noundef nonnull %17, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #5
  br label %40

40:                                               ; preds = %34, %18, %39
  %41 = load ptr, ptr %17, align 8, !tbaa !21
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %16, !llvm.loop !25

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
  %9 = load ptr, ptr %8, align 8, !tbaa !21
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
  %19 = load i32, ptr %18, align 8, !tbaa !22
  %20 = and i32 %19, 32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %17, %15
  br i1 %13, label %38, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 13
  %25 = load i32, ptr %24, align 8, !tbaa !22
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 14
  %30 = load i32, ptr %29, align 4, !tbaa !23
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 15
  %35 = load i32, ptr %34, align 8, !tbaa !24
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %61, label %38

38:                                               ; preds = %33, %28, %23, %22
  %39 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 8
  %40 = load i32, ptr %39, align 8, !tbaa !5
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 10
  br label %44

44:                                               ; preds = %42, %56
  %45 = phi i32 [ %40, %42 ], [ %57, %56 ]
  %46 = phi i64 [ 0, %42 ], [ %58, %56 ]
  %47 = load ptr, ptr %43, align 8, !tbaa !13
  %48 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %47, i64 %46, i32 5
  %49 = load i32, ptr %48, align 4, !tbaa !14
  %50 = and i32 %49, 1
  %51 = icmp ne i32 %50, 0
  %52 = or i1 %14, %51
  br i1 %52, label %56, label %53

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %47, i64 %46
  tail call void %4(ptr noundef %3, ptr noundef nonnull %54) #3
  %55 = load i32, ptr %39, align 8, !tbaa !5
  br label %56

56:                                               ; preds = %53, %44
  %57 = phi i32 [ %55, %53 ], [ %45, %44 ]
  %58 = add nuw nsw i64 %46, 1
  %59 = sext i32 %57 to i64
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %44, label %61, !llvm.loop !26

61:                                               ; preds = %56, %38, %33, %17
  %62 = load ptr, ptr %16, align 8, !tbaa !21
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %15, !llvm.loop !27

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
  store ptr null, ptr %12, align 8, !tbaa !28
  br label %13

13:                                               ; preds = %11, %3
  %14 = getelementptr inbounds %struct.MovieClip, ptr %1, i64 0, i32 11, i32 5, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !36
  %16 = icmp eq ptr %15, %2
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store ptr null, ptr %14, align 8, !tbaa !36
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2, i64 0, i32 13
  %20 = load i32, ptr %19, align 8, !tbaa !22
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  %23 = load ptr, ptr %9, align 8, !tbaa !37
  %24 = icmp eq ptr %23, null
  br i1 %24, label %76, label %25

25:                                               ; preds = %18, %74
  %26 = phi ptr [ %27, %74 ], [ %23, %18 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !38
  %28 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %26, i64 0, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !40
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %74

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %26, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !41
  %34 = zext nneg i32 %29 to i64
  br label %38

35:                                               ; preds = %38
  %36 = add nuw nsw i64 %39, 1
  %37 = icmp eq i64 %36, %34
  br i1 %37, label %74, label %38, !llvm.loop !42

38:                                               ; preds = %31, %35
  %39 = phi i64 [ 0, %31 ], [ %36, %35 ]
  %40 = getelementptr inbounds ptr, ptr %33, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !21
  %42 = icmp eq ptr %41, %2
  br i1 %42, label %43, label %35

43:                                               ; preds = %38
  %44 = icmp sgt i32 %29, 4
  br i1 %44, label %45, label %73

45:                                               ; preds = %43
  %46 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !21
  %47 = shl nuw nsw i64 %34, 3
  %48 = tail call ptr %46(i64 noundef %47, ptr noundef nonnull @.str) #3
  %49 = load i32, ptr %28, align 8, !tbaa !40
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %45
  %52 = zext nneg i32 %49 to i64
  br label %53

53:                                               ; preds = %51, %64
  %54 = phi i64 [ 0, %51 ], [ %66, %64 ]
  %55 = phi i32 [ 0, %51 ], [ %65, %64 ]
  %56 = load ptr, ptr %32, align 8, !tbaa !41
  %57 = getelementptr inbounds ptr, ptr %56, i64 %54
  %58 = load ptr, ptr %57, align 8, !tbaa !21
  %59 = icmp eq ptr %58, %2
  br i1 %59, label %64, label %60

60:                                               ; preds = %53
  %61 = add nsw i32 %55, 1
  %62 = sext i32 %55 to i64
  %63 = getelementptr inbounds ptr, ptr %48, i64 %62
  store ptr %58, ptr %63, align 8, !tbaa !21
  br label %64

64:                                               ; preds = %53, %60
  %65 = phi i32 [ %61, %60 ], [ %55, %53 ]
  %66 = add nuw nsw i64 %54, 1
  %67 = icmp eq i64 %66, %52
  br i1 %67, label %68, label %53, !llvm.loop !43

68:                                               ; preds = %64, %45
  %69 = load ptr, ptr @MEM_freeN, align 8, !tbaa !21
  %70 = load ptr, ptr %32, align 8, !tbaa !41
  tail call void %69(ptr noundef %70) #3
  store ptr %48, ptr %32, align 8, !tbaa !41
  %71 = load i32, ptr %28, align 8, !tbaa !40
  %72 = add nsw i32 %71, -1
  store i32 %72, ptr %28, align 8, !tbaa !40
  br label %74

73:                                               ; preds = %43
  tail call void @BKE_tracking_plane_track_free(ptr noundef nonnull %26) #3
  tail call void @BLI_freelinkN(ptr noundef nonnull %9, ptr noundef nonnull %26) #3
  br label %74

74:                                               ; preds = %35, %25, %68, %73
  %75 = icmp eq ptr %27, null
  br i1 %75, label %76, label %25, !llvm.loop !44

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
  store i32 0, ptr %81, align 8, !tbaa !45
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
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @clip_delete_track(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #5
  br label %12

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %3, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !17
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
  %11 = load i32, ptr %4, align 4, !tbaa !46
  %12 = load float, ptr %6, align 4, !tbaa !16
  %13 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 4
  %14 = load i32, ptr %5, align 4, !tbaa !46
  %15 = load float, ptr %7, align 4, !tbaa !16
  %16 = insertelement <2 x i32> poison, i32 %11, i64 0
  %17 = insertelement <2 x i32> %16, i32 %14, i64 1
  %18 = sitofp <2 x i32> %17 to <2 x float>
  %19 = fmul <2 x float> %10, %18
  %20 = insertelement <2 x float> poison, float %12, i64 0
  %21 = insertelement <2 x float> %20, float %15, i64 1
  %22 = fmul <2 x float> %21, %19
  store <2 x float> %22, ptr %13, align 4, !tbaa !16
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
  %9 = load i32, ptr %8, align 8, !tbaa !47
  %10 = sitofp i32 %9 to float
  %11 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 15
  %12 = load float, ptr %11, align 4, !tbaa !52
  %13 = fmul float %12, %10
  store float %13, ptr %6, align 4, !tbaa !16
  tail call void @UI_ThemeColor(i32 noundef 49) #3
  tail call void @glLineWidth(float noundef 2.000000e+00) #3
  tail call void @glBegin(i32 noundef 3) #3
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %15 = load float, ptr %14, align 8, !tbaa !73
  %16 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  store float %15, ptr %16, align 4, !tbaa !16
  call void @glVertex2fv(ptr noundef nonnull %6) #3
  %17 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %18 = load float, ptr %17, align 4, !tbaa !75
  store float %18, ptr %16, align 4, !tbaa !16
  call void @glVertex2fv(ptr noundef nonnull %6) #3
  call void @glEnd() #3
  call void @glLineWidth(float noundef 1.000000e+00) #3
  call void @UI_view2d_view_orthoSpecial(ptr noundef %1, ptr noundef nonnull %7, i8 noundef zeroext 1) #3
  call void @UI_view2d_scale_get(ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %5) #3
  %19 = load float, ptr %4, align 4, !tbaa !16
  %20 = fdiv float 1.000000e+00, %19
  call void @glScalef(float noundef %20, float noundef 1.000000e+00, float noundef 1.000000e+00) #3
  %21 = load i32, ptr %8, align 8, !tbaa !47
  %22 = sitofp i32 %21 to float
  %23 = load float, ptr %4, align 4, !tbaa !16
  %24 = fmul float %23, %22
  call void @ED_region_cache_draw_curfra_label(i32 noundef %21, float noundef %24, float noundef 1.800000e+01) #3
  %25 = load float, ptr %4, align 4, !tbaa !16
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
  %4 = load float, ptr %3, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %6 = load float, ptr %5, align 8, !tbaa !73
  %7 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !77
  %9 = sitofp i32 %8 to float
  %10 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %11 = load float, ptr %10, align 4, !tbaa !75
  tail call void @glRectf(float noundef %4, float noundef %6, float noundef %9, float noundef %11) #3
  %12 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !78
  %14 = sitofp i32 %13 to float
  %15 = load float, ptr %5, align 8, !tbaa !73
  %16 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %17 = load float, ptr %16, align 4, !tbaa !79
  %18 = load float, ptr %10, align 4, !tbaa !75
  tail call void @glRectf(float noundef %14, float noundef %15, float noundef %17, float noundef %18) #3
  tail call void @glDisable(i32 noundef 3042) #3
  tail call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef -60) #3
  %19 = load i32, ptr %7, align 4, !tbaa !77
  %20 = sitofp i32 %19 to float
  %21 = load float, ptr %5, align 8, !tbaa !73
  %22 = load float, ptr %10, align 4, !tbaa !75
  tail call void @fdrawline(float noundef %20, float noundef %21, float noundef %20, float noundef %22) #3
  %23 = load i32, ptr %12, align 8, !tbaa !78
  %24 = sitofp i32 %23 to float
  %25 = load float, ptr %5, align 8, !tbaa !73
  %26 = load float, ptr %10, align 4, !tbaa !75
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 120}
!6 = !{!"MovieTrackingTrack", !7, i64 0, !7, i64 8, !8, i64 16, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !10, i64 120, !10, i64 124, !7, i64 128, !8, i64 136, !11, i64 148, !10, i64 152, !10, i64 156, !10, i64 160, !8, i64 164, !12, i64 176, !12, i64 178, !12, i64 180, !12, i64 182, !10, i64 184, !11, i64 188, !7, i64 192, !11, i64 200, !11, i64 204}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"float", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!6, !7, i64 128}
!14 = !{!15, !10, i64 60}
!15 = !{!"MovieTrackingMarker", !8, i64 0, !8, i64 8, !8, i64 40, !8, i64 48, !10, i64 56, !10, i64 60}
!16 = !{!11, !11, i64 0}
!17 = !{!15, !10, i64 56}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !19}
!21 = !{!7, !7, i64 0}
!22 = !{!6, !10, i64 152}
!23 = !{!6, !10, i64 156}
!24 = !{!6, !10, i64 160}
!25 = distinct !{!25, !19}
!26 = distinct !{!26, !19}
!27 = distinct !{!27, !19}
!28 = !{!29, !7, i64 232}
!29 = !{!"MovieTracking", !30, i64 0, !31, i64 72, !32, i64 128, !32, i64 144, !33, i64 160, !34, i64 184, !7, i64 232, !7, i64 240, !32, i64 248, !10, i64 264, !10, i64 268, !7, i64 272, !35, i64 280}
!30 = !{!"MovieTrackingSettings", !10, i64 0, !12, i64 4, !12, i64 6, !11, i64 8, !12, i64 12, !12, i64 14, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !11, i64 24, !12, i64 28, !12, i64 30, !10, i64 32, !10, i64 36, !10, i64 40, !12, i64 44, !12, i64 46, !11, i64 48, !10, i64 52, !10, i64 56, !11, i64 60, !11, i64 64, !10, i64 68}
!31 = !{!"MovieTrackingCamera", !7, i64 0, !12, i64 8, !12, i64 10, !11, i64 12, !11, i64 16, !11, i64 20, !12, i64 24, !12, i64 26, !8, i64 28, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52}
!32 = !{!"ListBase", !7, i64 0, !7, i64 8}
!33 = !{!"MovieTrackingReconstruction", !10, i64 0, !11, i64 4, !10, i64 8, !10, i64 12, !7, i64 16}
!34 = !{!"MovieTrackingStabilization", !10, i64 0, !10, i64 4, !10, i64 8, !11, i64 12, !7, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !10, i64 36, !10, i64 40, !11, i64 44}
!35 = !{!"MovieTrackingDopesheet", !10, i64 0, !12, i64 4, !12, i64 6, !32, i64 8, !32, i64 24, !10, i64 40, !10, i64 44}
!36 = !{!34, !7, i64 16}
!37 = !{!32, !7, i64 0}
!38 = !{!39, !7, i64 0}
!39 = !{!"MovieTrackingPlaneTrack", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !10, i64 88, !10, i64 92, !7, i64 96, !10, i64 104, !10, i64 108, !7, i64 112, !11, i64 120, !10, i64 124}
!40 = !{!39, !10, i64 88}
!41 = !{!39, !7, i64 80}
!42 = distinct !{!42, !19}
!43 = distinct !{!43, !19}
!44 = distinct !{!44, !19}
!45 = !{!29, !10, i64 224}
!46 = !{!10, !10, i64 0}
!47 = !{!48, !10, i64 56}
!48 = !{!"SpaceClip", !7, i64 0, !7, i64 8, !32, i64 16, !10, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !49, i64 56, !7, i64 64, !50, i64 72, !10, i64 208, !12, i64 212, !12, i64 214, !10, i64 216, !8, i64 220, !11, i64 228, !11, i64 232, !10, i64 236, !8, i64 240, !8, i64 304, !10, i64 368, !12, i64 372, !12, i64 374, !10, i64 376, !10, i64 380, !8, i64 384, !51, i64 392}
!49 = !{!"MovieClipUser", !10, i64 0, !12, i64 4, !12, i64 6}
!50 = !{!"MovieClipScopes", !12, i64 0, !12, i64 2, !10, i64 4, !10, i64 8, !10, i64 12, !15, i64 16, !7, i64 80, !7, i64 88, !8, i64 96, !12, i64 104, !12, i64 106, !10, i64 108, !7, i64 112, !7, i64 120, !8, i64 128}
!51 = !{!"MaskSpaceInfo", !7, i64 0, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11}
!52 = !{!53, !11, i64 716}
!53 = !{!"Scene", !54, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !32, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !10, i64 232, !10, i64 236, !10, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !55, i64 280, !64, i64 4264, !32, i64 4296, !32, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !10, i64 4380, !32, i64 4384, !65, i64 4400, !66, i64 4416, !69, i64 4600, !7, i64 4608, !70, i64 4616, !7, i64 4640, !71, i64 4648, !71, i64 4656, !57, i64 4664, !58, i64 4824, !72, i64 4888, !7, i64 4952}
!54 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !10, i64 100, !10, i64 104, !10, i64 108, !7, i64 112}
!55 = !{!"RenderData", !56, i64 0, !7, i64 248, !7, i64 256, !59, i64 264, !60, i64 328, !10, i64 400, !10, i64 404, !10, i64 408, !11, i64 412, !10, i64 416, !10, i64 420, !10, i64 424, !10, i64 428, !12, i64 432, !12, i64 434, !11, i64 436, !11, i64 440, !11, i64 444, !11, i64 448, !11, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !10, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !10, i64 484, !10, i64 488, !12, i64 492, !12, i64 494, !10, i64 496, !10, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !10, i64 516, !10, i64 520, !10, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !61, i64 544, !61, i64 560, !62, i64 576, !32, i64 592, !12, i64 608, !12, i64 610, !11, i64 612, !11, i64 616, !11, i64 620, !11, i64 624, !10, i64 628, !11, i64 632, !11, i64 636, !11, i64 640, !11, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !11, i64 660, !11, i64 664, !12, i64 668, !12, i64 670, !11, i64 672, !11, i64 676, !8, i64 680, !10, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !10, i64 2520, !12, i64 2524, !12, i64 2526, !11, i64 2528, !11, i64 2532, !12, i64 2536, !12, i64 2538, !11, i64 2540, !12, i64 2544, !12, i64 2546, !10, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !11, i64 2560, !11, i64 2564, !7, i64 2568, !10, i64 2576, !11, i64 2580, !8, i64 2584, !63, i64 2616, !10, i64 3976, !10, i64 3980}
!56 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !11, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !57, i64 24, !58, i64 184}
!57 = !{!"ColorManagedViewSettings", !10, i64 0, !10, i64 4, !8, i64 8, !8, i64 72, !11, i64 136, !11, i64 140, !7, i64 144, !7, i64 152}
!58 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!59 = !{!"QuicktimeCodecSettings", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !12, i64 48, !12, i64 50, !10, i64 52, !10, i64 56, !10, i64 60}
!60 = !{!"FFMpegCodecData", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !11, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !7, i64 64}
!61 = !{!"rctf", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!62 = !{!"rcti", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!63 = !{!"BakeData", !56, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !11, i64 1280, !11, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!64 = !{!"AudioData", !10, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !10, i64 16, !12, i64 20, !12, i64 22, !11, i64 24, !11, i64 28}
!65 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!66 = !{!"GameData", !65, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !67, i64 40, !12, i64 64, !12, i64 66, !11, i64 68, !68, i64 72, !11, i64 128, !11, i64 132, !10, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !11, i64 164, !11, i64 168, !11, i64 172, !11, i64 176, !11, i64 180}
!67 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !11, i64 8, !11, i64 12, !7, i64 16}
!68 = !{!"RecastData", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !10, i64 40, !11, i64 44, !11, i64 48, !12, i64 52, !12, i64 54}
!69 = !{!"UnitSettings", !11, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!70 = !{!"PhysicsSettings", !8, i64 0, !10, i64 12, !10, i64 16, !10, i64 20}
!71 = !{!"long", !8, i64 0}
!72 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!73 = !{!74, !11, i64 24}
!74 = !{!"View2D", !61, i64 0, !61, i64 16, !62, i64 32, !62, i64 48, !62, i64 64, !8, i64 80, !8, i64 88, !11, i64 96, !11, i64 100, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !12, i64 112, !12, i64 114, !12, i64 116, !12, i64 118, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !7, i64 128, !10, i64 136, !10, i64 140, !7, i64 144, !7, i64 152}
!75 = !{!74, !11, i64 28}
!76 = !{!74, !11, i64 16}
!77 = !{!53, !10, i64 684}
!78 = !{!53, !10, i64 688}
!79 = !{!74, !11, i64 20}
