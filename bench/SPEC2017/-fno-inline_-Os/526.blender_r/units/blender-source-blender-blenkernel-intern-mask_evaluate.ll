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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_mask_spline_resolution(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ne i32 %1, 0
  %5 = icmp ne i32 %2, 0
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @max_ii(i32 noundef %1, i32 noundef %2) #12, !range !34
  %9 = sitofp i32 %8 to float
  %10 = fdiv float 1.000000e+00, %9
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi float [ %10, %7 ], [ 0x3F847AE140000000, %3 ]
  %13 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 6
  %14 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %15 = load i32, ptr %14, align 4, !tbaa !35
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %42, label %22

17:                                               ; preds = %29
  %18 = add nuw nsw i64 %23, 1
  %19 = load i32, ptr %14, align 4, !tbaa !35
  %20 = zext i32 %19 to i64
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %22, label %42, !llvm.loop !43

22:                                               ; preds = %11, %17
  %23 = phi i64 [ %18, %17 ], [ 0, %11 ]
  %24 = phi i32 [ %40, %17 ], [ 1, %11 ]
  %25 = load ptr, ptr %13, align 8, !tbaa !45
  %26 = getelementptr inbounds %struct.MaskSplinePoint, ptr %25, i64 %23
  %27 = tail call ptr @BKE_mask_spline_point_next_bezt(ptr noundef nonnull %0, ptr noundef %25, ptr noundef %26) #13
  %28 = icmp eq ptr %27, null
  br i1 %28, label %42, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds [3 x [3 x float]], ptr %26, i64 0, i64 1
  %31 = getelementptr inbounds [3 x [3 x float]], ptr %26, i64 0, i64 2
  %32 = tail call fastcc float @len_v3v3(ptr noundef nonnull %30, ptr noundef nonnull %31) #12
  %33 = tail call fastcc float @len_v3v3(ptr noundef nonnull %31, ptr noundef nonnull %27) #12
  %34 = getelementptr inbounds [3 x [3 x float]], ptr %27, i64 0, i64 1
  %35 = tail call fastcc float @len_v3v3(ptr noundef nonnull %27, ptr noundef nonnull %34) #12
  %36 = fadd float %32, %33
  %37 = fadd float %36, %35
  %38 = fdiv float %37, %12
  %39 = fptoui float %38 to i32
  %40 = tail call i32 @llvm.umax.i32(i32 %24, i32 %39)
  %41 = icmp ugt i32 %39, 127
  br i1 %41, label %42, label %17

42:                                               ; preds = %17, %22, %29, %11
  %43 = phi i32 [ 1, %11 ], [ %40, %29 ], [ %24, %22 ], [ %40, %17 ]
  %44 = tail call i32 @llvm.umin.i32(i32 %43, i32 128)
  ret i32 %44
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #2 !PGOFuncName !46 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @BKE_mask_spline_point_next_bezt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !47 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #12
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  ret float %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_mask_spline_feather_resolution(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @BKE_mask_spline_resolution(ptr noundef %0, i32 noundef %1, i32 noundef %2) #12
  %5 = icmp ugt i32 %4, 127
  br i1 %5, label %60, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !35
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = zext nneg i32 %8 to i64
  br label %14

14:                                               ; preds = %10, %47
  %15 = phi i64 [ 0, %10 ], [ %49, %47 ]
  %16 = phi float [ 0.000000e+00, %10 ], [ %48, %47 ]
  %17 = getelementptr inbounds %struct.MaskSplinePoint, ptr %12, i64 %15, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !48
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.MaskSplinePoint, ptr %12, i64 %15, i32 0, i32 2
  %22 = getelementptr inbounds %struct.MaskSplinePoint, ptr %12, i64 %15, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !52
  %24 = zext nneg i32 %18 to i64
  br label %25

25:                                               ; preds = %20, %42
  %26 = phi i64 [ 0, %20 ], [ %45, %42 ]
  %27 = phi float [ %16, %20 ], [ %43, %42 ]
  %28 = phi ptr [ %21, %20 ], [ %44, %42 ]
  %29 = phi float [ 0.000000e+00, %20 ], [ %31, %42 ]
  %30 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %23, i64 %26
  %31 = load float, ptr %30, align 4, !tbaa !53
  %32 = fsub float %31, %29
  %33 = fcmp ogt float %32, 0x3E80000000000000
  br i1 %33, label %34, label %42

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %23, i64 %26, i32 1
  %36 = load float, ptr %35, align 4, !tbaa !55
  %37 = load float, ptr %28, align 4, !tbaa !56
  %38 = fsub float %36, %37
  %39 = fdiv float %38, %32
  %40 = tail call float @llvm.fabs.f32(float %39)
  %41 = tail call fastcc float @max_ff(float noundef %27, float noundef %40) #12
  br label %42

42:                                               ; preds = %34, %25
  %43 = phi float [ %41, %34 ], [ %27, %25 ]
  %44 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %23, i64 %26, i32 1
  %45 = add nuw nsw i64 %26, 1
  %46 = icmp eq i64 %45, %24
  br i1 %46, label %47, label %25, !llvm.loop !57

47:                                               ; preds = %42, %14
  %48 = phi float [ %16, %14 ], [ %43, %42 ]
  %49 = add nuw nsw i64 %15, 1
  %50 = icmp eq i64 %49, %13
  br i1 %50, label %51, label %14, !llvm.loop !58

51:                                               ; preds = %47, %6
  %52 = phi float [ 0.000000e+00, %6 ], [ %48, %47 ]
  %53 = fdiv float %52, 0x3F747AE140000000
  %54 = uitofp i32 %4 to float
  %55 = fadd float %53, %54
  %56 = fptoui float %55 to i32
  %57 = icmp eq i32 %56, 0
  %58 = tail call i32 @llvm.umin.i32(i32 %56, i32 128)
  %59 = select i1 %57, i32 1, i32 %58
  br label %60

60:                                               ; preds = %3, %51
  %61 = phi i32 [ %59, %51 ], [ 128, %3 ]
  ret i32 %61
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #2 !PGOFuncName !59 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @BKE_mask_spline_differentiate_calc_total(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !60
  %5 = and i16 %4, 2
  %6 = icmp eq i16 %5, 0
  %7 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !35
  %9 = mul i32 %8, %1
  %10 = add nsw i32 %8, -1
  %11 = mul i32 %10, %1
  %12 = add i32 %11, 1
  %13 = select i1 %6, i32 %12, i32 %9
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_mask_spline_differentiate_with_resolution(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @BKE_mask_spline_point_array(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !35
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !61
  br label %64

9:                                                ; preds = %3
  %10 = tail call i32 @BKE_mask_spline_differentiate_calc_total(ptr noundef nonnull %0, i32 noundef %2) #12
  store i32 %10, ptr %1, align 4, !tbaa !61
  %11 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !62
  %12 = add nsw i32 %10, 1
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 3
  %15 = tail call ptr %11(i64 noundef %14, ptr noundef nonnull @.str) #13
  %16 = load i32, ptr %5, align 4, !tbaa !35
  %17 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 2
  %18 = load i16, ptr %17, align 8, !tbaa !60
  %19 = lshr i16 %18, 1
  %20 = and i16 %19, 1
  %21 = add nsw i16 %20, -1
  %22 = sext i16 %21 to i32
  %23 = add nsw i32 %16, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %64, label %25

25:                                               ; preds = %9
  %26 = zext i32 %2 to i64
  br label %27

27:                                               ; preds = %39, %25
  %28 = phi i32 [ %23, %25 ], [ %32, %39 ]
  %29 = phi ptr [ %4, %25 ], [ %40, %39 ]
  %30 = phi ptr [ %15, %25 ], [ %57, %39 ]
  %31 = getelementptr inbounds %struct.MaskSplinePoint, ptr %29, i64 1
  %32 = add nsw i32 %28, -1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i16, ptr %17, align 8, !tbaa !60
  %36 = and i16 %35, 2
  %37 = icmp eq i16 %36, 0
  %38 = select i1 %37, ptr %31, ptr %4
  br label %39

39:                                               ; preds = %34, %27
  %40 = phi ptr [ %31, %27 ], [ %38, %34 ]
  %41 = getelementptr inbounds [3 x [3 x float]], ptr %29, i64 0, i64 1, i64 0
  %42 = load float, ptr %41, align 4, !tbaa !56
  %43 = getelementptr inbounds [3 x [3 x float]], ptr %29, i64 0, i64 2, i64 0
  %44 = load float, ptr %43, align 4, !tbaa !56
  %45 = load float, ptr %40, align 4, !tbaa !56
  %46 = getelementptr inbounds [3 x [3 x float]], ptr %40, i64 0, i64 1, i64 0
  %47 = load float, ptr %46, align 4, !tbaa !56
  tail call void @BKE_curve_forward_diff_bezier(float noundef %42, float noundef %44, float noundef %45, float noundef %47, ptr noundef %30, i32 noundef %2, i32 noundef 8) #13
  %48 = getelementptr inbounds [3 x [3 x float]], ptr %29, i64 0, i64 1, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !56
  %50 = getelementptr inbounds [3 x [3 x float]], ptr %29, i64 0, i64 2, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !56
  %52 = getelementptr inbounds [3 x float], ptr %40, i64 0, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !56
  %54 = getelementptr inbounds [3 x [3 x float]], ptr %40, i64 0, i64 1, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !56
  %56 = getelementptr inbounds [2 x float], ptr %30, i64 0, i64 1
  tail call void @BKE_curve_forward_diff_bezier(float noundef %49, float noundef %51, float noundef %53, float noundef %55, ptr noundef nonnull %56, i32 noundef %2, i32 noundef 8) #13
  %57 = getelementptr inbounds [2 x float], ptr %30, i64 %26
  br i1 %33, label %58, label %27, !llvm.loop !63

58:                                               ; preds = %39
  %59 = load i16, ptr %17, align 8, !tbaa !60
  %60 = and i16 %59, 2
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = getelementptr inbounds [3 x [3 x float]], ptr %40, i64 0, i64 1
  tail call fastcc void @copy_v2_v2(ptr noundef %57, ptr noundef nonnull %63) #12
  br label %64

64:                                               ; preds = %58, %62, %9, %8
  %65 = phi ptr [ null, %8 ], [ %15, %9 ], [ %15, %62 ], [ %15, %58 ]
  ret ptr %65
}

; Function Attrs: optsize
declare ptr @BKE_mask_spline_point_array(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_curve_forward_diff_bezier(float noundef, float noundef, float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !64 {
  %3 = load float, ptr %1, align 4, !tbaa !56
  store float %3, ptr %0, align 4, !tbaa !56
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !56
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !56
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_mask_spline_differentiate(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = tail call i32 @BKE_mask_spline_resolution(ptr noundef %0, i32 noundef %1, i32 noundef %2) #12
  %6 = tail call ptr @BKE_mask_spline_differentiate_with_resolution(ptr noundef %0, ptr noundef %3, i32 noundef %5) #12
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_spline_feather_collapse_inner_loops(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [2 x float], align 8
  %5 = alloca [2 x float], align 8
  %6 = alloca [2 x float], align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  %11 = icmp ult i32 %2, 4
  br i1 %11, label %146, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %5, align 8, !tbaa !56
  %14 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %6, align 8, !tbaa !56
  %15 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 2
  %16 = zext i32 %2 to i64
  br label %17

17:                                               ; preds = %12, %27
  %18 = phi i64 [ 0, %12 ], [ %20, %27 ]
  %19 = phi <2 x float> [ <float -1.000000e+00, float -1.000000e+00>, %12 ], [ %36, %27 ]
  %20 = add nuw nsw i64 %18, 1
  %21 = getelementptr inbounds [2 x float], ptr %1, i64 %18
  call void @minmax_v2v2_v2(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %21) #13
  %22 = icmp eq i64 %20, %16
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i16, ptr %15, align 8, !tbaa !60
  %25 = and i16 %24, 2
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %17, %23
  %28 = phi i64 [ %20, %17 ], [ 0, %23 ]
  %29 = and i64 %28, 4294967295
  %30 = getelementptr inbounds [2 x float], ptr %1, i64 %29
  %31 = load <2 x float>, ptr %21, align 4, !tbaa !56
  %32 = load <2 x float>, ptr %30, align 4, !tbaa !56
  %33 = fsub <2 x float> %31, %32
  %34 = call <2 x float> @llvm.fabs.v2f32(<2 x float> %33)
  %35 = fcmp ogt <2 x float> %34, %19
  %36 = select <2 x i1> %35, <2 x float> %34, <2 x float> %19
  %37 = icmp eq i64 %20, %16
  br i1 %37, label %38, label %17, !llvm.loop !65

38:                                               ; preds = %23, %27
  %39 = phi <2 x float> [ %19, %23 ], [ %36, %27 ]
  %40 = load float, ptr %6, align 8, !tbaa !56
  %41 = load float, ptr %5, align 8, !tbaa !56
  %42 = fsub float %40, %41
  %43 = fcmp olt float %42, 0x3E80000000000000
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = fadd float %40, 0x3F847AE140000000
  store float %45, ptr %6, align 8, !tbaa !56
  %46 = fadd float %41, 0xBF847AE140000000
  store float %46, ptr %5, align 8, !tbaa !56
  br label %47

47:                                               ; preds = %44, %38
  %48 = phi float [ %46, %44 ], [ %41, %38 ]
  %49 = phi float [ %45, %44 ], [ %40, %38 ]
  %50 = load float, ptr %14, align 4, !tbaa !56
  %51 = load float, ptr %13, align 4, !tbaa !56
  %52 = fsub float %50, %51
  %53 = fcmp olt float %52, 0x3E80000000000000
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = fadd float %50, 0x3F847AE140000000
  store float %55, ptr %14, align 4, !tbaa !56
  %56 = fadd float %51, 0xBF847AE140000000
  store float %56, ptr %13, align 4, !tbaa !56
  %57 = fsub float %55, %56
  br label %58

58:                                               ; preds = %54, %47
  %59 = phi float [ %57, %54 ], [ %52, %47 ]
  %60 = fsub float %49, %48
  %61 = insertelement <2 x float> poison, float %60, i64 0
  %62 = insertelement <2 x float> %61, float %59, i64 1
  %63 = fdiv <2 x float> %39, %62
  %64 = extractelement <2 x float> %63, i64 0
  %65 = extractelement <2 x float> %63, i64 1
  %66 = fcmp ogt float %64, %65
  %67 = select i1 %66, float %64, float %65
  %68 = fdiv float 0x3FECCCCCC0000000, %67
  %69 = fptosi float %68 to i32
  %70 = call fastcc i32 @min_ii(i32 noundef %69) #12
  %71 = call i32 @llvm.umax.i32(i32 %70, i32 1)
  %72 = mul nsw i32 %71, %71
  %73 = sitofp i32 %71 to float
  %74 = fdiv float 1.000000e+00, %73
  %75 = insertelement <2 x float> poison, float %74, i64 0
  %76 = shufflevector <2 x float> %75, <2 x float> poison, <2 x i32> zeroinitializer
  %77 = fmul <2 x float> %62, %76
  %78 = fdiv <2 x float> <float 1.000000e+00, float 1.000000e+00>, %77
  store <2 x float> %78, ptr %4, align 8, !tbaa !56
  %79 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %80 = zext nneg i32 %72 to i64
  %81 = mul nuw nsw i64 %80, 24
  %82 = call ptr %79(i64 noundef %81, ptr noundef nonnull @.str.1) #13
  %83 = call i32 @llvm.umax.i32(i32 %2, i32 1)
  br label %84

84:                                               ; preds = %58, %107
  %85 = phi i32 [ 0, %58 ], [ %86, %107 ]
  %86 = add nuw i32 %85, 1
  %87 = icmp eq i32 %86, %2
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i16, ptr %15, align 8, !tbaa !60
  %90 = and i16 %89, 2
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %109, label %92

92:                                               ; preds = %88, %84
  %93 = phi i32 [ %86, %84 ], [ 0, %88 ]
  %94 = sext i32 %85 to i64
  %95 = getelementptr inbounds [2 x float], ptr %1, i64 %94
  %96 = call fastcc i32 @feather_bucket_index_from_coord(ptr noundef %95, ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef %71) #12
  %97 = sext i32 %93 to i64
  %98 = getelementptr inbounds [2 x float], ptr %1, i64 %97
  %99 = call fastcc i32 @feather_bucket_index_from_coord(ptr noundef %98, ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef %71) #12
  %100 = sext i32 %96 to i64
  %101 = getelementptr inbounds %struct.FeatherEdgesBucket, ptr %82, i64 %100
  call fastcc void @feather_bucket_add_edge(ptr noundef %101, i32 noundef %85, i32 noundef %93) #12
  %102 = icmp eq i32 %96, %99
  br i1 %102, label %107, label %103

103:                                              ; preds = %92
  %104 = sext i32 %99 to i64
  %105 = getelementptr inbounds %struct.FeatherEdgesBucket, ptr %82, i64 %104
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  call fastcc void @feather_bucket_get_diagonal(ptr noundef %82, i32 noundef %96, i32 noundef %99, i32 noundef %71, ptr noundef nonnull %7, ptr noundef nonnull %8) #12
  call fastcc void @feather_bucket_add_edge(ptr noundef %105, i32 noundef %85, i32 noundef %93) #12
  %106 = load ptr, ptr %7, align 8, !tbaa !62
  call fastcc void @feather_bucket_add_edge(ptr noundef %106, i32 noundef %85, i32 noundef %93) #12
  call fastcc void @feather_bucket_add_edge(ptr noundef %106, i32 noundef %85, i32 noundef %93) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  br label %107

107:                                              ; preds = %92, %103
  %108 = icmp eq i32 %86, %83
  br i1 %108, label %109, label %84, !llvm.loop !66

109:                                              ; preds = %88, %107
  br label %110

110:                                              ; preds = %109, %129
  %111 = phi i32 [ %112, %129 ], [ 0, %109 ]
  %112 = add nuw i32 %111, 1
  %113 = icmp eq i32 %112, %2
  %114 = select i1 %113, i32 0, i32 %112
  %115 = sext i32 %111 to i64
  %116 = getelementptr inbounds [2 x float], ptr %1, i64 %115
  %117 = call fastcc i32 @feather_bucket_index_from_coord(ptr noundef %116, ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef %71) #12
  %118 = sext i32 %114 to i64
  %119 = getelementptr inbounds [2 x float], ptr %1, i64 %118
  %120 = call fastcc i32 @feather_bucket_index_from_coord(ptr noundef %119, ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef %71) #12
  %121 = sext i32 %117 to i64
  %122 = getelementptr inbounds %struct.FeatherEdgesBucket, ptr %82, i64 %121
  call fastcc void @feather_bucket_check_intersect(ptr noundef %1, i32 noundef %2, ptr noundef %122, i32 noundef %111, i32 noundef %114) #12
  %123 = icmp eq i32 %117, %120
  br i1 %123, label %129, label %124

124:                                              ; preds = %110
  %125 = sext i32 %120 to i64
  %126 = getelementptr inbounds %struct.FeatherEdgesBucket, ptr %82, i64 %125
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #14
  call fastcc void @feather_bucket_get_diagonal(ptr noundef %82, i32 noundef %117, i32 noundef %120, i32 noundef %71, ptr noundef nonnull %9, ptr noundef nonnull %10) #12
  call fastcc void @feather_bucket_check_intersect(ptr noundef %1, i32 noundef %2, ptr noundef %126, i32 noundef %111, i32 noundef %114) #12
  %127 = load ptr, ptr %9, align 8, !tbaa !62
  call fastcc void @feather_bucket_check_intersect(ptr noundef %1, i32 noundef %2, ptr noundef %127, i32 noundef %111, i32 noundef %114) #12
  %128 = load ptr, ptr %10, align 8, !tbaa !62
  call fastcc void @feather_bucket_check_intersect(ptr noundef %1, i32 noundef %2, ptr noundef %128, i32 noundef %111, i32 noundef %114) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  br label %129

129:                                              ; preds = %124, %110
  %130 = icmp eq i32 %112, %83
  br i1 %130, label %131, label %110, !llvm.loop !67

131:                                              ; preds = %129
  %132 = call i32 @llvm.umax.i32(i32 %72, i32 1)
  %133 = zext nneg i32 %132 to i64
  br label %134

134:                                              ; preds = %131, %141
  %135 = phi i64 [ 0, %131 ], [ %142, %141 ]
  %136 = getelementptr inbounds %struct.FeatherEdgesBucket, ptr %82, i64 %135, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !68
  %138 = icmp eq ptr %137, null
  br i1 %138, label %141, label %139

139:                                              ; preds = %134
  %140 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  call void %140(ptr noundef nonnull %137) #13
  br label %141

141:                                              ; preds = %134, %139
  %142 = add nuw nsw i64 %135, 1
  %143 = icmp eq i64 %142, %133
  br i1 %143, label %144, label %134, !llvm.loop !70

144:                                              ; preds = %141
  %145 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  call void %145(ptr noundef nonnull %82) #13
  br label %146

146:                                              ; preds = %3, %144
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret void
}

; Function Attrs: optsize
declare void @minmax_v2v2_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0) unnamed_addr #2 !PGOFuncName !71 {
  %2 = tail call i32 @llvm.smin.i32(i32 %0, i32 512)
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @feather_bucket_index_from_coord(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #6 !PGOFuncName !72 {
  %5 = load <2 x float>, ptr %0, align 4, !tbaa !56
  %6 = load <2 x float>, ptr %1, align 4, !tbaa !56
  %7 = fsub <2 x float> %5, %6
  %8 = load <2 x float>, ptr %2, align 4, !tbaa !56
  %9 = fmul <2 x float> %7, %8
  %10 = fptosi <2 x float> %9 to <2 x i32>
  %11 = insertelement <2 x i32> poison, i32 %3, i64 0
  %12 = shufflevector <2 x i32> %11, <2 x i32> poison, <2 x i32> zeroinitializer
  %13 = icmp eq <2 x i32> %12, %10
  %14 = sext <2 x i1> %13 to <2 x i32>
  %15 = add nsw <2 x i32> %14, %10
  %16 = extractelement <2 x i32> %15, i64 1
  %17 = mul nsw i32 %16, %3
  %18 = extractelement <2 x i32> %15, i64 0
  %19 = add nsw i32 %18, %17
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @feather_bucket_add_edge(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !73 {
  %4 = load i32, ptr %0, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct.FeatherEdgesBucket, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !75
  %7 = icmp slt i32 %4, %6
  %8 = getelementptr inbounds %struct.FeatherEdgesBucket, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  br i1 %7, label %26, label %10

10:                                               ; preds = %3
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %14 = tail call ptr %13(i64 noundef 2048, ptr noundef nonnull @.str.5) #13
  br label %21

15:                                               ; preds = %10
  %16 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !62
  %17 = add nsw i32 %4, 256
  %18 = sext i32 %17 to i64
  %19 = shl nsw i64 %18, 3
  %20 = tail call ptr %16(ptr noundef nonnull %9, i64 noundef %19, ptr noundef nonnull @__func__.feather_bucket_add_edge) #13
  br label %21

21:                                               ; preds = %15, %12
  %22 = phi ptr [ %14, %12 ], [ %20, %15 ]
  store ptr %22, ptr %8, align 8, !tbaa !68
  %23 = load i32, ptr %5, align 8, !tbaa !75
  %24 = add nsw i32 %23, 256
  store i32 %24, ptr %5, align 8, !tbaa !75
  %25 = load i32, ptr %0, align 8, !tbaa !74
  br label %26

26:                                               ; preds = %3, %21
  %27 = phi i32 [ %25, %21 ], [ %4, %3 ]
  %28 = phi ptr [ %22, %21 ], [ %9, %3 ]
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds [2 x i32], ptr %28, i64 %29
  store i32 %1, ptr %30, align 4, !tbaa !61
  %31 = load i32, ptr %0, align 8, !tbaa !74
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [2 x i32], ptr %28, i64 %32, i64 1
  store i32 %2, ptr %33, align 4, !tbaa !61
  %34 = load i32, ptr %0, align 8, !tbaa !74
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %0, align 8, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @feather_bucket_get_diagonal(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #8 !PGOFuncName !76 {
  %7 = srem i32 %1, %3
  %8 = srem i32 %2, %3
  %9 = sub nsw i32 %1, %7
  %10 = add nsw i32 %9, %8
  %11 = add i32 %7, %2
  %12 = sub i32 %11, %8
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds %struct.FeatherEdgesBucket, ptr %0, i64 %13
  store ptr %14, ptr %4, align 8, !tbaa !62
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds %struct.FeatherEdgesBucket, ptr %0, i64 %15
  store ptr %16, ptr %5, align 8, !tbaa !62
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @feather_bucket_check_intersect(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !77 {
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 8
  %8 = alloca [2 x float], align 8
  %9 = alloca [2 x float], align 8
  %10 = alloca [2 x float], align 8
  %11 = sext i32 %3 to i64
  %12 = getelementptr inbounds [2 x float], ptr %0, i64 %11
  %13 = sext i32 %4 to i64
  %14 = getelementptr inbounds [2 x float], ptr %0, i64 %13
  %15 = load i32, ptr %2, align 8, !tbaa !74
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %107

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.FeatherEdgesBucket, ptr %2, i64 0, i32 1
  %19 = add nsw i32 %3, -1
  %20 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %21 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  %22 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  %23 = getelementptr inbounds [2 x float], ptr %10, i64 0, i64 1
  %24 = icmp sgt i32 %1, 0
  %25 = icmp eq i32 %4, 0
  %26 = icmp sge i32 %4, %1
  %27 = add i32 %3, 1
  %28 = zext nneg i32 %1 to i64
  %29 = or i1 %25, %26
  %30 = sext i32 %1 to i64
  br label %31

31:                                               ; preds = %17, %102
  %32 = phi i64 [ 0, %17 ], [ %103, %102 ]
  %33 = load ptr, ptr %18, align 8, !tbaa !68
  %34 = getelementptr inbounds [2 x i32], ptr %33, i64 %32
  %35 = load i32, ptr %34, align 4, !tbaa !61
  %36 = getelementptr inbounds [2 x i32], ptr %33, i64 %32, i64 1
  %37 = load i32, ptr %36, align 4, !tbaa !61
  %38 = sext i32 %35 to i64
  %39 = getelementptr inbounds [2 x float], ptr %0, i64 %38
  %40 = sext i32 %37 to i64
  %41 = getelementptr inbounds [2 x float], ptr %0, i64 %40
  %42 = icmp sge i32 %35, %19
  %43 = icmp eq i32 %35, %4
  %44 = or i1 %42, %43
  br i1 %44, label %102, label %45

45:                                               ; preds = %31
  %46 = call zeroext i8 @isect_seg_seg_v2(ptr noundef %12, ptr noundef %14, ptr noundef %39, ptr noundef %41) #13
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %102, label %48

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #14
  %49 = call i32 @isect_seg_seg_v2_point(ptr noundef %12, ptr noundef %14, ptr noundef %39, ptr noundef %41, ptr noundef nonnull %6) #13
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %7, align 8, !tbaa !56
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %8, align 8, !tbaa !56
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %9, align 8, !tbaa !56
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %10, align 8, !tbaa !56
  br i1 %24, label %50, label %69

50:                                               ; preds = %48, %58
  %51 = phi i64 [ %59, %58 ], [ 0, %48 ]
  %52 = icmp slt i64 %51, %40
  %53 = icmp sgt i64 %51, %11
  %54 = or i1 %52, %53
  %55 = getelementptr inbounds [2 x float], ptr %0, i64 %51
  br i1 %54, label %57, label %56

56:                                               ; preds = %50
  call void @minmax_v2v2_v2(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %55) #13
  br label %58

57:                                               ; preds = %50
  call void @minmax_v2v2_v2(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %55) #13
  br label %58

58:                                               ; preds = %56, %57
  %59 = add nuw nsw i64 %51, 1
  %60 = icmp eq i64 %59, %28
  br i1 %60, label %61, label %50, !llvm.loop !78

61:                                               ; preds = %58
  %62 = load float, ptr %8, align 8, !tbaa !56
  %63 = load float, ptr %7, align 8, !tbaa !56
  %64 = load float, ptr %10, align 8, !tbaa !56
  %65 = load float, ptr %9, align 8, !tbaa !56
  %66 = fsub float %62, %63
  %67 = fsub float %64, %65
  %68 = fcmp olt float %66, %67
  br i1 %68, label %82, label %69

69:                                               ; preds = %48, %61
  %70 = load float, ptr %21, align 4, !tbaa !56
  %71 = load float, ptr %20, align 4, !tbaa !56
  %72 = fsub float %70, %71
  %73 = load float, ptr %23, align 4, !tbaa !56
  %74 = load float, ptr %22, align 4, !tbaa !56
  %75 = fsub float %73, %74
  %76 = fcmp olt float %72, %75
  br i1 %76, label %82, label %77

77:                                               ; preds = %69
  %78 = icmp slt i32 %35, 0
  br i1 %78, label %95, label %79

79:                                               ; preds = %77
  %80 = add nuw i32 %35, 1
  %81 = zext i32 %80 to i64
  br label %90

82:                                               ; preds = %69, %61
  %83 = icmp sgt i32 %37, %3
  br i1 %83, label %101, label %84

84:                                               ; preds = %82, %84
  %85 = phi i64 [ %87, %84 ], [ %40, %82 ]
  %86 = getelementptr inbounds [2 x float], ptr %0, i64 %85
  call fastcc void @copy_v2_v2(ptr noundef %86, ptr noundef nonnull %6) #12
  %87 = add nsw i64 %85, 1
  %88 = trunc i64 %87 to i32
  %89 = icmp eq i32 %27, %88
  br i1 %89, label %101, label %84, !llvm.loop !79

90:                                               ; preds = %79, %90
  %91 = phi i64 [ 0, %79 ], [ %93, %90 ]
  %92 = getelementptr inbounds [2 x float], ptr %0, i64 %91
  call fastcc void @copy_v2_v2(ptr noundef %92, ptr noundef nonnull %6) #12
  %93 = add nuw nsw i64 %91, 1
  %94 = icmp eq i64 %93, %81
  br i1 %94, label %95, label %90, !llvm.loop !80

95:                                               ; preds = %90, %77
  br i1 %29, label %101, label %96

96:                                               ; preds = %95, %96
  %97 = phi i64 [ %99, %96 ], [ %13, %95 ]
  %98 = getelementptr inbounds [2 x float], ptr %0, i64 %97
  call fastcc void @copy_v2_v2(ptr noundef %98, ptr noundef nonnull %6) #12
  %99 = add nsw i64 %97, 1
  %100 = icmp eq i64 %99, %30
  br i1 %100, label %101, label %96, !llvm.loop !81

101:                                              ; preds = %96, %84, %95, %82
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  br label %102

102:                                              ; preds = %45, %101, %31
  %103 = add nuw nsw i64 %32, 1
  %104 = load i32, ptr %2, align 8, !tbaa !74
  %105 = sext i32 %104 to i64
  %106 = icmp slt i64 %103, %105
  br i1 %106, label %31, label %107, !llvm.loop !82

107:                                              ; preds = %102, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_mask_spline_feather_differentiated_points_with_resolution(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 3
  %6 = load i8, ptr %5, align 2, !tbaa !83
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @mask_spline_feather_differentiated_points_with_resolution__even(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) #12
  br label %12

10:                                               ; preds = %4
  %11 = tail call fastcc ptr @mask_spline_feather_differentiated_points_with_resolution__double(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) #12
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi ptr [ %9, %8 ], [ %11, %10 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @mask_spline_feather_differentiated_points_with_resolution__even(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !PGOFuncName !84 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = tail call ptr @BKE_mask_spline_point_array(ptr noundef %0) #13
  %10 = tail call i32 @BKE_mask_spline_differentiate_calc_total(ptr noundef %0, i32 noundef %2) #12
  %11 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !62
  %12 = add nsw i32 %10, 1
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 3
  %15 = tail call ptr %11(i64 noundef %14, ptr noundef nonnull @.str.6) #13
  %16 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %17 = load i32, ptr %16, align 4, !tbaa !35
  %18 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 2
  %19 = load i16, ptr %18, align 8, !tbaa !60
  %20 = lshr i16 %19, 1
  %21 = and i16 %20, 1
  %22 = add nsw i16 %21, -1
  %23 = sext i16 %22 to i32
  %24 = add nsw i32 %17, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %62, label %26

26:                                               ; preds = %4
  %27 = icmp eq i32 %2, 0
  %28 = uitofp i32 %2 to float
  br label %29

29:                                               ; preds = %52, %26
  %30 = phi i32 [ %24, %26 ], [ %34, %52 ]
  %31 = phi ptr [ %9, %26 ], [ %42, %52 ]
  %32 = phi ptr [ %15, %26 ], [ %53, %52 ]
  %33 = getelementptr inbounds %struct.MaskSplinePoint, ptr %31, i64 1
  %34 = add nsw i32 %30, -1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load i16, ptr %18, align 8, !tbaa !60
  %38 = and i16 %37, 2
  %39 = icmp eq i16 %38, 0
  %40 = select i1 %39, ptr %33, ptr %9
  br label %41

41:                                               ; preds = %36, %29
  %42 = phi ptr [ %33, %29 ], [ %40, %36 ]
  br i1 %27, label %52, label %43

43:                                               ; preds = %41, %43
  %44 = phi ptr [ %50, %43 ], [ %32, %41 ]
  %45 = phi i32 [ %49, %43 ], [ 0, %41 ]
  %46 = sitofp i32 %45 to float
  %47 = fdiv float %46, %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  call void @BKE_mask_point_segment_co(ptr noundef %0, ptr noundef %31, float noundef %47, ptr noundef nonnull %5) #13
  call void @BKE_mask_point_normal(ptr noundef %0, ptr noundef %31, float noundef %47, ptr noundef nonnull %6) #13
  %48 = call float @BKE_mask_point_weight(ptr noundef %0, ptr noundef %31, float noundef %47) #13
  call fastcc void @madd_v2_v2v2fl(ptr noundef %44, ptr noundef nonnull %5, ptr noundef nonnull %6, float noundef %48) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  %49 = add nuw i32 %45, 1
  %50 = getelementptr inbounds [2 x float], ptr %44, i64 1
  %51 = icmp eq i32 %49, %2
  br i1 %51, label %52, label %43, !llvm.loop !85

52:                                               ; preds = %43, %41
  %53 = phi ptr [ %32, %41 ], [ %50, %43 ]
  br i1 %35, label %54, label %29, !llvm.loop !86

54:                                               ; preds = %52
  %55 = load i16, ptr %18, align 8, !tbaa !60
  %56 = and i16 %55, 2
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  call void @BKE_mask_point_segment_co(ptr noundef nonnull %0, ptr noundef %31, float noundef 1.000000e+00, ptr noundef nonnull %7) #13
  call void @BKE_mask_point_normal(ptr noundef nonnull %0, ptr noundef %31, float noundef 1.000000e+00, ptr noundef nonnull %8) #13
  %59 = call float @BKE_mask_point_weight(ptr noundef nonnull %0, ptr noundef %31, float noundef 1.000000e+00) #13
  call fastcc void @madd_v2_v2v2fl(ptr noundef %53, ptr noundef nonnull %7, ptr noundef nonnull %8, float noundef %59) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  br label %60

60:                                               ; preds = %58, %54
  %61 = load i16, ptr %18, align 8, !tbaa !60
  br label %62

62:                                               ; preds = %60, %4
  %63 = phi i16 [ %61, %60 ], [ %19, %4 ]
  store i32 %10, ptr %1, align 4, !tbaa !61
  %64 = and i16 %63, 8
  %65 = icmp ne i16 %64, 0
  %66 = icmp ne i8 %3, 0
  %67 = and i1 %66, %65
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  call void @BKE_mask_spline_feather_collapse_inner_loops(ptr noundef nonnull %0, ptr noundef %15, i32 noundef %10) #12
  br label %69

69:                                               ; preds = %68, %62
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @mask_spline_feather_differentiated_points_with_resolution__double(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !PGOFuncName !87 {
  %5 = alloca %struct.BezTriple, align 4
  %6 = alloca %struct.BezTriple, align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca [2 x float], align 4
  %11 = tail call ptr @BKE_mask_spline_point_array(ptr noundef %0) #13
  %12 = tail call i32 @BKE_mask_spline_differentiate_calc_total(ptr noundef %0, i32 noundef %2) #12
  %13 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !35
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, ptr %1, align 4, !tbaa !61
  br label %125

17:                                               ; preds = %4
  store i32 %12, ptr %1, align 4, !tbaa !61
  %18 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !62
  %19 = add nsw i32 %12, 1
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 3
  %22 = tail call ptr %18(i64 noundef %21, ptr noundef nonnull @.str) #13
  %23 = load i32, ptr %13, align 4, !tbaa !35
  %24 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 2
  %25 = load i16, ptr %24, align 8, !tbaa !60
  %26 = lshr i16 %25, 1
  %27 = and i16 %26, 1
  %28 = add nsw i16 %27, -1
  %29 = sext i16 %28 to i32
  %30 = add nsw i32 %23, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %118, label %32

32:                                               ; preds = %17
  %33 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1
  %34 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  %35 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %36 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  %37 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  %38 = getelementptr inbounds %struct.BezTriple, ptr %5, i64 0, i32 2
  %39 = getelementptr inbounds %struct.BezTriple, ptr %6, i64 0, i32 2
  %40 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2
  %41 = icmp eq i32 %2, 0
  %42 = uitofp i32 %2 to float
  %43 = zext i32 %2 to i64
  %44 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1, i64 0
  %45 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2, i64 0
  %46 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 0
  %47 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1, i64 1
  %48 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2, i64 1
  %49 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %50 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  br label %51

51:                                               ; preds = %115, %32
  %52 = phi i32 [ %30, %32 ], [ %56, %115 ]
  %53 = phi ptr [ %11, %32 ], [ %64, %115 ]
  %54 = phi ptr [ %22, %32 ], [ %109, %115 ]
  %55 = getelementptr inbounds %struct.MaskSplinePoint, ptr %53, i64 1
  %56 = add nsw i32 %52, -1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load i16, ptr %24, align 8, !tbaa !60
  %60 = and i16 %59, 2
  %61 = icmp eq i16 %60, 0
  %62 = select i1 %61, ptr %55, ptr %11
  br label %63

63:                                               ; preds = %58, %51
  %64 = phi ptr [ %55, %51 ], [ %62, %58 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %5, ptr noundef nonnull align 4 dereferenceable(72) %53, i64 72, i1 false), !tbaa.struct !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %6, ptr noundef nonnull align 4 dereferenceable(72) %64, i64 72, i1 false), !tbaa.struct !88
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %9, ptr noundef nonnull %33, ptr noundef nonnull %5) #12
  call fastcc void @normalize_v2(ptr noundef nonnull %9) #12
  %65 = load float, ptr %34, align 4, !tbaa !56
  %66 = fneg float %65
  store float %66, ptr %7, align 4, !tbaa !56
  %67 = load float, ptr %9, align 4, !tbaa !56
  store float %67, ptr %35, align 4, !tbaa !56
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %9, ptr noundef nonnull %36, ptr noundef nonnull %6) #12
  call fastcc void @normalize_v2(ptr noundef nonnull %9) #12
  %68 = load float, ptr %34, align 4, !tbaa !56
  %69 = fneg float %68
  store float %69, ptr %8, align 4, !tbaa !56
  %70 = load float, ptr %9, align 4, !tbaa !56
  store float %70, ptr %37, align 4, !tbaa !56
  %71 = load float, ptr %38, align 4, !tbaa !90
  %72 = load float, ptr %39, align 4, !tbaa !90
  call fastcc void @mul_v2_fl(ptr noundef nonnull %7, float noundef %71) #12
  call fastcc void @mul_v2_fl(ptr noundef nonnull %8, float noundef %72) #12
  %73 = call fastcc float @len_v2v2(ptr noundef nonnull %33, ptr noundef nonnull %36) #12
  call fastcc void @add_v2_v2(ptr noundef nonnull %33, ptr noundef nonnull %7) #12
  call fastcc void @add_v2_v2(ptr noundef nonnull %40, ptr noundef nonnull %7) #12
  call fastcc void @add_v2_v2(ptr noundef nonnull %6, ptr noundef nonnull %8) #12
  call fastcc void @add_v2_v2(ptr noundef nonnull %36, ptr noundef nonnull %8) #12
  %74 = call fastcc float @len_v2v2(ptr noundef nonnull %33, ptr noundef nonnull %36) #12
  %75 = fdiv float %74, %73
  %76 = call fastcc float @len_v2v2(ptr noundef nonnull %40, ptr noundef nonnull %33) #12
  %77 = fmul float %75, %76
  call void @dist_ensure_v2_v2fl(ptr noundef nonnull %40, ptr noundef nonnull %33, float noundef %77) #13
  %78 = call fastcc float @len_v2v2(ptr noundef nonnull %6, ptr noundef nonnull %36) #12
  %79 = fmul float %75, %78
  call void @dist_ensure_v2_v2fl(ptr noundef nonnull %6, ptr noundef nonnull %36, float noundef %79) #13
  %80 = load float, ptr %44, align 4, !tbaa !56
  %81 = load float, ptr %45, align 4, !tbaa !56
  %82 = load float, ptr %6, align 4, !tbaa !56
  %83 = load float, ptr %46, align 4, !tbaa !56
  call void @BKE_curve_forward_diff_bezier(float noundef %80, float noundef %81, float noundef %82, float noundef %83, ptr noundef %54, i32 noundef %2, i32 noundef 8) #13
  %84 = load float, ptr %47, align 4, !tbaa !56
  %85 = load float, ptr %48, align 4, !tbaa !56
  %86 = load float, ptr %49, align 4, !tbaa !56
  %87 = load float, ptr %50, align 4, !tbaa !56
  %88 = getelementptr inbounds [2 x float], ptr %54, i64 0, i64 1
  call void @BKE_curve_forward_diff_bezier(float noundef %84, float noundef %85, float noundef %86, float noundef %87, ptr noundef nonnull %88, i32 noundef %2, i32 noundef 8) #13
  %89 = getelementptr inbounds %struct.MaskSplinePoint, ptr %53, i64 0, i32 2
  %90 = load i32, ptr %89, align 4, !tbaa !48
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %106, label %92

92:                                               ; preds = %63
  br i1 %41, label %108, label %93

93:                                               ; preds = %92, %93
  %94 = phi i32 [ %103, %93 ], [ 0, %92 ]
  %95 = phi ptr [ %104, %93 ], [ %54, %92 ]
  %96 = sitofp i32 %94 to float
  %97 = fdiv float %96, %42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #14
  call void @BKE_mask_point_segment_co(ptr noundef %0, ptr noundef %53, float noundef %97, ptr noundef nonnull %10) #13
  %98 = call float @BKE_mask_point_weight(ptr noundef %0, ptr noundef %53, float noundef %97) #13
  %99 = call float @BKE_mask_point_weight_scalar(ptr noundef %0, ptr noundef %53, float noundef %97) #13
  %100 = call fastcc float @len_v2v2(ptr noundef %95, ptr noundef nonnull %10) #12
  %101 = fdiv float %98, %99
  %102 = fmul float %100, %101
  call void @dist_ensure_v2_v2fl(ptr noundef %95, ptr noundef nonnull %10, float noundef %102) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #14
  %103 = add nuw i32 %94, 1
  %104 = getelementptr inbounds [2 x float], ptr %95, i64 1
  %105 = icmp eq i32 %103, %2
  br i1 %105, label %108, label %93, !llvm.loop !91

106:                                              ; preds = %63
  %107 = getelementptr inbounds [2 x float], ptr %54, i64 %43
  br label %108

108:                                              ; preds = %93, %92, %106
  %109 = phi ptr [ %107, %106 ], [ %54, %92 ], [ %104, %93 ]
  br i1 %57, label %110, label %115

110:                                              ; preds = %108
  %111 = load i16, ptr %24, align 8, !tbaa !60
  %112 = and i16 %111, 2
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  call fastcc void @copy_v2_v2(ptr noundef %109, ptr noundef nonnull %36) #12
  br label %116

115:                                              ; preds = %108
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #14
  br label %51, !llvm.loop !92

116:                                              ; preds = %114, %110
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #14
  %117 = load i16, ptr %24, align 8, !tbaa !60
  br label %118

118:                                              ; preds = %116, %17
  %119 = phi i16 [ %117, %116 ], [ %25, %17 ]
  %120 = and i16 %119, 8
  %121 = icmp ne i16 %120, 0
  %122 = icmp ne i8 %3, 0
  %123 = and i1 %122, %121
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  call void @BKE_mask_spline_feather_collapse_inner_loops(ptr noundef nonnull %0, ptr noundef %22, i32 noundef %12) #12
  br label %125

125:                                              ; preds = %118, %124, %16
  %126 = phi ptr [ null, %16 ], [ %22, %124 ], [ %22, %118 ]
  ret ptr %126
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_mask_spline_feather_points(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca [2 x float], align 4
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @BKE_mask_spline_point_array(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !35
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
  br i1 %19, label %20, label %11, !llvm.loop !93

20:                                               ; preds = %11, %2
  %21 = phi i32 [ 0, %2 ], [ %17, %11 ]
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !62
  %23 = sext i32 %21 to i64
  %24 = shl nsw i64 %23, 3
  %25 = tail call ptr %22(i64 noundef %24, ptr noundef nonnull @.str.2) #13
  %26 = load i32, ptr %6, align 4, !tbaa !35
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %20, %52
  %29 = phi i64 [ %54, %52 ], [ 0, %20 ]
  %30 = phi ptr [ %53, %52 ], [ %25, %20 ]
  %31 = getelementptr inbounds %struct.MaskSplinePoint, ptr %5, i64 %29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  call void @BKE_mask_point_normal(ptr noundef nonnull %0, ptr noundef %31, float noundef 0.000000e+00, ptr noundef nonnull %3) #13
  %32 = call float @BKE_mask_point_weight(ptr noundef nonnull %0, ptr noundef %31, float noundef 0.000000e+00) #13
  %33 = getelementptr inbounds [3 x [3 x float]], ptr %31, i64 0, i64 1
  call fastcc void @madd_v2_v2v2fl(ptr noundef %30, ptr noundef nonnull %33, ptr noundef nonnull %3, float noundef %32) #12
  %34 = getelementptr inbounds %struct.MaskSplinePoint, ptr %5, i64 %29, i32 2
  %35 = getelementptr inbounds [2 x float], ptr %30, i64 1
  %36 = load i32, ptr %34, align 4, !tbaa !48
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.MaskSplinePoint, ptr %5, i64 %29, i32 3
  br label %40

40:                                               ; preds = %38, %40
  %41 = phi i64 [ 0, %38 ], [ %47, %40 ]
  %42 = phi ptr [ %35, %38 ], [ %48, %40 ]
  %43 = load ptr, ptr %39, align 8, !tbaa !52
  %44 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %43, i64 %41
  %45 = load float, ptr %44, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  call void @BKE_mask_point_segment_co(ptr noundef %0, ptr noundef nonnull %31, float noundef %45, ptr noundef nonnull %4) #13
  call void @BKE_mask_point_normal(ptr noundef %0, ptr noundef nonnull %31, float noundef %45, ptr noundef nonnull %3) #13
  %46 = call float @BKE_mask_point_weight(ptr noundef %0, ptr noundef nonnull %31, float noundef %45) #13
  call fastcc void @madd_v2_v2v2fl(ptr noundef nonnull %42, ptr noundef nonnull %4, ptr noundef nonnull %3, float noundef %46) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  %47 = add nuw nsw i64 %41, 1
  %48 = getelementptr inbounds [2 x float], ptr %42, i64 1
  %49 = load i32, ptr %34, align 4, !tbaa !48
  %50 = sext i32 %49 to i64
  %51 = icmp slt i64 %47, %50
  br i1 %51, label %40, label %52, !llvm.loop !94

52:                                               ; preds = %40, %28
  %53 = phi ptr [ %35, %28 ], [ %48, %40 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  %54 = add nuw nsw i64 %29, 1
  %55 = load i32, ptr %6, align 4, !tbaa !35
  %56 = sext i32 %55 to i64
  %57 = icmp slt i64 %54, %56
  br i1 %57, label %28, label %58, !llvm.loop !95

58:                                               ; preds = %52, %20
  store i32 %21, ptr %1, align 4, !tbaa !61
  ret ptr %25
}

; Function Attrs: optsize
declare void @BKE_mask_point_normal(ptr noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @BKE_mask_point_weight(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v2_v2v2fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #7 !PGOFuncName !96 {
  %5 = load float, ptr %1, align 4, !tbaa !56
  %6 = load float, ptr %2, align 4, !tbaa !56
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !56
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !56
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !56
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !56
  ret void
}

; Function Attrs: optsize
declare void @BKE_mask_point_segment_co(ptr noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_mask_point_segment_feather_diff(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = tail call i32 @BKE_mask_spline_feather_resolution(ptr noundef %0, i32 noundef %2, i32 noundef %3) #12
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %10 = shl i32 %8, 1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 2
  %13 = tail call ptr %9(i64 noundef %12, ptr noundef nonnull @.str.3) #13
  %14 = icmp eq i32 %8, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %5
  %16 = uitofp i32 %8 to float
  %17 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %18 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  br label %19

19:                                               ; preds = %15, %19
  %20 = phi ptr [ %13, %15 ], [ %33, %19 ]
  %21 = phi i32 [ 0, %15 ], [ %32, %19 ]
  %22 = uitofp i32 %21 to float
  %23 = fdiv float %22, %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  call void @BKE_mask_point_segment_co(ptr noundef %0, ptr noundef %1, float noundef %23, ptr noundef nonnull %6) #13
  call void @BKE_mask_point_normal(ptr noundef %0, ptr noundef %1, float noundef %23, ptr noundef nonnull %7) #13
  %24 = call float @BKE_mask_point_weight(ptr noundef %0, ptr noundef %1, float noundef %23) #13
  %25 = load float, ptr %6, align 4, !tbaa !56
  %26 = load float, ptr %7, align 4, !tbaa !56
  %27 = call float @llvm.fmuladd.f32(float %26, float %24, float %25)
  store float %27, ptr %20, align 4, !tbaa !56
  %28 = load float, ptr %17, align 4, !tbaa !56
  %29 = load float, ptr %18, align 4, !tbaa !56
  %30 = call float @llvm.fmuladd.f32(float %29, float %24, float %28)
  %31 = getelementptr inbounds float, ptr %20, i64 1
  store float %30, ptr %31, align 4, !tbaa !56
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  %32 = add nuw i32 %21, 1
  %33 = getelementptr inbounds float, ptr %20, i64 2
  %34 = icmp eq i32 %32, %8
  br i1 %34, label %35, label %19, !llvm.loop !97

35:                                               ; preds = %19, %5
  store i32 %8, ptr %4, align 4, !tbaa !61
  ret ptr %13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_mask_point_segment_diff(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = tail call ptr @BKE_mask_spline_point_array_from_point(ptr noundef %0, ptr noundef %1) #13
  %7 = tail call i32 @BKE_mask_spline_resolution(ptr noundef %0, i32 noundef %2, i32 noundef %3) #12
  %8 = tail call ptr @BKE_mask_spline_point_next_bezt(ptr noundef %0, ptr noundef %6, ptr noundef %1) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %37, label %10

10:                                               ; preds = %5
  %11 = add nsw i32 %7, 1
  store i32 %11, ptr %4, align 4, !tbaa !61
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %13 = shl nsw i32 %11, 1
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 2
  %16 = tail call ptr %12(i64 noundef %15, ptr noundef nonnull @.str.4) #13
  %17 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 0
  %18 = load float, ptr %17, align 4, !tbaa !56
  %19 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2, i64 0
  %20 = load float, ptr %19, align 4, !tbaa !56
  %21 = load float, ptr %8, align 4, !tbaa !56
  %22 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 1, i64 0
  %23 = load float, ptr %22, align 4, !tbaa !56
  tail call void @BKE_curve_forward_diff_bezier(float noundef %18, float noundef %20, float noundef %21, float noundef %23, ptr noundef %16, i32 noundef %7, i32 noundef 8) #13
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !56
  %26 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !56
  %28 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !56
  %30 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 1, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !56
  %32 = getelementptr inbounds float, ptr %16, i64 1
  tail call void @BKE_curve_forward_diff_bezier(float noundef %25, float noundef %27, float noundef %29, float noundef %31, ptr noundef nonnull %32, i32 noundef %7, i32 noundef 8) #13
  %33 = shl nsw i32 %7, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, ptr %16, i64 %34
  %36 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 1
  tail call fastcc void @copy_v2_v2(ptr noundef %35, ptr noundef nonnull %36) #12
  br label %37

37:                                               ; preds = %5, %10
  %38 = phi ptr [ %16, %10 ], [ null, %5 ]
  ret ptr %38
}

; Function Attrs: optsize
declare ptr @BKE_mask_spline_point_array_from_point(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #7 !PGOFuncName !98 {
  %4 = load float, ptr %1, align 4, !tbaa !56
  %5 = load float, ptr %2, align 4, !tbaa !56
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !56
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !56
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !56
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !56
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !56
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !56
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !99 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #12
  %3 = tail call float @sqrtf(float noundef %2) #13
  ret float %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !100 {
  %3 = load float, ptr %0, align 4, !tbaa !56
  %4 = load float, ptr %1, align 4, !tbaa !56
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !56
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !56
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !56
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !56
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: optsize
declare zeroext i8 @isect_seg_seg_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @isect_seg_seg_v2_point(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #7 !PGOFuncName !101 {
  %4 = load float, ptr %1, align 4, !tbaa !56
  %5 = load float, ptr %2, align 4, !tbaa !56
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !56
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !56
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !56
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v2(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !102 {
  tail call fastcc void @normalize_v2_v2(ptr noundef %0, ptr noundef %0) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #7 !PGOFuncName !103 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !56
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !104 {
  %3 = load float, ptr %0, align 4, !tbaa !56
  %4 = load float, ptr %1, align 4, !tbaa !56
  %5 = fsub float %3, %4
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !56
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !56
  %10 = fsub float %7, %9
  %11 = fmul float %10, %10
  %12 = tail call float @llvm.fmuladd.f32(float %5, float %5, float %11)
  %13 = tail call float @llvm.sqrt.f32(float %12)
  ret float %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !105 {
  %3 = load float, ptr %1, align 4, !tbaa !56
  %4 = load float, ptr %0, align 4, !tbaa !56
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !56
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !56
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !56
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !56
  ret void
}

; Function Attrs: optsize
declare void @dist_ensure_v2_v2fl(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @BKE_mask_point_weight_scalar(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !106 {
  %3 = tail call fastcc float @dot_v2v2(ptr noundef %1, ptr noundef %1) #12
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #13
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v2_v2fl(ptr noundef %0, ptr noundef %1, float noundef %7) #12
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v2(ptr noundef %0) #12
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !107 {
  %3 = load float, ptr %0, align 4, !tbaa !56
  %4 = load float, ptr %1, align 4, !tbaa !56
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !56
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !56
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_v2fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #7 !PGOFuncName !108 {
  %4 = load float, ptr %1, align 4, !tbaa !56
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !56
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !56
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #8 !PGOFuncName !109 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !56
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind }

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
!34 = !{i32 1, i32 0}
!35 = !{!36, !41, i64 20}
!36 = !{!"MaskSpline", !37, i64 0, !37, i64 8, !40, i64 16, !38, i64 18, !38, i64 19, !41, i64 20, !37, i64 24, !42, i64 32, !37, i64 216}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"MaskParent", !41, i64 0, !41, i64 4, !37, i64 8, !38, i64 16, !38, i64 80, !38, i64 144, !38, i64 152}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!36, !37, i64 24}
!46 = !{!"mask_evaluate.c:max_ii"}
!47 = !{!"mask_evaluate.c:len_v3v3"}
!48 = !{!49, !41, i64 76}
!49 = !{!"MaskSplinePoint", !50, i64 0, !41, i64 72, !41, i64 76, !37, i64 80, !42, i64 88}
!50 = !{!"BezTriple", !38, i64 0, !51, i64 36, !51, i64 40, !51, i64 44, !38, i64 48, !38, i64 49, !38, i64 50, !38, i64 51, !38, i64 52, !38, i64 53, !38, i64 54, !38, i64 55, !51, i64 56, !51, i64 60, !51, i64 64, !38, i64 68}
!51 = !{!"float", !38, i64 0}
!52 = !{!49, !37, i64 80}
!53 = !{!54, !51, i64 0}
!54 = !{!"MaskSplinePointUW", !51, i64 0, !51, i64 4, !41, i64 8}
!55 = !{!54, !51, i64 4}
!56 = !{!51, !51, i64 0}
!57 = distinct !{!57, !44}
!58 = distinct !{!58, !44}
!59 = !{!"mask_evaluate.c:max_ff"}
!60 = !{!36, !40, i64 16}
!61 = !{!41, !41, i64 0}
!62 = !{!37, !37, i64 0}
!63 = distinct !{!63, !44}
!64 = !{!"mask_evaluate.c:copy_v2_v2"}
!65 = distinct !{!65, !44}
!66 = distinct !{!66, !44}
!67 = distinct !{!67, !44}
!68 = !{!69, !37, i64 8}
!69 = !{!"FeatherEdgesBucket", !41, i64 0, !37, i64 8, !41, i64 16}
!70 = distinct !{!70, !44}
!71 = !{!"mask_evaluate.c:min_ii"}
!72 = !{!"mask_evaluate.c:feather_bucket_index_from_coord"}
!73 = !{!"mask_evaluate.c:feather_bucket_add_edge"}
!74 = !{!69, !41, i64 0}
!75 = !{!69, !41, i64 16}
!76 = !{!"mask_evaluate.c:feather_bucket_get_diagonal"}
!77 = !{!"mask_evaluate.c:feather_bucket_check_intersect"}
!78 = distinct !{!78, !44}
!79 = distinct !{!79, !44}
!80 = distinct !{!80, !44}
!81 = distinct !{!81, !44}
!82 = distinct !{!82, !44}
!83 = !{!36, !38, i64 18}
!84 = !{!"mask_evaluate.c:mask_spline_feather_differentiated_points_with_resolution__even"}
!85 = distinct !{!85, !44}
!86 = distinct !{!86, !44}
!87 = !{!"mask_evaluate.c:mask_spline_feather_differentiated_points_with_resolution__double"}
!88 = !{i64 0, i64 36, !89, i64 36, i64 4, !56, i64 40, i64 4, !56, i64 44, i64 4, !56, i64 48, i64 1, !89, i64 49, i64 1, !89, i64 50, i64 1, !89, i64 51, i64 1, !89, i64 52, i64 1, !89, i64 53, i64 1, !89, i64 54, i64 1, !89, i64 55, i64 1, !89, i64 56, i64 4, !56, i64 60, i64 4, !56, i64 64, i64 4, !56, i64 68, i64 4, !89}
!89 = !{!38, !38, i64 0}
!90 = !{!50, !51, i64 40}
!91 = distinct !{!91, !44}
!92 = distinct !{!92, !44}
!93 = distinct !{!93, !44}
!94 = distinct !{!94, !44}
!95 = distinct !{!95, !44}
!96 = !{!"mask_evaluate.c:madd_v2_v2v2fl"}
!97 = distinct !{!97, !44}
!98 = !{!"mask_evaluate.c:sub_v3_v3v3"}
!99 = !{!"mask_evaluate.c:len_v3"}
!100 = !{!"mask_evaluate.c:dot_v3v3"}
!101 = !{!"mask_evaluate.c:sub_v2_v2v2"}
!102 = !{!"mask_evaluate.c:normalize_v2"}
!103 = !{!"mask_evaluate.c:mul_v2_fl"}
!104 = !{!"mask_evaluate.c:len_v2v2"}
!105 = !{!"mask_evaluate.c:add_v2_v2"}
!106 = !{!"mask_evaluate.c:normalize_v2_v2"}
!107 = !{!"mask_evaluate.c:dot_v2v2"}
!108 = !{!"mask_evaluate.c:mul_v2_v2fl"}
!109 = !{!"mask_evaluate.c:zero_v2"}
