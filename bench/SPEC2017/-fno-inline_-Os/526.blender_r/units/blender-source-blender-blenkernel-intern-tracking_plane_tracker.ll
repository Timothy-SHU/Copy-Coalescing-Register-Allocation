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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_track_plane_from_existing_motion(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @track_plane_from_existing_motion(ptr noundef %0, i32 noundef %1, i32 noundef 1, i8 noundef zeroext 0) #6
  tail call fastcc void @track_plane_from_existing_motion(ptr noundef %0, i32 noundef %1, i32 noundef -1, i8 noundef zeroext 0) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @track_plane_from_existing_motion(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !PGOFuncName !34 {
  %5 = alloca %struct.MovieTrackingPlaneMarker, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca [3 x [3 x double]], align 16
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 8
  %12 = tail call ptr @BKE_tracking_plane_marker_get(ptr noundef %0, i32 noundef %1) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #8
  %13 = icmp slt i32 %2, 1
  %14 = select i1 %13, i32 -1, i32 1
  %15 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 8
  %16 = load i32, ptr %15, align 4, !tbaa !35
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %4, %24
  %20 = phi i32 [ %21, %24 ], [ %1, %4 ]
  %21 = add nsw i32 %20, %14
  %22 = tail call ptr @BKE_tracking_plane_marker_get_exact(ptr noundef %0, i32 noundef %21) #7
  %23 = icmp eq ptr %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %22, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !42
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %19

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %12, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !42
  %32 = or i32 %31, 2
  store i32 %32, ptr %30, align 4, !tbaa !42
  br label %33

33:                                               ; preds = %24, %19, %29
  %34 = phi ptr [ null, %29 ], [ %22, %24 ], [ null, %19 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %5, ptr noundef nonnull align 4 dereferenceable(40) %12, i64 40, i1 false), !tbaa.struct !44
  %35 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %5, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !42
  %37 = or i32 %36, 2
  store i32 %37, ptr %35, align 4, !tbaa !42
  %38 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %39 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %5, i64 0, i32 1
  %40 = icmp eq i8 %3, 0
  %41 = icmp ne ptr %34, null
  %42 = and i1 %40, %41
  %43 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %12, i64 0, i32 1
  %44 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %34, i64 0, i32 1
  br label %45

45:                                               ; preds = %108, %33
  %46 = phi i32 [ %1, %33 ], [ %47, %108 ]
  %47 = add nsw i32 %46, %14
  %48 = call ptr @BKE_tracking_plane_marker_get_exact(ptr noundef %0, i32 noundef %47) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #8
  %49 = icmp ne ptr %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %48, i64 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !42
  %53 = and i32 %52, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, ptr %15, align 4, !tbaa !35
  %57 = and i32 %56, 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %112

59:                                               ; preds = %55, %50, %45
  %60 = call fastcc i32 @point_markers_correspondences_on_both_image(ptr noundef %0, i32 noundef %46, i32 noundef %47, ptr noundef nonnull %6, ptr noundef nonnull %7) #6
  %61 = icmp slt i32 %60, 4
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %64 = load ptr, ptr %6, align 8, !tbaa !47
  call void %63(ptr noundef %64) #7
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %66 = load ptr, ptr %7, align 8, !tbaa !47
  call void %65(ptr noundef %66) #7
  br label %112

67:                                               ; preds = %59
  %68 = load ptr, ptr %6, align 8, !tbaa !47
  %69 = load ptr, ptr %7, align 8, !tbaa !47
  call void @libmv_homography2DFromCorrespondencesEuc(ptr noundef %68, ptr noundef %69, i32 noundef %60, ptr noundef nonnull %8) #7
  call void @copy_m3_m3d(ptr noundef nonnull %9, ptr noundef nonnull %8) #7
  br label %70

70:                                               ; preds = %67, %70
  %71 = phi i64 [ 0, %67 ], [ %78, %70 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) @__const.track_plane_from_existing_motion.vec, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #8
  %72 = getelementptr inbounds [4 x [2 x float]], ptr %5, i64 0, i64 %71
  call fastcc void @copy_v2_v2(ptr noundef nonnull %10, ptr noundef nonnull %72) #6
  call void @mul_v3_m3v3(ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef nonnull %10) #7
  %73 = load float, ptr %38, align 8, !tbaa !48
  %74 = load <2 x float>, ptr %11, align 8, !tbaa !48
  %75 = insertelement <2 x float> poison, float %73, i64 0
  %76 = shufflevector <2 x float> %75, <2 x float> poison, <2 x i32> zeroinitializer
  %77 = fdiv <2 x float> %74, %76
  store <2 x float> %77, ptr %11, align 8, !tbaa !48
  call fastcc void @copy_v2_v2(ptr noundef nonnull %72, ptr noundef nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #8
  %78 = add nuw nsw i64 %71, 1
  %79 = icmp eq i64 %78, 4
  br i1 %79, label %80, label %70, !llvm.loop !49

80:                                               ; preds = %70
  store i32 %47, ptr %39, align 4, !tbaa !51
  %81 = and i1 %42, %49
  br i1 %81, label %82, label %108

82:                                               ; preds = %80
  %83 = load i32, ptr %15, align 4, !tbaa !35
  %84 = and i32 %83, 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %108, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %48, i64 0, i32 1
  %88 = load i32, ptr %87, align 4, !tbaa !51
  %89 = sitofp i32 %88 to float
  %90 = load i32, ptr %43, align 4, !tbaa !51
  %91 = sitofp i32 %90 to float
  %92 = fsub float %89, %91
  %93 = load i32, ptr %44, align 4, !tbaa !51
  %94 = sitofp i32 %93 to float
  %95 = fsub float %94, %91
  %96 = fdiv float %92, %95
  %97 = fmul float %96, 3.000000e+00
  %98 = fmul float %96, -2.000000e+00
  %99 = fmul float %96, %98
  %100 = fmul float %96, %99
  %101 = call float @llvm.fmuladd.f32(float %97, float %96, float %100)
  br label %102

102:                                              ; preds = %86, %102
  %103 = phi i64 [ 0, %86 ], [ %106, %102 ]
  %104 = getelementptr inbounds [4 x [2 x float]], ptr %5, i64 0, i64 %103
  %105 = getelementptr inbounds [4 x [2 x float]], ptr %48, i64 0, i64 %103
  call void @interp_v2_v2v2(ptr noundef nonnull %104, ptr noundef nonnull %104, ptr noundef nonnull %105, float noundef %101) #7
  %106 = add nuw nsw i64 %103, 1
  %107 = icmp eq i64 %106, 4
  br i1 %107, label %108, label %102, !llvm.loop !52

108:                                              ; preds = %102, %80, %82
  %109 = call ptr @BKE_tracking_plane_marker_insert(ptr noundef %0, ptr noundef nonnull %5) #7
  %110 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %110(ptr noundef %68) #7
  %111 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %111(ptr noundef %69) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  br label %45

112:                                              ; preds = %55, %62
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_retrack_plane_from_existing_motion_at_segment(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @find_plane_keyframe(ptr noundef %0, i32 noundef %1, i32 noundef -1) #6
  %4 = tail call fastcc ptr @find_plane_keyframe(ptr noundef %0, i32 noundef %1, i32 noundef 1) #6
  %5 = icmp ne ptr %3, null
  %6 = icmp ne ptr %4, null
  %7 = select i1 %5, i1 %6, i1 false
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %3, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !51
  tail call fastcc void @track_plane_from_existing_motion(ptr noundef %0, i32 noundef %10, i32 noundef 1, i8 noundef zeroext 1) #6
  %11 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %4, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !51
  tail call fastcc void @track_plane_from_existing_motion(ptr noundef %0, i32 noundef %12, i32 noundef -1, i8 noundef zeroext 0) #6
  br label %21

13:                                               ; preds = %2
  br i1 %5, label %14, label %17

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %3, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !51
  tail call fastcc void @track_plane_from_existing_motion(ptr noundef %0, i32 noundef %16, i32 noundef 1, i8 noundef zeroext 1) #6
  br label %21

17:                                               ; preds = %13
  br i1 %6, label %18, label %21

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %4, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !51
  tail call fastcc void @track_plane_from_existing_motion(ptr noundef %0, i32 noundef %20, i32 noundef -1, i8 noundef zeroext 1) #6
  br label %21

21:                                               ; preds = %14, %18, %17, %8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_plane_keyframe(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !53 {
  %4 = tail call ptr @BKE_tracking_plane_marker_get(ptr noundef %0, i32 noundef %1) #7
  %5 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 40
  %11 = trunc i64 %10 to i32
  %12 = icmp slt i32 %2, 1
  %13 = select i1 %12, i64 -1, i64 1
  %14 = icmp sgt i32 %11, -1
  br i1 %14, label %15, label %31

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !55
  %18 = icmp sgt i32 %17, %11
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %4, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !42
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19, %24
  %25 = phi ptr [ %26, %24 ], [ %4, %19 ]
  %26 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %25, i64 %13
  %27 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %25, i64 %13, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !42
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %24

31:                                               ; preds = %24, %19, %15, %3
  %32 = phi ptr [ null, %3 ], [ null, %15 ], [ %4, %19 ], [ %26, %24 ]
  ret ptr %32
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_homography_between_two_quads(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x [2 x double]], align 16
  %5 = alloca [4 x [2 x double]], align 16
  %6 = alloca [3 x [3 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #8
  call fastcc void @float_corners_to_double(ptr noundef %0, ptr noundef nonnull %4) #6
  call fastcc void @float_corners_to_double(ptr noundef %1, ptr noundef nonnull %5) #6
  call void @libmv_homography2DFromCorrespondencesEuc(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 4, ptr noundef nonnull %6) #7
  call void @copy_m3_m3d(ptr noundef %2, ptr noundef nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @float_corners_to_double(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #2 !PGOFuncName !56 {
  tail call fastcc void @copy_v2db_v2fl(ptr noundef %1, ptr noundef %0) #6
  %3 = getelementptr inbounds [2 x double], ptr %1, i64 1
  %4 = getelementptr inbounds [2 x float], ptr %0, i64 1
  tail call fastcc void @copy_v2db_v2fl(ptr noundef nonnull %3, ptr noundef nonnull %4) #6
  %5 = getelementptr inbounds [2 x double], ptr %1, i64 2
  %6 = getelementptr inbounds [2 x float], ptr %0, i64 2
  tail call fastcc void @copy_v2db_v2fl(ptr noundef nonnull %5, ptr noundef nonnull %6) #6
  %7 = getelementptr inbounds [2 x double], ptr %1, i64 3
  %8 = getelementptr inbounds [2 x float], ptr %0, i64 3
  tail call fastcc void @copy_v2db_v2fl(ptr noundef nonnull %7, ptr noundef nonnull %8) #6
  ret void
}

; Function Attrs: optsize
declare void @libmv_homography2DFromCorrespondencesEuc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @copy_m3_m3d(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_tracking_plane_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_tracking_plane_marker_get_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @point_markers_correspondences_on_both_image(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !PGOFuncName !57 {
  %6 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !58
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 4
  %11 = tail call ptr %6(i64 noundef %10, ptr noundef nonnull @.str) #7
  store ptr %11, ptr %3, align 8, !tbaa !47
  %12 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %13 = load i32, ptr %7, align 8, !tbaa !58
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 4
  %16 = tail call ptr %12(i64 noundef %15, ptr noundef nonnull @.str.1) #7
  store ptr %16, ptr %4, align 8, !tbaa !47
  %17 = load i32, ptr %7, align 8, !tbaa !58
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 3
  br label %21

21:                                               ; preds = %19, %41
  %22 = phi i64 [ 0, %19 ], [ %43, %41 ]
  %23 = phi i32 [ 0, %19 ], [ %42, %41 ]
  %24 = load ptr, ptr %20, align 8, !tbaa !59
  %25 = getelementptr inbounds ptr, ptr %24, i64 %22
  %26 = load ptr, ptr %25, align 8, !tbaa !47
  %27 = tail call ptr @BKE_tracking_marker_get_exact(ptr noundef %26, i32 noundef %1) #7
  %28 = tail call ptr @BKE_tracking_marker_get_exact(ptr noundef %26, i32 noundef %2) #7
  %29 = icmp ne ptr %27, null
  %30 = icmp ne ptr %28, null
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %32, label %41

32:                                               ; preds = %21
  %33 = sext i32 %23 to i64
  %34 = getelementptr inbounds [2 x double], ptr %11, i64 %33
  %35 = load <2 x float>, ptr %27, align 4, !tbaa !48
  %36 = fpext <2 x float> %35 to <2 x double>
  store <2 x double> %36, ptr %34, align 8, !tbaa !60
  %37 = getelementptr inbounds [2 x double], ptr %16, i64 %33
  %38 = load <2 x float>, ptr %28, align 4, !tbaa !48
  %39 = fpext <2 x float> %38 to <2 x double>
  store <2 x double> %39, ptr %37, align 8, !tbaa !60
  %40 = add nsw i32 %23, 1
  br label %41

41:                                               ; preds = %32, %21
  %42 = phi i32 [ %40, %32 ], [ %23, %21 ]
  %43 = add nuw nsw i64 %22, 1
  %44 = load i32, ptr %7, align 8, !tbaa !58
  %45 = sext i32 %44 to i64
  %46 = icmp slt i64 %43, %45
  br i1 %46, label %21, label %47, !llvm.loop !62

47:                                               ; preds = %41, %5
  %48 = phi i32 [ 0, %5 ], [ %42, %41 ]
  ret i32 %48
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !63 {
  %3 = load float, ptr %1, align 4, !tbaa !48
  store float %3, ptr %0, align 4, !tbaa !48
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !48
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !48
  ret void
}

; Function Attrs: optsize
declare void @mul_v3_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: optsize
declare void @interp_v2_v2v2(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_tracking_plane_marker_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_tracking_marker_get_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2db_v2fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !64 {
  %3 = load <2 x float>, ptr %1, align 4, !tbaa !48
  %4 = fpext <2 x float> %3 to <2 x double>
  store <2 x double> %4, ptr %0, align 8, !tbaa !60
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind }

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
!34 = !{!"tracking_plane_tracker.c:track_plane_from_existing_motion"}
!35 = !{!36, !40, i64 108}
!36 = !{!"MovieTrackingPlaneTrack", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !40, i64 88, !40, i64 92, !37, i64 96, !40, i64 104, !40, i64 108, !37, i64 112, !41, i64 120, !40, i64 124}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"float", !38, i64 0}
!42 = !{!43, !40, i64 36}
!43 = !{!"MovieTrackingPlaneMarker", !38, i64 0, !40, i64 32, !40, i64 36}
!44 = !{i64 0, i64 32, !45, i64 32, i64 4, !46, i64 36, i64 4, !46}
!45 = !{!38, !38, i64 0}
!46 = !{!40, !40, i64 0}
!47 = !{!37, !37, i64 0}
!48 = !{!41, !41, i64 0}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!43, !40, i64 32}
!52 = distinct !{!52, !50}
!53 = !{!"tracking_plane_tracker.c:find_plane_keyframe"}
!54 = !{!36, !37, i64 96}
!55 = !{!36, !40, i64 104}
!56 = !{!"tracking_plane_tracker.c:float_corners_to_double"}
!57 = !{!"tracking_plane_tracker.c:point_markers_correspondences_on_both_image"}
!58 = !{!36, !40, i64 88}
!59 = !{!36, !37, i64 80}
!60 = !{!61, !61, i64 0}
!61 = !{!"double", !38, i64 0}
!62 = distinct !{!62, !50}
!63 = !{!"tracking_plane_tracker.c:copy_v2_v2"}
!64 = !{!"tracking_plane_tracker.c:copy_v2db_v2fl"}
