; ModuleID = 'blender/source/blender/blenkernel/intern/mask_evaluate.c'
source_filename = "blender/source/blender/blenkernel/intern/mask_evaluate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MaskSpline = type { ptr, ptr, i16, i8, i8, i32, ptr, %struct.MaskParent, ptr }
%struct.MaskParent = type { i32, i32, ptr, [64 x i8], [64 x i8], [2 x float], [4 x [2 x float]] }
%struct.MaskSplinePoint = type { %struct.BezTriple, i32, i32, ptr, %struct.MaskParent }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.MaskSplinePointUW = type { float, float, i32 }
%struct.FeatherEdgesBucket = type { i32, ptr, i32 }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [17 x i8] c"mask spline vets\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"feather buckets\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"mask spline feather points\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"mask point spline feather diff points\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"mask segment vets\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"feather bucket segments\00", align 1
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.feather_bucket_add_edge = private unnamed_addr constant [24 x i8] c"feather_bucket_add_edge\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"mask spline feather diff points\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_mask_spline_resolution(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ne i32 %1, 0
  %5 = icmp ne i32 %2, 0
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = tail call i32 @llvm.smax.i32(i32 %2, i32 %1)
  %9 = sitofp i32 %8 to float
  %10 = fdiv float 1.000000e+00, %9
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi float [ %10, %7 ], [ 0x3F847AE140000000, %3 ]
  %13 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !34
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %92, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 6
  br label %23

18:                                               ; preds = %88
  %19 = add nuw nsw i64 %24, 1
  %20 = load i32, ptr %13, align 4, !tbaa !34
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %23, label %92, !llvm.loop !42

23:                                               ; preds = %16, %18
  %24 = phi i64 [ 0, %16 ], [ %19, %18 ]
  %25 = phi i32 [ 1, %16 ], [ %89, %18 ]
  %26 = load ptr, ptr %17, align 8, !tbaa !45
  %27 = getelementptr inbounds %struct.MaskSplinePoint, ptr %26, i64 %24
  %28 = tail call ptr @BKE_mask_spline_point_next_bezt(ptr noundef %0, ptr noundef %26, ptr noundef %27) #8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %88, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds [3 x [3 x float]], ptr %27, i64 0, i64 1
  %32 = getelementptr inbounds [3 x [3 x float]], ptr %27, i64 0, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !46
  %34 = load float, ptr %31, align 4, !tbaa !46
  %35 = fsub float %33, %34
  %36 = getelementptr inbounds [3 x [3 x float]], ptr %27, i64 0, i64 2, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !46
  %38 = getelementptr inbounds [3 x [3 x float]], ptr %27, i64 0, i64 1, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !46
  %40 = fsub float %37, %39
  %41 = getelementptr inbounds [3 x [3 x float]], ptr %27, i64 0, i64 2, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !46
  %43 = getelementptr inbounds [3 x [3 x float]], ptr %27, i64 0, i64 1, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !46
  %45 = fsub float %42, %44
  %46 = fmul float %40, %40
  %47 = tail call float @llvm.fmuladd.f32(float %35, float %35, float %46)
  %48 = tail call float @llvm.fmuladd.f32(float %45, float %45, float %47)
  %49 = tail call float @sqrtf(float noundef %48) #8
  %50 = load float, ptr %28, align 4, !tbaa !46
  %51 = load float, ptr %32, align 4, !tbaa !46
  %52 = fsub float %50, %51
  %53 = getelementptr inbounds float, ptr %28, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !46
  %55 = load float, ptr %36, align 4, !tbaa !46
  %56 = fsub float %54, %55
  %57 = getelementptr inbounds float, ptr %28, i64 2
  %58 = load float, ptr %57, align 4, !tbaa !46
  %59 = load float, ptr %41, align 4, !tbaa !46
  %60 = fsub float %58, %59
  %61 = fmul float %56, %56
  %62 = tail call float @llvm.fmuladd.f32(float %52, float %52, float %61)
  %63 = tail call float @llvm.fmuladd.f32(float %60, float %60, float %62)
  %64 = tail call float @sqrtf(float noundef %63) #8
  %65 = getelementptr inbounds [3 x [3 x float]], ptr %28, i64 0, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !46
  %67 = load float, ptr %28, align 4, !tbaa !46
  %68 = fsub float %66, %67
  %69 = getelementptr inbounds [3 x [3 x float]], ptr %28, i64 0, i64 1, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !46
  %71 = load float, ptr %53, align 4, !tbaa !46
  %72 = fsub float %70, %71
  %73 = getelementptr inbounds [3 x [3 x float]], ptr %28, i64 0, i64 1, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !46
  %75 = load float, ptr %57, align 4, !tbaa !46
  %76 = fsub float %74, %75
  %77 = fmul float %72, %72
  %78 = tail call float @llvm.fmuladd.f32(float %68, float %68, float %77)
  %79 = tail call float @llvm.fmuladd.f32(float %76, float %76, float %78)
  %80 = tail call float @sqrtf(float noundef %79) #8
  %81 = fadd float %49, %64
  %82 = fadd float %81, %80
  %83 = fdiv float %82, %12
  %84 = fptoui float %83 to i32
  %85 = tail call i32 @llvm.umax.i32(i32 %25, i32 %84)
  %86 = icmp ugt i32 %85, 127
  %87 = select i1 %86, i32 2, i32 0
  br label %88

88:                                               ; preds = %30, %23
  %89 = phi i32 [ %25, %23 ], [ %85, %30 ]
  %90 = phi i32 [ 2, %23 ], [ %87, %30 ]
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %18, label %92

92:                                               ; preds = %18, %88, %11
  %93 = phi i32 [ 1, %11 ], [ %89, %88 ], [ %89, %18 ]
  %94 = icmp eq i32 %93, 0
  %95 = tail call i32 @llvm.umin.i32(i32 %93, i32 128)
  %96 = select i1 %94, i32 1, i32 %95
  ret i32 %96
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BKE_mask_spline_point_next_bezt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_mask_spline_feather_resolution(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @BKE_mask_spline_resolution(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  %5 = icmp ugt i32 %4, 127
  br i1 %5, label %61, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %52

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = zext nneg i32 %8 to i64
  br label %14

14:                                               ; preds = %10, %48
  %15 = phi i64 [ 0, %10 ], [ %50, %48 ]
  %16 = phi float [ 0.000000e+00, %10 ], [ %49, %48 ]
  %17 = getelementptr inbounds %struct.MaskSplinePoint, ptr %12, i64 %15, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !48
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.MaskSplinePoint, ptr %12, i64 %15, i32 0, i32 2
  %22 = getelementptr inbounds %struct.MaskSplinePoint, ptr %12, i64 %15, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !51
  %24 = zext nneg i32 %18 to i64
  br label %25

25:                                               ; preds = %20, %43
  %26 = phi i64 [ 0, %20 ], [ %46, %43 ]
  %27 = phi float [ %16, %20 ], [ %44, %43 ]
  %28 = phi ptr [ %21, %20 ], [ %45, %43 ]
  %29 = phi float [ 0.000000e+00, %20 ], [ %31, %43 ]
  %30 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %23, i64 %26
  %31 = load float, ptr %30, align 4, !tbaa !52
  %32 = fsub float %31, %29
  %33 = fcmp ogt float %32, 0x3E80000000000000
  br i1 %33, label %34, label %43

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %23, i64 %26, i32 1
  %36 = load float, ptr %35, align 4, !tbaa !54
  %37 = load float, ptr %28, align 4, !tbaa !46
  %38 = fsub float %36, %37
  %39 = fdiv float %38, %32
  %40 = tail call float @llvm.fabs.f32(float %39)
  %41 = fcmp ogt float %27, %40
  %42 = select i1 %41, float %27, float %40
  br label %43

43:                                               ; preds = %34, %25
  %44 = phi float [ %42, %34 ], [ %27, %25 ]
  %45 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %23, i64 %26, i32 1
  %46 = add nuw nsw i64 %26, 1
  %47 = icmp eq i64 %46, %24
  br i1 %47, label %48, label %25, !llvm.loop !55

48:                                               ; preds = %43, %14
  %49 = phi float [ %16, %14 ], [ %44, %43 ]
  %50 = add nuw nsw i64 %15, 1
  %51 = icmp eq i64 %50, %13
  br i1 %51, label %52, label %14, !llvm.loop !56

52:                                               ; preds = %48, %6
  %53 = phi float [ 0.000000e+00, %6 ], [ %49, %48 ]
  %54 = fdiv float %53, 0x3F747AE140000000
  %55 = uitofp i32 %4 to float
  %56 = fadd float %54, %55
  %57 = fptoui float %56 to i32
  %58 = icmp eq i32 %57, 0
  %59 = tail call i32 @llvm.umin.i32(i32 %57, i32 128)
  %60 = select i1 %58, i32 1, i32 %59
  br label %61

61:                                               ; preds = %3, %52
  %62 = phi i32 [ %60, %52 ], [ 128, %3 ]
  ret i32 %62
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @BKE_mask_spline_differentiate_calc_total(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !57
  %5 = and i16 %4, 2
  %6 = icmp eq i16 %5, 0
  %7 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = mul i32 %8, %1
  %10 = add nsw i32 %8, -1
  %11 = mul i32 %10, %1
  %12 = add i32 %11, 1
  %13 = select i1 %6, i32 %12, i32 %9
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_mask_spline_differentiate_with_resolution(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @BKE_mask_spline_point_array(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !58
  br label %77

10:                                               ; preds = %3
  %11 = load i16, ptr %5, align 8, !tbaa !57
  %12 = and i16 %11, 2
  %13 = icmp eq i16 %12, 0
  %14 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %15 = load i32, ptr %14, align 4, !tbaa !34
  %16 = add nsw i32 %15, -1
  %17 = mul i32 %16, %2
  %18 = add i32 %17, 1
  %19 = mul i32 %15, %2
  %20 = select i1 %13, i32 %18, i32 %19
  store i32 %20, ptr %1, align 4, !tbaa !58
  %21 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !59
  %22 = add nsw i32 %20, 1
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %23, 3
  %25 = tail call ptr %21(i64 noundef %24, ptr noundef nonnull @.str) #8
  %26 = load i32, ptr %6, align 4, !tbaa !34
  %27 = load i16, ptr %5, align 8, !tbaa !57
  %28 = lshr i16 %27, 1
  %29 = and i16 %28, 1
  %30 = add nsw i16 %29, -1
  %31 = sext i16 %30 to i32
  %32 = add nsw i32 %26, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %77, label %34

34:                                               ; preds = %10
  %35 = zext i32 %2 to i64
  br label %36

36:                                               ; preds = %34, %75
  %37 = phi i32 [ %32, %34 ], [ %41, %75 ]
  %38 = phi ptr [ %4, %34 ], [ %49, %75 ]
  %39 = phi ptr [ %25, %34 ], [ %64, %75 ]
  %40 = getelementptr inbounds %struct.MaskSplinePoint, ptr %38, i64 1
  %41 = add nsw i32 %37, -1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load i16, ptr %5, align 8, !tbaa !57
  %45 = and i16 %44, 2
  %46 = icmp eq i16 %45, 0
  %47 = select i1 %46, ptr %40, ptr %4
  br label %48

48:                                               ; preds = %43, %36
  %49 = phi ptr [ %40, %36 ], [ %47, %43 ]
  br label %50

50:                                               ; preds = %48, %50
  %51 = phi i64 [ 0, %48 ], [ %61, %50 ]
  %52 = getelementptr inbounds [3 x [3 x float]], ptr %38, i64 0, i64 1, i64 %51
  %53 = load float, ptr %52, align 4, !tbaa !46
  %54 = getelementptr inbounds [3 x [3 x float]], ptr %38, i64 0, i64 2, i64 %51
  %55 = load float, ptr %54, align 4, !tbaa !46
  %56 = getelementptr inbounds [3 x float], ptr %49, i64 0, i64 %51
  %57 = load float, ptr %56, align 4, !tbaa !46
  %58 = getelementptr inbounds [3 x [3 x float]], ptr %49, i64 0, i64 1, i64 %51
  %59 = load float, ptr %58, align 4, !tbaa !46
  %60 = getelementptr inbounds [2 x float], ptr %39, i64 0, i64 %51
  tail call void @BKE_curve_forward_diff_bezier(float noundef %53, float noundef %55, float noundef %57, float noundef %59, ptr noundef %60, i32 noundef %2, i32 noundef 8) #8
  %61 = add nuw nsw i64 %51, 1
  %62 = icmp eq i64 %51, 0
  br i1 %62, label %50, label %63, !llvm.loop !60

63:                                               ; preds = %50
  %64 = getelementptr inbounds [2 x float], ptr %39, i64 %35
  br i1 %42, label %65, label %75

65:                                               ; preds = %63
  %66 = load i16, ptr %5, align 8, !tbaa !57
  %67 = and i16 %66, 2
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = getelementptr inbounds [3 x [3 x float]], ptr %49, i64 0, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !46
  store float %71, ptr %64, align 4, !tbaa !46
  %72 = getelementptr inbounds [3 x [3 x float]], ptr %49, i64 0, i64 1, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !46
  %74 = getelementptr inbounds float, ptr %64, i64 1
  store float %73, ptr %74, align 4, !tbaa !46
  br label %75

75:                                               ; preds = %69, %65, %63
  %76 = icmp eq i32 %41, 0
  br i1 %76, label %77, label %36, !llvm.loop !61

77:                                               ; preds = %75, %10, %9
  %78 = phi ptr [ null, %9 ], [ %25, %10 ], [ %25, %75 ]
  ret ptr %78
}

declare ptr @BKE_mask_spline_point_array(ptr noundef) local_unnamed_addr #2

declare void @BKE_curve_forward_diff_bezier(float noundef, float noundef, float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_mask_spline_differentiate(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = tail call i32 @BKE_mask_spline_resolution(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  %6 = tail call ptr @BKE_mask_spline_differentiate_with_resolution(ptr noundef %0, ptr noundef %3, i32 noundef %5)
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_spline_feather_collapse_inner_loops(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  %6 = icmp ult i32 %2, 4
  br i1 %6, label %361, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  store float 0x46293E5940000000, ptr %8, align 4, !tbaa !46
  store float 0x46293E5940000000, ptr %4, align 4, !tbaa !46
  %9 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %9, align 4, !tbaa !46
  store float 0xC6293E5940000000, ptr %5, align 4, !tbaa !46
  %10 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 2
  %11 = zext i32 %2 to i64
  %12 = zext i32 %2 to i64
  br label %13

13:                                               ; preds = %44, %7
  %14 = phi i64 [ %19, %44 ], [ 0, %7 ]
  %15 = phi float [ %46, %44 ], [ -1.000000e+00, %7 ]
  %16 = phi float [ %47, %44 ], [ -1.000000e+00, %7 ]
  %17 = icmp eq i64 %14, %12
  br i1 %17, label %48, label %18

18:                                               ; preds = %13
  %19 = add nuw nsw i64 %14, 1
  %20 = getelementptr inbounds [2 x float], ptr %1, i64 %14
  call void @minmax_v2v2_v2(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %20) #8
  %21 = icmp eq i64 %19, %11
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i16, ptr %10, align 8, !tbaa !57
  %24 = and i16 %23, 2
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %22, %18
  %27 = phi i64 [ %19, %18 ], [ 0, %22 ]
  %28 = load float, ptr %20, align 4, !tbaa !46
  %29 = and i64 %27, 4294967295
  %30 = getelementptr inbounds [2 x float], ptr %1, i64 %29
  %31 = load float, ptr %30, align 4, !tbaa !46
  %32 = fsub float %28, %31
  %33 = call float @llvm.fabs.f32(float %32)
  %34 = fcmp ogt float %33, %16
  %35 = select i1 %34, float %33, float %16
  %36 = getelementptr inbounds [2 x float], ptr %1, i64 %14, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !46
  %38 = getelementptr inbounds [2 x float], ptr %1, i64 %29, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !46
  %40 = fsub float %37, %39
  %41 = call float @llvm.fabs.f32(float %40)
  %42 = fcmp ogt float %41, %15
  %43 = select i1 %42, float %41, float %15
  br label %44

44:                                               ; preds = %22, %26
  %45 = phi i1 [ true, %26 ], [ false, %22 ]
  %46 = phi float [ %43, %26 ], [ %15, %22 ]
  %47 = phi float [ %35, %26 ], [ %16, %22 ]
  br i1 %45, label %13, label %48, !llvm.loop !62

48:                                               ; preds = %44, %13
  %49 = phi float [ %46, %44 ], [ %15, %13 ]
  %50 = phi float [ %47, %44 ], [ %16, %13 ]
  %51 = load float, ptr %5, align 4, !tbaa !46
  %52 = load float, ptr %4, align 4, !tbaa !46
  %53 = fsub float %51, %52
  %54 = fcmp olt float %53, 0x3E80000000000000
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = fadd float %51, 0x3F847AE140000000
  store float %56, ptr %5, align 4, !tbaa !46
  %57 = fadd float %52, 0xBF847AE140000000
  store float %57, ptr %4, align 4, !tbaa !46
  br label %58

58:                                               ; preds = %55, %48
  %59 = load float, ptr %9, align 4, !tbaa !46
  %60 = load float, ptr %8, align 4, !tbaa !46
  %61 = fsub float %59, %60
  %62 = fcmp olt float %61, 0x3E80000000000000
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = fadd float %59, 0x3F847AE140000000
  store float %64, ptr %9, align 4, !tbaa !46
  %65 = fadd float %60, 0xBF847AE140000000
  store float %65, ptr %8, align 4, !tbaa !46
  br label %66

66:                                               ; preds = %63, %58
  %67 = load float, ptr %5, align 4, !tbaa !46
  %68 = load float, ptr %4, align 4, !tbaa !46
  %69 = fsub float %67, %68
  %70 = fdiv float %50, %69
  %71 = load float, ptr %9, align 4, !tbaa !46
  %72 = load float, ptr %8, align 4, !tbaa !46
  %73 = fsub float %71, %72
  %74 = fdiv float %49, %73
  %75 = fcmp ogt float %70, %74
  %76 = select i1 %75, float %70, float %74
  %77 = fdiv float 0x3FECCCCCC0000000, %76
  %78 = fptosi float %77 to i32
  %79 = call i32 @llvm.smin.i32(i32 %78, i32 512)
  %80 = call i32 @llvm.umax.i32(i32 %79, i32 1)
  %81 = mul nsw i32 %80, %80
  %82 = sitofp i32 %80 to float
  %83 = fdiv float 1.000000e+00, %82
  %84 = fmul float %69, %83
  %85 = fdiv float 1.000000e+00, %84
  %86 = fmul float %73, %83
  %87 = fdiv float 1.000000e+00, %86
  %88 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %89 = zext nneg i32 %81 to i64
  %90 = mul nuw nsw i64 %89, 24
  %91 = call ptr %88(i64 noundef %90, ptr noundef nonnull @.str.1) #8
  %92 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 2
  %93 = call i32 @llvm.umax.i32(i32 %2, i32 1)
  br label %94

94:                                               ; preds = %66, %279
  %95 = phi i32 [ 0, %66 ], [ %96, %279 ]
  %96 = add nuw i32 %95, 1
  %97 = icmp eq i32 %96, %2
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i16, ptr %92, align 8, !tbaa !57
  %100 = and i16 %99, 2
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %281, label %102

102:                                              ; preds = %98, %94
  %103 = phi i32 [ %96, %94 ], [ 0, %98 ]
  %104 = sext i32 %95 to i64
  %105 = getelementptr inbounds [2 x float], ptr %1, i64 %104
  %106 = load float, ptr %105, align 4, !tbaa !46
  %107 = load float, ptr %4, align 4, !tbaa !46
  %108 = fsub float %106, %107
  %109 = fmul float %85, %108
  %110 = fptosi float %109 to i32
  %111 = getelementptr inbounds float, ptr %105, i64 1
  %112 = load float, ptr %111, align 4, !tbaa !46
  %113 = load float, ptr %8, align 4, !tbaa !46
  %114 = fsub float %112, %113
  %115 = fmul float %87, %114
  %116 = fptosi float %115 to i32
  %117 = icmp eq i32 %80, %110
  %118 = sext i1 %117 to i32
  %119 = add nsw i32 %118, %110
  %120 = icmp eq i32 %80, %116
  %121 = sext i1 %120 to i32
  %122 = add nsw i32 %121, %116
  %123 = mul nsw i32 %122, %80
  %124 = add nsw i32 %119, %123
  %125 = sext i32 %103 to i64
  %126 = getelementptr inbounds [2 x float], ptr %1, i64 %125
  %127 = load float, ptr %126, align 4, !tbaa !46
  %128 = fsub float %127, %107
  %129 = fmul float %85, %128
  %130 = fptosi float %129 to i32
  %131 = getelementptr inbounds float, ptr %126, i64 1
  %132 = load float, ptr %131, align 4, !tbaa !46
  %133 = fsub float %132, %113
  %134 = fmul float %87, %133
  %135 = fptosi float %134 to i32
  %136 = icmp eq i32 %80, %130
  %137 = sext i1 %136 to i32
  %138 = add nsw i32 %137, %130
  %139 = icmp eq i32 %80, %135
  %140 = sext i1 %139 to i32
  %141 = add nsw i32 %140, %135
  %142 = mul nsw i32 %141, %80
  %143 = add nsw i32 %138, %142
  %144 = sext i32 %124 to i64
  %145 = getelementptr inbounds %struct.FeatherEdgesBucket, ptr %91, i64 %144
  %146 = load i32, ptr %145, align 8, !tbaa !63
  %147 = getelementptr inbounds %struct.FeatherEdgesBucket, ptr %91, i64 %144, i32 2
  %148 = load i32, ptr %147, align 8, !tbaa !65
  %149 = icmp slt i32 %146, %148
  br i1 %149, label %167, label %150

150:                                              ; preds = %102
  %151 = getelementptr inbounds %struct.FeatherEdgesBucket, ptr %91, i64 %144, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !66
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %156 = call ptr %155(i64 noundef 2048, ptr noundef nonnull @.str.5) #8
  br label %163

157:                                              ; preds = %150
  %158 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !59
  %159 = add nsw i32 %146, 256
  %160 = sext i32 %159 to i64
  %161 = shl nsw i64 %160, 3
  %162 = call ptr %158(ptr noundef nonnull %152, i64 noundef %161, ptr noundef nonnull @__func__.feather_bucket_add_edge) #8
  br label %163

163:                                              ; preds = %157, %154
  %164 = phi ptr [ %156, %154 ], [ %162, %157 ]
  store ptr %164, ptr %151, align 8, !tbaa !66
  %165 = load i32, ptr %147, align 8, !tbaa !65
  %166 = add nsw i32 %165, 256
  store i32 %166, ptr %147, align 8, !tbaa !65
  br label %167

167:                                              ; preds = %102, %163
  %168 = getelementptr inbounds %struct.FeatherEdgesBucket, ptr %91, i64 %144, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !66
  %170 = load i32, ptr %145, align 8, !tbaa !63
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [2 x i32], ptr %169, i64 %171
  store i32 %95, ptr %172, align 4, !tbaa !58
  %173 = load i32, ptr %145, align 8, !tbaa !63
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [2 x i32], ptr %169, i64 %174, i64 1
  store i32 %103, ptr %175, align 4, !tbaa !58
  %176 = load i32, ptr %145, align 8, !tbaa !63
  %177 = add nsw i32 %176, 1
  store i32 %177, ptr %145, align 8, !tbaa !63
  %178 = icmp eq i32 %124, %143
  br i1 %178, label %279, label %179

179:                                              ; preds = %167
  %180 = sext i32 %143 to i64
  %181 = getelementptr inbounds %struct.FeatherEdgesBucket, ptr %91, i64 %180
  %182 = srem i32 %124, %80
  %183 = srem i32 %143, %80
  %184 = sub i32 %124, %182
  %185 = add nsw i32 %184, %183
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.FeatherEdgesBucket, ptr %91, i64 %186
  %188 = load i32, ptr %181, align 8, !tbaa !63
  %189 = getelementptr inbounds %struct.FeatherEdgesBucket, ptr %91, i64 %180, i32 2
  %190 = load i32, ptr %189, align 8, !tbaa !65
  %191 = icmp slt i32 %188, %190
  br i1 %191, label %209, label %192

192:                                              ; preds = %179
  %193 = getelementptr inbounds %struct.FeatherEdgesBucket, ptr %91, i64 %180, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !66
  %195 = icmp eq ptr %194, null
  br i1 %195, label %196, label %199

196:                                              ; preds = %192
  %197 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %198 = call ptr %197(i64 noundef 2048, ptr noundef nonnull @.str.5) #8
  br label %205

199:                                              ; preds = %192
  %200 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !59
  %201 = add nsw i32 %188, 256
  %202 = sext i32 %201 to i64
  %203 = shl nsw i64 %202, 3
  %204 = call ptr %200(ptr noundef nonnull %194, i64 noundef %203, ptr noundef nonnull @__func__.feather_bucket_add_edge) #8
  br label %205

205:                                              ; preds = %199, %196
  %206 = phi ptr [ %198, %196 ], [ %204, %199 ]
  store ptr %206, ptr %193, align 8, !tbaa !66
  %207 = load i32, ptr %189, align 8, !tbaa !65
  %208 = add nsw i32 %207, 256
  store i32 %208, ptr %189, align 8, !tbaa !65
  br label %209

209:                                              ; preds = %179, %205
  %210 = getelementptr inbounds %struct.FeatherEdgesBucket, ptr %91, i64 %180, i32 1
  %211 = load ptr, ptr %210, align 8, !tbaa !66
  %212 = load i32, ptr %181, align 8, !tbaa !63
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [2 x i32], ptr %211, i64 %213
  store i32 %95, ptr %214, align 4, !tbaa !58
  %215 = load i32, ptr %181, align 8, !tbaa !63
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [2 x i32], ptr %211, i64 %216, i64 1
  store i32 %103, ptr %217, align 4, !tbaa !58
  %218 = load i32, ptr %181, align 8, !tbaa !63
  %219 = add nsw i32 %218, 1
  store i32 %219, ptr %181, align 8, !tbaa !63
  %220 = load i32, ptr %187, align 8, !tbaa !63
  %221 = getelementptr inbounds %struct.FeatherEdgesBucket, ptr %91, i64 %186, i32 2
  %222 = load i32, ptr %221, align 8, !tbaa !65
  %223 = icmp slt i32 %220, %222
  br i1 %223, label %241, label %224

224:                                              ; preds = %209
  %225 = getelementptr inbounds %struct.FeatherEdgesBucket, ptr %91, i64 %186, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !66
  %227 = icmp eq ptr %226, null
  br i1 %227, label %228, label %231

228:                                              ; preds = %224
  %229 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %230 = call ptr %229(i64 noundef 2048, ptr noundef nonnull @.str.5) #8
  br label %237

231:                                              ; preds = %224
  %232 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !59
  %233 = add nsw i32 %220, 256
  %234 = sext i32 %233 to i64
  %235 = shl nsw i64 %234, 3
  %236 = call ptr %232(ptr noundef nonnull %226, i64 noundef %235, ptr noundef nonnull @__func__.feather_bucket_add_edge) #8
  br label %237

237:                                              ; preds = %231, %228
  %238 = phi ptr [ %230, %228 ], [ %236, %231 ]
  store ptr %238, ptr %225, align 8, !tbaa !66
  %239 = load i32, ptr %221, align 8, !tbaa !65
  %240 = add nsw i32 %239, 256
  store i32 %240, ptr %221, align 8, !tbaa !65
  br label %241

241:                                              ; preds = %209, %237
  %242 = getelementptr inbounds %struct.FeatherEdgesBucket, ptr %91, i64 %186, i32 1
  %243 = load ptr, ptr %242, align 8, !tbaa !66
  %244 = load i32, ptr %187, align 8, !tbaa !63
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [2 x i32], ptr %243, i64 %245
  store i32 %95, ptr %246, align 4, !tbaa !58
  %247 = load i32, ptr %187, align 8, !tbaa !63
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [2 x i32], ptr %243, i64 %248, i64 1
  store i32 %103, ptr %249, align 4, !tbaa !58
  %250 = load i32, ptr %187, align 8, !tbaa !63
  %251 = add nsw i32 %250, 1
  store i32 %251, ptr %187, align 8, !tbaa !63
  %252 = load i32, ptr %221, align 8, !tbaa !65
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %269, label %254

254:                                              ; preds = %241
  %255 = icmp eq ptr %243, null
  br i1 %255, label %256, label %259

256:                                              ; preds = %254
  %257 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %258 = call ptr %257(i64 noundef 2048, ptr noundef nonnull @.str.5) #8
  br label %265

259:                                              ; preds = %254
  %260 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !59
  %261 = add nsw i32 %250, 257
  %262 = sext i32 %261 to i64
  %263 = shl nsw i64 %262, 3
  %264 = call ptr %260(ptr noundef nonnull %243, i64 noundef %263, ptr noundef nonnull @__func__.feather_bucket_add_edge) #8
  br label %265

265:                                              ; preds = %259, %256
  %266 = phi ptr [ %258, %256 ], [ %264, %259 ]
  store ptr %266, ptr %242, align 8, !tbaa !66
  %267 = load i32, ptr %221, align 8, !tbaa !65
  %268 = add nsw i32 %267, 256
  store i32 %268, ptr %221, align 8, !tbaa !65
  br label %269

269:                                              ; preds = %241, %265
  %270 = load ptr, ptr %242, align 8, !tbaa !66
  %271 = load i32, ptr %187, align 8, !tbaa !63
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [2 x i32], ptr %270, i64 %272
  store i32 %95, ptr %273, align 4, !tbaa !58
  %274 = load i32, ptr %187, align 8, !tbaa !63
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [2 x i32], ptr %270, i64 %275, i64 1
  store i32 %103, ptr %276, align 4, !tbaa !58
  %277 = load i32, ptr %187, align 8, !tbaa !63
  %278 = add nsw i32 %277, 1
  store i32 %278, ptr %187, align 8, !tbaa !63
  br label %279

279:                                              ; preds = %167, %269
  %280 = icmp eq i32 %96, %93
  br i1 %280, label %281, label %94, !llvm.loop !67

281:                                              ; preds = %98, %279
  %282 = call i32 @llvm.umax.i32(i32 %2, i32 1)
  br label %283

283:                                              ; preds = %281, %344
  %284 = phi i32 [ 0, %281 ], [ %285, %344 ]
  %285 = add nuw i32 %284, 1
  %286 = icmp eq i32 %285, %2
  %287 = select i1 %286, i32 0, i32 %285
  %288 = sext i32 %284 to i64
  %289 = getelementptr inbounds [2 x float], ptr %1, i64 %288
  %290 = load float, ptr %289, align 4, !tbaa !46
  %291 = load float, ptr %4, align 4, !tbaa !46
  %292 = fsub float %290, %291
  %293 = fmul float %85, %292
  %294 = fptosi float %293 to i32
  %295 = getelementptr inbounds float, ptr %289, i64 1
  %296 = load float, ptr %295, align 4, !tbaa !46
  %297 = load float, ptr %8, align 4, !tbaa !46
  %298 = fsub float %296, %297
  %299 = fmul float %87, %298
  %300 = fptosi float %299 to i32
  %301 = icmp eq i32 %80, %294
  %302 = sext i1 %301 to i32
  %303 = add nsw i32 %302, %294
  %304 = icmp eq i32 %80, %300
  %305 = sext i1 %304 to i32
  %306 = add nsw i32 %305, %300
  %307 = mul nsw i32 %306, %80
  %308 = add nsw i32 %303, %307
  %309 = sext i32 %287 to i64
  %310 = getelementptr inbounds [2 x float], ptr %1, i64 %309
  %311 = load float, ptr %310, align 4, !tbaa !46
  %312 = fsub float %311, %291
  %313 = fmul float %85, %312
  %314 = fptosi float %313 to i32
  %315 = getelementptr inbounds float, ptr %310, i64 1
  %316 = load float, ptr %315, align 4, !tbaa !46
  %317 = fsub float %316, %297
  %318 = fmul float %87, %317
  %319 = fptosi float %318 to i32
  %320 = icmp eq i32 %80, %314
  %321 = sext i1 %320 to i32
  %322 = add nsw i32 %321, %314
  %323 = icmp eq i32 %80, %319
  %324 = sext i1 %323 to i32
  %325 = add nsw i32 %324, %319
  %326 = mul nsw i32 %325, %80
  %327 = add nsw i32 %322, %326
  %328 = sext i32 %308 to i64
  %329 = getelementptr inbounds %struct.FeatherEdgesBucket, ptr %91, i64 %328
  call fastcc void @feather_bucket_check_intersect(ptr noundef %1, i32 noundef %2, ptr noundef %329, i32 noundef %284, i32 noundef %287)
  %330 = icmp eq i32 %308, %327
  br i1 %330, label %344, label %331

331:                                              ; preds = %283
  %332 = sext i32 %327 to i64
  %333 = getelementptr inbounds %struct.FeatherEdgesBucket, ptr %91, i64 %332
  %334 = srem i32 %308, %80
  %335 = srem i32 %327, %80
  %336 = sub i32 %308, %334
  %337 = add nsw i32 %336, %335
  %338 = add i32 %334, %327
  %339 = sub i32 %338, %335
  %340 = sext i32 %337 to i64
  %341 = getelementptr inbounds %struct.FeatherEdgesBucket, ptr %91, i64 %340
  %342 = sext i32 %339 to i64
  %343 = getelementptr inbounds %struct.FeatherEdgesBucket, ptr %91, i64 %342
  call fastcc void @feather_bucket_check_intersect(ptr noundef %1, i32 noundef %2, ptr noundef %333, i32 noundef %284, i32 noundef %287)
  call fastcc void @feather_bucket_check_intersect(ptr noundef %1, i32 noundef %2, ptr noundef %341, i32 noundef %284, i32 noundef %287)
  call fastcc void @feather_bucket_check_intersect(ptr noundef %1, i32 noundef %2, ptr noundef %343, i32 noundef %284, i32 noundef %287)
  br label %344

344:                                              ; preds = %331, %283
  %345 = icmp eq i32 %285, %282
  br i1 %345, label %346, label %283, !llvm.loop !68

346:                                              ; preds = %344
  %347 = call i32 @llvm.umax.i32(i32 %81, i32 1)
  %348 = zext nneg i32 %347 to i64
  br label %349

349:                                              ; preds = %346, %356
  %350 = phi i64 [ 0, %346 ], [ %357, %356 ]
  %351 = getelementptr inbounds %struct.FeatherEdgesBucket, ptr %91, i64 %350, i32 1
  %352 = load ptr, ptr %351, align 8, !tbaa !66
  %353 = icmp eq ptr %352, null
  br i1 %353, label %356, label %354

354:                                              ; preds = %349
  %355 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %355(ptr noundef nonnull %352) #8
  br label %356

356:                                              ; preds = %349, %354
  %357 = add nuw nsw i64 %350, 1
  %358 = icmp eq i64 %357, %348
  br i1 %358, label %359, label %349, !llvm.loop !69

359:                                              ; preds = %356
  %360 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %360(ptr noundef %91) #8
  br label %361

361:                                              ; preds = %3, %359
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret void
}

declare void @minmax_v2v2_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @feather_bucket_check_intersect(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca [2 x float], align 4
  %11 = sext i32 %3 to i64
  %12 = getelementptr inbounds [2 x float], ptr %0, i64 %11
  %13 = sext i32 %4 to i64
  %14 = getelementptr inbounds [2 x float], ptr %0, i64 %13
  %15 = load i32, ptr %2, align 8, !tbaa !63
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %126

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.FeatherEdgesBucket, ptr %2, i64 0, i32 1
  %19 = add nsw i32 %3, -1
  %20 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %21 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  %22 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  %23 = getelementptr inbounds [2 x float], ptr %10, i64 0, i64 1
  %24 = icmp sgt i32 %1, 0
  %25 = getelementptr inbounds float, ptr %6, i64 1
  %26 = icmp eq i32 %4, 0
  %27 = icmp sge i32 %4, %1
  %28 = getelementptr inbounds float, ptr %6, i64 1
  %29 = getelementptr inbounds float, ptr %6, i64 1
  %30 = sext i32 %3 to i64
  %31 = sext i32 %4 to i64
  %32 = add i32 %3, 1
  %33 = zext nneg i32 %1 to i64
  %34 = or i1 %26, %27
  %35 = sext i32 %1 to i64
  br label %36

36:                                               ; preds = %17, %121
  %37 = phi i64 [ 0, %17 ], [ %122, %121 ]
  %38 = load ptr, ptr %18, align 8, !tbaa !66
  %39 = getelementptr inbounds [2 x i32], ptr %38, i64 %37
  %40 = load i32, ptr %39, align 4, !tbaa !58
  %41 = getelementptr inbounds [2 x i32], ptr %38, i64 %37, i64 1
  %42 = load i32, ptr %41, align 4, !tbaa !58
  %43 = sext i32 %40 to i64
  %44 = getelementptr inbounds [2 x float], ptr %0, i64 %43
  %45 = sext i32 %42 to i64
  %46 = getelementptr inbounds [2 x float], ptr %0, i64 %45
  %47 = icmp sge i32 %40, %19
  %48 = icmp eq i32 %40, %4
  %49 = or i1 %47, %48
  br i1 %49, label %121, label %50

50:                                               ; preds = %36
  %51 = call zeroext i8 @isect_seg_seg_v2(ptr noundef %12, ptr noundef %14, ptr noundef %44, ptr noundef %46) #8
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %121, label %53

53:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  %54 = call i32 @isect_seg_seg_v2_point(ptr noundef %12, ptr noundef %14, ptr noundef %44, ptr noundef %46, ptr noundef nonnull %6) #8
  store float 0x46293E5940000000, ptr %20, align 4, !tbaa !46
  store float 0x46293E5940000000, ptr %7, align 4, !tbaa !46
  store float 0xC6293E5940000000, ptr %21, align 4, !tbaa !46
  store float 0xC6293E5940000000, ptr %8, align 4, !tbaa !46
  store float 0x46293E5940000000, ptr %22, align 4, !tbaa !46
  store float 0x46293E5940000000, ptr %9, align 4, !tbaa !46
  store float 0xC6293E5940000000, ptr %23, align 4, !tbaa !46
  store float 0xC6293E5940000000, ptr %10, align 4, !tbaa !46
  br i1 %24, label %55, label %68

55:                                               ; preds = %53
  %56 = sext i32 %42 to i64
  br label %57

57:                                               ; preds = %55, %65
  %58 = phi i64 [ 0, %55 ], [ %66, %65 ]
  %59 = icmp slt i64 %58, %56
  %60 = icmp sgt i64 %58, %30
  %61 = or i1 %59, %60
  %62 = getelementptr inbounds [2 x float], ptr %0, i64 %58
  br i1 %61, label %64, label %63

63:                                               ; preds = %57
  call void @minmax_v2v2_v2(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %62) #8
  br label %65

64:                                               ; preds = %57
  call void @minmax_v2v2_v2(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %62) #8
  br label %65

65:                                               ; preds = %63, %64
  %66 = add nuw nsw i64 %58, 1
  %67 = icmp eq i64 %66, %33
  br i1 %67, label %68, label %57, !llvm.loop !70

68:                                               ; preds = %65, %53
  %69 = load float, ptr %8, align 4, !tbaa !46
  %70 = load float, ptr %7, align 4, !tbaa !46
  %71 = fsub float %69, %70
  %72 = load float, ptr %10, align 4, !tbaa !46
  %73 = load float, ptr %9, align 4, !tbaa !46
  %74 = fsub float %72, %73
  %75 = fcmp olt float %71, %74
  br i1 %75, label %91, label %76

76:                                               ; preds = %68
  %77 = load float, ptr %21, align 4, !tbaa !46
  %78 = load float, ptr %20, align 4, !tbaa !46
  %79 = fsub float %77, %78
  %80 = load float, ptr %23, align 4, !tbaa !46
  %81 = load float, ptr %22, align 4, !tbaa !46
  %82 = fsub float %80, %81
  %83 = fcmp olt float %79, %82
  br i1 %83, label %91, label %84

84:                                               ; preds = %76
  %85 = icmp slt i32 %40, 0
  br i1 %85, label %110, label %86

86:                                               ; preds = %84
  %87 = load float, ptr %6, align 4, !tbaa !46
  %88 = load float, ptr %25, align 4, !tbaa !46
  %89 = add nuw i32 %40, 1
  %90 = zext i32 %89 to i64
  br label %104

91:                                               ; preds = %76, %68
  %92 = icmp sgt i32 %42, %3
  br i1 %92, label %120, label %93

93:                                               ; preds = %91
  %94 = load float, ptr %6, align 4, !tbaa !46
  %95 = load float, ptr %29, align 4, !tbaa !46
  %96 = sext i32 %42 to i64
  br label %97

97:                                               ; preds = %93, %97
  %98 = phi i64 [ %96, %93 ], [ %101, %97 ]
  %99 = getelementptr inbounds [2 x float], ptr %0, i64 %98
  store float %94, ptr %99, align 4, !tbaa !46
  %100 = getelementptr inbounds float, ptr %99, i64 1
  store float %95, ptr %100, align 4, !tbaa !46
  %101 = add nsw i64 %98, 1
  %102 = trunc i64 %101 to i32
  %103 = icmp eq i32 %32, %102
  br i1 %103, label %120, label %97, !llvm.loop !71

104:                                              ; preds = %86, %104
  %105 = phi i64 [ 0, %86 ], [ %108, %104 ]
  %106 = getelementptr inbounds [2 x float], ptr %0, i64 %105
  store float %87, ptr %106, align 4, !tbaa !46
  %107 = getelementptr inbounds float, ptr %106, i64 1
  store float %88, ptr %107, align 4, !tbaa !46
  %108 = add nuw nsw i64 %105, 1
  %109 = icmp eq i64 %108, %90
  br i1 %109, label %110, label %104, !llvm.loop !72

110:                                              ; preds = %104, %84
  br i1 %34, label %120, label %111

111:                                              ; preds = %110
  %112 = load float, ptr %6, align 4, !tbaa !46
  %113 = load float, ptr %28, align 4, !tbaa !46
  br label %114

114:                                              ; preds = %111, %114
  %115 = phi i64 [ %31, %111 ], [ %118, %114 ]
  %116 = getelementptr inbounds [2 x float], ptr %0, i64 %115
  store float %112, ptr %116, align 4, !tbaa !46
  %117 = getelementptr inbounds float, ptr %116, i64 1
  store float %113, ptr %117, align 4, !tbaa !46
  %118 = add nsw i64 %115, 1
  %119 = icmp eq i64 %118, %35
  br i1 %119, label %120, label %114, !llvm.loop !73

120:                                              ; preds = %114, %97, %110, %91
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  br label %121

121:                                              ; preds = %50, %120, %36
  %122 = add nuw nsw i64 %37, 1
  %123 = load i32, ptr %2, align 8, !tbaa !63
  %124 = sext i32 %123 to i64
  %125 = icmp slt i64 %122, %124
  br i1 %125, label %36, label %126, !llvm.loop !74

126:                                              ; preds = %121, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_mask_spline_feather_differentiated_points_with_resolution(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.BezTriple, align 4
  %6 = alloca %struct.BezTriple, align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca [2 x float], align 4
  %11 = alloca [2 x float], align 4
  %12 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 3
  %13 = load i8, ptr %12, align 2, !tbaa !75
  %14 = icmp eq i8 %13, 0
  %15 = tail call ptr @BKE_mask_spline_point_array(ptr noundef %0) #8
  %16 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 2
  %17 = load i16, ptr %16, align 8, !tbaa !57
  %18 = and i16 %17, 2
  %19 = icmp eq i16 %18, 0
  %20 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %21 = load i32, ptr %20, align 4, !tbaa !34
  %22 = mul i32 %21, %2
  %23 = add nsw i32 %21, -1
  %24 = mul i32 %23, %2
  %25 = add i32 %24, 1
  %26 = select i1 %19, i32 %25, i32 %22
  br i1 %14, label %27, label %103

27:                                               ; preds = %4
  %28 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !59
  %29 = add nsw i32 %26, 1
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 3
  %32 = tail call ptr %28(i64 noundef %31, ptr noundef nonnull @.str.6) #8
  %33 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %34 = load i32, ptr %33, align 4, !tbaa !34
  %35 = load i16, ptr %16, align 8, !tbaa !57
  %36 = lshr i16 %35, 1
  %37 = and i16 %36, 1
  %38 = add nsw i16 %37, -1
  %39 = sext i16 %38 to i32
  %40 = add nsw i32 %34, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %96, label %42

42:                                               ; preds = %27
  %43 = icmp eq i32 %2, 0
  %44 = uitofp i32 %2 to float
  %45 = getelementptr inbounds float, ptr %8, i64 1
  %46 = getelementptr inbounds float, ptr %9, i64 1
  %47 = getelementptr inbounds float, ptr %10, i64 1
  %48 = getelementptr inbounds float, ptr %11, i64 1
  br label %49

49:                                               ; preds = %42, %94
  %50 = phi i32 [ %40, %42 ], [ %54, %94 ]
  %51 = phi ptr [ %15, %42 ], [ %62, %94 ]
  %52 = phi ptr [ %32, %42 ], [ %80, %94 ]
  %53 = getelementptr inbounds %struct.MaskSplinePoint, ptr %51, i64 1
  %54 = add nsw i32 %50, -1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load i16, ptr %16, align 8, !tbaa !57
  %58 = and i16 %57, 2
  %59 = icmp eq i16 %58, 0
  %60 = select i1 %59, ptr %53, ptr %15
  br label %61

61:                                               ; preds = %56, %49
  %62 = phi ptr [ %53, %49 ], [ %60, %56 ]
  br i1 %43, label %79, label %63

63:                                               ; preds = %61, %63
  %64 = phi ptr [ %77, %63 ], [ %52, %61 ]
  %65 = phi i32 [ %76, %63 ], [ 0, %61 ]
  %66 = sitofp i32 %65 to float
  %67 = fdiv float %66, %44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @BKE_mask_point_segment_co(ptr noundef %0, ptr noundef %51, float noundef %67, ptr noundef nonnull %8) #8
  call void @BKE_mask_point_normal(ptr noundef %0, ptr noundef %51, float noundef %67, ptr noundef nonnull %9) #8
  %68 = call float @BKE_mask_point_weight(ptr noundef %0, ptr noundef %51, float noundef %67) #8
  %69 = load float, ptr %8, align 4, !tbaa !46
  %70 = load float, ptr %9, align 4, !tbaa !46
  %71 = call float @llvm.fmuladd.f32(float %70, float %68, float %69)
  store float %71, ptr %64, align 4, !tbaa !46
  %72 = load float, ptr %45, align 4, !tbaa !46
  %73 = load float, ptr %46, align 4, !tbaa !46
  %74 = call float @llvm.fmuladd.f32(float %73, float %68, float %72)
  %75 = getelementptr inbounds float, ptr %64, i64 1
  store float %74, ptr %75, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  %76 = add nuw i32 %65, 1
  %77 = getelementptr inbounds [2 x float], ptr %64, i64 1
  %78 = icmp eq i32 %76, %2
  br i1 %78, label %79, label %63, !llvm.loop !76

79:                                               ; preds = %63, %61
  %80 = phi ptr [ %52, %61 ], [ %77, %63 ]
  br i1 %55, label %81, label %94

81:                                               ; preds = %79
  %82 = load i16, ptr %16, align 8, !tbaa !57
  %83 = and i16 %82, 2
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  call void @BKE_mask_point_segment_co(ptr noundef %0, ptr noundef %51, float noundef 1.000000e+00, ptr noundef nonnull %10) #8
  call void @BKE_mask_point_normal(ptr noundef %0, ptr noundef %51, float noundef 1.000000e+00, ptr noundef nonnull %11) #8
  %86 = call float @BKE_mask_point_weight(ptr noundef %0, ptr noundef %51, float noundef 1.000000e+00) #8
  %87 = load float, ptr %10, align 4, !tbaa !46
  %88 = load float, ptr %11, align 4, !tbaa !46
  %89 = call float @llvm.fmuladd.f32(float %88, float %86, float %87)
  store float %89, ptr %80, align 4, !tbaa !46
  %90 = load float, ptr %47, align 4, !tbaa !46
  %91 = load float, ptr %48, align 4, !tbaa !46
  %92 = call float @llvm.fmuladd.f32(float %91, float %86, float %90)
  %93 = getelementptr inbounds float, ptr %80, i64 1
  store float %92, ptr %93, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  br label %94

94:                                               ; preds = %85, %81, %79
  %95 = icmp eq i32 %54, 0
  br i1 %95, label %96, label %49, !llvm.loop !77

96:                                               ; preds = %94, %27
  store i32 %26, ptr %1, align 4, !tbaa !58
  %97 = load i16, ptr %16, align 8, !tbaa !57
  %98 = and i16 %97, 8
  %99 = icmp ne i16 %98, 0
  %100 = icmp ne i8 %3, 0
  %101 = and i1 %100, %99
  br i1 %101, label %102, label %305

102:                                              ; preds = %96
  call void @BKE_mask_spline_feather_collapse_inner_loops(ptr noundef %0, ptr noundef %32, i32 noundef %26)
  br label %305

103:                                              ; preds = %4
  %104 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %105 = load i32, ptr %104, align 4, !tbaa !34
  %106 = icmp slt i32 %105, 2
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  store i32 0, ptr %1, align 4, !tbaa !58
  br label %305

108:                                              ; preds = %103
  store i32 %26, ptr %1, align 4, !tbaa !58
  %109 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !59
  %110 = add nsw i32 %26, 1
  %111 = sext i32 %110 to i64
  %112 = shl nsw i64 %111, 3
  %113 = tail call ptr %109(i64 noundef %112, ptr noundef nonnull @.str) #8
  %114 = load i32, ptr %104, align 4, !tbaa !34
  %115 = load i16, ptr %16, align 8, !tbaa !57
  %116 = lshr i16 %115, 1
  %117 = and i16 %116, 1
  %118 = add nsw i16 %117, -1
  %119 = sext i16 %118 to i32
  %120 = add nsw i32 %114, %119
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %298, label %122

122:                                              ; preds = %108
  %123 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1
  %124 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1, i64 1
  %125 = getelementptr inbounds float, ptr %5, i64 1
  %126 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  %127 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  %128 = getelementptr inbounds float, ptr %6, i64 1
  %129 = getelementptr inbounds %struct.BezTriple, ptr %5, i64 0, i32 2
  %130 = getelementptr inbounds %struct.BezTriple, ptr %6, i64 0, i32 2
  %131 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2
  %132 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2, i64 1
  %133 = icmp eq i32 %2, 0
  %134 = uitofp i32 %2 to float
  %135 = getelementptr inbounds float, ptr %7, i64 1
  %136 = zext i32 %2 to i64
  br label %137

137:                                              ; preds = %122, %296
  %138 = phi i32 [ %120, %122 ], [ %142, %296 ]
  %139 = phi ptr [ %15, %122 ], [ %150, %296 ]
  %140 = phi ptr [ %113, %122 ], [ %287, %296 ]
  %141 = getelementptr inbounds %struct.MaskSplinePoint, ptr %139, i64 1
  %142 = add nsw i32 %138, -1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #8
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %137
  %145 = load i16, ptr %16, align 8, !tbaa !57
  %146 = and i16 %145, 2
  %147 = icmp eq i16 %146, 0
  %148 = select i1 %147, ptr %141, ptr %15
  br label %149

149:                                              ; preds = %144, %137
  %150 = phi ptr [ %141, %137 ], [ %148, %144 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %5, ptr noundef nonnull align 4 dereferenceable(72) %139, i64 72, i1 false), !tbaa.struct !78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %6, ptr noundef nonnull align 4 dereferenceable(72) %150, i64 72, i1 false), !tbaa.struct !78
  %151 = load float, ptr %123, align 4, !tbaa !46
  %152 = load float, ptr %5, align 4, !tbaa !46
  %153 = fsub float %151, %152
  %154 = load float, ptr %124, align 4, !tbaa !46
  %155 = load float, ptr %125, align 4, !tbaa !46
  %156 = fsub float %154, %155
  %157 = fmul float %156, %156
  %158 = call float @llvm.fmuladd.f32(float %153, float %153, float %157)
  %159 = fcmp ogt float %158, 0x38AA95A5C0000000
  br i1 %159, label %160, label %165

160:                                              ; preds = %149
  %161 = call float @sqrtf(float noundef %158) #8
  %162 = fdiv float 1.000000e+00, %161
  %163 = fmul float %153, %162
  %164 = fmul float %156, %162
  br label %165

165:                                              ; preds = %160, %149
  %166 = phi float [ %163, %160 ], [ 0.000000e+00, %149 ]
  %167 = phi float [ %164, %160 ], [ 0.000000e+00, %149 ]
  %168 = fneg float %167
  %169 = load float, ptr %126, align 4, !tbaa !46
  %170 = load float, ptr %6, align 4, !tbaa !46
  %171 = fsub float %169, %170
  %172 = load float, ptr %127, align 4, !tbaa !46
  %173 = load float, ptr %128, align 4, !tbaa !46
  %174 = fsub float %172, %173
  %175 = fmul float %174, %174
  %176 = call float @llvm.fmuladd.f32(float %171, float %171, float %175)
  %177 = fcmp ogt float %176, 0x38AA95A5C0000000
  br i1 %177, label %178, label %183

178:                                              ; preds = %165
  %179 = call float @sqrtf(float noundef %176) #8
  %180 = fdiv float 1.000000e+00, %179
  %181 = fmul float %171, %180
  %182 = fmul float %174, %180
  br label %183

183:                                              ; preds = %178, %165
  %184 = phi float [ %181, %178 ], [ 0.000000e+00, %165 ]
  %185 = phi float [ %182, %178 ], [ 0.000000e+00, %165 ]
  %186 = fneg float %185
  %187 = load float, ptr %129, align 4, !tbaa !80
  %188 = load float, ptr %130, align 4, !tbaa !80
  %189 = fmul float %187, %168
  %190 = fmul float %166, %187
  %191 = fmul float %188, %186
  %192 = fmul float %184, %188
  %193 = load float, ptr %123, align 4, !tbaa !46
  %194 = load float, ptr %126, align 4, !tbaa !46
  %195 = fsub float %193, %194
  %196 = load float, ptr %124, align 4, !tbaa !46
  %197 = load float, ptr %127, align 4, !tbaa !46
  %198 = fsub float %196, %197
  %199 = fmul float %198, %198
  %200 = call float @llvm.fmuladd.f32(float %195, float %195, float %199)
  %201 = call float @sqrtf(float noundef %200) #8
  %202 = load float, ptr %123, align 4, !tbaa !46
  %203 = fadd float %189, %202
  store float %203, ptr %123, align 4, !tbaa !46
  %204 = load float, ptr %124, align 4, !tbaa !46
  %205 = fadd float %190, %204
  store float %205, ptr %124, align 4, !tbaa !46
  %206 = load float, ptr %131, align 4, !tbaa !46
  %207 = fadd float %189, %206
  store float %207, ptr %131, align 4, !tbaa !46
  %208 = load float, ptr %132, align 4, !tbaa !46
  %209 = fadd float %190, %208
  store float %209, ptr %132, align 4, !tbaa !46
  %210 = load float, ptr %6, align 4, !tbaa !46
  %211 = fadd float %191, %210
  store float %211, ptr %6, align 4, !tbaa !46
  %212 = load float, ptr %128, align 4, !tbaa !46
  %213 = fadd float %192, %212
  store float %213, ptr %128, align 4, !tbaa !46
  %214 = load float, ptr %126, align 4, !tbaa !46
  %215 = fadd float %191, %214
  store float %215, ptr %126, align 4, !tbaa !46
  %216 = load float, ptr %127, align 4, !tbaa !46
  %217 = fadd float %192, %216
  store float %217, ptr %127, align 4, !tbaa !46
  %218 = fsub float %203, %215
  %219 = fsub float %205, %217
  %220 = fmul float %219, %219
  %221 = call float @llvm.fmuladd.f32(float %218, float %218, float %220)
  %222 = call float @sqrtf(float noundef %221) #8
  %223 = fdiv float %222, %201
  %224 = load float, ptr %131, align 4, !tbaa !46
  %225 = load float, ptr %123, align 4, !tbaa !46
  %226 = fsub float %224, %225
  %227 = load float, ptr %132, align 4, !tbaa !46
  %228 = load float, ptr %124, align 4, !tbaa !46
  %229 = fsub float %227, %228
  %230 = fmul float %229, %229
  %231 = call float @llvm.fmuladd.f32(float %226, float %226, float %230)
  %232 = call float @sqrtf(float noundef %231) #8
  %233 = fmul float %223, %232
  call void @dist_ensure_v2_v2fl(ptr noundef nonnull %131, ptr noundef nonnull %123, float noundef %233) #8
  %234 = load float, ptr %6, align 4, !tbaa !46
  %235 = load float, ptr %126, align 4, !tbaa !46
  %236 = fsub float %234, %235
  %237 = load float, ptr %128, align 4, !tbaa !46
  %238 = load float, ptr %127, align 4, !tbaa !46
  %239 = fsub float %237, %238
  %240 = fmul float %239, %239
  %241 = call float @llvm.fmuladd.f32(float %236, float %236, float %240)
  %242 = call float @sqrtf(float noundef %241) #8
  %243 = fmul float %223, %242
  call void @dist_ensure_v2_v2fl(ptr noundef nonnull %6, ptr noundef nonnull %126, float noundef %243) #8
  br label %244

244:                                              ; preds = %183, %244
  %245 = phi i64 [ 0, %183 ], [ %255, %244 ]
  %246 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1, i64 %245
  %247 = load float, ptr %246, align 4, !tbaa !46
  %248 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2, i64 %245
  %249 = load float, ptr %248, align 4, !tbaa !46
  %250 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %245
  %251 = load float, ptr %250, align 4, !tbaa !46
  %252 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 %245
  %253 = load float, ptr %252, align 4, !tbaa !46
  %254 = getelementptr inbounds [2 x float], ptr %140, i64 0, i64 %245
  call void @BKE_curve_forward_diff_bezier(float noundef %247, float noundef %249, float noundef %251, float noundef %253, ptr noundef %254, i32 noundef %2, i32 noundef 8) #8
  %255 = add nuw nsw i64 %245, 1
  %256 = icmp eq i64 %245, 0
  br i1 %256, label %244, label %257, !llvm.loop !81

257:                                              ; preds = %244
  %258 = getelementptr inbounds %struct.MaskSplinePoint, ptr %139, i64 0, i32 2
  %259 = load i32, ptr %258, align 4, !tbaa !48
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %284, label %261

261:                                              ; preds = %257
  br i1 %133, label %286, label %262

262:                                              ; preds = %261, %262
  %263 = phi i32 [ %281, %262 ], [ 0, %261 ]
  %264 = phi ptr [ %282, %262 ], [ %140, %261 ]
  %265 = sitofp i32 %263 to float
  %266 = fdiv float %265, %134
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @BKE_mask_point_segment_co(ptr noundef %0, ptr noundef %139, float noundef %266, ptr noundef nonnull %7) #8
  %267 = call float @BKE_mask_point_weight(ptr noundef %0, ptr noundef %139, float noundef %266) #8
  %268 = call float @BKE_mask_point_weight_scalar(ptr noundef %0, ptr noundef %139, float noundef %266) #8
  %269 = load float, ptr %264, align 4, !tbaa !46
  %270 = load float, ptr %7, align 4, !tbaa !46
  %271 = fsub float %269, %270
  %272 = getelementptr inbounds float, ptr %264, i64 1
  %273 = load float, ptr %272, align 4, !tbaa !46
  %274 = load float, ptr %135, align 4, !tbaa !46
  %275 = fsub float %273, %274
  %276 = fmul float %275, %275
  %277 = call float @llvm.fmuladd.f32(float %271, float %271, float %276)
  %278 = call float @sqrtf(float noundef %277) #8
  %279 = fdiv float %267, %268
  %280 = fmul float %279, %278
  call void @dist_ensure_v2_v2fl(ptr noundef nonnull %264, ptr noundef nonnull %7, float noundef %280) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  %281 = add nuw i32 %263, 1
  %282 = getelementptr inbounds [2 x float], ptr %264, i64 1
  %283 = icmp eq i32 %281, %2
  br i1 %283, label %286, label %262, !llvm.loop !82

284:                                              ; preds = %257
  %285 = getelementptr inbounds [2 x float], ptr %140, i64 %136
  br label %286

286:                                              ; preds = %262, %261, %284
  %287 = phi ptr [ %285, %284 ], [ %140, %261 ], [ %282, %262 ]
  br i1 %143, label %288, label %296

288:                                              ; preds = %286
  %289 = load i16, ptr %16, align 8, !tbaa !57
  %290 = and i16 %289, 2
  %291 = icmp eq i16 %290, 0
  br i1 %291, label %292, label %296

292:                                              ; preds = %288
  %293 = load float, ptr %126, align 4, !tbaa !46
  store float %293, ptr %287, align 4, !tbaa !46
  %294 = load float, ptr %127, align 4, !tbaa !46
  %295 = getelementptr inbounds float, ptr %287, i64 1
  store float %294, ptr %295, align 4, !tbaa !46
  br label %296

296:                                              ; preds = %292, %288, %286
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #8
  %297 = icmp eq i32 %142, 0
  br i1 %297, label %298, label %137, !llvm.loop !83

298:                                              ; preds = %296, %108
  %299 = load i16, ptr %16, align 8, !tbaa !57
  %300 = and i16 %299, 8
  %301 = icmp ne i16 %300, 0
  %302 = icmp ne i8 %3, 0
  %303 = and i1 %302, %301
  br i1 %303, label %304, label %305

304:                                              ; preds = %298
  call void @BKE_mask_spline_feather_collapse_inner_loops(ptr noundef %0, ptr noundef %113, i32 noundef %26)
  br label %305

305:                                              ; preds = %304, %298, %107, %102, %96
  %306 = phi ptr [ %32, %96 ], [ %32, %102 ], [ null, %107 ], [ %113, %304 ], [ %113, %298 ]
  ret ptr %306
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_mask_spline_feather_points(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca [2 x float], align 4
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @BKE_mask_spline_point_array(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = zext nneg i32 %7 to i64
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %18, %11 ]
  %13 = phi i32 [ 0, %9 ], [ %17, %11 ]
  %14 = getelementptr inbounds %struct.MaskSplinePoint, ptr %5, i64 %12, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !48
  %16 = add i32 %13, 1
  %17 = add i32 %16, %15
  %18 = add nuw nsw i64 %12, 1
  %19 = icmp eq i64 %18, %10
  br i1 %19, label %20, label %11, !llvm.loop !84

20:                                               ; preds = %11, %2
  %21 = phi i32 [ 0, %2 ], [ %17, %11 ]
  %22 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !59
  %24 = sext i32 %21 to i64
  %25 = shl nsw i64 %24, 3
  %26 = tail call ptr %23(i64 noundef %25, ptr noundef nonnull @.str.2) #8
  %27 = load i32, ptr %22, align 4, !tbaa !34
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %78

29:                                               ; preds = %20
  %30 = getelementptr inbounds float, ptr %3, i64 1
  %31 = getelementptr inbounds float, ptr %4, i64 1
  br label %32

32:                                               ; preds = %29, %72
  %33 = phi i64 [ 0, %29 ], [ %74, %72 ]
  %34 = phi ptr [ %26, %29 ], [ %73, %72 ]
  %35 = getelementptr inbounds %struct.MaskSplinePoint, ptr %5, i64 %33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  call void @BKE_mask_point_normal(ptr noundef %0, ptr noundef %35, float noundef 0.000000e+00, ptr noundef nonnull %3) #8
  %36 = call float @BKE_mask_point_weight(ptr noundef %0, ptr noundef %35, float noundef 0.000000e+00) #8
  %37 = getelementptr inbounds [3 x [3 x float]], ptr %35, i64 0, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !46
  %39 = load float, ptr %3, align 4, !tbaa !46
  %40 = call float @llvm.fmuladd.f32(float %39, float %36, float %38)
  store float %40, ptr %34, align 4, !tbaa !46
  %41 = getelementptr inbounds [3 x [3 x float]], ptr %35, i64 0, i64 1, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !46
  %43 = load float, ptr %30, align 4, !tbaa !46
  %44 = call float @llvm.fmuladd.f32(float %43, float %36, float %42)
  %45 = getelementptr inbounds float, ptr %34, i64 1
  store float %44, ptr %45, align 4, !tbaa !46
  %46 = getelementptr inbounds %struct.MaskSplinePoint, ptr %5, i64 %33, i32 2
  %47 = getelementptr inbounds [2 x float], ptr %34, i64 1
  %48 = load i32, ptr %46, align 4, !tbaa !48
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %32
  %51 = getelementptr inbounds %struct.MaskSplinePoint, ptr %5, i64 %33, i32 3
  br label %52

52:                                               ; preds = %50, %52
  %53 = phi i64 [ 0, %50 ], [ %67, %52 ]
  %54 = phi ptr [ %47, %50 ], [ %68, %52 ]
  %55 = phi ptr [ %34, %50 ], [ %54, %52 ]
  %56 = load ptr, ptr %51, align 8, !tbaa !51
  %57 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %56, i64 %53
  %58 = load float, ptr %57, align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  call void @BKE_mask_point_segment_co(ptr noundef %0, ptr noundef %35, float noundef %58, ptr noundef nonnull %4) #8
  call void @BKE_mask_point_normal(ptr noundef %0, ptr noundef %35, float noundef %58, ptr noundef nonnull %3) #8
  %59 = call float @BKE_mask_point_weight(ptr noundef %0, ptr noundef %35, float noundef %58) #8
  %60 = load float, ptr %4, align 4, !tbaa !46
  %61 = load float, ptr %3, align 4, !tbaa !46
  %62 = call float @llvm.fmuladd.f32(float %61, float %59, float %60)
  store float %62, ptr %54, align 4, !tbaa !46
  %63 = load float, ptr %31, align 4, !tbaa !46
  %64 = load float, ptr %30, align 4, !tbaa !46
  %65 = call float @llvm.fmuladd.f32(float %64, float %59, float %63)
  %66 = getelementptr inbounds [2 x float], ptr %55, i64 1, i64 1
  store float %65, ptr %66, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  %67 = add nuw nsw i64 %53, 1
  %68 = getelementptr inbounds [2 x float], ptr %54, i64 1
  %69 = load i32, ptr %46, align 4, !tbaa !48
  %70 = sext i32 %69 to i64
  %71 = icmp slt i64 %67, %70
  br i1 %71, label %52, label %72, !llvm.loop !85

72:                                               ; preds = %52, %32
  %73 = phi ptr [ %47, %32 ], [ %68, %52 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  %74 = add nuw nsw i64 %33, 1
  %75 = load i32, ptr %22, align 4, !tbaa !34
  %76 = sext i32 %75 to i64
  %77 = icmp slt i64 %74, %76
  br i1 %77, label %32, label %78, !llvm.loop !86

78:                                               ; preds = %72, %20
  store i32 %21, ptr %1, align 4, !tbaa !58
  ret ptr %26
}

declare void @BKE_mask_point_normal(ptr noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare float @BKE_mask_point_weight(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @BKE_mask_point_segment_co(ptr noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_mask_point_segment_feather_diff(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = tail call i32 @BKE_mask_spline_resolution(ptr noundef %0, i32 noundef %2, i32 noundef %3)
  %9 = icmp ugt i32 %8, 127
  br i1 %9, label %65, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !34
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %56

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = zext nneg i32 %12 to i64
  br label %18

18:                                               ; preds = %52, %14
  %19 = phi i64 [ 0, %14 ], [ %54, %52 ]
  %20 = phi float [ 0.000000e+00, %14 ], [ %53, %52 ]
  %21 = getelementptr inbounds %struct.MaskSplinePoint, ptr %16, i64 %19, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !48
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.MaskSplinePoint, ptr %16, i64 %19, i32 0, i32 2
  %26 = getelementptr inbounds %struct.MaskSplinePoint, ptr %16, i64 %19, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !51
  %28 = zext nneg i32 %22 to i64
  br label %29

29:                                               ; preds = %47, %24
  %30 = phi i64 [ 0, %24 ], [ %50, %47 ]
  %31 = phi float [ %20, %24 ], [ %48, %47 ]
  %32 = phi ptr [ %25, %24 ], [ %49, %47 ]
  %33 = phi float [ 0.000000e+00, %24 ], [ %35, %47 ]
  %34 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %27, i64 %30
  %35 = load float, ptr %34, align 4, !tbaa !52
  %36 = fsub float %35, %33
  %37 = fcmp ogt float %36, 0x3E80000000000000
  br i1 %37, label %38, label %47

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %27, i64 %30, i32 1
  %40 = load float, ptr %39, align 4, !tbaa !54
  %41 = load float, ptr %32, align 4, !tbaa !46
  %42 = fsub float %40, %41
  %43 = fdiv float %42, %36
  %44 = tail call float @llvm.fabs.f32(float %43)
  %45 = fcmp ogt float %31, %44
  %46 = select i1 %45, float %31, float %44
  br label %47

47:                                               ; preds = %38, %29
  %48 = phi float [ %46, %38 ], [ %31, %29 ]
  %49 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %27, i64 %30, i32 1
  %50 = add nuw nsw i64 %30, 1
  %51 = icmp eq i64 %50, %28
  br i1 %51, label %52, label %29, !llvm.loop !55

52:                                               ; preds = %47, %18
  %53 = phi float [ %20, %18 ], [ %48, %47 ]
  %54 = add nuw nsw i64 %19, 1
  %55 = icmp eq i64 %54, %17
  br i1 %55, label %56, label %18, !llvm.loop !56

56:                                               ; preds = %52, %10
  %57 = phi float [ 0.000000e+00, %10 ], [ %53, %52 ]
  %58 = fdiv float %57, 0x3F747AE140000000
  %59 = uitofp i32 %8 to float
  %60 = fadd float %58, %59
  %61 = fptoui float %60 to i32
  %62 = icmp eq i32 %61, 0
  %63 = tail call i32 @llvm.umin.i32(i32 %61, i32 128)
  %64 = select i1 %62, i32 1, i32 %63
  br label %65

65:                                               ; preds = %5, %56
  %66 = phi i32 [ %64, %56 ], [ 128, %5 ]
  %67 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %68 = shl nuw nsw i32 %66, 1
  %69 = zext nneg i32 %68 to i64
  %70 = shl nuw nsw i64 %69, 2
  %71 = tail call ptr %67(i64 noundef %70, ptr noundef nonnull @.str.3) #8
  %72 = icmp eq i32 %66, 0
  br i1 %72, label %93, label %73

73:                                               ; preds = %65
  %74 = uitofp i32 %66 to float
  %75 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %76 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  br label %77

77:                                               ; preds = %73, %77
  %78 = phi ptr [ %71, %73 ], [ %91, %77 ]
  %79 = phi i32 [ 0, %73 ], [ %90, %77 ]
  %80 = uitofp i32 %79 to float
  %81 = fdiv float %80, %74
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @BKE_mask_point_segment_co(ptr noundef %0, ptr noundef %1, float noundef %81, ptr noundef nonnull %6) #8
  call void @BKE_mask_point_normal(ptr noundef %0, ptr noundef %1, float noundef %81, ptr noundef nonnull %7) #8
  %82 = call float @BKE_mask_point_weight(ptr noundef %0, ptr noundef %1, float noundef %81) #8
  %83 = load float, ptr %6, align 4, !tbaa !46
  %84 = load float, ptr %7, align 4, !tbaa !46
  %85 = call float @llvm.fmuladd.f32(float %84, float %82, float %83)
  store float %85, ptr %78, align 4, !tbaa !46
  %86 = load float, ptr %75, align 4, !tbaa !46
  %87 = load float, ptr %76, align 4, !tbaa !46
  %88 = call float @llvm.fmuladd.f32(float %87, float %82, float %86)
  %89 = getelementptr inbounds float, ptr %78, i64 1
  store float %88, ptr %89, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  %90 = add nuw nsw i32 %79, 1
  %91 = getelementptr inbounds float, ptr %78, i64 2
  %92 = icmp eq i32 %90, %66
  br i1 %92, label %93, label %77, !llvm.loop !87

93:                                               ; preds = %77, %65
  store i32 %66, ptr %4, align 4, !tbaa !58
  ret ptr %71
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_mask_point_segment_diff(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = tail call ptr @BKE_mask_spline_point_array_from_point(ptr noundef %0, ptr noundef %1) #8
  %7 = tail call i32 @BKE_mask_spline_resolution(ptr noundef %0, i32 noundef %2, i32 noundef %3)
  %8 = tail call ptr @BKE_mask_spline_point_next_bezt(ptr noundef %0, ptr noundef %6, ptr noundef %1) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %39, label %10

10:                                               ; preds = %5
  %11 = add nsw i32 %7, 1
  store i32 %11, ptr %4, align 4, !tbaa !58
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %13 = shl nsw i32 %11, 1
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 2
  %16 = tail call ptr %12(i64 noundef %15, ptr noundef nonnull @.str.4) #8
  br label %17

17:                                               ; preds = %10, %17
  %18 = phi i64 [ 0, %10 ], [ %28, %17 ]
  %19 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 %18
  %20 = load float, ptr %19, align 4, !tbaa !46
  %21 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2, i64 %18
  %22 = load float, ptr %21, align 4, !tbaa !46
  %23 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %18
  %24 = load float, ptr %23, align 4, !tbaa !46
  %25 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 1, i64 %18
  %26 = load float, ptr %25, align 4, !tbaa !46
  %27 = getelementptr inbounds float, ptr %16, i64 %18
  tail call void @BKE_curve_forward_diff_bezier(float noundef %20, float noundef %22, float noundef %24, float noundef %26, ptr noundef %27, i32 noundef %7, i32 noundef 8) #8
  %28 = add nuw nsw i64 %18, 1
  %29 = icmp eq i64 %18, 0
  br i1 %29, label %17, label %30, !llvm.loop !88

30:                                               ; preds = %17
  %31 = shl nsw i32 %7, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, ptr %16, i64 %32
  %34 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !46
  store float %35, ptr %33, align 4, !tbaa !46
  %36 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 1, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !46
  %38 = getelementptr inbounds float, ptr %33, i64 1
  store float %37, ptr %38, align 4, !tbaa !46
  br label %39

39:                                               ; preds = %5, %30
  %40 = phi ptr [ %16, %30 ], [ null, %5 ]
  ret ptr %40
}

declare ptr @BKE_mask_spline_point_array_from_point(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

declare zeroext i8 @isect_seg_seg_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @isect_seg_seg_v2_point(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare void @dist_ensure_v2_v2fl(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare float @BKE_mask_point_weight_scalar(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!34 = !{!35, !40, i64 20}
!35 = !{!"MaskSpline", !36, i64 0, !36, i64 8, !39, i64 16, !37, i64 18, !37, i64 19, !40, i64 20, !36, i64 24, !41, i64 32, !36, i64 216}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!"MaskParent", !40, i64 0, !40, i64 4, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 144, !37, i64 152}
!42 = distinct !{!42, !43, !44}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = !{!35, !36, i64 24}
!46 = !{!47, !47, i64 0}
!47 = !{!"float", !37, i64 0}
!48 = !{!49, !40, i64 76}
!49 = !{!"MaskSplinePoint", !50, i64 0, !40, i64 72, !40, i64 76, !36, i64 80, !41, i64 88}
!50 = !{!"BezTriple", !37, i64 0, !47, i64 36, !47, i64 40, !47, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !47, i64 56, !47, i64 60, !47, i64 64, !37, i64 68}
!51 = !{!49, !36, i64 80}
!52 = !{!53, !47, i64 0}
!53 = !{!"MaskSplinePointUW", !47, i64 0, !47, i64 4, !40, i64 8}
!54 = !{!53, !47, i64 4}
!55 = distinct !{!55, !43, !44}
!56 = distinct !{!56, !43, !44}
!57 = !{!35, !39, i64 16}
!58 = !{!40, !40, i64 0}
!59 = !{!36, !36, i64 0}
!60 = distinct !{!60, !43, !44}
!61 = distinct !{!61, !43, !44}
!62 = distinct !{!62, !43, !44}
!63 = !{!64, !40, i64 0}
!64 = !{!"FeatherEdgesBucket", !40, i64 0, !36, i64 8, !40, i64 16}
!65 = !{!64, !40, i64 16}
!66 = !{!64, !36, i64 8}
!67 = distinct !{!67, !43, !44}
!68 = distinct !{!68, !43, !44}
!69 = distinct !{!69, !43, !44}
!70 = distinct !{!70, !43, !44}
!71 = distinct !{!71, !43, !44}
!72 = distinct !{!72, !43, !44}
!73 = distinct !{!73, !43, !44}
!74 = distinct !{!74, !43, !44}
!75 = !{!35, !37, i64 18}
!76 = distinct !{!76, !43, !44}
!77 = distinct !{!77, !43, !44}
!78 = !{i64 0, i64 36, !79, i64 36, i64 4, !46, i64 40, i64 4, !46, i64 44, i64 4, !46, i64 48, i64 1, !79, i64 49, i64 1, !79, i64 50, i64 1, !79, i64 51, i64 1, !79, i64 52, i64 1, !79, i64 53, i64 1, !79, i64 54, i64 1, !79, i64 55, i64 1, !79, i64 56, i64 4, !46, i64 60, i64 4, !46, i64 64, i64 4, !46, i64 68, i64 4, !79}
!79 = !{!37, !37, i64 0}
!80 = !{!50, !47, i64 40}
!81 = distinct !{!81, !43, !44}
!82 = distinct !{!82, !43, !44}
!83 = distinct !{!83, !43, !44}
!84 = distinct !{!84, !43, !44}
!85 = distinct !{!85, !43, !44}
!86 = distinct !{!86, !43, !44}
!87 = distinct !{!87, !43, !44}
!88 = distinct !{!88, !43, !44}
