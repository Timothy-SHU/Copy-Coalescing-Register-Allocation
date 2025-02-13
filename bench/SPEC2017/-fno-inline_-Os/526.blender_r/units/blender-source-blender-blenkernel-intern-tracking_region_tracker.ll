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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_tracking_context_new(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TrackContext, align 8
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %9 = tail call ptr %8(i64 noundef 120, ptr noundef nonnull @.str) #10
  %10 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11
  %11 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %10) #10
  %12 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %10) #10
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
  br i1 %22, label %111, label %23

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
  %49 = tail call float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef %0, float noundef %48) #10
  %50 = fptosi float %49 to i32
  %51 = tail call ptr @BKE_tracking_marker_get(ptr noundef nonnull %24, i32 noundef %50) #10
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

61:                                               ; preds = %57
  %62 = icmp eq i32 %58, 0
  br i1 %62, label %111, label %63

63:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  %64 = getelementptr inbounds %struct.MovieTrackingObject, ptr %12, i64 0, i32 2
  %65 = getelementptr inbounds %struct.MovieTrackingObject, ptr %12, i64 0, i32 3
  %66 = load i32, ptr %65, align 8, !tbaa !63
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 1
  %69 = tail call ptr @tracks_map_new(ptr noundef nonnull %64, i8 noundef zeroext %68, i32 noundef %58, i32 noundef 96) #10
  %70 = getelementptr inbounds %struct.MovieTrackingContext, ptr %9, i64 0, i32 7
  store ptr %69, ptr %70, align 8, !tbaa !67
  call void @BKE_movieclip_get_size(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %71 = load ptr, ptr %11, align 8, !tbaa !34
  %72 = icmp eq ptr %71, null
  br i1 %72, label %110, label %73

73:                                               ; preds = %63, %107
  %74 = phi ptr [ %108, %107 ], [ %71, %63 ]
  %75 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %74, i64 0, i32 13
  %76 = load i32, ptr %75, align 8, !tbaa !55
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %74, i64 0, i32 14
  %81 = load i32, ptr %80, align 4, !tbaa !57
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %74, i64 0, i32 15
  %86 = load i32, ptr %85, align 8, !tbaa !58
  %87 = and i32 %86, 1
  %88 = icmp ne i32 %87, 0
  %89 = and i32 %76, 96
  %90 = icmp eq i32 %89, 0
  %91 = and i1 %90, %88
  br i1 %91, label %95, label %107

92:                                               ; preds = %79, %73
  %93 = and i32 %76, 96
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %84, %92
  %96 = load i32, ptr %1, align 4, !tbaa !50
  %97 = sitofp i32 %96 to float
  %98 = call float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef %0, float noundef %97) #10
  %99 = fptosi float %98 to i32
  %100 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %74, i32 noundef %99) #10
  %101 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %100, i64 0, i32 5
  %102 = load i32, ptr %101, align 4, !tbaa !59
  %103 = and i32 %102, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %95
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %7, i8 0, i64 96, i1 false)
  %106 = load ptr, ptr %70, align 8, !tbaa !67
  call void @tracks_map_insert(ptr noundef %106, ptr noundef nonnull %74, ptr noundef nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #11
  br label %107

107:                                              ; preds = %95, %105, %92, %84
  %108 = load ptr, ptr %74, align 8, !tbaa !34
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %73, !llvm.loop !68

110:                                              ; preds = %107, %63
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  br label %111

111:                                              ; preds = %4, %110, %61
  %112 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 14
  %113 = load i32, ptr %112, align 8, !tbaa !69
  %114 = and i32 %113, 3
  %115 = getelementptr inbounds %struct.MovieTrackingContext, ptr %9, i64 0, i32 2
  store i32 %114, ptr %115, align 8, !tbaa !78
  %116 = load i64, ptr %1, align 4
  store i64 %116, ptr %9, align 8
  %117 = getelementptr inbounds %struct.MovieClipUser, ptr %9, i64 0, i32 1
  store i16 0, ptr %117, align 4, !tbaa !79
  %118 = getelementptr inbounds %struct.MovieClipUser, ptr %9, i64 0, i32 2
  store i16 0, ptr %118, align 2, !tbaa !80
  %119 = icmp eq i8 %3, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  call void @BLI_begin_threaded_malloc() #10
  br label %121

121:                                              ; preds = %120, %111
  ret ptr %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BKE_tracking_get_active_tracks(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_tracking_object_get_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: optsize
declare float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_tracking_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @tracks_map_new(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_movieclip_get_size(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: optsize
declare void @tracks_map_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_begin_threaded_malloc() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_context_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 9
  %3 = load i8, ptr %2, align 1, !tbaa !54
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @BLI_end_threaded_malloc() #10
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  tail call void @tracks_map_free(ptr noundef %8, ptr noundef nonnull @track_context_free) #10
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %9(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: optsize
declare void @BLI_end_threaded_malloc() local_unnamed_addr #2

; Function Attrs: optsize
declare void @tracks_map_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @track_context_free(ptr nocapture noundef readonly %0) #0 !PGOFuncName !81 {
  %2 = getelementptr inbounds %struct.TrackContext, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef nonnull %3) #10
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.TrackContext, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !84
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %12(ptr noundef nonnull %9) #10
  br label %13

13:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_context_sync(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.MovieClip, ptr %3, i64 0, i32 11
  %5 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  tail call void @tracks_map_merge(ptr noundef %6, ptr noundef nonnull %4) #10
  %7 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 8
  %8 = load i8, ptr %7, align 8, !tbaa !49
  %9 = icmp eq i8 %8, 0
  %10 = load i32, ptr %0, align 8, !tbaa !85
  %11 = select i1 %9, i32 -1, i32 1
  %12 = add nsw i32 %10, %11
  %13 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 10
  store i32 %12, ptr %13, align 4, !tbaa !51
  tail call void @BKE_tracking_dopesheet_tag_update(ptr noundef nonnull %4) #10
  ret void
}

; Function Attrs: optsize
declare void @tracks_map_merge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_tracking_dopesheet_tag_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_tracking_context_sync_user(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 10
  %4 = load i32, ptr %3, align 4, !tbaa !51
  store i32 %4, ptr %1, align 4, !tbaa !50
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BKE_tracking_context_step(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [5 x double], align 16
  %5 = alloca [5 x double], align 16
  %6 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 8
  %7 = load i8, ptr %6, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = load i32, ptr %0, align 8, !tbaa !85
  %11 = sitofp i32 %10 to float
  %12 = tail call float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef %9, float noundef %11) #10
  %13 = fptosi float %12 to i32
  %14 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  %16 = tail call i32 @tracks_map_get_size(ptr noundef %15) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %98, label %18

18:                                               ; preds = %1
  %19 = icmp eq i8 %7, 0
  %20 = select i1 %19, i32 1, i32 -1
  %21 = load i32, ptr %0, align 8, !tbaa !85
  %22 = add nsw i32 %21, %20
  store i32 %22, ptr %0, align 8, !tbaa !85
  %23 = load ptr, ptr %8, align 8, !tbaa !38
  %24 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !78
  %26 = tail call ptr @BKE_movieclip_get_ibuf_flag(ptr noundef %23, ptr noundef nonnull %0, i32 noundef %25, i32 noundef 1) #10
  %27 = icmp eq ptr %26, null
  br i1 %27, label %98, label %28

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.ImBuf, ptr %26, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !86
  %31 = getelementptr inbounds %struct.ImBuf, ptr %26, i64 0, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !90
  %33 = icmp sgt i32 %16, 0
  br i1 %33, label %34, label %92

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 5
  br label %36

36:                                               ; preds = %34, %88
  %37 = phi i32 [ 0, %34 ], [ %90, %88 ]
  %38 = phi i8 [ 0, %34 ], [ %89, %88 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  store ptr null, ptr %2, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %39 = load ptr, ptr %14, align 8, !tbaa !67
  call void @tracks_map_get_indexed_element(ptr noundef %39, i32 noundef %37, ptr noundef nonnull %3, ptr noundef nonnull %2) #10
  %40 = load ptr, ptr %3, align 8, !tbaa !34
  %41 = call ptr @BKE_tracking_marker_get_exact(ptr noundef %40, i32 noundef %13) #10
  %42 = icmp eq ptr %41, null
  br i1 %42, label %88, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %41, i64 0, i32 5
  %45 = load i32, ptr %44, align 4, !tbaa !59
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %88

48:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #11
  %49 = load ptr, ptr %3, align 8, !tbaa !34
  %50 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %49, i64 0, i32 19
  %51 = load i16, ptr %50, align 4, !tbaa !91
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i8, ptr %35, align 4, !tbaa !52
  %55 = call fastcc zeroext i8 @tracking_check_marker_margin(ptr noundef nonnull %49, ptr noundef nonnull %41, i32 noundef %30, i32 noundef %32) #12, !range !92
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %79, label %60

57:                                               ; preds = %48
  %58 = call fastcc zeroext i8 @tracking_check_marker_margin(ptr noundef nonnull %49, ptr noundef nonnull %41, i32 noundef %30, i32 noundef %32) #12, !range !92
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %79, label %62

60:                                               ; preds = %53
  %61 = icmp eq i8 %54, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57, %60
  %63 = load ptr, ptr %2, align 8, !tbaa !34
  %64 = load ptr, ptr %3, align 8, !tbaa !34
  %65 = call fastcc zeroext i8 @track_context_update_reference(ptr noundef nonnull %0, ptr noundef %63, ptr noundef %64, ptr noundef nonnull %41, i32 noundef %13, i32 noundef %30, i32 noundef %32) #12, !range !92
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %86, label %67

67:                                               ; preds = %62, %60
  %68 = load ptr, ptr %3, align 8, !tbaa !34
  %69 = load ptr, ptr %2, align 8, !tbaa !34
  %70 = getelementptr inbounds %struct.TrackContext, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !82
  %72 = getelementptr inbounds %struct.TrackContext, ptr %69, i64 0, i32 3
  %73 = load i32, ptr %72, align 4, !tbaa !93
  %74 = getelementptr inbounds %struct.TrackContext, ptr %69, i64 0, i32 2
  %75 = load i32, ptr %74, align 8, !tbaa !94
  %76 = getelementptr inbounds %struct.TrackContext, ptr %69, i64 0, i32 5
  %77 = load ptr, ptr %76, align 8, !tbaa !84
  %78 = call fastcc zeroext i8 @configure_and_run_tracker(ptr noundef nonnull %26, ptr noundef %68, ptr noundef %69, ptr noundef nonnull %41, ptr noundef %71, i32 noundef %73, i32 noundef %75, ptr noundef %77, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  br label %79

79:                                               ; preds = %57, %67, %53
  %80 = phi i8 [ %78, %67 ], [ 0, %53 ], [ 0, %57 ]
  %81 = load ptr, ptr %14, align 8, !tbaa !67
  %82 = getelementptr inbounds %struct.TracksMap, ptr %81, i64 0, i32 8
  call void @BLI_spin_lock(ptr noundef nonnull %82) #10
  %83 = load ptr, ptr %3, align 8, !tbaa !34
  call fastcc void @tracking_insert_new_marker(ptr noundef nonnull %0, ptr noundef %83, ptr noundef nonnull %41, i32 noundef %13, i8 noundef zeroext %80, i32 noundef %30, i32 noundef %32, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %84 = load ptr, ptr %14, align 8, !tbaa !67
  %85 = getelementptr inbounds %struct.TracksMap, ptr %84, i64 0, i32 8
  call void @BLI_spin_unlock(ptr noundef nonnull %85) #10
  br label %86

86:                                               ; preds = %62, %79
  %87 = phi i8 [ 1, %79 ], [ %38, %62 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #11
  br label %88

88:                                               ; preds = %86, %36, %43
  %89 = phi i8 [ %87, %86 ], [ %38, %43 ], [ %38, %36 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  %90 = add nuw nsw i32 %37, 1
  %91 = icmp eq i32 %90, %16
  br i1 %91, label %92, label %36, !llvm.loop !95

92:                                               ; preds = %88, %28
  %93 = phi i8 [ 0, %28 ], [ %89, %88 ]
  call void @IMB_freeImBuf(ptr noundef nonnull %26) #10
  %94 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 5
  store i8 0, ptr %94, align 4, !tbaa !52
  %95 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 3
  %96 = load i32, ptr %95, align 4, !tbaa !96
  %97 = add nsw i32 %96, 1
  store i32 %97, ptr %95, align 4, !tbaa !96
  br label %98

98:                                               ; preds = %18, %1, %92
  %99 = phi i8 [ %93, %92 ], [ 0, %1 ], [ 0, %18 ]
  ret i8 %99
}

; Function Attrs: optsize
declare i32 @tracks_map_get_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_movieclip_get_ibuf_flag(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @tracks_map_get_indexed_element(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_tracking_marker_get_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @tracking_check_marker_margin(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !97 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @BKE_tracking_marker_pattern_minmax(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %7 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 18
  %8 = load i16, ptr %7, align 2, !tbaa !98
  %9 = sitofp i16 %8 to float
  %10 = sitofp i32 %2 to float
  %11 = fdiv float %9, %10
  %12 = load float, ptr %5, align 4, !tbaa !48
  %13 = fneg float %12
  %14 = call fastcc float @max_ff(float noundef %13, float noundef %11) #12
  %15 = load float, ptr %6, align 4, !tbaa !48
  %16 = call fastcc float @max_ff(float noundef %15, float noundef %11) #12
  %17 = load float, ptr %1, align 4, !tbaa !48
  %18 = fcmp olt float %17, %14
  %19 = fsub float 1.000000e+00, %16
  %20 = fcmp ogt float %17, %19
  %21 = or i1 %18, %20
  br i1 %21, label %39, label %22

22:                                               ; preds = %4
  %23 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !48
  %25 = fneg float %24
  %26 = sitofp i32 %3 to float
  %27 = fdiv float %9, %26
  %28 = call fastcc float @max_ff(float noundef %25, float noundef %27) #12
  %29 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !48
  %31 = call fastcc float @max_ff(float noundef %30, float noundef %27) #12
  %32 = getelementptr inbounds [2 x float], ptr %1, i64 0, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !48
  %34 = fcmp uge float %33, %28
  %35 = fsub float 1.000000e+00, %31
  %36 = fcmp ule float %33, %35
  %37 = and i1 %34, %36
  %38 = zext i1 %37 to i8
  br label %39

39:                                               ; preds = %22, %4
  %40 = phi i8 [ 0, %4 ], [ %38, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret i8 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @track_context_update_reference(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 !PGOFuncName !99 {
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  store ptr null, ptr %8, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  %11 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !78
  %15 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 8
  %16 = load i8, ptr %15, align 8, !tbaa !49
  %17 = call fastcc ptr @tracking_context_get_reference_ibuf(ptr noundef %12, ptr noundef %0, i32 noundef %14, ptr noundef %2, i32 noundef %4, i8 noundef zeroext %16, ptr noundef nonnull %8) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %45, label %19

19:                                               ; preds = %7
  %20 = load ptr, ptr %8, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %20, i64 64, i1 false), !tbaa.struct !100
  %21 = getelementptr inbounds %struct.TrackContext, ptr %1, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !82
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %25(ptr noundef nonnull %22) #10
  br label %26

26:                                               ; preds = %24, %19
  %27 = call fastcc ptr @track_get_search_floatbuf(ptr noundef nonnull %17, ptr noundef %2, ptr noundef nonnull %20, ptr noundef nonnull %9, ptr noundef nonnull %10) #12
  store ptr %27, ptr %21, align 8, !tbaa !82
  %28 = load i32, ptr %10, align 4, !tbaa !46
  %29 = getelementptr inbounds %struct.TrackContext, ptr %1, i64 0, i32 2
  store i32 %28, ptr %29, align 8, !tbaa !94
  %30 = load i32, ptr %9, align 4, !tbaa !46
  %31 = getelementptr inbounds %struct.TrackContext, ptr %1, i64 0, i32 3
  store i32 %30, ptr %31, align 4, !tbaa !93
  %32 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2, i64 0, i32 21
  %33 = load i32, ptr %32, align 8, !tbaa !102
  %34 = and i32 %33, 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.TrackContext, ptr %1, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !84
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %41(ptr noundef nonnull %38) #10
  br label %42

42:                                               ; preds = %40, %36
  %43 = tail call ptr @BKE_tracking_track_get_mask(i32 noundef %5, i32 noundef %6, ptr noundef nonnull %2, ptr noundef %3) #10
  store ptr %43, ptr %37, align 8, !tbaa !84
  br label %44

44:                                               ; preds = %42, %26
  tail call void @IMB_freeImBuf(ptr noundef nonnull %17) #10
  br label %45

45:                                               ; preds = %7, %44
  %46 = phi i8 [ 1, %44 ], [ 0, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  ret i8 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @configure_and_run_tracker(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) unnamed_addr #0 !PGOFuncName !103 {
  %11 = alloca [5 x double], align 16
  %12 = alloca [5 x double], align 16
  %13 = alloca %struct.libmv_TrackRegionOptions, align 8
  %14 = alloca %struct.libmv_TrackRegionResult, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %13) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %13, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #11
  %17 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !86
  %19 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !90
  %21 = call fastcc ptr @track_get_search_floatbuf(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %15, ptr noundef nonnull %16) #12
  call fastcc void @tracking_configure_tracker(ptr noundef %1, ptr noundef %7, ptr noundef nonnull %13) #12
  call void @tracking_get_marker_coords_for_tracking(i32 noundef %18, i32 noundef %20, ptr noundef %2, ptr noundef nonnull %11, ptr noundef nonnull %12) #10
  call void @tracking_get_marker_coords_for_tracking(i32 noundef %18, i32 noundef %20, ptr noundef %3, ptr noundef %8, ptr noundef %9) #10
  %22 = icmp eq ptr %21, null
  %23 = icmp eq ptr %4, null
  %24 = or i1 %23, %22
  br i1 %24, label %31, label %25

25:                                               ; preds = %10
  %26 = load i32, ptr %15, align 4, !tbaa !46
  %27 = load i32, ptr %16, align 4, !tbaa !46
  %28 = call i32 @libmv_trackRegion(ptr noundef nonnull %13, ptr noundef nonnull %4, i32 noundef %5, i32 noundef %6, ptr noundef nonnull %21, i32 noundef %26, i32 noundef %27, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %14, ptr noundef %8, ptr noundef %9) #10
  %29 = trunc i32 %28 to i8
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %30(ptr noundef nonnull %21) #10
  br label %31

31:                                               ; preds = %10, %25
  %32 = phi i8 [ %29, %25 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #11
  ret i8 %32
}

; Function Attrs: optsize
declare void @BLI_spin_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tracking_insert_new_marker(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 !PGOFuncName !104 {
  %10 = alloca %struct.MovieTrackingMarker, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #11
  %11 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 8
  %12 = load i8, ptr %11, align 8, !tbaa !49
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, i32 1, i32 -1
  %15 = add nsw i32 %14, %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %10, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 64, i1 false), !tbaa.struct !100
  %16 = icmp eq i8 %4, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %9
  call void @tracking_set_marker_coords_from_tracking(i32 noundef %5, i32 noundef %6, ptr noundef nonnull %10, ptr noundef %7, ptr noundef %8) #10
  %18 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %10, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !59
  %20 = or i32 %19, 2
  store i32 %20, ptr %18, align 4, !tbaa !59
  %21 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %10, i64 0, i32 4
  store i32 %15, ptr %21, align 4, !tbaa !105
  call fastcc void @tracking_scale_marker_search(ptr noundef nonnull %2, ptr noundef nonnull %10) #12
  %22 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 5
  %23 = load i8, ptr %22, align 4, !tbaa !52
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = load i8, ptr %11, align 8, !tbaa !49
  %27 = icmp eq i8 %26, 0
  %28 = zext i1 %27 to i8
  call void @tracking_marker_insert_disabled(ptr noundef %1, ptr noundef nonnull %2, i8 noundef zeroext %28, i8 noundef zeroext 0) #10
  br label %29

29:                                               ; preds = %25, %17
  %30 = call ptr @BKE_tracking_marker_insert(ptr noundef %1, ptr noundef nonnull %10) #10
  %31 = load i8, ptr %11, align 8, !tbaa !49
  call void @tracking_marker_insert_disabled(ptr noundef %1, ptr noundef nonnull %10, i8 noundef zeroext %31, i8 noundef zeroext 0) #10
  br label %38

32:                                               ; preds = %9
  %33 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %10, i64 0, i32 4
  store i32 %15, ptr %33, align 4, !tbaa !105
  %34 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %10, i64 0, i32 5
  %35 = load i32, ptr %34, align 4, !tbaa !59
  %36 = or i32 %35, 1
  store i32 %36, ptr %34, align 4, !tbaa !59
  %37 = call ptr @BKE_tracking_marker_insert(ptr noundef %1, ptr noundef nonnull %10) #10
  br label %38

38:                                               ; preds = %32, %29
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #11
  ret void
}

; Function Attrs: optsize
declare void @BLI_spin_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_context_finish(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11
  %7 = tail call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %6) #10
  %8 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  %10 = tail call i32 @tracks_map_get_size(ptr noundef %9) #10
  %11 = load ptr, ptr %7, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %55, label %13

13:                                               ; preds = %1
  %14 = icmp slt i32 %10, 1
  %15 = getelementptr inbounds %struct.MovieTrackingContext, ptr %0, i64 0, i32 4
  br label %16

16:                                               ; preds = %13, %52
  %17 = phi ptr [ %11, %13 ], [ %53, %52 ]
  %18 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %17, i64 0, i32 8
  %19 = load i32, ptr %18, align 4, !tbaa !106
  %20 = and i32 %19, 8
  %21 = icmp ne i32 %20, 0
  %22 = select i1 %21, i1 true, i1 %14
  br i1 %22, label %52, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %17, i64 0, i32 4
  %25 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %17, i64 0, i32 3
  br label %26

26:                                               ; preds = %23, %49
  %27 = phi i32 [ 0, %23 ], [ %50, %49 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  store ptr null, ptr %2, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %28 = load ptr, ptr %8, align 8, !tbaa !67
  call void @tracks_map_get_indexed_element(ptr noundef %28, i32 noundef %27, ptr noundef nonnull %3, ptr noundef nonnull %2) #10
  %29 = load ptr, ptr %8, align 8, !tbaa !67
  %30 = getelementptr inbounds %struct.TracksMap, ptr %29, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !108
  %32 = load ptr, ptr %3, align 8, !tbaa !34
  %33 = call ptr @BLI_ghash_lookup(ptr noundef %31, ptr noundef %32) #10
  %34 = load i32, ptr %24, align 8, !tbaa !110
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %26
  %37 = load ptr, ptr %25, align 8, !tbaa !111
  %38 = zext nneg i32 %34 to i64
  br label %42

39:                                               ; preds = %42
  %40 = add nuw nsw i64 %43, 1
  %41 = icmp eq i64 %40, %38
  br i1 %41, label %49, label %42, !llvm.loop !112

42:                                               ; preds = %36, %39
  %43 = phi i64 [ 0, %36 ], [ %40, %39 ]
  %44 = getelementptr inbounds ptr, ptr %37, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  %46 = icmp eq ptr %45, %33
  br i1 %46, label %47, label %39

47:                                               ; preds = %42
  %48 = load i32, ptr %15, align 8, !tbaa !53
  call void @BKE_tracking_track_plane_from_existing_motion(ptr noundef nonnull %17, i32 noundef %48) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br label %52

49:                                               ; preds = %39, %26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  %50 = add nuw nsw i32 %27, 1
  %51 = icmp eq i32 %50, %10
  br i1 %51, label %52, label %26, !llvm.loop !113

52:                                               ; preds = %49, %16, %47
  %53 = load ptr, ptr %17, align 8, !tbaa !34
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %16, !llvm.loop !114

55:                                               ; preds = %52, %1
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_tracking_get_active_plane_tracks(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_tracking_track_plane_from_existing_motion(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_refine_marker(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.MovieClipUser, align 8
  %12 = alloca [5 x double], align 16
  %13 = alloca [5 x double], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store ptr null, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  %14 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 14
  %15 = load i32, ptr %14, align 8, !tbaa !69
  %16 = and i32 %15, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  store i64 0, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %13) #11
  %17 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !105
  %19 = sitofp i32 %18 to float
  %20 = tail call float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef %0, float noundef %19) #10
  %21 = fptosi float %20 to i32
  store i32 %21, ptr %11, align 8, !tbaa !50
  call void @BKE_movieclip_get_size(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %6, ptr noundef nonnull %7) #10
  %22 = call fastcc zeroext i8 @refine_marker_reference_frame_get(ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef nonnull %10) #12, !range !92
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %64, label %24

24:                                               ; preds = %4
  %25 = load i32, ptr %10, align 4, !tbaa !46
  %26 = call fastcc ptr @tracking_context_get_reference_ibuf(ptr noundef nonnull %0, ptr noundef nonnull %11, i32 noundef %16, ptr noundef %1, i32 noundef %25, i8 noundef zeroext %3, ptr noundef nonnull %5) #12
  %27 = icmp eq ptr %26, null
  %28 = load ptr, ptr %5, align 8
  %29 = icmp eq ptr %28, %2
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %64, label %31

31:                                               ; preds = %24
  %32 = call ptr @BKE_movieclip_get_ibuf_flag(ptr noundef nonnull %0, ptr noundef nonnull %11, i32 noundef %16, i32 noundef 1) #10
  %33 = icmp eq ptr %32, null
  br i1 %33, label %62, label %34

34:                                               ; preds = %31
  %35 = call fastcc ptr @track_get_search_floatbuf(ptr noundef nonnull %26, ptr noundef %1, ptr noundef %28, ptr noundef nonnull %9, ptr noundef nonnull %8) #12
  %36 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 21
  %37 = load i32, ptr %36, align 8, !tbaa !102
  %38 = and i32 %37, 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load i32, ptr %6, align 4, !tbaa !46
  %42 = load i32, ptr %7, align 4, !tbaa !46
  %43 = call ptr @BKE_tracking_track_get_mask(i32 noundef %41, i32 noundef %42, ptr noundef nonnull %1, ptr noundef nonnull %2) #10
  br label %44

44:                                               ; preds = %40, %34
  %45 = phi ptr [ %43, %40 ], [ null, %34 ]
  %46 = load i32, ptr %9, align 4, !tbaa !46
  %47 = load i32, ptr %8, align 4, !tbaa !46
  %48 = call fastcc zeroext i8 @configure_and_run_tracker(ptr noundef nonnull %32, ptr noundef nonnull %1, ptr noundef %28, ptr noundef nonnull %2, ptr noundef %35, i32 noundef %46, i32 noundef %47, ptr noundef %45, ptr noundef nonnull %12, ptr noundef nonnull %13) #12
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load i32, ptr %6, align 4, !tbaa !46
  %52 = load i32, ptr %7, align 4, !tbaa !46
  call void @tracking_set_marker_coords_from_tracking(i32 noundef %51, i32 noundef %52, ptr noundef nonnull %2, ptr noundef nonnull %12, ptr noundef nonnull %13) #10
  %53 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 5
  %54 = load i32, ptr %53, align 4, !tbaa !59
  %55 = or i32 %54, 2
  store i32 %55, ptr %53, align 4, !tbaa !59
  br label %56

56:                                               ; preds = %50, %44
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %57(ptr noundef %35) #10
  %58 = icmp eq ptr %45, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %60(ptr noundef nonnull %45) #10
  br label %61

61:                                               ; preds = %59, %56
  call void @IMB_freeImBuf(ptr noundef nonnull %26) #10
  br label %62

62:                                               ; preds = %31, %61
  %63 = phi ptr [ %32, %61 ], [ %26, %31 ]
  call void @IMB_freeImBuf(ptr noundef nonnull %63) #10
  br label %64

64:                                               ; preds = %62, %24, %4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret void
}

; Function Attrs: optsize
declare float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @refine_marker_reference_frame_get(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) unnamed_addr #6 !PGOFuncName !115 {
  %5 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !117
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %6, i64 %9
  %11 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %10, i64 -1
  %12 = icmp eq i8 %2, 0
  %13 = select i1 %12, i64 -1, i64 1
  %14 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %1, i64 %13
  %15 = icmp ult ptr %14, %6
  %16 = icmp ugt ptr %14, %11
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %37, label %18

18:                                               ; preds = %4, %24
  %19 = phi ptr [ %25, %24 ], [ %14, %4 ]
  %20 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %19, i64 0, i32 5
  %21 = load i32, ptr %20, align 4, !tbaa !59
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %19, i64 %13
  %26 = icmp ult ptr %25, %6
  %27 = icmp ugt ptr %25, %11
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %37, label %18, !llvm.loop !118

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %19, i64 0, i32 5
  %31 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %19, i64 0, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !105
  store i32 %32, ptr %3, align 4, !tbaa !46
  %33 = load i32, ptr %30, align 4, !tbaa !59
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = xor i8 %35, 1
  br label %37

37:                                               ; preds = %24, %4, %29
  %38 = phi i8 [ %36, %29 ], [ 0, %4 ], [ 0, %24 ]
  ret i8 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @tracking_context_get_reference_ibuf(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5, ptr nocapture noundef writeonly %6) unnamed_addr #0 !PGOFuncName !119 {
  %8 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %3, i64 0, i32 19
  %9 = load i16, ptr %8, align 4, !tbaa !91
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call fastcc ptr @tracking_context_get_keyframed_ibuf(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3, i32 noundef %4, i8 noundef zeroext %5, ptr noundef %6) #12
  br label %16

13:                                               ; preds = %7
  %14 = tail call fastcc ptr @tracking_context_get_frame_ibuf(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %4) #12
  %15 = tail call ptr @BKE_tracking_marker_get(ptr noundef nonnull %3, i32 noundef %4) #10
  store ptr %15, ptr %6, align 8, !tbaa !34
  br label %16

16:                                               ; preds = %13, %11
  %17 = phi ptr [ %12, %11 ], [ %14, %13 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @track_get_search_floatbuf(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !PGOFuncName !120 {
  %6 = tail call ptr @BKE_tracking_get_search_imbuf(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0, i8 noundef zeroext 1) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !86
  %11 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !90
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %14 = mul nsw i32 %12, %10
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 2
  %17 = tail call ptr %13(i64 noundef %16, ptr noundef nonnull @.str.1) #10
  %18 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !121
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %8
  tail call fastcc void @float_rgba_to_gray(ptr noundef nonnull %19, ptr noundef %17, i32 noundef %14) #12
  br label %25

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !122
  tail call fastcc void @uint8_rgba_to_float_gray(ptr noundef %24, ptr noundef %17, i32 noundef %14) #12
  br label %25

25:                                               ; preds = %22, %21
  tail call void @IMB_freeImBuf(ptr noundef nonnull %6) #10
  br label %26

26:                                               ; preds = %5, %25
  %27 = phi i32 [ %10, %25 ], [ 0, %5 ]
  %28 = phi i32 [ %12, %25 ], [ 0, %5 ]
  %29 = phi ptr [ %17, %25 ], [ null, %5 ]
  store i32 %27, ptr %3, align 4, !tbaa !46
  store i32 %28, ptr %4, align 4, !tbaa !46
  ret ptr %29
}

; Function Attrs: optsize
declare ptr @BKE_tracking_track_get_mask(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @tracking_set_marker_coords_from_tracking(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_tracking_marker_pattern_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #7 !PGOFuncName !123 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @tracking_configure_tracker(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !PGOFuncName !124 {
  %4 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 20
  %5 = load i16, ptr %4, align 2, !tbaa !125
  %6 = sext i16 %5 to i32
  store i32 %6, ptr %2, align 8, !tbaa !126
  %7 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 21
  %8 = load i32, ptr %7, align 8, !tbaa !102
  %9 = and i32 %8, 1
  %10 = getelementptr inbounds %struct.libmv_TrackRegionOptions, ptr %2, i64 0, i32 2
  store i32 %9, ptr %10, align 8, !tbaa !129
  %11 = lshr i32 %8, 2
  %12 = and i32 %11, 1
  %13 = getelementptr inbounds %struct.libmv_TrackRegionOptions, ptr %2, i64 0, i32 3
  store i32 %12, ptr %13, align 4, !tbaa !130
  %14 = getelementptr inbounds %struct.libmv_TrackRegionOptions, ptr %2, i64 0, i32 1
  store i32 50, ptr %14, align 4, !tbaa !131
  %15 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 22
  %16 = load float, ptr %15, align 4, !tbaa !132
  %17 = fpext float %16 to double
  %18 = getelementptr inbounds %struct.libmv_TrackRegionOptions, ptr %2, i64 0, i32 4
  store double %17, ptr %18, align 8, !tbaa !133
  %19 = getelementptr inbounds %struct.libmv_TrackRegionOptions, ptr %2, i64 0, i32 5
  store double 9.000000e-01, ptr %19, align 8, !tbaa !134
  %20 = and i32 %8, 8
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, ptr null, ptr %1
  %23 = getelementptr inbounds %struct.libmv_TrackRegionOptions, ptr %2, i64 0, i32 6
  store ptr %22, ptr %23, align 8
  ret void
}

; Function Attrs: optsize
declare void @tracking_get_marker_coords_for_tracking(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @libmv_trackRegion(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tracking_scale_marker_search(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !135 {
  %3 = alloca [2 x float], align 8
  %4 = alloca [2 x float], align 8
  %5 = alloca [2 x float], align 8
  %6 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @BKE_tracking_marker_pattern_minmax(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  call void @BKE_tracking_marker_pattern_minmax(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %7 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %1, i64 0, i32 2
  %8 = load <2 x float>, ptr %6, align 8, !tbaa !48
  %9 = load <2 x float>, ptr %5, align 8, !tbaa !48
  %10 = fsub <2 x float> %8, %9
  %11 = load <2 x float>, ptr %4, align 8, !tbaa !48
  %12 = load <2 x float>, ptr %3, align 8, !tbaa !48
  %13 = fsub <2 x float> %11, %12
  %14 = fdiv <2 x float> %10, %13
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %16 = load <4 x float>, ptr %7, align 4, !tbaa !48
  %17 = fmul <4 x float> %15, %16
  store <4 x float> %17, ptr %7, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret void
}

; Function Attrs: optsize
declare void @tracking_marker_insert_disabled(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_tracking_marker_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @tracking_context_get_keyframed_ibuf(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5, ptr nocapture noundef writeonly %6) unnamed_addr #0 !PGOFuncName !136 {
  %8 = tail call fastcc ptr @tracking_context_get_keyframed_marker(ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !105
  store ptr %8, ptr %6, align 8, !tbaa !34
  %13 = tail call fastcc ptr @tracking_context_get_frame_ibuf(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %12) #12
  br label %14

14:                                               ; preds = %7, %10
  %15 = phi ptr [ %13, %10 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @tracking_context_get_frame_ibuf(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !137 {
  %5 = alloca %struct.MovieClipUser, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %6 = load i64, ptr %1, align 4
  store i64 %6, ptr %5, align 8
  %7 = sitofp i32 %3 to float
  %8 = tail call float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef %0, float noundef %7) #10
  %9 = fptosi float %8 to i32
  store i32 %9, ptr %5, align 8, !tbaa !50
  %10 = call ptr @BKE_movieclip_get_ibuf_flag(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %2, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @tracking_context_get_keyframed_marker(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !138 {
  %4 = tail call ptr @BKE_tracking_marker_get(ptr noundef %0, i32 noundef %1) #10
  %5 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = lshr exact i64 %9, 6
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 8
  %13 = icmp eq i8 %2, 0
  %14 = select i1 %13, i32 -1, i32 1
  br label %15

15:                                               ; preds = %51, %3
  %16 = phi i32 [ %11, %3 ], [ %23, %51 ]
  %17 = phi ptr [ null, %3 ], [ %52, %51 ]
  %18 = icmp sgt i32 %16, -1
  br i1 %18, label %19, label %55

19:                                               ; preds = %15
  %20 = load i32, ptr %12, align 8, !tbaa !117
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %55

22:                                               ; preds = %19
  %23 = add nsw i32 %16, %14
  %24 = zext nneg i32 %16 to i64
  %25 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %6, i64 %24
  %26 = icmp sgt i32 %23, -1
  %27 = icmp slt i32 %23, %20
  %28 = and i1 %26, %27
  %29 = zext nneg i32 %23 to i64
  %30 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %6, i64 %29
  %31 = select i1 %28, ptr %30, ptr null
  %32 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %6, i64 %24, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !59
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %22
  %37 = icmp eq ptr %31, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %31, i64 0, i32 5
  %40 = load i32, ptr %39, align 4, !tbaa !59
  %41 = and i32 %40, 1
  %42 = icmp ne i32 %41, 0
  %43 = icmp eq ptr %17, null
  %44 = select i1 %42, i1 %43, i1 false
  %45 = select i1 %44, ptr %25, ptr %17
  br label %46

46:                                               ; preds = %38, %36
  %47 = phi ptr [ %17, %36 ], [ %45, %38 ]
  %48 = and i32 %33, 2
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i8
  br label %51

51:                                               ; preds = %46, %22
  %52 = phi ptr [ %47, %46 ], [ %17, %22 ]
  %53 = phi i8 [ %50, %46 ], [ 0, %22 ]
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %15, label %55

55:                                               ; preds = %51, %15, %19
  %56 = phi ptr [ %52, %51 ], [ %17, %19 ], [ %17, %15 ]
  %57 = phi ptr [ %25, %51 ], [ null, %19 ], [ null, %15 ]
  %58 = icmp eq ptr %57, null
  %59 = select i1 %58, ptr %56, ptr %57
  ret ptr %59
}

; Function Attrs: optsize
declare ptr @BKE_tracking_get_search_imbuf(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @float_rgba_to_gray(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #8 !PGOFuncName !139 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %20, %7 ]
  %9 = shl nsw i64 %8, 2
  %10 = getelementptr inbounds float, ptr %0, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !48
  %12 = getelementptr inbounds float, ptr %10, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !48
  %14 = fmul float %13, 0x3FE6E2EB20000000
  %15 = tail call float @llvm.fmuladd.f32(float %11, float 0x3FCB367A00000000, float %14)
  %16 = getelementptr inbounds float, ptr %10, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !48
  %18 = tail call float @llvm.fmuladd.f32(float %17, float 0x3FB27BB300000000, float %15)
  %19 = getelementptr inbounds float, ptr %1, i64 %8
  store float %18, ptr %19, align 4, !tbaa !48
  %20 = add nuw nsw i64 %8, 1
  %21 = icmp eq i64 %20, %6
  br i1 %21, label %22, label %7, !llvm.loop !140

22:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @uint8_rgba_to_float_gray(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #8 !PGOFuncName !141 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %26

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %24, %7 ]
  %9 = shl nsw i64 %8, 2
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !101
  %12 = uitofp i8 %11 to float
  %13 = getelementptr inbounds i8, ptr %10, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !101
  %15 = uitofp i8 %14 to float
  %16 = fmul float %15, 0x3FE6E2EB20000000
  %17 = tail call float @llvm.fmuladd.f32(float %12, float 0x3FCB367A00000000, float %16)
  %18 = getelementptr inbounds i8, ptr %10, i64 2
  %19 = load i8, ptr %18, align 1, !tbaa !101
  %20 = uitofp i8 %19 to float
  %21 = tail call float @llvm.fmuladd.f32(float %20, float 0x3FB27BB300000000, float %17)
  %22 = fdiv float %21, 2.550000e+02
  %23 = getelementptr inbounds float, ptr %1, i64 %8
  store float %22, ptr %23, align 4, !tbaa !48
  %24 = add nuw nsw i64 %8, 1
  %25 = icmp eq i64 %24, %6
  br i1 %25, label %26, label %7, !llvm.loop !142

26:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }
attributes #12 = { optsize }

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
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!64, !41, i64 80}
!64 = !{!"MovieTrackingObject", !35, i64 0, !35, i64 8, !36, i64 16, !41, i64 80, !44, i64 84, !65, i64 88, !65, i64 104, !66, i64 120, !41, i64 144, !41, i64 148}
!65 = !{!"ListBase", !35, i64 0, !35, i64 8}
!66 = !{!"MovieTrackingReconstruction", !41, i64 0, !44, i64 4, !41, i64 8, !41, i64 12, !35, i64 16}
!67 = !{!39, !35, i64 104}
!68 = distinct !{!68, !62}
!69 = !{!70, !41, i64 2312}
!70 = !{!"MovieClip", !71, i64 0, !35, i64 120, !36, i64 128, !41, i64 1152, !41, i64 1156, !36, i64 1160, !44, i64 1168, !44, i64 1172, !35, i64 1176, !35, i64 1184, !35, i64 1192, !72, i64 1200, !35, i64 1528, !76, i64 1536, !41, i64 2312, !41, i64 2316, !41, i64 2320, !41, i64 2324, !77, i64 2328}
!71 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !42, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !35, i64 112}
!72 = !{!"MovieTracking", !43, i64 0, !73, i64 72, !65, i64 128, !65, i64 144, !66, i64 160, !74, i64 184, !35, i64 232, !35, i64 240, !65, i64 248, !41, i64 264, !41, i64 268, !35, i64 272, !75, i64 280}
!73 = !{!"MovieTrackingCamera", !35, i64 0, !42, i64 8, !42, i64 10, !44, i64 12, !44, i64 16, !44, i64 20, !42, i64 24, !42, i64 26, !36, i64 28, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52}
!74 = !{!"MovieTrackingStabilization", !41, i64 0, !41, i64 4, !41, i64 8, !44, i64 12, !35, i64 16, !44, i64 24, !44, i64 28, !44, i64 32, !41, i64 36, !41, i64 40, !44, i64 44}
!75 = !{!"MovieTrackingDopesheet", !41, i64 0, !42, i64 4, !42, i64 6, !65, i64 8, !65, i64 24, !41, i64 40, !41, i64 44}
!76 = !{!"MovieClipProxy", !36, i64 0, !42, i64 768, !42, i64 770, !42, i64 772, !42, i64 774}
!77 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!78 = !{!39, !41, i64 16}
!79 = !{!39, !42, i64 4}
!80 = !{!39, !42, i64 6}
!81 = !{!"tracking_region_tracker.c:track_context_free"}
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
!92 = !{i8 0, i8 2}
!93 = !{!83, !41, i64 76}
!94 = !{!83, !41, i64 72}
!95 = distinct !{!95, !62}
!96 = !{!39, !41, i64 20}
!97 = !{!"tracking_region_tracker.c:tracking_check_marker_margin"}
!98 = !{!56, !42, i64 178}
!99 = !{!"tracking_region_tracker.c:track_context_update_reference"}
!100 = !{i64 0, i64 8, !101, i64 8, i64 32, !101, i64 40, i64 8, !101, i64 48, i64 8, !101, i64 56, i64 4, !46, i64 60, i64 4, !46}
!101 = !{!36, !36, i64 0}
!102 = !{!56, !41, i64 184}
!103 = !{!"tracking_region_tracker.c:configure_and_run_tracker"}
!104 = !{!"tracking_region_tracker.c:tracking_insert_new_marker"}
!105 = !{!60, !41, i64 56}
!106 = !{!107, !41, i64 108}
!107 = !{!"MovieTrackingPlaneTrack", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 80, !41, i64 88, !41, i64 92, !35, i64 96, !41, i64 104, !41, i64 108, !35, i64 112, !44, i64 120, !41, i64 124}
!108 = !{!109, !35, i64 96}
!109 = !{!"TracksMap", !36, i64 0, !36, i64 64, !41, i64 68, !41, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !41, i64 104, !41, i64 108}
!110 = !{!107, !41, i64 88}
!111 = !{!107, !35, i64 80}
!112 = distinct !{!112, !62}
!113 = distinct !{!113, !62}
!114 = distinct !{!114, !62}
!115 = !{!"tracking_region_tracker.c:refine_marker_reference_frame_get"}
!116 = !{!56, !35, i64 128}
!117 = !{!56, !41, i64 120}
!118 = distinct !{!118, !62}
!119 = !{!"tracking_region_tracker.c:tracking_context_get_reference_ibuf"}
!120 = !{!"tracking_region_tracker.c:track_get_search_floatbuf"}
!121 = !{!87, !35, i64 48}
!122 = !{!87, !35, i64 40}
!123 = !{!"tracking_region_tracker.c:max_ff"}
!124 = !{!"tracking_region_tracker.c:tracking_configure_tracker"}
!125 = !{!56, !42, i64 182}
!126 = !{!127, !41, i64 0}
!127 = !{!"libmv_TrackRegionOptions", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !128, i64 16, !128, i64 24, !35, i64 32}
!128 = !{!"double", !36, i64 0}
!129 = !{!127, !41, i64 8}
!130 = !{!127, !41, i64 12}
!131 = !{!127, !41, i64 4}
!132 = !{!56, !44, i64 188}
!133 = !{!127, !128, i64 16}
!134 = !{!127, !128, i64 24}
!135 = !{!"tracking_region_tracker.c:tracking_scale_marker_search"}
!136 = !{!"tracking_region_tracker.c:tracking_context_get_keyframed_ibuf"}
!137 = !{!"tracking_region_tracker.c:tracking_context_get_frame_ibuf"}
!138 = !{!"tracking_region_tracker.c:tracking_context_get_keyframed_marker"}
!139 = !{!"tracking_region_tracker.c:float_rgba_to_gray"}
!140 = distinct !{!140, !62}
!141 = !{!"tracking_region_tracker.c:uint8_rgba_to_float_gray"}
!142 = distinct !{!142, !62}
