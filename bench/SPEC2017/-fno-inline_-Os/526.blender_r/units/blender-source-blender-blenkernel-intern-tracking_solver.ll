; ModuleID = 'blender/source/blender/blenkernel/intern/tracking_solver.c'
source_filename = "blender/source/blender/blenkernel/intern/tracking_solver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type opaque
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingObject = type { ptr, ptr, [64 x i8], i32, float, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.MovieReconstructContext = type { ptr, i8, i32, i32, i32, ptr, [64 x i8], i8, i16, %struct.libmv_CameraIntrinsicsOptions, float, ptr, i32, i32 }
%struct.libmv_CameraIntrinsicsOptions = type { i32, i32, i32, double, double, double, double, double, double, double, double, double, double }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.ReconstructProgressData = type { ptr, ptr, ptr, ptr, i32 }
%struct.libmv_ReconstructionOptions = type { i32, i32, i32, i32 }
%struct.MovieReconstructedCamera = type { i32, float, [4 x [4 x float]] }

@.str = private unnamed_addr constant [73 x i8] c"At least 8 common tracks on both keyframes are needed for reconstruction\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Blender is compiled without motion tracking library\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"MovieReconstructContext data\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@RNA_MovieTrackingTrack = external global %struct.StructRNA, align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Solving camera | %s\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"Unable to reconstruct position for track #%d '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"temp reconstructed camera\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"No camera for frame %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"reconstructed camera\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_tracking_reconstruction_check(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 11
  %6 = load i16, ptr %5, align 4, !tbaa !34
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 15
  %11 = load i32, ptr %10, align 8, !tbaa !48
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = tail call fastcc i32 @reconstruct_count_tracks_on_both_keyframes(ptr noundef nonnull %0, ptr noundef %1) #11
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %18, label %17

17:                                               ; preds = %9, %14
  br label %18

18:                                               ; preds = %14, %17
  %19 = phi ptr [ @.str.1, %17 ], [ @.str, %14 ]
  %20 = sext i32 %3 to i64
  %21 = tail call ptr @BLI_strncpy(ptr noundef %2, ptr noundef nonnull %19, i64 noundef %20) #12
  br label %22

22:                                               ; preds = %18, %4
  %23 = phi i8 [ 1, %4 ], [ 0, %18 ]
  ret i8 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @reconstruct_count_tracks_on_both_keyframes(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !49 {
  %3 = tail call ptr @BKE_tracking_object_get_tracks(ptr noundef %0, ptr noundef %1) #12
  %4 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !52
  %8 = load ptr, ptr %3, align 8, !tbaa !53
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %2, %20
  %11 = phi ptr [ %22, %20 ], [ %8, %2 ]
  %12 = phi i32 [ %21, %20 ], [ 0, %2 ]
  %13 = tail call zeroext i8 @BKE_tracking_track_has_enabled_marker_at_frame(ptr noundef nonnull %11, i32 noundef %5) #12
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = tail call zeroext i8 @BKE_tracking_track_has_enabled_marker_at_frame(ptr noundef nonnull %11, i32 noundef %7) #12
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i32
  %19 = add nsw i32 %12, %18
  br label %20

20:                                               ; preds = %15, %10
  %21 = phi i32 [ %12, %10 ], [ %19, %15 ]
  %22 = load ptr, ptr %11, align 8, !tbaa !53
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %10, !llvm.loop !54

24:                                               ; preds = %20, %2
  %25 = phi i32 [ 0, %2 ], [ %21, %20 ]
  ret i32 %25
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_tracking_reconstruction_context_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !53
  %9 = tail call ptr %8(i64 noundef 224, ptr noundef nonnull @.str.2) #12
  %10 = tail call ptr @BKE_tracking_object_get_tracks(ptr noundef nonnull %7, ptr noundef %1) #12
  %11 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 4
  %12 = load float, ptr %11, align 8, !tbaa !56
  %13 = tail call i32 @BLI_countlist(ptr noundef %10) #12
  %14 = getelementptr inbounds %struct.MovieReconstructContext, ptr %9, i64 0, i32 6
  %15 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 2
  %16 = tail call ptr @BLI_strncpy(ptr noundef nonnull %14, ptr noundef nonnull %15, i64 noundef 64) #12
  %17 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !57
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.MovieReconstructContext, ptr %9, i64 0, i32 7
  store i8 %20, ptr %21, align 8, !tbaa !58
  %22 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 0, i32 11
  %23 = load i16, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds %struct.MovieReconstructContext, ptr %9, i64 0, i32 8
  store i16 %23, ptr %24, align 2, !tbaa !62
  %25 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 0, i32 15
  %26 = load i32, ptr %25, align 8, !tbaa !48
  %27 = trunc i32 %26 to i8
  %28 = lshr i8 %27, 1
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.MovieReconstructContext, ptr %9, i64 0, i32 1
  store i8 %29, ptr %30, align 8, !tbaa !63
  %31 = getelementptr inbounds %struct.MovieReconstructContext, ptr %9, i64 0, i32 9
  tail call void @tracking_cameraIntrinscisOptionsFromTracking(ptr noundef nonnull %7, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %31) #12
  %32 = load i8, ptr %21, align 8, !tbaa !58
  %33 = tail call ptr @tracks_map_new(ptr noundef nonnull %14, i8 noundef zeroext %32, i32 noundef %13, i32 noundef 0) #12
  %34 = getelementptr inbounds %struct.MovieReconstructContext, ptr %9, i64 0, i32 11
  store ptr %33, ptr %34, align 8, !tbaa !64
  %35 = load ptr, ptr %10, align 8, !tbaa !53
  %36 = icmp eq ptr %35, null
  br i1 %36, label %95, label %37

37:                                               ; preds = %6, %90
  %38 = phi ptr [ %93, %90 ], [ %35, %6 ]
  %39 = phi i32 [ %91, %90 ], [ -2147483648, %6 ]
  %40 = phi i32 [ %85, %90 ], [ 2147483647, %6 ]
  %41 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %38, i64 0, i32 8
  %42 = load i32, ptr %41, align 8, !tbaa !65
  %43 = add nsw i32 %42, -1
  %44 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %38, i64 0, i32 10
  %45 = load ptr, ptr %44, align 8, !tbaa !67
  %46 = sext i32 %43 to i64
  %47 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %45, i64 %46
  %48 = icmp sgt i32 %42, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %37, %56
  %50 = phi ptr [ %58, %56 ], [ %45, %37 ]
  %51 = phi i32 [ %57, %56 ], [ 0, %37 ]
  %52 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %50, i64 0, i32 5
  %53 = load i32, ptr %52, align 4, !tbaa !68
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %49
  %57 = add nuw nsw i32 %51, 1
  %58 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %50, i64 1
  %59 = icmp eq i32 %57, %42
  br i1 %59, label %60, label %49, !llvm.loop !70

60:                                               ; preds = %49, %56
  %61 = phi i32 [ %51, %49 ], [ %42, %56 ]
  %62 = phi ptr [ %50, %49 ], [ %58, %56 ]
  br i1 %48, label %63, label %74

63:                                               ; preds = %60, %70
  %64 = phi ptr [ %72, %70 ], [ %47, %60 ]
  %65 = phi i32 [ %71, %70 ], [ %43, %60 ]
  %66 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %64, i64 0, i32 5
  %67 = load i32, ptr %66, align 4, !tbaa !68
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %63
  %71 = add nsw i32 %65, -1
  %72 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %64, i64 -1
  %73 = icmp sgt i32 %65, 0
  br i1 %73, label %63, label %74, !llvm.loop !71

74:                                               ; preds = %63, %70, %37, %60
  %75 = phi ptr [ %62, %60 ], [ %45, %37 ], [ %62, %70 ], [ %62, %63 ]
  %76 = phi i32 [ %61, %60 ], [ 0, %37 ], [ %61, %70 ], [ %61, %63 ]
  %77 = phi ptr [ %47, %60 ], [ %47, %37 ], [ %64, %63 ], [ %72, %70 ]
  %78 = phi i1 [ false, %60 ], [ false, %37 ], [ %69, %70 ], [ %69, %63 ]
  %79 = icmp slt i32 %76, %43
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %75, i64 0, i32 4
  %82 = load i32, ptr %81, align 4, !tbaa !72
  %83 = tail call fastcc i32 @min_ii(i32 noundef %40, i32 noundef %82) #11
  br label %84

84:                                               ; preds = %80, %74
  %85 = phi i32 [ %83, %80 ], [ %40, %74 ]
  br i1 %78, label %86, label %90

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %77, i64 0, i32 4
  %88 = load i32, ptr %87, align 4, !tbaa !72
  %89 = tail call fastcc i32 @max_ii(i32 noundef %39, i32 noundef %88) #11
  br label %90

90:                                               ; preds = %86, %84
  %91 = phi i32 [ %89, %86 ], [ %39, %84 ]
  %92 = load ptr, ptr %34, align 8, !tbaa !64
  tail call void @tracks_map_insert(ptr noundef %92, ptr noundef nonnull %38, ptr noundef null) #12
  %93 = load ptr, ptr %38, align 8, !tbaa !53
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %37, !llvm.loop !73

95:                                               ; preds = %90, %6
  %96 = phi i32 [ 2147483647, %6 ], [ %85, %90 ]
  %97 = phi i32 [ -2147483648, %6 ], [ %91, %90 ]
  %98 = fdiv float 1.000000e+00, %12
  %99 = getelementptr inbounds %struct.MovieReconstructContext, ptr %9, i64 0, i32 12
  store i32 %96, ptr %99, align 8, !tbaa !74
  %100 = getelementptr inbounds %struct.MovieReconstructContext, ptr %9, i64 0, i32 13
  store i32 %97, ptr %100, align 4, !tbaa !75
  %101 = sitofp i32 %5 to float
  %102 = fmul float %98, %101
  %103 = fptosi float %102 to i32
  %104 = tail call fastcc ptr @libmv_tracks_new(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %4, i32 noundef %103) #11
  store ptr %104, ptr %9, align 8, !tbaa !76
  %105 = getelementptr inbounds %struct.MovieReconstructContext, ptr %9, i64 0, i32 2
  store i32 %2, ptr %105, align 4, !tbaa !77
  %106 = getelementptr inbounds %struct.MovieReconstructContext, ptr %9, i64 0, i32 3
  store i32 %3, ptr %106, align 8, !tbaa !78
  %107 = tail call fastcc i32 @reconstruct_refine_intrinsics_get_flags(ptr noundef nonnull %7, ptr noundef %1) #11, !range !79
  %108 = getelementptr inbounds %struct.MovieReconstructContext, ptr %9, i64 0, i32 4
  store i32 %107, ptr %108, align 4, !tbaa !80
  ret ptr %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @BKE_tracking_object_get_tracks(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @tracking_cameraIntrinscisOptionsFromTracking(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @tracks_map_new(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #3 !PGOFuncName !81 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #3 !PGOFuncName !82 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: optsize
declare void @tracks_map_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @libmv_tracks_new(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !83 {
  %5 = tail call ptr @libmv_tracksNew() #12
  %6 = load ptr, ptr %1, align 8, !tbaa !53
  %7 = icmp eq ptr %6, null
  br i1 %7, label %69, label %8

8:                                                ; preds = %4
  %9 = sitofp i32 %2 to float
  %10 = sitofp i32 %3 to float
  br label %11

11:                                               ; preds = %8, %65
  %12 = phi ptr [ %6, %8 ], [ %67, %65 ]
  %13 = phi i32 [ 0, %8 ], [ %66, %65 ]
  %14 = tail call ptr @id_data_find_fcurve(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull @RNA_MovieTrackingTrack, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef null) #12
  %15 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %12, i64 0, i32 8
  %16 = load i32, ptr %15, align 8, !tbaa !65
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %65

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %12, i64 0, i32 10
  %20 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %12, i64 0, i32 24
  %21 = icmp eq ptr %14, null
  %22 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %12, i64 0, i32 7
  %23 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %12, i64 0, i32 7, i64 1
  br label %24

24:                                               ; preds = %18, %60
  %25 = phi i32 [ %16, %18 ], [ %61, %60 ]
  %26 = phi i64 [ 0, %18 ], [ %62, %60 ]
  %27 = load ptr, ptr %19, align 8, !tbaa !67
  %28 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %27, i64 %26
  %29 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %27, i64 %26, i32 5
  %30 = load i32, ptr %29, align 4, !tbaa !68
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %24
  %34 = load float, ptr %20, align 8, !tbaa !84
  br i1 %21, label %43, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %27, i64 %26, i32 4
  %37 = load i32, ptr %36, align 4, !tbaa !72
  %38 = sitofp i32 %37 to float
  %39 = tail call float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef %0, float noundef %38) #12
  %40 = fptosi float %39 to i32
  %41 = sitofp i32 %40 to float
  %42 = tail call float @evaluate_fcurve(ptr noundef nonnull %14, float noundef %41) #12
  br label %43

43:                                               ; preds = %35, %33
  %44 = phi float [ %42, %35 ], [ %34, %33 ]
  %45 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %27, i64 %26, i32 4
  %46 = load i32, ptr %45, align 4, !tbaa !72
  %47 = load float, ptr %28, align 4, !tbaa !85
  %48 = load float, ptr %22, align 8, !tbaa !85
  %49 = fadd float %47, %48
  %50 = fmul float %49, %9
  %51 = fpext float %50 to double
  %52 = getelementptr inbounds [2 x float], ptr %28, i64 0, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !85
  %54 = load float, ptr %23, align 4, !tbaa !85
  %55 = fadd float %53, %54
  %56 = fmul float %55, %10
  %57 = fpext float %56 to double
  %58 = fpext float %44 to double
  tail call void @libmv_tracksInsert(ptr noundef %5, i32 noundef %46, i32 noundef %13, double noundef %51, double noundef %57, double noundef %58) #12
  %59 = load i32, ptr %15, align 8, !tbaa !65
  br label %60

60:                                               ; preds = %43, %24
  %61 = phi i32 [ %59, %43 ], [ %25, %24 ]
  %62 = add nuw nsw i64 %26, 1
  %63 = sext i32 %61 to i64
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %24, label %65, !llvm.loop !86

65:                                               ; preds = %60, %11
  %66 = add nuw nsw i32 %13, 1
  %67 = load ptr, ptr %12, align 8, !tbaa !53
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %11, !llvm.loop !87

69:                                               ; preds = %65, %4
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @reconstruct_refine_intrinsics_get_flags(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !88 {
  %3 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !57
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 16
  %9 = load i16, ptr %8, align 4, !tbaa !89
  %10 = and i16 %9, 23
  %11 = zext nneg i16 %10 to i32
  br label %12

12:                                               ; preds = %2, %7
  %13 = phi i32 [ %11, %7 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_reconstruction_context_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @libmv_reconstructionDestroy(ptr noundef nonnull %3) #12
  br label %6

6:                                                ; preds = %5, %1
  %7 = load ptr, ptr %0, align 8, !tbaa !76
  tail call void @libmv_tracksDestroy(ptr noundef %7) #12
  %8 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  tail call void @tracks_map_free(ptr noundef %9, ptr noundef null) #12
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  tail call void %10(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: optsize
declare void @libmv_reconstructionDestroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @libmv_tracksDestroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @tracks_map_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_reconstruction_solve(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.ReconstructProgressData, align 8
  %8 = alloca %struct.libmv_ReconstructionOptions, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #13
  store ptr %1, ptr %7, align 8, !tbaa !91
  %9 = getelementptr inbounds %struct.ReconstructProgressData, ptr %7, i64 0, i32 1
  store ptr %2, ptr %9, align 8, !tbaa !93
  %10 = getelementptr inbounds %struct.ReconstructProgressData, ptr %7, i64 0, i32 2
  store ptr %3, ptr %10, align 8, !tbaa !94
  %11 = getelementptr inbounds %struct.ReconstructProgressData, ptr %7, i64 0, i32 3
  store ptr %4, ptr %11, align 8, !tbaa !95
  %12 = getelementptr inbounds %struct.ReconstructProgressData, ptr %7, i64 0, i32 4
  store i32 %5, ptr %12, align 8, !tbaa !96
  call fastcc void @reconstructionOptionsFromContext(ptr noundef nonnull %8, ptr noundef %0) #11
  %13 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 8
  %14 = load i16, ptr %13, align 2, !tbaa !62
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  %17 = load ptr, ptr %0, align 8, !tbaa !76
  %18 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 9
  %19 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 5
  br i1 %16, label %22, label %20

20:                                               ; preds = %6
  %21 = call ptr @libmv_solveModal(ptr noundef %17, ptr noundef nonnull %18, ptr noundef nonnull %8, ptr noundef nonnull @reconstruct_update_solve_cb, ptr noundef nonnull %7) #12
  store ptr %21, ptr %19, align 8, !tbaa !90
  br label %31

22:                                               ; preds = %6
  %23 = call ptr @libmv_solveReconstruction(ptr noundef %17, ptr noundef nonnull %18, ptr noundef nonnull %8, ptr noundef nonnull @reconstruct_update_solve_cb, ptr noundef nonnull %7) #12
  store ptr %23, ptr %19, align 8, !tbaa !90
  %24 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 1
  %25 = load i8, ptr %24, align 8, !tbaa !63
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.libmv_ReconstructionOptions, ptr %8, i64 0, i32 1
  %29 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 2
  %30 = load <2 x i32>, ptr %28, align 4, !tbaa !97
  store <2 x i32> %30, ptr %29, align 4, !tbaa !97
  br label %31

31:                                               ; preds = %22, %27, %20
  %32 = phi ptr [ %23, %22 ], [ %23, %27 ], [ %21, %20 ]
  %33 = call double @libmv_reprojectionError(ptr noundef %32) #12
  %34 = fptrunc double %33 to float
  %35 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 10
  store float %34, ptr %35, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @reconstructionOptionsFromContext(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !99 {
  %3 = getelementptr inbounds %struct.MovieReconstructContext, ptr %1, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !63
  %5 = zext i8 %4 to i32
  store i32 %5, ptr %0, align 4, !tbaa !100
  %6 = getelementptr inbounds %struct.MovieReconstructContext, ptr %1, i64 0, i32 2
  %7 = getelementptr inbounds %struct.libmv_ReconstructionOptions, ptr %0, i64 0, i32 1
  %8 = load <2 x i32>, ptr %6, align 4, !tbaa !97
  store <2 x i32> %8, ptr %7, align 4, !tbaa !97
  %9 = getelementptr inbounds %struct.MovieReconstructContext, ptr %1, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !80
  %11 = getelementptr inbounds %struct.libmv_ReconstructionOptions, ptr %0, i64 0, i32 3
  store i32 %10, ptr %11, align 4, !tbaa !102
  ret void
}

; Function Attrs: optsize
declare ptr @libmv_solveModal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @reconstruct_update_solve_cb(ptr nocapture noundef readonly %0, double noundef %1, ptr noundef %2) #0 !PGOFuncName !103 {
  %4 = getelementptr inbounds %struct.ReconstructProgressData, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !94
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = fptrunc double %1 to float
  store float %8, ptr %5, align 4, !tbaa !85
  %9 = getelementptr inbounds %struct.ReconstructProgressData, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !93
  store i16 1, ptr %10, align 2, !tbaa !104
  br label %11

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds %struct.ReconstructProgressData, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !95
  %14 = getelementptr inbounds %struct.ReconstructProgressData, ptr %0, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !96
  %16 = sext i32 %15 to i64
  %17 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %13, i64 noundef %16, ptr noundef nonnull @.str.4, ptr noundef %2) #12
  ret void
}

; Function Attrs: optsize
declare ptr @libmv_solveReconstruction(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare double @libmv_reprojectionError(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BKE_tracking_reconstruction_finish(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  tail call void @tracks_map_merge(ptr noundef %4, ptr noundef %1) #12
  tail call void @BKE_tracking_dopesheet_tag_update(ptr noundef %1) #12
  %5 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 6
  %6 = tail call ptr @BKE_tracking_object_get_named(ptr noundef %1, ptr noundef nonnull %5) #12
  %7 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 7
  %8 = load i8, ptr %7, align 8, !tbaa !58
  %9 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 1
  %10 = load i8, ptr %9, align 8, !tbaa !63
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 2
  %14 = getelementptr inbounds %struct.MovieTrackingObject, ptr %6, i64 0, i32 8
  %15 = load <2 x i32>, ptr %13, align 4, !tbaa !97
  store <2 x i32> %15, ptr %14, align 8, !tbaa !97
  br label %16

16:                                               ; preds = %12, %2
  %17 = icmp eq i8 %8, 0
  %18 = getelementptr inbounds %struct.MovieTrackingObject, ptr %6, i64 0, i32 7
  %19 = getelementptr inbounds %struct.MovieTracking, ptr %1, i64 0, i32 4
  %20 = select i1 %17, ptr %18, ptr %19
  %21 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 10
  %22 = load float, ptr %21, align 8, !tbaa !98
  %23 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %20, i64 0, i32 1
  store float %22, ptr %23, align 4, !tbaa !105
  %24 = load i32, ptr %20, align 8, !tbaa !106
  %25 = or i32 %24, 1
  store i32 %25, ptr %20, align 8, !tbaa !106
  %26 = tail call fastcc i32 @reconstruct_retrieve_libmv(ptr noundef nonnull %0, ptr noundef %1) #11, !range !107
  %27 = trunc i32 %26 to i8
  ret i8 %27
}

; Function Attrs: optsize
declare void @tracks_map_merge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_tracking_dopesheet_tag_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_tracking_object_get_named(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @reconstruct_retrieve_libmv(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !108 {
  tail call fastcc void @reconstruct_retrieve_libmv_intrinsics(ptr noundef %0, ptr noundef %1) #11
  %3 = tail call fastcc zeroext i8 @reconstruct_retrieve_libmv_tracks(ptr noundef %0, ptr noundef %1) #11, !range !109
  %4 = zext nneg i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_reconstruction_scale(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %10, %6 ], [ %4, %2 ]
  %8 = tail call ptr @BKE_tracking_object_get_tracks(ptr noundef %0, ptr noundef nonnull %7) #12
  %9 = tail call ptr @BKE_tracking_object_get_reconstruction(ptr noundef %0, ptr noundef nonnull %7) #12
  tail call fastcc void @tracking_scale_reconstruction(ptr noundef %8, ptr noundef %9, ptr noundef %1) #11
  %10 = load ptr, ptr %7, align 8, !tbaa !53
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %6, !llvm.loop !110

12:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_tracking_object_get_reconstruction(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @tracking_scale_reconstruction(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !111 {
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  %5 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !112
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !113
  %11 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %10, i64 0, i32 2, i64 3
  call fastcc void @mul_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %11, ptr noundef %2) #11
  %12 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %1, i64 0, i32 4
  br label %16

13:                                               ; preds = %16, %3
  %14 = load ptr, ptr %0, align 8, !tbaa !53
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %24

16:                                               ; preds = %8, %16
  %17 = phi i64 [ 0, %8 ], [ %20, %16 ]
  %18 = load ptr, ptr %12, align 8, !tbaa !113
  %19 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %18, i64 %17, i32 2, i64 3
  tail call fastcc void @mul_v3_v3(ptr noundef nonnull %19, ptr noundef %2) #11
  call fastcc void @sub_v3_v3(ptr noundef nonnull %19, ptr noundef nonnull %4) #11
  %20 = add nuw nsw i64 %17, 1
  %21 = load i32, ptr %5, align 4, !tbaa !112
  %22 = sext i32 %21 to i64
  %23 = icmp slt i64 %20, %22
  br i1 %23, label %16, label %13, !llvm.loop !114

24:                                               ; preds = %13, %32
  %25 = phi ptr [ %33, %32 ], [ %14, %13 ]
  %26 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %25, i64 0, i32 13
  %27 = load i32, ptr %26, align 8, !tbaa !115
  %28 = and i32 %27, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %25, i64 0, i32 11
  tail call fastcc void @mul_v3_v3(ptr noundef nonnull %31, ptr noundef %2) #11
  call fastcc void @sub_v3_v3(ptr noundef nonnull %31, ptr noundef nonnull %4) #11
  br label %32

32:                                               ; preds = %24, %30
  %33 = load ptr, ptr %25, align 8, !tbaa !53
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %24, !llvm.loop !116

35:                                               ; preds = %32, %13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BKE_tracking_track_has_enabled_marker_at_frame(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @libmv_tracksNew() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @id_data_find_fcurve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @evaluate_fcurve(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @libmv_tracksInsert(ptr noundef, i32 noundef, i32 noundef, double noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reconstruct_retrieve_libmv_intrinsics(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !117 {
  %3 = alloca %struct.libmv_CameraIntrinsicsOptions, align 8
  %4 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = tail call ptr @libmv_reconstructionExtractIntrinsics(ptr noundef %5) #12
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #13
  call void @libmv_cameraIntrinsicsExtractOptions(ptr noundef %6, ptr noundef nonnull %3) #12
  call void @tracking_trackingCameraFromIntrinscisOptions(ptr noundef %1, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @reconstruct_retrieve_libmv_tracks(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !118 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [3 x double], align 16
  %5 = alloca [4 x [4 x double]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !90
  %9 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 12
  %10 = load i32, ptr %9, align 8, !tbaa !74
  %11 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 13
  %12 = load i32, ptr %11, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %13 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 7
  %14 = load i8, ptr %13, align 8, !tbaa !58
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.MovieTracking, ptr %1, i64 0, i32 2
  %18 = getelementptr inbounds %struct.MovieTracking, ptr %1, i64 0, i32 4
  br label %24

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 6
  %21 = tail call ptr @BKE_tracking_object_get_named(ptr noundef %1, ptr noundef nonnull %20) #12
  %22 = getelementptr inbounds %struct.MovieTrackingObject, ptr %21, i64 0, i32 5
  %23 = getelementptr inbounds %struct.MovieTrackingObject, ptr %21, i64 0, i32 7
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi ptr [ %17, %16 ], [ %22, %19 ]
  %26 = phi ptr [ %18, %16 ], [ %23, %19 ]
  call void @unit_m4(ptr noundef nonnull %3) #12
  %27 = load ptr, ptr %25, align 8, !tbaa !119
  %28 = icmp eq ptr %27, null
  br i1 %28, label %61, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  br label %31

31:                                               ; preds = %29, %56
  %32 = phi ptr [ %27, %29 ], [ %58, %56 ]
  %33 = phi i32 [ 0, %29 ], [ %59, %56 ]
  %34 = phi i8 [ 1, %29 ], [ %57, %56 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %35 = call i32 @libmv_reprojectionPointForTrack(ptr noundef %8, i32 noundef %33, ptr noundef nonnull %4) #12
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %32, i64 0, i32 11
  %39 = load <2 x double>, ptr %4, align 16, !tbaa !120
  %40 = fptrunc <2 x double> %39 to <2 x float>
  store <2 x float> %40, ptr %38, align 8, !tbaa !85
  %41 = load double, ptr %30, align 16, !tbaa !120
  %42 = fptrunc double %41 to float
  %43 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %32, i64 0, i32 11, i64 2
  store float %42, ptr %43, align 8, !tbaa !85
  %44 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %32, i64 0, i32 13
  %45 = load i32, ptr %44, align 8, !tbaa !115
  %46 = or i32 %45, 2
  store i32 %46, ptr %44, align 8, !tbaa !115
  %47 = call double @libmv_reprojectionErrorForTrack(ptr noundef %8, i32 noundef %33) #12
  %48 = fptrunc double %47 to float
  %49 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %32, i64 0, i32 12
  store float %48, ptr %49, align 4, !tbaa !121
  br label %56

50:                                               ; preds = %31
  %51 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %32, i64 0, i32 13
  %52 = load i32, ptr %51, align 8, !tbaa !115
  %53 = and i32 %52, -3
  store i32 %53, ptr %51, align 8, !tbaa !115
  %54 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %32, i64 0, i32 2
  %55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %33, ptr noundef nonnull %54) #11
  br label %56

56:                                               ; preds = %50, %37
  %57 = phi i8 [ %34, %37 ], [ 0, %50 ]
  %58 = load ptr, ptr %32, align 8, !tbaa !122
  %59 = add nuw nsw i32 %33, 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  %60 = icmp eq ptr %58, null
  br i1 %60, label %61, label %31, !llvm.loop !123

61:                                               ; preds = %56, %24
  %62 = phi i8 [ 1, %24 ], [ %57, %56 ]
  %63 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %26, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !113
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  call void %67(ptr noundef nonnull %64) #12
  br label %68

68:                                               ; preds = %66, %61
  %69 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %26, i64 0, i32 3
  store i32 0, ptr %69, align 4, !tbaa !112
  store ptr null, ptr %63, align 8, !tbaa !113
  %70 = load ptr, ptr @MEM_callocN, align 8, !tbaa !53
  %71 = sub i32 %12, %10
  %72 = add i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = mul nsw i64 %73, 72
  %75 = call ptr %70(i64 noundef %74, ptr noundef nonnull @.str.6) #12
  %76 = icmp sgt i32 %10, %12
  br i1 %76, label %122, label %77

77:                                               ; preds = %68, %115
  %78 = phi i32 [ %118, %115 ], [ %10, %68 ]
  %79 = phi i8 [ %117, %115 ], [ 0, %68 ]
  %80 = phi i8 [ %116, %115 ], [ %62, %68 ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #13
  %81 = call i32 @libmv_reprojectionCameraForImage(ptr noundef %8, i32 noundef %78, ptr noundef nonnull %5) #12
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %113, label %83

83:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13
  %84 = call double @libmv_reprojectionErrorForImage(ptr noundef %8, i32 noundef %78) #12
  br label %85

85:                                               ; preds = %95, %83
  %86 = phi i64 [ 0, %83 ], [ %96, %95 ]
  br label %87

87:                                               ; preds = %87, %85
  %88 = phi i64 [ 0, %85 ], [ %93, %87 ]
  %89 = getelementptr inbounds [4 x [4 x double]], ptr %5, i64 0, i64 %86, i64 %88
  %90 = load <2 x double>, ptr %89, align 16, !tbaa !120
  %91 = fptrunc <2 x double> %90 to <2 x float>
  %92 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 %86, i64 %88
  store <2 x float> %91, ptr %92, align 8, !tbaa !85
  %93 = add nuw i64 %88, 2
  %94 = icmp eq i64 %93, 4
  br i1 %94, label %95, label %87, !llvm.loop !124

95:                                               ; preds = %87
  %96 = add nuw nsw i64 %86, 1
  %97 = icmp eq i64 %96, 4
  br i1 %97, label %98, label %85, !llvm.loop !127

98:                                               ; preds = %95
  %99 = fptrunc double %84 to float
  %100 = icmp eq i8 %79, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %6) #12
  call void @unit_m4(ptr noundef nonnull %6) #12
  br label %104

103:                                              ; preds = %98
  call void @mul_m4_m4m4(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %6) #12
  br label %104

104:                                              ; preds = %103, %101
  %105 = load i32, ptr %69, align 4, !tbaa !112
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %75, i64 %106, i32 2
  call void @copy_m4_m4(ptr noundef nonnull %107, ptr noundef nonnull %6) #12
  %108 = load i32, ptr %69, align 4, !tbaa !112
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %75, i64 %109
  store i32 %78, ptr %110, align 4, !tbaa !128
  %111 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %75, i64 %109, i32 1
  store float %99, ptr %111, align 4, !tbaa !130
  %112 = add nsw i32 %108, 1
  store i32 %112, ptr %69, align 4, !tbaa !112
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13
  br label %115

113:                                              ; preds = %77
  %114 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %78) #11
  br label %115

115:                                              ; preds = %113, %104
  %116 = phi i8 [ %80, %104 ], [ 0, %113 ]
  %117 = phi i8 [ 1, %104 ], [ %79, %113 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #13
  %118 = add i32 %78, 1
  %119 = icmp eq i32 %78, %12
  br i1 %119, label %120, label %77, !llvm.loop !131

120:                                              ; preds = %115
  %121 = icmp eq i8 %117, 0
  br label %122

122:                                              ; preds = %120, %68
  %123 = phi i8 [ %62, %68 ], [ %116, %120 ]
  %124 = phi i1 [ true, %68 ], [ %121, %120 ]
  %125 = load i32, ptr %69, align 4, !tbaa !112
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %122
  %128 = mul i32 %125, 72
  %129 = load ptr, ptr @MEM_callocN, align 8, !tbaa !53
  %130 = sext i32 %128 to i64
  %131 = call ptr %129(i64 noundef %130, ptr noundef nonnull @.str.8) #12
  store ptr %131, ptr %63, align 8, !tbaa !113
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %131, ptr align 4 %75, i64 %130, i1 false)
  br label %132

132:                                              ; preds = %127, %122
  br i1 %124, label %147, label %133

133:                                              ; preds = %132
  %134 = load ptr, ptr %25, align 8, !tbaa !53
  %135 = icmp eq ptr %134, null
  br i1 %135, label %147, label %136

136:                                              ; preds = %133, %144
  %137 = phi ptr [ %145, %144 ], [ %134, %133 ]
  %138 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %137, i64 0, i32 13
  %139 = load i32, ptr %138, align 8, !tbaa !115
  %140 = and i32 %139, 2
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %137, i64 0, i32 11
  call void @mul_v3_m4v3(ptr noundef nonnull %143, ptr noundef nonnull %3, ptr noundef nonnull %143) #12
  br label %144

144:                                              ; preds = %142, %136
  %145 = load ptr, ptr %137, align 8, !tbaa !53
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %136, !llvm.loop !132

147:                                              ; preds = %144, %133, %132
  %148 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  call void %148(ptr noundef %75) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret i8 %123
}

; Function Attrs: optsize
declare ptr @libmv_reconstructionExtractIntrinsics(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @libmv_cameraIntrinsicsExtractOptions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @tracking_trackingCameraFromIntrinscisOptions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @libmv_reprojectionPointForTrack(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare double @libmv_reprojectionErrorForTrack(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @libmv_reprojectionCameraForImage(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare double @libmv_reprojectionErrorForImage(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !133 {
  %4 = load float, ptr %1, align 4, !tbaa !85
  %5 = load float, ptr %2, align 4, !tbaa !85
  %6 = fmul float %4, %5
  store float %6, ptr %0, align 4, !tbaa !85
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !85
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !85
  %11 = fmul float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !85
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !85
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !85
  %17 = fmul float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !134 {
  %3 = load float, ptr %1, align 4, !tbaa !85
  %4 = load float, ptr %0, align 4, !tbaa !85
  %5 = fmul float %3, %4
  store float %5, ptr %0, align 4, !tbaa !85
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !85
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !85
  %10 = fmul float %7, %9
  store float %10, ptr %8, align 4, !tbaa !85
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !85
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !85
  %15 = fmul float %12, %14
  store float %15, ptr %13, align 4, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !135 {
  %3 = load float, ptr %1, align 4, !tbaa !85
  %4 = load float, ptr %0, align 4, !tbaa !85
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !85
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !85
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !85
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !85
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !85
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !85
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !85
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize }
attributes #13 = { nounwind }

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
!34 = !{!35, !40, i64 28}
!35 = !{!"MovieTracking", !36, i64 0, !42, i64 72, !44, i64 128, !44, i64 144, !45, i64 160, !46, i64 184, !43, i64 232, !43, i64 240, !44, i64 248, !37, i64 264, !37, i64 268, !43, i64 272, !47, i64 280}
!36 = !{!"MovieTrackingSettings", !37, i64 0, !40, i64 4, !40, i64 6, !41, i64 8, !40, i64 12, !40, i64 14, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32, !37, i64 36, !37, i64 40, !40, i64 44, !40, i64 46, !41, i64 48, !37, i64 52, !37, i64 56, !41, i64 60, !41, i64 64, !37, i64 68}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"float", !38, i64 0}
!42 = !{!"MovieTrackingCamera", !43, i64 0, !40, i64 8, !40, i64 10, !41, i64 12, !41, i64 16, !41, i64 20, !40, i64 24, !40, i64 26, !38, i64 28, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52}
!43 = !{!"any pointer", !38, i64 0}
!44 = !{!"ListBase", !43, i64 0, !43, i64 8}
!45 = !{!"MovieTrackingReconstruction", !37, i64 0, !41, i64 4, !37, i64 8, !37, i64 12, !43, i64 16}
!46 = !{!"MovieTrackingStabilization", !37, i64 0, !37, i64 4, !37, i64 8, !41, i64 12, !43, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !37, i64 36, !37, i64 40, !41, i64 44}
!47 = !{!"MovieTrackingDopesheet", !37, i64 0, !40, i64 4, !40, i64 6, !44, i64 8, !44, i64 24, !37, i64 40, !37, i64 44}
!48 = !{!35, !37, i64 40}
!49 = !{!"tracking_solver.c:reconstruct_count_tracks_on_both_keyframes"}
!50 = !{!51, !37, i64 144}
!51 = !{!"MovieTrackingObject", !43, i64 0, !43, i64 8, !38, i64 16, !37, i64 80, !41, i64 84, !44, i64 88, !44, i64 104, !45, i64 120, !37, i64 144, !37, i64 148}
!52 = !{!51, !37, i64 148}
!53 = !{!43, !43, i64 0}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!35, !41, i64 88}
!57 = !{!51, !37, i64 80}
!58 = !{!59, !38, i64 96}
!59 = !{!"MovieReconstructContext", !43, i64 0, !38, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !43, i64 24, !38, i64 32, !38, i64 96, !40, i64 98, !60, i64 104, !41, i64 200, !43, i64 208, !37, i64 216, !37, i64 220}
!60 = !{!"libmv_CameraIntrinsicsOptions", !37, i64 0, !37, i64 4, !37, i64 8, !61, i64 16, !61, i64 24, !61, i64 32, !61, i64 40, !61, i64 48, !61, i64 56, !61, i64 64, !61, i64 72, !61, i64 80, !61, i64 88}
!61 = !{!"double", !38, i64 0}
!62 = !{!59, !40, i64 98}
!63 = !{!59, !38, i64 8}
!64 = !{!59, !43, i64 208}
!65 = !{!66, !37, i64 120}
!66 = !{!"MovieTrackingTrack", !43, i64 0, !43, i64 8, !38, i64 16, !38, i64 80, !38, i64 88, !38, i64 96, !38, i64 104, !38, i64 112, !37, i64 120, !37, i64 124, !43, i64 128, !38, i64 136, !41, i64 148, !37, i64 152, !37, i64 156, !37, i64 160, !38, i64 164, !40, i64 176, !40, i64 178, !40, i64 180, !40, i64 182, !37, i64 184, !41, i64 188, !43, i64 192, !41, i64 200, !41, i64 204}
!67 = !{!66, !43, i64 128}
!68 = !{!69, !37, i64 60}
!69 = !{!"MovieTrackingMarker", !38, i64 0, !38, i64 8, !38, i64 40, !38, i64 48, !37, i64 56, !37, i64 60}
!70 = distinct !{!70, !55}
!71 = distinct !{!71, !55}
!72 = !{!69, !37, i64 56}
!73 = distinct !{!73, !55}
!74 = !{!59, !37, i64 216}
!75 = !{!59, !37, i64 220}
!76 = !{!59, !43, i64 0}
!77 = !{!59, !37, i64 12}
!78 = !{!59, !37, i64 16}
!79 = !{i32 0, i32 24}
!80 = !{!59, !37, i64 20}
!81 = !{!"tracking_solver.c:min_ii"}
!82 = !{!"tracking_solver.c:max_ii"}
!83 = !{!"tracking_solver.c:libmv_tracks_new"}
!84 = !{!66, !41, i64 200}
!85 = !{!41, !41, i64 0}
!86 = distinct !{!86, !55}
!87 = distinct !{!87, !55}
!88 = !{!"tracking_solver.c:reconstruct_refine_intrinsics_get_flags"}
!89 = !{!35, !40, i64 44}
!90 = !{!59, !43, i64 24}
!91 = !{!92, !43, i64 0}
!92 = !{!"ReconstructProgressData", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !37, i64 32}
!93 = !{!92, !43, i64 8}
!94 = !{!92, !43, i64 16}
!95 = !{!92, !43, i64 24}
!96 = !{!92, !37, i64 32}
!97 = !{!37, !37, i64 0}
!98 = !{!59, !41, i64 200}
!99 = !{!"tracking_solver.c:reconstructionOptionsFromContext"}
!100 = !{!101, !37, i64 0}
!101 = !{!"libmv_ReconstructionOptions", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12}
!102 = !{!101, !37, i64 12}
!103 = !{!"tracking_solver.c:reconstruct_update_solve_cb"}
!104 = !{!40, !40, i64 0}
!105 = !{!45, !41, i64 4}
!106 = !{!45, !37, i64 0}
!107 = !{i32 0, i32 2}
!108 = !{!"tracking_solver.c:reconstruct_retrieve_libmv"}
!109 = !{i8 0, i8 2}
!110 = distinct !{!110, !55}
!111 = !{!"tracking_solver.c:tracking_scale_reconstruction"}
!112 = !{!45, !37, i64 12}
!113 = !{!45, !43, i64 16}
!114 = distinct !{!114, !55}
!115 = !{!66, !37, i64 152}
!116 = distinct !{!116, !55}
!117 = !{!"tracking_solver.c:reconstruct_retrieve_libmv_intrinsics"}
!118 = !{!"tracking_solver.c:reconstruct_retrieve_libmv_tracks"}
!119 = !{!44, !43, i64 0}
!120 = !{!61, !61, i64 0}
!121 = !{!66, !41, i64 148}
!122 = !{!66, !43, i64 0}
!123 = distinct !{!123, !55}
!124 = distinct !{!124, !55, !125, !126}
!125 = !{!"llvm.loop.isvectorized", i32 1}
!126 = !{!"llvm.loop.unroll.runtime.disable"}
!127 = distinct !{!127, !55}
!128 = !{!129, !37, i64 0}
!129 = !{!"MovieReconstructedCamera", !37, i64 0, !41, i64 4, !38, i64 8}
!130 = !{!129, !41, i64 4}
!131 = distinct !{!131, !55}
!132 = distinct !{!132, !55}
!133 = !{!"tracking_solver.c:mul_v3_v3v3"}
!134 = !{!"tracking_solver.c:mul_v3_v3"}
!135 = !{!"tracking_solver.c:sub_v3_v3"}
