; ModuleID = 'blender/source/blender/blenlib/intern/math_matrix.c'
source_filename = "blender/source/blender/blenlib/intern/math_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SpaceTransform = type { [4 x [4 x float]], [4 x [4 x float]] }

@.str.1 = private unnamed_addr constant [10 x i8] c"%f %f %f\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"%f %f %f %f\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @zero_m2(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @zero_m3(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %0, i8 0, i64 36, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @zero_m4(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @unit_m2(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %0, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @unit_m3(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float 1.000000e+00, ptr %2, align 4, !tbaa !34
  %3 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %0, align 4, !tbaa !34
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %3, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @unit_m4(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 3
  store float 1.000000e+00, ptr %2, align 4, !tbaa !34
  %3 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  store float 1.000000e+00, ptr %3, align 4, !tbaa !34
  %4 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  store float 1.000000e+00, ptr %4, align 4, !tbaa !34
  store float 1.000000e+00, ptr %0, align 4, !tbaa !34
  %5 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  %6 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  %7 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @copy_m2_m2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @copy_m3_m3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %0, ptr noundef nonnull align 4 dereferenceable(36) %1, i64 36, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @copy_m4_m4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 64, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @copy_m3_m4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float %5, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %8, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds [4 x float], ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds [3 x float], ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %14, ptr %15, align 4, !tbaa !34
  %16 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float %17, ptr %18, align 4, !tbaa !34
  %19 = getelementptr inbounds [4 x float], ptr %1, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = getelementptr inbounds [3 x float], ptr %0, i64 2
  store float %20, ptr %21, align 4, !tbaa !34
  %22 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float %23, ptr %24, align 4, !tbaa !34
  %25 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %26, ptr %27, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @copy_m4_m3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  store float %5, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  store float %8, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds [3 x float], ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds [4 x float], ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds [3 x float], ptr %1, i64 1, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  store float %14, ptr %15, align 4, !tbaa !34
  %16 = getelementptr inbounds [3 x float], ptr %1, i64 1, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  store float %17, ptr %18, align 4, !tbaa !34
  %19 = getelementptr inbounds [3 x float], ptr %1, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = getelementptr inbounds [4 x float], ptr %0, i64 2
  store float %20, ptr %21, align 4, !tbaa !34
  %22 = getelementptr inbounds [3 x float], ptr %1, i64 2, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  store float %23, ptr %24, align 4, !tbaa !34
  %25 = getelementptr inbounds [3 x float], ptr %1, i64 2, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  store float %26, ptr %27, align 4, !tbaa !34
  %28 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 3
  store float 0.000000e+00, ptr %28, align 4, !tbaa !34
  %29 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 3
  store float 0.000000e+00, ptr %29, align 4, !tbaa !34
  %30 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  %31 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %31, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @copy_m3_m3d(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = load <4 x double>, ptr %1, align 8, !tbaa !38
  %4 = fptrunc <4 x double> %3 to <4 x float>
  store <4 x float> %4, ptr %0, align 4, !tbaa !34
  %5 = getelementptr inbounds [3 x double], ptr %1, i64 1, i64 1
  %6 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  %7 = load <4 x double>, ptr %5, align 8, !tbaa !38
  %8 = fptrunc <4 x double> %7 to <4 x float>
  store <4 x float> %8, ptr %6, align 4, !tbaa !34
  %9 = getelementptr inbounds [3 x double], ptr %1, i64 2, i64 2
  %10 = load double, ptr %9, align 8, !tbaa !38
  %11 = fptrunc double %10 to float
  %12 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %11, ptr %12, align 4, !tbaa !34
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @swap_m3m3(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #4 {
  br label %3

3:                                                ; preds = %2, %13
  %4 = phi i64 [ 0, %2 ], [ %14, %13 ]
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ 0, %3 ], [ %11, %5 ]
  %7 = getelementptr inbounds [3 x float], ptr %0, i64 %4, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds [3 x float], ptr %1, i64 %4, i64 %6
  %10 = load float, ptr %9, align 4, !tbaa !34
  store float %10, ptr %7, align 4, !tbaa !34
  store float %8, ptr %9, align 4, !tbaa !34
  %11 = add nuw nsw i64 %6, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %5, !llvm.loop !40

13:                                               ; preds = %5
  %14 = add nuw nsw i64 %4, 1
  %15 = icmp eq i64 %14, 3
  br i1 %15, label %16, label %3, !llvm.loop !42

16:                                               ; preds = %13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @swap_m4m4(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #4 {
  br label %3

3:                                                ; preds = %2, %13
  %4 = phi i64 [ 0, %2 ], [ %14, %13 ]
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ 0, %3 ], [ %11, %5 ]
  %7 = getelementptr inbounds [4 x float], ptr %0, i64 %4, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds [4 x float], ptr %1, i64 %4, i64 %6
  %10 = load float, ptr %9, align 4, !tbaa !34
  store float %10, ptr %7, align 4, !tbaa !34
  store float %8, ptr %9, align 4, !tbaa !34
  %11 = add nuw nsw i64 %6, 1
  %12 = icmp eq i64 %11, 4
  br i1 %12, label %13, label %5, !llvm.loop !43

13:                                               ; preds = %5
  %14 = add nuw nsw i64 %4, 1
  %15 = icmp eq i64 %14, 4
  br i1 %15, label %16, label %3, !llvm.loop !44

16:                                               ; preds = %13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_m4_m4m4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #21
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef %2) #22
  call void @copy_m4_m4(ptr noundef nonnull %5, ptr noundef %1) #22
  %6 = load <4 x float>, ptr %4, align 16
  %7 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  %8 = load <4 x float>, ptr %7, align 4
  %9 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 1
  %10 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  %11 = load <4 x float>, ptr %10, align 8
  %12 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 2
  %13 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  %14 = load <4 x float>, ptr %13, align 4
  %15 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3
  %16 = load <4 x float>, ptr %5, align 16, !tbaa !34
  %17 = load <4 x float>, ptr %9, align 16, !tbaa !34
  %18 = shufflevector <4 x float> %8, <4 x float> poison, <4 x i32> zeroinitializer
  %19 = fmul <4 x float> %18, %17
  %20 = shufflevector <4 x float> %6, <4 x float> poison, <4 x i32> zeroinitializer
  %21 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %20, <4 x float> %16, <4 x float> %19)
  %22 = load <4 x float>, ptr %12, align 16, !tbaa !34
  %23 = shufflevector <4 x float> %11, <4 x float> poison, <4 x i32> zeroinitializer
  %24 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %23, <4 x float> %22, <4 x float> %21)
  %25 = load <4 x float>, ptr %15, align 16, !tbaa !34
  %26 = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> zeroinitializer
  %27 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %26, <4 x float> %25, <4 x float> %24)
  store <4 x float> %27, ptr %0, align 4, !tbaa !34
  %28 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 1
  %29 = load <4 x float>, ptr %28, align 16
  %30 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 1, i64 1
  %31 = load <4 x float>, ptr %30, align 4
  %32 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 1, i64 2
  %33 = load <4 x float>, ptr %32, align 8
  %34 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 1, i64 3
  %35 = load <4 x float>, ptr %34, align 4
  %36 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %37 = shufflevector <4 x float> %31, <4 x float> poison, <4 x i32> zeroinitializer
  %38 = fmul <4 x float> %17, %37
  %39 = shufflevector <4 x float> %29, <4 x float> poison, <4 x i32> zeroinitializer
  %40 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %39, <4 x float> %16, <4 x float> %38)
  %41 = shufflevector <4 x float> %33, <4 x float> poison, <4 x i32> zeroinitializer
  %42 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %41, <4 x float> %22, <4 x float> %40)
  %43 = shufflevector <4 x float> %35, <4 x float> poison, <4 x i32> zeroinitializer
  %44 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %43, <4 x float> %25, <4 x float> %42)
  store <4 x float> %44, ptr %36, align 4, !tbaa !34
  %45 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 2
  %46 = load <4 x float>, ptr %45, align 16
  %47 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 2, i64 1
  %48 = load <4 x float>, ptr %47, align 4
  %49 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 2, i64 2
  %50 = load <4 x float>, ptr %49, align 8
  %51 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 2, i64 3
  %52 = load <4 x float>, ptr %51, align 4
  %53 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %54 = shufflevector <4 x float> %48, <4 x float> poison, <4 x i32> zeroinitializer
  %55 = fmul <4 x float> %17, %54
  %56 = shufflevector <4 x float> %46, <4 x float> poison, <4 x i32> zeroinitializer
  %57 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %56, <4 x float> %16, <4 x float> %55)
  %58 = shufflevector <4 x float> %50, <4 x float> poison, <4 x i32> zeroinitializer
  %59 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %58, <4 x float> %22, <4 x float> %57)
  %60 = shufflevector <4 x float> %52, <4 x float> poison, <4 x i32> zeroinitializer
  %61 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %60, <4 x float> %25, <4 x float> %59)
  store <4 x float> %61, ptr %53, align 4, !tbaa !34
  %62 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3
  %63 = load <4 x float>, ptr %62, align 16
  %64 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !34
  %66 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3, i64 2
  %67 = load float, ptr %66, align 8, !tbaa !34
  %68 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3, i64 3
  %69 = load float, ptr %68, align 4, !tbaa !34
  %70 = getelementptr inbounds [4 x float], ptr %0, i64 3
  %71 = insertelement <4 x float> poison, float %65, i64 0
  %72 = shufflevector <4 x float> %71, <4 x float> poison, <4 x i32> zeroinitializer
  %73 = fmul <4 x float> %17, %72
  %74 = shufflevector <4 x float> %63, <4 x float> poison, <4 x i32> zeroinitializer
  %75 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %74, <4 x float> %16, <4 x float> %73)
  %76 = insertelement <4 x float> poison, float %67, i64 0
  %77 = shufflevector <4 x float> %76, <4 x float> poison, <4 x i32> zeroinitializer
  %78 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %77, <4 x float> %22, <4 x float> %75)
  %79 = insertelement <4 x float> poison, float %69, i64 0
  %80 = shufflevector <4 x float> %79, <4 x float> poison, <4 x i32> zeroinitializer
  %81 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %80, <4 x float> %25, <4 x float> %78)
  store <4 x float> %81, ptr %70, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #21
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_m3_m3m3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #21
  call void @copy_m3_m3(ptr noundef nonnull %4, ptr noundef %2) #22
  call void @copy_m3_m3(ptr noundef nonnull %5, ptr noundef %1) #22
  %6 = load <4 x float>, ptr %4, align 16
  %7 = load float, ptr %5, align 16, !tbaa !34
  %8 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %9 = load <4 x float>, ptr %8, align 4
  %10 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %13 = load <4 x float>, ptr %12, align 8
  %14 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2
  %15 = load float, ptr %14, align 8, !tbaa !34
  %16 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %17 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1, i64 1
  %18 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2, i64 1
  %19 = load <2 x float>, ptr %16, align 4, !tbaa !34
  %20 = load <2 x float>, ptr %17, align 16, !tbaa !34
  %21 = load <2 x float>, ptr %18, align 4, !tbaa !34
  %22 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 1
  %25 = load float, ptr %24, align 16, !tbaa !34
  %26 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = insertelement <4 x float> poison, float %11, i64 0
  %29 = shufflevector <2 x float> %20, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %30 = shufflevector <4 x float> %28, <4 x float> %29, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %31 = shufflevector <4 x float> %30, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %32 = insertelement <4 x float> %9, float %25, i64 1
  %33 = shufflevector <4 x float> %32, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %34 = fmul <4 x float> %31, %33
  %35 = insertelement <4 x float> %6, float %23, i64 1
  %36 = shufflevector <4 x float> %35, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %37 = insertelement <4 x float> poison, float %7, i64 0
  %38 = shufflevector <2 x float> %19, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %39 = shufflevector <4 x float> %37, <4 x float> %38, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %40 = shufflevector <4 x float> %39, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %41 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %36, <4 x float> %40, <4 x float> %34)
  %42 = insertelement <4 x float> %13, float %27, i64 1
  %43 = shufflevector <4 x float> %42, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %44 = insertelement <4 x float> poison, float %15, i64 0
  %45 = shufflevector <2 x float> %21, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %46 = shufflevector <4 x float> %44, <4 x float> %45, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %47 = shufflevector <4 x float> %46, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %48 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %43, <4 x float> %47, <4 x float> %41)
  store <4 x float> %48, ptr %0, align 4, !tbaa !34
  %49 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  %50 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2
  %51 = load float, ptr %50, align 8, !tbaa !34
  %52 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !34
  %54 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 2
  %55 = load float, ptr %54, align 16, !tbaa !34
  %56 = insertelement <4 x float> %29, float %11, i64 2
  %57 = shufflevector <4 x float> %56, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %58 = insertelement <4 x float> poison, float %25, i64 0
  %59 = insertelement <4 x float> %58, float %53, i64 1
  %60 = shufflevector <4 x float> %59, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %61 = fmul <4 x float> %57, %60
  %62 = insertelement <4 x float> poison, float %23, i64 0
  %63 = insertelement <4 x float> %62, float %51, i64 1
  %64 = shufflevector <4 x float> %63, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %65 = insertelement <4 x float> %38, float %7, i64 2
  %66 = shufflevector <4 x float> %65, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %67 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %64, <4 x float> %66, <4 x float> %61)
  %68 = insertelement <4 x float> poison, float %27, i64 0
  %69 = insertelement <4 x float> %68, float %55, i64 1
  %70 = shufflevector <4 x float> %69, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %71 = insertelement <4 x float> %45, float %15, i64 2
  %72 = shufflevector <4 x float> %71, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %73 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %70, <4 x float> %72, <4 x float> %67)
  store <4 x float> %73, ptr %49, align 4, !tbaa !34
  %74 = extractelement <2 x float> %20, i64 1
  %75 = fmul float %74, %53
  %76 = extractelement <2 x float> %19, i64 1
  %77 = tail call float @llvm.fmuladd.f32(float %51, float %76, float %75)
  %78 = extractelement <2 x float> %21, i64 1
  %79 = tail call float @llvm.fmuladd.f32(float %55, float %78, float %77)
  %80 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %79, ptr %80, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_m4_m4m3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #21
  call void @copy_m3_m3(ptr noundef nonnull %4, ptr noundef %2) #22
  call void @copy_m4_m4(ptr noundef nonnull %5, ptr noundef %1) #22
  %6 = load float, ptr %4, align 16, !tbaa !34
  %7 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 1
  %10 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %11 = load float, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 2
  %13 = load <2 x float>, ptr %5, align 16, !tbaa !34
  %14 = load <2 x float>, ptr %9, align 16, !tbaa !34
  %15 = insertelement <2 x float> poison, float %8, i64 0
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %17 = fmul <2 x float> %16, %14
  %18 = insertelement <2 x float> poison, float %6, i64 0
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %20 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> %13, <2 x float> %17)
  %21 = load <2 x float>, ptr %12, align 16, !tbaa !34
  %22 = insertelement <2 x float> poison, float %11, i64 0
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer
  %24 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %23, <2 x float> %21, <2 x float> %20)
  store <2 x float> %24, ptr %0, align 4, !tbaa !34
  %25 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  %26 = load float, ptr %25, align 8, !tbaa !34
  %27 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 1, i64 2
  %28 = load float, ptr %27, align 8, !tbaa !34
  %29 = fmul float %8, %28
  %30 = tail call float @llvm.fmuladd.f32(float %6, float %26, float %29)
  %31 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 2, i64 2
  %32 = load float, ptr %31, align 8, !tbaa !34
  %33 = tail call float @llvm.fmuladd.f32(float %11, float %32, float %30)
  %34 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  store float %33, ptr %34, align 4, !tbaa !34
  %35 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 1
  %38 = load float, ptr %37, align 16, !tbaa !34
  %39 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %42 = insertelement <2 x float> poison, float %38, i64 0
  %43 = shufflevector <2 x float> %42, <2 x float> poison, <2 x i32> zeroinitializer
  %44 = fmul <2 x float> %14, %43
  %45 = insertelement <2 x float> poison, float %36, i64 0
  %46 = shufflevector <2 x float> %45, <2 x float> poison, <2 x i32> zeroinitializer
  %47 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %46, <2 x float> %13, <2 x float> %44)
  %48 = insertelement <2 x float> poison, float %40, i64 0
  %49 = shufflevector <2 x float> %48, <2 x float> poison, <2 x i32> zeroinitializer
  %50 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %49, <2 x float> %21, <2 x float> %47)
  store <2 x float> %50, ptr %41, align 4, !tbaa !34
  %51 = fmul float %28, %38
  %52 = tail call float @llvm.fmuladd.f32(float %36, float %26, float %51)
  %53 = tail call float @llvm.fmuladd.f32(float %40, float %32, float %52)
  %54 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  store float %53, ptr %54, align 4, !tbaa !34
  %55 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2
  %56 = load float, ptr %55, align 8, !tbaa !34
  %57 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !34
  %59 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 2
  %60 = load float, ptr %59, align 16, !tbaa !34
  %61 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %62 = insertelement <2 x float> poison, float %58, i64 0
  %63 = shufflevector <2 x float> %62, <2 x float> poison, <2 x i32> zeroinitializer
  %64 = fmul <2 x float> %14, %63
  %65 = insertelement <2 x float> poison, float %56, i64 0
  %66 = shufflevector <2 x float> %65, <2 x float> poison, <2 x i32> zeroinitializer
  %67 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %66, <2 x float> %13, <2 x float> %64)
  %68 = insertelement <2 x float> poison, float %60, i64 0
  %69 = shufflevector <2 x float> %68, <2 x float> poison, <2 x i32> zeroinitializer
  %70 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %69, <2 x float> %21, <2 x float> %67)
  store <2 x float> %70, ptr %61, align 4, !tbaa !34
  %71 = fmul float %28, %58
  %72 = tail call float @llvm.fmuladd.f32(float %56, float %26, float %71)
  %73 = tail call float @llvm.fmuladd.f32(float %60, float %32, float %72)
  %74 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  store float %73, ptr %74, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_m3_m3m4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #21
  call void @copy_m3_m3(ptr noundef nonnull %4, ptr noundef %2) #22
  call void @copy_m4_m4(ptr noundef nonnull %5, ptr noundef %1) #22
  %6 = load <4 x float>, ptr %4, align 16
  %7 = load float, ptr %5, align 16, !tbaa !34
  %8 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %9 = load <4 x float>, ptr %8, align 4
  %10 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 1
  %11 = load float, ptr %10, align 16, !tbaa !34
  %12 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %13 = load <4 x float>, ptr %12, align 8
  %14 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 2
  %15 = load float, ptr %14, align 16, !tbaa !34
  %16 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 1
  %17 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 1, i64 1
  %18 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 2, i64 1
  %19 = load <2 x float>, ptr %16, align 4, !tbaa !34
  %20 = load <2 x float>, ptr %17, align 4, !tbaa !34
  %21 = load <2 x float>, ptr %18, align 4, !tbaa !34
  %22 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 1
  %25 = load float, ptr %24, align 16, !tbaa !34
  %26 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = insertelement <4 x float> poison, float %11, i64 0
  %29 = shufflevector <2 x float> %20, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %30 = shufflevector <4 x float> %28, <4 x float> %29, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %31 = shufflevector <4 x float> %30, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %32 = insertelement <4 x float> %9, float %25, i64 1
  %33 = shufflevector <4 x float> %32, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %34 = fmul <4 x float> %31, %33
  %35 = insertelement <4 x float> %6, float %23, i64 1
  %36 = shufflevector <4 x float> %35, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %37 = insertelement <4 x float> poison, float %7, i64 0
  %38 = shufflevector <2 x float> %19, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %39 = shufflevector <4 x float> %37, <4 x float> %38, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %40 = shufflevector <4 x float> %39, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %41 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %36, <4 x float> %40, <4 x float> %34)
  %42 = insertelement <4 x float> %13, float %27, i64 1
  %43 = shufflevector <4 x float> %42, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %44 = insertelement <4 x float> poison, float %15, i64 0
  %45 = shufflevector <2 x float> %21, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %46 = shufflevector <4 x float> %44, <4 x float> %45, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %47 = shufflevector <4 x float> %46, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %48 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %43, <4 x float> %47, <4 x float> %41)
  store <4 x float> %48, ptr %0, align 4, !tbaa !34
  %49 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  %50 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2
  %51 = load float, ptr %50, align 8, !tbaa !34
  %52 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !34
  %54 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 2
  %55 = load float, ptr %54, align 16, !tbaa !34
  %56 = insertelement <4 x float> %29, float %11, i64 2
  %57 = shufflevector <4 x float> %56, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %58 = insertelement <4 x float> poison, float %25, i64 0
  %59 = insertelement <4 x float> %58, float %53, i64 1
  %60 = shufflevector <4 x float> %59, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %61 = fmul <4 x float> %57, %60
  %62 = insertelement <4 x float> poison, float %23, i64 0
  %63 = insertelement <4 x float> %62, float %51, i64 1
  %64 = shufflevector <4 x float> %63, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %65 = insertelement <4 x float> %38, float %7, i64 2
  %66 = shufflevector <4 x float> %65, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %67 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %64, <4 x float> %66, <4 x float> %61)
  %68 = insertelement <4 x float> poison, float %27, i64 0
  %69 = insertelement <4 x float> %68, float %55, i64 1
  %70 = shufflevector <4 x float> %69, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %71 = insertelement <4 x float> %45, float %15, i64 2
  %72 = shufflevector <4 x float> %71, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %73 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %70, <4 x float> %72, <4 x float> %67)
  store <4 x float> %73, ptr %49, align 4, !tbaa !34
  %74 = extractelement <2 x float> %20, i64 1
  %75 = fmul float %74, %53
  %76 = extractelement <2 x float> %19, i64 1
  %77 = tail call float @llvm.fmuladd.f32(float %51, float %76, float %75)
  %78 = extractelement <2 x float> %21, i64 1
  %79 = tail call float @llvm.fmuladd.f32(float %55, float %78, float %77)
  %80 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %79, ptr %80, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_m4_m3m4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #21
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef %2) #22
  call void @copy_m3_m3(ptr noundef nonnull %5, ptr noundef %1) #22
  %6 = load float, ptr %4, align 16, !tbaa !34
  %7 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1
  %10 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  %11 = load float, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2
  %13 = load <2 x float>, ptr %5, align 16, !tbaa !34
  %14 = load <2 x float>, ptr %9, align 4, !tbaa !34
  %15 = insertelement <2 x float> poison, float %8, i64 0
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %17 = fmul <2 x float> %16, %14
  %18 = insertelement <2 x float> poison, float %6, i64 0
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %20 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> %13, <2 x float> %17)
  %21 = load <2 x float>, ptr %12, align 8, !tbaa !34
  %22 = insertelement <2 x float> poison, float %11, i64 0
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer
  %24 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %23, <2 x float> %21, <2 x float> %20)
  store <2 x float> %24, ptr %0, align 4, !tbaa !34
  %25 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %26 = load float, ptr %25, align 8, !tbaa !34
  %27 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = fmul float %8, %28
  %30 = tail call float @llvm.fmuladd.f32(float %6, float %26, float %29)
  %31 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2, i64 2
  %32 = load float, ptr %31, align 16, !tbaa !34
  %33 = tail call float @llvm.fmuladd.f32(float %11, float %32, float %30)
  %34 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  store float %33, ptr %34, align 4, !tbaa !34
  %35 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 1
  %36 = load float, ptr %35, align 16, !tbaa !34
  %37 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 1, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !34
  %39 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 1, i64 2
  %40 = load float, ptr %39, align 8, !tbaa !34
  %41 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %42 = insertelement <2 x float> poison, float %38, i64 0
  %43 = shufflevector <2 x float> %42, <2 x float> poison, <2 x i32> zeroinitializer
  %44 = fmul <2 x float> %14, %43
  %45 = insertelement <2 x float> poison, float %36, i64 0
  %46 = shufflevector <2 x float> %45, <2 x float> poison, <2 x i32> zeroinitializer
  %47 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %46, <2 x float> %13, <2 x float> %44)
  %48 = insertelement <2 x float> poison, float %40, i64 0
  %49 = shufflevector <2 x float> %48, <2 x float> poison, <2 x i32> zeroinitializer
  %50 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %49, <2 x float> %21, <2 x float> %47)
  store <2 x float> %50, ptr %41, align 4, !tbaa !34
  %51 = fmul float %28, %38
  %52 = tail call float @llvm.fmuladd.f32(float %36, float %26, float %51)
  %53 = tail call float @llvm.fmuladd.f32(float %40, float %32, float %52)
  %54 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  store float %53, ptr %54, align 4, !tbaa !34
  %55 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 2
  %56 = load float, ptr %55, align 16, !tbaa !34
  %57 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 2, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !34
  %59 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 2, i64 2
  %60 = load float, ptr %59, align 8, !tbaa !34
  %61 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %62 = insertelement <2 x float> poison, float %58, i64 0
  %63 = shufflevector <2 x float> %62, <2 x float> poison, <2 x i32> zeroinitializer
  %64 = fmul <2 x float> %14, %63
  %65 = insertelement <2 x float> poison, float %56, i64 0
  %66 = shufflevector <2 x float> %65, <2 x float> poison, <2 x i32> zeroinitializer
  %67 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %66, <2 x float> %13, <2 x float> %64)
  %68 = insertelement <2 x float> poison, float %60, i64 0
  %69 = shufflevector <2 x float> %68, <2 x float> poison, <2 x i32> zeroinitializer
  %70 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %69, <2 x float> %21, <2 x float> %67)
  store <2 x float> %70, ptr %61, align 4, !tbaa !34
  %71 = fmul float %28, %58
  %72 = tail call float @llvm.fmuladd.f32(float %56, float %26, float %71)
  %73 = tail call float @llvm.fmuladd.f32(float %60, float %32, float %72)
  %74 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  store float %73, ptr %74, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_va_mul_m3_series_3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  tail call void @mul_m3_m3m3(ptr noundef %0, ptr noundef %1, ptr noundef %2) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_va_mul_m3_series_4(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #2 {
  tail call void @mul_m3_m3m3(ptr noundef %0, ptr noundef %1, ptr noundef %2) #22
  tail call void @mul_m3_m3m3(ptr noundef %0, ptr noundef %0, ptr noundef %3) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_va_mul_m3_series_5(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 {
  tail call void @mul_m3_m3m3(ptr noundef %0, ptr noundef %1, ptr noundef %2) #22
  tail call void @mul_m3_m3m3(ptr noundef %0, ptr noundef %0, ptr noundef %3) #22
  tail call void @mul_m3_m3m3(ptr noundef %0, ptr noundef %0, ptr noundef %4) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_va_mul_m3_series_6(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) local_unnamed_addr #2 {
  tail call void @mul_m3_m3m3(ptr noundef %0, ptr noundef %1, ptr noundef %2) #22
  tail call void @mul_m3_m3m3(ptr noundef %0, ptr noundef %0, ptr noundef %3) #22
  tail call void @mul_m3_m3m3(ptr noundef %0, ptr noundef %0, ptr noundef %4) #22
  tail call void @mul_m3_m3m3(ptr noundef %0, ptr noundef %0, ptr noundef %5) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_va_mul_m3_series_7(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6) local_unnamed_addr #2 {
  tail call void @mul_m3_m3m3(ptr noundef %0, ptr noundef %1, ptr noundef %2) #22
  tail call void @mul_m3_m3m3(ptr noundef %0, ptr noundef %0, ptr noundef %3) #22
  tail call void @mul_m3_m3m3(ptr noundef %0, ptr noundef %0, ptr noundef %4) #22
  tail call void @mul_m3_m3m3(ptr noundef %0, ptr noundef %0, ptr noundef %5) #22
  tail call void @mul_m3_m3m3(ptr noundef %0, ptr noundef %0, ptr noundef %6) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_va_mul_m3_series_8(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7) local_unnamed_addr #2 {
  tail call void @mul_m3_m3m3(ptr noundef %0, ptr noundef %1, ptr noundef %2) #22
  tail call void @mul_m3_m3m3(ptr noundef %0, ptr noundef %0, ptr noundef %3) #22
  tail call void @mul_m3_m3m3(ptr noundef %0, ptr noundef %0, ptr noundef %4) #22
  tail call void @mul_m3_m3m3(ptr noundef %0, ptr noundef %0, ptr noundef %5) #22
  tail call void @mul_m3_m3m3(ptr noundef %0, ptr noundef %0, ptr noundef %6) #22
  tail call void @mul_m3_m3m3(ptr noundef %0, ptr noundef %0, ptr noundef %7) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_va_mul_m3_series_9(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, ptr nocapture noundef readonly %8) local_unnamed_addr #2 {
  tail call void @mul_m3_m3m3(ptr noundef %0, ptr noundef %1, ptr noundef %2) #22
  tail call void @mul_m3_m3m3(ptr noundef %0, ptr noundef %0, ptr noundef %3) #22
  tail call void @mul_m3_m3m3(ptr noundef %0, ptr noundef %0, ptr noundef %4) #22
  tail call void @mul_m3_m3m3(ptr noundef %0, ptr noundef %0, ptr noundef %5) #22
  tail call void @mul_m3_m3m3(ptr noundef %0, ptr noundef %0, ptr noundef %6) #22
  tail call void @mul_m3_m3m3(ptr noundef %0, ptr noundef %0, ptr noundef %7) #22
  tail call void @mul_m3_m3m3(ptr noundef %0, ptr noundef %0, ptr noundef %8) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_va_mul_m4_series_3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %1, ptr noundef %2) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_va_mul_m4_series_4(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #2 {
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %1, ptr noundef %2) #22
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %3) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_va_mul_m4_series_5(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 {
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %1, ptr noundef %2) #22
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %3) #22
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %4) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_va_mul_m4_series_6(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) local_unnamed_addr #2 {
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %1, ptr noundef %2) #22
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %3) #22
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %4) #22
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %5) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_va_mul_m4_series_7(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6) local_unnamed_addr #2 {
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %1, ptr noundef %2) #22
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %3) #22
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %4) #22
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %5) #22
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %6) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_va_mul_m4_series_8(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7) local_unnamed_addr #2 {
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %1, ptr noundef %2) #22
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %3) #22
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %4) #22
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %5) #22
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %6) #22
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %7) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_va_mul_m4_series_9(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, ptr nocapture noundef readonly %8) local_unnamed_addr #2 {
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %1, ptr noundef %2) #22
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %3) #22
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %4) #22
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %5) #22
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %6) #22
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %7) #22
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %8) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_v2_m3v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  call fastcc void @copy_v2_v2(ptr noundef nonnull %4, ptr noundef %2) #22
  %6 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 1.000000e+00, ptr %6, align 4, !tbaa !34
  call void @mul_v3_m3v3(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull %4) #22
  %7 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %8 = load float, ptr %7, align 8, !tbaa !34
  %9 = load <2 x float>, ptr %5, align 8, !tbaa !34
  %10 = insertelement <2 x float> poison, float %8, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = fdiv <2 x float> %9, %11
  store <2 x float> %12, ptr %0, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !45 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_v3_m3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = getelementptr inbounds [3 x float], ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %2, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fmul float %7, %9
  %11 = tail call float @llvm.fmuladd.f32(float %4, float %5, float %10)
  %12 = getelementptr inbounds [3 x float], ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %2, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %15, float %11)
  store float %16, ptr %0, align 4, !tbaa !34
  %17 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = load float, ptr %2, align 4, !tbaa !34
  %20 = getelementptr inbounds [3 x float], ptr %1, i64 1, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = load float, ptr %8, align 4, !tbaa !34
  %23 = fmul float %21, %22
  %24 = tail call float @llvm.fmuladd.f32(float %18, float %19, float %23)
  %25 = getelementptr inbounds [3 x float], ptr %1, i64 2, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = load float, ptr %14, align 4, !tbaa !34
  %28 = tail call float @llvm.fmuladd.f32(float %26, float %27, float %24)
  %29 = getelementptr inbounds float, ptr %0, i64 1
  store float %28, ptr %29, align 4, !tbaa !34
  %30 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = load float, ptr %2, align 4, !tbaa !34
  %33 = getelementptr inbounds [3 x float], ptr %1, i64 1, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = load float, ptr %8, align 4, !tbaa !34
  %36 = fmul float %34, %35
  %37 = tail call float @llvm.fmuladd.f32(float %31, float %32, float %36)
  %38 = getelementptr inbounds [3 x float], ptr %1, i64 2, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !34
  %40 = load float, ptr %14, align 4, !tbaa !34
  %41 = tail call float @llvm.fmuladd.f32(float %39, float %40, float %37)
  %42 = getelementptr inbounds float, ptr %0, i64 2
  store float %41, ptr %42, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_m3_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  tail call void @mul_v2_m3v2(ptr noundef %1, ptr noundef %0, ptr noundef %1) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_m4_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = load float, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %5, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %6, float %9)
  %11 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  %16 = getelementptr inbounds [4 x float], ptr %0, i64 3
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fadd float %15, %17
  store float %18, ptr %1, align 4, !tbaa !34
  %19 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = fmul float %5, %22
  %24 = tail call float @llvm.fmuladd.f32(float %3, float %20, float %23)
  %25 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = tail call float @llvm.fmuladd.f32(float %26, float %14, float %24)
  %28 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = fadd float %29, %27
  store float %30, ptr %4, align 4, !tbaa !34
  %31 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = fmul float %5, %34
  %36 = tail call float @llvm.fmuladd.f32(float %3, float %32, float %35)
  %37 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !34
  %39 = tail call float @llvm.fmuladd.f32(float %38, float %14, float %36)
  %40 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !34
  %42 = fadd float %41, %39
  store float %42, ptr %13, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_v3_m4v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = load float, ptr %2, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %2, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = load float, ptr %1, align 4, !tbaa !34
  %8 = getelementptr inbounds [4 x float], ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fmul float %6, %9
  %11 = tail call float @llvm.fmuladd.f32(float %4, float %7, float %10)
  %12 = getelementptr inbounds [4 x float], ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %2, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %15, float %11)
  %17 = getelementptr inbounds [4 x float], ptr %1, i64 3
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fadd float %16, %18
  store float %19, ptr %0, align 4, !tbaa !34
  %20 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = fmul float %6, %23
  %25 = tail call float @llvm.fmuladd.f32(float %4, float %21, float %24)
  %26 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = load float, ptr %14, align 4, !tbaa !34
  %29 = tail call float @llvm.fmuladd.f32(float %27, float %28, float %25)
  %30 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = fadd float %29, %31
  %33 = getelementptr inbounds float, ptr %0, i64 1
  store float %32, ptr %33, align 4, !tbaa !34
  %34 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !34
  %38 = fmul float %6, %37
  %39 = tail call float @llvm.fmuladd.f32(float %4, float %35, float %38)
  %40 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !34
  %42 = load float, ptr %14, align 4, !tbaa !34
  %43 = tail call float @llvm.fmuladd.f32(float %41, float %42, float %39)
  %44 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !34
  %46 = fadd float %43, %45
  %47 = getelementptr inbounds float, ptr %0, i64 2
  store float %46, ptr %47, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_v2_m4v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = load float, ptr %2, align 4, !tbaa !34
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %2, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds [4 x float], ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fmul float %7, %9
  %11 = tail call float @llvm.fmuladd.f32(float %4, float %5, float %10)
  %12 = getelementptr inbounds [4 x float], ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %2, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %15, float %11)
  %17 = getelementptr inbounds [4 x float], ptr %1, i64 3
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fadd float %16, %18
  store float %19, ptr %0, align 4, !tbaa !34
  %20 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = load float, ptr %6, align 4, !tbaa !34
  %23 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fmul float %22, %24
  %26 = tail call float @llvm.fmuladd.f32(float %4, float %21, float %25)
  %27 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = load float, ptr %14, align 4, !tbaa !34
  %30 = tail call float @llvm.fmuladd.f32(float %28, float %29, float %26)
  %31 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = fadd float %30, %32
  %34 = getelementptr inbounds float, ptr %0, i64 1
  store float %33, ptr %34, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_v2_m2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = load float, ptr %2, align 4, !tbaa !34
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = getelementptr inbounds [2 x float], ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %2, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fmul float %7, %9
  %11 = tail call float @llvm.fmuladd.f32(float %5, float %4, float %10)
  store float %11, ptr %0, align 4, !tbaa !34
  %12 = getelementptr inbounds [2 x float], ptr %1, i64 0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds [2 x float], ptr %1, i64 1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = load float, ptr %8, align 4, !tbaa !34
  %17 = fmul float %15, %16
  %18 = tail call float @llvm.fmuladd.f32(float %13, float %4, float %17)
  %19 = getelementptr inbounds float, ptr %0, i64 1
  store float %18, ptr %19, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_m2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  tail call void @mul_v2_m2v2(ptr noundef %1, ptr noundef %0, ptr noundef %1) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_mat3_m4_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = load float, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %5, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %6, float %9)
  %11 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  store float %15, ptr %1, align 4, !tbaa !34
  %16 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fmul float %5, %19
  %21 = tail call float @llvm.fmuladd.f32(float %3, float %17, float %20)
  %22 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = tail call float @llvm.fmuladd.f32(float %23, float %14, float %21)
  store float %24, ptr %4, align 4, !tbaa !34
  %25 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = fmul float %5, %28
  %30 = tail call float @llvm.fmuladd.f32(float %3, float %26, float %29)
  %31 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = tail call float @llvm.fmuladd.f32(float %32, float %14, float %30)
  store float %33, ptr %13, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_project_m4_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = tail call fastcc float @mul_project_m4_v3_zfac(ptr noundef %0, ptr noundef %1) #22
  tail call void @mul_m4_v3(ptr noundef %0, ptr noundef %1) #22
  %4 = load <2 x float>, ptr %1, align 4, !tbaa !34
  %5 = insertelement <2 x float> poison, float %3, i64 0
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %7 = fdiv <2 x float> %4, %6
  store <2 x float> %7, ptr %1, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fdiv float %9, %3
  store float %10, ptr %8, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @mul_project_m4_v3_zfac(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !46 {
  %3 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 3
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 3
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fmul float %7, %9
  %11 = tail call float @llvm.fmuladd.f32(float %4, float %5, float %10)
  %12 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %15, float %11)
  %17 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 3
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fadd float %16, %18
  ret float %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_v3_project_m4_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = tail call fastcc float @mul_project_m4_v3_zfac(ptr noundef %1, ptr noundef %2) #22
  tail call void @mul_v3_m4v3(ptr noundef %0, ptr noundef %1, ptr noundef %2) #22
  %5 = load <2 x float>, ptr %0, align 4, !tbaa !34
  %6 = insertelement <2 x float> poison, float %4, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = fdiv <2 x float> %5, %7
  store <2 x float> %8, ptr %0, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fdiv float %10, %4
  store float %11, ptr %9, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_v2_project_m4_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = tail call fastcc float @mul_project_m4_v3_zfac(ptr noundef %1, ptr noundef %2) #22
  tail call void @mul_v2_m4v3(ptr noundef %0, ptr noundef %1, ptr noundef %2) #22
  %5 = load <2 x float>, ptr %0, align 4, !tbaa !34
  %6 = insertelement <2 x float> poison, float %4, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = fdiv <2 x float> %5, %7
  store <2 x float> %8, ptr %0, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_v4_m4v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = load float, ptr %2, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %2, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %2, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = load float, ptr %1, align 4, !tbaa !34
  %10 = getelementptr inbounds [4 x float], ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fmul float %6, %11
  %13 = tail call float @llvm.fmuladd.f32(float %4, float %9, float %12)
  %14 = getelementptr inbounds [4 x float], ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = tail call float @llvm.fmuladd.f32(float %8, float %15, float %13)
  %17 = getelementptr inbounds [4 x float], ptr %1, i64 3
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %2, i64 3
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = tail call float @llvm.fmuladd.f32(float %18, float %20, float %16)
  store float %21, ptr %0, align 4, !tbaa !34
  %22 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = fmul float %6, %25
  %27 = tail call float @llvm.fmuladd.f32(float %4, float %23, float %26)
  %28 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = tail call float @llvm.fmuladd.f32(float %8, float %29, float %27)
  %31 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = load float, ptr %19, align 4, !tbaa !34
  %34 = tail call float @llvm.fmuladd.f32(float %32, float %33, float %30)
  %35 = getelementptr inbounds float, ptr %0, i64 1
  store float %34, ptr %35, align 4, !tbaa !34
  %36 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !34
  %38 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !34
  %40 = fmul float %6, %39
  %41 = tail call float @llvm.fmuladd.f32(float %4, float %37, float %40)
  %42 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !34
  %44 = tail call float @llvm.fmuladd.f32(float %8, float %43, float %41)
  %45 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !34
  %47 = load float, ptr %19, align 4, !tbaa !34
  %48 = tail call float @llvm.fmuladd.f32(float %46, float %47, float %44)
  %49 = getelementptr inbounds float, ptr %0, i64 2
  store float %48, ptr %49, align 4, !tbaa !34
  %50 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 3
  %51 = load float, ptr %50, align 4, !tbaa !34
  %52 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 3
  %53 = load float, ptr %52, align 4, !tbaa !34
  %54 = fmul float %6, %53
  %55 = tail call float @llvm.fmuladd.f32(float %4, float %51, float %54)
  %56 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 3
  %57 = load float, ptr %56, align 4, !tbaa !34
  %58 = tail call float @llvm.fmuladd.f32(float %8, float %57, float %55)
  %59 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 3
  %60 = load float, ptr %59, align 4, !tbaa !34
  %61 = load float, ptr %19, align 4, !tbaa !34
  %62 = tail call float @llvm.fmuladd.f32(float %60, float %61, float %58)
  %63 = getelementptr inbounds float, ptr %0, i64 3
  store float %62, ptr %63, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_m4_v4(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  tail call void @mul_v4_m4v4(ptr noundef %1, ptr noundef %0, ptr noundef %1) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_v4d_m4v4d(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = load double, ptr %2, align 8, !tbaa !38
  %5 = getelementptr inbounds double, ptr %2, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !38
  %7 = getelementptr inbounds double, ptr %2, i64 2
  %8 = load double, ptr %7, align 8, !tbaa !38
  %9 = load float, ptr %1, align 4, !tbaa !34
  %10 = fpext float %9 to double
  %11 = getelementptr inbounds [4 x float], ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fpext float %12 to double
  %14 = fmul double %6, %13
  %15 = tail call double @llvm.fmuladd.f64(double %4, double %10, double %14)
  %16 = getelementptr inbounds [4 x float], ptr %1, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fpext float %17 to double
  %19 = tail call double @llvm.fmuladd.f64(double %8, double %18, double %15)
  %20 = getelementptr inbounds [4 x float], ptr %1, i64 3
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fpext float %21 to double
  %23 = getelementptr inbounds double, ptr %2, i64 3
  %24 = load double, ptr %23, align 8, !tbaa !38
  %25 = tail call double @llvm.fmuladd.f64(double %22, double %24, double %19)
  store double %25, ptr %0, align 8, !tbaa !38
  %26 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = fpext float %27 to double
  %29 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = fpext float %30 to double
  %32 = fmul double %6, %31
  %33 = tail call double @llvm.fmuladd.f64(double %4, double %28, double %32)
  %34 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = fpext float %35 to double
  %37 = tail call double @llvm.fmuladd.f64(double %8, double %36, double %33)
  %38 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !34
  %40 = fpext float %39 to double
  %41 = load double, ptr %23, align 8, !tbaa !38
  %42 = tail call double @llvm.fmuladd.f64(double %40, double %41, double %37)
  %43 = getelementptr inbounds double, ptr %0, i64 1
  store double %42, ptr %43, align 8, !tbaa !38
  %44 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !34
  %46 = fpext float %45 to double
  %47 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !34
  %49 = fpext float %48 to double
  %50 = fmul double %6, %49
  %51 = tail call double @llvm.fmuladd.f64(double %4, double %46, double %50)
  %52 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !34
  %54 = fpext float %53 to double
  %55 = tail call double @llvm.fmuladd.f64(double %8, double %54, double %51)
  %56 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !34
  %58 = fpext float %57 to double
  %59 = load double, ptr %23, align 8, !tbaa !38
  %60 = tail call double @llvm.fmuladd.f64(double %58, double %59, double %55)
  %61 = getelementptr inbounds double, ptr %0, i64 2
  store double %60, ptr %61, align 8, !tbaa !38
  %62 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 3
  %63 = load float, ptr %62, align 4, !tbaa !34
  %64 = fpext float %63 to double
  %65 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 3
  %66 = load float, ptr %65, align 4, !tbaa !34
  %67 = fpext float %66 to double
  %68 = fmul double %6, %67
  %69 = tail call double @llvm.fmuladd.f64(double %4, double %64, double %68)
  %70 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 3
  %71 = load float, ptr %70, align 4, !tbaa !34
  %72 = fpext float %71 to double
  %73 = tail call double @llvm.fmuladd.f64(double %8, double %72, double %69)
  %74 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 3
  %75 = load float, ptr %74, align 4, !tbaa !34
  %76 = fpext float %75 to double
  %77 = load double, ptr %23, align 8, !tbaa !38
  %78 = tail call double @llvm.fmuladd.f64(double %76, double %77, double %73)
  %79 = getelementptr inbounds double, ptr %0, i64 3
  store double %78, ptr %79, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_m4_v4d(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  tail call void @mul_v4d_m4v4d(ptr noundef %1, ptr noundef %0, ptr noundef %1) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_v2_m3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = getelementptr inbounds [3 x float], ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %2, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fmul float %7, %9
  %11 = tail call float @llvm.fmuladd.f32(float %4, float %5, float %10)
  %12 = getelementptr inbounds [3 x float], ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %2, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %15, float %11)
  store float %16, ptr %0, align 4, !tbaa !34
  %17 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = load float, ptr %2, align 4, !tbaa !34
  %20 = getelementptr inbounds [3 x float], ptr %1, i64 1, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = load float, ptr %8, align 4, !tbaa !34
  %23 = fmul float %21, %22
  %24 = tail call float @llvm.fmuladd.f32(float %18, float %19, float %23)
  %25 = getelementptr inbounds [3 x float], ptr %1, i64 2, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = load float, ptr %14, align 4, !tbaa !34
  %28 = tail call float @llvm.fmuladd.f32(float %26, float %27, float %24)
  %29 = getelementptr inbounds float, ptr %0, i64 1
  store float %28, ptr %29, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_m3_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  call void @mul_v3_m3v3(ptr noundef nonnull %3, ptr noundef %0, ptr noundef %1) #22
  call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !47 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_transposed_m3_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = load float, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %5, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %6, float %9)
  %11 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  store float %15, ptr %1, align 4, !tbaa !34
  %16 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fmul float %5, %19
  %21 = tail call float @llvm.fmuladd.f32(float %3, float %17, float %20)
  %22 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = tail call float @llvm.fmuladd.f32(float %23, float %14, float %21)
  store float %24, ptr %4, align 4, !tbaa !34
  %25 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = fmul float %5, %28
  %30 = tail call float @llvm.fmuladd.f32(float %3, float %26, float %29)
  %31 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = tail call float @llvm.fmuladd.f32(float %32, float %14, float %30)
  store float %33, ptr %13, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_transposed_mat3_m4_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = load float, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %5, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %6, float %9)
  %11 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  store float %15, ptr %1, align 4, !tbaa !34
  %16 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fmul float %5, %19
  %21 = tail call float @llvm.fmuladd.f32(float %3, float %17, float %20)
  %22 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = tail call float @llvm.fmuladd.f32(float %23, float %14, float %21)
  store float %24, ptr %4, align 4, !tbaa !34
  %25 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = fmul float %5, %28
  %30 = tail call float @llvm.fmuladd.f32(float %3, float %26, float %29)
  %31 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = tail call float @llvm.fmuladd.f32(float %32, float %14, float %30)
  store float %33, ptr %13, align 4, !tbaa !34
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @mul_m3_fl(ptr nocapture noundef %0, float noundef %1) local_unnamed_addr #4 {
  br label %3

3:                                                ; preds = %2, %12
  %4 = phi i64 [ 0, %2 ], [ %13, %12 ]
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ 0, %3 ], [ %10, %5 ]
  %7 = getelementptr inbounds [3 x float], ptr %0, i64 %4, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !34
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %10, 3
  br i1 %11, label %12, label %5, !llvm.loop !48

12:                                               ; preds = %5
  %13 = add nuw nsw i64 %4, 1
  %14 = icmp eq i64 %13, 3
  br i1 %14, label %15, label %3, !llvm.loop !49

15:                                               ; preds = %12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @mul_m4_fl(ptr nocapture noundef %0, float noundef %1) local_unnamed_addr #4 {
  %3 = insertelement <4 x float> poison, float %1, i64 0
  %4 = shufflevector <4 x float> %3, <4 x float> poison, <4 x i32> zeroinitializer
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i64 [ 0, %2 ], [ %10, %5 ]
  %7 = getelementptr inbounds [4 x float], ptr %0, i64 %6, i64 0
  %8 = load <4 x float>, ptr %7, align 4, !tbaa !34
  %9 = fmul <4 x float> %8, %4
  store <4 x float> %9, ptr %7, align 4, !tbaa !34
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %10, 4
  br i1 %11, label %12, label %5, !llvm.loop !50

12:                                               ; preds = %5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @mul_mat3_m4_fl(ptr nocapture noundef %0, float noundef %1) local_unnamed_addr #4 {
  br label %3

3:                                                ; preds = %2, %12
  %4 = phi i64 [ 0, %2 ], [ %13, %12 ]
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ 0, %3 ], [ %10, %5 ]
  %7 = getelementptr inbounds [4 x float], ptr %0, i64 %4, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !34
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %10, 3
  br i1 %11, label %12, label %5, !llvm.loop !51

12:                                               ; preds = %5
  %13 = add nuw nsw i64 %4, 1
  %14 = icmp eq i64 %13, 3
  br i1 %14, label %15, label %3, !llvm.loop !52

15:                                               ; preds = %12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @negate_m3(ptr nocapture noundef %0) local_unnamed_addr #4 {
  br label %2

2:                                                ; preds = %1, %11
  %3 = phi i64 [ 0, %1 ], [ %12, %11 ]
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %9, %4 ]
  %6 = getelementptr inbounds [4 x float], ptr %0, i64 %3, i64 %5
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fneg float %7
  store float %8, ptr %6, align 4, !tbaa !34
  %9 = add nuw nsw i64 %5, 1
  %10 = icmp eq i64 %9, 3
  br i1 %10, label %11, label %4, !llvm.loop !53

11:                                               ; preds = %4
  %12 = add nuw nsw i64 %3, 1
  %13 = icmp eq i64 %12, 3
  br i1 %13, label %14, label %2, !llvm.loop !54

14:                                               ; preds = %11
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @negate_m4(ptr nocapture noundef %0) local_unnamed_addr #4 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i64 [ 0, %1 ], [ %7, %2 ]
  %4 = getelementptr inbounds [4 x float], ptr %0, i64 %3, i64 0
  %5 = load <4 x float>, ptr %4, align 4, !tbaa !34
  %6 = fneg <4 x float> %5
  store <4 x float> %6, ptr %4, align 4, !tbaa !34
  %7 = add nuw nsw i64 %3, 1
  %8 = icmp eq i64 %7, 4
  br i1 %8, label %9, label %2, !llvm.loop !55

9:                                                ; preds = %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_m3_v3_double(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = load double, ptr %1, align 8, !tbaa !38
  %4 = getelementptr inbounds double, ptr %1, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !38
  %6 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %7 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %8 = getelementptr inbounds double, ptr %1, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !38
  %10 = load <2 x float>, ptr %0, align 4, !tbaa !34
  %11 = fpext <2 x float> %10 to <2 x double>
  %12 = load <2 x float>, ptr %6, align 4, !tbaa !34
  %13 = fpext <2 x float> %12 to <2 x double>
  %14 = insertelement <2 x double> poison, double %5, i64 0
  %15 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  %16 = fmul <2 x double> %15, %13
  %17 = insertelement <2 x double> poison, double %3, i64 0
  %18 = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> zeroinitializer
  %19 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %18, <2 x double> %11, <2 x double> %16)
  %20 = load <2 x float>, ptr %7, align 4, !tbaa !34
  %21 = fpext <2 x float> %20 to <2 x double>
  %22 = insertelement <2 x double> poison, double %9, i64 0
  %23 = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> zeroinitializer
  %24 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %21, <2 x double> %23, <2 x double> %19)
  store <2 x double> %24, ptr %1, align 8, !tbaa !38
  %25 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = fpext float %26 to double
  %28 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = fpext float %29 to double
  %31 = fmul double %5, %30
  %32 = tail call double @llvm.fmuladd.f64(double %3, double %27, double %31)
  %33 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = fpext float %34 to double
  %36 = tail call double @llvm.fmuladd.f64(double %35, double %9, double %32)
  store double %36, ptr %8, align 8, !tbaa !38
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @add_m3_m3m3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  br label %4

4:                                                ; preds = %3, %16
  %5 = phi i64 [ 0, %3 ], [ %17, %16 ]
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %14, %6 ]
  %8 = getelementptr inbounds [3 x float], ptr %1, i64 %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds [3 x float], ptr %2, i64 %5, i64 %7
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fadd float %9, %11
  %13 = getelementptr inbounds [3 x float], ptr %0, i64 %5, i64 %7
  store float %12, ptr %13, align 4, !tbaa !34
  %14 = add nuw nsw i64 %7, 1
  %15 = icmp eq i64 %14, 3
  br i1 %15, label %16, label %6, !llvm.loop !56

16:                                               ; preds = %6
  %17 = add nuw nsw i64 %5, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %4, !llvm.loop !57

19:                                               ; preds = %16
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @add_m4_m4m4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  br label %4

4:                                                ; preds = %3, %16
  %5 = phi i64 [ 0, %3 ], [ %17, %16 ]
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %14, %6 ]
  %8 = getelementptr inbounds [4 x float], ptr %1, i64 %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds [4 x float], ptr %2, i64 %5, i64 %7
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fadd float %9, %11
  %13 = getelementptr inbounds [4 x float], ptr %0, i64 %5, i64 %7
  store float %12, ptr %13, align 4, !tbaa !34
  %14 = add nuw nsw i64 %7, 1
  %15 = icmp eq i64 %14, 4
  br i1 %15, label %16, label %6, !llvm.loop !58

16:                                               ; preds = %6
  %17 = add nuw nsw i64 %5, 1
  %18 = icmp eq i64 %17, 4
  br i1 %18, label %19, label %4, !llvm.loop !59

19:                                               ; preds = %16
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @sub_m3_m3m3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  br label %4

4:                                                ; preds = %3, %16
  %5 = phi i64 [ 0, %3 ], [ %17, %16 ]
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %14, %6 ]
  %8 = getelementptr inbounds [3 x float], ptr %1, i64 %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds [3 x float], ptr %2, i64 %5, i64 %7
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fsub float %9, %11
  %13 = getelementptr inbounds [3 x float], ptr %0, i64 %5, i64 %7
  store float %12, ptr %13, align 4, !tbaa !34
  %14 = add nuw nsw i64 %7, 1
  %15 = icmp eq i64 %14, 3
  br i1 %15, label %16, label %6, !llvm.loop !60

16:                                               ; preds = %6
  %17 = add nuw nsw i64 %5, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %4, !llvm.loop !61

19:                                               ; preds = %16
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @sub_m4_m4m4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  br label %4

4:                                                ; preds = %3, %16
  %5 = phi i64 [ 0, %3 ], [ %17, %16 ]
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %14, %6 ]
  %8 = getelementptr inbounds [4 x float], ptr %1, i64 %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds [4 x float], ptr %2, i64 %5, i64 %7
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fsub float %9, %11
  %13 = getelementptr inbounds [4 x float], ptr %0, i64 %5, i64 %7
  store float %12, ptr %13, align 4, !tbaa !34
  %14 = add nuw nsw i64 %7, 1
  %15 = icmp eq i64 %14, 4
  br i1 %15, label %16, label %6, !llvm.loop !62

16:                                               ; preds = %6
  %17 = add nuw nsw i64 %5, 1
  %18 = icmp eq i64 %17, 4
  br i1 %18, label %19, label %4, !llvm.loop !63

19:                                               ; preds = %16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local float @determinant_m3_array(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = load float, ptr %0, align 4, !tbaa !34
  %3 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %4 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %7 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fneg float %10
  %14 = fmul float %12, %13
  %15 = tail call float @llvm.fmuladd.f32(float %5, float %8, float %14)
  %16 = load float, ptr %3, align 4, !tbaa !34
  %17 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fneg float %20
  %22 = fmul float %12, %21
  %23 = tail call float @llvm.fmuladd.f32(float %18, float %8, float %22)
  %24 = fneg float %16
  %25 = fmul float %23, %24
  %26 = tail call float @llvm.fmuladd.f32(float %2, float %15, float %25)
  %27 = load float, ptr %6, align 4, !tbaa !34
  %28 = fmul float %5, %21
  %29 = tail call float @llvm.fmuladd.f32(float %18, float %10, float %28)
  %30 = tail call float @llvm.fmuladd.f32(float %27, float %29, float %26)
  ret float %30
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local zeroext i8 @invert_m3_ex(ptr nocapture noundef %0, float noundef %1) local_unnamed_addr #4 {
  %3 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #21
  %4 = call zeroext i8 @invert_m3_m3_ex(ptr noundef nonnull %3, ptr noundef %0, float noundef %1) #22, !range !64
  call void @copy_m3_m3(ptr noundef %0, ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #21
  ret i8 %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local zeroext i8 @invert_m3_m3_ex(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) local_unnamed_addr #4 {
  tail call void @adjoint_m3_m3(ptr noundef %0, ptr noundef %1) #22
  %4 = tail call float @determinant_m3_array(ptr noundef %1) #22
  %5 = fcmp une float %4, 0.000000e+00
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = fdiv float 1.000000e+00, %4
  br label %8

8:                                                ; preds = %6, %17
  %9 = phi i64 [ 0, %6 ], [ %18, %17 ]
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 0, %8 ], [ %15, %10 ]
  %12 = getelementptr inbounds [3 x float], ptr %0, i64 %9, i64 %11
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fmul float %7, %13
  store float %14, ptr %12, align 4, !tbaa !34
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, 3
  br i1 %16, label %17, label %10, !llvm.loop !65

17:                                               ; preds = %10
  %18 = add nuw nsw i64 %9, 1
  %19 = icmp eq i64 %18, 3
  br i1 %19, label %20, label %8, !llvm.loop !66

20:                                               ; preds = %17, %3
  %21 = tail call float @llvm.fabs.f32(float %4)
  %22 = fcmp ogt float %21, %2
  %23 = zext i1 %22 to i8
  ret i8 %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @adjoint_m3_m3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds [3 x float], ptr %1, i64 1
  %4 = getelementptr inbounds [3 x float], ptr %1, i64 1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds [3 x float], ptr %1, i64 2
  %7 = getelementptr inbounds [3 x float], ptr %1, i64 2, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds [3 x float], ptr %1, i64 1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds [3 x float], ptr %1, i64 2, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fneg float %10
  %14 = fmul float %12, %13
  %15 = tail call float @llvm.fmuladd.f32(float %5, float %8, float %14)
  store float %15, ptr %0, align 4, !tbaa !34
  %16 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fneg float %17
  %19 = load float, ptr %7, align 4, !tbaa !34
  %20 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = load float, ptr %11, align 4, !tbaa !34
  %23 = fmul float %21, %22
  %24 = tail call float @llvm.fmuladd.f32(float %18, float %19, float %23)
  %25 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float %24, ptr %25, align 4, !tbaa !34
  %26 = load float, ptr %16, align 4, !tbaa !34
  %27 = load float, ptr %9, align 4, !tbaa !34
  %28 = load float, ptr %20, align 4, !tbaa !34
  %29 = load float, ptr %4, align 4, !tbaa !34
  %30 = fneg float %28
  %31 = fmul float %29, %30
  %32 = tail call float @llvm.fmuladd.f32(float %26, float %27, float %31)
  %33 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %32, ptr %33, align 4, !tbaa !34
  %34 = load float, ptr %3, align 4, !tbaa !34
  %35 = fneg float %34
  %36 = load float, ptr %7, align 4, !tbaa !34
  %37 = load float, ptr %9, align 4, !tbaa !34
  %38 = load float, ptr %6, align 4, !tbaa !34
  %39 = fmul float %37, %38
  %40 = tail call float @llvm.fmuladd.f32(float %35, float %36, float %39)
  %41 = getelementptr inbounds [3 x float], ptr %0, i64 1
  store float %40, ptr %41, align 4, !tbaa !34
  %42 = load float, ptr %1, align 4, !tbaa !34
  %43 = load float, ptr %7, align 4, !tbaa !34
  %44 = load float, ptr %20, align 4, !tbaa !34
  %45 = load float, ptr %6, align 4, !tbaa !34
  %46 = fneg float %44
  %47 = fmul float %45, %46
  %48 = tail call float @llvm.fmuladd.f32(float %42, float %43, float %47)
  %49 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %48, ptr %49, align 4, !tbaa !34
  %50 = load float, ptr %1, align 4, !tbaa !34
  %51 = fneg float %50
  %52 = load float, ptr %9, align 4, !tbaa !34
  %53 = load float, ptr %20, align 4, !tbaa !34
  %54 = load float, ptr %3, align 4, !tbaa !34
  %55 = fmul float %53, %54
  %56 = tail call float @llvm.fmuladd.f32(float %51, float %52, float %55)
  %57 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float %56, ptr %57, align 4, !tbaa !34
  %58 = load float, ptr %3, align 4, !tbaa !34
  %59 = load float, ptr %11, align 4, !tbaa !34
  %60 = load float, ptr %4, align 4, !tbaa !34
  %61 = load float, ptr %6, align 4, !tbaa !34
  %62 = fneg float %60
  %63 = fmul float %61, %62
  %64 = tail call float @llvm.fmuladd.f32(float %58, float %59, float %63)
  %65 = getelementptr inbounds [3 x float], ptr %0, i64 2
  store float %64, ptr %65, align 4, !tbaa !34
  %66 = load float, ptr %1, align 4, !tbaa !34
  %67 = fneg float %66
  %68 = load float, ptr %11, align 4, !tbaa !34
  %69 = load float, ptr %16, align 4, !tbaa !34
  %70 = load float, ptr %6, align 4, !tbaa !34
  %71 = fmul float %69, %70
  %72 = tail call float @llvm.fmuladd.f32(float %67, float %68, float %71)
  %73 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float %72, ptr %73, align 4, !tbaa !34
  %74 = load float, ptr %1, align 4, !tbaa !34
  %75 = load float, ptr %4, align 4, !tbaa !34
  %76 = load float, ptr %16, align 4, !tbaa !34
  %77 = load float, ptr %3, align 4, !tbaa !34
  %78 = fneg float %76
  %79 = fmul float %77, %78
  %80 = tail call float @llvm.fmuladd.f32(float %74, float %75, float %79)
  %81 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %80, ptr %81, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @invert_m3(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #21
  %3 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %2, ptr noundef %0) #22, !range !64
  call void @copy_m3_m3(ptr noundef %0, ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #21
  ret i8 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @invert_m3_m3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  tail call void @adjoint_m3_m3(ptr noundef %0, ptr noundef %1) #22
  %3 = tail call float @determinant_m3_array(ptr noundef %1) #22
  %4 = fcmp une float %3, 0.000000e+00
  br i1 %4, label %5, label %19

5:                                                ; preds = %2
  %6 = fdiv float 1.000000e+00, %3
  br label %7

7:                                                ; preds = %5, %16
  %8 = phi i64 [ 0, %5 ], [ %17, %16 ]
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %14, %9 ]
  %11 = getelementptr inbounds [3 x float], ptr %0, i64 %8, i64 %10
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fmul float %6, %12
  store float %13, ptr %11, align 4, !tbaa !34
  %14 = add nuw nsw i64 %10, 1
  %15 = icmp eq i64 %14, 3
  br i1 %15, label %16, label %9, !llvm.loop !67

16:                                               ; preds = %9
  %17 = add nuw nsw i64 %8, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %7, !llvm.loop !68

19:                                               ; preds = %16, %2
  %20 = zext i1 %4 to i8
  ret i8 %20
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @invert_m4(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #21
  %3 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %2, ptr noundef %0) #22, !range !64
  call void @copy_m4_m4(ptr noundef %0, ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #21
  ret i8 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @invert_m4_m4(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %0, i8 0, i64 64, i1 false), !tbaa !34
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %7, %4 ]
  %6 = getelementptr inbounds [4 x float], ptr %0, i64 %5, i64 %5
  store float 1.000000e+00, ptr %6, align 4, !tbaa !34
  %7 = add nuw nsw i64 %5, 1
  %8 = icmp eq i64 %7, 4
  br i1 %8, label %9, label %4, !llvm.loop !69

9:                                                ; preds = %4, %9
  %10 = phi i64 [ %14, %9 ], [ 0, %4 ]
  %11 = shl nuw nsw i64 %10, 4
  %12 = getelementptr i8, ptr %3, i64 %11
  %13 = getelementptr i8, ptr %1, i64 %11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %13, i64 16, i1 false), !tbaa !34
  %14 = add nuw nsw i64 %10, 1
  %15 = icmp eq i64 %14, 4
  br i1 %15, label %19, label %9, !llvm.loop !70

16:                                               ; preds = %96
  %17 = add nuw nsw i64 %21, 1
  %18 = icmp eq i64 %24, 4
  br i1 %18, label %99, label %19, !llvm.loop !71

19:                                               ; preds = %9, %16
  %20 = phi i64 [ %24, %16 ], [ 0, %9 ]
  %21 = phi i64 [ %17, %16 ], [ 1, %9 ]
  %22 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 %20, i64 %20
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = add nuw nsw i64 %20, 1
  %25 = icmp ult i64 %20, 3
  %26 = trunc i64 %20 to i32
  br i1 %25, label %27, label %42

27:                                               ; preds = %19
  %28 = tail call float @llvm.fabs.f32(float %23)
  br label %29

29:                                               ; preds = %27, %29
  %30 = phi i64 [ %21, %27 ], [ %40, %29 ]
  %31 = phi i32 [ %26, %27 ], [ %39, %29 ]
  %32 = phi float [ %28, %27 ], [ %37, %29 ]
  %33 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 %30, i64 %20
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = tail call float @llvm.fabs.f32(float %34)
  %36 = fcmp ogt float %35, %32
  %37 = select i1 %36, float %35, float %32
  %38 = trunc i64 %30 to i32
  %39 = select i1 %36, i32 %38, i32 %31
  %40 = add nuw nsw i64 %30, 1
  %41 = icmp eq i64 %40, 4
  br i1 %41, label %42, label %29, !llvm.loop !72

42:                                               ; preds = %29, %19
  %43 = phi i32 [ %26, %19 ], [ %39, %29 ]
  %44 = zext i32 %43 to i64
  %45 = icmp eq i64 %20, %44
  br i1 %45, label %62, label %46

46:                                               ; preds = %42
  %47 = sext i32 %43 to i64
  br label %48

48:                                               ; preds = %46, %48
  %49 = phi i64 [ 0, %46 ], [ %58, %48 ]
  %50 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 %20, i64 %49
  %51 = load float, ptr %50, align 4, !tbaa !34
  %52 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 %47, i64 %49
  %53 = load float, ptr %52, align 4, !tbaa !34
  store float %53, ptr %50, align 4, !tbaa !34
  store float %51, ptr %52, align 4, !tbaa !34
  %54 = getelementptr inbounds [4 x float], ptr %0, i64 %20, i64 %49
  %55 = load float, ptr %54, align 4, !tbaa !34
  %56 = getelementptr inbounds [4 x float], ptr %0, i64 %47, i64 %49
  %57 = load float, ptr %56, align 4, !tbaa !34
  store float %57, ptr %54, align 4, !tbaa !34
  store float %55, ptr %56, align 4, !tbaa !34
  %58 = add nuw nsw i64 %49, 1
  %59 = icmp eq i64 %58, 4
  br i1 %59, label %60, label %48, !llvm.loop !73

60:                                               ; preds = %48
  %61 = load float, ptr %22, align 4, !tbaa !34
  br label %62

62:                                               ; preds = %60, %42
  %63 = phi float [ %61, %60 ], [ %23, %42 ]
  %64 = fcmp oeq float %63, 0.000000e+00
  br i1 %64, label %99, label %65

65:                                               ; preds = %62
  %66 = insertelement <4 x float> poison, float %63, i64 0
  %67 = shufflevector <4 x float> %66, <4 x float> poison, <4 x i32> zeroinitializer
  %68 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 %20, i64 0
  %69 = load <4 x float>, ptr %68, align 16, !tbaa !34
  %70 = fdiv <4 x float> %69, %67
  store <4 x float> %70, ptr %68, align 16, !tbaa !34
  %71 = getelementptr inbounds [4 x float], ptr %0, i64 %20, i64 0
  %72 = load <4 x float>, ptr %71, align 4, !tbaa !34
  %73 = fdiv <4 x float> %72, %67
  store <4 x float> %73, ptr %71, align 4, !tbaa !34
  br label %74

74:                                               ; preds = %65, %96
  %75 = phi i64 [ %97, %96 ], [ 0, %65 ]
  %76 = icmp eq i64 %75, %20
  br i1 %76, label %96, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 %75, i64 %20
  %79 = load float, ptr %78, align 4, !tbaa !34
  br label %80

80:                                               ; preds = %77, %80
  %81 = phi i64 [ 0, %77 ], [ %94, %80 ]
  %82 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 %20, i64 %81
  %83 = load float, ptr %82, align 4, !tbaa !34
  %84 = fmul float %79, %83
  %85 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 %75, i64 %81
  %86 = load float, ptr %85, align 4, !tbaa !34
  %87 = fsub float %86, %84
  store float %87, ptr %85, align 4, !tbaa !34
  %88 = getelementptr inbounds [4 x float], ptr %0, i64 %20, i64 %81
  %89 = load float, ptr %88, align 4, !tbaa !34
  %90 = fmul float %79, %89
  %91 = getelementptr inbounds [4 x float], ptr %0, i64 %75, i64 %81
  %92 = load float, ptr %91, align 4, !tbaa !34
  %93 = fsub float %92, %90
  store float %93, ptr %91, align 4, !tbaa !34
  %94 = add nuw nsw i64 %81, 1
  %95 = icmp eq i64 %94, 4
  br i1 %95, label %96, label %80, !llvm.loop !74

96:                                               ; preds = %80, %74
  %97 = add nuw nsw i64 %75, 1
  %98 = icmp eq i64 %97, 4
  br i1 %98, label %16, label %74, !llvm.loop !75

99:                                               ; preds = %16, %62
  %100 = phi i8 [ 0, %62 ], [ 1, %16 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #21
  ret i8 %100
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @transpose_m3(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  %3 = load float, ptr %2, align 4, !tbaa !34
  %4 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  store float %5, ptr %2, align 4, !tbaa !34
  store float %3, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  store float %9, ptr %6, align 4, !tbaa !34
  store float %7, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  store float %13, ptr %10, align 4, !tbaa !34
  store float %11, ptr %12, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @transpose_m4(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  %3 = load float, ptr %2, align 4, !tbaa !34
  %4 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  store float %5, ptr %2, align 4, !tbaa !34
  store float %3, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  store float %9, ptr %6, align 4, !tbaa !34
  store float %7, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds [4 x float], ptr %0, i64 3
  %13 = load float, ptr %12, align 4, !tbaa !34
  store float %13, ptr %10, align 4, !tbaa !34
  store float %11, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  store float %17, ptr %14, align 4, !tbaa !34
  store float %15, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 3
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  store float %21, ptr %18, align 4, !tbaa !34
  store float %19, ptr %20, align 4, !tbaa !34
  %22 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !34
  store float %25, ptr %22, align 4, !tbaa !34
  store float %23, ptr %24, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @compare_m4m4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) local_unnamed_addr #7 {
  %4 = tail call fastcc zeroext i8 @compare_v4v4(ptr noundef %0, ptr noundef %1, float noundef %2) #22, !range !64
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %8 = getelementptr inbounds [4 x float], ptr %1, i64 1
  %9 = tail call fastcc zeroext i8 @compare_v4v4(ptr noundef nonnull %7, ptr noundef nonnull %8, float noundef %2) #22, !range !64
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %13 = getelementptr inbounds [4 x float], ptr %1, i64 2
  %14 = tail call fastcc zeroext i8 @compare_v4v4(ptr noundef nonnull %12, ptr noundef nonnull %13, float noundef %2) #22, !range !64
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds [4 x float], ptr %0, i64 3
  %18 = getelementptr inbounds [4 x float], ptr %1, i64 3
  %19 = tail call fastcc zeroext i8 @compare_v4v4(ptr noundef nonnull %17, ptr noundef nonnull %18, float noundef %2) #22, !range !64
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %6, %16, %11, %3
  br label %22

22:                                               ; preds = %16, %21
  %23 = phi i32 [ 0, %21 ], [ 1, %16 ]
  ret i32 %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @compare_v4v4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #7 !PGOFuncName !76 {
  %4 = load float, ptr %0, align 4, !tbaa !34
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = fsub float %4, %5
  %7 = tail call float @llvm.fabs.f32(float %6)
  %8 = fcmp ugt float %7, %2
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds float, ptr %0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fsub float %11, %13
  %15 = tail call float @llvm.fabs.f32(float %14)
  %16 = fcmp ugt float %15, %2
  br i1 %16, label %33, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds float, ptr %0, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %1, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fsub float %19, %21
  %23 = tail call float @llvm.fabs.f32(float %22)
  %24 = fcmp ugt float %23, %2
  br i1 %24, label %33, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds float, ptr %0, i64 3
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = getelementptr inbounds float, ptr %1, i64 3
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = fsub float %27, %29
  %31 = tail call float @llvm.fabs.f32(float %30)
  %32 = fcmp ugt float %31, %2
  br i1 %32, label %33, label %34

33:                                               ; preds = %9, %25, %17, %3
  br label %34

34:                                               ; preds = %25, %33
  %35 = phi i8 [ 0, %33 ], [ 1, %25 ]
  ret i8 %35
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @orthogonalize_m3(ptr noundef %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 8
  %5 = alloca [3 x float], align 8
  %6 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  call void @mat3_to_size(ptr noundef nonnull %3, ptr noundef %0) #22
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds [3 x float], ptr %0, i64 %7
  %9 = tail call fastcc float @normalize_v3(ptr noundef %8) #22
  switch i32 %1, label %64 [
    i32 0, label %10
    i32 1, label %28
    i32 2, label %46
  ]

10:                                               ; preds = %2
  %11 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %12 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef nonnull %11) #22
  %13 = fcmp olt float %12, 1.000000e+00
  %14 = getelementptr inbounds [3 x float], ptr %0, i64 2
  br i1 %13, label %15, label %17

15:                                               ; preds = %10
  tail call fastcc void @cross_v3_v3v3(ptr noundef nonnull %14, ptr noundef %0, ptr noundef nonnull %11) #22
  %16 = tail call fastcc float @normalize_v3(ptr noundef nonnull %14) #22
  tail call fastcc void @cross_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %14, ptr noundef %0) #22
  br label %64

17:                                               ; preds = %10
  %18 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef nonnull %14) #22
  %19 = fcmp olt float %18, 1.000000e+00
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  tail call fastcc void @cross_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %14, ptr noundef %0) #22
  %21 = tail call fastcc float @normalize_v3(ptr noundef nonnull %11) #22
  tail call fastcc void @cross_v3_v3v3(ptr noundef nonnull %14, ptr noundef %0, ptr noundef nonnull %11) #22
  br label %64

22:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #21
  %23 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  %24 = load <2 x float>, ptr %23, align 4, !tbaa !34
  store <2 x float> %24, ptr %4, align 8, !tbaa !34
  %25 = load float, ptr %0, align 4, !tbaa !34
  %26 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float %25, ptr %26, align 8, !tbaa !34
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %14, ptr noundef %0, ptr noundef nonnull %4) #22
  %27 = tail call fastcc float @normalize_v3(ptr noundef nonnull %14) #22
  tail call fastcc void @cross_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %14, ptr noundef %0) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #21
  br label %64

28:                                               ; preds = %2
  %29 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %30 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %29, ptr noundef %0) #22
  %31 = fcmp olt float %30, 1.000000e+00
  %32 = getelementptr inbounds [3 x float], ptr %0, i64 2
  br i1 %31, label %33, label %35

33:                                               ; preds = %28
  tail call fastcc void @cross_v3_v3v3(ptr noundef nonnull %32, ptr noundef %0, ptr noundef nonnull %29) #22
  %34 = tail call fastcc float @normalize_v3(ptr noundef nonnull %32) #22
  tail call fastcc void @cross_v3_v3v3(ptr noundef %0, ptr noundef nonnull %29, ptr noundef nonnull %32) #22
  br label %64

35:                                               ; preds = %28
  %36 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef nonnull %32) #22
  %37 = fcmp olt float %36, 1.000000e+00
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  tail call fastcc void @cross_v3_v3v3(ptr noundef %0, ptr noundef nonnull %29, ptr noundef nonnull %32) #22
  %39 = tail call fastcc float @normalize_v3(ptr noundef %0) #22
  tail call fastcc void @cross_v3_v3v3(ptr noundef nonnull %32, ptr noundef %0, ptr noundef nonnull %29) #22
  br label %64

40:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  %41 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  %42 = load <2 x float>, ptr %41, align 4, !tbaa !34
  store <2 x float> %42, ptr %5, align 8, !tbaa !34
  %43 = load float, ptr %29, align 4, !tbaa !34
  %44 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float %43, ptr %44, align 8, !tbaa !34
  call fastcc void @cross_v3_v3v3(ptr noundef %0, ptr noundef nonnull %29, ptr noundef nonnull %5) #22
  %45 = tail call fastcc float @normalize_v3(ptr noundef %0) #22
  tail call fastcc void @cross_v3_v3v3(ptr noundef nonnull %32, ptr noundef %0, ptr noundef nonnull %29) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  br label %64

46:                                               ; preds = %2
  %47 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %48 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %47, ptr noundef %0) #22
  %49 = fcmp olt float %48, 1.000000e+00
  %50 = getelementptr inbounds [3 x float], ptr %0, i64 1
  br i1 %49, label %51, label %53

51:                                               ; preds = %46
  tail call fastcc void @cross_v3_v3v3(ptr noundef nonnull %50, ptr noundef nonnull %47, ptr noundef %0) #22
  %52 = tail call fastcc float @normalize_v3(ptr noundef nonnull %50) #22
  tail call fastcc void @cross_v3_v3v3(ptr noundef %0, ptr noundef nonnull %50, ptr noundef nonnull %47) #22
  br label %64

53:                                               ; preds = %46
  %54 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %47, ptr noundef nonnull %50) #22
  %55 = fcmp olt float %54, 1.000000e+00
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  tail call fastcc void @cross_v3_v3v3(ptr noundef %0, ptr noundef nonnull %50, ptr noundef nonnull %47) #22
  %57 = tail call fastcc float @normalize_v3(ptr noundef %0) #22
  tail call fastcc void @cross_v3_v3v3(ptr noundef nonnull %50, ptr noundef nonnull %47, ptr noundef %0) #22
  br label %64

58:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #21
  %59 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  %60 = load <2 x float>, ptr %59, align 4, !tbaa !34
  store <2 x float> %60, ptr %6, align 8, !tbaa !34
  %61 = load float, ptr %47, align 4, !tbaa !34
  %62 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float %61, ptr %62, align 8, !tbaa !34
  call fastcc void @cross_v3_v3v3(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %47) #22
  %63 = tail call fastcc float @normalize_v3(ptr noundef %0) #22
  tail call fastcc void @cross_v3_v3v3(ptr noundef nonnull %50, ptr noundef nonnull %47, ptr noundef %0) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #21
  br label %64

64:                                               ; preds = %2, %51, %58, %56, %33, %40, %38, %15, %22, %20
  %65 = load float, ptr %3, align 4, !tbaa !34
  tail call fastcc void @mul_v3_fl(ptr noundef %0, float noundef %65) #22
  %66 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %67 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !34
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %66, float noundef %68) #22
  %69 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %70 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %71 = load float, ptr %70, align 4, !tbaa !34
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %69, float noundef %71) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @mat3_to_size(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = tail call fastcc float @len_v3(ptr noundef %1) #22
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds [3 x float], ptr %1, i64 1
  %5 = tail call fastcc float @len_v3(ptr noundef nonnull %4) #22
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds [3 x float], ptr %1, i64 2
  %8 = tail call fastcc float @len_v3(ptr noundef nonnull %7) #22
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !77 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #22
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !78 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !79 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !34
  %15 = load float, ptr %8, align 4, !tbaa !34
  %16 = load float, ptr %2, align 4, !tbaa !34
  %17 = load float, ptr %1, align 4, !tbaa !34
  %18 = load float, ptr %6, align 4, !tbaa !34
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !34
  %23 = load float, ptr %1, align 4, !tbaa !34
  %24 = load float, ptr %10, align 4, !tbaa !34
  %25 = load float, ptr %4, align 4, !tbaa !34
  %26 = load float, ptr %2, align 4, !tbaa !34
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #2 !PGOFuncName !80 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !34
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @orthogonalize_m4(ptr noundef %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 8
  %5 = alloca [3 x float], align 8
  %6 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  call void @mat4_to_size(ptr noundef nonnull %3, ptr noundef %0) #22
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds [4 x float], ptr %0, i64 %7
  %9 = tail call fastcc float @normalize_v3(ptr noundef %8) #22
  switch i32 %1, label %64 [
    i32 0, label %10
    i32 1, label %28
    i32 2, label %46
  ]

10:                                               ; preds = %2
  %11 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %12 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef nonnull %11) #22
  %13 = fcmp olt float %12, 1.000000e+00
  %14 = getelementptr inbounds [4 x float], ptr %0, i64 2
  br i1 %13, label %15, label %17

15:                                               ; preds = %10
  tail call fastcc void @cross_v3_v3v3(ptr noundef nonnull %14, ptr noundef %0, ptr noundef nonnull %11) #22
  %16 = tail call fastcc float @normalize_v3(ptr noundef nonnull %14) #22
  tail call fastcc void @cross_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %14, ptr noundef %0) #22
  br label %64

17:                                               ; preds = %10
  %18 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef nonnull %14) #22
  %19 = fcmp olt float %18, 1.000000e+00
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  tail call fastcc void @cross_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %14, ptr noundef %0) #22
  %21 = tail call fastcc float @normalize_v3(ptr noundef nonnull %11) #22
  tail call fastcc void @cross_v3_v3v3(ptr noundef nonnull %14, ptr noundef %0, ptr noundef nonnull %11) #22
  br label %64

22:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #21
  %23 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  %24 = load <2 x float>, ptr %23, align 4, !tbaa !34
  store <2 x float> %24, ptr %4, align 8, !tbaa !34
  %25 = load float, ptr %0, align 4, !tbaa !34
  %26 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float %25, ptr %26, align 8, !tbaa !34
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %14, ptr noundef %0, ptr noundef nonnull %4) #22
  %27 = tail call fastcc float @normalize_v3(ptr noundef nonnull %14) #22
  tail call fastcc void @cross_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %14, ptr noundef %0) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #21
  br label %64

28:                                               ; preds = %2
  %29 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %30 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %29, ptr noundef %0) #22
  %31 = fcmp olt float %30, 1.000000e+00
  %32 = getelementptr inbounds [4 x float], ptr %0, i64 2
  br i1 %31, label %33, label %35

33:                                               ; preds = %28
  tail call fastcc void @cross_v3_v3v3(ptr noundef nonnull %32, ptr noundef %0, ptr noundef nonnull %29) #22
  %34 = tail call fastcc float @normalize_v3(ptr noundef nonnull %32) #22
  tail call fastcc void @cross_v3_v3v3(ptr noundef %0, ptr noundef nonnull %29, ptr noundef nonnull %32) #22
  br label %64

35:                                               ; preds = %28
  %36 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef nonnull %32) #22
  %37 = fcmp olt float %36, 1.000000e+00
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  tail call fastcc void @cross_v3_v3v3(ptr noundef %0, ptr noundef nonnull %29, ptr noundef nonnull %32) #22
  %39 = tail call fastcc float @normalize_v3(ptr noundef %0) #22
  tail call fastcc void @cross_v3_v3v3(ptr noundef nonnull %32, ptr noundef %0, ptr noundef nonnull %29) #22
  br label %64

40:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  %41 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  %42 = load <2 x float>, ptr %41, align 4, !tbaa !34
  store <2 x float> %42, ptr %5, align 8, !tbaa !34
  %43 = load float, ptr %29, align 4, !tbaa !34
  %44 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float %43, ptr %44, align 8, !tbaa !34
  call fastcc void @cross_v3_v3v3(ptr noundef %0, ptr noundef nonnull %29, ptr noundef nonnull %5) #22
  %45 = tail call fastcc float @normalize_v3(ptr noundef %0) #22
  tail call fastcc void @cross_v3_v3v3(ptr noundef nonnull %32, ptr noundef %0, ptr noundef nonnull %29) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  br label %64

46:                                               ; preds = %2
  %47 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %48 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %47, ptr noundef %0) #22
  %49 = fcmp olt float %48, 1.000000e+00
  %50 = getelementptr inbounds [4 x float], ptr %0, i64 1
  br i1 %49, label %51, label %53

51:                                               ; preds = %46
  tail call fastcc void @cross_v3_v3v3(ptr noundef nonnull %50, ptr noundef nonnull %47, ptr noundef %0) #22
  %52 = tail call fastcc float @normalize_v3(ptr noundef nonnull %50) #22
  tail call fastcc void @cross_v3_v3v3(ptr noundef %0, ptr noundef nonnull %50, ptr noundef nonnull %47) #22
  br label %64

53:                                               ; preds = %46
  %54 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %47, ptr noundef nonnull %50) #22
  %55 = fcmp olt float %54, 1.000000e+00
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  tail call fastcc void @cross_v3_v3v3(ptr noundef %0, ptr noundef nonnull %50, ptr noundef nonnull %47) #22
  %57 = tail call fastcc float @normalize_v3(ptr noundef %0) #22
  tail call fastcc void @cross_v3_v3v3(ptr noundef nonnull %50, ptr noundef nonnull %47, ptr noundef %0) #22
  br label %64

58:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #21
  %59 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  %60 = load <2 x float>, ptr %59, align 4, !tbaa !34
  store <2 x float> %60, ptr %6, align 8, !tbaa !34
  %61 = load float, ptr %47, align 4, !tbaa !34
  %62 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float %61, ptr %62, align 8, !tbaa !34
  call fastcc void @cross_v3_v3v3(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %47) #22
  %63 = tail call fastcc float @normalize_v3(ptr noundef %0) #22
  tail call fastcc void @cross_v3_v3v3(ptr noundef nonnull %50, ptr noundef nonnull %47, ptr noundef %0) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #21
  br label %64

64:                                               ; preds = %2, %51, %58, %56, %33, %40, %38, %15, %22, %20
  %65 = load float, ptr %3, align 4, !tbaa !34
  tail call fastcc void @mul_v3_fl(ptr noundef %0, float noundef %65) #22
  %66 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %67 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !34
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %66, float noundef %68) #22
  %69 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %70 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %71 = load float, ptr %70, align 4, !tbaa !34
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %69, float noundef %71) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @mat4_to_size(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = tail call fastcc float @len_v3(ptr noundef %1) #22
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds [4 x float], ptr %1, i64 1
  %5 = tail call fastcc float @len_v3(ptr noundef nonnull %4) #22
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds [4 x float], ptr %1, i64 2
  %8 = tail call fastcc float @len_v3(ptr noundef nonnull %7) #22
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !34
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @is_orthogonal_m3(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  br label %2

2:                                                ; preds = %1, %16
  %3 = phi i64 [ 0, %1 ], [ %17, %16 ]
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds [3 x float], ptr %0, i64 %3
  br label %10

7:                                                ; preds = %10
  %8 = add nuw nsw i64 %11, 1
  %9 = icmp eq i64 %8, %3
  br i1 %9, label %16, label %10, !llvm.loop !81

10:                                               ; preds = %5, %7
  %11 = phi i64 [ 0, %5 ], [ %8, %7 ]
  %12 = getelementptr inbounds [3 x float], ptr %0, i64 %11
  %13 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef %12) #22
  %14 = tail call float @llvm.fabs.f32(float %13)
  %15 = fcmp ogt float %14, 0x3E88000000000000
  br i1 %15, label %19, label %7

16:                                               ; preds = %7, %2
  %17 = add nuw nsw i64 %3, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %2, !llvm.loop !82

19:                                               ; preds = %16, %10
  %20 = phi i8 [ 0, %10 ], [ 1, %16 ]
  ret i8 %20
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @is_orthogonal_m4(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  br label %2

2:                                                ; preds = %1, %16
  %3 = phi i64 [ 0, %1 ], [ %17, %16 ]
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds [4 x float], ptr %0, i64 %3
  br label %10

7:                                                ; preds = %10
  %8 = add nuw nsw i64 %11, 1
  %9 = icmp eq i64 %8, %3
  br i1 %9, label %16, label %10, !llvm.loop !83

10:                                               ; preds = %5, %7
  %11 = phi i64 [ 0, %5 ], [ %8, %7 ]
  %12 = getelementptr inbounds [4 x float], ptr %0, i64 %11
  %13 = tail call fastcc float @dot_v4v4(ptr noundef nonnull %6, ptr noundef %12) #22
  %14 = tail call float @llvm.fabs.f32(float %13)
  %15 = fcmp ogt float %14, 0x3E88000000000000
  br i1 %15, label %19, label %7

16:                                               ; preds = %7, %2
  %17 = add nuw nsw i64 %3, 1
  %18 = icmp eq i64 %17, 4
  br i1 %18, label %19, label %2, !llvm.loop !84

19:                                               ; preds = %16, %10
  %20 = phi i8 [ 0, %10 ], [ 1, %16 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v4v4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !85 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  %16 = getelementptr inbounds float, ptr %0, i64 3
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %1, i64 3
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = tail call float @llvm.fmuladd.f32(float %17, float %19, float %15)
  ret float %20
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @is_orthonormal_m3(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = tail call zeroext i8 @is_orthogonal_m3(ptr noundef %0) #22, !range !64
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %14, label %7

4:                                                ; preds = %7
  %5 = add nuw nsw i64 %8, 1
  %6 = icmp eq i64 %5, 3
  br i1 %6, label %14, label %7, !llvm.loop !86

7:                                                ; preds = %1, %4
  %8 = phi i64 [ %5, %4 ], [ 0, %1 ]
  %9 = getelementptr inbounds [3 x float], ptr %0, i64 %8
  %10 = tail call fastcc float @dot_v3v3(ptr noundef %9, ptr noundef %9) #22
  %11 = fadd float %10, -1.000000e+00
  %12 = tail call float @llvm.fabs.f32(float %11)
  %13 = fcmp ogt float %12, 0x3E88000000000000
  br i1 %13, label %14, label %4

14:                                               ; preds = %7, %4, %1
  %15 = phi i8 [ 0, %1 ], [ 1, %4 ], [ 0, %7 ]
  ret i8 %15
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @is_orthonormal_m4(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = tail call zeroext i8 @is_orthogonal_m4(ptr noundef %0) #22, !range !64
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %14, label %7

4:                                                ; preds = %7
  %5 = add nuw nsw i64 %8, 1
  %6 = icmp eq i64 %5, 4
  br i1 %6, label %14, label %7, !llvm.loop !87

7:                                                ; preds = %1, %4
  %8 = phi i64 [ %5, %4 ], [ 0, %1 ]
  %9 = getelementptr inbounds [4 x float], ptr %0, i64 %8
  %10 = tail call fastcc float @dot_v4v4(ptr noundef %9, ptr noundef %9) #22
  %11 = fadd float %10, -1.000000e+00
  %12 = tail call float @llvm.fabs.f32(float %11)
  %13 = fcmp ogt float %12, 0x3E88000000000000
  br i1 %13, label %14, label %4

14:                                               ; preds = %7, %4, %1
  %15 = phi i8 [ 0, %1 ], [ 1, %4 ], [ 0, %7 ]
  ret i8 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @is_uniform_scaled_m3(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #21
  call void @copy_m3_m3(ptr noundef nonnull %2, ptr noundef %0) #22
  call void @transpose_m3(ptr noundef nonnull %2) #22
  %3 = tail call fastcc float @len_squared_v3(ptr noundef %0) #22
  %4 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %5 = tail call fastcc float @len_squared_v3(ptr noundef nonnull %4) #22
  %6 = call fastcc float @len_squared_v3(ptr noundef nonnull %2) #22
  %7 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 1
  %8 = call fastcc float @len_squared_v3(ptr noundef nonnull %7) #22
  %9 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 2
  %10 = call fastcc float @len_squared_v3(ptr noundef nonnull %9) #22
  %11 = fsub float %5, %3
  %12 = tail call float @llvm.fabs.f32(float %11)
  %13 = fcmp ugt float %12, 0x3E7AD7F2A0000000
  br i1 %13, label %32, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %16 = tail call fastcc float @len_squared_v3(ptr noundef nonnull %15) #22
  %17 = fsub float %16, %3
  %18 = tail call float @llvm.fabs.f32(float %17)
  %19 = fcmp ugt float %18, 0x3E7AD7F2A0000000
  br i1 %19, label %32, label %20

20:                                               ; preds = %14
  %21 = fsub float %6, %3
  %22 = tail call float @llvm.fabs.f32(float %21)
  %23 = fcmp ugt float %22, 0x3E7AD7F2A0000000
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = fsub float %8, %3
  %26 = tail call float @llvm.fabs.f32(float %25)
  %27 = fcmp ugt float %26, 0x3E7AD7F2A0000000
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = fsub float %10, %3
  %30 = tail call float @llvm.fabs.f32(float %29)
  %31 = fcmp ugt float %30, 0x3E7AD7F2A0000000
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %24, %20, %14, %1
  br label %33

33:                                               ; preds = %28, %32
  %34 = phi i8 [ 0, %32 ], [ 1, %28 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #21
  ret i8 %34
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_squared_v3(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !88 {
  %2 = load float, ptr %0, align 4, !tbaa !34
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %6)
  ret float %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @is_uniform_scaled_m4(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #21
  call void @copy_m3_m4(ptr noundef nonnull %2, ptr noundef %0) #22
  %3 = call zeroext i8 @is_uniform_scaled_m3(ptr noundef nonnull %2) #22, !range !64
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #21
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @normalize_m3(ptr nocapture noundef %0) local_unnamed_addr #8 {
  %2 = tail call fastcc float @normalize_v3(ptr noundef %0) #22
  %3 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %4 = tail call fastcc float @normalize_v3(ptr noundef nonnull %3) #22
  %5 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %6 = tail call fastcc float @normalize_v3(ptr noundef nonnull %5) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @normalize_m3_m3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %1) #22
  %4 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %5 = getelementptr inbounds [3 x float], ptr %1, i64 1
  %6 = tail call fastcc float @normalize_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #22
  %7 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %8 = getelementptr inbounds [3 x float], ptr %1, i64 2
  %9 = tail call fastcc float @normalize_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !89 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #22
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #23
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #22
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #22
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @normalize_m4(ptr nocapture noundef %0) local_unnamed_addr #8 {
  %2 = tail call fastcc float @normalize_v3(ptr noundef %0) #22
  %3 = fcmp une float %2, 0.000000e+00
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 3
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fdiv float %6, %2
  store float %7, ptr %5, align 4, !tbaa !34
  br label %8

8:                                                ; preds = %4, %1
  %9 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %10 = tail call fastcc float @normalize_v3(ptr noundef nonnull %9) #22
  %11 = fcmp une float %10, 0.000000e+00
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 3
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fdiv float %14, %10
  store float %15, ptr %13, align 4, !tbaa !34
  br label %16

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %18 = tail call fastcc float @normalize_v3(ptr noundef nonnull %17) #22
  %19 = fcmp une float %18, 0.000000e+00
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = fdiv float %22, %18
  store float %23, ptr %21, align 4, !tbaa !34
  br label %24

24:                                               ; preds = %20, %16
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @normalize_m4_m4(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  tail call void @copy_m4_m4(ptr noundef %0, ptr noundef %1) #22
  tail call void @normalize_m4(ptr noundef %0) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @adjoint_m2_m2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds [2 x float], ptr %1, i64 1
  %4 = getelementptr inbounds [2 x float], ptr %1, i64 1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  store float %5, ptr %0, align 4, !tbaa !34
  %6 = getelementptr inbounds [2 x float], ptr %1, i64 0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fneg float %7
  %9 = getelementptr inbounds [2 x float], ptr %0, i64 0, i64 1
  store float %8, ptr %9, align 4, !tbaa !34
  %10 = load float, ptr %3, align 4, !tbaa !34
  %11 = fneg float %10
  %12 = getelementptr inbounds [2 x float], ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !34
  %13 = load float, ptr %1, align 4, !tbaa !34
  %14 = getelementptr inbounds [2 x float], ptr %0, i64 1, i64 1
  store float %13, ptr %14, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @adjoint_m4_m4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 3
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds [4 x float], ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 3
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds [4 x float], ptr %1, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 3
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = getelementptr inbounds [4 x float], ptr %1, i64 3
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 3
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = tail call float @determinant_m3(float noundef %13, float noundef %21, float noundef %29, float noundef %15, float noundef %23, float noundef %31, float noundef %17, float noundef %25, float noundef %33) #22
  store float %34, ptr %0, align 4, !tbaa !34
  %35 = tail call float @determinant_m3(float noundef %11, float noundef %19, float noundef %27, float noundef %15, float noundef %23, float noundef %31, float noundef %17, float noundef %25, float noundef %33) #22
  %36 = tail call float @determinant_m3(float noundef %11, float noundef %19, float noundef %27, float noundef %13, float noundef %21, float noundef %29, float noundef %17, float noundef %25, float noundef %33) #22
  %37 = getelementptr inbounds [4 x float], ptr %0, i64 2
  store float %36, ptr %37, align 4, !tbaa !34
  %38 = tail call float @determinant_m3(float noundef %11, float noundef %19, float noundef %27, float noundef %13, float noundef %21, float noundef %29, float noundef %15, float noundef %23, float noundef %31) #22
  %39 = tail call float @determinant_m3(float noundef %5, float noundef %21, float noundef %29, float noundef %7, float noundef %23, float noundef %31, float noundef %9, float noundef %25, float noundef %33) #22
  %40 = fneg float %39
  %41 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  store float %40, ptr %41, align 4, !tbaa !34
  %42 = tail call float @determinant_m3(float noundef %3, float noundef %19, float noundef %27, float noundef %7, float noundef %23, float noundef %31, float noundef %9, float noundef %25, float noundef %33) #22
  %43 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  store float %42, ptr %43, align 4, !tbaa !34
  %44 = tail call float @determinant_m3(float noundef %3, float noundef %19, float noundef %27, float noundef %5, float noundef %21, float noundef %29, float noundef %9, float noundef %25, float noundef %33) #22
  %45 = fneg float %44
  %46 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  store float %45, ptr %46, align 4, !tbaa !34
  %47 = tail call float @determinant_m3(float noundef %3, float noundef %19, float noundef %27, float noundef %5, float noundef %21, float noundef %29, float noundef %7, float noundef %23, float noundef %31) #22
  %48 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 1
  store float %47, ptr %48, align 4, !tbaa !34
  %49 = tail call float @determinant_m3(float noundef %5, float noundef %13, float noundef %29, float noundef %7, float noundef %15, float noundef %31, float noundef %9, float noundef %17, float noundef %33) #22
  %50 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  store float %49, ptr %50, align 4, !tbaa !34
  %51 = tail call float @determinant_m3(float noundef %3, float noundef %11, float noundef %27, float noundef %7, float noundef %15, float noundef %31, float noundef %9, float noundef %17, float noundef %33) #22
  %52 = fneg float %51
  %53 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  store float %52, ptr %53, align 4, !tbaa !34
  %54 = tail call float @determinant_m3(float noundef %3, float noundef %11, float noundef %27, float noundef %5, float noundef %13, float noundef %29, float noundef %9, float noundef %17, float noundef %33) #22
  %55 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  store float %54, ptr %55, align 4, !tbaa !34
  %56 = tail call float @determinant_m3(float noundef %3, float noundef %11, float noundef %27, float noundef %5, float noundef %13, float noundef %29, float noundef %7, float noundef %15, float noundef %31) #22
  %57 = fneg float %56
  %58 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 2
  store float %57, ptr %58, align 4, !tbaa !34
  %59 = tail call float @determinant_m3(float noundef %5, float noundef %13, float noundef %21, float noundef %7, float noundef %15, float noundef %23, float noundef %9, float noundef %17, float noundef %25) #22
  %60 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 3
  %61 = insertelement <2 x float> poison, float %59, i64 0
  %62 = insertelement <2 x float> %61, float %35, i64 1
  %63 = fneg <2 x float> %62
  store <2 x float> %63, ptr %60, align 4, !tbaa !34
  %64 = tail call float @determinant_m3(float noundef %3, float noundef %11, float noundef %19, float noundef %7, float noundef %15, float noundef %23, float noundef %9, float noundef %17, float noundef %25) #22
  %65 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 3
  store float %64, ptr %65, align 4, !tbaa !34
  %66 = tail call float @determinant_m3(float noundef %3, float noundef %11, float noundef %19, float noundef %5, float noundef %13, float noundef %21, float noundef %9, float noundef %17, float noundef %25) #22
  %67 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  %68 = insertelement <2 x float> poison, float %66, i64 0
  %69 = insertelement <2 x float> %68, float %38, i64 1
  %70 = fneg <2 x float> %69
  store <2 x float> %70, ptr %67, align 4, !tbaa !34
  %71 = tail call float @determinant_m3(float noundef %3, float noundef %11, float noundef %19, float noundef %5, float noundef %13, float noundef %21, float noundef %7, float noundef %15, float noundef %23) #22
  %72 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 3
  store float %71, ptr %72, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef float @determinant_m3(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8) local_unnamed_addr #10 {
  %10 = tail call float @determinant_m2(float noundef %4, float noundef %5, float noundef %7, float noundef %8) #22
  %11 = tail call float @determinant_m2(float noundef %1, float noundef %2, float noundef %7, float noundef %8) #22
  %12 = fneg float %11
  %13 = fmul float %12, %3
  %14 = tail call float @llvm.fmuladd.f32(float %0, float %10, float %13)
  %15 = tail call float @determinant_m2(float noundef %1, float noundef %2, float noundef %4, float noundef %5) #22
  %16 = tail call float @llvm.fmuladd.f32(float %6, float %15, float %14)
  ret float %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef float @determinant_m2(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #10 {
  %5 = fneg float %1
  %6 = fmul float %5, %2
  %7 = tail call float @llvm.fmuladd.f32(float %0, float %3, float %6)
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local float @determinant_m4(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = load float, ptr %0, align 4, !tbaa !34
  %3 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 3
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 3
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = getelementptr inbounds [4 x float], ptr %0, i64 3
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 3
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = tail call float @determinant_m3(float noundef %12, float noundef %20, float noundef %28, float noundef %14, float noundef %22, float noundef %30, float noundef %16, float noundef %24, float noundef %32) #22
  %34 = tail call float @determinant_m3(float noundef %10, float noundef %18, float noundef %26, float noundef %14, float noundef %22, float noundef %30, float noundef %16, float noundef %24, float noundef %32) #22
  %35 = fneg float %4
  %36 = fmul float %34, %35
  %37 = tail call float @llvm.fmuladd.f32(float %2, float %33, float %36)
  %38 = tail call float @determinant_m3(float noundef %10, float noundef %18, float noundef %26, float noundef %12, float noundef %20, float noundef %28, float noundef %16, float noundef %24, float noundef %32) #22
  %39 = tail call float @llvm.fmuladd.f32(float %6, float %38, float %37)
  %40 = tail call float @determinant_m3(float noundef %10, float noundef %18, float noundef %26, float noundef %12, float noundef %20, float noundef %28, float noundef %14, float noundef %22, float noundef %30) #22
  %41 = fneg float %8
  %42 = tail call float @llvm.fmuladd.f32(float %41, float %40, float %39)
  ret float %42
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @size_to_mat3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store <2 x float> zeroinitializer, ptr %4, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %8 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %6, ptr %8, align 4, !tbaa !34
  store float 0.000000e+00, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float 0.000000e+00, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %13 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %11, ptr %13, align 4, !tbaa !34
  store <2 x float> zeroinitializer, ptr %12, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @size_to_mat4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  %5 = getelementptr inbounds float, ptr %1, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  store float %6, ptr %7, align 4, !tbaa !34
  %8 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  %9 = getelementptr inbounds float, ptr %1, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  store float %10, ptr %11, align 4, !tbaa !34
  %12 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  %13 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %13, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !90 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #22
  %3 = tail call float @sqrtf(float noundef %2) #23
  ret float %3
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @mat3_to_scale(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #21
  call fastcc void @copy_v3_fl(ptr noundef nonnull %2) #22
  call void @mul_m3_v3(ptr noundef %0, ptr noundef nonnull %2) #22
  %3 = call fastcc float @len_v3(ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #21
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @copy_v3_fl(ptr nocapture noundef writeonly %0) unnamed_addr #0 !PGOFuncName !91 {
  store <2 x float> <float 0x3FE279A740000000, float 0x3FE279A740000000>, ptr %0, align 4, !tbaa !34
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0x3FE279A740000000, ptr %2, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @mat4_to_scale(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #21
  call fastcc void @copy_v3_fl(ptr noundef nonnull %2) #22
  call void @mul_mat3_m4_v3(ptr noundef %0, ptr noundef nonnull %2) #22
  %3 = call fastcc float @len_v3(ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #21
  ret float %3
}

; Function Attrs: nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable
define dso_local void @mat3_to_rot_size(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) local_unnamed_addr #11 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #21
  call void @normalize_m3_m3(ptr noundef nonnull %4, ptr noundef %2) #22
  %6 = tail call zeroext i8 @is_negative_m3(ptr noundef %2) #22, !range !64
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  call fastcc void @negate_v3(ptr noundef nonnull %4) #22
  %9 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1
  call fastcc void @negate_v3(ptr noundef nonnull %9) #22
  %10 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2
  call fastcc void @negate_v3(ptr noundef nonnull %10) #22
  br label %11

11:                                               ; preds = %8, %3
  call void @copy_m3_m3(ptr noundef %0, ptr noundef nonnull %4) #22
  %12 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %5, ptr noundef nonnull %4) #22, !range !64
  call void @mul_m3_m3m3(ptr noundef %2, ptr noundef nonnull %5, ptr noundef %2) #22
  %13 = load float, ptr %2, align 4, !tbaa !34
  store float %13, ptr %1, align 4, !tbaa !34
  %14 = getelementptr inbounds [3 x float], ptr %2, i64 1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %1, i64 1
  store float %15, ptr %16, align 4, !tbaa !34
  %17 = getelementptr inbounds [3 x float], ptr %2, i64 2, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %1, i64 2
  store float %18, ptr %19, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local zeroext i8 @is_negative_m3(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #21
  %3 = getelementptr inbounds [3 x float], ptr %0, i64 1
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %2, ptr noundef %0, ptr noundef nonnull %3) #22
  %4 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %5 = call fastcc float @dot_v3v3(ptr noundef nonnull %2, ptr noundef nonnull %4) #22
  %6 = fcmp olt float %5, 0.000000e+00
  %7 = zext i1 %6 to i8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #21
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #2 !PGOFuncName !92 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !34
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !34
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable
define dso_local void @mat4_to_loc_rot_size(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #11 {
  %5 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #21
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef %3) #22
  call void @mat3_to_rot_size(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #22
  %6 = getelementptr inbounds [4 x float], ptr %3, i64 3
  tail call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mat4_to_loc_quat(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #12 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #21
  call void @copy_m3_m4(ptr noundef nonnull %4, ptr noundef %2) #22
  call void @normalize_m3_m3(ptr noundef nonnull %5, ptr noundef nonnull %4) #22
  %6 = call zeroext i8 @is_negative_m3(ptr noundef nonnull %4) #22, !range !64
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  call fastcc void @negate_v3(ptr noundef nonnull %5) #22
  %9 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1
  call fastcc void @negate_v3(ptr noundef nonnull %9) #22
  %10 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2
  call fastcc void @negate_v3(ptr noundef nonnull %10) #22
  br label %11

11:                                               ; preds = %8, %3
  call void @mat3_to_quat(ptr noundef %1, ptr noundef nonnull %5) #23
  %12 = getelementptr inbounds [4 x float], ptr %2, i64 3
  call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #21
  ret void
}

; Function Attrs: optsize
declare void @mat3_to_quat(ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mat4_decompose(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #12 {
  %5 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #21
  call void @mat4_to_loc_rot_size(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2, ptr noundef %3) #22
  call void @mat3_to_quat(ptr noundef %1, ptr noundef nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @scale_m3_fl(ptr nocapture noundef writeonly %0, float noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %1, ptr %3, align 4, !tbaa !34
  %4 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %5 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %1, ptr %5, align 4, !tbaa !34
  store float %1, ptr %0, align 4, !tbaa !34
  %6 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store <2 x float> zeroinitializer, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float 0.000000e+00, ptr %4, align 4, !tbaa !34
  %8 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float 0.000000e+00, ptr %8, align 4, !tbaa !34
  store <2 x float> zeroinitializer, ptr %7, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @scale_m4_fl(ptr nocapture noundef writeonly %0, float noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  store float %1, ptr %3, align 4, !tbaa !34
  %4 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  store float %1, ptr %4, align 4, !tbaa !34
  store float %1, ptr %0, align 4, !tbaa !34
  %5 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 3
  store float 1.000000e+00, ptr %5, align 4, !tbaa !34
  %6 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  %7 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  %8 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @translate_m4(ptr nocapture noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %6 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %7 = getelementptr inbounds [4 x float], ptr %0, i64 3
  %8 = load <2 x float>, ptr %0, align 4, !tbaa !34
  %9 = load <2 x float>, ptr %5, align 4, !tbaa !34
  %10 = insertelement <2 x float> poison, float %2, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = fmul <2 x float> %9, %11
  %13 = insertelement <2 x float> poison, float %1, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> %8, <2 x float> %12)
  %16 = load <2 x float>, ptr %6, align 4, !tbaa !34
  %17 = insertelement <2 x float> poison, float %3, i64 0
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer
  %19 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %18, <2 x float> %16, <2 x float> %15)
  %20 = load <2 x float>, ptr %7, align 4, !tbaa !34
  %21 = fadd <2 x float> %20, %19
  store <2 x float> %21, ptr %7, align 4, !tbaa !34
  %22 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = fmul float %25, %2
  %27 = tail call float @llvm.fmuladd.f32(float %1, float %23, float %26)
  %28 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = tail call float @llvm.fmuladd.f32(float %3, float %29, float %27)
  %31 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = fadd float %32, %30
  store float %33, ptr %31, align 4, !tbaa !34
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable
define dso_local void @rotate_m4(ptr nocapture noundef %0, i8 noundef zeroext %1, float noundef %2) local_unnamed_addr #11 {
  %4 = tail call float @cosf(float noundef %2) #23
  %5 = tail call float @sinf(float noundef %2) #23
  switch i8 %1, label %68 [
    i8 88, label %26
    i8 89, label %48
    i8 90, label %6
  ]

6:                                                ; preds = %3
  %7 = insertelement <4 x float> poison, float %5, i64 0
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> zeroinitializer
  %9 = insertelement <4 x float> poison, float %4, i64 0
  %10 = shufflevector <4 x float> %9, <4 x float> poison, <4 x i32> zeroinitializer
  %11 = load <4 x float>, ptr %0, align 4, !tbaa !34
  %12 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 0
  %13 = load <4 x float>, ptr %12, align 4, !tbaa !34
  %14 = fmul <4 x float> %8, %13
  %15 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %10, <4 x float> %11, <4 x float> %14)
  %16 = fneg float %5
  %17 = insertelement <4 x float> poison, float %4, i64 0
  %18 = shufflevector <4 x float> %17, <4 x float> poison, <4 x i32> zeroinitializer
  %19 = insertelement <4 x float> poison, float %16, i64 0
  %20 = shufflevector <4 x float> %19, <4 x float> poison, <4 x i32> zeroinitializer
  %21 = load <4 x float>, ptr %0, align 4, !tbaa !34
  %22 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 0
  %23 = load <4 x float>, ptr %22, align 4, !tbaa !34
  %24 = fmul <4 x float> %18, %23
  %25 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %20, <4 x float> %21, <4 x float> %24)
  store <4 x float> %25, ptr %22, align 4, !tbaa !34
  store <4 x float> %15, ptr %0, align 4, !tbaa !34
  br label %68

26:                                               ; preds = %3
  %27 = insertelement <4 x float> poison, float %5, i64 0
  %28 = shufflevector <4 x float> %27, <4 x float> poison, <4 x i32> zeroinitializer
  %29 = insertelement <4 x float> poison, float %4, i64 0
  %30 = shufflevector <4 x float> %29, <4 x float> poison, <4 x i32> zeroinitializer
  %31 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 0
  %32 = load <4 x float>, ptr %31, align 4, !tbaa !34
  %33 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 0
  %34 = load <4 x float>, ptr %33, align 4, !tbaa !34
  %35 = fmul <4 x float> %28, %34
  %36 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %30, <4 x float> %32, <4 x float> %35)
  %37 = fneg float %5
  %38 = insertelement <4 x float> poison, float %4, i64 0
  %39 = shufflevector <4 x float> %38, <4 x float> poison, <4 x i32> zeroinitializer
  %40 = insertelement <4 x float> poison, float %37, i64 0
  %41 = shufflevector <4 x float> %40, <4 x float> poison, <4 x i32> zeroinitializer
  %42 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 0
  %43 = load <4 x float>, ptr %42, align 4, !tbaa !34
  %44 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 0
  %45 = load <4 x float>, ptr %44, align 4, !tbaa !34
  %46 = fmul <4 x float> %39, %45
  %47 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %41, <4 x float> %43, <4 x float> %46)
  store <4 x float> %47, ptr %44, align 4, !tbaa !34
  store <4 x float> %36, ptr %42, align 4, !tbaa !34
  br label %68

48:                                               ; preds = %3
  %49 = fneg float %5
  %50 = insertelement <4 x float> poison, float %49, i64 0
  %51 = shufflevector <4 x float> %50, <4 x float> poison, <4 x i32> zeroinitializer
  %52 = insertelement <4 x float> poison, float %4, i64 0
  %53 = shufflevector <4 x float> %52, <4 x float> poison, <4 x i32> zeroinitializer
  %54 = load <4 x float>, ptr %0, align 4, !tbaa !34
  %55 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 0
  %56 = load <4 x float>, ptr %55, align 4, !tbaa !34
  %57 = fmul <4 x float> %56, %51
  %58 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %53, <4 x float> %54, <4 x float> %57)
  %59 = insertelement <4 x float> poison, float %4, i64 0
  %60 = shufflevector <4 x float> %59, <4 x float> poison, <4 x i32> zeroinitializer
  %61 = insertelement <4 x float> poison, float %5, i64 0
  %62 = shufflevector <4 x float> %61, <4 x float> poison, <4 x i32> zeroinitializer
  %63 = load <4 x float>, ptr %0, align 4, !tbaa !34
  %64 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 0
  %65 = load <4 x float>, ptr %64, align 4, !tbaa !34
  %66 = fmul <4 x float> %60, %65
  %67 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %62, <4 x float> %63, <4 x float> %66)
  store <4 x float> %67, ptr %64, align 4, !tbaa !34
  store <4 x float> %58, ptr %0, align 4, !tbaa !34
  br label %68

68:                                               ; preds = %6, %48, %26, %3
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local void @rotate_m2(ptr nocapture noundef writeonly %0, float noundef %1) local_unnamed_addr #15 {
  %3 = tail call float @cosf(float noundef %1) #23
  %4 = getelementptr inbounds [2 x float], ptr %0, i64 1
  %5 = getelementptr inbounds [2 x float], ptr %0, i64 1, i64 1
  store float %3, ptr %5, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %6 = tail call float @sinf(float noundef %1) #23
  %7 = getelementptr inbounds [2 x float], ptr %0, i64 0, i64 1
  store float %6, ptr %7, align 4, !tbaa !34
  %8 = fneg float %6
  store float %8, ptr %4, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @transform_pivot_set_m4(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #21
  call void @unit_m4(ptr noundef nonnull %3) #22
  %4 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %1) #22
  call void @mul_m4_m4m4(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %0) #22
  call fastcc void @negate_v3(ptr noundef nonnull %4) #22
  call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @blend_m3_m3m3(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, float noundef %3) local_unnamed_addr #12 {
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [4 x float], align 16
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x [3 x float]], align 16
  %14 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %13) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %14) #21
  call void @mat3_to_rot_size(ptr noundef nonnull %6, ptr noundef nonnull %11, ptr noundef %1) #22
  call void @mat3_to_rot_size(ptr noundef nonnull %5, ptr noundef nonnull %10, ptr noundef %2) #22
  call void @mat3_to_quat(ptr noundef nonnull %8, ptr noundef nonnull %6) #23
  call void @mat3_to_quat(ptr noundef nonnull %7, ptr noundef nonnull %5) #23
  call void @interp_qt_qtqt(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %7, float noundef %3) #23
  call void @interp_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %10, float noundef %3) #23
  call void @quat_to_mat3(ptr noundef nonnull %13, ptr noundef nonnull %9) #23
  call void @size_to_mat3(ptr noundef nonnull %14, ptr noundef nonnull %12) #22
  call void @mul_m3_m3m3(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %14) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #21
  ret void
}

; Function Attrs: optsize
declare void @interp_qt_qtqt(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare void @quat_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @blend_m4_m4m4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #12 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [4 x float], align 16
  %11 = alloca [4 x float], align 16
  %12 = alloca [4 x float], align 16
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #21
  call void @mat4_to_loc_rot_size(ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef nonnull %14, ptr noundef %1) #22
  call void @mat4_to_loc_rot_size(ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %13, ptr noundef %2) #22
  call void @mat3_to_quat(ptr noundef nonnull %11, ptr noundef nonnull %9) #23
  call void @mat3_to_quat(ptr noundef nonnull %10, ptr noundef nonnull %8) #23
  call void @interp_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %5, float noundef %3) #23
  call void @interp_qt_qtqt(ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %10, float noundef %3) #23
  call void @interp_v3_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %14, ptr noundef nonnull %13, float noundef %3) #23
  call void @loc_quat_size_to_mat4(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %12, ptr noundef nonnull %15) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @loc_quat_size_to_mat4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #12 {
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #21
  tail call void @unit_m4(ptr noundef %0) #22
  call void @quat_to_mat3(ptr noundef nonnull %5, ptr noundef %2) #23
  call void @size_to_mat3(ptr noundef nonnull %6, ptr noundef %3) #22
  call void @mul_m3_m3m3(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  call void @copy_m4_m3(ptr noundef %0, ptr noundef nonnull %7) #22
  %8 = load float, ptr %1, align 4, !tbaa !34
  %9 = getelementptr inbounds [4 x float], ptr %0, i64 3
  store float %8, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 1
  store float %11, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 2
  store float %14, ptr %15, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local zeroext i8 @is_negative_m4(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #21
  %3 = getelementptr inbounds [4 x float], ptr %0, i64 1
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %2, ptr noundef %0, ptr noundef nonnull %3) #22
  %4 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %5 = call fastcc float @dot_v3v3(ptr noundef nonnull %2, ptr noundef nonnull %4) #22
  %6 = fcmp olt float %5, 0.000000e+00
  %7 = zext i1 %6 to i8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #21
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @is_zero_m3(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef %0) #22, !range !64
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %6 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %5) #22, !range !64
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %10 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %9) #22, !range !64
  br label %11

11:                                               ; preds = %8, %4, %1
  %12 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %10, %8 ]
  ret i8 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_zero_v3(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !93 {
  %2 = load float, ptr %0, align 4, !tbaa !34
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fcmp oeq float %10, 0.000000e+00
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %8, %4, %1
  %14 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @is_zero_m4(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = tail call fastcc zeroext i8 @is_zero_v4(ptr noundef %0) #22, !range !64
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %6 = tail call fastcc zeroext i8 @is_zero_v4(ptr noundef nonnull %5) #22, !range !64
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %10 = tail call fastcc zeroext i8 @is_zero_v4(ptr noundef nonnull %9) #22, !range !64
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds [4 x float], ptr %0, i64 3
  %14 = tail call fastcc zeroext i8 @is_zero_v4(ptr noundef nonnull %13) #22, !range !64
  br label %15

15:                                               ; preds = %12, %8, %4, %1
  %16 = phi i8 [ 0, %8 ], [ 0, %4 ], [ 0, %1 ], [ %14, %12 ]
  ret i8 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_zero_v4(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !94 {
  %2 = load float, ptr %0, align 4, !tbaa !34
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fcmp oeq float %10, 0.000000e+00
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds float, ptr %0, i64 3
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fcmp oeq float %14, 0.000000e+00
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %12, %8, %4, %1
  %18 = phi i8 [ 0, %8 ], [ 0, %4 ], [ 0, %1 ], [ %16, %12 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @loc_eul_size_to_mat4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #12 {
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #21
  tail call void @unit_m4(ptr noundef %0) #22
  call void @eul_to_mat3(ptr noundef nonnull %5, ptr noundef %2) #23
  call void @size_to_mat3(ptr noundef nonnull %6, ptr noundef %3) #22
  call void @mul_m3_m3m3(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  call void @copy_m4_m3(ptr noundef %0, ptr noundef nonnull %7) #22
  %8 = load float, ptr %1, align 4, !tbaa !34
  %9 = getelementptr inbounds [4 x float], ptr %0, i64 3
  store float %8, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 1
  store float %11, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 2
  store float %14, ptr %15, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #21
  ret void
}

; Function Attrs: optsize
declare void @eul_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @loc_eulO_size_to_mat4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, i16 noundef signext %4) local_unnamed_addr #12 {
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #21
  tail call void @unit_m4(ptr noundef %0) #22
  call void @eulO_to_mat3(ptr noundef nonnull %6, ptr noundef %2, i16 noundef signext %4) #23
  call void @size_to_mat3(ptr noundef nonnull %7, ptr noundef %3) #22
  call void @mul_m3_m3m3(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7) #22
  call void @copy_m4_m3(ptr noundef %0, ptr noundef nonnull %8) #22
  %9 = load float, ptr %1, align 4, !tbaa !34
  %10 = getelementptr inbounds [4 x float], ptr %0, i64 3
  store float %9, ptr %10, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 1
  store float %12, ptr %13, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 2
  store float %15, ptr %16, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #21
  ret void
}

; Function Attrs: optsize
declare void @eulO_to_mat3(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #13

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @loc_axisangle_size_to_mat4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, float noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #12 {
  %6 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #21
  call void @axis_angle_to_quat(ptr noundef nonnull %6, ptr noundef %2, float noundef %3) #23
  call void @loc_quat_size_to_mat4(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef %4) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #21
  ret void
}

; Function Attrs: optsize
declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #13

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @print_m3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #16 {
  %3 = tail call i32 @puts(ptr nonnull dereferenceable(1) %0)
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = fpext float %4 to double
  %6 = getelementptr inbounds [3 x float], ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fpext float %7 to double
  %9 = getelementptr inbounds [3 x float], ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fpext float %10 to double
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %5, double noundef %8, double noundef %11) #22
  %13 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fpext float %14 to double
  %16 = getelementptr inbounds [3 x float], ptr %1, i64 1, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fpext float %17 to double
  %19 = getelementptr inbounds [3 x float], ptr %1, i64 2, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fpext float %20 to double
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %15, double noundef %18, double noundef %21) #22
  %23 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fpext float %24 to double
  %26 = getelementptr inbounds [3 x float], ptr %1, i64 1, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = fpext float %27 to double
  %29 = getelementptr inbounds [3 x float], ptr %1, i64 2, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = fpext float %30 to double
  %32 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %25, double noundef %28, double noundef %31) #22
  %33 = tail call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @print_m4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #16 {
  %3 = tail call i32 @puts(ptr nonnull dereferenceable(1) %0)
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = fpext float %4 to double
  %6 = getelementptr inbounds [4 x float], ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fpext float %7 to double
  %9 = getelementptr inbounds [4 x float], ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fpext float %10 to double
  %12 = getelementptr inbounds [4 x float], ptr %1, i64 3
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fpext float %13 to double
  %15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %5, double noundef %8, double noundef %11, double noundef %14) #22
  %16 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fpext float %17 to double
  %19 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fpext float %20 to double
  %22 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = fpext float %23 to double
  %25 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = fpext float %26 to double
  %28 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %18, double noundef %21, double noundef %24, double noundef %27) #22
  %29 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = fpext float %30 to double
  %32 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = fpext float %33 to double
  %35 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = fpext float %36 to double
  %38 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !34
  %40 = fpext float %39 to double
  %41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %31, double noundef %34, double noundef %37, double noundef %40) #22
  %42 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 3
  %43 = load float, ptr %42, align 4, !tbaa !34
  %44 = fpext float %43 to double
  %45 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 3
  %46 = load float, ptr %45, align 4, !tbaa !34
  %47 = fpext float %46 to double
  %48 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 3
  %49 = load float, ptr %48, align 4, !tbaa !34
  %50 = fpext float %49 to double
  %51 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 3
  %52 = load float, ptr %51, align 4, !tbaa !34
  %53 = fpext float %52 to double
  %54 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %44, double noundef %47, double noundef %50, double noundef %53) #22
  %55 = tail call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @svd_m4(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #12 {
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x float], align 16
  %7 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #21
  %8 = tail call fastcc i32 @min_ii(i32 noundef 4, i32 noundef 4) #22, !range !95
  %9 = tail call fastcc i32 @min_ii(i32 noundef 3, i32 noundef 4) #22, !range !95
  %10 = tail call fastcc i32 @min_ii(i32 noundef 2, i32 noundef 4) #22, !range !95
  %11 = tail call fastcc i32 @max_ii(i32 noundef 0, i32 noundef %10) #22, !range !96
  call void @copy_m4_m4(ptr noundef nonnull %5, ptr noundef %3) #22
  tail call void @zero_m4(ptr noundef %0) #22
  tail call fastcc void @zero_v4(ptr noundef %1) #22
  %12 = tail call fastcc i32 @max_ii(i32 noundef %9, i32 noundef %11) #22, !range !96
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %207, label %14

14:                                               ; preds = %4
  %15 = zext nneg i32 %11 to i64
  %16 = zext nneg i32 %9 to i64
  %17 = zext nneg i32 %12 to i64
  %18 = getelementptr inbounds i8, ptr %6, i64 4
  br label %19

19:                                               ; preds = %14, %204
  %20 = phi i64 [ 1, %14 ], [ %205, %204 ]
  %21 = phi i64 [ 0, %14 ], [ %65, %204 ]
  %22 = shl nuw nsw i64 %21, 2
  %23 = getelementptr i8, ptr %18, i64 %22
  %24 = shl i64 %21, 2
  %25 = sub i64 8, %24
  %26 = and i64 %25, 17179869180
  %27 = add nuw nsw i64 %26, 4
  %28 = icmp ult i64 %21, %16
  br i1 %28, label %29, label %64

29:                                               ; preds = %19
  %30 = getelementptr inbounds float, ptr %1, i64 %21
  store float 0.000000e+00, ptr %30, align 4, !tbaa !34
  %31 = icmp ult i64 %21, 4
  br i1 %31, label %32, label %61

32:                                               ; preds = %29, %32
  %33 = phi float [ %37, %32 ], [ 0.000000e+00, %29 ]
  %34 = phi i64 [ %38, %32 ], [ %21, %29 ]
  %35 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %34, i64 %21
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = tail call float @hypotf(float noundef %33, float noundef %36) #23
  store float %37, ptr %30, align 4, !tbaa !34
  %38 = add nuw nsw i64 %34, 1
  %39 = icmp eq i64 %38, 4
  br i1 %39, label %40, label %32, !llvm.loop !97

40:                                               ; preds = %32
  %41 = fcmp une float %37, 0.000000e+00
  br i1 %41, label %42, label %61

42:                                               ; preds = %40
  %43 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %21, i64 %21
  %44 = load float, ptr %43, align 4, !tbaa !34
  %45 = fcmp olt float %44, 0.000000e+00
  %46 = fneg float %37
  %47 = select i1 %45, float %46, float %37
  %48 = fdiv float 1.000000e+00, %47
  br i1 %31, label %49, label %58

49:                                               ; preds = %42, %49
  %50 = phi i64 [ %54, %49 ], [ %21, %42 ]
  %51 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %50, i64 %21
  %52 = load float, ptr %51, align 4, !tbaa !34
  %53 = fmul float %48, %52
  store float %53, ptr %51, align 4, !tbaa !34
  %54 = add nuw nsw i64 %50, 1
  %55 = icmp eq i64 %54, 4
  br i1 %55, label %56, label %49, !llvm.loop !98

56:                                               ; preds = %49
  %57 = load float, ptr %43, align 4, !tbaa !34
  br label %58

58:                                               ; preds = %56, %42
  %59 = phi float [ %57, %56 ], [ %44, %42 ]
  %60 = fadd float %59, 1.000000e+00
  store float %60, ptr %43, align 4, !tbaa !34
  br label %61

61:                                               ; preds = %29, %58, %40
  %62 = phi float [ %47, %58 ], [ %37, %40 ], [ 0.000000e+00, %29 ]
  %63 = fneg float %62
  store float %63, ptr %30, align 4, !tbaa !34
  br label %64

64:                                               ; preds = %61, %19
  %65 = add nuw nsw i64 %21, 1
  %66 = icmp ult i64 %21, 3
  br i1 %66, label %67, label %104

67:                                               ; preds = %64
  %68 = getelementptr inbounds float, ptr %1, i64 %21
  %69 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %21, i64 %21
  br label %70

70:                                               ; preds = %67, %98
  %71 = phi i64 [ %20, %67 ], [ %102, %98 ]
  br i1 %28, label %72, label %98

72:                                               ; preds = %70
  %73 = load float, ptr %68, align 4, !tbaa !34
  %74 = fcmp une float %73, 0.000000e+00
  br i1 %74, label %75, label %98

75:                                               ; preds = %72, %75
  %76 = phi i64 [ %83, %75 ], [ %21, %72 ]
  %77 = phi float [ %82, %75 ], [ 0.000000e+00, %72 ]
  %78 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %76, i64 %21
  %79 = load float, ptr %78, align 4, !tbaa !34
  %80 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %76, i64 %71
  %81 = load float, ptr %80, align 4, !tbaa !34
  %82 = tail call float @llvm.fmuladd.f32(float %79, float %81, float %77)
  %83 = add nuw nsw i64 %76, 1
  %84 = icmp eq i64 %83, 4
  br i1 %84, label %85, label %75, !llvm.loop !99

85:                                               ; preds = %75
  %86 = fneg float %82
  %87 = load float, ptr %69, align 4, !tbaa !34
  %88 = fdiv float %86, %87
  br label %89

89:                                               ; preds = %85, %89
  %90 = phi i64 [ %21, %85 ], [ %96, %89 ]
  %91 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %90, i64 %21
  %92 = load float, ptr %91, align 4, !tbaa !34
  %93 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %90, i64 %71
  %94 = load float, ptr %93, align 4, !tbaa !34
  %95 = tail call float @llvm.fmuladd.f32(float %88, float %92, float %94)
  store float %95, ptr %93, align 4, !tbaa !34
  %96 = add nuw nsw i64 %90, 1
  %97 = icmp eq i64 %96, 4
  br i1 %97, label %98, label %89, !llvm.loop !100

98:                                               ; preds = %89, %72, %70
  %99 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %21, i64 %71
  %100 = load float, ptr %99, align 4, !tbaa !34
  %101 = getelementptr inbounds float, ptr %7, i64 %71
  store float %100, ptr %101, align 4, !tbaa !34
  %102 = add nuw nsw i64 %71, 1
  %103 = icmp eq i64 %102, 4
  br i1 %103, label %104, label %70, !llvm.loop !101

104:                                              ; preds = %98, %64
  %105 = icmp ult i64 %21, 4
  %106 = and i1 %28, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %104, %107
  %108 = phi i64 [ %112, %107 ], [ %21, %104 ]
  %109 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %108, i64 %21
  %110 = load float, ptr %109, align 4, !tbaa !34
  %111 = getelementptr inbounds [4 x float], ptr %0, i64 %108, i64 %21
  store float %110, ptr %111, align 4, !tbaa !34
  %112 = add nuw nsw i64 %108, 1
  %113 = icmp eq i64 %112, 4
  br i1 %113, label %114, label %107, !llvm.loop !102

114:                                              ; preds = %107, %104
  %115 = icmp ult i64 %21, %15
  br i1 %115, label %116, label %204

116:                                              ; preds = %114
  %117 = getelementptr inbounds float, ptr %7, i64 %21
  store float 0.000000e+00, ptr %117, align 4, !tbaa !34
  br i1 %66, label %119, label %118

118:                                              ; preds = %116
  store float -0.000000e+00, ptr %117, align 4, !tbaa !34
  br label %204

119:                                              ; preds = %116, %119
  %120 = phi i64 [ %125, %119 ], [ %20, %116 ]
  %121 = phi float [ %124, %119 ], [ 0.000000e+00, %116 ]
  %122 = getelementptr inbounds float, ptr %7, i64 %120
  %123 = load float, ptr %122, align 4, !tbaa !34
  %124 = tail call float @hypotf(float noundef %121, float noundef %123) #23
  store float %124, ptr %117, align 4, !tbaa !34
  %125 = add nuw nsw i64 %120, 1
  %126 = icmp eq i64 %125, 4
  br i1 %126, label %127, label %119, !llvm.loop !103

127:                                              ; preds = %119
  %128 = fcmp une float %124, 0.000000e+00
  br i1 %128, label %129, label %152

129:                                              ; preds = %127
  %130 = getelementptr inbounds float, ptr %7, i64 %65
  %131 = load float, ptr %130, align 4, !tbaa !34
  %132 = fcmp olt float %131, 0.000000e+00
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = fneg float %124
  store float %134, ptr %117, align 4, !tbaa !34
  br label %135

135:                                              ; preds = %133, %129
  %136 = phi float [ %134, %133 ], [ %124, %129 ]
  %137 = fdiv float 1.000000e+00, %136
  br i1 %66, label %138, label %148

138:                                              ; preds = %135, %138
  %139 = phi i64 [ %143, %138 ], [ %20, %135 ]
  %140 = getelementptr inbounds float, ptr %7, i64 %139
  %141 = load float, ptr %140, align 4, !tbaa !34
  %142 = fmul float %137, %141
  store float %142, ptr %140, align 4, !tbaa !34
  %143 = add nuw nsw i64 %139, 1
  %144 = icmp eq i64 %143, 4
  br i1 %144, label %145, label %138, !llvm.loop !104

145:                                              ; preds = %138
  %146 = load float, ptr %130, align 4, !tbaa !34
  %147 = load float, ptr %117, align 4, !tbaa !34
  br label %148

148:                                              ; preds = %145, %135
  %149 = phi float [ %147, %145 ], [ %136, %135 ]
  %150 = phi float [ %146, %145 ], [ %131, %135 ]
  %151 = fadd float %150, 1.000000e+00
  store float %151, ptr %130, align 4, !tbaa !34
  br label %152

152:                                              ; preds = %148, %127
  %153 = phi float [ %149, %148 ], [ %124, %127 ]
  %154 = fneg float %153
  store float %154, ptr %117, align 4, !tbaa !34
  %155 = fcmp une float %153, 0.000000e+00
  %156 = and i1 %66, %155
  br i1 %156, label %157, label %196

157:                                              ; preds = %152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %23, i8 0, i64 %27, i1 false), !tbaa !34
  br label %158

158:                                              ; preds = %157, %171
  %159 = phi i64 [ %20, %157 ], [ %172, %171 ]
  %160 = getelementptr inbounds float, ptr %7, i64 %159
  %161 = load float, ptr %160, align 4, !tbaa !34
  br label %162

162:                                              ; preds = %158, %162
  %163 = phi i64 [ %20, %158 ], [ %169, %162 ]
  %164 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %163, i64 %159
  %165 = load float, ptr %164, align 4, !tbaa !34
  %166 = getelementptr inbounds float, ptr %6, i64 %163
  %167 = load float, ptr %166, align 4, !tbaa !34
  %168 = tail call float @llvm.fmuladd.f32(float %161, float %165, float %167)
  store float %168, ptr %166, align 4, !tbaa !34
  %169 = add nuw nsw i64 %163, 1
  %170 = icmp eq i64 %169, 4
  br i1 %170, label %171, label %162, !llvm.loop !105

171:                                              ; preds = %162
  %172 = add nuw nsw i64 %159, 1
  %173 = icmp eq i64 %172, 4
  br i1 %173, label %174, label %158, !llvm.loop !106

174:                                              ; preds = %171
  %175 = getelementptr inbounds float, ptr %7, i64 %65
  %176 = load float, ptr %175, align 4, !tbaa !34
  %177 = fdiv float 1.000000e+00, %176
  br label %178

178:                                              ; preds = %174, %193
  %179 = phi i64 [ %20, %174 ], [ %194, %193 ]
  %180 = getelementptr inbounds float, ptr %7, i64 %179
  %181 = load float, ptr %180, align 4, !tbaa !34
  %182 = fneg float %181
  %183 = fmul float %177, %182
  br label %184

184:                                              ; preds = %178, %184
  %185 = phi i64 [ %20, %178 ], [ %191, %184 ]
  %186 = getelementptr inbounds float, ptr %6, i64 %185
  %187 = load float, ptr %186, align 4, !tbaa !34
  %188 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %185, i64 %179
  %189 = load float, ptr %188, align 4, !tbaa !34
  %190 = tail call float @llvm.fmuladd.f32(float %183, float %187, float %189)
  store float %190, ptr %188, align 4, !tbaa !34
  %191 = add nuw nsw i64 %185, 1
  %192 = icmp eq i64 %191, 4
  br i1 %192, label %193, label %184, !llvm.loop !107

193:                                              ; preds = %184
  %194 = add nuw nsw i64 %179, 1
  %195 = icmp eq i64 %194, 4
  br i1 %195, label %196, label %178, !llvm.loop !108

196:                                              ; preds = %193, %152
  br i1 %66, label %197, label %204

197:                                              ; preds = %196, %197
  %198 = phi i64 [ %202, %197 ], [ %20, %196 ]
  %199 = getelementptr inbounds float, ptr %7, i64 %198
  %200 = load float, ptr %199, align 4, !tbaa !34
  %201 = getelementptr inbounds [4 x float], ptr %2, i64 %198, i64 %21
  store float %200, ptr %201, align 4, !tbaa !34
  %202 = add nuw nsw i64 %198, 1
  %203 = icmp eq i64 %202, 4
  br i1 %203, label %204, label %197, !llvm.loop !109

204:                                              ; preds = %197, %118, %196, %114
  %205 = add nuw nsw i64 %20, 1
  %206 = icmp eq i64 %65, %17
  br i1 %206, label %207, label %19, !llvm.loop !110

207:                                              ; preds = %204, %4
  %208 = tail call fastcc i32 @min_ii(i32 noundef 4, i32 noundef 5) #22, !range !95
  %209 = icmp ult i32 %9, 4
  br i1 %209, label %210, label %215

210:                                              ; preds = %207
  %211 = zext nneg i32 %9 to i64
  %212 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %211, i64 %211
  %213 = load float, ptr %212, align 4, !tbaa !34
  %214 = getelementptr inbounds float, ptr %1, i64 %211
  store float %213, ptr %214, align 4, !tbaa !34
  br label %215

215:                                              ; preds = %210, %207
  %216 = icmp ugt i32 %208, 4
  br i1 %216, label %217, label %219

217:                                              ; preds = %215
  %218 = getelementptr inbounds float, ptr %1, i64 4
  store float 0.000000e+00, ptr %218, align 4, !tbaa !34
  br label %219

219:                                              ; preds = %217, %215
  %220 = add nuw nsw i32 %11, 1
  %221 = icmp ult i32 %220, %208
  br i1 %221, label %225, label %222

222:                                              ; preds = %219
  %223 = add nsw i32 %208, -1
  %224 = zext nneg i32 %223 to i64
  br label %232

225:                                              ; preds = %219
  %226 = zext nneg i32 %11 to i64
  %227 = add nsw i32 %208, -1
  %228 = zext nneg i32 %227 to i64
  %229 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %226, i64 %228
  %230 = load float, ptr %229, align 4, !tbaa !34
  %231 = getelementptr inbounds float, ptr %7, i64 %226
  store float %230, ptr %231, align 4, !tbaa !34
  br label %232

232:                                              ; preds = %222, %225
  %233 = phi i64 [ %224, %222 ], [ %228, %225 ]
  %234 = phi i32 [ %223, %222 ], [ %227, %225 ]
  %235 = getelementptr inbounds float, ptr %7, i64 %233
  store float 0.000000e+00, ptr %235, align 4, !tbaa !34
  %236 = icmp ult i32 %9, %8
  %237 = zext nneg i32 %9 to i64
  %238 = zext nneg i32 %8 to i64
  br i1 %236, label %239, label %241

239:                                              ; preds = %232, %248
  %240 = phi i64 [ %250, %248 ], [ %237, %232 ]
  br label %243

241:                                              ; preds = %248, %232
  %242 = add nsw i64 %237, -2
  br label %252

243:                                              ; preds = %239, %243
  %244 = phi i64 [ 0, %239 ], [ %246, %243 ]
  %245 = getelementptr inbounds [4 x float], ptr %0, i64 %244, i64 %240
  store float 0.000000e+00, ptr %245, align 4, !tbaa !34
  %246 = add nuw nsw i64 %244, 1
  %247 = icmp eq i64 %246, 4
  br i1 %247, label %248, label %243, !llvm.loop !111

248:                                              ; preds = %243
  %249 = getelementptr inbounds [4 x float], ptr %0, i64 %240, i64 %240
  store float 1.000000e+00, ptr %249, align 4, !tbaa !34
  %250 = add nuw nsw i64 %240, 1
  %251 = icmp eq i64 %250, %238
  br i1 %251, label %241, label %239, !llvm.loop !112

252:                                              ; preds = %241, %341
  %253 = phi i64 [ 0, %241 ], [ %343, %341 ]
  %254 = phi i64 [ %237, %241 ], [ %259, %341 ]
  %255 = phi i64 [ %237, %241 ], [ %258, %341 ]
  %256 = sub i64 %242, %253
  %257 = tail call i64 @llvm.smax.i64(i64 %256, i64 1)
  %258 = add nsw i64 %255, -1
  %259 = add nsw i64 %254, -1
  %260 = getelementptr inbounds float, ptr %1, i64 %259
  %261 = load float, ptr %260, align 4, !tbaa !34
  %262 = fcmp une float %261, 0.000000e+00
  br i1 %262, label %263, label %332

263:                                              ; preds = %252
  %264 = icmp ult i64 %254, %238
  br i1 %264, label %265, label %268

265:                                              ; preds = %263
  %266 = getelementptr inbounds [4 x float], ptr %0, i64 %259, i64 %259
  %267 = icmp ult i64 %254, 5
  br label %274

268:                                              ; preds = %299, %263
  %269 = icmp ult i64 %254, 5
  br i1 %269, label %302, label %270

270:                                              ; preds = %268
  %271 = getelementptr inbounds [4 x float], ptr %0, i64 %259, i64 %259
  %272 = load float, ptr %271, align 4, !tbaa !34
  %273 = fadd float %272, 1.000000e+00
  store float %273, ptr %271, align 4, !tbaa !34
  br label %314

274:                                              ; preds = %299, %265
  %275 = phi i64 [ %254, %265 ], [ %300, %299 ]
  br label %276

276:                                              ; preds = %274, %276
  %277 = phi i64 [ %258, %274 ], [ %284, %276 ]
  %278 = phi float [ 0.000000e+00, %274 ], [ %283, %276 ]
  %279 = getelementptr inbounds [4 x float], ptr %0, i64 %277, i64 %259
  %280 = load float, ptr %279, align 4, !tbaa !34
  %281 = getelementptr inbounds [4 x float], ptr %0, i64 %277, i64 %275
  %282 = load float, ptr %281, align 4, !tbaa !34
  %283 = tail call float @llvm.fmuladd.f32(float %280, float %282, float %278)
  %284 = add nsw i64 %277, 1
  %285 = icmp eq i64 %284, 4
  br i1 %285, label %286, label %276, !llvm.loop !113

286:                                              ; preds = %276
  %287 = fneg float %283
  %288 = load float, ptr %266, align 4, !tbaa !34
  %289 = fdiv float %287, %288
  br i1 %267, label %290, label %299

290:                                              ; preds = %286, %290
  %291 = phi i64 [ %297, %290 ], [ %258, %286 ]
  %292 = getelementptr inbounds [4 x float], ptr %0, i64 %291, i64 %259
  %293 = load float, ptr %292, align 4, !tbaa !34
  %294 = getelementptr inbounds [4 x float], ptr %0, i64 %291, i64 %275
  %295 = load float, ptr %294, align 4, !tbaa !34
  %296 = tail call float @llvm.fmuladd.f32(float %289, float %293, float %295)
  store float %296, ptr %294, align 4, !tbaa !34
  %297 = add nsw i64 %291, 1
  %298 = icmp eq i64 %297, 4
  br i1 %298, label %299, label %290, !llvm.loop !114

299:                                              ; preds = %290, %286
  %300 = add nuw nsw i64 %275, 1
  %301 = icmp ult i64 %300, %238
  br i1 %301, label %274, label %268, !llvm.loop !115

302:                                              ; preds = %268, %302
  %303 = phi i64 [ %307, %302 ], [ %258, %268 ]
  %304 = getelementptr inbounds [4 x float], ptr %0, i64 %303, i64 %259
  %305 = load float, ptr %304, align 4, !tbaa !34
  %306 = fneg float %305
  store float %306, ptr %304, align 4, !tbaa !34
  %307 = add nsw i64 %303, 1
  %308 = icmp eq i64 %307, 4
  br i1 %308, label %309, label %302, !llvm.loop !116

309:                                              ; preds = %302
  %310 = getelementptr inbounds [4 x float], ptr %0, i64 %259, i64 %259
  %311 = load float, ptr %310, align 4, !tbaa !34
  %312 = fadd float %311, 1.000000e+00
  store float %312, ptr %310, align 4, !tbaa !34
  %313 = icmp ugt i64 %254, 2
  br i1 %313, label %314, label %341

314:                                              ; preds = %309, %270
  %315 = add nsw i64 %257, -1
  %316 = insertelement <4 x i64> poison, i64 %315, i64 0
  %317 = shufflevector <4 x i64> %316, <4 x i64> poison, <4 x i32> zeroinitializer
  %318 = icmp uge <4 x i64> %317, <i64 0, i64 1, i64 2, i64 3>
  %319 = extractelement <4 x i1> %318, i64 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %314
  %321 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 %259
  store float 0.000000e+00, ptr %321, align 4, !tbaa !34
  br label %322

322:                                              ; preds = %320, %314
  %323 = extractelement <4 x i1> %318, i64 1
  br i1 %323, label %324, label %326

324:                                              ; preds = %322
  %325 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 %259
  store float 0.000000e+00, ptr %325, align 4, !tbaa !34
  br label %326

326:                                              ; preds = %324, %322
  %327 = extractelement <4 x i1> %318, i64 2
  br i1 %327, label %328, label %330

328:                                              ; preds = %326
  %329 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 %259
  store float 0.000000e+00, ptr %329, align 4, !tbaa !34
  br label %330

330:                                              ; preds = %328, %326
  %331 = extractelement <4 x i1> %318, i64 3
  br i1 %331, label %337, label %341

332:                                              ; preds = %252, %332
  %333 = phi i64 [ %335, %332 ], [ 0, %252 ]
  %334 = getelementptr inbounds [4 x float], ptr %0, i64 %333, i64 %259
  store float 0.000000e+00, ptr %334, align 4, !tbaa !34
  %335 = add nuw nsw i64 %333, 1
  %336 = icmp eq i64 %335, 4
  br i1 %336, label %337, label %332, !llvm.loop !117

337:                                              ; preds = %332, %330
  %338 = phi i64 [ 3, %330 ], [ %259, %332 ]
  %339 = phi float [ 0.000000e+00, %330 ], [ 1.000000e+00, %332 ]
  %340 = getelementptr inbounds [4 x float], ptr %0, i64 %338, i64 %259
  store float %339, ptr %340, align 4, !tbaa !34
  br label %341

341:                                              ; preds = %337, %330, %309
  %342 = icmp sgt i64 %254, 1
  %343 = add i64 %253, 1
  br i1 %342, label %252, label %344, !llvm.loop !118

344:                                              ; preds = %341
  %345 = zext nneg i32 %11 to i64
  br label %350

346:                                              ; preds = %398
  %347 = getelementptr float, ptr %7, i64 -1
  %348 = zext nneg i32 %208 to i64
  %349 = zext nneg i32 %234 to i64
  br label %403

350:                                              ; preds = %344, %398
  %351 = phi i64 [ 3, %344 ], [ %400, %398 ]
  %352 = phi i64 [ 4, %344 ], [ %402, %398 ]
  %353 = icmp ult i64 %351, %345
  %354 = getelementptr inbounds float, ptr %7, i64 %351
  %355 = load float, ptr %354, align 4, !tbaa !34
  %356 = fcmp une float %355, 0.000000e+00
  %357 = and i1 %353, %356
  br i1 %357, label %358, label %392

358:                                              ; preds = %350
  %359 = add nuw nsw i64 %351, 1
  %360 = icmp ult i64 %359, %238
  br i1 %360, label %361, label %392

361:                                              ; preds = %358
  %362 = icmp ult i64 %351, 3
  %363 = getelementptr inbounds [4 x float], ptr %2, i64 %359, i64 %351
  br label %364

364:                                              ; preds = %361, %389
  %365 = phi i64 [ %352, %361 ], [ %390, %389 ]
  br i1 %362, label %366, label %389

366:                                              ; preds = %364, %366
  %367 = phi i64 [ %374, %366 ], [ %352, %364 ]
  %368 = phi float [ %373, %366 ], [ 0.000000e+00, %364 ]
  %369 = getelementptr inbounds [4 x float], ptr %2, i64 %367, i64 %351
  %370 = load float, ptr %369, align 4, !tbaa !34
  %371 = getelementptr inbounds [4 x float], ptr %2, i64 %367, i64 %365
  %372 = load float, ptr %371, align 4, !tbaa !34
  %373 = tail call float @llvm.fmuladd.f32(float %370, float %372, float %368)
  %374 = add nuw nsw i64 %367, 1
  %375 = icmp eq i64 %374, 4
  br i1 %375, label %376, label %366, !llvm.loop !119

376:                                              ; preds = %366
  %377 = fneg float %373
  %378 = load float, ptr %363, align 4, !tbaa !34
  %379 = fdiv float %377, %378
  br i1 %362, label %380, label %389

380:                                              ; preds = %376, %380
  %381 = phi i64 [ %387, %380 ], [ %352, %376 ]
  %382 = getelementptr inbounds [4 x float], ptr %2, i64 %381, i64 %351
  %383 = load float, ptr %382, align 4, !tbaa !34
  %384 = getelementptr inbounds [4 x float], ptr %2, i64 %381, i64 %365
  %385 = load float, ptr %384, align 4, !tbaa !34
  %386 = tail call float @llvm.fmuladd.f32(float %379, float %383, float %385)
  store float %386, ptr %384, align 4, !tbaa !34
  %387 = add nuw nsw i64 %381, 1
  %388 = icmp eq i64 %387, 4
  br i1 %388, label %389, label %380, !llvm.loop !120

389:                                              ; preds = %380, %364, %376
  %390 = add nuw nsw i64 %365, 1
  %391 = icmp eq i64 %390, %238
  br i1 %391, label %392, label %364, !llvm.loop !121

392:                                              ; preds = %389, %358, %350
  br label %393

393:                                              ; preds = %392, %393
  %394 = phi i64 [ %396, %393 ], [ 0, %392 ]
  %395 = getelementptr inbounds [4 x float], ptr %2, i64 %394, i64 %351
  store float 0.000000e+00, ptr %395, align 4, !tbaa !34
  %396 = add nuw nsw i64 %394, 1
  %397 = icmp eq i64 %396, 4
  br i1 %397, label %398, label %393, !llvm.loop !122

398:                                              ; preds = %393
  %399 = getelementptr inbounds [4 x float], ptr %2, i64 %351, i64 %351
  store float 1.000000e+00, ptr %399, align 4, !tbaa !34
  %400 = add nsw i64 %351, -1
  %401 = icmp eq i64 %351, 0
  %402 = add nsw i64 %352, -1
  br i1 %401, label %346, label %350, !llvm.loop !123

403:                                              ; preds = %346, %792
  %404 = phi i32 [ 200, %346 ], [ %406, %792 ]
  %405 = phi i32 [ %208, %346 ], [ %793, %792 ]
  %406 = add nsw i32 %404, -1
  %407 = add nsw i32 %405, -2
  %408 = icmp eq i32 %407, -1
  br i1 %408, label %431, label %409

409:                                              ; preds = %403
  %410 = sext i32 %405 to i64
  %411 = add nsw i64 %410, -2
  br label %412

412:                                              ; preds = %409, %428
  %413 = phi i64 [ %411, %409 ], [ %429, %428 ]
  %414 = getelementptr inbounds float, ptr %7, i64 %413
  %415 = load float, ptr %414, align 4, !tbaa !34
  %416 = tail call float @llvm.fabs.f32(float %415)
  %417 = getelementptr inbounds float, ptr %1, i64 %413
  %418 = load <2 x float>, ptr %417, align 4, !tbaa !34
  %419 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %418)
  %420 = shufflevector <2 x float> %419, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %421 = fadd <2 x float> %419, %420
  %422 = extractelement <2 x float> %421, i64 0
  %423 = fmul float %422, 0x3CB0000000000000
  %424 = fcmp ugt float %416, %423
  br i1 %424, label %428, label %425

425:                                              ; preds = %412
  %426 = getelementptr inbounds float, ptr %7, i64 %413
  %427 = trunc i64 %413 to i32
  store float 0.000000e+00, ptr %426, align 4, !tbaa !34
  br label %431

428:                                              ; preds = %412
  %429 = add nsw i64 %413, -1
  %430 = icmp eq i64 %413, 0
  br i1 %430, label %431, label %412, !llvm.loop !124

431:                                              ; preds = %428, %403, %425
  %432 = phi i32 [ %427, %425 ], [ -1, %403 ], [ -1, %428 ]
  %433 = icmp eq i32 %432, %407
  %434 = add nsw i32 %405, -1
  br i1 %433, label %435, label %440

435:                                              ; preds = %431
  %436 = sext i32 %434 to i64
  %437 = getelementptr inbounds float, ptr %1, i64 %436
  %438 = load float, ptr %437, align 4, !tbaa !34
  %439 = fcmp ugt float %438, 0.000000e+00
  br i1 %439, label %762, label %751

440:                                              ; preds = %431
  %441 = icmp sgt i32 %434, %432
  br i1 %441, label %442, label %474

442:                                              ; preds = %440
  %443 = add nsw i32 %432, 1
  %444 = sext i32 %405 to i64
  %445 = add nsw i64 %444, -1
  %446 = sext i32 %432 to i64
  %447 = sext i32 %443 to i64
  br label %448

448:                                              ; preds = %442, %469
  %449 = phi i64 [ %445, %442 ], [ %470, %469 ]
  %450 = getelementptr inbounds float, ptr %7, i64 %449
  %451 = load float, ptr %450, align 4, !tbaa !34
  %452 = tail call float @llvm.fabs.f32(float %451)
  %453 = icmp eq i64 %449, %447
  br i1 %453, label %458, label %454

454:                                              ; preds = %448
  %455 = getelementptr float, ptr %347, i64 %449
  %456 = load float, ptr %455, align 4, !tbaa !34
  %457 = tail call float @llvm.fabs.f32(float %456)
  br label %458

458:                                              ; preds = %448, %454
  %459 = phi float [ %457, %454 ], [ 0.000000e+00, %448 ]
  %460 = fadd float %452, %459
  %461 = getelementptr inbounds float, ptr %1, i64 %449
  %462 = load float, ptr %461, align 4, !tbaa !34
  %463 = tail call float @llvm.fabs.f32(float %462)
  %464 = fmul float %460, 0x3CB0000000000000
  %465 = fcmp ugt float %463, %464
  br i1 %465, label %469, label %466

466:                                              ; preds = %458
  %467 = getelementptr inbounds float, ptr %1, i64 %449
  %468 = trunc i64 %449 to i32
  store float 0.000000e+00, ptr %467, align 4, !tbaa !34
  br label %474

469:                                              ; preds = %458
  %470 = add nsw i64 %449, -1
  %471 = icmp sgt i64 %470, %446
  br i1 %471, label %448, label %472, !llvm.loop !125

472:                                              ; preds = %469
  %473 = trunc i64 %470 to i32
  br label %474

474:                                              ; preds = %472, %440, %466
  %475 = phi i32 [ %468, %466 ], [ %434, %440 ], [ %473, %472 ]
  %476 = icmp eq i32 %475, %432
  br i1 %476, label %477, label %517

477:                                              ; preds = %474
  %478 = add nsw i32 %432, 1
  %479 = zext nneg i32 %434 to i64
  %480 = getelementptr inbounds float, ptr %1, i64 %479
  %481 = load float, ptr %480, align 4, !tbaa !34
  %482 = tail call float @llvm.fabs.f32(float %481)
  %483 = sext i32 %407 to i64
  %484 = getelementptr inbounds float, ptr %1, i64 %483
  %485 = load float, ptr %484, align 4, !tbaa !34
  %486 = tail call float @llvm.fabs.f32(float %485)
  %487 = tail call fastcc float @max_ff(float noundef %482, float noundef %486) #22
  %488 = getelementptr inbounds float, ptr %7, i64 %483
  %489 = load float, ptr %488, align 4, !tbaa !34
  %490 = tail call float @llvm.fabs.f32(float %489)
  %491 = tail call fastcc float @max_ff(float noundef %487, float noundef %490) #22
  %492 = sext i32 %478 to i64
  %493 = getelementptr inbounds float, ptr %1, i64 %492
  %494 = load float, ptr %493, align 4, !tbaa !34
  %495 = tail call float @llvm.fabs.f32(float %494)
  %496 = tail call fastcc float @max_ff(float noundef %491, float noundef %495) #22
  %497 = getelementptr inbounds float, ptr %7, i64 %492
  %498 = load float, ptr %497, align 4, !tbaa !34
  %499 = tail call float @llvm.fabs.f32(float %498)
  %500 = tail call fastcc float @max_ff(float noundef %496, float noundef %499) #22
  %501 = fdiv float 1.000000e+00, %500
  %502 = fmul float %481, %501
  %503 = fmul float %485, %501
  %504 = fmul float %489, %501
  %505 = fmul float %494, %501
  %506 = fmul float %498, %501
  %507 = fadd float %503, %502
  %508 = fsub float %503, %502
  %509 = fmul float %504, %504
  %510 = tail call float @llvm.fmuladd.f32(float %507, float %508, float %509)
  %511 = fmul float %510, 5.000000e-01
  %512 = fmul float %502, %504
  %513 = fmul float %512, %512
  %514 = fcmp une float %511, 0.000000e+00
  %515 = fcmp une float %513, 0.000000e+00
  %516 = select i1 %514, i1 true, i1 %515
  br i1 %516, label %604, label %612

517:                                              ; preds = %474
  %518 = icmp eq i32 %475, %434
  %519 = select i1 %518, i32 %432, i32 %475
  %520 = add i32 %519, 1
  br i1 %518, label %521, label %566

521:                                              ; preds = %517
  %522 = sext i32 %407 to i64
  %523 = getelementptr inbounds float, ptr %7, i64 %522
  %524 = load float, ptr %523, align 4, !tbaa !34
  store float 0.000000e+00, ptr %523, align 4, !tbaa !34
  %525 = icmp sgt i32 %407, %432
  br i1 %525, label %526, label %792

526:                                              ; preds = %521
  %527 = zext nneg i32 %434 to i64
  %528 = sext i32 %405 to i64
  %529 = add nsw i64 %528, -2
  %530 = sext i32 %432 to i64
  %531 = sext i32 %520 to i64
  br label %532

532:                                              ; preds = %526, %563
  %533 = phi i64 [ %529, %526 ], [ %564, %563 ]
  %534 = phi float [ %524, %526 ], [ %550, %563 ]
  %535 = getelementptr inbounds float, ptr %1, i64 %533
  %536 = load float, ptr %535, align 4, !tbaa !34
  %537 = tail call float @hypotf(float noundef %536, float noundef %534) #23
  %538 = fdiv float 1.000000e+00, %537
  %539 = load float, ptr %535, align 4, !tbaa !34
  %540 = fmul float %539, %538
  %541 = fmul float %534, %538
  store float %537, ptr %535, align 4, !tbaa !34
  %542 = icmp eq i64 %533, %531
  %543 = fneg float %541
  br i1 %542, label %549, label %544

544:                                              ; preds = %532
  %545 = getelementptr float, ptr %347, i64 %533
  %546 = load float, ptr %545, align 4, !tbaa !34
  %547 = fmul float %546, %543
  %548 = fmul float %540, %546
  store float %548, ptr %545, align 4, !tbaa !34
  br label %549

549:                                              ; preds = %532, %544
  %550 = phi float [ %547, %544 ], [ %534, %532 ]
  br label %551

551:                                              ; preds = %549, %551
  %552 = phi i64 [ 0, %549 ], [ %561, %551 ]
  %553 = getelementptr inbounds [4 x float], ptr %2, i64 %552, i64 %533
  %554 = load float, ptr %553, align 4, !tbaa !34
  %555 = getelementptr inbounds [4 x float], ptr %2, i64 %552, i64 %527
  %556 = load float, ptr %555, align 4, !tbaa !34
  %557 = fmul float %541, %556
  %558 = tail call float @llvm.fmuladd.f32(float %540, float %554, float %557)
  %559 = fmul float %540, %556
  %560 = tail call float @llvm.fmuladd.f32(float %543, float %554, float %559)
  store float %560, ptr %555, align 4, !tbaa !34
  store float %558, ptr %553, align 4, !tbaa !34
  %561 = add nuw nsw i64 %552, 1
  %562 = icmp eq i64 %561, 4
  br i1 %562, label %563, label %551, !llvm.loop !126

563:                                              ; preds = %551
  %564 = add nsw i64 %533, -1
  %565 = icmp sgt i64 %564, %530
  br i1 %565, label %532, label %792, !llvm.loop !127

566:                                              ; preds = %517
  %567 = sext i32 %475 to i64
  %568 = getelementptr inbounds float, ptr %7, i64 %567
  %569 = load float, ptr %568, align 4, !tbaa !34
  store float 0.000000e+00, ptr %568, align 4, !tbaa !34
  %570 = icmp slt i32 %520, %405
  br i1 %570, label %571, label %792

571:                                              ; preds = %566
  %572 = sext i32 %520 to i64
  br label %573

573:                                              ; preds = %571, %599
  %574 = phi i64 [ %572, %571 ], [ %601, %599 ]
  %575 = phi float [ %569, %571 ], [ %600, %599 ]
  %576 = getelementptr inbounds float, ptr %1, i64 %574
  %577 = load float, ptr %576, align 4, !tbaa !34
  %578 = tail call float @hypotf(float noundef %577, float noundef %575) #23
  %579 = fdiv float 1.000000e+00, %578
  %580 = load float, ptr %576, align 4, !tbaa !34
  %581 = fmul float %580, %579
  %582 = fmul float %575, %579
  store float %578, ptr %576, align 4, !tbaa !34
  %583 = fneg float %582
  %584 = getelementptr inbounds float, ptr %7, i64 %574
  %585 = load float, ptr %584, align 4, !tbaa !34
  %586 = fmul float %581, %585
  store float %586, ptr %584, align 4, !tbaa !34
  br label %587

587:                                              ; preds = %573, %587
  %588 = phi i64 [ 0, %573 ], [ %597, %587 ]
  %589 = getelementptr inbounds [4 x float], ptr %0, i64 %588, i64 %574
  %590 = load float, ptr %589, align 4, !tbaa !34
  %591 = getelementptr inbounds [4 x float], ptr %0, i64 %588, i64 %567
  %592 = load float, ptr %591, align 4, !tbaa !34
  %593 = fmul float %582, %592
  %594 = tail call float @llvm.fmuladd.f32(float %581, float %590, float %593)
  %595 = fmul float %581, %592
  %596 = tail call float @llvm.fmuladd.f32(float %583, float %590, float %595)
  store float %596, ptr %591, align 4, !tbaa !34
  store float %594, ptr %589, align 4, !tbaa !34
  %597 = add nuw nsw i64 %588, 1
  %598 = icmp eq i64 %597, 4
  br i1 %598, label %599, label %587, !llvm.loop !128

599:                                              ; preds = %587
  %600 = fmul float %585, %583
  %601 = add nsw i64 %574, 1
  %602 = trunc i64 %601 to i32
  %603 = icmp eq i32 %405, %602
  br i1 %603, label %792, label %573, !llvm.loop !129

604:                                              ; preds = %477
  %605 = tail call float @llvm.fmuladd.f32(float %511, float %511, float %513)
  %606 = tail call float @llvm.sqrt.f32(float %605)
  %607 = fcmp olt float %511, 0.000000e+00
  %608 = fneg float %606
  %609 = select i1 %607, float %608, float %606
  %610 = fadd float %511, %609
  %611 = fdiv float %513, %610
  br label %612

612:                                              ; preds = %477, %604
  %613 = phi float [ %611, %604 ], [ 0.000000e+00, %477 ]
  %614 = fadd float %505, %502
  %615 = fsub float %505, %502
  %616 = tail call float @llvm.fmuladd.f32(float %614, float %615, float %613)
  %617 = icmp slt i32 %478, %434
  br i1 %617, label %618, label %749

618:                                              ; preds = %612
  %619 = fmul float %505, %506
  %620 = sext i32 %432 to i64
  %621 = add nsw i64 %620, 1
  %622 = sext i32 %434 to i64
  br label %623

623:                                              ; preds = %618, %747
  %624 = phi i64 [ %621, %618 ], [ %645, %747 ]
  %625 = phi float [ %619, %618 ], [ %704, %747 ]
  %626 = phi float [ %616, %618 ], [ %698, %747 ]
  %627 = tail call float @hypotf(float noundef %626, float noundef %625) #23
  %628 = fcmp oeq float %627, 0.000000e+00
  %629 = fdiv float %626, %627
  %630 = select i1 %628, float 0.000000e+00, float %629
  %631 = fdiv float %625, %627
  %632 = select i1 %628, float 0.000000e+00, float %631
  %633 = icmp eq i64 %624, %492
  br i1 %633, label %636, label %634

634:                                              ; preds = %623
  %635 = getelementptr float, ptr %347, i64 %624
  store float %627, ptr %635, align 4, !tbaa !34
  br label %636

636:                                              ; preds = %634, %623
  %637 = getelementptr inbounds float, ptr %1, i64 %624
  %638 = load float, ptr %637, align 4, !tbaa !34
  %639 = getelementptr inbounds float, ptr %7, i64 %624
  %640 = load float, ptr %639, align 4, !tbaa !34
  %641 = fmul float %632, %640
  %642 = fneg float %632
  %643 = fmul float %638, %642
  %644 = tail call float @llvm.fmuladd.f32(float %630, float %640, float %643)
  store float %644, ptr %639, align 4, !tbaa !34
  %645 = add nsw i64 %624, 1
  %646 = getelementptr inbounds float, ptr %1, i64 %645
  %647 = load float, ptr %646, align 4, !tbaa !34
  %648 = fmul float %630, %647
  store float %648, ptr %646, align 4, !tbaa !34
  %649 = insertelement <4 x float> poison, float %632, i64 0
  %650 = shufflevector <4 x float> %649, <4 x float> poison, <4 x i32> zeroinitializer
  %651 = insertelement <4 x float> poison, float %630, i64 0
  %652 = shufflevector <4 x float> %651, <4 x float> poison, <4 x i32> zeroinitializer
  %653 = insertelement <4 x float> poison, float %642, i64 0
  %654 = shufflevector <4 x float> %653, <4 x float> poison, <4 x i32> zeroinitializer
  %655 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 %624
  %656 = getelementptr inbounds [4 x float], ptr %2, i64 1, i64 %624
  %657 = getelementptr inbounds [4 x float], ptr %2, i64 2, i64 %624
  %658 = getelementptr inbounds [4 x float], ptr %2, i64 3, i64 %624
  %659 = load float, ptr %655, align 4, !tbaa !34
  %660 = load float, ptr %656, align 4, !tbaa !34
  %661 = load float, ptr %657, align 4, !tbaa !34
  %662 = load float, ptr %658, align 4, !tbaa !34
  %663 = insertelement <4 x float> poison, float %659, i64 0
  %664 = insertelement <4 x float> %663, float %660, i64 1
  %665 = insertelement <4 x float> %664, float %661, i64 2
  %666 = insertelement <4 x float> %665, float %662, i64 3
  %667 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 %645
  %668 = getelementptr inbounds [4 x float], ptr %2, i64 1, i64 %645
  %669 = getelementptr inbounds [4 x float], ptr %2, i64 2, i64 %645
  %670 = getelementptr inbounds [4 x float], ptr %2, i64 3, i64 %645
  %671 = load float, ptr %667, align 4, !tbaa !34
  %672 = load float, ptr %668, align 4, !tbaa !34
  %673 = load float, ptr %669, align 4, !tbaa !34
  %674 = load float, ptr %670, align 4, !tbaa !34
  %675 = insertelement <4 x float> poison, float %671, i64 0
  %676 = insertelement <4 x float> %675, float %672, i64 1
  %677 = insertelement <4 x float> %676, float %673, i64 2
  %678 = insertelement <4 x float> %677, float %674, i64 3
  %679 = fmul <4 x float> %650, %678
  %680 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %652, <4 x float> %666, <4 x float> %679)
  %681 = fmul <4 x float> %652, %678
  %682 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %654, <4 x float> %666, <4 x float> %681)
  %683 = extractelement <4 x float> %682, i64 0
  store float %683, ptr %667, align 4, !tbaa !34
  %684 = extractelement <4 x float> %680, i64 0
  store float %684, ptr %655, align 4, !tbaa !34
  %685 = shufflevector <4 x float> %680, <4 x float> %682, <2 x i32> <i32 1, i32 5>
  store <2 x float> %685, ptr %656, align 4, !tbaa !34
  %686 = shufflevector <4 x float> %680, <4 x float> %682, <2 x i32> <i32 2, i32 6>
  store <2 x float> %686, ptr %657, align 4, !tbaa !34
  %687 = shufflevector <4 x float> %680, <4 x float> %682, <2 x i32> <i32 3, i32 7>
  store <2 x float> %687, ptr %658, align 4, !tbaa !34
  %688 = tail call float @llvm.fmuladd.f32(float %630, float %638, float %641)
  %689 = fmul float %632, %647
  %690 = tail call float @hypotf(float noundef %688, float noundef %689) #23
  %691 = fcmp oeq float %690, 0.000000e+00
  %692 = fdiv float %688, %690
  %693 = select i1 %691, float 0.000000e+00, float %692
  %694 = fdiv float %689, %690
  %695 = select i1 %691, float 0.000000e+00, float %694
  store float %690, ptr %637, align 4, !tbaa !34
  %696 = load float, ptr %646, align 4, !tbaa !34
  %697 = fmul float %695, %696
  %698 = tail call float @llvm.fmuladd.f32(float %693, float %644, float %697)
  %699 = fneg float %695
  %700 = fmul float %693, %696
  %701 = tail call float @llvm.fmuladd.f32(float %699, float %644, float %700)
  store float %701, ptr %646, align 4, !tbaa !34
  %702 = getelementptr inbounds float, ptr %7, i64 %645
  %703 = load float, ptr %702, align 4, !tbaa !34
  %704 = fmul float %695, %703
  %705 = fmul float %693, %703
  store float %705, ptr %702, align 4, !tbaa !34
  %706 = icmp slt i64 %624, 3
  br i1 %706, label %707, label %747

707:                                              ; preds = %636
  %708 = insertelement <4 x float> poison, float %695, i64 0
  %709 = shufflevector <4 x float> %708, <4 x float> poison, <4 x i32> zeroinitializer
  %710 = insertelement <4 x float> poison, float %693, i64 0
  %711 = shufflevector <4 x float> %710, <4 x float> poison, <4 x i32> zeroinitializer
  %712 = insertelement <4 x float> poison, float %699, i64 0
  %713 = shufflevector <4 x float> %712, <4 x float> poison, <4 x i32> zeroinitializer
  %714 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 %624
  %715 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 %624
  %716 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 %624
  %717 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 %624
  %718 = load float, ptr %714, align 4, !tbaa !34
  %719 = load float, ptr %715, align 4, !tbaa !34
  %720 = load float, ptr %716, align 4, !tbaa !34
  %721 = load float, ptr %717, align 4, !tbaa !34
  %722 = insertelement <4 x float> poison, float %718, i64 0
  %723 = insertelement <4 x float> %722, float %719, i64 1
  %724 = insertelement <4 x float> %723, float %720, i64 2
  %725 = insertelement <4 x float> %724, float %721, i64 3
  %726 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 %645
  %727 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 %645
  %728 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 %645
  %729 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 %645
  %730 = load float, ptr %726, align 4, !tbaa !34
  %731 = load float, ptr %727, align 4, !tbaa !34
  %732 = load float, ptr %728, align 4, !tbaa !34
  %733 = load float, ptr %729, align 4, !tbaa !34
  %734 = insertelement <4 x float> poison, float %730, i64 0
  %735 = insertelement <4 x float> %734, float %731, i64 1
  %736 = insertelement <4 x float> %735, float %732, i64 2
  %737 = insertelement <4 x float> %736, float %733, i64 3
  %738 = fmul <4 x float> %709, %737
  %739 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %711, <4 x float> %725, <4 x float> %738)
  %740 = fmul <4 x float> %711, %737
  %741 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %713, <4 x float> %725, <4 x float> %740)
  %742 = extractelement <4 x float> %741, i64 0
  store float %742, ptr %726, align 4, !tbaa !34
  %743 = extractelement <4 x float> %739, i64 0
  store float %743, ptr %714, align 4, !tbaa !34
  %744 = shufflevector <4 x float> %739, <4 x float> %741, <2 x i32> <i32 1, i32 5>
  store <2 x float> %744, ptr %715, align 4, !tbaa !34
  %745 = shufflevector <4 x float> %739, <4 x float> %741, <2 x i32> <i32 2, i32 6>
  store <2 x float> %745, ptr %716, align 4, !tbaa !34
  %746 = shufflevector <4 x float> %739, <4 x float> %741, <2 x i32> <i32 3, i32 7>
  store <2 x float> %746, ptr %717, align 4, !tbaa !34
  br label %747

747:                                              ; preds = %707, %636
  %748 = icmp eq i64 %645, %622
  br i1 %748, label %749, label %623, !llvm.loop !130

749:                                              ; preds = %747, %612
  %750 = phi float [ %616, %612 ], [ %698, %747 ]
  store float %750, ptr %488, align 4, !tbaa !34
  br label %792

751:                                              ; preds = %435
  %752 = fcmp olt float %438, 0.000000e+00
  %753 = fneg float %438
  %754 = select i1 %752, float %753, float 0.000000e+00
  store float %754, ptr %437, align 4, !tbaa !34
  br label %755

755:                                              ; preds = %751, %755
  %756 = phi i64 [ 0, %751 ], [ %760, %755 ]
  %757 = getelementptr inbounds [4 x float], ptr %2, i64 %756, i64 %436
  %758 = load float, ptr %757, align 4, !tbaa !34
  %759 = fneg float %758
  store float %759, ptr %757, align 4, !tbaa !34
  %760 = add nuw nsw i64 %756, 1
  %761 = icmp eq i64 %760, %348
  br i1 %761, label %762, label %755, !llvm.loop !131

762:                                              ; preds = %755, %435
  %763 = icmp sgt i32 %405, %234
  br i1 %763, label %790, label %764

764:                                              ; preds = %762, %788
  %765 = phi i64 [ %768, %788 ], [ %436, %762 ]
  %766 = getelementptr inbounds float, ptr %1, i64 %765
  %767 = load float, ptr %766, align 4, !tbaa !34
  %768 = add nsw i64 %765, 1
  %769 = getelementptr inbounds float, ptr %1, i64 %768
  %770 = load float, ptr %769, align 4, !tbaa !34
  %771 = fcmp ult float %767, %770
  br i1 %771, label %772, label %790

772:                                              ; preds = %764
  store float %770, ptr %766, align 4, !tbaa !34
  store float %767, ptr %769, align 4, !tbaa !34
  %773 = icmp slt i64 %765, 3
  br i1 %773, label %774, label %788

774:                                              ; preds = %772, %774
  %775 = phi i64 [ %779, %774 ], [ 0, %772 ]
  %776 = getelementptr inbounds [4 x float], ptr %2, i64 %775, i64 %765
  %777 = load <2 x float>, ptr %776, align 4, !tbaa !34
  %778 = shufflevector <2 x float> %777, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %778, ptr %776, align 4, !tbaa !34
  %779 = add nuw nsw i64 %775, 1
  %780 = icmp eq i64 %779, 4
  br i1 %780, label %781, label %774, !llvm.loop !132

781:                                              ; preds = %774, %781
  %782 = phi i64 [ %786, %781 ], [ 0, %774 ]
  %783 = getelementptr inbounds [4 x float], ptr %0, i64 %782, i64 %765
  %784 = load <2 x float>, ptr %783, align 4, !tbaa !34
  %785 = shufflevector <2 x float> %784, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %785, ptr %783, align 4, !tbaa !34
  %786 = add nuw nsw i64 %782, 1
  %787 = icmp eq i64 %786, 4
  br i1 %787, label %788, label %781, !llvm.loop !133

788:                                              ; preds = %781, %772
  %789 = icmp eq i64 %768, %349
  br i1 %789, label %790, label %764

790:                                              ; preds = %788, %764, %762
  %791 = add nsw i32 %405, -1
  br label %792

792:                                              ; preds = %599, %563, %566, %521, %749, %790
  %793 = phi i32 [ %791, %790 ], [ %405, %749 ], [ %405, %521 ], [ %405, %566 ], [ %405, %563 ], [ %405, %599 ]
  %794 = icmp slt i32 %793, 1
  %795 = icmp eq i32 %406, 0
  %796 = select i1 %794, i1 true, i1 %795
  br i1 %796, label %797, label %403

797:                                              ; preds = %792
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #10 !PGOFuncName !134 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #10 !PGOFuncName !135 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v4(ptr nocapture noundef writeonly %0) unnamed_addr #0 !PGOFuncName !136 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind optsize
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #10 !PGOFuncName !137 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #14

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pseudoinverse_m4_m4(ptr nocapture noundef %0, ptr nocapture noundef %1, float noundef %2) local_unnamed_addr #12 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #21
  tail call void @transpose_m4(ptr noundef %1) #22
  call void @svd_m4(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef %1) #22
  call void @transpose_m4(ptr noundef nonnull %7) #22
  call void @transpose_m4(ptr noundef nonnull %4) #22
  call void @zero_m4(ptr noundef nonnull %6) #22
  %8 = insertelement <4 x float> poison, float %2, i64 0
  %9 = shufflevector <4 x float> %8, <4 x float> poison, <4 x i32> zeroinitializer
  %10 = load <4 x float>, ptr %5, align 16, !tbaa !34
  %11 = fcmp olt <4 x float> %10, %9
  %12 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %10
  %13 = select <4 x i1> %11, <4 x float> zeroinitializer, <4 x float> %12
  %14 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 1, i64 1
  %15 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 2, i64 2
  %16 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3, i64 3
  %17 = extractelement <4 x float> %13, i64 0
  store float %17, ptr %6, align 16, !tbaa !34
  %18 = extractelement <4 x float> %13, i64 1
  store float %18, ptr %14, align 4, !tbaa !34
  %19 = extractelement <4 x float> %13, i64 2
  store float %19, ptr %15, align 8, !tbaa !34
  %20 = extractelement <4 x float> %13, i64 3
  store float %20, ptr %16, align 4, !tbaa !34
  call void @transpose_m4(ptr noundef nonnull %4) #22
  call void @_va_mul_m4_series_4(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pseudoinverse_m3_m3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) local_unnamed_addr #12 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = tail call zeroext i8 @invert_m3_m3(ptr noundef %0, ptr noundef %1) #22, !range !64
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #21
  call void @copy_m4_m3(ptr noundef nonnull %4, ptr noundef %1) #22
  call void @pseudoinverse_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %4, float noundef %2) #22
  call void @copy_m3_m4(ptr noundef %0, ptr noundef nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #21
  br label %9

9:                                                ; preds = %8, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @has_zero_axis_m4(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = tail call fastcc float @len_squared_v3(ptr noundef %0) #22
  %3 = fcmp olt float %2, 0x3E80000000000000
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %6 = tail call fastcc float @len_squared_v3(ptr noundef nonnull %5) #22
  %7 = fcmp olt float %6, 0x3E80000000000000
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %10 = tail call fastcc float @len_squared_v3(ptr noundef nonnull %9) #22
  %11 = fcmp olt float %10, 0x3E80000000000000
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %8, %4, %1
  %14 = phi i8 [ 1, %4 ], [ 1, %1 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @invert_m4_m4_safe(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = tail call zeroext i8 @invert_m4_m4(ptr noundef %0, ptr noundef %1) #22, !range !64
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #21
  call void @copy_m4_m4(ptr noundef nonnull %3, ptr noundef %1) #22
  %7 = load float, ptr %3, align 16, !tbaa !34
  %8 = fadd float %7, 0x3E45798EE0000000
  store float %8, ptr %3, align 16, !tbaa !34
  %9 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fadd float %10, 0x3E45798EE0000000
  store float %11, ptr %9, align 4, !tbaa !34
  %12 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 2, i64 2
  %13 = load float, ptr %12, align 8, !tbaa !34
  %14 = fadd float %13, 0x3E45798EE0000000
  store float %14, ptr %12, align 8, !tbaa !34
  %15 = call zeroext i8 @invert_m4_m4(ptr noundef %0, ptr noundef nonnull %3) #22, !range !64
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  tail call void @unit_m4(ptr noundef %0) #22
  br label %18

18:                                               ; preds = %17, %6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #21
  br label %19

19:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @BLI_space_transform_from_matrices(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  %4 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #21
  %5 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef %2) #22, !range !64
  call void @mul_m4_m4m4(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %1) #22
  %6 = getelementptr inbounds %struct.SpaceTransform, ptr %0, i64 0, i32 1
  %7 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %6, ptr noundef %0) #22, !range !64
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_space_transform_apply(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  tail call void @mul_v3_m4v3(ptr noundef %1, ptr noundef %0, ptr noundef %1) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_space_transform_invert(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.SpaceTransform, ptr %0, i64 0, i32 1
  tail call void @mul_v3_m4v3(ptr noundef %1, ptr noundef nonnull %3, ptr noundef %1) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @BLI_space_transform_apply_normal(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #8 {
  tail call void @mul_mat3_m4_v3(ptr noundef %0, ptr noundef %1) #22
  %3 = tail call fastcc float @normalize_v3(ptr noundef %1) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @BLI_space_transform_invert_normal(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.SpaceTransform, ptr %0, i64 0, i32 1
  tail call void @mul_mat3_m4_v3(ptr noundef nonnull %3, ptr noundef %1) #22
  %4 = tail call fastcc float @normalize_v3(ptr noundef %1) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #2 !PGOFuncName !138 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #0 !PGOFuncName !139 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !34
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !34
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #20

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind }
attributes #22 = { optsize }
attributes #23 = { nounwind optsize }

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
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"double", !36, i64 0}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = distinct !{!42, !41}
!43 = distinct !{!43, !41}
!44 = distinct !{!44, !41}
!45 = !{!"math_matrix.c:copy_v2_v2"}
!46 = !{!"math_matrix.c:mul_project_m4_v3_zfac"}
!47 = !{!"math_matrix.c:copy_v3_v3"}
!48 = distinct !{!48, !41}
!49 = distinct !{!49, !41}
!50 = distinct !{!50, !41}
!51 = distinct !{!51, !41}
!52 = distinct !{!52, !41}
!53 = distinct !{!53, !41}
!54 = distinct !{!54, !41}
!55 = distinct !{!55, !41}
!56 = distinct !{!56, !41}
!57 = distinct !{!57, !41}
!58 = distinct !{!58, !41}
!59 = distinct !{!59, !41}
!60 = distinct !{!60, !41}
!61 = distinct !{!61, !41}
!62 = distinct !{!62, !41}
!63 = distinct !{!63, !41}
!64 = !{i8 0, i8 2}
!65 = distinct !{!65, !41}
!66 = distinct !{!66, !41}
!67 = distinct !{!67, !41}
!68 = distinct !{!68, !41}
!69 = distinct !{!69, !41}
!70 = distinct !{!70, !41}
!71 = distinct !{!71, !41}
!72 = distinct !{!72, !41}
!73 = distinct !{!73, !41}
!74 = distinct !{!74, !41}
!75 = distinct !{!75, !41}
!76 = !{!"math_matrix.c:compare_v4v4"}
!77 = !{!"math_matrix.c:normalize_v3"}
!78 = !{!"math_matrix.c:dot_v3v3"}
!79 = !{!"math_matrix.c:cross_v3_v3v3"}
!80 = !{!"math_matrix.c:mul_v3_fl"}
!81 = distinct !{!81, !41}
!82 = distinct !{!82, !41}
!83 = distinct !{!83, !41}
!84 = distinct !{!84, !41}
!85 = !{!"math_matrix.c:dot_v4v4"}
!86 = distinct !{!86, !41}
!87 = distinct !{!87, !41}
!88 = !{!"math_matrix.c:len_squared_v3"}
!89 = !{!"math_matrix.c:normalize_v3_v3"}
!90 = !{!"math_matrix.c:len_v3"}
!91 = !{!"math_matrix.c:copy_v3_fl"}
!92 = !{!"math_matrix.c:negate_v3"}
!93 = !{!"math_matrix.c:is_zero_v3"}
!94 = !{!"math_matrix.c:is_zero_v4"}
!95 = !{i32 2, i32 6}
!96 = !{i32 0, i32 6}
!97 = distinct !{!97, !41}
!98 = distinct !{!98, !41}
!99 = distinct !{!99, !41}
!100 = distinct !{!100, !41}
!101 = distinct !{!101, !41}
!102 = distinct !{!102, !41}
!103 = distinct !{!103, !41}
!104 = distinct !{!104, !41}
!105 = distinct !{!105, !41}
!106 = distinct !{!106, !41}
!107 = distinct !{!107, !41}
!108 = distinct !{!108, !41}
!109 = distinct !{!109, !41}
!110 = distinct !{!110, !41}
!111 = distinct !{!111, !41}
!112 = distinct !{!112, !41}
!113 = distinct !{!113, !41}
!114 = distinct !{!114, !41}
!115 = distinct !{!115, !41}
!116 = distinct !{!116, !41}
!117 = distinct !{!117, !41}
!118 = distinct !{!118, !41}
!119 = distinct !{!119, !41}
!120 = distinct !{!120, !41}
!121 = distinct !{!121, !41}
!122 = distinct !{!122, !41}
!123 = distinct !{!123, !41}
!124 = distinct !{!124, !41}
!125 = distinct !{!125, !41}
!126 = distinct !{!126, !41}
!127 = distinct !{!127, !41}
!128 = distinct !{!128, !41}
!129 = distinct !{!129, !41}
!130 = distinct !{!130, !41}
!131 = distinct !{!131, !41}
!132 = distinct !{!132, !41}
!133 = distinct !{!133, !41}
!134 = !{!"math_matrix.c:min_ii"}
!135 = !{!"math_matrix.c:max_ii"}
!136 = !{!"math_matrix.c:zero_v4"}
!137 = !{!"math_matrix.c:max_ff"}
!138 = !{!"math_matrix.c:mul_v3_v3fl"}
!139 = !{!"math_matrix.c:zero_v3"}
