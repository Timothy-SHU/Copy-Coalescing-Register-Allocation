; ModuleID = 'blender/source/blender/blenkernel/intern/tracking_stabilize.c'
source_filename = "blender/source/blender/blenkernel/intern/tracking_stabilize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.ListBase = type { ptr, ptr }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }

@__const.stabilization_calculate_autoscale_factor.rotDx = private unnamed_addr constant [4 x [2 x float]] [[2 x float] [float 1.000000e+00, float 0.000000e+00], [2 x float] [float 0.000000e+00, float -1.000000e+00], [2 x float] [float -1.000000e+00, float 0.000000e+00], [2 x float] [float 0.000000e+00, float 1.000000e+00]], align 16
@__const.stabilization_calculate_autoscale_factor.rotDy = private unnamed_addr constant [4 x [2 x float]] [[2 x float] [float 0.000000e+00, float 1.000000e+00], [2 x float] [float 1.000000e+00, float 0.000000e+00], [2 x float] [float 0.000000e+00, float -1.000000e+00], [2 x float] [float -1.000000e+00, float 0.000000e+00]], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_stabilization_data_get(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6) local_unnamed_addr #0 {
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  %10 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  tail call fastcc void @zero_v2(ptr noundef %4) #12
  store float 1.000000e+00, ptr %5, align 4, !tbaa !41
  store float 0.000000e+00, ptr %6, align 4, !tbaa !41
  br label %37

15:                                               ; preds = %7
  %16 = call fastcc zeroext i8 @stabilization_median_point_get(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %8) #12, !range !42
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %15
  %19 = call fastcc zeroext i8 @stabilization_median_point_get(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %9) #12, !range !42
  %20 = load i32, ptr %10, align 8, !tbaa !34
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5, i32 10
  store float 1.000000e+00, ptr %24, align 4, !tbaa !43
  %25 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !44
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %35

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5, i32 9
  %30 = load i32, ptr %29, align 8, !tbaa !44
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  tail call fastcc void @stabilization_calculate_autoscale_factor(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3) #12
  br label %33

33:                                               ; preds = %23, %32
  %34 = phi ptr [ %29, %32 ], [ %25, %23 ]
  call fastcc void @stabilization_calculate_data(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %4, ptr noundef %5, ptr noundef %6) #12
  store i32 1, ptr %34, align 8, !tbaa !44
  br label %37

35:                                               ; preds = %28, %23
  call fastcc void @stabilization_calculate_data(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %4, ptr noundef %5, ptr noundef %6) #12
  br label %37

36:                                               ; preds = %15
  tail call fastcc void @zero_v2(ptr noundef %4) #12
  store float 1.000000e+00, ptr %5, align 4, !tbaa !41
  store float 0.000000e+00, ptr %6, align 4, !tbaa !41
  br label %37

37:                                               ; preds = %36, %35, %33, %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #2 !PGOFuncName !45 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !41
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @stabilization_median_point_get(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !PGOFuncName !46 {
  %4 = alloca [2 x float], align 8
  %5 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %4, align 8, !tbaa !41
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %5, align 8, !tbaa !41
  %6 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %3, %18
  %10 = phi ptr [ %20, %18 ], [ %7, %3 ]
  %11 = phi i8 [ %19, %18 ], [ 0, %3 ]
  %12 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %10, i64 0, i32 13
  %13 = load i32, ptr %12, align 8, !tbaa !48
  %14 = and i32 %13, 256
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %10, i32 noundef %1) #13
  call void @minmax_v2v2_v2(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %17) #13
  br label %18

18:                                               ; preds = %16, %9
  %19 = phi i8 [ 1, %16 ], [ %11, %9 ]
  %20 = load ptr, ptr %10, align 8, !tbaa !47
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %9, !llvm.loop !51

22:                                               ; preds = %18
  %23 = load <2 x float>, ptr %5, align 8, !tbaa !41
  %24 = load <2 x float>, ptr %4, align 8, !tbaa !41
  %25 = fadd <2 x float> %23, %24
  %26 = fmul <2 x float> %25, <float 5.000000e-01, float 5.000000e-01>
  br label %27

27:                                               ; preds = %22, %3
  %28 = phi i8 [ 0, %3 ], [ %19, %22 ]
  %29 = phi <2 x float> [ zeroinitializer, %3 ], [ %26, %22 ]
  store <2 x float> %29, ptr %2, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret i8 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @stabilization_calculate_autoscale_factor(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !53 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x [2 x float]], align 16
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 8
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %16 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5
  %17 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 4
  %18 = load float, ptr %17, align 8, !tbaa !54
  %19 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !44
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %179

22:                                               ; preds = %3
  %23 = call fastcc zeroext i8 @stabilization_median_point_get(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %4) #12, !range !42
  %24 = icmp eq i8 %23, 0
  %25 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5, i32 10
  store float 1.000000e+00, ptr %25, align 4, !tbaa !43
  br i1 %24, label %178, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !47
  %29 = icmp eq ptr %28, null
  br i1 %29, label %171, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5, i32 4
  br label %46

32:                                               ; preds = %74
  %33 = icmp sgt i32 %76, %75
  br i1 %33, label %171, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds [2 x float], ptr %10, i64 1
  %36 = getelementptr inbounds [2 x float], ptr %10, i64 1, i64 1
  %37 = insertelement <2 x i32> poison, i32 %2, i64 0
  %38 = insertelement <2 x i32> %37, i32 %1, i64 1
  %39 = sitofp <2 x i32> %38 to <2 x float>
  %40 = shufflevector <2 x float> %39, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %41 = getelementptr inbounds [2 x float], ptr %10, i64 3, i64 1
  %42 = getelementptr inbounds float, ptr %13, i64 2
  %43 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %44 = extractelement <2 x float> %39, i64 0
  %45 = extractelement <2 x float> %39, i64 1
  br label %79

46:                                               ; preds = %30, %74
  %47 = phi ptr [ %28, %30 ], [ %77, %74 ]
  %48 = phi i32 [ 2147483647, %30 ], [ %76, %74 ]
  %49 = phi i32 [ -2147483648, %30 ], [ %75, %74 ]
  %50 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %47, i64 0, i32 13
  %51 = load i32, ptr %50, align 8, !tbaa !48
  %52 = and i32 %51, 256
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load i32, ptr %16, align 8, !tbaa !34
  %56 = and i32 %55, 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %74, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %31, align 8, !tbaa !61
  %60 = icmp eq ptr %47, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %58, %46
  %62 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %47, i64 0, i32 10
  %63 = load ptr, ptr %62, align 8, !tbaa !62
  %64 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %63, i64 0, i32 4
  %65 = load i32, ptr %64, align 4, !tbaa !63
  %66 = tail call fastcc i32 @min_ii(i32 noundef %48, i32 noundef %65) #12
  %67 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %47, i64 0, i32 8
  %68 = load i32, ptr %67, align 8, !tbaa !65
  %69 = sext i32 %68 to i64
  %70 = getelementptr %struct.MovieTrackingMarker, ptr %63, i64 %69
  %71 = getelementptr %struct.MovieTrackingMarker, ptr %70, i64 -1, i32 4
  %72 = load i32, ptr %71, align 4, !tbaa !63
  %73 = tail call fastcc i32 @max_ii(i32 noundef %49, i32 noundef %72) #12
  br label %74

74:                                               ; preds = %61, %58, %54
  %75 = phi i32 [ %73, %61 ], [ %49, %58 ], [ %49, %54 ]
  %76 = phi i32 [ %66, %61 ], [ %48, %58 ], [ %48, %54 ]
  %77 = load ptr, ptr %47, align 8, !tbaa !47
  %78 = icmp eq ptr %77, null
  br i1 %78, label %32, label %46, !llvm.loop !66

79:                                               ; preds = %34, %168
  %80 = phi i32 [ %76, %34 ], [ %169, %168 ]
  %81 = phi float [ 1.000000e+00, %34 ], [ %163, %168 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #11
  store <2 x float> zeroinitializer, ptr %10, align 16, !tbaa !41
  store float 0.000000e+00, ptr %35, align 8, !tbaa !41
  store <4 x float> %40, ptr %36, align 4, !tbaa !41
  store float 0.000000e+00, ptr %41, align 4, !tbaa !41
  %82 = call fastcc zeroext i8 @stabilization_median_point_get(ptr noundef %0, i32 noundef %80, ptr noundef nonnull %5) #12, !range !42
  call fastcc void @stabilization_calculate_data(ptr noundef %0, i32 noundef %80, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %7) #12
  %83 = load float, ptr %7, align 4, !tbaa !41
  call void @BKE_tracking_stabilization_data_to_mat4(i32 noundef %1, i32 noundef %2, float noundef %18, ptr noundef nonnull %6, float noundef 1.000000e+00, float noundef %83, ptr noundef nonnull %9) #12
  %84 = call float @sinf(float noundef %83) #13
  %85 = call float @cosf(float noundef %83) #13
  %86 = load float, ptr %6, align 4
  %87 = load float, ptr %43, align 4
  br label %88

88:                                               ; preds = %79, %166
  %89 = phi i64 [ 0, %79 ], [ %92, %166 ]
  %90 = phi float [ %81, %79 ], [ %163, %166 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %12, i8 0, i64 12, i1 false)
  %91 = getelementptr inbounds [4 x [2 x float]], ptr %10, i64 0, i64 %89
  call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %91) #12
  %92 = add nuw nsw i64 %89, 1
  %93 = and i64 %92, 3
  %94 = getelementptr inbounds [4 x [2 x float]], ptr %10, i64 0, i64 %93
  call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %94) #12
  call void @mul_m4_v3(ptr noundef nonnull %9, ptr noundef nonnull %11) #13
  call void @mul_m4_v3(ptr noundef nonnull %9, ptr noundef nonnull %12) #13
  %95 = trunc i64 %89 to i32
  %96 = and i32 %95, 1
  br label %97

97:                                               ; preds = %88, %162
  %98 = phi i64 [ 0, %88 ], [ %164, %162 ]
  %99 = phi float [ %90, %88 ], [ %163, %162 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #11
  %100 = getelementptr inbounds [4 x [2 x float]], ptr %10, i64 0, i64 %98
  %101 = load <2 x float>, ptr %100, align 8, !tbaa !41
  store <2 x float> %101, ptr %13, align 8, !tbaa !41
  store float 0.000000e+00, ptr %42, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #11
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %12, ptr noundef nonnull %11) #12
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %13, ptr noundef nonnull %11) #12
  %102 = call fastcc float @cross_v2v2(ptr noundef nonnull %14, ptr noundef nonnull %15) #12
  %103 = fcmp ult float %102, 0.000000e+00
  br i1 %103, label %162, label %104

104:                                              ; preds = %97
  %105 = getelementptr inbounds [4 x [2 x float]], ptr @__const.stabilization_calculate_autoscale_factor.rotDx, i64 0, i64 %98
  %106 = load float, ptr %105, align 8, !tbaa !41
  %107 = getelementptr inbounds [4 x [2 x float]], ptr @__const.stabilization_calculate_autoscale_factor.rotDx, i64 0, i64 %98, i64 1
  %108 = load float, ptr %107, align 4, !tbaa !41
  %109 = fmul float %87, %108
  %110 = call float @llvm.fmuladd.f32(float %86, float %106, float %109)
  %111 = getelementptr inbounds [4 x [2 x float]], ptr @__const.stabilization_calculate_autoscale_factor.rotDy, i64 0, i64 %98
  %112 = load float, ptr %111, align 8, !tbaa !41
  %113 = getelementptr inbounds [4 x [2 x float]], ptr @__const.stabilization_calculate_autoscale_factor.rotDy, i64 0, i64 %98, i64 1
  %114 = load float, ptr %113, align 4, !tbaa !41
  %115 = fmul float %87, %114
  %116 = call float @llvm.fmuladd.f32(float %86, float %112, float %115)
  %117 = trunc i64 %98 to i32
  %118 = and i32 %117, 1
  %119 = icmp eq i32 %118, 0
  %120 = select i1 %119, float %45, float %44
  %121 = select i1 %119, float %44, float %45
  %122 = fmul float %121, 5.000000e-01
  %123 = fmul float %120, 5.000000e-01
  %124 = fneg float %123
  %125 = fmul float %84, %122
  %126 = call float @llvm.fmuladd.f32(float %124, float %85, float %125)
  %127 = fneg float %122
  %128 = fmul float %84, %123
  %129 = fneg float %128
  %130 = call float @llvm.fmuladd.f32(float %127, float %85, float %129)
  %131 = icmp eq i32 %96, %118
  br i1 %131, label %132, label %136

132:                                              ; preds = %104
  %133 = fneg float %125
  %134 = call float @llvm.fmuladd.f32(float %124, float %85, float %133)
  %135 = call float @llvm.fmuladd.f32(float %122, float %85, float %129)
  br label %139

136:                                              ; preds = %104
  %137 = call float @llvm.fmuladd.f32(float %123, float %85, float %125)
  %138 = call float @llvm.fmuladd.f32(float %127, float %85, float %128)
  br label %139

139:                                              ; preds = %136, %132
  %140 = phi float [ %134, %132 ], [ %137, %136 ]
  %141 = phi float [ %135, %132 ], [ %138, %136 ]
  %142 = fsub float %130, %141
  %143 = fsub float %140, %126
  %144 = fneg float %126
  %145 = fmul float %143, %127
  %146 = call float @llvm.fmuladd.f32(float %124, float %142, float %145)
  %147 = insertelement <2 x float> poison, float %116, i64 0
  %148 = insertelement <2 x float> %147, float %141, i64 1
  %149 = insertelement <2 x float> poison, float %143, i64 0
  %150 = insertelement <2 x float> %149, float %144, i64 1
  %151 = fmul <2 x float> %148, %150
  %152 = insertelement <2 x float> poison, float %110, i64 0
  %153 = insertelement <2 x float> %152, float %140, i64 1
  %154 = insertelement <2 x float> poison, float %142, i64 0
  %155 = insertelement <2 x float> %154, float %130, i64 1
  %156 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %153, <2 x float> %155, <2 x float> %151)
  %157 = shufflevector <2 x float> %156, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %158 = fadd <2 x float> %156, %157
  %159 = extractelement <2 x float> %158, i64 0
  %160 = fdiv float %146, %159
  %161 = call fastcc float @max_ff(float noundef %99, float noundef %160) #12
  br label %162

162:                                              ; preds = %139, %97
  %163 = phi float [ %161, %139 ], [ %99, %97 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #11
  %164 = add nuw nsw i64 %98, 1
  %165 = icmp eq i64 %164, 4
  br i1 %165, label %166, label %97, !llvm.loop !67

166:                                              ; preds = %162
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #11
  %167 = icmp eq i64 %92, 4
  br i1 %167, label %168, label %88, !llvm.loop !68

168:                                              ; preds = %166
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  %169 = add i32 %80, 1
  %170 = icmp eq i32 %80, %75
  br i1 %170, label %171, label %79, !llvm.loop !69

171:                                              ; preds = %168, %26, %32
  %172 = phi float [ 1.000000e+00, %32 ], [ 1.000000e+00, %26 ], [ %163, %168 ]
  store float %172, ptr %25, align 4, !tbaa !43
  %173 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5, i32 3
  %174 = load float, ptr %173, align 4, !tbaa !70
  %175 = fcmp ogt float %174, 0.000000e+00
  br i1 %175, label %176, label %178

176:                                              ; preds = %171
  %177 = call fastcc float @min_ff(float noundef %172, float noundef %174) #12
  store float %177, ptr %25, align 4, !tbaa !43
  br label %178

178:                                              ; preds = %22, %171, %176
  store i32 1, ptr %19, align 8, !tbaa !44
  br label %179

179:                                              ; preds = %3, %178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @stabilization_calculate_data(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef %6, ptr nocapture noundef %7, ptr nocapture noundef %8) unnamed_addr #0 !PGOFuncName !71 {
  %10 = alloca [2 x float], align 4
  %11 = alloca [2 x float], align 4
  %12 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5
  %13 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5, i32 10
  %14 = load float, ptr %13, align 4, !tbaa !43
  %15 = fadd float %14, -1.000000e+00
  %16 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5, i32 6
  %17 = load float, ptr %16, align 4, !tbaa !72
  %18 = tail call float @llvm.fmuladd.f32(float %15, float %17, float 1.000000e+00)
  store float %18, ptr %7, align 4, !tbaa !41
  store float 0.000000e+00, ptr %8, align 4, !tbaa !41
  %19 = load float, ptr %4, align 4, !tbaa !41
  %20 = load float, ptr %5, align 4, !tbaa !41
  %21 = fsub float %19, %20
  %22 = sitofp i32 %2 to float
  %23 = fmul float %21, %22
  %24 = load float, ptr %7, align 4, !tbaa !41
  %25 = fmul float %24, %23
  store float %25, ptr %6, align 4, !tbaa !41
  %26 = getelementptr inbounds float, ptr %4, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !41
  %28 = getelementptr inbounds float, ptr %5, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !41
  %30 = fsub float %27, %29
  %31 = sitofp i32 %3 to float
  %32 = fmul float %30, %31
  %33 = load float, ptr %7, align 4, !tbaa !41
  %34 = fmul float %33, %32
  %35 = getelementptr inbounds float, ptr %6, i64 1
  store float %34, ptr %35, align 4, !tbaa !41
  %36 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5, i32 5
  %37 = load float, ptr %36, align 8, !tbaa !73
  tail call fastcc void @mul_v2_fl(ptr noundef nonnull %6, float noundef %37) #12
  %38 = load i32, ptr %12, align 8, !tbaa !34
  %39 = and i32 %38, 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %102, label %41

41:                                               ; preds = %9
  %42 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !61
  %44 = icmp eq ptr %43, null
  br i1 %44, label %102, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5, i32 7
  %47 = load float, ptr %46, align 8, !tbaa !74
  %48 = fcmp une float %47, 0.000000e+00
  br i1 %48, label %49, label %102

49:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  %50 = fmul float %22, 5.000000e-01
  %51 = fmul float %31, 5.000000e-01
  %52 = load float, ptr %5, align 4, !tbaa !41
  %53 = fmul float %52, %22
  %54 = load float, ptr %28, align 4, !tbaa !41
  %55 = fmul float %54, %31
  %56 = tail call ptr @BKE_tracking_marker_get(ptr noundef nonnull %43, i32 noundef 1) #13
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %10, ptr noundef %56, ptr noundef nonnull %4) #12
  %57 = load float, ptr %10, align 4, !tbaa !41
  %58 = fmul float %57, %22
  %59 = getelementptr inbounds [2 x float], ptr %10, i64 0, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !41
  %61 = fmul float %60, %31
  %62 = load ptr, ptr %42, align 8, !tbaa !61
  %63 = tail call ptr @BKE_tracking_marker_get(ptr noundef %62, i32 noundef %1) #13
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %11, ptr noundef %63, ptr noundef nonnull %5) #12
  %64 = load float, ptr %11, align 4, !tbaa !41
  %65 = fmul float %64, %22
  %66 = getelementptr inbounds [2 x float], ptr %11, i64 0, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !41
  %68 = fmul float %67, %31
  %69 = fneg float %61
  %70 = fmul float %65, %69
  %71 = tail call float @llvm.fmuladd.f32(float %58, float %68, float %70)
  %72 = fmul float %61, %68
  %73 = tail call float @llvm.fmuladd.f32(float %58, float %65, float %72)
  %74 = tail call float @atan2f(float noundef %71, float noundef %73) #13
  %75 = fneg float %74
  store float %75, ptr %8, align 4, !tbaa !41
  %76 = load float, ptr %46, align 8, !tbaa !74
  %77 = fmul float %76, %75
  store float %77, ptr %8, align 4, !tbaa !41
  %78 = fsub float %53, %50
  %79 = tail call float @cosf(float noundef %77) #13
  %80 = tail call float @llvm.fmuladd.f32(float %78, float %79, float %50)
  %81 = fsub float %55, %51
  %82 = load float, ptr %8, align 4, !tbaa !41
  %83 = tail call float @sinf(float noundef %82) #13
  %84 = fneg float %81
  %85 = tail call float @llvm.fmuladd.f32(float %84, float %83, float %80)
  %86 = fsub float %85, %53
  %87 = load float, ptr %7, align 4, !tbaa !41
  %88 = load float, ptr %6, align 4, !tbaa !41
  %89 = fneg float %86
  %90 = tail call float @llvm.fmuladd.f32(float %89, float %87, float %88)
  store float %90, ptr %6, align 4, !tbaa !41
  %91 = load float, ptr %8, align 4, !tbaa !41
  %92 = tail call float @sinf(float noundef %91) #13
  %93 = tail call float @llvm.fmuladd.f32(float %78, float %92, float %51)
  %94 = load float, ptr %8, align 4, !tbaa !41
  %95 = tail call float @cosf(float noundef %94) #13
  %96 = tail call float @llvm.fmuladd.f32(float %81, float %95, float %93)
  %97 = fsub float %96, %55
  %98 = load float, ptr %7, align 4, !tbaa !41
  %99 = load float, ptr %35, align 4, !tbaa !41
  %100 = fneg float %97
  %101 = tail call float @llvm.fmuladd.f32(float %100, float %98, float %99)
  store float %101, ptr %35, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  br label %102

102:                                              ; preds = %49, %45, %41, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_tracking_stabilize_frame(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca [2 x float], align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  %12 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5
  %13 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !75
  %15 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !79
  %17 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 4
  %18 = load float, ptr %17, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #11
  %19 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5, i32 8
  %20 = load i32, ptr %19, align 4, !tbaa !80
  %21 = icmp eq ptr %3, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %6
  call fastcc void @copy_v2_v2(ptr noundef nonnull %7, ptr noundef nonnull %3) #12
  br label %23

23:                                               ; preds = %22, %6
  %24 = icmp eq ptr %4, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = load float, ptr %4, align 4, !tbaa !41
  store float %26, ptr %8, align 4, !tbaa !41
  br label %27

27:                                               ; preds = %25, %23
  %28 = load i32, ptr %12, align 8, !tbaa !34
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  br i1 %21, label %33, label %32

32:                                               ; preds = %31
  tail call fastcc void @zero_v2(ptr noundef nonnull %3) #12
  br label %33

33:                                               ; preds = %32, %31
  br i1 %24, label %35, label %34

34:                                               ; preds = %33
  store float 1.000000e+00, ptr %4, align 4, !tbaa !41
  br label %35

35:                                               ; preds = %34, %33
  %36 = icmp eq ptr %5, null
  br i1 %36, label %106, label %103

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !81
  %40 = icmp ne ptr %39, null
  %41 = zext i1 %40 to i32
  %42 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 9
  %43 = load ptr, ptr %42, align 8, !tbaa !82
  %44 = icmp eq ptr %43, null
  %45 = or disjoint i32 %41, 32
  %46 = select i1 %44, i32 %41, i32 %45
  %47 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 4
  %48 = load i8, ptr %47, align 8, !tbaa !83
  %49 = tail call ptr @IMB_allocImBuf(i32 noundef %14, i32 noundef %16, i8 noundef zeroext %48, i32 noundef %46) #13
  call void @BKE_tracking_stabilization_data_get(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %14, i32 noundef %16, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #12
  %50 = load i32, ptr %13, align 8, !tbaa !75
  %51 = load i32, ptr %15, align 4, !tbaa !79
  %52 = load float, ptr %8, align 4, !tbaa !41
  %53 = load float, ptr %9, align 4, !tbaa !41
  call void @BKE_tracking_stabilization_data_to_mat4(i32 noundef %50, i32 noundef %51, float noundef %18, ptr noundef nonnull %7, float noundef %52, float noundef %53, ptr noundef nonnull %10) #12
  %54 = call zeroext i8 @invert_m4(ptr noundef nonnull %10) #13
  %55 = icmp eq i32 %20, 1
  %56 = select i1 %55, ptr @bilinear_interpolation, ptr @nearest_interpolation
  %57 = icmp eq i32 %20, 2
  %58 = select i1 %57, ptr @bicubic_interpolation, ptr %56
  %59 = getelementptr inbounds %struct.ImBuf, ptr %49, i64 0, i32 3
  %60 = load i32, ptr %59, align 4, !tbaa !79
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %89

62:                                               ; preds = %37
  %63 = getelementptr inbounds %struct.ImBuf, ptr %49, i64 0, i32 2
  %64 = getelementptr inbounds float, ptr %11, i64 1
  %65 = getelementptr inbounds float, ptr %11, i64 2
  %66 = load i32, ptr %63, align 8, !tbaa !75
  br label %67

67:                                               ; preds = %62, %84
  %68 = phi i32 [ %60, %62 ], [ %85, %84 ]
  %69 = phi i32 [ %66, %62 ], [ %86, %84 ]
  %70 = phi i32 [ 0, %62 ], [ %87, %84 ]
  %71 = icmp sgt i32 %69, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %67
  %73 = sitofp i32 %70 to float
  br label %74

74:                                               ; preds = %72, %74
  %75 = phi i32 [ 0, %72 ], [ %79, %74 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #11
  %76 = sitofp i32 %75 to float
  store float %76, ptr %11, align 4, !tbaa !41
  store float %73, ptr %64, align 4, !tbaa !41
  store float 0.000000e+00, ptr %65, align 4, !tbaa !41
  call void @mul_v3_m4v3(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %11) #13
  %77 = load float, ptr %11, align 4, !tbaa !41
  %78 = load float, ptr %64, align 4, !tbaa !41
  call void %58(ptr noundef %2, ptr noundef nonnull %49, float noundef %77, float noundef %78, i32 noundef %75, i32 noundef %70) #13, !callees !84
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #11
  %79 = add nuw nsw i32 %75, 1
  %80 = load i32, ptr %63, align 8, !tbaa !75
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %74, label %82, !llvm.loop !85

82:                                               ; preds = %74
  %83 = load i32, ptr %59, align 4, !tbaa !79
  br label %84

84:                                               ; preds = %82, %67
  %85 = phi i32 [ %83, %82 ], [ %68, %67 ]
  %86 = phi i32 [ %80, %82 ], [ %69, %67 ]
  %87 = add nuw nsw i32 %70, 1
  %88 = icmp slt i32 %87, %85
  br i1 %88, label %67, label %89, !llvm.loop !86

89:                                               ; preds = %84, %37
  %90 = getelementptr inbounds %struct.ImBuf, ptr %49, i64 0, i32 9
  %91 = load ptr, ptr %90, align 8, !tbaa !82
  %92 = icmp eq ptr %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.ImBuf, ptr %49, i64 0, i32 23
  %95 = load i32, ptr %94, align 4, !tbaa !87
  %96 = or i32 %95, 8
  store i32 %96, ptr %94, align 4, !tbaa !87
  br label %97

97:                                               ; preds = %93, %89
  br i1 %21, label %99, label %98

98:                                               ; preds = %97
  call fastcc void @copy_v2_v2(ptr noundef nonnull %3, ptr noundef nonnull %7) #12
  br label %99

99:                                               ; preds = %98, %97
  br i1 %24, label %101, label %100

100:                                              ; preds = %99
  store float %52, ptr %4, align 4, !tbaa !41
  br label %101

101:                                              ; preds = %100, %99
  %102 = icmp eq ptr %5, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %101, %35
  %104 = phi float [ 0.000000e+00, %35 ], [ %53, %101 ]
  %105 = phi ptr [ %2, %35 ], [ %49, %101 ]
  store float %104, ptr %5, align 4, !tbaa !41
  br label %106

106:                                              ; preds = %103, %101, %35
  %107 = phi ptr [ %2, %35 ], [ %49, %101 ], [ %105, %103 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  ret ptr %107
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !88 {
  %3 = load float, ptr %1, align 4, !tbaa !41
  store float %3, ptr %0, align 4, !tbaa !41
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !41
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !41
  ret void
}

; Function Attrs: optsize
declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_stabilization_data_to_mat4(i32 noundef %0, i32 noundef %1, float noundef %2, ptr nocapture noundef readonly %3, float noundef %4, float noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca [4 x [4 x float]], align 16
  %14 = alloca [4 x [4 x float]], align 16
  %15 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #11
  store float %4, ptr %15, align 4, !tbaa !41
  %16 = getelementptr inbounds float, ptr %15, i64 1
  store float %4, ptr %16, align 4, !tbaa !41
  %17 = getelementptr inbounds float, ptr %15, i64 2
  store float %4, ptr %17, align 4, !tbaa !41
  call void @unit_m4(ptr noundef nonnull %8) #13
  call void @unit_m4(ptr noundef nonnull %9) #13
  call void @unit_m4(ptr noundef nonnull %10) #13
  call void @unit_m4(ptr noundef nonnull %11) #13
  call void @unit_m4(ptr noundef nonnull %13) #13
  %18 = fdiv float 1.000000e+00, %2
  store float %18, ptr %13, align 16, !tbaa !41
  %19 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %14, ptr noundef nonnull %13) #13
  %20 = insertelement <2 x i32> poison, i32 %0, i64 0
  %21 = insertelement <2 x i32> %20, i32 %1, i64 1
  %22 = sitofp <2 x i32> %21 to <2 x float>
  %23 = getelementptr inbounds [4 x [4 x float]], ptr %11, i64 0, i64 3
  %24 = fmul <2 x float> %22, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %24, ptr %23, align 16, !tbaa !41
  %25 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %12, ptr noundef nonnull %11) #13
  call void @size_to_mat4(ptr noundef nonnull %10, ptr noundef nonnull %15) #13
  %26 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 3
  call fastcc void @add_v2_v2(ptr noundef nonnull %26, ptr noundef %3) #12
  call void @rotate_m4(ptr noundef nonnull %9, i8 noundef zeroext 90, float noundef %5) #13
  call void @_va_mul_m4_series_8(ptr noundef %6, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull %13, ptr noundef nonnull %9, ptr noundef nonnull %14, ptr noundef nonnull %10, ptr noundef nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #11
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @invert_m4(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @nearest_interpolation(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @bilinear_interpolation(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @bicubic_interpolation(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @size_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !89 {
  %3 = load float, ptr %1, align 4, !tbaa !41
  %4 = load float, ptr %0, align 4, !tbaa !41
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !41
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !41
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !41
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !41
  ret void
}

; Function Attrs: optsize
declare void @rotate_m4(ptr noundef, i8 noundef zeroext, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_va_mul_m4_series_8(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BKE_tracking_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @minmax_v2v2_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #5 !PGOFuncName !90 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #5 !PGOFuncName !91 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !92 {
  %3 = load float, ptr %1, align 4, !tbaa !41
  store float %3, ptr %0, align 4, !tbaa !41
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !41
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !41
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !41
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !41
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !93 {
  %4 = load float, ptr %1, align 4, !tbaa !41
  %5 = load float, ptr %2, align 4, !tbaa !41
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !41
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !41
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !41
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !41
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !41
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !41
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @cross_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !94 {
  %3 = load float, ptr %0, align 4, !tbaa !41
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !41
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !41
  %8 = load float, ptr %1, align 4, !tbaa !41
  %9 = fneg float %7
  %10 = fmul float %8, %9
  %11 = tail call float @llvm.fmuladd.f32(float %3, float %5, float %10)
  ret float %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #5 !PGOFuncName !95 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #5 !PGOFuncName !96 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #3 !PGOFuncName !97 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !41
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !98 {
  %4 = load float, ptr %1, align 4, !tbaa !41
  %5 = load float, ptr %2, align 4, !tbaa !41
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !41
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !41
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !41
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"MovieTrackingStabilization", !36, i64 0, !36, i64 4, !36, i64 8, !39, i64 12, !40, i64 16, !39, i64 24, !39, i64 28, !39, i64 32, !36, i64 36, !36, i64 40, !39, i64 44}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"float", !37, i64 0}
!40 = !{!"any pointer", !37, i64 0}
!41 = !{!39, !39, i64 0}
!42 = !{i8 0, i8 2}
!43 = !{!35, !39, i64 44}
!44 = !{!35, !36, i64 40}
!45 = !{!"tracking_stabilize.c:zero_v2"}
!46 = !{!"tracking_stabilize.c:stabilization_median_point_get"}
!47 = !{!40, !40, i64 0}
!48 = !{!49, !36, i64 152}
!49 = !{!"MovieTrackingTrack", !40, i64 0, !40, i64 8, !37, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !36, i64 120, !36, i64 124, !40, i64 128, !37, i64 136, !39, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !37, i64 164, !50, i64 176, !50, i64 178, !50, i64 180, !50, i64 182, !36, i64 184, !39, i64 188, !40, i64 192, !39, i64 200, !39, i64 204}
!50 = !{!"short", !37, i64 0}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"tracking_stabilize.c:stabilization_calculate_autoscale_factor"}
!54 = !{!55, !39, i64 88}
!55 = !{!"MovieTracking", !56, i64 0, !57, i64 72, !58, i64 128, !58, i64 144, !59, i64 160, !35, i64 184, !40, i64 232, !40, i64 240, !58, i64 248, !36, i64 264, !36, i64 268, !40, i64 272, !60, i64 280}
!56 = !{!"MovieTrackingSettings", !36, i64 0, !50, i64 4, !50, i64 6, !39, i64 8, !50, i64 12, !50, i64 14, !50, i64 16, !50, i64 18, !50, i64 20, !50, i64 22, !39, i64 24, !50, i64 28, !50, i64 30, !36, i64 32, !36, i64 36, !36, i64 40, !50, i64 44, !50, i64 46, !39, i64 48, !36, i64 52, !36, i64 56, !39, i64 60, !39, i64 64, !36, i64 68}
!57 = !{!"MovieTrackingCamera", !40, i64 0, !50, i64 8, !50, i64 10, !39, i64 12, !39, i64 16, !39, i64 20, !50, i64 24, !50, i64 26, !37, i64 28, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52}
!58 = !{!"ListBase", !40, i64 0, !40, i64 8}
!59 = !{!"MovieTrackingReconstruction", !36, i64 0, !39, i64 4, !36, i64 8, !36, i64 12, !40, i64 16}
!60 = !{!"MovieTrackingDopesheet", !36, i64 0, !50, i64 4, !50, i64 6, !58, i64 8, !58, i64 24, !36, i64 40, !36, i64 44}
!61 = !{!35, !40, i64 16}
!62 = !{!49, !40, i64 128}
!63 = !{!64, !36, i64 56}
!64 = !{!"MovieTrackingMarker", !37, i64 0, !37, i64 8, !37, i64 40, !37, i64 48, !36, i64 56, !36, i64 60}
!65 = !{!49, !36, i64 120}
!66 = distinct !{!66, !52}
!67 = distinct !{!67, !52}
!68 = distinct !{!68, !52}
!69 = distinct !{!69, !52}
!70 = !{!35, !39, i64 12}
!71 = !{!"tracking_stabilize.c:stabilization_calculate_data"}
!72 = !{!35, !39, i64 28}
!73 = !{!35, !39, i64 24}
!74 = !{!35, !39, i64 32}
!75 = !{!76, !36, i64 16}
!76 = !{!"ImBuf", !40, i64 0, !40, i64 8, !36, i64 16, !36, i64 20, !37, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !40, i64 40, !40, i64 48, !37, i64 56, !36, i64 72, !36, i64 76, !36, i64 80, !36, i64 84, !40, i64 88, !40, i64 96, !40, i64 104, !39, i64 112, !37, i64 120, !36, i64 280, !36, i64 284, !36, i64 288, !36, i64 292, !40, i64 296, !40, i64 304, !36, i64 312, !37, i64 316, !37, i64 1340, !40, i64 2368, !36, i64 2376, !40, i64 2384, !36, i64 2392, !36, i64 2396, !40, i64 2400, !40, i64 2408, !40, i64 2416, !40, i64 2424, !36, i64 2432, !77, i64 2436, !78, i64 2456}
!77 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!78 = !{!"DDSData", !36, i64 0, !36, i64 4, !40, i64 8, !36, i64 16}
!79 = !{!76, !36, i64 20}
!80 = !{!55, !36, i64 220}
!81 = !{!76, !40, i64 40}
!82 = !{!76, !40, i64 48}
!83 = !{!76, !37, i64 24}
!84 = !{ptr @bicubic_interpolation, ptr @bilinear_interpolation, ptr @nearest_interpolation}
!85 = distinct !{!85, !52}
!86 = distinct !{!86, !52}
!87 = !{!76, !36, i64 292}
!88 = !{!"tracking_stabilize.c:copy_v2_v2"}
!89 = !{!"tracking_stabilize.c:add_v2_v2"}
!90 = !{!"tracking_stabilize.c:min_ii"}
!91 = !{!"tracking_stabilize.c:max_ii"}
!92 = !{!"tracking_stabilize.c:copy_v3_v3"}
!93 = !{!"tracking_stabilize.c:sub_v3_v3v3"}
!94 = !{!"tracking_stabilize.c:cross_v2v2"}
!95 = !{!"tracking_stabilize.c:max_ff"}
!96 = !{!"tracking_stabilize.c:min_ff"}
!97 = !{!"tracking_stabilize.c:mul_v2_fl"}
!98 = !{!"tracking_stabilize.c:sub_v2_v2v2"}
