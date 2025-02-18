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

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_tracking_reconstruction_check(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 11
  %6 = load i16, ptr %5, align 4, !tbaa !34
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %43

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 15
  %11 = load i32, ptr %10, align 8, !tbaa !48
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %9
  %15 = tail call ptr @BKE_tracking_object_get_tracks(ptr noundef %0, ptr noundef %1) #6
  %16 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 8
  %17 = load i32, ptr %16, align 8, !tbaa !49
  %18 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 9
  %19 = load i32, ptr %18, align 4, !tbaa !51
  %20 = load ptr, ptr %15, align 8, !tbaa !52
  %21 = icmp eq ptr %20, null
  br i1 %21, label %39, label %22

22:                                               ; preds = %14, %32
  %23 = phi ptr [ %34, %32 ], [ %20, %14 ]
  %24 = phi i32 [ %33, %32 ], [ 0, %14 ]
  %25 = tail call zeroext i8 @BKE_tracking_track_has_enabled_marker_at_frame(ptr noundef nonnull %23, i32 noundef %17) #6
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = tail call zeroext i8 @BKE_tracking_track_has_enabled_marker_at_frame(ptr noundef nonnull %23, i32 noundef %19) #6
  %29 = icmp ne i8 %28, 0
  %30 = zext i1 %29 to i32
  %31 = add nsw i32 %24, %30
  br label %32

32:                                               ; preds = %27, %22
  %33 = phi i32 [ %24, %22 ], [ %31, %27 ]
  %34 = load ptr, ptr %23, align 8, !tbaa !52
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %22, !llvm.loop !53

36:                                               ; preds = %32
  %37 = icmp slt i32 %33, 8
  br i1 %37, label %39, label %38

38:                                               ; preds = %9, %36
  br label %39

39:                                               ; preds = %36, %14, %38
  %40 = phi ptr [ @.str.1, %38 ], [ @.str, %14 ], [ @.str, %36 ]
  %41 = sext i32 %3 to i64
  %42 = tail call ptr @BLI_strncpy(ptr noundef %2, ptr noundef nonnull %40, i64 noundef %41) #6
  br label %43

43:                                               ; preds = %39, %4
  %44 = phi i8 [ 1, %4 ], [ 0, %39 ]
  ret i8 %44
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_tracking_reconstruction_context_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %9 = tail call ptr %8(i64 noundef 224, ptr noundef nonnull @.str.2) #6
  %10 = tail call ptr @BKE_tracking_object_get_tracks(ptr noundef nonnull %7, ptr noundef %1) #6
  %11 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 4
  %12 = load float, ptr %11, align 8, !tbaa !56
  %13 = tail call i32 @BLI_countlist(ptr noundef %10) #6
  %14 = getelementptr inbounds %struct.MovieReconstructContext, ptr %9, i64 0, i32 6
  %15 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 2
  %16 = tail call ptr @BLI_strncpy(ptr noundef nonnull %14, ptr noundef nonnull %15, i64 noundef 64) #6
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
  tail call void @tracking_cameraIntrinscisOptionsFromTracking(ptr noundef nonnull %7, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %31) #6
  %32 = load i8, ptr %21, align 8, !tbaa !58
  %33 = tail call ptr @tracks_map_new(ptr noundef nonnull %14, i8 noundef zeroext %32, i32 noundef %13, i32 noundef 0) #6
  %34 = getelementptr inbounds %struct.MovieReconstructContext, ptr %9, i64 0, i32 11
  store ptr %33, ptr %34, align 8, !tbaa !64
  %35 = load ptr, ptr %10, align 8, !tbaa !52
  %36 = icmp eq ptr %35, null
  br i1 %36, label %99, label %37

37:                                               ; preds = %6, %94
  %38 = phi ptr [ %97, %94 ], [ %35, %6 ]
  %39 = phi i32 [ %95, %94 ], [ -2147483648, %6 ]
  %40 = phi i32 [ %89, %94 ], [ 2147483647, %6 ]
  %41 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %38, i64 0, i32 8
  %42 = load i32, ptr %41, align 8, !tbaa !65
  %43 = add nsw i32 %42, -1
  %44 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %38, i64 0, i32 10
  %45 = load ptr, ptr %44, align 8, !tbaa !67
  %46 = sext i32 %43 to i64
  %47 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %45, i64 %46
  %48 = icmp sgt i32 %42, 0
  br i1 %48, label %49, label %60

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

60:                                               ; preds = %49, %56, %37
  %61 = phi i32 [ 0, %37 ], [ %51, %49 ], [ %42, %56 ]
  %62 = phi ptr [ %45, %37 ], [ %50, %49 ], [ %58, %56 ]
  %63 = icmp sgt i32 %42, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %45, i64 %46, i32 5
  %66 = load i32, ptr %65, align 4, !tbaa !68
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %80, label %75

69:                                               ; preds = %75
  %70 = add nsw i32 %76, -1
  %71 = getelementptr %struct.MovieTrackingMarker, ptr %77, i64 -1, i32 5
  %72 = load i32, ptr %71, align 4, !tbaa !68
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %80, label %75, !llvm.loop !71

75:                                               ; preds = %64, %69
  %76 = phi i32 [ %70, %69 ], [ %43, %64 ]
  %77 = phi ptr [ %78, %69 ], [ %47, %64 ]
  %78 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %77, i64 -1
  %79 = icmp sgt i32 %76, 0
  br i1 %79, label %69, label %80, !llvm.loop !71

80:                                               ; preds = %75, %69, %64, %60
  %81 = phi ptr [ %47, %60 ], [ %47, %64 ], [ %78, %69 ], [ %78, %75 ]
  %82 = phi i1 [ %63, %60 ], [ %63, %64 ], [ %79, %69 ], [ %79, %75 ]
  %83 = icmp slt i32 %61, %43
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %62, i64 0, i32 4
  %86 = load i32, ptr %85, align 4, !tbaa !72
  %87 = tail call i32 @llvm.smin.i32(i32 %40, i32 %86)
  br label %88

88:                                               ; preds = %84, %80
  %89 = phi i32 [ %87, %84 ], [ %40, %80 ]
  br i1 %82, label %90, label %94

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %81, i64 0, i32 4
  %92 = load i32, ptr %91, align 4, !tbaa !72
  %93 = tail call i32 @llvm.smax.i32(i32 %92, i32 %39)
  br label %94

94:                                               ; preds = %90, %88
  %95 = phi i32 [ %93, %90 ], [ %39, %88 ]
  %96 = load ptr, ptr %34, align 8, !tbaa !64
  tail call void @tracks_map_insert(ptr noundef %96, ptr noundef nonnull %38, ptr noundef null) #6
  %97 = load ptr, ptr %38, align 8, !tbaa !52
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %37, !llvm.loop !73

99:                                               ; preds = %94, %6
  %100 = phi i32 [ 2147483647, %6 ], [ %89, %94 ]
  %101 = phi i32 [ -2147483648, %6 ], [ %95, %94 ]
  %102 = getelementptr inbounds %struct.MovieReconstructContext, ptr %9, i64 0, i32 12
  store i32 %100, ptr %102, align 8, !tbaa !74
  %103 = getelementptr inbounds %struct.MovieReconstructContext, ptr %9, i64 0, i32 13
  store i32 %101, ptr %103, align 4, !tbaa !75
  %104 = tail call ptr @libmv_tracksNew() #6
  %105 = load ptr, ptr %10, align 8, !tbaa !52
  %106 = icmp eq ptr %105, null
  br i1 %106, label %170, label %107

107:                                              ; preds = %99
  %108 = fdiv float 1.000000e+00, %12
  %109 = sitofp i32 %5 to float
  %110 = fmul float %108, %109
  %111 = fptosi float %110 to i32
  %112 = sitofp i32 %4 to float
  %113 = sitofp i32 %111 to float
  br label %114

114:                                              ; preds = %107, %166
  %115 = phi ptr [ %105, %107 ], [ %168, %166 ]
  %116 = phi i32 [ 0, %107 ], [ %167, %166 ]
  %117 = tail call ptr @id_data_find_fcurve(ptr noundef %0, ptr noundef nonnull %115, ptr noundef nonnull @RNA_MovieTrackingTrack, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef null) #6
  %118 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %115, i64 0, i32 8
  %119 = load i32, ptr %118, align 8, !tbaa !65
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %166

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %115, i64 0, i32 10
  %123 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %115, i64 0, i32 24
  %124 = icmp eq ptr %117, null
  %125 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %115, i64 0, i32 7
  %126 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %115, i64 0, i32 7, i64 1
  br label %127

127:                                              ; preds = %121, %161
  %128 = phi i64 [ 0, %121 ], [ %162, %161 ]
  %129 = load ptr, ptr %122, align 8, !tbaa !67
  %130 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %129, i64 %128
  %131 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %129, i64 %128, i32 5
  %132 = load i32, ptr %131, align 4, !tbaa !68
  %133 = and i32 %132, 1
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %161

135:                                              ; preds = %127
  %136 = load float, ptr %123, align 8, !tbaa !76
  br i1 %124, label %145, label %137

137:                                              ; preds = %135
  %138 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %129, i64 %128, i32 4
  %139 = load i32, ptr %138, align 4, !tbaa !72
  %140 = sitofp i32 %139 to float
  %141 = tail call float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef %0, float noundef %140) #6
  %142 = fptosi float %141 to i32
  %143 = sitofp i32 %142 to float
  %144 = tail call float @evaluate_fcurve(ptr noundef nonnull %117, float noundef %143) #6
  br label %145

145:                                              ; preds = %137, %135
  %146 = phi float [ %144, %137 ], [ %136, %135 ]
  %147 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %129, i64 %128, i32 4
  %148 = load i32, ptr %147, align 4, !tbaa !72
  %149 = load float, ptr %130, align 4, !tbaa !77
  %150 = load float, ptr %125, align 8, !tbaa !77
  %151 = fadd float %149, %150
  %152 = fmul float %151, %112
  %153 = fpext float %152 to double
  %154 = getelementptr inbounds [2 x float], ptr %130, i64 0, i64 1
  %155 = load float, ptr %154, align 4, !tbaa !77
  %156 = load float, ptr %126, align 4, !tbaa !77
  %157 = fadd float %155, %156
  %158 = fmul float %157, %113
  %159 = fpext float %158 to double
  %160 = fpext float %146 to double
  tail call void @libmv_tracksInsert(ptr noundef %104, i32 noundef %148, i32 noundef %116, double noundef %153, double noundef %159, double noundef %160) #6
  br label %161

161:                                              ; preds = %145, %127
  %162 = add nuw nsw i64 %128, 1
  %163 = load i32, ptr %118, align 8, !tbaa !65
  %164 = sext i32 %163 to i64
  %165 = icmp slt i64 %162, %164
  br i1 %165, label %127, label %166, !llvm.loop !78

166:                                              ; preds = %161, %114
  %167 = add nuw nsw i32 %116, 1
  %168 = load ptr, ptr %115, align 8, !tbaa !52
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %114, !llvm.loop !79

170:                                              ; preds = %166, %99
  store ptr %104, ptr %9, align 8, !tbaa !80
  %171 = getelementptr inbounds %struct.MovieReconstructContext, ptr %9, i64 0, i32 2
  store i32 %2, ptr %171, align 4, !tbaa !81
  %172 = getelementptr inbounds %struct.MovieReconstructContext, ptr %9, i64 0, i32 3
  store i32 %3, ptr %172, align 8, !tbaa !82
  %173 = load i32, ptr %17, align 8, !tbaa !57
  %174 = and i32 %173, 1
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %181, label %176

176:                                              ; preds = %170
  %177 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 0, i32 16
  %178 = load i16, ptr %177, align 4, !tbaa !83
  %179 = and i16 %178, 23
  %180 = zext nneg i16 %179 to i32
  br label %181

181:                                              ; preds = %170, %176
  %182 = phi i32 [ %180, %176 ], [ 0, %170 ]
  %183 = getelementptr inbounds %struct.MovieReconstructContext, ptr %9, i64 0, i32 4
  store i32 %182, ptr %183, align 4, !tbaa !84
  ret ptr %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @BKE_tracking_object_get_tracks(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #1

declare void @tracking_cameraIntrinscisOptionsFromTracking(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @tracks_map_new(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @tracks_map_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_reconstruction_context_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @libmv_reconstructionDestroy(ptr noundef nonnull %3) #6
  br label %6

6:                                                ; preds = %5, %1
  %7 = load ptr, ptr %0, align 8, !tbaa !80
  tail call void @libmv_tracksDestroy(ptr noundef %7) #6
  %8 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  tail call void @tracks_map_free(ptr noundef %9, ptr noundef null) #6
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  tail call void %10(ptr noundef nonnull %0) #6
  ret void
}

declare void @libmv_reconstructionDestroy(ptr noundef) local_unnamed_addr #1

declare void @libmv_tracksDestroy(ptr noundef) local_unnamed_addr #1

declare void @tracks_map_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_reconstruction_solve(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.ReconstructProgressData, align 8
  %8 = alloca %struct.libmv_ReconstructionOptions, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6
  store ptr %1, ptr %7, align 8, !tbaa !86
  %9 = getelementptr inbounds %struct.ReconstructProgressData, ptr %7, i64 0, i32 1
  store ptr %2, ptr %9, align 8, !tbaa !88
  %10 = getelementptr inbounds %struct.ReconstructProgressData, ptr %7, i64 0, i32 2
  store ptr %3, ptr %10, align 8, !tbaa !89
  %11 = getelementptr inbounds %struct.ReconstructProgressData, ptr %7, i64 0, i32 3
  store ptr %4, ptr %11, align 8, !tbaa !90
  %12 = getelementptr inbounds %struct.ReconstructProgressData, ptr %7, i64 0, i32 4
  store i32 %5, ptr %12, align 8, !tbaa !91
  %13 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 1
  %14 = load i8, ptr %13, align 8, !tbaa !63
  %15 = zext i8 %14 to i32
  store i32 %15, ptr %8, align 4, !tbaa !92
  %16 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !81
  %18 = getelementptr inbounds %struct.libmv_ReconstructionOptions, ptr %8, i64 0, i32 1
  store i32 %17, ptr %18, align 4, !tbaa !94
  %19 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !82
  %21 = getelementptr inbounds %struct.libmv_ReconstructionOptions, ptr %8, i64 0, i32 2
  store i32 %20, ptr %21, align 4, !tbaa !95
  %22 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !84
  %24 = getelementptr inbounds %struct.libmv_ReconstructionOptions, ptr %8, i64 0, i32 3
  store i32 %23, ptr %24, align 4, !tbaa !96
  %25 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 8
  %26 = load i16, ptr %25, align 2, !tbaa !62
  %27 = and i16 %26, 1
  %28 = icmp eq i16 %27, 0
  %29 = load ptr, ptr %0, align 8, !tbaa !80
  %30 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 9
  %31 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 5
  br i1 %28, label %34, label %32

32:                                               ; preds = %6
  %33 = call ptr @libmv_solveModal(ptr noundef %29, ptr noundef nonnull %30, ptr noundef nonnull %8, ptr noundef nonnull @reconstruct_update_solve_cb, ptr noundef nonnull %7) #6
  store ptr %33, ptr %31, align 8, !tbaa !85
  br label %41

34:                                               ; preds = %6
  %35 = call ptr @libmv_solveReconstruction(ptr noundef %29, ptr noundef nonnull %30, ptr noundef nonnull %8, ptr noundef nonnull @reconstruct_update_solve_cb, ptr noundef nonnull %7) #6
  store ptr %35, ptr %31, align 8, !tbaa !85
  %36 = load i8, ptr %13, align 8, !tbaa !63
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, ptr %18, align 4, !tbaa !94
  store i32 %39, ptr %16, align 4, !tbaa !81
  %40 = load i32, ptr %21, align 4, !tbaa !95
  store i32 %40, ptr %19, align 8, !tbaa !82
  br label %41

41:                                               ; preds = %34, %38, %32
  %42 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !85
  %44 = call double @libmv_reprojectionError(ptr noundef %43) #6
  %45 = fptrunc double %44 to float
  %46 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 10
  store float %45, ptr %46, align 8, !tbaa !97
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #6
  ret void
}

declare ptr @libmv_solveModal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @reconstruct_update_solve_cb(ptr nocapture noundef readonly %0, double noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.ReconstructProgressData, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !89
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = fptrunc double %1 to float
  store float %8, ptr %5, align 4, !tbaa !77
  %9 = getelementptr inbounds %struct.ReconstructProgressData, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !88
  store i16 1, ptr %10, align 2, !tbaa !98
  br label %11

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds %struct.ReconstructProgressData, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !90
  %14 = getelementptr inbounds %struct.ReconstructProgressData, ptr %0, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !91
  %16 = sext i32 %15 to i64
  %17 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %13, i64 noundef %16, ptr noundef nonnull @.str.4, ptr noundef %2) #6
  ret void
}

declare ptr @libmv_solveReconstruction(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare double @libmv_reprojectionError(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BKE_tracking_reconstruction_finish(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [3 x double], align 16
  %5 = alloca [4 x [4 x double]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca %struct.libmv_CameraIntrinsicsOptions, align 8
  %8 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  tail call void @tracks_map_merge(ptr noundef %9, ptr noundef %1) #6
  tail call void @BKE_tracking_dopesheet_tag_update(ptr noundef %1) #6
  %10 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 6
  %11 = tail call ptr @BKE_tracking_object_get_named(ptr noundef %1, ptr noundef nonnull %10) #6
  %12 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 7
  %13 = load i8, ptr %12, align 8, !tbaa !58
  %14 = icmp eq i8 %13, 0
  %15 = getelementptr inbounds %struct.MovieTracking, ptr %1, i64 0, i32 4
  %16 = getelementptr inbounds %struct.MovieTrackingObject, ptr %11, i64 0, i32 7
  %17 = select i1 %14, ptr %16, ptr %15
  %18 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 1
  %19 = load i8, ptr %18, align 8, !tbaa !63
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !81
  %24 = getelementptr inbounds %struct.MovieTrackingObject, ptr %11, i64 0, i32 8
  store i32 %23, ptr %24, align 8, !tbaa !49
  %25 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !82
  %27 = getelementptr inbounds %struct.MovieTrackingObject, ptr %11, i64 0, i32 9
  store i32 %26, ptr %27, align 4, !tbaa !51
  br label %28

28:                                               ; preds = %21, %2
  %29 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 10
  %30 = load float, ptr %29, align 8, !tbaa !97
  %31 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %17, i64 0, i32 1
  store float %30, ptr %31, align 4, !tbaa !99
  %32 = load i32, ptr %17, align 8, !tbaa !100
  %33 = or i32 %32, 1
  store i32 %33, ptr %17, align 8, !tbaa !100
  %34 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !85
  %36 = tail call ptr @libmv_reconstructionExtractIntrinsics(ptr noundef %35) #6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #6
  call void @libmv_cameraIntrinsicsExtractOptions(ptr noundef %36, ptr noundef nonnull %7) #6
  call void @tracking_trackingCameraFromIntrinscisOptions(ptr noundef %1, ptr noundef nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #6
  %37 = load ptr, ptr %34, align 8, !tbaa !85
  %38 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 12
  %39 = load i32, ptr %38, align 8, !tbaa !74
  %40 = getelementptr inbounds %struct.MovieReconstructContext, ptr %0, i64 0, i32 13
  %41 = load i32, ptr %40, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %42 = load i8, ptr %12, align 8, !tbaa !58
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %28
  %45 = getelementptr inbounds %struct.MovieTracking, ptr %1, i64 0, i32 2
  br label %50

46:                                               ; preds = %28
  %47 = call ptr @BKE_tracking_object_get_named(ptr noundef %1, ptr noundef nonnull %10) #6
  %48 = getelementptr inbounds %struct.MovieTrackingObject, ptr %47, i64 0, i32 5
  %49 = getelementptr inbounds %struct.MovieTrackingObject, ptr %47, i64 0, i32 7
  br label %50

50:                                               ; preds = %46, %44
  %51 = phi ptr [ %45, %44 ], [ %48, %46 ]
  %52 = phi ptr [ %15, %44 ], [ %49, %46 ]
  call void @unit_m4(ptr noundef nonnull %3) #6
  %53 = load ptr, ptr %51, align 8, !tbaa !101
  %54 = icmp eq ptr %53, null
  br i1 %54, label %91, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 1
  %57 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  br label %58

58:                                               ; preds = %55, %86
  %59 = phi ptr [ %53, %55 ], [ %88, %86 ]
  %60 = phi i32 [ 0, %55 ], [ %89, %86 ]
  %61 = phi i8 [ 1, %55 ], [ %87, %86 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  %62 = call i32 @libmv_reprojectionPointForTrack(ptr noundef %37, i32 noundef %60, ptr noundef nonnull %4) #6
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %80, label %64

64:                                               ; preds = %58
  %65 = load double, ptr %4, align 16, !tbaa !102
  %66 = fptrunc double %65 to float
  %67 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %59, i64 0, i32 11
  store float %66, ptr %67, align 8, !tbaa !77
  %68 = load double, ptr %56, align 8, !tbaa !102
  %69 = fptrunc double %68 to float
  %70 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %59, i64 0, i32 11, i64 1
  store float %69, ptr %70, align 4, !tbaa !77
  %71 = load double, ptr %57, align 16, !tbaa !102
  %72 = fptrunc double %71 to float
  %73 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %59, i64 0, i32 11, i64 2
  store float %72, ptr %73, align 8, !tbaa !77
  %74 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %59, i64 0, i32 13
  %75 = load i32, ptr %74, align 8, !tbaa !103
  %76 = or i32 %75, 2
  store i32 %76, ptr %74, align 8, !tbaa !103
  %77 = call double @libmv_reprojectionErrorForTrack(ptr noundef %37, i32 noundef %60) #6
  %78 = fptrunc double %77 to float
  %79 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %59, i64 0, i32 12
  store float %78, ptr %79, align 4, !tbaa !104
  br label %86

80:                                               ; preds = %58
  %81 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %59, i64 0, i32 13
  %82 = load i32, ptr %81, align 8, !tbaa !103
  %83 = and i32 %82, -3
  store i32 %83, ptr %81, align 8, !tbaa !103
  %84 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %59, i64 0, i32 2
  %85 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %60, ptr noundef nonnull %84)
  br label %86

86:                                               ; preds = %80, %64
  %87 = phi i8 [ %61, %64 ], [ 0, %80 ]
  %88 = load ptr, ptr %59, align 8, !tbaa !105
  %89 = add nuw nsw i32 %60, 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  %90 = icmp eq ptr %88, null
  br i1 %90, label %91, label %58, !llvm.loop !106

91:                                               ; preds = %86, %50
  %92 = phi i8 [ 1, %50 ], [ %87, %86 ]
  %93 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %52, i64 0, i32 4
  %94 = load ptr, ptr %93, align 8, !tbaa !107
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %91
  %97 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  call void %97(ptr noundef nonnull %94) #6
  br label %98

98:                                               ; preds = %96, %91
  %99 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %52, i64 0, i32 3
  store i32 0, ptr %99, align 4, !tbaa !108
  store ptr null, ptr %93, align 8, !tbaa !107
  %100 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %101 = sub i32 %41, %39
  %102 = add i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = mul nsw i64 %103, 72
  %105 = call ptr %100(i64 noundef %104, ptr noundef nonnull @.str.6) #6
  %106 = icmp sgt i32 %39, %41
  br i1 %106, label %152, label %107

107:                                              ; preds = %98, %145
  %108 = phi i32 [ %148, %145 ], [ %39, %98 ]
  %109 = phi i8 [ %147, %145 ], [ 0, %98 ]
  %110 = phi i8 [ %146, %145 ], [ %92, %98 ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #6
  %111 = call i32 @libmv_reprojectionCameraForImage(ptr noundef %37, i32 noundef %108, ptr noundef nonnull %5) #6
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %143, label %113

113:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #6
  %114 = call double @libmv_reprojectionErrorForImage(ptr noundef %37, i32 noundef %108) #6
  br label %115

115:                                              ; preds = %113, %125
  %116 = phi i64 [ 0, %113 ], [ %126, %125 ]
  br label %117

117:                                              ; preds = %115, %117
  %118 = phi i64 [ 0, %115 ], [ %123, %117 ]
  %119 = getelementptr inbounds [4 x [4 x double]], ptr %5, i64 0, i64 %116, i64 %118
  %120 = load double, ptr %119, align 8, !tbaa !102
  %121 = fptrunc double %120 to float
  %122 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 %116, i64 %118
  store float %121, ptr %122, align 4, !tbaa !77
  %123 = add nuw nsw i64 %118, 1
  %124 = icmp eq i64 %123, 4
  br i1 %124, label %125, label %117, !llvm.loop !109

125:                                              ; preds = %117
  %126 = add nuw nsw i64 %116, 1
  %127 = icmp eq i64 %126, 4
  br i1 %127, label %128, label %115, !llvm.loop !110

128:                                              ; preds = %125
  %129 = fptrunc double %114 to float
  %130 = icmp eq i8 %109, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %6) #6
  call void @unit_m4(ptr noundef nonnull %6) #6
  br label %134

133:                                              ; preds = %128
  call void @mul_m4_m4m4(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %6) #6
  br label %134

134:                                              ; preds = %133, %131
  %135 = load i32, ptr %99, align 4, !tbaa !108
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %105, i64 %136, i32 2
  call void @copy_m4_m4(ptr noundef nonnull %137, ptr noundef nonnull %6) #6
  %138 = load i32, ptr %99, align 4, !tbaa !108
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %105, i64 %139
  store i32 %108, ptr %140, align 4, !tbaa !111
  %141 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %105, i64 %139, i32 1
  store float %129, ptr %141, align 4, !tbaa !113
  %142 = add nsw i32 %138, 1
  store i32 %142, ptr %99, align 4, !tbaa !108
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #6
  br label %145

143:                                              ; preds = %107
  %144 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %108)
  br label %145

145:                                              ; preds = %143, %134
  %146 = phi i8 [ %110, %134 ], [ 0, %143 ]
  %147 = phi i8 [ 1, %134 ], [ %109, %143 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #6
  %148 = add i32 %108, 1
  %149 = icmp eq i32 %108, %41
  br i1 %149, label %150, label %107, !llvm.loop !114

150:                                              ; preds = %145
  %151 = icmp eq i8 %147, 0
  br label %152

152:                                              ; preds = %150, %98
  %153 = phi i8 [ %92, %98 ], [ %146, %150 ]
  %154 = phi i1 [ true, %98 ], [ %151, %150 ]
  %155 = load i32, ptr %99, align 4, !tbaa !108
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %152
  %158 = mul i32 %155, 72
  %159 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %160 = sext i32 %158 to i64
  %161 = call ptr %159(i64 noundef %160, ptr noundef nonnull @.str.8) #6
  store ptr %161, ptr %93, align 8, !tbaa !107
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %161, ptr align 4 %105, i64 %160, i1 false)
  br label %162

162:                                              ; preds = %157, %152
  br i1 %154, label %177, label %163

163:                                              ; preds = %162
  %164 = load ptr, ptr %51, align 8, !tbaa !52
  %165 = icmp eq ptr %164, null
  br i1 %165, label %177, label %166

166:                                              ; preds = %163, %174
  %167 = phi ptr [ %175, %174 ], [ %164, %163 ]
  %168 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %167, i64 0, i32 13
  %169 = load i32, ptr %168, align 8, !tbaa !103
  %170 = and i32 %169, 2
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %167, i64 0, i32 11
  call void @mul_v3_m4v3(ptr noundef nonnull %173, ptr noundef nonnull %3, ptr noundef nonnull %173) #6
  br label %174

174:                                              ; preds = %172, %166
  %175 = load ptr, ptr %167, align 8, !tbaa !52
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %166, !llvm.loop !115

177:                                              ; preds = %174, %163, %162
  %178 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  call void %178(ptr noundef %105) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  %179 = icmp ne i8 %153, 0
  %180 = zext i1 %179 to i8
  ret i8 %180
}

declare void @tracks_map_merge(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_tracking_dopesheet_tag_update(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_tracking_object_get_named(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_reconstruction_scale(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = icmp eq ptr %4, null
  br i1 %5, label %94, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = getelementptr inbounds float, ptr %1, i64 2
  br label %16

13:                                               ; preds = %91, %47
  %14 = load ptr, ptr %17, align 8, !tbaa !52
  %15 = icmp eq ptr %14, null
  br i1 %15, label %94, label %16, !llvm.loop !116

16:                                               ; preds = %6, %13
  %17 = phi ptr [ %4, %6 ], [ %14, %13 ]
  %18 = tail call ptr @BKE_tracking_object_get_tracks(ptr noundef %0, ptr noundef nonnull %17) #6
  %19 = tail call ptr @BKE_tracking_object_get_reconstruction(ptr noundef %0, ptr noundef nonnull %17) #6
  %20 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %19, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !108
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %19, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !107
  %26 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %25, i64 0, i32 2, i64 3
  %27 = load float, ptr %26, align 4, !tbaa !77
  %28 = load float, ptr %1, align 4, !tbaa !77
  %29 = fmul float %27, %28
  %30 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %25, i64 0, i32 2, i64 3, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !77
  %32 = load float, ptr %7, align 4, !tbaa !77
  %33 = fmul float %31, %32
  %34 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %25, i64 0, i32 2, i64 3, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !77
  %36 = load float, ptr %8, align 4, !tbaa !77
  %37 = fmul float %35, %36
  br label %38

38:                                               ; preds = %23, %16
  %39 = phi float [ %29, %23 ], [ 0.000000e+00, %16 ]
  %40 = phi float [ %33, %23 ], [ 0.000000e+00, %16 ]
  %41 = phi float [ %37, %23 ], [ 0.000000e+00, %16 ]
  %42 = icmp sgt i32 %21, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %19, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !107
  %46 = zext nneg i32 %21 to i64
  br label %50

47:                                               ; preds = %50, %38
  %48 = load ptr, ptr %18, align 8, !tbaa !52
  %49 = icmp eq ptr %48, null
  br i1 %49, label %13, label %69

50:                                               ; preds = %43, %50
  %51 = phi i64 [ 0, %43 ], [ %67, %50 ]
  %52 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %45, i64 %51, i32 2, i64 3
  %53 = load float, ptr %1, align 4, !tbaa !77
  %54 = load float, ptr %52, align 4, !tbaa !77
  %55 = fmul float %53, %54
  store float %55, ptr %52, align 4, !tbaa !77
  %56 = load float, ptr %9, align 4, !tbaa !77
  %57 = getelementptr inbounds float, ptr %52, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !77
  %59 = fmul float %56, %58
  store float %59, ptr %57, align 4, !tbaa !77
  %60 = load float, ptr %10, align 4, !tbaa !77
  %61 = getelementptr inbounds float, ptr %52, i64 2
  %62 = load float, ptr %61, align 4, !tbaa !77
  %63 = fmul float %60, %62
  store float %63, ptr %61, align 4, !tbaa !77
  %64 = fsub float %55, %39
  store float %64, ptr %52, align 4, !tbaa !77
  %65 = fsub float %59, %40
  store float %65, ptr %57, align 4, !tbaa !77
  %66 = fsub float %63, %41
  store float %66, ptr %61, align 4, !tbaa !77
  %67 = add nuw nsw i64 %51, 1
  %68 = icmp eq i64 %67, %46
  br i1 %68, label %47, label %50, !llvm.loop !117

69:                                               ; preds = %47, %91
  %70 = phi ptr [ %92, %91 ], [ %48, %47 ]
  %71 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %70, i64 0, i32 13
  %72 = load i32, ptr %71, align 8, !tbaa !103
  %73 = and i32 %72, 2
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %91, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %70, i64 0, i32 11
  %77 = load float, ptr %1, align 4, !tbaa !77
  %78 = load float, ptr %76, align 4, !tbaa !77
  %79 = fmul float %77, %78
  store float %79, ptr %76, align 4, !tbaa !77
  %80 = load float, ptr %11, align 4, !tbaa !77
  %81 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %70, i64 0, i32 11, i64 1
  %82 = load float, ptr %81, align 4, !tbaa !77
  %83 = fmul float %80, %82
  store float %83, ptr %81, align 4, !tbaa !77
  %84 = load float, ptr %12, align 4, !tbaa !77
  %85 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %70, i64 0, i32 11, i64 2
  %86 = load float, ptr %85, align 4, !tbaa !77
  %87 = fmul float %84, %86
  store float %87, ptr %85, align 4, !tbaa !77
  %88 = fsub float %79, %39
  store float %88, ptr %76, align 4, !tbaa !77
  %89 = fsub float %83, %40
  store float %89, ptr %81, align 4, !tbaa !77
  %90 = fsub float %87, %41
  store float %90, ptr %85, align 4, !tbaa !77
  br label %91

91:                                               ; preds = %75, %69
  %92 = load ptr, ptr %70, align 8, !tbaa !52
  %93 = icmp eq ptr %92, null
  br i1 %93, label %13, label %69, !llvm.loop !118

94:                                               ; preds = %13, %2
  ret void
}

declare ptr @BKE_tracking_object_get_reconstruction(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BKE_tracking_track_has_enabled_marker_at_frame(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @libmv_tracksNew() local_unnamed_addr #1

declare ptr @id_data_find_fcurve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef, float noundef) local_unnamed_addr #1

declare float @evaluate_fcurve(ptr noundef, float noundef) local_unnamed_addr #1

declare void @libmv_tracksInsert(ptr noundef, i32 noundef, i32 noundef, double noundef, double noundef, double noundef) local_unnamed_addr #1

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @libmv_reconstructionExtractIntrinsics(ptr noundef) local_unnamed_addr #1

declare void @libmv_cameraIntrinsicsExtractOptions(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @tracking_trackingCameraFromIntrinscisOptions(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @unit_m4(ptr noundef) local_unnamed_addr #1

declare i32 @libmv_reprojectionPointForTrack(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare double @libmv_reprojectionErrorForTrack(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare i32 @libmv_reprojectionCameraForImage(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare double @libmv_reprojectionErrorForImage(ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!49 = !{!50, !37, i64 144}
!50 = !{!"MovieTrackingObject", !43, i64 0, !43, i64 8, !38, i64 16, !37, i64 80, !41, i64 84, !44, i64 88, !44, i64 104, !45, i64 120, !37, i64 144, !37, i64 148}
!51 = !{!50, !37, i64 148}
!52 = !{!43, !43, i64 0}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{!35, !41, i64 88}
!57 = !{!50, !37, i64 80}
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
!70 = distinct !{!70, !54, !55}
!71 = distinct !{!71, !54, !55}
!72 = !{!69, !37, i64 56}
!73 = distinct !{!73, !54, !55}
!74 = !{!59, !37, i64 216}
!75 = !{!59, !37, i64 220}
!76 = !{!66, !41, i64 200}
!77 = !{!41, !41, i64 0}
!78 = distinct !{!78, !54, !55}
!79 = distinct !{!79, !54, !55}
!80 = !{!59, !43, i64 0}
!81 = !{!59, !37, i64 12}
!82 = !{!59, !37, i64 16}
!83 = !{!35, !40, i64 44}
!84 = !{!59, !37, i64 20}
!85 = !{!59, !43, i64 24}
!86 = !{!87, !43, i64 0}
!87 = !{!"ReconstructProgressData", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !37, i64 32}
!88 = !{!87, !43, i64 8}
!89 = !{!87, !43, i64 16}
!90 = !{!87, !43, i64 24}
!91 = !{!87, !37, i64 32}
!92 = !{!93, !37, i64 0}
!93 = !{!"libmv_ReconstructionOptions", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12}
!94 = !{!93, !37, i64 4}
!95 = !{!93, !37, i64 8}
!96 = !{!93, !37, i64 12}
!97 = !{!59, !41, i64 200}
!98 = !{!40, !40, i64 0}
!99 = !{!45, !41, i64 4}
!100 = !{!45, !37, i64 0}
!101 = !{!44, !43, i64 0}
!102 = !{!61, !61, i64 0}
!103 = !{!66, !37, i64 152}
!104 = !{!66, !41, i64 148}
!105 = !{!66, !43, i64 0}
!106 = distinct !{!106, !54, !55}
!107 = !{!45, !43, i64 16}
!108 = !{!45, !37, i64 12}
!109 = distinct !{!109, !54, !55}
!110 = distinct !{!110, !54, !55}
!111 = !{!112, !37, i64 0}
!112 = !{!"MovieReconstructedCamera", !37, i64 0, !41, i64 4, !38, i64 8}
!113 = !{!112, !41, i64 4}
!114 = distinct !{!114, !54, !55}
!115 = distinct !{!115, !54, !55}
!116 = distinct !{!116, !54, !55}
!117 = distinct !{!117, !54, !55}
!118 = distinct !{!118, !54, !55}
