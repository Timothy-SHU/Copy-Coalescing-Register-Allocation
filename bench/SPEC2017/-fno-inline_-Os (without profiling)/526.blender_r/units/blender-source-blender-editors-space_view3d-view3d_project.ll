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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_project_float_v2_m4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %1) #12
  %6 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  store float 1.000000e+00, ptr %6, align 4, !tbaa !5
  call void @mul_m4_v4(ptr noundef %3, ptr noundef nonnull %5) #13
  %7 = load float, ptr %6, align 4, !tbaa !5
  %8 = fcmp ogt float %7, 0x3E80000000000000
  br i1 %8, label %9, label %20

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %11 = load <2 x i16>, ptr %10, align 8, !tbaa !9
  %12 = sitofp <2 x i16> %11 to <2 x float>
  %13 = fmul <2 x float> %12, <float 5.000000e-01, float 5.000000e-01>
  %14 = load <2 x float>, ptr %5, align 16, !tbaa !5
  %15 = fmul <2 x float> %14, %13
  %16 = insertelement <2 x float> poison, float %7, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %18 = fdiv <2 x float> %15, %17
  %19 = fadd <2 x float> %13, %18
  store <2 x float> %19, ptr %2, align 4, !tbaa !5
  br label %21

20:                                               ; preds = %4
  call fastcc void @zero_v2(ptr noundef %2) #12
  br label %21

21:                                               ; preds = %20, %9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = load float, ptr %1, align 4, !tbaa !5
  store float %3, ptr %0, align 4, !tbaa !5
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !5
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !5
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #4 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_project_float_v3_m4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %1) #12
  %6 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  store float 1.000000e+00, ptr %6, align 4, !tbaa !5
  call void @mul_m4_v4(ptr noundef %3, ptr noundef nonnull %5) #13
  %7 = load float, ptr %6, align 4, !tbaa !5
  %8 = fcmp ogt float %7, 0x3E80000000000000
  br i1 %8, label %9, label %24

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %11 = load <2 x i16>, ptr %10, align 8, !tbaa !9
  %12 = sitofp <2 x i16> %11 to <2 x float>
  %13 = fmul <2 x float> %12, <float 5.000000e-01, float 5.000000e-01>
  %14 = load <2 x float>, ptr %5, align 16, !tbaa !5
  %15 = fmul <2 x float> %14, %13
  %16 = insertelement <2 x float> poison, float %7, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %18 = fdiv <2 x float> %15, %17
  %19 = fadd <2 x float> %13, %18
  store <2 x float> %19, ptr %2, align 4, !tbaa !5
  %20 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  %21 = load float, ptr %20, align 8, !tbaa !5
  %22 = fdiv float %21, %7
  %23 = getelementptr inbounds float, ptr %2, i64 2
  store float %22, ptr %23, align 4, !tbaa !5
  br label %25

24:                                               ; preds = %4
  call fastcc void @zero_v3(ptr noundef %2) #12
  br label %25

25:                                               ; preds = %24, %9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #4 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !5
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_view3d_project_base(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 47, i64 3
  %6 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 5
  %7 = tail call i32 @ED_view3d_project_short_global(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 7) #12, !range !15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  store i16 12000, ptr %6, align 4, !tbaa !16
  %10 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 6
  store i16 0, ptr %10, align 2, !tbaa !17
  br label %11

11:                                               ; preds = %9, %2
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_view3d_project_short_global(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 3
  %8 = tail call i32 @ED_view3d_project_short_ex(ptr noundef %0, ptr noundef nonnull %7, i8 noundef zeroext 0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #12, !range !15
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_view3d_project_short_ex(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  %8 = call fastcc i32 @ed_view3d_project__internal(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef nonnull %7, i32 noundef %5) #12, !range !24
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %6
  %11 = load <2 x float>, ptr %7, align 8
  %12 = extractelement <2 x float> %11, i64 0
  %13 = fcmp ogt float %12, -3.270000e+04
  %14 = fcmp olt float %12, 3.270000e+04
  %15 = and i1 %13, %14
  %16 = extractelement <2 x float> %11, i64 1
  %17 = fcmp ogt float %16, -3.270000e+04
  %18 = select i1 %15, i1 %17, i1 false
  %19 = fcmp olt float %16, 3.270000e+04
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %24

21:                                               ; preds = %10
  %22 = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %11)
  %23 = fptosi <2 x float> %22 to <2 x i16>
  store <2 x i16> %23, ptr %4, align 2, !tbaa !9
  br label %24

24:                                               ; preds = %10, %21, %6
  %25 = phi i32 [ 0, %21 ], [ %8, %6 ], [ 5, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ed_view3d_project__internal(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr nocapture noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  %8 = and i32 %5, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %12 = load ptr, ptr %11, align 8, !tbaa !18
  %13 = getelementptr inbounds %struct.RegionView3D, ptr %12, i64 0, i32 32
  %14 = load i16, ptr %13, align 2, !tbaa !25
  %15 = and i16 %14, 4
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = tail call zeroext i8 @ED_view3d_clipping_test(ptr noundef nonnull %12, ptr noundef %3, i8 noundef zeroext %2) #13
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %68

20:                                               ; preds = %10, %17, %6
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef %3) #12
  %21 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  store float 1.000000e+00, ptr %21, align 4, !tbaa !5
  call void @mul_m4_v4(ptr noundef %1, ptr noundef nonnull %7) #13
  %22 = and i32 %5, 8
  %23 = icmp eq i32 %22, 0
  %24 = load float, ptr %21, align 4
  %25 = call float @llvm.fabs.f32(float %24)
  %26 = fcmp ogt float %25, 0x3F50624DE0000000
  %27 = select i1 %23, i1 true, i1 %26
  br i1 %27, label %28, label %68

28:                                               ; preds = %20
  %29 = and i32 %5, 4
  %30 = icmp eq i32 %29, 0
  %31 = fcmp ogt float %24, 0x3F50624DE0000000
  %32 = select i1 %30, i1 true, i1 %31
  br i1 %32, label %33, label %68

33:                                               ; preds = %28
  %34 = fcmp une float %24, 0.000000e+00
  %35 = fdiv float 1.000000e+00, %24
  %36 = select i1 %34, float %35, float 0.000000e+00
  %37 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %38 = load i16, ptr %37, align 8, !tbaa !27
  %39 = sitofp i16 %38 to float
  %40 = fmul float %39, 5.000000e-01
  %41 = load float, ptr %7, align 16, !tbaa !5
  %42 = call float @llvm.fmuladd.f32(float %41, float %36, float 1.000000e+00)
  %43 = fmul float %40, %42
  %44 = and i32 %5, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %33
  %47 = fcmp ogt float %43, 0.000000e+00
  %48 = fcmp olt float %43, %39
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %50, label %68

50:                                               ; preds = %46, %33
  %51 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  %52 = load i16, ptr %51, align 2, !tbaa !28
  %53 = sitofp i16 %52 to float
  %54 = fmul float %53, 5.000000e-01
  %55 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !5
  %57 = call float @llvm.fmuladd.f32(float %56, float %36, float 1.000000e+00)
  %58 = fmul float %54, %57
  br i1 %45, label %63, label %59

59:                                               ; preds = %50
  %60 = fcmp ogt float %58, 0.000000e+00
  %61 = fcmp olt float %58, %53
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %63, label %68

63:                                               ; preds = %59, %50
  store float %43, ptr %4, align 4, !tbaa !5
  %64 = getelementptr inbounds float, ptr %4, i64 1
  store float %58, ptr %64, align 4, !tbaa !5
  %65 = fcmp olt float %24, 0.000000e+00
  %66 = select i1 %30, i1 %65, i1 false
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  call fastcc void @negate_v2(ptr noundef nonnull %4) #12
  br label %68

68:                                               ; preds = %20, %46, %59, %63, %67, %28, %17
  %69 = phi i32 [ 3, %17 ], [ 1, %28 ], [ 4, %59 ], [ 4, %46 ], [ 0, %63 ], [ 0, %67 ], [ 2, %20 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  ret i32 %69
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_view3d_project_int_ex(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  %8 = call fastcc i32 @ed_view3d_project__internal(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef nonnull %7, i32 noundef %5) #12, !range !24
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %6
  %11 = load <2 x float>, ptr %7, align 8
  %12 = extractelement <2 x float> %11, i64 0
  %13 = fcmp ogt float %12, -2.140000e+09
  %14 = fcmp olt float %12, 2.140000e+09
  %15 = and i1 %13, %14
  %16 = extractelement <2 x float> %11, i64 1
  %17 = fcmp ogt float %16, -2.140000e+09
  %18 = select i1 %15, i1 %17, i1 false
  %19 = fcmp olt float %16, 2.140000e+09
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %24

21:                                               ; preds = %10
  %22 = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %11)
  %23 = fptosi <2 x float> %22 to <2 x i32>
  store <2 x i32> %23, ptr %4, align 4, !tbaa !29
  br label %24

24:                                               ; preds = %10, %21, %6
  %25 = phi i32 [ 0, %21 ], [ %8, %6 ], [ 5, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_view3d_project_float_ex(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  %8 = call fastcc i32 @ed_view3d_project__internal(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef nonnull %7, i32 noundef %5) #12, !range !24
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = load float, ptr %7, align 4, !tbaa !5
  %12 = tail call float @llvm.fabs.f32(float %11)
  %13 = fcmp ueq float %12, 0x7FF0000000000000
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !5
  %17 = tail call float @llvm.fabs.f32(float %16)
  %18 = fcmp ueq float %17, 0x7FF0000000000000
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  call fastcc void @copy_v2_v2(ptr noundef %4, ptr noundef nonnull %7) #12
  br label %20

20:                                               ; preds = %10, %14, %19, %6
  %21 = phi i32 [ 0, %19 ], [ %8, %6 ], [ 5, %14 ], [ 5, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  ret i32 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = load float, ptr %1, align 4, !tbaa !5
  store float %3, ptr %0, align 4, !tbaa !5
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !5
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_view3d_project_short_object(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 6
  %8 = tail call i32 @ED_view3d_project_short_ex(ptr noundef %0, ptr noundef nonnull %7, i8 noundef zeroext 1, ptr noundef %1, ptr noundef %2, i32 noundef %3) #12, !range !15
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_view3d_project_int_global(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 3
  %8 = tail call i32 @ED_view3d_project_int_ex(ptr noundef %0, ptr noundef nonnull %7, i8 noundef zeroext 0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #12, !range !15
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_view3d_project_int_object(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 6
  %8 = tail call i32 @ED_view3d_project_int_ex(ptr noundef %0, ptr noundef nonnull %7, i8 noundef zeroext 1, ptr noundef %1, ptr noundef %2, i32 noundef %3) #12, !range !15
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_view3d_project_float_global(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 3
  %8 = tail call i32 @ED_view3d_project_float_ex(ptr noundef %0, ptr noundef nonnull %7, i8 noundef zeroext 0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #12, !range !15
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_view3d_project_float_object(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 6
  %8 = tail call i32 @ED_view3d_project_float_ex(ptr noundef %0, ptr noundef nonnull %7, i8 noundef zeroext 1, ptr noundef %1, ptr noundef %2, i32 noundef %3) #12, !range !15
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local float @ED_view3d_calc_zfac(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 3
  %5 = tail call fastcc float @mul_project_m4_v3_zfac(ptr noundef nonnull %4, ptr noundef %1) #12
  %6 = icmp eq ptr %2, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = fcmp olt float %5, 0.000000e+00
  %9 = zext i1 %8 to i8
  store i8 %9, ptr %2, align 1, !tbaa !30
  br label %10

10:                                               ; preds = %7, %3
  %11 = fcmp olt float %5, 0x3EB0C6F7A0000000
  %12 = fcmp ogt float %5, 0xBEB0C6F7A0000000
  %13 = and i1 %11, %12
  %14 = select i1 %13, float 1.000000e+00, float %5
  %15 = fcmp olt float %14, 0.000000e+00
  %16 = fneg float %14
  %17 = select i1 %15, float %16, float %14
  ret float %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @mul_project_m4_v3_zfac(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 3
  %4 = load float, ptr %3, align 4, !tbaa !5
  %5 = load float, ptr %1, align 4, !tbaa !5
  %6 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 3
  %7 = load float, ptr %6, align 4, !tbaa !5
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !5
  %10 = fmul float %7, %9
  %11 = tail call float @llvm.fmuladd.f32(float %4, float %5, float %10)
  %12 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  %13 = load float, ptr %12, align 4, !tbaa !5
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !5
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %15, float %11)
  %17 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 3
  %18 = load float, ptr %17, align 4, !tbaa !5
  %19 = fadd float %16, %18
  ret float %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_view3d_win_to_ray_ex(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  call fastcc void @view3d_win_to_ray_segment(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %8) #12
  %9 = icmp eq i8 %6, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %12 = load ptr, ptr %11, align 8, !tbaa !18
  %13 = call fastcc zeroext i8 @view3d_clip_segment(ptr noundef %12, ptr noundef %5, ptr noundef nonnull %8) #12, !range !31
  br label %14

14:                                               ; preds = %7, %10
  %15 = phi i8 [ %13, %10 ], [ 1, %7 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_win_to_ray_segment(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef writeonly %5, ptr noundef writeonly %6) unnamed_addr #0 {
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  %14 = icmp eq ptr %3, null
  %15 = select i1 %14, ptr %8, ptr %3
  %16 = icmp eq ptr %4, null
  %17 = select i1 %16, ptr %9, ptr %4
  call void @ED_view3d_win_to_vector(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %17) #12
  %18 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 24
  %19 = load i8, ptr %18, align 8, !tbaa !32
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 2, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %15, ptr noundef nonnull %22) #12
  br label %48

23:                                               ; preds = %7
  %24 = load float, ptr %2, align 4, !tbaa !5
  %25 = fmul float %24, 2.000000e+00
  %26 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %27 = load i16, ptr %26, align 8, !tbaa !27
  %28 = sitofp i16 %27 to float
  %29 = fdiv float %25, %28
  %30 = fadd float %29, -1.000000e+00
  store float %30, ptr %15, align 4, !tbaa !5
  %31 = getelementptr inbounds float, ptr %2, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !5
  %33 = fmul float %32, 2.000000e+00
  %34 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  %35 = load i16, ptr %34, align 2, !tbaa !28
  %36 = sitofp i16 %35 to float
  %37 = fdiv float %33, %36
  %38 = fadd float %37, -1.000000e+00
  %39 = select i1 %14, ptr %8, ptr %3
  %40 = getelementptr inbounds float, ptr %39, i64 1
  store float %38, ptr %40, align 4, !tbaa !5
  %41 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 25
  %42 = load i8, ptr %41, align 1, !tbaa !33
  %43 = icmp eq i8 %42, 2
  %44 = select i1 %14, ptr %8, ptr %3
  %45 = getelementptr inbounds float, ptr %44, i64 2
  %46 = select i1 %43, float -1.000000e+00, float 0.000000e+00
  store float %46, ptr %45, align 4, !tbaa !5
  %47 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 4
  call void @mul_project_m4_v3(ptr noundef nonnull %47, ptr noundef nonnull %15) #13
  br label %48

48:                                               ; preds = %23, %21
  %49 = load i8, ptr %18, align 8, !tbaa !32
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 25
  %53 = load i8, ptr %52, align 1, !tbaa !33
  %54 = icmp eq i8 %53, 2
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 33
  %57 = load float, ptr %56, align 8, !tbaa !34
  %58 = fmul float %57, 5.000000e-01
  store float %58, ptr %11, align 4, !tbaa !5
  %59 = fneg float %58
  store float %59, ptr %10, align 4, !tbaa !5
  br label %62

60:                                               ; preds = %51, %48
  %61 = call zeroext i8 @ED_view3d_clip_range_get(ptr noundef %1, ptr noundef nonnull %13, ptr noundef nonnull %10, ptr noundef nonnull %11, i8 noundef zeroext 0) #13
  br label %62

62:                                               ; preds = %60, %55
  %63 = icmp eq ptr %5, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %62
  %65 = load float, ptr %10, align 4, !tbaa !5
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %5, ptr noundef nonnull %15, ptr noundef nonnull %17, float noundef %65) #12
  br label %66

66:                                               ; preds = %64, %62
  %67 = icmp eq ptr %6, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %66
  %69 = load float, ptr %11, align 4, !tbaa !5
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %6, ptr noundef nonnull %15, ptr noundef nonnull %17, float noundef %69) #12
  br label %70

70:                                               ; preds = %68, %66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @view3d_clip_segment(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 32
  %5 = load i16, ptr %4, align 2, !tbaa !25
  %6 = and i16 %5, 4
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 7
  %10 = tail call zeroext i8 @clip_segment_v3_plane_n(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %9, i32 noundef 6) #13
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %3
  br label %13

13:                                               ; preds = %8, %12
  %14 = phi i8 [ 1, %12 ], [ 0, %8 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_view3d_win_to_ray(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = tail call zeroext i8 @ED_view3d_win_to_ray_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef %4, ptr noundef %3, i8 noundef zeroext %5) #12, !range !31
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_global_to_vector(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x float], align 16
  %5 = alloca [4 x float], align 16
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 24
  %7 = load i8, ptr %6, align 8, !tbaa !32
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %1) #12
  %10 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  store float 1.000000e+00, ptr %10, align 4, !tbaa !5
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %4) #12
  %11 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  store float 1.000000e+00, ptr %11, align 4, !tbaa !5
  %12 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 1
  call void @mul_m4_v4(ptr noundef nonnull %12, ptr noundef nonnull %5) #13
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5) #12
  %13 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 2
  call void @mul_m4_v4(ptr noundef nonnull %13, ptr noundef nonnull %5) #13
  call fastcc void @sub_v3_v3v3(ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %16

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 2, i64 2
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %15) #12
  br label %16

16:                                               ; preds = %14, %9
  call fastcc void @normalize_v3(ptr noundef %2) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !5
  %3 = fmul <2 x float> %2, <float 2.000000e+00, float 2.000000e+00>
  store <2 x float> %3, ptr %0, align 4, !tbaa !5
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !5
  %6 = fmul float %5, 2.000000e+00
  store float %6, ptr %4, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = load float, ptr %1, align 4, !tbaa !5
  %5 = load float, ptr %2, align 4, !tbaa !5
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !5
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !5
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !5
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !5
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !5
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #6 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_win_to_3d(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [3 x float], align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %9 = load ptr, ptr %8, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  %10 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 24
  %11 = load i8, ptr %10, align 8, !tbaa !32
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  %14 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 2, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %14) #12
  call void @ED_view3d_win_to_vector(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %7) #12
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %7) #12
  %15 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 2, i64 2
  %16 = call float @line_plane_factor_v3(ptr noundef %1, ptr noundef nonnull %15, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %17 = call float @llvm.fabs.f32(float %16)
  call void @interp_v3_v3v3(ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %6, float noundef %17) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  br label %66

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %20 = load <2 x float>, ptr %2, align 4, !tbaa !5
  %21 = fmul <2 x float> %20, <float 2.000000e+00, float 2.000000e+00>
  %22 = load <2 x i16>, ptr %19, align 8, !tbaa !9
  %23 = sitofp <2 x i16> %22 to <2 x float>
  %24 = fdiv <2 x float> %21, %23
  %25 = fadd <2 x float> %24, <float -1.000000e+00, float -1.000000e+00>
  %26 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 25
  %27 = load i8, ptr %26, align 1, !tbaa !33
  %28 = icmp eq i8 %27, 2
  br i1 %28, label %29, label %39

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 23
  %31 = load float, ptr %30, align 4, !tbaa !36
  %32 = tail call float @BKE_screen_view3d_zoom_to_fac(float noundef %31) #13
  %33 = fmul float %32, 4.000000e+00
  %34 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 19
  %35 = load <2 x float>, ptr %34, align 4, !tbaa !5
  %36 = insertelement <2 x float> poison, float %33, i64 0
  %37 = shufflevector <2 x float> %36, <2 x float> poison, <2 x i32> zeroinitializer
  %38 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %35, <2 x float> %37, <2 x float> %25)
  br label %39

39:                                               ; preds = %29, %18
  %40 = phi <2 x float> [ %38, %29 ], [ %25, %18 ]
  %41 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 4
  %42 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 4, i64 1
  %43 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 2, i64 3
  %44 = load <2 x float>, ptr %41, align 8, !tbaa !5
  %45 = load <2 x float>, ptr %42, align 8, !tbaa !5
  %46 = shufflevector <2 x float> %40, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %47 = fmul <2 x float> %46, %45
  %48 = shufflevector <2 x float> %40, <2 x float> poison, <2 x i32> zeroinitializer
  %49 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %44, <2 x float> %48, <2 x float> %47)
  %50 = load <2 x float>, ptr %43, align 8, !tbaa !5
  %51 = fadd <2 x float> %50, %49
  store <2 x float> %51, ptr %5, align 8, !tbaa !5
  %52 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 4, i64 0, i64 2
  %53 = load float, ptr %52, align 8, !tbaa !5
  %54 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 4, i64 1, i64 2
  %55 = load float, ptr %54, align 8, !tbaa !5
  %56 = extractelement <2 x float> %40, i64 1
  %57 = fmul float %56, %55
  %58 = extractelement <2 x float> %40, i64 0
  %59 = tail call float @llvm.fmuladd.f32(float %53, float %58, float %57)
  %60 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 2, i64 3, i64 2
  %61 = load float, ptr %60, align 8, !tbaa !5
  %62 = fadd float %61, %59
  %63 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float %62, ptr %63, align 8, !tbaa !5
  %64 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 2, i64 2
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %64) #12
  %65 = call float @closest_to_line_v3(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  br label %66

66:                                               ; preds = %39, %13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_win_to_vector(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %5 = load ptr, ptr %4, align 8, !tbaa !18
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 24
  %7 = load i8, ptr %6, align 8, !tbaa !32
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %3
  %10 = load float, ptr %1, align 4, !tbaa !5
  %11 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %12 = load i16, ptr %11, align 8, !tbaa !27
  %13 = sitofp i16 %12 to float
  %14 = fdiv float %10, %13
  %15 = tail call float @llvm.fmuladd.f32(float %14, float 2.000000e+00, float -1.000000e+00)
  store float %15, ptr %2, align 4, !tbaa !5
  %16 = getelementptr inbounds float, ptr %1, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !5
  %18 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  %19 = load i16, ptr %18, align 2, !tbaa !28
  %20 = sitofp i16 %19 to float
  %21 = fdiv float %17, %20
  %22 = tail call float @llvm.fmuladd.f32(float %21, float 2.000000e+00, float -1.000000e+00)
  %23 = getelementptr inbounds float, ptr %2, i64 1
  store float %22, ptr %23, align 4, !tbaa !5
  %24 = getelementptr inbounds float, ptr %2, i64 2
  store float -5.000000e-01, ptr %24, align 4, !tbaa !5
  %25 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 4
  tail call void @mul_project_m4_v3(ptr noundef nonnull %25, ptr noundef nonnull %2) #13
  %26 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 2, i64 3
  tail call fastcc void @sub_v3_v3(ptr noundef nonnull %2, ptr noundef nonnull %26) #12
  br label %29

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 2, i64 2
  tail call fastcc void @negate_v3_v3(ptr noundef %2, ptr noundef nonnull %28) #12
  br label %29

29:                                               ; preds = %27, %9
  tail call fastcc void @normalize_v3(ptr noundef %2) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = load float, ptr %1, align 4, !tbaa !5
  %5 = load float, ptr %2, align 4, !tbaa !5
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !5
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !5
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !5
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !5
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !5
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare float @line_plane_factor_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: optsize
declare float @BKE_screen_view3d_zoom_to_fac(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: optsize
declare float @closest_to_line_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_win_to_3d_int(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %6 = load <2 x i32>, ptr %2, align 4, !tbaa !29
  %7 = sitofp <2 x i32> %6 to <2 x float>
  store <2 x float> %7, ptr %5, align 8, !tbaa !5
  call void @ED_view3d_win_to_3d(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_view3d_win_to_delta(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, float noundef %3) local_unnamed_addr #8 {
  %5 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = load float, ptr %1, align 4, !tbaa !5
  %8 = fmul float %7, 2.000000e+00
  %9 = fmul float %8, %3
  %10 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %11 = load i16, ptr %10, align 8, !tbaa !27
  %12 = sitofp i16 %11 to float
  %13 = fdiv float %9, %12
  %14 = getelementptr inbounds float, ptr %1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !5
  %16 = fmul float %15, 2.000000e+00
  %17 = fmul float %16, %3
  %18 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  %19 = load i16, ptr %18, align 2, !tbaa !28
  %20 = sitofp i16 %19 to float
  %21 = fdiv float %17, %20
  %22 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 4
  %23 = load float, ptr %22, align 8, !tbaa !5
  %24 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 4, i64 1
  %25 = load float, ptr %24, align 8, !tbaa !5
  %26 = fmul float %25, %21
  %27 = tail call float @llvm.fmuladd.f32(float %23, float %13, float %26)
  store float %27, ptr %2, align 4, !tbaa !5
  %28 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 4, i64 0, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !5
  %30 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 4, i64 1, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !5
  %32 = fmul float %21, %31
  %33 = tail call float @llvm.fmuladd.f32(float %29, float %13, float %32)
  %34 = getelementptr inbounds float, ptr %2, i64 1
  store float %33, ptr %34, align 4, !tbaa !5
  %35 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 4, i64 0, i64 2
  %36 = load float, ptr %35, align 8, !tbaa !5
  %37 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 4, i64 1, i64 2
  %38 = load float, ptr %37, align 8, !tbaa !5
  %39 = fmul float %21, %38
  %40 = tail call float @llvm.fmuladd.f32(float %36, float %13, float %39)
  %41 = getelementptr inbounds float, ptr %2, i64 2
  store float %40, ptr %41, align 4, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare void @mul_project_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = load float, ptr %1, align 4, !tbaa !5
  %4 = load float, ptr %0, align 4, !tbaa !5
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !5
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !5
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !5
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !5
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !5
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !5
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = load float, ptr %1, align 4, !tbaa !5
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !5
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !5
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !5
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !5
  %11 = fneg float %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_view3d_win_to_segment(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  tail call fastcc void @view3d_win_to_ray_segment(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef %3, ptr noundef %4) #12
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = tail call fastcc zeroext i8 @view3d_clip_segment(ptr noundef %10, ptr noundef %3, ptr noundef %4) #12, !range !31
  br label %12

12:                                               ; preds = %6, %8
  %13 = phi i8 [ %11, %8 ], [ 1, %6 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_ob_project_mat_get(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %5 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  call void @mul_m4_m4m4(ptr noundef %2, ptr noundef %0, ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_unproject(ptr noundef %0, ptr nocapture noundef writeonly %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #0 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  %9 = fpext float %2 to double
  %10 = fpext float %3 to double
  %11 = fpext float %4 to double
  %12 = getelementptr inbounds %struct.bglMats, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %struct.bglMats, ptr %0, i64 0, i32 2
  %14 = call i32 @gluUnProject(double noundef %9, double noundef %10, double noundef %11, ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #13
  %15 = load double, ptr %6, align 8, !tbaa !37
  %16 = load double, ptr %7, align 8, !tbaa !37
  %17 = insertelement <2 x double> poison, double %15, i64 0
  %18 = insertelement <2 x double> %17, double %16, i64 1
  %19 = fptrunc <2 x double> %18 to <2 x float>
  store <2 x float> %19, ptr %1, align 4, !tbaa !5
  %20 = load double, ptr %8, align 8, !tbaa !37
  %21 = fptrunc double %20 to float
  %22 = getelementptr inbounds float, ptr %1, i64 2
  store float %21, ptr %22, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  ret void
}

; Function Attrs: optsize
declare i32 @gluUnProject(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_clipping_test(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v2(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !5
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_clip_range_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #2 {
  %5 = load float, ptr %1, align 4, !tbaa !5
  %6 = load float, ptr %2, align 4, !tbaa !5
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !5
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !5
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !5
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !5
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !5
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !5
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %3, float %15)
  %19 = getelementptr inbounds float, ptr %0, i64 2
  store float %18, ptr %19, align 4, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @clip_segment_v3_plane_n(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #12
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #13
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #12
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #12
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = load float, ptr %0, align 4, !tbaa !5
  %4 = load float, ptr %1, align 4, !tbaa !5
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !5
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !5
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !5
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #2 {
  %4 = load float, ptr %1, align 4, !tbaa !5
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !5
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !5
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !5
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !5
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"short", !7, i64 0}
!11 = !{!12, !13, i64 32}
!12 = !{!"Base", !13, i64 0, !13, i64 8, !14, i64 16, !14, i64 20, !14, i64 24, !10, i64 28, !10, i64 30, !13, i64 32}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"int", !7, i64 0}
!15 = !{i32 0, i32 6}
!16 = !{!12, !10, i64 28}
!17 = !{!12, !10, i64 30}
!18 = !{!19, !13, i64 376}
!19 = !{!"ARegion", !13, i64 0, !13, i64 8, !20, i64 16, !22, i64 176, !22, i64 192, !10, i64 208, !10, i64 210, !10, i64 212, !10, i64 214, !10, i64 216, !10, i64 218, !6, i64 220, !10, i64 224, !10, i64 226, !10, i64 228, !10, i64 230, !10, i64 232, !10, i64 234, !10, i64 236, !10, i64 238, !13, i64 240, !23, i64 248, !23, i64 264, !23, i64 280, !23, i64 296, !23, i64 312, !23, i64 328, !23, i64 344, !13, i64 360, !13, i64 368, !13, i64 376}
!20 = !{!"View2D", !21, i64 0, !21, i64 16, !22, i64 32, !22, i64 48, !22, i64 64, !7, i64 80, !7, i64 88, !6, i64 96, !6, i64 100, !10, i64 104, !10, i64 106, !10, i64 108, !10, i64 110, !10, i64 112, !10, i64 114, !10, i64 116, !10, i64 118, !10, i64 120, !10, i64 122, !10, i64 124, !10, i64 126, !13, i64 128, !14, i64 136, !14, i64 140, !13, i64 144, !13, i64 152}
!21 = !{!"rctf", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!22 = !{!"rcti", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12}
!23 = !{!"ListBase", !13, i64 0, !13, i64 8}
!24 = !{i32 0, i32 5}
!25 = !{!26, !10, i64 826}
!26 = !{!"RegionView3D", !7, i64 0, !7, i64 64, !7, i64 128, !7, i64 192, !7, i64 256, !7, i64 320, !7, i64 384, !7, i64 448, !7, i64 544, !13, i64 640, !13, i64 648, !13, i64 656, !13, i64 664, !13, i64 672, !13, i64 680, !13, i64 688, !7, i64 696, !7, i64 760, !6, i64 776, !6, i64 780, !6, i64 784, !6, i64 788, !7, i64 792, !6, i64 804, !7, i64 808, !7, i64 809, !7, i64 810, !7, i64 811, !7, i64 812, !7, i64 813, !7, i64 816, !10, i64 824, !10, i64 826, !7, i64 828, !10, i64 844, !10, i64 846, !6, i64 848, !7, i64 852, !6, i64 864, !7, i64 868}
!27 = !{!19, !10, i64 208}
!28 = !{!19, !10, i64 210}
!29 = !{!14, !14, i64 0}
!30 = !{!7, !7, i64 0}
!31 = !{i8 0, i8 2}
!32 = !{!26, !7, i64 808}
!33 = !{!26, !7, i64 809}
!34 = !{!35, !6, i64 256}
!35 = !{!"View3D", !13, i64 0, !13, i64 8, !23, i64 16, !14, i64 32, !6, i64 36, !7, i64 40, !7, i64 56, !6, i64 72, !6, i64 76, !7, i64 80, !7, i64 81, !14, i64 84, !14, i64 88, !10, i64 92, !10, i64 94, !13, i64 96, !13, i64 104, !21, i64 112, !23, i64 128, !13, i64 144, !13, i64 152, !7, i64 160, !14, i64 224, !14, i64 228, !10, i64 232, !10, i64 234, !10, i64 236, !10, i64 238, !10, i64 240, !10, i64 242, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !7, i64 260, !7, i64 272, !10, i64 284, !10, i64 286, !10, i64 288, !7, i64 290, !7, i64 291, !7, i64 292, !7, i64 293, !7, i64 294, !23, i64 296, !23, i64 312, !23, i64 328, !7, i64 344, !7, i64 345, !7, i64 346, !7, i64 347, !13, i64 352, !13, i64 360, !13, i64 368}
!36 = !{!26, !6, i64 804}
!37 = !{!38, !38, i64 0}
!38 = !{!"double", !7, i64 0}
