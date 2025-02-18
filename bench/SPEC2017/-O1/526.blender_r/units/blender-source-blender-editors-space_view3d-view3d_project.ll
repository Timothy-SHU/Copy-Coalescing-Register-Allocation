; ModuleID = 'blender/source/blender/editors/space_view3d/view3d_project.c'
source_filename = "blender/source/blender/editors/space_view3d/view3d_project.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.bglMats = type { [16 x double], [16 x double], [4 x i32] }

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_project_float_v2_m4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  %6 = load float, ptr %1, align 4, !tbaa !34
  store float %6, ptr %5, align 16, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %5, i64 1
  store float %8, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %5, i64 2
  store float %11, ptr %12, align 8, !tbaa !34
  %13 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  store float 1.000000e+00, ptr %13, align 4, !tbaa !34
  call void @mul_m4_v4(ptr noundef %3, ptr noundef nonnull %5) #7
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fcmp ogt float %14, 0x3E80000000000000
  br i1 %15, label %16, label %33

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %18 = load i16, ptr %17, align 8, !tbaa !38
  %19 = sitofp i16 %18 to float
  %20 = fmul float %19, 5.000000e-01
  %21 = load float, ptr %5, align 16, !tbaa !34
  %22 = fmul float %21, %20
  %23 = fdiv float %22, %14
  %24 = fadd float %20, %23
  store float %24, ptr %2, align 4, !tbaa !34
  %25 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  %26 = load i16, ptr %25, align 2, !tbaa !47
  %27 = sitofp i16 %26 to float
  %28 = fmul float %27, 5.000000e-01
  %29 = load float, ptr %9, align 4, !tbaa !34
  %30 = fmul float %29, %28
  %31 = fdiv float %30, %14
  %32 = fadd float %28, %31
  br label %34

33:                                               ; preds = %4
  store float 0.000000e+00, ptr %2, align 4, !tbaa !34
  br label %34

34:                                               ; preds = %33, %16
  %35 = phi float [ 0.000000e+00, %33 ], [ %32, %16 ]
  %36 = getelementptr inbounds float, ptr %2, i64 1
  store float %35, ptr %36, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @mul_m4_v4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_project_float_v3_m4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  %6 = load float, ptr %1, align 4, !tbaa !34
  store float %6, ptr %5, align 16, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %5, i64 1
  store float %8, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %5, i64 2
  store float %11, ptr %12, align 8, !tbaa !34
  %13 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  store float 1.000000e+00, ptr %13, align 4, !tbaa !34
  call void @mul_m4_v4(ptr noundef %3, ptr noundef nonnull %5) #7
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fcmp ogt float %14, 0x3E80000000000000
  br i1 %15, label %16, label %36

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %18 = load i16, ptr %17, align 8, !tbaa !38
  %19 = sitofp i16 %18 to float
  %20 = fmul float %19, 5.000000e-01
  %21 = load float, ptr %5, align 16, !tbaa !34
  %22 = fmul float %21, %20
  %23 = fdiv float %22, %14
  %24 = fadd float %20, %23
  store float %24, ptr %2, align 4, !tbaa !34
  %25 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  %26 = load i16, ptr %25, align 2, !tbaa !47
  %27 = sitofp i16 %26 to float
  %28 = fmul float %27, 5.000000e-01
  %29 = load float, ptr %9, align 4, !tbaa !34
  %30 = fmul float %29, %28
  %31 = fdiv float %30, %14
  %32 = fadd float %28, %31
  %33 = getelementptr inbounds float, ptr %2, i64 1
  store float %32, ptr %33, align 4, !tbaa !34
  %34 = load float, ptr %12, align 8, !tbaa !34
  %35 = fdiv float %34, %14
  br label %38

36:                                               ; preds = %4
  store float 0.000000e+00, ptr %2, align 4, !tbaa !34
  %37 = getelementptr inbounds float, ptr %2, i64 1
  store float 0.000000e+00, ptr %37, align 4, !tbaa !34
  br label %38

38:                                               ; preds = %36, %16
  %39 = phi float [ 0.000000e+00, %36 ], [ %35, %16 ]
  %40 = getelementptr inbounds float, ptr %2, i64 2
  store float %39, ptr %40, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_view3d_project_base(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca [2 x float], align 4
  %4 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 47, i64 3
  %7 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 5
  %8 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %11 = call fastcc i32 @ed_view3d_project__internal(ptr noundef %0, ptr noundef nonnull %10, i8 noundef zeroext 0, ptr noundef nonnull %6, ptr noundef nonnull %3, i32 noundef 7), !range !51
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load float, ptr %3, align 4
  %15 = fcmp ogt float %14, -3.270000e+04
  %16 = fcmp olt float %14, 3.270000e+04
  %17 = and i1 %15, %16
  %18 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  %19 = load float, ptr %18, align 4
  %20 = fcmp ogt float %19, -3.270000e+04
  %21 = select i1 %17, i1 %20, i1 false
  %22 = fcmp olt float %19, 3.270000e+04
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %24, label %30

24:                                               ; preds = %13
  %25 = tail call float @llvm.floor.f32(float %14)
  %26 = fptosi float %25 to i16
  store i16 %26, ptr %7, align 2, !tbaa !52
  %27 = tail call float @llvm.floor.f32(float %19)
  %28 = fptosi float %27 to i16
  %29 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 6
  store i16 %28, ptr %29, align 2, !tbaa !52
  br label %30

30:                                               ; preds = %2, %13, %24
  %31 = phi i32 [ 0, %24 ], [ %11, %2 ], [ 5, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  store i16 12000, ptr %7, align 4, !tbaa !53
  %34 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 6
  store i16 0, ptr %34, align 2, !tbaa !54
  br label %35

35:                                               ; preds = %33, %30
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_view3d_project_short_global(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  %9 = call fastcc i32 @ed_view3d_project__internal(ptr noundef %0, ptr noundef nonnull %8, i8 noundef zeroext 0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef %3), !range !51
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %4
  %12 = load float, ptr %5, align 4
  %13 = fcmp ogt float %12, -3.270000e+04
  %14 = fcmp olt float %12, 3.270000e+04
  %15 = and i1 %13, %14
  %16 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %17 = load float, ptr %16, align 4
  %18 = fcmp ogt float %17, -3.270000e+04
  %19 = select i1 %15, i1 %18, i1 false
  %20 = fcmp olt float %17, 3.270000e+04
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %28

22:                                               ; preds = %11
  %23 = tail call float @llvm.floor.f32(float %12)
  %24 = fptosi float %23 to i16
  store i16 %24, ptr %2, align 2, !tbaa !52
  %25 = tail call float @llvm.floor.f32(float %17)
  %26 = fptosi float %25 to i16
  %27 = getelementptr inbounds i16, ptr %2, i64 1
  store i16 %26, ptr %27, align 2, !tbaa !52
  br label %28

28:                                               ; preds = %4, %11, %22
  %29 = phi i32 [ 0, %22 ], [ %9, %4 ], [ 5, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_view3d_project_short_ex(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  %8 = call fastcc i32 @ed_view3d_project__internal(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef nonnull %7, i32 noundef %5), !range !51
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = load float, ptr %7, align 4
  %12 = fcmp ogt float %11, -3.270000e+04
  %13 = fcmp olt float %11, 3.270000e+04
  %14 = and i1 %12, %13
  %15 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %16 = load float, ptr %15, align 4
  %17 = fcmp ogt float %16, -3.270000e+04
  %18 = select i1 %14, i1 %17, i1 false
  %19 = fcmp olt float %16, 3.270000e+04
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %27

21:                                               ; preds = %10
  %22 = tail call float @llvm.floor.f32(float %11)
  %23 = fptosi float %22 to i16
  store i16 %23, ptr %4, align 2, !tbaa !52
  %24 = tail call float @llvm.floor.f32(float %16)
  %25 = fptosi float %24 to i16
  %26 = getelementptr inbounds i16, ptr %4, i64 1
  store i16 %25, ptr %26, align 2, !tbaa !52
  br label %27

27:                                               ; preds = %10, %21, %6
  %28 = phi i32 [ 0, %21 ], [ %8, %6 ], [ 5, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @ed_view3d_project__internal(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  %8 = and i32 %5, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = getelementptr inbounds %struct.RegionView3D, ptr %12, i64 0, i32 32
  %14 = load i16, ptr %13, align 2, !tbaa !55
  %15 = and i16 %14, 4
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = tail call zeroext i8 @ED_view3d_clipping_test(ptr noundef %12, ptr noundef %3, i8 noundef zeroext %2) #7
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %77

20:                                               ; preds = %10, %17, %6
  %21 = load float, ptr %3, align 4, !tbaa !34
  store float %21, ptr %7, align 16, !tbaa !34
  %22 = getelementptr inbounds float, ptr %3, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds float, ptr %7, i64 1
  store float %23, ptr %24, align 4, !tbaa !34
  %25 = getelementptr inbounds float, ptr %3, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = getelementptr inbounds float, ptr %7, i64 2
  store float %26, ptr %27, align 8, !tbaa !34
  %28 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  store float 1.000000e+00, ptr %28, align 4, !tbaa !34
  call void @mul_m4_v4(ptr noundef %1, ptr noundef nonnull %7) #7
  %29 = and i32 %5, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %20
  %32 = load float, ptr %28, align 4, !tbaa !34
  %33 = call float @llvm.fabs.f32(float %32)
  %34 = fcmp ogt float %33, 0x3F50624DE0000000
  br i1 %34, label %35, label %77

35:                                               ; preds = %31, %20
  %36 = and i32 %5, 4
  %37 = icmp eq i32 %36, 0
  %38 = load float, ptr %28, align 4
  %39 = fcmp ogt float %38, 0x3F50624DE0000000
  %40 = select i1 %37, i1 true, i1 %39
  br i1 %40, label %41, label %77

41:                                               ; preds = %35
  %42 = fcmp une float %38, 0.000000e+00
  %43 = fdiv float 1.000000e+00, %38
  %44 = select i1 %42, float %43, float 0.000000e+00
  %45 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %46 = load i16, ptr %45, align 8, !tbaa !38
  %47 = sitofp i16 %46 to float
  %48 = fmul float %47, 5.000000e-01
  %49 = load float, ptr %7, align 16, !tbaa !34
  %50 = call float @llvm.fmuladd.f32(float %49, float %44, float 1.000000e+00)
  %51 = fmul float %48, %50
  %52 = and i32 %5, 2
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %41
  %55 = fcmp ogt float %51, 0.000000e+00
  %56 = fcmp olt float %51, %47
  %57 = select i1 %55, i1 %56, i1 false
  br i1 %57, label %58, label %77

58:                                               ; preds = %54, %41
  %59 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  %60 = load i16, ptr %59, align 2, !tbaa !47
  %61 = sitofp i16 %60 to float
  %62 = fmul float %61, 5.000000e-01
  %63 = load float, ptr %24, align 4, !tbaa !34
  %64 = call float @llvm.fmuladd.f32(float %63, float %44, float 1.000000e+00)
  %65 = fmul float %62, %64
  br i1 %53, label %70, label %66

66:                                               ; preds = %58
  %67 = fcmp ogt float %65, 0.000000e+00
  %68 = fcmp olt float %65, %61
  %69 = select i1 %67, i1 %68, i1 false
  br i1 %69, label %70, label %77

70:                                               ; preds = %66, %58
  store float %51, ptr %4, align 4, !tbaa !34
  %71 = getelementptr inbounds float, ptr %4, i64 1
  store float %65, ptr %71, align 4, !tbaa !34
  %72 = fcmp olt float %38, 0.000000e+00
  %73 = select i1 %37, i1 %72, i1 false
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = fneg float %51
  store float %75, ptr %4, align 4, !tbaa !34
  %76 = fneg float %65
  store float %76, ptr %71, align 4, !tbaa !34
  br label %77

77:                                               ; preds = %74, %70, %66, %54, %31, %35, %17
  %78 = phi i32 [ 3, %17 ], [ 1, %35 ], [ 2, %31 ], [ 4, %66 ], [ 0, %70 ], [ 0, %74 ], [ 4, %54 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  ret i32 %78
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_view3d_project_int_ex(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  %8 = call fastcc i32 @ed_view3d_project__internal(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef nonnull %7, i32 noundef %5), !range !51
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = load float, ptr %7, align 4
  %12 = fcmp ogt float %11, -2.140000e+09
  %13 = fcmp olt float %11, 2.140000e+09
  %14 = and i1 %12, %13
  %15 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %16 = load float, ptr %15, align 4
  %17 = fcmp ogt float %16, -2.140000e+09
  %18 = select i1 %14, i1 %17, i1 false
  %19 = fcmp olt float %16, 2.140000e+09
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %27

21:                                               ; preds = %10
  %22 = tail call float @llvm.floor.f32(float %11)
  %23 = fptosi float %22 to i32
  store i32 %23, ptr %4, align 4, !tbaa !57
  %24 = tail call float @llvm.floor.f32(float %16)
  %25 = fptosi float %24 to i32
  %26 = getelementptr inbounds i32, ptr %4, i64 1
  store i32 %25, ptr %26, align 4, !tbaa !57
  br label %27

27:                                               ; preds = %10, %21, %6
  %28 = phi i32 [ 0, %21 ], [ %8, %6 ], [ 5, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_view3d_project_float_ex(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  %8 = call fastcc i32 @ed_view3d_project__internal(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef nonnull %7, i32 noundef %5), !range !51
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = load float, ptr %7, align 4, !tbaa !34
  %12 = tail call float @llvm.fabs.f32(float %11)
  %13 = fcmp ueq float %12, 0x7FF0000000000000
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = tail call float @llvm.fabs.f32(float %16)
  %18 = fcmp ueq float %17, 0x7FF0000000000000
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  store float %11, ptr %4, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %4, i64 1
  store float %16, ptr %20, align 4, !tbaa !34
  br label %21

21:                                               ; preds = %10, %14, %19, %6
  %22 = phi i32 [ 0, %19 ], [ %8, %6 ], [ 5, %14 ], [ 5, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_view3d_project_short_object(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  %9 = call fastcc i32 @ed_view3d_project__internal(ptr noundef %0, ptr noundef nonnull %8, i8 noundef zeroext 1, ptr noundef %1, ptr noundef nonnull %5, i32 noundef %3), !range !51
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %4
  %12 = load float, ptr %5, align 4
  %13 = fcmp ogt float %12, -3.270000e+04
  %14 = fcmp olt float %12, 3.270000e+04
  %15 = and i1 %13, %14
  %16 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %17 = load float, ptr %16, align 4
  %18 = fcmp ogt float %17, -3.270000e+04
  %19 = select i1 %15, i1 %18, i1 false
  %20 = fcmp olt float %17, 3.270000e+04
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %28

22:                                               ; preds = %11
  %23 = tail call float @llvm.floor.f32(float %12)
  %24 = fptosi float %23 to i16
  store i16 %24, ptr %2, align 2, !tbaa !52
  %25 = tail call float @llvm.floor.f32(float %17)
  %26 = fptosi float %25 to i16
  %27 = getelementptr inbounds i16, ptr %2, i64 1
  store i16 %26, ptr %27, align 2, !tbaa !52
  br label %28

28:                                               ; preds = %4, %11, %22
  %29 = phi i32 [ 0, %22 ], [ %9, %4 ], [ 5, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_view3d_project_int_global(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  %9 = call fastcc i32 @ed_view3d_project__internal(ptr noundef %0, ptr noundef nonnull %8, i8 noundef zeroext 0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef %3), !range !51
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %4
  %12 = load float, ptr %5, align 4
  %13 = fcmp ogt float %12, -2.140000e+09
  %14 = fcmp olt float %12, 2.140000e+09
  %15 = and i1 %13, %14
  %16 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %17 = load float, ptr %16, align 4
  %18 = fcmp ogt float %17, -2.140000e+09
  %19 = select i1 %15, i1 %18, i1 false
  %20 = fcmp olt float %17, 2.140000e+09
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %28

22:                                               ; preds = %11
  %23 = tail call float @llvm.floor.f32(float %12)
  %24 = fptosi float %23 to i32
  store i32 %24, ptr %2, align 4, !tbaa !57
  %25 = tail call float @llvm.floor.f32(float %17)
  %26 = fptosi float %25 to i32
  %27 = getelementptr inbounds i32, ptr %2, i64 1
  store i32 %26, ptr %27, align 4, !tbaa !57
  br label %28

28:                                               ; preds = %4, %11, %22
  %29 = phi i32 [ 0, %22 ], [ %9, %4 ], [ 5, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_view3d_project_int_object(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  %9 = call fastcc i32 @ed_view3d_project__internal(ptr noundef %0, ptr noundef nonnull %8, i8 noundef zeroext 1, ptr noundef %1, ptr noundef nonnull %5, i32 noundef %3), !range !51
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %4
  %12 = load float, ptr %5, align 4
  %13 = fcmp ogt float %12, -2.140000e+09
  %14 = fcmp olt float %12, 2.140000e+09
  %15 = and i1 %13, %14
  %16 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %17 = load float, ptr %16, align 4
  %18 = fcmp ogt float %17, -2.140000e+09
  %19 = select i1 %15, i1 %18, i1 false
  %20 = fcmp olt float %17, 2.140000e+09
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %28

22:                                               ; preds = %11
  %23 = tail call float @llvm.floor.f32(float %12)
  %24 = fptosi float %23 to i32
  store i32 %24, ptr %2, align 4, !tbaa !57
  %25 = tail call float @llvm.floor.f32(float %17)
  %26 = fptosi float %25 to i32
  %27 = getelementptr inbounds i32, ptr %2, i64 1
  store i32 %26, ptr %27, align 4, !tbaa !57
  br label %28

28:                                               ; preds = %4, %11, %22
  %29 = phi i32 [ 0, %22 ], [ %9, %4 ], [ 5, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_view3d_project_float_global(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  %9 = call fastcc i32 @ed_view3d_project__internal(ptr noundef %0, ptr noundef nonnull %8, i8 noundef zeroext 0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef %3), !range !51
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %4
  %12 = load float, ptr %5, align 4, !tbaa !34
  %13 = tail call float @llvm.fabs.f32(float %12)
  %14 = fcmp ueq float %13, 0x7FF0000000000000
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = tail call float @llvm.fabs.f32(float %17)
  %19 = fcmp ueq float %18, 0x7FF0000000000000
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  store float %12, ptr %2, align 4, !tbaa !34
  %21 = getelementptr inbounds float, ptr %2, i64 1
  store float %17, ptr %21, align 4, !tbaa !34
  br label %22

22:                                               ; preds = %4, %11, %15, %20
  %23 = phi i32 [ 0, %20 ], [ %9, %4 ], [ 5, %15 ], [ 5, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_view3d_project_float_object(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  %9 = call fastcc i32 @ed_view3d_project__internal(ptr noundef %0, ptr noundef nonnull %8, i8 noundef zeroext 1, ptr noundef %1, ptr noundef nonnull %5, i32 noundef %3), !range !51
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %4
  %12 = load float, ptr %5, align 4, !tbaa !34
  %13 = tail call float @llvm.fabs.f32(float %12)
  %14 = fcmp ueq float %13, 0x7FF0000000000000
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = tail call float @llvm.fabs.f32(float %17)
  %19 = fcmp ueq float %18, 0x7FF0000000000000
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  store float %12, ptr %2, align 4, !tbaa !34
  %21 = getelementptr inbounds float, ptr %2, i64 1
  store float %17, ptr %21, align 4, !tbaa !34
  br label %22

22:                                               ; preds = %4, %11, %15, %20
  %23 = phi i32 [ 0, %20 ], [ %9, %4 ], [ 5, %15 ], [ 5, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  ret i32 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local float @ED_view3d_calc_zfac(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 3, i64 0, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 3, i64 1, i64 3
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fmul float %8, %10
  %12 = tail call float @llvm.fmuladd.f32(float %5, float %6, float %11)
  %13 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 3, i64 2, i64 3
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %1, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = tail call float @llvm.fmuladd.f32(float %14, float %16, float %12)
  %18 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 3, i64 3, i64 3
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fadd float %17, %19
  %21 = icmp eq ptr %2, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = fcmp olt float %20, 0.000000e+00
  %24 = zext i1 %23 to i8
  store i8 %24, ptr %2, align 1, !tbaa !58
  br label %25

25:                                               ; preds = %22, %3
  %26 = fcmp olt float %20, 0x3EB0C6F7A0000000
  %27 = fcmp ogt float %20, 0xBEB0C6F7A0000000
  %28 = and i1 %26, %27
  %29 = select i1 %28, float 1.000000e+00, float %20
  %30 = fcmp olt float %29, 0.000000e+00
  %31 = fneg float %29
  %32 = select i1 %30, float %31, float %29
  ret float %32
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_view3d_win_to_ray_ex(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #7
  call fastcc void @view3d_win_to_ray_segment(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %8)
  %9 = icmp eq i8 %6, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = getelementptr inbounds %struct.RegionView3D, ptr %12, i64 0, i32 32
  %14 = load i16, ptr %13, align 2, !tbaa !55
  %15 = and i16 %14, 4
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.RegionView3D, ptr %12, i64 0, i32 7
  %19 = call zeroext i8 @clip_segment_v3_plane_n(ptr noundef %5, ptr noundef nonnull %8, ptr noundef nonnull %18, i32 noundef 6) #7
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %10
  br label %22

22:                                               ; preds = %21, %17, %7
  %23 = phi i8 [ 1, %7 ], [ 1, %21 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #7
  ret i8 %23
}

; Function Attrs: nounwind uwtable
define internal fastcc void @view3d_win_to_ray_segment(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef writeonly %5, ptr noundef writeonly %6) unnamed_addr #0 {
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #7
  %14 = icmp eq ptr %3, null
  %15 = select i1 %14, ptr %8, ptr %3
  %16 = icmp eq ptr %4, null
  %17 = select i1 %16, ptr %9, ptr %4
  call void @ED_view3d_win_to_vector(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %17)
  %18 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 24
  %19 = load i8, ptr %18, align 8, !tbaa !59
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 2, i64 3
  %23 = load float, ptr %22, align 4, !tbaa !34
  store float %23, ptr %15, align 4, !tbaa !34
  %24 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 2, i64 3, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = select i1 %14, ptr %8, ptr %3
  %27 = getelementptr inbounds float, ptr %26, i64 1
  store float %25, ptr %27, align 4, !tbaa !34
  %28 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 2, i64 3, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = select i1 %14, ptr %8, ptr %3
  %31 = getelementptr inbounds float, ptr %30, i64 2
  store float %29, ptr %31, align 4, !tbaa !34
  br label %57

32:                                               ; preds = %7
  %33 = load float, ptr %2, align 4, !tbaa !34
  %34 = fmul float %33, 2.000000e+00
  %35 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %36 = load i16, ptr %35, align 8, !tbaa !38
  %37 = sitofp i16 %36 to float
  %38 = fdiv float %34, %37
  %39 = fadd float %38, -1.000000e+00
  store float %39, ptr %15, align 4, !tbaa !34
  %40 = getelementptr inbounds float, ptr %2, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !34
  %42 = fmul float %41, 2.000000e+00
  %43 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  %44 = load i16, ptr %43, align 2, !tbaa !47
  %45 = sitofp i16 %44 to float
  %46 = fdiv float %42, %45
  %47 = fadd float %46, -1.000000e+00
  %48 = select i1 %14, ptr %8, ptr %3
  %49 = getelementptr inbounds float, ptr %48, i64 1
  store float %47, ptr %49, align 4, !tbaa !34
  %50 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 25
  %51 = load i8, ptr %50, align 1, !tbaa !60
  %52 = icmp eq i8 %51, 2
  %53 = select i1 %14, ptr %8, ptr %3
  %54 = getelementptr inbounds float, ptr %53, i64 2
  %55 = select i1 %52, float -1.000000e+00, float 0.000000e+00
  store float %55, ptr %54, align 4, !tbaa !34
  %56 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 4
  call void @mul_project_m4_v3(ptr noundef nonnull %56, ptr noundef nonnull %15) #7
  br label %57

57:                                               ; preds = %32, %21
  %58 = load i8, ptr %18, align 8, !tbaa !59
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 25
  %62 = load i8, ptr %61, align 1, !tbaa !60
  %63 = icmp eq i8 %62, 2
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 33
  %66 = load float, ptr %65, align 8, !tbaa !61
  %67 = fmul float %66, 5.000000e-01
  store float %67, ptr %11, align 4, !tbaa !34
  %68 = fneg float %67
  store float %68, ptr %10, align 4, !tbaa !34
  br label %71

69:                                               ; preds = %60, %57
  %70 = call zeroext i8 @ED_view3d_clip_range_get(ptr noundef %1, ptr noundef %13, ptr noundef nonnull %10, ptr noundef nonnull %11, i8 noundef zeroext 0) #7
  br label %71

71:                                               ; preds = %69, %64
  %72 = icmp eq ptr %5, null
  br i1 %72, label %94, label %73

73:                                               ; preds = %71
  %74 = load float, ptr %10, align 4, !tbaa !34
  %75 = load float, ptr %15, align 4, !tbaa !34
  %76 = load float, ptr %17, align 4, !tbaa !34
  %77 = call float @llvm.fmuladd.f32(float %76, float %74, float %75)
  store float %77, ptr %5, align 4, !tbaa !34
  %78 = select i1 %14, ptr %8, ptr %3
  %79 = getelementptr inbounds float, ptr %78, i64 1
  %80 = load float, ptr %79, align 4, !tbaa !34
  %81 = select i1 %16, ptr %9, ptr %4
  %82 = getelementptr inbounds float, ptr %81, i64 1
  %83 = load float, ptr %82, align 4, !tbaa !34
  %84 = call float @llvm.fmuladd.f32(float %83, float %74, float %80)
  %85 = getelementptr inbounds float, ptr %5, i64 1
  store float %84, ptr %85, align 4, !tbaa !34
  %86 = select i1 %14, ptr %8, ptr %3
  %87 = getelementptr inbounds float, ptr %86, i64 2
  %88 = load float, ptr %87, align 4, !tbaa !34
  %89 = select i1 %16, ptr %9, ptr %4
  %90 = getelementptr inbounds float, ptr %89, i64 2
  %91 = load float, ptr %90, align 4, !tbaa !34
  %92 = call float @llvm.fmuladd.f32(float %91, float %74, float %88)
  %93 = getelementptr inbounds float, ptr %5, i64 2
  store float %92, ptr %93, align 4, !tbaa !34
  br label %94

94:                                               ; preds = %73, %71
  %95 = icmp eq ptr %6, null
  br i1 %95, label %117, label %96

96:                                               ; preds = %94
  %97 = load float, ptr %11, align 4, !tbaa !34
  %98 = load float, ptr %15, align 4, !tbaa !34
  %99 = load float, ptr %17, align 4, !tbaa !34
  %100 = call float @llvm.fmuladd.f32(float %99, float %97, float %98)
  store float %100, ptr %6, align 4, !tbaa !34
  %101 = select i1 %14, ptr %8, ptr %3
  %102 = getelementptr inbounds float, ptr %101, i64 1
  %103 = load float, ptr %102, align 4, !tbaa !34
  %104 = select i1 %16, ptr %9, ptr %4
  %105 = getelementptr inbounds float, ptr %104, i64 1
  %106 = load float, ptr %105, align 4, !tbaa !34
  %107 = call float @llvm.fmuladd.f32(float %106, float %97, float %103)
  %108 = getelementptr inbounds float, ptr %6, i64 1
  store float %107, ptr %108, align 4, !tbaa !34
  %109 = select i1 %14, ptr %8, ptr %3
  %110 = getelementptr inbounds float, ptr %109, i64 2
  %111 = load float, ptr %110, align 4, !tbaa !34
  %112 = select i1 %16, ptr %9, ptr %4
  %113 = getelementptr inbounds float, ptr %112, i64 2
  %114 = load float, ptr %113, align 4, !tbaa !34
  %115 = call float @llvm.fmuladd.f32(float %114, float %97, float %111)
  %116 = getelementptr inbounds float, ptr %6, i64 2
  store float %115, ptr %116, align 4, !tbaa !34
  br label %117

117:                                              ; preds = %96, %94
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_view3d_win_to_ray(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #7
  call fastcc void @view3d_win_to_ray_segment(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef %4, ptr noundef %3, ptr noundef nonnull %7)
  %8 = icmp eq i8 %5, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 32
  %13 = load i16, ptr %12, align 2, !tbaa !55
  %14 = and i16 %13, 4
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 7
  %18 = call zeroext i8 @clip_segment_v3_plane_n(ptr noundef %3, ptr noundef nonnull %7, ptr noundef nonnull %17, i32 noundef 6) #7
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %9
  br label %21

21:                                               ; preds = %6, %16, %20
  %22 = phi i8 [ 1, %6 ], [ 1, %20 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #7
  ret i8 %22
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_global_to_vector(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x float], align 16
  %5 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 24
  %6 = load i8, ptr %5, align 8, !tbaa !59
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %33, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  %9 = load float, ptr %1, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  store float %9, ptr %4, align 16, !tbaa !34
  %14 = getelementptr inbounds float, ptr %4, i64 1
  store float %11, ptr %14, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %4, i64 2
  store float %13, ptr %15, align 8, !tbaa !34
  %16 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  store float 1.000000e+00, ptr %16, align 4, !tbaa !34
  %17 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 1
  call void @mul_m4_v4(ptr noundef nonnull %17, ptr noundef nonnull %4) #7
  %18 = load float, ptr %4, align 16, !tbaa !34
  %19 = fmul float %18, 2.000000e+00
  store float %19, ptr %4, align 16, !tbaa !34
  %20 = load float, ptr %14, align 4, !tbaa !34
  %21 = fmul float %20, 2.000000e+00
  store float %21, ptr %14, align 4, !tbaa !34
  %22 = load float, ptr %15, align 8, !tbaa !34
  %23 = fmul float %22, 2.000000e+00
  store float %23, ptr %15, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 2
  call void @mul_m4_v4(ptr noundef nonnull %24, ptr noundef nonnull %4) #7
  %25 = load float, ptr %4, align 16, !tbaa !34
  %26 = fsub float %9, %25
  store float %26, ptr %2, align 4, !tbaa !34
  %27 = load float, ptr %14, align 4, !tbaa !34
  %28 = fsub float %11, %27
  %29 = getelementptr inbounds float, ptr %2, i64 1
  store float %28, ptr %29, align 4, !tbaa !34
  %30 = load float, ptr %15, align 8, !tbaa !34
  %31 = fsub float %13, %30
  %32 = getelementptr inbounds float, ptr %2, i64 2
  store float %31, ptr %32, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  br label %42

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 2, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !34
  store float %35, ptr %2, align 4, !tbaa !34
  %36 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 2, i64 2, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !34
  %38 = getelementptr inbounds float, ptr %2, i64 1
  store float %37, ptr %38, align 4, !tbaa !34
  %39 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 2, i64 2, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = getelementptr inbounds float, ptr %2, i64 2
  store float %40, ptr %41, align 4, !tbaa !34
  br label %42

42:                                               ; preds = %33, %8
  %43 = load float, ptr %2, align 4, !tbaa !34
  %44 = getelementptr inbounds float, ptr %2, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !34
  %46 = fmul float %45, %45
  %47 = call float @llvm.fmuladd.f32(float %43, float %43, float %46)
  %48 = getelementptr inbounds float, ptr %2, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !34
  %50 = call float @llvm.fmuladd.f32(float %49, float %49, float %47)
  %51 = fcmp ogt float %50, 0x38AA95A5C0000000
  br i1 %51, label %52, label %61

52:                                               ; preds = %42
  %53 = call float @sqrtf(float noundef %50) #7
  %54 = fdiv float 1.000000e+00, %53
  %55 = load float, ptr %2, align 4, !tbaa !34
  %56 = fmul float %55, %54
  store float %56, ptr %2, align 4, !tbaa !34
  %57 = load float, ptr %44, align 4, !tbaa !34
  %58 = fmul float %54, %57
  store float %58, ptr %44, align 4, !tbaa !34
  %59 = load float, ptr %48, align 4, !tbaa !34
  %60 = fmul float %54, %59
  br label %62

61:                                               ; preds = %42
  store float 0.000000e+00, ptr %2, align 4, !tbaa !34
  store float 0.000000e+00, ptr %44, align 4, !tbaa !34
  br label %62

62:                                               ; preds = %52, %61
  %63 = phi float [ 0.000000e+00, %61 ], [ %60, %52 ]
  store float %63, ptr %48, align 4, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_win_to_3d(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #7
  %10 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 24
  %11 = load i8, ptr %10, align 8, !tbaa !59
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #7
  %14 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 2, i64 3
  %15 = load float, ptr %14, align 4, !tbaa !34
  store float %15, ptr %5, align 4, !tbaa !34
  %16 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 2, i64 3, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %5, i64 1
  store float %17, ptr %18, align 4, !tbaa !34
  %19 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 2, i64 3, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = getelementptr inbounds float, ptr %5, i64 2
  store float %20, ptr %21, align 4, !tbaa !34
  call void @ED_view3d_win_to_vector(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %7)
  %22 = load float, ptr %5, align 4, !tbaa !34
  %23 = load float, ptr %7, align 4, !tbaa !34
  %24 = fadd float %22, %23
  store float %24, ptr %6, align 4, !tbaa !34
  %25 = load float, ptr %18, align 4, !tbaa !34
  %26 = getelementptr inbounds float, ptr %7, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = fadd float %25, %27
  %29 = getelementptr inbounds float, ptr %6, i64 1
  store float %28, ptr %29, align 4, !tbaa !34
  %30 = load float, ptr %21, align 4, !tbaa !34
  %31 = getelementptr inbounds float, ptr %7, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = fadd float %30, %32
  %34 = getelementptr inbounds float, ptr %6, i64 2
  store float %33, ptr %34, align 4, !tbaa !34
  %35 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 2, i64 2
  %36 = call float @line_plane_factor_v3(ptr noundef %1, ptr noundef nonnull %35, ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  %37 = call float @llvm.fabs.f32(float %36)
  call void @interp_v3_v3v3(ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %6, float noundef %37) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #7
  br label %112

38:                                               ; preds = %4
  %39 = load float, ptr %2, align 4, !tbaa !34
  %40 = fmul float %39, 2.000000e+00
  %41 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %42 = load i16, ptr %41, align 8, !tbaa !38
  %43 = sitofp i16 %42 to float
  %44 = fdiv float %40, %43
  %45 = fadd float %44, -1.000000e+00
  %46 = getelementptr inbounds float, ptr %2, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !34
  %48 = fmul float %47, 2.000000e+00
  %49 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  %50 = load i16, ptr %49, align 2, !tbaa !47
  %51 = sitofp i16 %50 to float
  %52 = fdiv float %48, %51
  %53 = fadd float %52, -1.000000e+00
  %54 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 25
  %55 = load i8, ptr %54, align 1, !tbaa !60
  %56 = icmp eq i8 %55, 2
  br i1 %56, label %57, label %68

57:                                               ; preds = %38
  %58 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 23
  %59 = load float, ptr %58, align 4, !tbaa !63
  %60 = tail call float @BKE_screen_view3d_zoom_to_fac(float noundef %59) #7
  %61 = fmul float %60, 4.000000e+00
  %62 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 19
  %63 = load float, ptr %62, align 4, !tbaa !64
  %64 = tail call float @llvm.fmuladd.f32(float %63, float %61, float %45)
  %65 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 20
  %66 = load float, ptr %65, align 8, !tbaa !65
  %67 = tail call float @llvm.fmuladd.f32(float %66, float %61, float %53)
  br label %68

68:                                               ; preds = %57, %38
  %69 = phi float [ %67, %57 ], [ %53, %38 ]
  %70 = phi float [ %64, %57 ], [ %45, %38 ]
  %71 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 4
  %72 = load float, ptr %71, align 8, !tbaa !34
  %73 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 4, i64 1
  %74 = load float, ptr %73, align 8, !tbaa !34
  %75 = fmul float %69, %74
  %76 = tail call float @llvm.fmuladd.f32(float %72, float %70, float %75)
  %77 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 2, i64 3
  %78 = load float, ptr %77, align 8, !tbaa !34
  %79 = fadd float %78, %76
  store float %79, ptr %5, align 4, !tbaa !34
  %80 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 4, i64 0, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !34
  %82 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 4, i64 1, i64 1
  %83 = load float, ptr %82, align 4, !tbaa !34
  %84 = fmul float %69, %83
  %85 = tail call float @llvm.fmuladd.f32(float %81, float %70, float %84)
  %86 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 2, i64 3, i64 1
  %87 = load float, ptr %86, align 4, !tbaa !34
  %88 = fadd float %87, %85
  %89 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float %88, ptr %89, align 4, !tbaa !34
  %90 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 4, i64 0, i64 2
  %91 = load float, ptr %90, align 8, !tbaa !34
  %92 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 4, i64 1, i64 2
  %93 = load float, ptr %92, align 8, !tbaa !34
  %94 = fmul float %69, %93
  %95 = tail call float @llvm.fmuladd.f32(float %91, float %70, float %94)
  %96 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 2, i64 3, i64 2
  %97 = load float, ptr %96, align 8, !tbaa !34
  %98 = fadd float %97, %95
  %99 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float %98, ptr %99, align 4, !tbaa !34
  %100 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 2, i64 2
  %101 = load float, ptr %100, align 4, !tbaa !34
  %102 = fadd float %79, %101
  store float %102, ptr %6, align 4, !tbaa !34
  %103 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 2, i64 2, i64 1
  %104 = load float, ptr %103, align 4, !tbaa !34
  %105 = fadd float %88, %104
  %106 = getelementptr inbounds float, ptr %6, i64 1
  store float %105, ptr %106, align 4, !tbaa !34
  %107 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 2, i64 2, i64 2
  %108 = load float, ptr %107, align 4, !tbaa !34
  %109 = fadd float %98, %108
  %110 = getelementptr inbounds float, ptr %6, i64 2
  store float %109, ptr %110, align 4, !tbaa !34
  %111 = call float @closest_to_line_v3(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  br label %112

112:                                              ; preds = %68, %13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_win_to_vector(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 24
  %7 = load i8, ptr %6, align 8, !tbaa !59
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %38, label %9

9:                                                ; preds = %3
  %10 = load float, ptr %1, align 4, !tbaa !34
  %11 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %12 = load i16, ptr %11, align 8, !tbaa !38
  %13 = sitofp i16 %12 to float
  %14 = fdiv float %10, %13
  %15 = tail call float @llvm.fmuladd.f32(float %14, float 2.000000e+00, float -1.000000e+00)
  store float %15, ptr %2, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %1, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  %19 = load i16, ptr %18, align 2, !tbaa !47
  %20 = sitofp i16 %19 to float
  %21 = fdiv float %17, %20
  %22 = tail call float @llvm.fmuladd.f32(float %21, float 2.000000e+00, float -1.000000e+00)
  %23 = getelementptr inbounds float, ptr %2, i64 1
  store float %22, ptr %23, align 4, !tbaa !34
  %24 = getelementptr inbounds float, ptr %2, i64 2
  store float -5.000000e-01, ptr %24, align 4, !tbaa !34
  %25 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 4
  tail call void @mul_project_m4_v3(ptr noundef nonnull %25, ptr noundef nonnull %2) #7
  %26 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 2, i64 3
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = load float, ptr %2, align 4, !tbaa !34
  %29 = fsub float %28, %27
  store float %29, ptr %2, align 4, !tbaa !34
  %30 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 2, i64 3, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = load float, ptr %23, align 4, !tbaa !34
  %33 = fsub float %32, %31
  store float %33, ptr %23, align 4, !tbaa !34
  %34 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 2, i64 3, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = load float, ptr %24, align 4, !tbaa !34
  %37 = fsub float %36, %35
  store float %37, ptr %24, align 4, !tbaa !34
  br label %50

38:                                               ; preds = %3
  %39 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 2, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = fneg float %40
  store float %41, ptr %2, align 4, !tbaa !34
  %42 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 2, i64 2, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !34
  %44 = fneg float %43
  %45 = getelementptr inbounds float, ptr %2, i64 1
  store float %44, ptr %45, align 4, !tbaa !34
  %46 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 2, i64 2, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !34
  %48 = fneg float %47
  %49 = getelementptr inbounds float, ptr %2, i64 2
  store float %48, ptr %49, align 4, !tbaa !34
  br label %50

50:                                               ; preds = %38, %9
  %51 = load float, ptr %2, align 4, !tbaa !34
  %52 = getelementptr inbounds float, ptr %2, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !34
  %54 = fmul float %53, %53
  %55 = tail call float @llvm.fmuladd.f32(float %51, float %51, float %54)
  %56 = getelementptr inbounds float, ptr %2, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !34
  %58 = tail call float @llvm.fmuladd.f32(float %57, float %57, float %55)
  %59 = fcmp ogt float %58, 0x38AA95A5C0000000
  br i1 %59, label %60, label %69

60:                                               ; preds = %50
  %61 = tail call float @sqrtf(float noundef %58) #7
  %62 = fdiv float 1.000000e+00, %61
  %63 = load float, ptr %2, align 4, !tbaa !34
  %64 = fmul float %63, %62
  store float %64, ptr %2, align 4, !tbaa !34
  %65 = load float, ptr %52, align 4, !tbaa !34
  %66 = fmul float %62, %65
  store float %66, ptr %52, align 4, !tbaa !34
  %67 = load float, ptr %56, align 4, !tbaa !34
  %68 = fmul float %62, %67
  br label %70

69:                                               ; preds = %50
  store float 0.000000e+00, ptr %2, align 4, !tbaa !34
  store float 0.000000e+00, ptr %52, align 4, !tbaa !34
  br label %70

70:                                               ; preds = %60, %69
  %71 = phi float [ 0.000000e+00, %69 ], [ %68, %60 ]
  store float %71, ptr %56, align 4, !tbaa !34
  ret void
}

declare float @line_plane_factor_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

declare float @BKE_screen_view3d_zoom_to_fac(float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare float @closest_to_line_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_win_to_3d_int(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  %6 = load i32, ptr %2, align 4, !tbaa !57
  %7 = sitofp i32 %6 to float
  store float %7, ptr %5, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %5, i64 1
  %9 = getelementptr inbounds i32, ptr %2, i64 1
  %10 = load i32, ptr %9, align 4, !tbaa !57
  %11 = sitofp i32 %10 to float
  store float %11, ptr %8, align 4, !tbaa !34
  call void @ED_view3d_win_to_3d(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_view3d_win_to_delta(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, float noundef %3) local_unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = load float, ptr %1, align 4, !tbaa !34
  %8 = fmul float %7, 2.000000e+00
  %9 = fmul float %8, %3
  %10 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %11 = load i16, ptr %10, align 8, !tbaa !38
  %12 = sitofp i16 %11 to float
  %13 = fdiv float %9, %12
  %14 = getelementptr inbounds float, ptr %1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fmul float %15, 2.000000e+00
  %17 = fmul float %16, %3
  %18 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  %19 = load i16, ptr %18, align 2, !tbaa !47
  %20 = sitofp i16 %19 to float
  %21 = fdiv float %17, %20
  %22 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 4
  %23 = load float, ptr %22, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 4, i64 1
  %25 = load float, ptr %24, align 8, !tbaa !34
  %26 = fmul float %25, %21
  %27 = tail call float @llvm.fmuladd.f32(float %23, float %13, float %26)
  store float %27, ptr %2, align 4, !tbaa !34
  %28 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 4, i64 0, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 4, i64 1, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = fmul float %21, %31
  %33 = tail call float @llvm.fmuladd.f32(float %29, float %13, float %32)
  %34 = getelementptr inbounds float, ptr %2, i64 1
  store float %33, ptr %34, align 4, !tbaa !34
  %35 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 4, i64 0, i64 2
  %36 = load float, ptr %35, align 8, !tbaa !34
  %37 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 4, i64 1, i64 2
  %38 = load float, ptr %37, align 8, !tbaa !34
  %39 = fmul float %21, %38
  %40 = tail call float @llvm.fmuladd.f32(float %36, float %13, float %39)
  %41 = getelementptr inbounds float, ptr %2, i64 2
  store float %40, ptr %41, align 4, !tbaa !34
  ret void
}

declare void @mul_project_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_view3d_win_to_segment(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  tail call fastcc void @view3d_win_to_ray_segment(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef %3, ptr noundef %4)
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.RegionView3D, ptr %10, i64 0, i32 32
  %12 = load i16, ptr %11, align 2, !tbaa !55
  %13 = and i16 %12, 4
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.RegionView3D, ptr %10, i64 0, i32 7
  %17 = tail call zeroext i8 @clip_segment_v3_plane_n(ptr noundef %3, ptr noundef %4, ptr noundef nonnull %16, i32 noundef 6) #7
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %8
  br label %20

20:                                               ; preds = %19, %15, %6
  %21 = phi i8 [ 1, %6 ], [ 1, %19 ], [ 0, %15 ]
  ret i8 %21
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_ob_project_mat_get(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  %5 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  call void @mul_m4_m4m4(ptr noundef %2, ptr noundef %0, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  ret void
}

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_unproject(ptr noundef %0, ptr nocapture noundef writeonly %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #0 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7
  %9 = fpext float %2 to double
  %10 = fpext float %3 to double
  %11 = fpext float %4 to double
  %12 = getelementptr inbounds %struct.bglMats, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %struct.bglMats, ptr %0, i64 0, i32 2
  %14 = call i32 @gluUnProject(double noundef %9, double noundef %10, double noundef %11, ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #7
  %15 = load double, ptr %6, align 8, !tbaa !66
  %16 = fptrunc double %15 to float
  store float %16, ptr %1, align 4, !tbaa !34
  %17 = load double, ptr %7, align 8, !tbaa !66
  %18 = fptrunc double %17 to float
  %19 = getelementptr inbounds float, ptr %1, i64 1
  store float %18, ptr %19, align 4, !tbaa !34
  %20 = load double, ptr %8, align 8, !tbaa !66
  %21 = fptrunc double %20 to float
  %22 = getelementptr inbounds float, ptr %1, i64 2
  store float %21, ptr %22, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  ret void
}

declare i32 @gluUnProject(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_view3d_clipping_test(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @ED_view3d_clip_range_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @clip_segment_v3_plane_n(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !45, i64 208}
!39 = !{!"ARegion", !40, i64 0, !40, i64 8, !41, i64 16, !43, i64 176, !43, i64 192, !45, i64 208, !45, i64 210, !45, i64 212, !45, i64 214, !45, i64 216, !45, i64 218, !35, i64 220, !45, i64 224, !45, i64 226, !45, i64 228, !45, i64 230, !45, i64 232, !45, i64 234, !45, i64 236, !45, i64 238, !40, i64 240, !46, i64 248, !46, i64 264, !46, i64 280, !46, i64 296, !46, i64 312, !46, i64 328, !46, i64 344, !40, i64 360, !40, i64 368, !40, i64 376}
!40 = !{!"any pointer", !36, i64 0}
!41 = !{!"View2D", !42, i64 0, !42, i64 16, !43, i64 32, !43, i64 48, !43, i64 64, !36, i64 80, !36, i64 88, !35, i64 96, !35, i64 100, !45, i64 104, !45, i64 106, !45, i64 108, !45, i64 110, !45, i64 112, !45, i64 114, !45, i64 116, !45, i64 118, !45, i64 120, !45, i64 122, !45, i64 124, !45, i64 126, !40, i64 128, !44, i64 136, !44, i64 140, !40, i64 144, !40, i64 152}
!42 = !{!"rctf", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!43 = !{!"rcti", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!44 = !{!"int", !36, i64 0}
!45 = !{!"short", !36, i64 0}
!46 = !{!"ListBase", !40, i64 0, !40, i64 8}
!47 = !{!39, !45, i64 210}
!48 = !{!49, !40, i64 32}
!49 = !{!"Base", !40, i64 0, !40, i64 8, !44, i64 16, !44, i64 20, !44, i64 24, !45, i64 28, !45, i64 30, !40, i64 32}
!50 = !{!39, !40, i64 376}
!51 = !{i32 0, i32 5}
!52 = !{!45, !45, i64 0}
!53 = !{!49, !45, i64 28}
!54 = !{!49, !45, i64 30}
!55 = !{!56, !45, i64 826}
!56 = !{!"RegionView3D", !36, i64 0, !36, i64 64, !36, i64 128, !36, i64 192, !36, i64 256, !36, i64 320, !36, i64 384, !36, i64 448, !36, i64 544, !40, i64 640, !40, i64 648, !40, i64 656, !40, i64 664, !40, i64 672, !40, i64 680, !40, i64 688, !36, i64 696, !36, i64 760, !35, i64 776, !35, i64 780, !35, i64 784, !35, i64 788, !36, i64 792, !35, i64 804, !36, i64 808, !36, i64 809, !36, i64 810, !36, i64 811, !36, i64 812, !36, i64 813, !36, i64 816, !45, i64 824, !45, i64 826, !36, i64 828, !45, i64 844, !45, i64 846, !35, i64 848, !36, i64 852, !35, i64 864, !36, i64 868}
!57 = !{!44, !44, i64 0}
!58 = !{!36, !36, i64 0}
!59 = !{!56, !36, i64 808}
!60 = !{!56, !36, i64 809}
!61 = !{!62, !35, i64 256}
!62 = !{!"View3D", !40, i64 0, !40, i64 8, !46, i64 16, !44, i64 32, !35, i64 36, !36, i64 40, !36, i64 56, !35, i64 72, !35, i64 76, !36, i64 80, !36, i64 81, !44, i64 84, !44, i64 88, !45, i64 92, !45, i64 94, !40, i64 96, !40, i64 104, !42, i64 112, !46, i64 128, !40, i64 144, !40, i64 152, !36, i64 160, !44, i64 224, !44, i64 228, !45, i64 232, !45, i64 234, !45, i64 236, !45, i64 238, !45, i64 240, !45, i64 242, !35, i64 244, !35, i64 248, !35, i64 252, !35, i64 256, !36, i64 260, !36, i64 272, !45, i64 284, !45, i64 286, !45, i64 288, !36, i64 290, !36, i64 291, !36, i64 292, !36, i64 293, !36, i64 294, !46, i64 296, !46, i64 312, !46, i64 328, !36, i64 344, !36, i64 345, !36, i64 346, !36, i64 347, !40, i64 352, !40, i64 360, !40, i64 368}
!63 = !{!56, !35, i64 804}
!64 = !{!56, !35, i64 780}
!65 = !{!56, !35, i64 784}
!66 = !{!67, !67, i64 0}
!67 = !{!"double", !36, i64 0}
