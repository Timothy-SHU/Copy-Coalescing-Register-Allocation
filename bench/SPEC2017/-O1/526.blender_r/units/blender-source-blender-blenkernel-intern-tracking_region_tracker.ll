; ModuleID = 'blender/source/blender/blenkernel/intern/tracking_region_tracker.c'
source_filename = "blender/source/blender/blenkernel/intern/tracking_region_tracker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TrackContext = type { %struct.MovieTrackingMarker, ptr, i32, i32, i32, ptr }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.ListBase = type { ptr, ptr }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.MovieTrackingContext = type { %struct.MovieClipUser, ptr, i32, i32, i32, i8, %struct.MovieTrackingSettings, ptr, i8, i8, i32 }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }
%struct.MovieTrackingObject = type { ptr, ptr, [64 x i8], i32, float, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, i32, i32 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.TracksMap = type { [64 x i8], i8, i32, i32, ptr, ptr, ptr, i32, i32 }
%struct.libmv_TrackRegionOptions = type { i32, i32, i32, i32, double, double, ptr }
%struct.libmv_TrackRegionResult = type { i32, ptr, double }
%struct.MovieTrackingPlaneTrack = type { ptr, ptr, [64 x i8], ptr, i32, i32, ptr, i32, i32, ptr, float, i32 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"trackingContext\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"tracking floatBuf\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_tracking_context_new(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TrackContext, align 8
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %9 = tail call ptr %8(i64 noundef 120, ptr noundef nonnull @.str) #7
  %10 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11
  %11 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %10) #7
  %12 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %10) #7
  %13 = getelementptr inbounds %struct.MovieTrackingContext, ptr %9, i64 0, i32 1
  store ptr %0, ptr %13, align 8, !tbaa !38
  %14 = getelementptr inbounds %struct.MovieTrackingContext, ptr %9, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 4 dereferenceable(72) %10, i64 72, i1 false), !tbaa.struct !45
  %15 = getelementptr inbounds %struct.MovieTrackingContext, ptr %9, i64 0, i32 8
  store i8 %2, ptr %15, align 8, !tbaa !49
  %16 = load i32, ptr %1, align 4, !tbaa !50
  %17 = getelementptr inbounds %struct.MovieTrackingContext, ptr %9, i64 0, i32 10
  store i32 %16, ptr %17, align 4, !tbaa !51
  %18 = getelementptr inbounds %struct.MovieTrackingContext, ptr %9, i64 0, i32 5
  store i8 1, ptr %18, align 4, !tbaa !52
  %19 = getelementptr inbounds %struct.MovieTrackingContext, ptr %9, i64 0, i32 4
  store i32 %16, ptr %19, align 8, !tbaa !53
  %20 = getelementptr inbounds %struct.MovieTrackingContext, ptr %9, i64 0, i32 9
  store i8 %3, ptr %20, align 1, !tbaa !54
  %21 = load ptr, ptr %11, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %61, label %23

23:                                               ; preds = %4, %57
  %24 = phi ptr [ %59, %57 ], [ %21, %4 ]
  %25 = phi i32 [ %58, %57 ], [ 0, %4 ]
  %26 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %24, i64 0, i32 13
  %27 = load i32, ptr %26, align 8, !tbaa !55
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %24, i64 0, i32 14
  %32 = load i32, ptr %31, align 4, !tbaa !57
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %24, i64 0, i32 15
  %37 = load i32, ptr %36, align 8, !tbaa !58
  %38 = and i32 %37, 1
  %39 = icmp ne i32 %38, 0
  %40 = and i32 %27, 96
  %41 = icmp eq i32 %40, 0
  %42 = and i1 %41, %39
  br i1 %42, label %46, label %57

43:                                               ; preds = %30, %23
  %44 = and i32 %27, 96
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %35, %43
  %47 = load i32, ptr %1, align 4, !tbaa !50
  %48 = sitofp i32 %47 to float
  %49 = tail call float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef %0, float noundef %48) #7
  %50 = fptosi float %49 to i32
  %51 = tail call ptr @BKE_tracking_marker_get(ptr noundef nonnull %24, i32 noundef %50) #7
  %52 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %51, i64 0, i32 5
  %53 = load i32, ptr %52, align 4, !tbaa !59
  %54 = and i32 %53, 1
  %55 = xor i32 %54, 1
  %56 = add i32 %55, %25
  br label %57

57:                                               ; preds = %46, %43, %35
  %58 = phi i32 [ %56, %46 ], [ %25, %43 ], [ %25, %35 ]
  %59 = load ptr, ptr %24, align 8, !tbaa !34
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %23, !llvm.loop !61

61:                                               ; preds = %57, %4
  %62 = phi i32 [ 0, %4 ], [ %58, %57 ]
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %112, label %64

64:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  %65 = getelementptr inbounds %struct.MovieTrackingObject, ptr %12, i64 0, i32 2
  %66 = getelementptr inbounds %struct.MovieTrackingObject, ptr %12, i64 0, i32 3
  %67 = load i32, ptr %66, align 8, !tbaa !64
  %68 = trunc i32 %67 to i8
  %69 = and i8 %68, 1
  %70 = tail call ptr @tracks_map_new(ptr noundef nonnull %65, i8 noundef zeroext %69, i32 noundef %62, i32 noundef 96) #7
  %71 = getelementptr inbounds %struct.MovieTrackingContext, ptr %9, i64 0, i32 7
  store ptr %70, ptr %71, align 8, !tbaa !68
  call void @BKE_movieclip_get_size(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  %72 = load ptr, ptr %11, align 8, !tbaa !34
  %73 = icmp eq ptr %72, null
  br i1 %73, label %111, label %74

74:                                               ; preds = %64, %108
  %75 = phi ptr [ %109, %108 ], [ %72, %64 ]
  %76 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %75, i64 0, i32 13
  %77 = load i32, ptr %76, align 8, !tbaa !55
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %75, i64 0, i32 14
  %82 = load i32, ptr %81, align 4, !tbaa !57
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %75, i64 0, i32 15
  %87 = load i32, ptr %86, align 8, !tbaa !58
  %88 = and i32 %87, 1
  %89 = icmp ne i32 %88, 0
  %90 = and i32 %77, 96
  %91 = icmp eq i32 %90, 0
  %92 = and i1 %91, %89
  br i1 %92, label %96, label %108

93:                                               ; preds = %80, %74
  %94 = and i32 %77, 96
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %85, %93
  %97 = load i32, ptr %1, align 4, !tbaa !50
  %98 = sitofp i32 %97 to float
  %99 = call float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef %0, float noundef %98) #7
  %100 = fptosi float %99 to i32
  %101 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %75, i32 noundef %100) #7
  %102 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %101, i64 0, i32 5
  %103 = load i32, ptr %102, align 4, !tbaa !59
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %96
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %7, i8 0, i64 96, i1 false)
  %107 = load ptr, ptr %71, align 8, !tbaa !68
  call void @tracks_map_insert(ptr noundef %107, ptr noundef nonnull %75, ptr noundef nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #7
  br label %108

108:                                              ; preds = %96, %106, %93, %85
  %109 = load ptr, ptr %75, align 8, !tbaa !34
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %74, !llvm.loop !69

111:                                              ; preds = %108, %64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  br label %112

112:                                              ; preds = %111, %61
  %113 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 14
  %114 = load i32, ptr %113, align 8, !tbaa !70
  %115 = and i32 %114, 3
  %116 = getelementptr inbounds %struct.MovieTrackingContext, ptr %9, i64 0, i32 2
  store i32 %115, ptr %116, align 8, !tbaa !79
  %117 = load i64, ptr %1, align 4
  store i64 %117, ptr %9, align 8
  %118 = getelementptr inbounds %struct.MovieClipUser, ptr %9, i64 0, i32 1
  store i16 0, ptr %118, align 4, !tbaa !80
  %119 = getelementptr inbounds %struct.MovieClipUser, ptr %9, i64 0, i32 2
  store i16 0, ptr %119, align 2, !tbaa !81
  %120 = icmp eq i8 %3, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  call void @BLI_begin_threaded_malloc() #7
  br label %122

122:                                              ; preds = %121, %112
  ret ptr %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BKE_tracking_get_active_tracks(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_object_get_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef, float noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @tracks_map_new(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_movieclip_get_size(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare void @tracks_map_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_begin_threaded_malloc() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_context_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 9
  %3 = load i8, ptr %2, align 1, !tbaa !54
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @BLI_end_threaded_malloc() #7
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  tail call void @tracks_map_free(ptr noundef %8, ptr noundef nonnull @track_context_free) #7
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %9(ptr noundef %0) #7
  ret void
}

declare void @BLI_end_threaded_malloc() local_unnamed_addr #2

declare void @tracks_map_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @track_context_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.TrackContext, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef nonnull %3) #7
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.TrackContext, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !84
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %12(ptr noundef nonnull %9) #7
  br label %13

13:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_context_sync(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.MovieClip, ptr %3, i64 0, i32 11
  %5 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  tail call void @tracks_map_merge(ptr noundef %6, ptr noundef nonnull %4) #7
  %7 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 8
  %8 = load i8, ptr %7, align 8, !tbaa !49
  %9 = icmp eq i8 %8, 0
  %10 = load i32, ptr %0, align 8, !tbaa !85
  %11 = select i1 %9, i32 -1, i32 1
  %12 = add nsw i32 %10, %11
  %13 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 10
  store i32 %12, ptr %13, align 4, !tbaa !51
  tail call void @BKE_tracking_dopesheet_tag_update(ptr noundef nonnull %4) #7
  ret void
}

declare void @tracks_map_merge(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_tracking_dopesheet_tag_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_tracking_context_sync_user(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 10
  %4 = load i32, ptr %3, align 4, !tbaa !51
  store i32 %4, ptr %1, align 4, !tbaa !50
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BKE_tracking_context_step(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [2 x float], align 4
  %3 = alloca [2 x float], align 4
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca %struct.MovieTrackingMarker, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x float], align 4
  %11 = alloca [2 x float], align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca [5 x double], align 16
  %15 = alloca [5 x double], align 16
  %16 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 8
  %17 = load i8, ptr %16, align 8, !tbaa !49
  %18 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !38
  %20 = load i32, ptr %0, align 8, !tbaa !85
  %21 = sitofp i32 %20 to float
  %22 = tail call float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef %19, float noundef %21) #7
  %23 = fptosi float %22 to i32
  %24 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !68
  %26 = tail call i32 @tracks_map_get_size(ptr noundef %25) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %231, label %28

28:                                               ; preds = %1
  %29 = icmp eq i8 %17, 0
  %30 = select i1 %29, i32 1, i32 -1
  %31 = load i32, ptr %0, align 8, !tbaa !85
  %32 = add nsw i32 %31, %30
  store i32 %32, ptr %0, align 8, !tbaa !85
  %33 = load ptr, ptr %18, align 8, !tbaa !38
  %34 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !79
  %36 = tail call ptr @BKE_movieclip_get_ibuf_flag(ptr noundef %33, ptr noundef nonnull %0, i32 noundef %35, i32 noundef 1) #7
  %37 = icmp eq ptr %36, null
  br i1 %37, label %231, label %38

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.ImBuf, ptr %36, i64 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !86
  %41 = getelementptr inbounds %struct.ImBuf, ptr %36, i64 0, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !90
  %43 = icmp sgt i32 %26, 0
  br i1 %43, label %44, label %225

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 5
  %46 = sitofp i32 %40 to float
  %47 = sitofp i32 %42 to float
  %48 = getelementptr inbounds [2 x float], ptr %10, i64 0, i64 1
  %49 = getelementptr inbounds [2 x float], ptr %11, i64 0, i64 1
  %50 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %6, i64 0, i32 5
  %51 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %6, i64 0, i32 4
  %52 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %53 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  %54 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  %55 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %56 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %6, i64 0, i32 2
  %57 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %6, i64 0, i32 2, i64 1
  %58 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %6, i64 0, i32 3
  %59 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %6, i64 0, i32 3, i64 1
  %60 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 5
  %61 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %6, i64 0, i32 4
  %62 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %6, i64 0, i32 5
  br label %63

63:                                               ; preds = %44, %221
  %64 = phi i32 [ 0, %44 ], [ %223, %221 ]
  %65 = phi i8 [ 0, %44 ], [ %222, %221 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #7
  store ptr null, ptr %12, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #7
  %66 = load ptr, ptr %24, align 8, !tbaa !68
  call void @tracks_map_get_indexed_element(ptr noundef %66, i32 noundef %64, ptr noundef nonnull %13, ptr noundef nonnull %12) #7
  %67 = load ptr, ptr %13, align 8, !tbaa !34
  %68 = call ptr @BKE_tracking_marker_get_exact(ptr noundef %67, i32 noundef %23) #7
  %69 = icmp eq ptr %68, null
  br i1 %69, label %221, label %70

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %68, i64 0, i32 5
  %72 = load i32, ptr %71, align 4, !tbaa !59
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %221

75:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %14) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %15) #7
  %76 = load ptr, ptr %13, align 8, !tbaa !34
  %77 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %76, i64 0, i32 19
  %78 = load i16, ptr %77, align 4, !tbaa !91
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i8, ptr %45, align 4, !tbaa !52
  br label %82

82:                                               ; preds = %75, %80
  %83 = phi i8 [ %81, %80 ], [ 1, %75 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #7
  call void @BKE_tracking_marker_pattern_minmax(ptr noundef nonnull %68, ptr noundef nonnull %10, ptr noundef nonnull %11) #7
  %84 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %76, i64 0, i32 18
  %85 = load i16, ptr %84, align 2, !tbaa !92
  %86 = sitofp i16 %85 to float
  %87 = fdiv float %86, %46
  %88 = load float, ptr %10, align 4, !tbaa !48
  %89 = fneg float %88
  %90 = fcmp olt float %87, %89
  %91 = select i1 %90, float %89, float %87
  %92 = load float, ptr %11, align 4, !tbaa !48
  %93 = fcmp ogt float %92, %87
  %94 = select i1 %93, float %92, float %87
  %95 = load float, ptr %68, align 4, !tbaa !48
  %96 = fcmp olt float %95, %91
  %97 = fsub float 1.000000e+00, %94
  %98 = fcmp ogt float %95, %97
  %99 = select i1 %96, i1 true, i1 %98
  br i1 %99, label %116, label %100

100:                                              ; preds = %82
  %101 = fdiv float %86, %47
  %102 = load float, ptr %48, align 4, !tbaa !48
  %103 = fneg float %102
  %104 = fcmp olt float %101, %103
  %105 = select i1 %104, float %103, float %101
  %106 = load float, ptr %49, align 4, !tbaa !48
  %107 = fcmp ogt float %106, %101
  %108 = select i1 %107, float %106, float %101
  %109 = getelementptr inbounds [2 x float], ptr %68, i64 0, i64 1
  %110 = load float, ptr %109, align 4, !tbaa !48
  %111 = fcmp uge float %110, %105
  %112 = fsub float 1.000000e+00, %108
  %113 = fcmp ule float %110, %112
  %114 = select i1 %111, i1 %113, i1 false
  %115 = zext i1 %114 to i8
  br label %116

116:                                              ; preds = %82, %100
  %117 = phi i8 [ 0, %82 ], [ %115, %100 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %167, label %119

119:                                              ; preds = %116
  %120 = icmp eq i8 %83, 0
  br i1 %120, label %155, label %121

121:                                              ; preds = %119
  %122 = load ptr, ptr %12, align 8, !tbaa !34
  %123 = load ptr, ptr %13, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  store ptr null, ptr %7, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  %124 = load ptr, ptr %18, align 8, !tbaa !38
  %125 = load i32, ptr %34, align 8, !tbaa !79
  %126 = load i8, ptr %16, align 8, !tbaa !49
  %127 = call fastcc ptr @tracking_context_get_reference_ibuf(ptr noundef %124, ptr noundef nonnull %0, i32 noundef %125, ptr noundef %123, i32 noundef %23, i8 noundef zeroext %126, ptr noundef nonnull %7)
  %128 = icmp eq ptr %127, null
  br i1 %128, label %218, label %129

129:                                              ; preds = %121
  %130 = load ptr, ptr %7, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %122, ptr noundef nonnull align 4 dereferenceable(64) %130, i64 64, i1 false), !tbaa.struct !93
  %131 = getelementptr inbounds %struct.TrackContext, ptr %122, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !82
  %133 = icmp eq ptr %132, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %129
  %135 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %135(ptr noundef nonnull %132) #7
  br label %136

136:                                              ; preds = %134, %129
  %137 = call fastcc ptr @track_get_search_floatbuf(ptr noundef nonnull %127, ptr noundef %123, ptr noundef %130, ptr noundef nonnull %8, ptr noundef nonnull %9)
  store ptr %137, ptr %131, align 8, !tbaa !82
  %138 = load i32, ptr %9, align 4, !tbaa !46
  %139 = getelementptr inbounds %struct.TrackContext, ptr %122, i64 0, i32 2
  store i32 %138, ptr %139, align 8, !tbaa !95
  %140 = load i32, ptr %8, align 4, !tbaa !46
  %141 = getelementptr inbounds %struct.TrackContext, ptr %122, i64 0, i32 3
  store i32 %140, ptr %141, align 4, !tbaa !96
  %142 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %123, i64 0, i32 21
  %143 = load i32, ptr %142, align 8, !tbaa !97
  %144 = and i32 %143, 8
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %154, label %146

146:                                              ; preds = %136
  %147 = getelementptr inbounds %struct.TrackContext, ptr %122, i64 0, i32 5
  %148 = load ptr, ptr %147, align 8, !tbaa !84
  %149 = icmp eq ptr %148, null
  br i1 %149, label %152, label %150

150:                                              ; preds = %146
  %151 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %151(ptr noundef nonnull %148) #7
  br label %152

152:                                              ; preds = %150, %146
  %153 = call ptr @BKE_tracking_track_get_mask(i32 noundef %40, i32 noundef %42, ptr noundef %123, ptr noundef nonnull %68) #7
  store ptr %153, ptr %147, align 8, !tbaa !84
  br label %154

154:                                              ; preds = %152, %136
  call void @IMB_freeImBuf(ptr noundef nonnull %127) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  br i1 %128, label %219, label %155

155:                                              ; preds = %154, %119
  %156 = load ptr, ptr %13, align 8, !tbaa !34
  %157 = load ptr, ptr %12, align 8, !tbaa !34
  %158 = getelementptr inbounds %struct.TrackContext, ptr %157, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !82
  %160 = getelementptr inbounds %struct.TrackContext, ptr %157, i64 0, i32 3
  %161 = load i32, ptr %160, align 4, !tbaa !96
  %162 = getelementptr inbounds %struct.TrackContext, ptr %157, i64 0, i32 2
  %163 = load i32, ptr %162, align 8, !tbaa !95
  %164 = getelementptr inbounds %struct.TrackContext, ptr %157, i64 0, i32 5
  %165 = load ptr, ptr %164, align 8, !tbaa !84
  %166 = call fastcc zeroext i8 @configure_and_run_tracker(ptr noundef nonnull %36, ptr noundef %156, ptr noundef %157, ptr noundef nonnull %68, ptr noundef %159, i32 noundef %161, i32 noundef %163, ptr noundef %165, ptr noundef nonnull %14, ptr noundef nonnull %15)
  br label %167

167:                                              ; preds = %155, %116
  %168 = phi i8 [ %166, %155 ], [ 0, %116 ]
  %169 = load ptr, ptr %24, align 8, !tbaa !68
  %170 = getelementptr inbounds %struct.TracksMap, ptr %169, i64 0, i32 8
  call void @BLI_spin_lock(ptr noundef nonnull %170) #7
  %171 = load ptr, ptr %13, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #7
  %172 = load i8, ptr %16, align 8, !tbaa !49
  %173 = icmp eq i8 %172, 0
  %174 = select i1 %173, i32 1, i32 -1
  %175 = add nsw i32 %174, %23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %6, ptr noundef nonnull align 4 dereferenceable(64) %68, i64 64, i1 false), !tbaa.struct !93
  %176 = icmp eq i8 %168, 0
  br i1 %176, label %211, label %177

177:                                              ; preds = %167
  call void @tracking_set_marker_coords_from_tracking(i32 noundef %40, i32 noundef %42, ptr noundef nonnull %6, ptr noundef nonnull %14, ptr noundef nonnull %15) #7
  %178 = load i32, ptr %50, align 4, !tbaa !59
  %179 = or i32 %178, 2
  store i32 %179, ptr %50, align 4, !tbaa !59
  store i32 %175, ptr %51, align 4, !tbaa !98
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  call void @BKE_tracking_marker_pattern_minmax(ptr noundef nonnull %68, ptr noundef nonnull %2, ptr noundef nonnull %3) #7
  call void @BKE_tracking_marker_pattern_minmax(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  %180 = load float, ptr %5, align 4, !tbaa !48
  %181 = load float, ptr %4, align 4, !tbaa !48
  %182 = fsub float %180, %181
  %183 = load float, ptr %3, align 4, !tbaa !48
  %184 = load float, ptr %2, align 4, !tbaa !48
  %185 = fsub float %183, %184
  %186 = fdiv float %182, %185
  %187 = load float, ptr %52, align 4, !tbaa !48
  %188 = load float, ptr %53, align 4, !tbaa !48
  %189 = fsub float %187, %188
  %190 = load float, ptr %54, align 4, !tbaa !48
  %191 = load float, ptr %55, align 4, !tbaa !48
  %192 = fsub float %190, %191
  %193 = fdiv float %189, %192
  %194 = load float, ptr %56, align 4, !tbaa !48
  %195 = fmul float %186, %194
  store float %195, ptr %56, align 4, !tbaa !48
  %196 = load float, ptr %57, align 4, !tbaa !48
  %197 = fmul float %193, %196
  store float %197, ptr %57, align 4, !tbaa !48
  %198 = load float, ptr %58, align 4, !tbaa !48
  %199 = fmul float %186, %198
  store float %199, ptr %58, align 4, !tbaa !48
  %200 = load float, ptr %59, align 4, !tbaa !48
  %201 = fmul float %193, %200
  store float %201, ptr %59, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  %202 = load i8, ptr %60, align 4, !tbaa !52
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %208, label %204

204:                                              ; preds = %177
  %205 = load i8, ptr %16, align 8, !tbaa !49
  %206 = icmp eq i8 %205, 0
  %207 = zext i1 %206 to i8
  call void @tracking_marker_insert_disabled(ptr noundef %171, ptr noundef nonnull %68, i8 noundef zeroext %207, i8 noundef zeroext 0) #7
  br label %208

208:                                              ; preds = %204, %177
  %209 = call ptr @BKE_tracking_marker_insert(ptr noundef %171, ptr noundef nonnull %6) #7
  %210 = load i8, ptr %16, align 8, !tbaa !49
  call void @tracking_marker_insert_disabled(ptr noundef %171, ptr noundef nonnull %6, i8 noundef zeroext %210, i8 noundef zeroext 0) #7
  br label %215

211:                                              ; preds = %167
  store i32 %175, ptr %61, align 4, !tbaa !98
  %212 = load i32, ptr %62, align 4, !tbaa !59
  %213 = or i32 %212, 1
  store i32 %213, ptr %62, align 4, !tbaa !59
  %214 = call ptr @BKE_tracking_marker_insert(ptr noundef %171, ptr noundef nonnull %6) #7
  br label %215

215:                                              ; preds = %208, %211
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #7
  %216 = load ptr, ptr %24, align 8, !tbaa !68
  %217 = getelementptr inbounds %struct.TracksMap, ptr %216, i64 0, i32 8
  call void @BLI_spin_unlock(ptr noundef nonnull %217) #7
  br label %219

218:                                              ; preds = %121
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  br label %219

219:                                              ; preds = %218, %154, %215
  %220 = phi i8 [ 1, %215 ], [ %65, %154 ], [ %65, %218 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %14) #7
  br label %221

221:                                              ; preds = %219, %63, %70
  %222 = phi i8 [ %220, %219 ], [ %65, %70 ], [ %65, %63 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #7
  %223 = add nuw nsw i32 %64, 1
  %224 = icmp eq i32 %223, %26
  br i1 %224, label %225, label %63, !llvm.loop !99

225:                                              ; preds = %221, %38
  %226 = phi i8 [ 0, %38 ], [ %222, %221 ]
  call void @IMB_freeImBuf(ptr noundef nonnull %36) #7
  %227 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 5
  store i8 0, ptr %227, align 4, !tbaa !52
  %228 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 3
  %229 = load i32, ptr %228, align 4, !tbaa !100
  %230 = add nsw i32 %229, 1
  store i32 %230, ptr %228, align 4, !tbaa !100
  br label %231

231:                                              ; preds = %28, %1, %225
  %232 = phi i8 [ %226, %225 ], [ 0, %1 ], [ 0, %28 ]
  ret i8 %232
}

declare i32 @tracks_map_get_size(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_movieclip_get_ibuf_flag(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @tracks_map_get_indexed_element(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_marker_get_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @configure_and_run_tracker(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) unnamed_addr #0 {
  %11 = alloca [5 x double], align 16
  %12 = alloca [5 x double], align 16
  %13 = alloca %struct.libmv_TrackRegionOptions, align 8
  %14 = alloca %struct.libmv_TrackRegionResult, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %13) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %13, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #7
  %17 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !86
  %19 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !90
  %21 = call fastcc ptr @track_get_search_floatbuf(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %15, ptr noundef nonnull %16)
  %22 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 20
  %23 = load i16, ptr %22, align 2, !tbaa !101
  %24 = sext i16 %23 to i32
  store i32 %24, ptr %13, align 8, !tbaa !102
  %25 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 21
  %26 = load i32, ptr %25, align 8, !tbaa !97
  %27 = and i32 %26, 1
  %28 = getelementptr inbounds %struct.libmv_TrackRegionOptions, ptr %13, i64 0, i32 2
  store i32 %27, ptr %28, align 8, !tbaa !105
  %29 = lshr i32 %26, 2
  %30 = and i32 %29, 1
  %31 = getelementptr inbounds %struct.libmv_TrackRegionOptions, ptr %13, i64 0, i32 3
  store i32 %30, ptr %31, align 4, !tbaa !106
  %32 = getelementptr inbounds %struct.libmv_TrackRegionOptions, ptr %13, i64 0, i32 1
  store i32 50, ptr %32, align 4, !tbaa !107
  %33 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 22
  %34 = load float, ptr %33, align 4, !tbaa !108
  %35 = fpext float %34 to double
  %36 = getelementptr inbounds %struct.libmv_TrackRegionOptions, ptr %13, i64 0, i32 4
  store double %35, ptr %36, align 8, !tbaa !109
  %37 = getelementptr inbounds %struct.libmv_TrackRegionOptions, ptr %13, i64 0, i32 5
  store double 9.000000e-01, ptr %37, align 8, !tbaa !110
  %38 = and i32 %26, 8
  %39 = icmp eq i32 %38, 0
  %40 = getelementptr inbounds %struct.libmv_TrackRegionOptions, ptr %13, i64 0, i32 6
  %41 = select i1 %39, ptr null, ptr %7
  store ptr %41, ptr %40, align 8, !tbaa !111
  call void @tracking_get_marker_coords_for_tracking(i32 noundef %18, i32 noundef %20, ptr noundef %2, ptr noundef nonnull %11, ptr noundef nonnull %12) #7
  call void @tracking_get_marker_coords_for_tracking(i32 noundef %18, i32 noundef %20, ptr noundef %3, ptr noundef %8, ptr noundef %9) #7
  %42 = icmp eq ptr %21, null
  %43 = icmp eq ptr %4, null
  %44 = or i1 %43, %42
  br i1 %44, label %51, label %45

45:                                               ; preds = %10
  %46 = load i32, ptr %15, align 4, !tbaa !46
  %47 = load i32, ptr %16, align 4, !tbaa !46
  %48 = call i32 @libmv_trackRegion(ptr noundef nonnull %13, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %21, i32 noundef %46, i32 noundef %47, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %14, ptr noundef %8, ptr noundef %9) #7
  %49 = trunc i32 %48 to i8
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %50(ptr noundef %21) #7
  br label %51

51:                                               ; preds = %10, %45
  %52 = phi i8 [ %49, %45 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %13) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #7
  ret i8 %52
}

declare void @BLI_spin_lock(ptr noundef) local_unnamed_addr #2

declare void @BLI_spin_unlock(ptr noundef) local_unnamed_addr #2

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_context_finish(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11
  %7 = tail call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %6) #7
  %8 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = tail call i32 @tracks_map_get_size(ptr noundef %9) #7
  %11 = load ptr, ptr %7, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %66, label %13

13:                                               ; preds = %1
  %14 = icmp slt i32 %10, 1
  %15 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 4
  br label %16

16:                                               ; preds = %13, %63
  %17 = phi ptr [ %11, %13 ], [ %64, %63 ]
  %18 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %17, i64 0, i32 8
  %19 = load i32, ptr %18, align 4, !tbaa !112
  %20 = and i32 %19, 8
  %21 = icmp ne i32 %20, 0
  %22 = select i1 %21, i1 true, i1 %14
  br i1 %22, label %63, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %17, i64 0, i32 4
  %25 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %17, i64 0, i32 3
  br label %26

26:                                               ; preds = %61, %23
  %27 = phi i32 [ 0, %23 ], [ %62, %61 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  store ptr null, ptr %2, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %28 = load ptr, ptr %8, align 8, !tbaa !68
  call void @tracks_map_get_indexed_element(ptr noundef %28, i32 noundef %27, ptr noundef nonnull %3, ptr noundef nonnull %2) #7
  %29 = load ptr, ptr %8, align 8, !tbaa !68
  %30 = getelementptr inbounds %struct.TracksMap, ptr %29, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !114
  %32 = load ptr, ptr %3, align 8, !tbaa !34
  %33 = call ptr @BLI_ghash_lookup(ptr noundef %31, ptr noundef %32) #7
  %34 = load i32, ptr %24, align 8, !tbaa !116
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %26
  %37 = load ptr, ptr %25, align 8, !tbaa !117
  %38 = zext nneg i32 %34 to i64
  %39 = zext nneg i32 %34 to i64
  %40 = load ptr, ptr %37, align 8, !tbaa !34
  %41 = icmp eq ptr %40, %33
  br i1 %41, label %52, label %42

42:                                               ; preds = %36, %46
  %43 = phi i64 [ %44, %46 ], [ 0, %36 ]
  %44 = add nuw nsw i64 %43, 1
  %45 = icmp eq i64 %44, %39
  br i1 %45, label %58, label %46, !llvm.loop !118

46:                                               ; preds = %42
  %47 = getelementptr inbounds ptr, ptr %37, i64 %44
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = icmp eq ptr %48, %33
  br i1 %49, label %50, label %42, !llvm.loop !118

50:                                               ; preds = %46
  %51 = icmp ult i64 %44, %38
  br label %52

52:                                               ; preds = %50, %36
  %53 = phi i1 [ %51, %50 ], [ %35, %36 ]
  %54 = load i32, ptr %15, align 8, !tbaa !53
  call void @BKE_tracking_track_plane_from_existing_motion(ptr noundef nonnull %17, i32 noundef %54) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  %55 = add nuw nsw i32 %27, 1
  %56 = icmp sge i32 %55, %10
  %57 = select i1 %53, i1 true, i1 %56
  br i1 %57, label %63, label %61

58:                                               ; preds = %42, %26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  %59 = add nuw nsw i32 %27, 1
  %60 = icmp slt i32 %59, %10
  br i1 %60, label %61, label %63

61:                                               ; preds = %58, %52
  %62 = phi i32 [ %59, %58 ], [ %55, %52 ]
  br label %26, !llvm.loop !119

63:                                               ; preds = %52, %58, %16
  %64 = load ptr, ptr %17, align 8, !tbaa !34
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %16, !llvm.loop !120

66:                                               ; preds = %63, %1
  ret void
}

declare ptr @BKE_tracking_get_active_plane_tracks(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_tracking_track_plane_from_existing_motion(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_refine_marker(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.MovieClipUser, align 8
  %11 = alloca [5 x double], align 16
  %12 = alloca [5 x double], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  store ptr null, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  %13 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 14
  %14 = load i32, ptr %13, align 8, !tbaa !70
  %15 = and i32 %14, 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #7
  store i64 0, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #7
  %16 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !98
  %18 = sitofp i32 %17 to float
  %19 = tail call float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef %0, float noundef %18) #7
  %20 = fptosi float %19 to i32
  store i32 %20, ptr %10, align 8, !tbaa !50
  call void @BKE_movieclip_get_size(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %21 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !121
  %23 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 8
  %24 = load i32, ptr %23, align 8, !tbaa !122
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %22, i64 %25
  %27 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %26, i64 -1
  %28 = icmp eq i8 %3, 0
  %29 = select i1 %28, i64 -1, i64 1
  br label %30

30:                                               ; preds = %36, %4
  %31 = phi ptr [ %2, %4 ], [ %32, %36 ]
  %32 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %31, i64 %29
  %33 = icmp ult ptr %32, %22
  %34 = icmp ugt ptr %32, %27
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %31, i64 %29, i32 5
  %38 = load i32, ptr %37, align 4, !tbaa !59
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %30, !llvm.loop !123

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %31, i64 %29, i32 4
  %43 = load i32, ptr %42, align 4, !tbaa !98
  br label %44

44:                                               ; preds = %30, %41
  %45 = phi i32 [ %43, %41 ], [ undef, %30 ]
  br i1 %35, label %85, label %46

46:                                               ; preds = %44
  %47 = call fastcc ptr @tracking_context_get_reference_ibuf(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %15, ptr noundef %1, i32 noundef %45, i8 noundef zeroext %3, ptr noundef nonnull %5)
  %48 = icmp eq ptr %47, null
  %49 = load ptr, ptr %5, align 8
  %50 = icmp eq ptr %49, %2
  %51 = select i1 %48, i1 true, i1 %50
  br i1 %51, label %85, label %52

52:                                               ; preds = %46
  %53 = call ptr @BKE_movieclip_get_ibuf_flag(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %15, i32 noundef 1) #7
  %54 = icmp eq ptr %53, null
  br i1 %54, label %83, label %55

55:                                               ; preds = %52
  %56 = call fastcc ptr @track_get_search_floatbuf(ptr noundef nonnull %47, ptr noundef %1, ptr noundef %49, ptr noundef nonnull %9, ptr noundef nonnull %8)
  %57 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 21
  %58 = load i32, ptr %57, align 8, !tbaa !97
  %59 = and i32 %58, 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %55
  %62 = load i32, ptr %6, align 4, !tbaa !46
  %63 = load i32, ptr %7, align 4, !tbaa !46
  %64 = call ptr @BKE_tracking_track_get_mask(i32 noundef %62, i32 noundef %63, ptr noundef %1, ptr noundef %2) #7
  br label %65

65:                                               ; preds = %61, %55
  %66 = phi ptr [ %64, %61 ], [ null, %55 ]
  %67 = load i32, ptr %9, align 4, !tbaa !46
  %68 = load i32, ptr %8, align 4, !tbaa !46
  %69 = call fastcc zeroext i8 @configure_and_run_tracker(ptr noundef nonnull %53, ptr noundef %1, ptr noundef %49, ptr noundef %2, ptr noundef %56, i32 noundef %67, i32 noundef %68, ptr noundef %66, ptr noundef nonnull %11, ptr noundef nonnull %12)
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load i32, ptr %6, align 4, !tbaa !46
  %73 = load i32, ptr %7, align 4, !tbaa !46
  call void @tracking_set_marker_coords_from_tracking(i32 noundef %72, i32 noundef %73, ptr noundef %2, ptr noundef nonnull %11, ptr noundef nonnull %12) #7
  %74 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 5
  %75 = load i32, ptr %74, align 4, !tbaa !59
  %76 = or i32 %75, 2
  store i32 %76, ptr %74, align 4, !tbaa !59
  br label %77

77:                                               ; preds = %71, %65
  %78 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %78(ptr noundef %56) #7
  %79 = icmp eq ptr %66, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %81(ptr noundef nonnull %66) #7
  br label %82

82:                                               ; preds = %80, %77
  call void @IMB_freeImBuf(ptr noundef nonnull %47) #7
  br label %83

83:                                               ; preds = %52, %82
  %84 = phi ptr [ %53, %82 ], [ %47, %52 ]
  call void @IMB_freeImBuf(ptr noundef nonnull %84) #7
  br label %85

85:                                               ; preds = %83, %46, %44
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  ret void
}

declare float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @tracking_context_get_reference_ibuf(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5, ptr nocapture noundef writeonly %6) unnamed_addr #0 {
  %8 = alloca %struct.MovieClipUser, align 8
  %9 = alloca %struct.MovieClipUser, align 8
  %10 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %3, i64 0, i32 19
  %11 = load i16, ptr %10, align 4, !tbaa !91
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %82

13:                                               ; preds = %7
  %14 = tail call ptr @BKE_tracking_marker_get(ptr noundef %3, i32 noundef %4) #7
  %15 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %3, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !121
  %17 = ptrtoint ptr %14 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = lshr exact i64 %19, 6
  %21 = trunc i64 %20 to i32
  %22 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %3, i64 0, i32 8
  %23 = icmp eq i8 %5, 0
  %24 = select i1 %23, i32 -1, i32 1
  br label %25

25:                                               ; preds = %62, %13
  %26 = phi i32 [ %21, %13 ], [ %66, %62 ]
  %27 = phi ptr [ null, %13 ], [ %63, %62 ]
  %28 = phi ptr [ null, %13 ], [ %67, %62 ]
  %29 = icmp sgt i32 %26, -1
  br i1 %29, label %30, label %68

30:                                               ; preds = %25
  %31 = load i32, ptr %22, align 8, !tbaa !122
  %32 = icmp slt i32 %26, %31
  br i1 %32, label %33, label %68

33:                                               ; preds = %30
  %34 = add nsw i32 %26, %24
  %35 = zext nneg i32 %26 to i64
  %36 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %16, i64 %35
  %37 = icmp sgt i32 %34, -1
  %38 = icmp slt i32 %34, %31
  %39 = and i1 %37, %38
  %40 = zext nneg i32 %34 to i64
  %41 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %16, i64 %40
  %42 = select i1 %39, ptr %41, ptr null
  %43 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %16, i64 %35, i32 5
  %44 = load i32, ptr %43, align 4, !tbaa !59
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %33
  %48 = icmp eq ptr %42, null
  br i1 %48, label %57, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %42, i64 0, i32 5
  %51 = load i32, ptr %50, align 4, !tbaa !59
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  %54 = icmp eq ptr %27, null
  %55 = select i1 %53, i1 %54, i1 false
  %56 = select i1 %55, ptr %36, ptr %27
  br label %57

57:                                               ; preds = %49, %47
  %58 = phi ptr [ %27, %47 ], [ %56, %49 ]
  %59 = and i32 %44, 2
  %60 = icmp eq i32 %59, 0
  %61 = zext i1 %60 to i8
  br label %62

62:                                               ; preds = %57, %33
  %63 = phi ptr [ %58, %57 ], [ %27, %33 ]
  %64 = phi i8 [ %61, %57 ], [ 0, %33 ]
  %65 = icmp eq i8 %64, 0
  %66 = select i1 %65, i32 %34, i32 %26
  %67 = select i1 %65, ptr %28, ptr %36
  br i1 %65, label %25, label %68

68:                                               ; preds = %62, %30, %25
  %69 = phi ptr [ %63, %62 ], [ %27, %30 ], [ %27, %25 ]
  %70 = phi ptr [ %67, %62 ], [ %28, %30 ], [ %28, %25 ]
  %71 = icmp eq ptr %70, null
  %72 = select i1 %71, ptr %69, ptr %70
  %73 = icmp eq ptr %72, null
  br i1 %73, label %89, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %72, i64 0, i32 4
  %76 = load i32, ptr %75, align 4, !tbaa !98
  store ptr %72, ptr %6, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #7
  %77 = load i64, ptr %1, align 4
  store i64 %77, ptr %9, align 8
  %78 = sitofp i32 %76 to float
  %79 = tail call float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef %0, float noundef %78) #7
  %80 = fptosi float %79 to i32
  store i32 %80, ptr %9, align 8, !tbaa !50
  %81 = call ptr @BKE_movieclip_get_ibuf_flag(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %2, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7
  br label %89

82:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7
  %83 = load i64, ptr %1, align 4
  store i64 %83, ptr %8, align 8
  %84 = sitofp i32 %4 to float
  %85 = tail call float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef %0, float noundef %84) #7
  %86 = fptosi float %85 to i32
  store i32 %86, ptr %8, align 8, !tbaa !50
  %87 = call ptr @BKE_movieclip_get_ibuf_flag(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %2, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  %88 = call ptr @BKE_tracking_marker_get(ptr noundef %3, i32 noundef %4) #7
  store ptr %88, ptr %6, align 8, !tbaa !34
  br label %89

89:                                               ; preds = %74, %68, %82
  %90 = phi ptr [ %87, %82 ], [ %81, %74 ], [ null, %68 ]
  ret ptr %90
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @track_get_search_floatbuf(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = tail call ptr @BKE_tracking_get_search_imbuf(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0, i8 noundef zeroext 1) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %66, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !86
  %11 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !90
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %14 = mul nsw i32 %12, %10
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 2
  %17 = tail call ptr %13(i64 noundef %16, ptr noundef nonnull @.str.1) #7
  %18 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !124
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %8
  %22 = icmp sgt i32 %14, 0
  br i1 %22, label %23, label %65

23:                                               ; preds = %21
  %24 = zext nneg i32 %14 to i64
  br label %25

25:                                               ; preds = %23, %25
  %26 = phi i64 [ 0, %23 ], [ %38, %25 ]
  %27 = shl nsw i64 %26, 2
  %28 = getelementptr inbounds float, ptr %19, i64 %27
  %29 = load float, ptr %28, align 4, !tbaa !48
  %30 = getelementptr inbounds float, ptr %28, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !48
  %32 = fmul float %31, 0x3FE6E2EB20000000
  %33 = tail call float @llvm.fmuladd.f32(float %29, float 0x3FCB367A00000000, float %32)
  %34 = getelementptr inbounds float, ptr %28, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !48
  %36 = tail call float @llvm.fmuladd.f32(float %35, float 0x3FB27BB300000000, float %33)
  %37 = getelementptr inbounds float, ptr %17, i64 %26
  store float %36, ptr %37, align 4, !tbaa !48
  %38 = add nuw nsw i64 %26, 1
  %39 = icmp eq i64 %38, %24
  br i1 %39, label %65, label %25, !llvm.loop !125

40:                                               ; preds = %8
  %41 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !126
  %43 = icmp sgt i32 %14, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %40
  %45 = zext nneg i32 %14 to i64
  br label %46

46:                                               ; preds = %44, %46
  %47 = phi i64 [ 0, %44 ], [ %63, %46 ]
  %48 = shl nsw i64 %47, 2
  %49 = getelementptr inbounds i8, ptr %42, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !94
  %51 = uitofp i8 %50 to float
  %52 = getelementptr inbounds i8, ptr %49, i64 1
  %53 = load i8, ptr %52, align 1, !tbaa !94
  %54 = uitofp i8 %53 to float
  %55 = fmul float %54, 0x3FE6E2EB20000000
  %56 = tail call float @llvm.fmuladd.f32(float %51, float 0x3FCB367A00000000, float %55)
  %57 = getelementptr inbounds i8, ptr %49, i64 2
  %58 = load i8, ptr %57, align 1, !tbaa !94
  %59 = uitofp i8 %58 to float
  %60 = tail call float @llvm.fmuladd.f32(float %59, float 0x3FB27BB300000000, float %56)
  %61 = fdiv float %60, 2.550000e+02
  %62 = getelementptr inbounds float, ptr %17, i64 %47
  store float %61, ptr %62, align 4, !tbaa !48
  %63 = add nuw nsw i64 %47, 1
  %64 = icmp eq i64 %63, %45
  br i1 %64, label %65, label %46, !llvm.loop !127

65:                                               ; preds = %25, %46, %21, %40
  tail call void @IMB_freeImBuf(ptr noundef nonnull %6) #7
  br label %66

66:                                               ; preds = %5, %65
  %67 = phi i32 [ %10, %65 ], [ 0, %5 ]
  %68 = phi i32 [ %12, %65 ], [ 0, %5 ]
  %69 = phi ptr [ %17, %65 ], [ null, %5 ]
  store i32 %67, ptr %3, align 4, !tbaa !46
  store i32 %68, ptr %4, align 4, !tbaa !46
  ret ptr %69
}

declare ptr @BKE_tracking_track_get_mask(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @tracking_set_marker_coords_from_tracking(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_tracking_marker_pattern_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @tracking_get_marker_coords_for_tracking(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @libmv_trackRegion(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @tracking_marker_insert_disabled(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BKE_tracking_marker_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_get_search_imbuf(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 8}
!39 = !{!"MovieTrackingContext", !40, i64 0, !35, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !36, i64 28, !43, i64 32, !35, i64 104, !36, i64 112, !36, i64 113, !41, i64 116}
!40 = !{!"MovieClipUser", !41, i64 0, !42, i64 4, !42, i64 6}
!41 = !{!"int", !36, i64 0}
!42 = !{!"short", !36, i64 0}
!43 = !{!"MovieTrackingSettings", !41, i64 0, !42, i64 4, !42, i64 6, !44, i64 8, !42, i64 12, !42, i64 14, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !44, i64 24, !42, i64 28, !42, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !42, i64 44, !42, i64 46, !44, i64 48, !41, i64 52, !41, i64 56, !44, i64 60, !44, i64 64, !41, i64 68}
!44 = !{!"float", !36, i64 0}
!45 = !{i64 0, i64 4, !46, i64 4, i64 2, !47, i64 6, i64 2, !47, i64 8, i64 4, !48, i64 12, i64 2, !47, i64 14, i64 2, !47, i64 16, i64 2, !47, i64 18, i64 2, !47, i64 20, i64 2, !47, i64 22, i64 2, !47, i64 24, i64 4, !48, i64 28, i64 2, !47, i64 30, i64 2, !47, i64 32, i64 4, !46, i64 36, i64 4, !46, i64 40, i64 4, !46, i64 44, i64 2, !47, i64 46, i64 2, !47, i64 48, i64 4, !48, i64 52, i64 4, !46, i64 56, i64 4, !46, i64 60, i64 4, !48, i64 64, i64 4, !48, i64 68, i64 4, !46}
!46 = !{!41, !41, i64 0}
!47 = !{!42, !42, i64 0}
!48 = !{!44, !44, i64 0}
!49 = !{!39, !36, i64 112}
!50 = !{!40, !41, i64 0}
!51 = !{!39, !41, i64 116}
!52 = !{!39, !36, i64 28}
!53 = !{!39, !41, i64 24}
!54 = !{!39, !36, i64 113}
!55 = !{!56, !41, i64 152}
!56 = !{!"MovieTrackingTrack", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !41, i64 120, !41, i64 124, !35, i64 128, !36, i64 136, !44, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !36, i64 164, !42, i64 176, !42, i64 178, !42, i64 180, !42, i64 182, !41, i64 184, !44, i64 188, !35, i64 192, !44, i64 200, !44, i64 204}
!57 = !{!56, !41, i64 156}
!58 = !{!56, !41, i64 160}
!59 = !{!60, !41, i64 60}
!60 = !{!"MovieTrackingMarker", !36, i64 0, !36, i64 8, !36, i64 40, !36, i64 48, !41, i64 56, !41, i64 60}
!61 = distinct !{!61, !62, !63}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !{!65, !41, i64 80}
!65 = !{!"MovieTrackingObject", !35, i64 0, !35, i64 8, !36, i64 16, !41, i64 80, !44, i64 84, !66, i64 88, !66, i64 104, !67, i64 120, !41, i64 144, !41, i64 148}
!66 = !{!"ListBase", !35, i64 0, !35, i64 8}
!67 = !{!"MovieTrackingReconstruction", !41, i64 0, !44, i64 4, !41, i64 8, !41, i64 12, !35, i64 16}
!68 = !{!39, !35, i64 104}
!69 = distinct !{!69, !62, !63}
!70 = !{!71, !41, i64 2312}
!71 = !{!"MovieClip", !72, i64 0, !35, i64 120, !36, i64 128, !41, i64 1152, !41, i64 1156, !36, i64 1160, !44, i64 1168, !44, i64 1172, !35, i64 1176, !35, i64 1184, !35, i64 1192, !73, i64 1200, !35, i64 1528, !77, i64 1536, !41, i64 2312, !41, i64 2316, !41, i64 2320, !41, i64 2324, !78, i64 2328}
!72 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !42, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !35, i64 112}
!73 = !{!"MovieTracking", !43, i64 0, !74, i64 72, !66, i64 128, !66, i64 144, !67, i64 160, !75, i64 184, !35, i64 232, !35, i64 240, !66, i64 248, !41, i64 264, !41, i64 268, !35, i64 272, !76, i64 280}
!74 = !{!"MovieTrackingCamera", !35, i64 0, !42, i64 8, !42, i64 10, !44, i64 12, !44, i64 16, !44, i64 20, !42, i64 24, !42, i64 26, !36, i64 28, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52}
!75 = !{!"MovieTrackingStabilization", !41, i64 0, !41, i64 4, !41, i64 8, !44, i64 12, !35, i64 16, !44, i64 24, !44, i64 28, !44, i64 32, !41, i64 36, !41, i64 40, !44, i64 44}
!76 = !{!"MovieTrackingDopesheet", !41, i64 0, !42, i64 4, !42, i64 6, !66, i64 8, !66, i64 24, !41, i64 40, !41, i64 44}
!77 = !{!"MovieClipProxy", !36, i64 0, !42, i64 768, !42, i64 770, !42, i64 772, !42, i64 774}
!78 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!79 = !{!39, !41, i64 16}
!80 = !{!39, !42, i64 4}
!81 = !{!39, !42, i64 6}
!82 = !{!83, !35, i64 64}
!83 = !{!"TrackContext", !60, i64 0, !35, i64 64, !41, i64 72, !41, i64 76, !41, i64 80, !35, i64 88}
!84 = !{!83, !35, i64 88}
!85 = !{!39, !41, i64 0}
!86 = !{!87, !41, i64 16}
!87 = !{!"ImBuf", !35, i64 0, !35, i64 8, !41, i64 16, !41, i64 20, !36, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !35, i64 40, !35, i64 48, !36, i64 56, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !44, i64 112, !36, i64 120, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !35, i64 296, !35, i64 304, !41, i64 312, !36, i64 316, !36, i64 1340, !35, i64 2368, !41, i64 2376, !35, i64 2384, !41, i64 2392, !41, i64 2396, !35, i64 2400, !35, i64 2408, !35, i64 2416, !35, i64 2424, !41, i64 2432, !88, i64 2436, !89, i64 2456}
!88 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!89 = !{!"DDSData", !41, i64 0, !41, i64 4, !35, i64 8, !41, i64 16}
!90 = !{!87, !41, i64 20}
!91 = !{!56, !42, i64 180}
!92 = !{!56, !42, i64 178}
!93 = !{i64 0, i64 8, !94, i64 8, i64 32, !94, i64 40, i64 8, !94, i64 48, i64 8, !94, i64 56, i64 4, !46, i64 60, i64 4, !46}
!94 = !{!36, !36, i64 0}
!95 = !{!83, !41, i64 72}
!96 = !{!83, !41, i64 76}
!97 = !{!56, !41, i64 184}
!98 = !{!60, !41, i64 56}
!99 = distinct !{!99, !62, !63}
!100 = !{!39, !41, i64 20}
!101 = !{!56, !42, i64 182}
!102 = !{!103, !41, i64 0}
!103 = !{!"libmv_TrackRegionOptions", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !104, i64 16, !104, i64 24, !35, i64 32}
!104 = !{!"double", !36, i64 0}
!105 = !{!103, !41, i64 8}
!106 = !{!103, !41, i64 12}
!107 = !{!103, !41, i64 4}
!108 = !{!56, !44, i64 188}
!109 = !{!103, !104, i64 16}
!110 = !{!103, !104, i64 24}
!111 = !{!103, !35, i64 32}
!112 = !{!113, !41, i64 108}
!113 = !{!"MovieTrackingPlaneTrack", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 80, !41, i64 88, !41, i64 92, !35, i64 96, !41, i64 104, !41, i64 108, !35, i64 112, !44, i64 120, !41, i64 124}
!114 = !{!115, !35, i64 96}
!115 = !{!"TracksMap", !36, i64 0, !36, i64 64, !41, i64 68, !41, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !41, i64 104, !41, i64 108}
!116 = !{!113, !41, i64 88}
!117 = !{!113, !35, i64 80}
!118 = distinct !{!118, !62, !63}
!119 = distinct !{!119, !62, !63}
!120 = distinct !{!120, !62, !63}
!121 = !{!56, !35, i64 128}
!122 = !{!56, !41, i64 120}
!123 = distinct !{!123, !62, !63}
!124 = !{!87, !35, i64 48}
!125 = distinct !{!125, !62, !63}
!126 = !{!87, !35, i64 40}
!127 = distinct !{!127, !62, !63}
