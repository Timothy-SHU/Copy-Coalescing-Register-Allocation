; ModuleID = 'blender/source/blender/blenkernel/intern/tracking_plane_tracker.c'
source_filename = "blender/source/blender/blenkernel/intern/tracking_plane_tracker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MovieTrackingPlaneMarker = type { [4 x [2 x float]], i32, i32 }
%struct.MovieTrackingPlaneTrack = type { ptr, ptr, [64 x i8], ptr, i32, i32, ptr, i32, i32, ptr, float, i32 }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@__const.track_plane_from_existing_motion.vec = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 4
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [25 x i8] c"point correspondences x1\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"point correspondences x2\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_track_plane_from_existing_motion(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @track_plane_from_existing_motion(ptr noundef %0, i32 noundef %1, i32 noundef 1, i8 noundef zeroext 0)
  tail call fastcc void @track_plane_from_existing_motion(ptr noundef %0, i32 noundef %1, i32 noundef -1, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @track_plane_from_existing_motion(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.MovieTrackingPlaneMarker, align 4
  %6 = alloca [3 x [3 x double]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = tail call ptr @BKE_tracking_plane_marker_get(ptr noundef %0, i32 noundef %1) #5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #5
  %11 = icmp slt i32 %2, 1
  %12 = select i1 %11, i32 -1, i32 1
  %13 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 8
  %14 = load i32, ptr %13, align 4, !tbaa !34
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %4, %30
  %18 = phi i32 [ %20, %30 ], [ %1, %4 ]
  %19 = phi ptr [ %32, %30 ], [ null, %4 ]
  %20 = add nsw i32 %18, %12
  %21 = tail call ptr @BKE_tracking_plane_marker_get_exact(ptr noundef %0, i32 noundef %20) #5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %21, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !41
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  %28 = xor i32 %26, 2
  %29 = select i1 %27, ptr %21, ptr %19
  br label %30

30:                                               ; preds = %23, %17
  %31 = phi i32 [ 2, %17 ], [ %28, %23 ]
  %32 = phi ptr [ %19, %17 ], [ %29, %23 ]
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %17, label %38, !llvm.loop !43

34:                                               ; preds = %4
  %35 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %10, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !41
  %37 = or i32 %36, 2
  store i32 %37, ptr %35, align 4, !tbaa !41
  br label %38

38:                                               ; preds = %30, %34
  %39 = phi ptr [ null, %34 ], [ %32, %30 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %5, ptr noundef nonnull align 4 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !45
  %40 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %5, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !41
  %42 = or i32 %41, 2
  store i32 %42, ptr %40, align 4, !tbaa !41
  %43 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 4
  %44 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 3
  %45 = getelementptr inbounds float, ptr %8, i64 1
  %46 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %47 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %48 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %5, i64 0, i32 1
  %49 = icmp eq i8 %3, 0
  %50 = icmp ne ptr %39, null
  %51 = select i1 %49, i1 %50, i1 false
  %52 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %10, i64 0, i32 1
  %53 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %39, i64 0, i32 1
  br label %54

54:                                               ; preds = %163, %38
  %55 = phi i32 [ %1, %38 ], [ %56, %163 ]
  %56 = add nsw i32 %55, %12
  %57 = call ptr @BKE_tracking_plane_marker_get_exact(ptr noundef %0, i32 noundef %56) #5
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #5
  %58 = icmp ne ptr %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %57, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !41
  %62 = and i32 %61, 2
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, ptr %13, align 4, !tbaa !34
  %66 = and i32 %65, 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %167

68:                                               ; preds = %64, %59, %54
  %69 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %70 = load i32, ptr %43, align 8, !tbaa !49
  %71 = sext i32 %70 to i64
  %72 = shl nsw i64 %71, 4
  %73 = call ptr %69(i64 noundef %72, ptr noundef nonnull @.str) #5
  %74 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %75 = load i32, ptr %43, align 8, !tbaa !49
  %76 = sext i32 %75 to i64
  %77 = shl nsw i64 %76, 4
  %78 = call ptr %74(i64 noundef %77, ptr noundef nonnull @.str.1) #5
  %79 = load i32, ptr %43, align 8, !tbaa !49
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %115

81:                                               ; preds = %68, %109
  %82 = phi i64 [ %111, %109 ], [ 0, %68 ]
  %83 = phi i32 [ %110, %109 ], [ 0, %68 ]
  %84 = load ptr, ptr %44, align 8, !tbaa !50
  %85 = getelementptr inbounds ptr, ptr %84, i64 %82
  %86 = load ptr, ptr %85, align 8, !tbaa !48
  %87 = call ptr @BKE_tracking_marker_get_exact(ptr noundef %86, i32 noundef %55) #5
  %88 = call ptr @BKE_tracking_marker_get_exact(ptr noundef %86, i32 noundef %56) #5
  %89 = icmp ne ptr %87, null
  %90 = icmp ne ptr %88, null
  %91 = select i1 %89, i1 %90, i1 false
  br i1 %91, label %92, label %109

92:                                               ; preds = %81
  %93 = load float, ptr %87, align 4, !tbaa !51
  %94 = fpext float %93 to double
  %95 = sext i32 %83 to i64
  %96 = getelementptr inbounds [2 x double], ptr %73, i64 %95
  store double %94, ptr %96, align 8, !tbaa !52
  %97 = getelementptr inbounds [2 x float], ptr %87, i64 0, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !51
  %99 = fpext float %98 to double
  %100 = getelementptr inbounds [2 x double], ptr %73, i64 %95, i64 1
  store double %99, ptr %100, align 8, !tbaa !52
  %101 = load float, ptr %88, align 4, !tbaa !51
  %102 = fpext float %101 to double
  %103 = getelementptr inbounds [2 x double], ptr %78, i64 %95
  store double %102, ptr %103, align 8, !tbaa !52
  %104 = getelementptr inbounds [2 x float], ptr %88, i64 0, i64 1
  %105 = load float, ptr %104, align 4, !tbaa !51
  %106 = fpext float %105 to double
  %107 = getelementptr inbounds [2 x double], ptr %78, i64 %95, i64 1
  store double %106, ptr %107, align 8, !tbaa !52
  %108 = add nsw i32 %83, 1
  br label %109

109:                                              ; preds = %92, %81
  %110 = phi i32 [ %108, %92 ], [ %83, %81 ]
  %111 = add nuw nsw i64 %82, 1
  %112 = load i32, ptr %43, align 8, !tbaa !49
  %113 = sext i32 %112 to i64
  %114 = icmp slt i64 %111, %113
  br i1 %114, label %81, label %115, !llvm.loop !54

115:                                              ; preds = %109, %68
  %116 = phi i32 [ 0, %68 ], [ %110, %109 ]
  %117 = icmp slt i32 %116, 4
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %119(ptr noundef %73) #5
  %120 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %120(ptr noundef %78) #5
  br label %167

121:                                              ; preds = %115
  call void @libmv_homography2DFromCorrespondencesEuc(ptr noundef %73, ptr noundef %78, i32 noundef %116, ptr noundef nonnull %6) #5
  call void @copy_m3_m3d(ptr noundef nonnull %7, ptr noundef nonnull %6) #5
  br label %122

122:                                              ; preds = %121, %122
  %123 = phi i64 [ 0, %121 ], [ %133, %122 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) @__const.track_plane_from_existing_motion.vec, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #5
  %124 = getelementptr inbounds [4 x [2 x float]], ptr %5, i64 0, i64 %123
  %125 = load float, ptr %124, align 4, !tbaa !51
  store float %125, ptr %8, align 4, !tbaa !51
  %126 = getelementptr inbounds float, ptr %124, i64 1
  %127 = load float, ptr %126, align 4, !tbaa !51
  store float %127, ptr %45, align 4, !tbaa !51
  call void @mul_v3_m3v3(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %8) #5
  %128 = load float, ptr %46, align 4, !tbaa !51
  %129 = load float, ptr %9, align 4, !tbaa !51
  %130 = fdiv float %129, %128
  store float %130, ptr %9, align 4, !tbaa !51
  %131 = load float, ptr %47, align 4, !tbaa !51
  %132 = fdiv float %131, %128
  store float %132, ptr %47, align 4, !tbaa !51
  store float %130, ptr %124, align 4, !tbaa !51
  store float %132, ptr %126, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #5
  %133 = add nuw nsw i64 %123, 1
  %134 = icmp eq i64 %133, 4
  br i1 %134, label %135, label %122, !llvm.loop !56

135:                                              ; preds = %122
  store i32 %56, ptr %48, align 4, !tbaa !57
  %136 = and i1 %51, %58
  br i1 %136, label %137, label %163

137:                                              ; preds = %135
  %138 = load i32, ptr %13, align 4, !tbaa !34
  %139 = and i32 %138, 8
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %163, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %57, i64 0, i32 1
  %143 = load i32, ptr %142, align 4, !tbaa !57
  %144 = sitofp i32 %143 to float
  %145 = load i32, ptr %52, align 4, !tbaa !57
  %146 = sitofp i32 %145 to float
  %147 = fsub float %144, %146
  %148 = load i32, ptr %53, align 4, !tbaa !57
  %149 = sitofp i32 %148 to float
  %150 = fsub float %149, %146
  %151 = fdiv float %147, %150
  %152 = fmul float %151, 3.000000e+00
  %153 = fmul float %151, -2.000000e+00
  %154 = fmul float %151, %153
  %155 = fmul float %151, %154
  %156 = call float @llvm.fmuladd.f32(float %152, float %151, float %155)
  br label %157

157:                                              ; preds = %141, %157
  %158 = phi i64 [ 0, %141 ], [ %161, %157 ]
  %159 = getelementptr inbounds [4 x [2 x float]], ptr %5, i64 0, i64 %158
  %160 = getelementptr inbounds [4 x [2 x float]], ptr %57, i64 0, i64 %158
  call void @interp_v2_v2v2(ptr noundef nonnull %159, ptr noundef nonnull %159, ptr noundef nonnull %160, float noundef %156) #5
  %161 = add nuw nsw i64 %158, 1
  %162 = icmp eq i64 %161, 4
  br i1 %162, label %163, label %157, !llvm.loop !58

163:                                              ; preds = %157, %137, %135
  %164 = call ptr @BKE_tracking_plane_marker_insert(ptr noundef %0, ptr noundef nonnull %5) #5
  %165 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %165(ptr noundef %73) #5
  %166 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %166(ptr noundef %78) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #5
  br label %54, !llvm.loop !59

167:                                              ; preds = %64, %118
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_retrack_plane_from_existing_motion_at_segment(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_tracking_plane_marker_get(ptr noundef %0, i32 noundef %1) #5
  %4 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 40
  %10 = trunc i64 %9 to i32
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !61
  %15 = icmp sgt i32 %14, %10
  br i1 %15, label %16, label %24

16:                                               ; preds = %12, %22
  %17 = phi ptr [ %23, %22 ], [ %3, %12 ]
  %18 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !41
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %17, i64 -1
  br i1 %11, label %16, label %24, !llvm.loop !62

24:                                               ; preds = %16, %22, %12, %2
  %25 = phi ptr [ null, %2 ], [ null, %12 ], [ %17, %16 ], [ null, %22 ]
  %26 = tail call ptr @BKE_tracking_plane_marker_get(ptr noundef %0, i32 noundef %1) #5
  %27 = load ptr, ptr %4, align 8, !tbaa !60
  %28 = ptrtoint ptr %26 to i64
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 40
  %32 = trunc i64 %31 to i32
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %34, label %46

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !61
  %37 = icmp sgt i32 %36, %32
  br i1 %37, label %38, label %46

38:                                               ; preds = %34, %44
  %39 = phi ptr [ %45, %44 ], [ %26, %34 ]
  %40 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %39, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !41
  %42 = and i32 %41, 2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %39, i64 1
  br i1 %33, label %38, label %46, !llvm.loop !62

46:                                               ; preds = %38, %44, %34, %24
  %47 = phi ptr [ null, %24 ], [ null, %34 ], [ %39, %38 ], [ null, %44 ]
  %48 = icmp ne ptr %25, null
  %49 = icmp ne ptr %47, null
  %50 = and i1 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %25, i64 0, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !57
  tail call fastcc void @track_plane_from_existing_motion(ptr noundef %0, i32 noundef %53, i32 noundef 1, i8 noundef zeroext 1)
  %54 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %47, i64 0, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !57
  tail call fastcc void @track_plane_from_existing_motion(ptr noundef %0, i32 noundef %55, i32 noundef -1, i8 noundef zeroext 0)
  br label %64

56:                                               ; preds = %46
  br i1 %48, label %57, label %60

57:                                               ; preds = %56
  %58 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %25, i64 0, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !57
  tail call fastcc void @track_plane_from_existing_motion(ptr noundef %0, i32 noundef %59, i32 noundef 1, i8 noundef zeroext 1)
  br label %64

60:                                               ; preds = %56
  br i1 %49, label %61, label %64

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %47, i64 0, i32 1
  %63 = load i32, ptr %62, align 4, !tbaa !57
  tail call fastcc void @track_plane_from_existing_motion(ptr noundef %0, i32 noundef %63, i32 noundef -1, i8 noundef zeroext 1)
  br label %64

64:                                               ; preds = %57, %61, %60, %51
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_homography_between_two_quads(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x [2 x double]], align 16
  %5 = alloca [4 x [2 x double]], align 16
  %6 = alloca [3 x [3 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #5
  %7 = load float, ptr %0, align 4, !tbaa !51
  %8 = fpext float %7 to double
  store double %8, ptr %4, align 16, !tbaa !52
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !51
  %11 = fpext float %10 to double
  %12 = getelementptr inbounds double, ptr %4, i64 1
  store double %11, ptr %12, align 8, !tbaa !52
  %13 = getelementptr inbounds [2 x double], ptr %4, i64 1
  %14 = getelementptr inbounds [2 x float], ptr %0, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !51
  %16 = fpext float %15 to double
  store double %16, ptr %13, align 16, !tbaa !52
  %17 = getelementptr inbounds [2 x float], ptr %0, i64 1, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !51
  %19 = fpext float %18 to double
  %20 = getelementptr inbounds [2 x double], ptr %4, i64 1, i64 1
  store double %19, ptr %20, align 8, !tbaa !52
  %21 = getelementptr inbounds [2 x double], ptr %4, i64 2
  %22 = getelementptr inbounds [2 x float], ptr %0, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !51
  %24 = fpext float %23 to double
  store double %24, ptr %21, align 16, !tbaa !52
  %25 = getelementptr inbounds [2 x float], ptr %0, i64 2, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !51
  %27 = fpext float %26 to double
  %28 = getelementptr inbounds [2 x double], ptr %4, i64 2, i64 1
  store double %27, ptr %28, align 8, !tbaa !52
  %29 = getelementptr inbounds [2 x double], ptr %4, i64 3
  %30 = getelementptr inbounds [2 x float], ptr %0, i64 3
  %31 = load float, ptr %30, align 4, !tbaa !51
  %32 = fpext float %31 to double
  store double %32, ptr %29, align 16, !tbaa !52
  %33 = getelementptr inbounds [2 x float], ptr %0, i64 3, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !51
  %35 = fpext float %34 to double
  %36 = getelementptr inbounds [2 x double], ptr %4, i64 3, i64 1
  store double %35, ptr %36, align 8, !tbaa !52
  %37 = load float, ptr %1, align 4, !tbaa !51
  %38 = fpext float %37 to double
  store double %38, ptr %5, align 16, !tbaa !52
  %39 = getelementptr inbounds float, ptr %1, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !51
  %41 = fpext float %40 to double
  %42 = getelementptr inbounds double, ptr %5, i64 1
  store double %41, ptr %42, align 8, !tbaa !52
  %43 = getelementptr inbounds [2 x double], ptr %5, i64 1
  %44 = getelementptr inbounds [2 x float], ptr %1, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !51
  %46 = fpext float %45 to double
  store double %46, ptr %43, align 16, !tbaa !52
  %47 = getelementptr inbounds [2 x float], ptr %1, i64 1, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !51
  %49 = fpext float %48 to double
  %50 = getelementptr inbounds [2 x double], ptr %5, i64 1, i64 1
  store double %49, ptr %50, align 8, !tbaa !52
  %51 = getelementptr inbounds [2 x double], ptr %5, i64 2
  %52 = getelementptr inbounds [2 x float], ptr %1, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !51
  %54 = fpext float %53 to double
  store double %54, ptr %51, align 16, !tbaa !52
  %55 = getelementptr inbounds [2 x float], ptr %1, i64 2, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !51
  %57 = fpext float %56 to double
  %58 = getelementptr inbounds [2 x double], ptr %5, i64 2, i64 1
  store double %57, ptr %58, align 8, !tbaa !52
  %59 = getelementptr inbounds [2 x double], ptr %5, i64 3
  %60 = getelementptr inbounds [2 x float], ptr %1, i64 3
  %61 = load float, ptr %60, align 4, !tbaa !51
  %62 = fpext float %61 to double
  store double %62, ptr %59, align 16, !tbaa !52
  %63 = getelementptr inbounds [2 x float], ptr %1, i64 3, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !51
  %65 = fpext float %64 to double
  %66 = getelementptr inbounds [2 x double], ptr %5, i64 3, i64 1
  store double %65, ptr %66, align 8, !tbaa !52
  call void @libmv_homography2DFromCorrespondencesEuc(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 4, ptr noundef nonnull %6) #5
  call void @copy_m3_m3d(ptr noundef %2, ptr noundef nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #5
  ret void
}

declare void @libmv_homography2DFromCorrespondencesEuc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_m3_m3d(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_plane_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_plane_marker_get_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @mul_v3_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare void @interp_v2_v2v2(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_plane_marker_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_marker_get_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!34 = !{!35, !39, i64 108}
!35 = !{!"MovieTrackingPlaneTrack", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !39, i64 88, !39, i64 92, !36, i64 96, !39, i64 104, !39, i64 108, !36, i64 112, !40, i64 120, !39, i64 124}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"float", !37, i64 0}
!41 = !{!42, !39, i64 36}
!42 = !{!"MovieTrackingPlaneMarker", !37, i64 0, !39, i64 32, !39, i64 36}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = !{i64 0, i64 32, !46, i64 32, i64 4, !47, i64 36, i64 4, !47}
!46 = !{!37, !37, i64 0}
!47 = !{!39, !39, i64 0}
!48 = !{!36, !36, i64 0}
!49 = !{!35, !39, i64 88}
!50 = !{!35, !36, i64 80}
!51 = !{!40, !40, i64 0}
!52 = !{!53, !53, i64 0}
!53 = !{!"double", !37, i64 0}
!54 = distinct !{!54, !55, !44}
!55 = !{!"llvm.loop.mustprogress"}
!56 = distinct !{!56, !55, !44}
!57 = !{!42, !39, i64 32}
!58 = distinct !{!58, !55, !44}
!59 = distinct !{!59, !44}
!60 = !{!35, !36, i64 96}
!61 = !{!35, !39, i64 104}
!62 = distinct !{!62, !55, !44}
