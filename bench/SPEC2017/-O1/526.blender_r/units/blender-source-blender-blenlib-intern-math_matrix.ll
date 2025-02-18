; ModuleID = 'blender/source/blender/blenlib/intern/math_matrix.c'
source_filename = "blender/source/blender/blenlib/intern/math_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SpaceTransform = type { [4 x [4 x float]], [4 x [4 x float]] }

@.str.1 = private unnamed_addr constant [10 x i8] c"%f %f %f\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"%f %f %f %f\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @zero_m2(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @zero_m3(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %0, i8 0, i64 36, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @zero_m4(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @unit_m2(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds [2 x float], ptr %0, i64 1
  %3 = getelementptr inbounds [2 x float], ptr %0, i64 1, i64 1
  store float 1.000000e+00, ptr %3, align 4, !tbaa !34
  store float 1.000000e+00, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds [2 x float], ptr %0, i64 0, i64 1
  store float 0.000000e+00, ptr %4, align 4, !tbaa !34
  store float 0.000000e+00, ptr %2, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @unit_m3(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %3 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float 1.000000e+00, ptr %3, align 4, !tbaa !34
  %4 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %5 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float 1.000000e+00, ptr %5, align 4, !tbaa !34
  store float 1.000000e+00, ptr %0, align 4, !tbaa !34
  %6 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float 0.000000e+00, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float 0.000000e+00, ptr %7, align 4, !tbaa !34
  %8 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float 0.000000e+00, ptr %8, align 4, !tbaa !34
  store float 0.000000e+00, ptr %4, align 4, !tbaa !34
  %9 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float 0.000000e+00, ptr %9, align 4, !tbaa !34
  store float 0.000000e+00, ptr %2, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @copy_m2_m2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @copy_m3_m3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %0, ptr noundef nonnull align 4 dereferenceable(36) %1, i64 36, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @copy_m4_m4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 64, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @copy_m3_m3d(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = load double, ptr %1, align 8, !tbaa !38
  %4 = fptrunc double %3 to float
  store float %4, ptr %0, align 4, !tbaa !34
  %5 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !38
  %7 = fptrunc double %6 to float
  %8 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float %7, ptr %8, align 4, !tbaa !34
  %9 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %10 = load double, ptr %9, align 8, !tbaa !38
  %11 = fptrunc double %10 to float
  %12 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %11, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds [3 x double], ptr %1, i64 1
  %14 = load double, ptr %13, align 8, !tbaa !38
  %15 = fptrunc double %14 to float
  %16 = getelementptr inbounds [3 x float], ptr %0, i64 1
  store float %15, ptr %16, align 4, !tbaa !34
  %17 = getelementptr inbounds [3 x double], ptr %1, i64 1, i64 1
  %18 = load double, ptr %17, align 8, !tbaa !38
  %19 = fptrunc double %18 to float
  %20 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %19, ptr %20, align 4, !tbaa !34
  %21 = getelementptr inbounds [3 x double], ptr %1, i64 1, i64 2
  %22 = load double, ptr %21, align 8, !tbaa !38
  %23 = fptrunc double %22 to float
  %24 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float %23, ptr %24, align 4, !tbaa !34
  %25 = getelementptr inbounds [3 x double], ptr %1, i64 2
  %26 = load double, ptr %25, align 8, !tbaa !38
  %27 = fptrunc double %26 to float
  %28 = getelementptr inbounds [3 x float], ptr %0, i64 2
  store float %27, ptr %28, align 4, !tbaa !34
  %29 = getelementptr inbounds [3 x double], ptr %1, i64 2, i64 1
  %30 = load double, ptr %29, align 8, !tbaa !38
  %31 = fptrunc double %30 to float
  %32 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float %31, ptr %32, align 4, !tbaa !34
  %33 = getelementptr inbounds [3 x double], ptr %1, i64 2, i64 2
  %34 = load double, ptr %33, align 8, !tbaa !38
  %35 = fptrunc double %34 to float
  %36 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %35, ptr %36, align 4, !tbaa !34
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
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
  br i1 %15, label %16, label %3, !llvm.loop !43

16:                                               ; preds = %13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
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
  br i1 %12, label %13, label %5, !llvm.loop !44

13:                                               ; preds = %5
  %14 = add nuw nsw i64 %4, 1
  %15 = icmp eq i64 %14, 4
  br i1 %15, label %16, label %3, !llvm.loop !45

16:                                               ; preds = %13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_m4_m4m4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = load float, ptr %2, align 4
  %5 = getelementptr inbounds i8, ptr %2, i64 4
  %6 = load float, ptr %5, align 4
  %7 = getelementptr inbounds i8, ptr %2, i64 8
  %8 = load float, ptr %7, align 4
  %9 = getelementptr inbounds i8, ptr %2, i64 12
  %10 = load float, ptr %9, align 4
  %11 = getelementptr inbounds i8, ptr %2, i64 16
  %12 = load float, ptr %11, align 4
  %13 = getelementptr inbounds i8, ptr %2, i64 20
  %14 = load float, ptr %13, align 4
  %15 = getelementptr inbounds i8, ptr %2, i64 24
  %16 = load float, ptr %15, align 4
  %17 = getelementptr inbounds i8, ptr %2, i64 28
  %18 = load float, ptr %17, align 4
  %19 = getelementptr inbounds i8, ptr %2, i64 32
  %20 = load float, ptr %19, align 4
  %21 = getelementptr inbounds i8, ptr %2, i64 36
  %22 = load float, ptr %21, align 4
  %23 = getelementptr inbounds i8, ptr %2, i64 40
  %24 = load float, ptr %23, align 4
  %25 = getelementptr inbounds i8, ptr %2, i64 44
  %26 = load float, ptr %25, align 4
  %27 = getelementptr inbounds i8, ptr %2, i64 48
  %28 = load float, ptr %27, align 4
  %29 = getelementptr inbounds i8, ptr %2, i64 52
  %30 = load float, ptr %29, align 4
  %31 = getelementptr inbounds i8, ptr %2, i64 56
  %32 = load float, ptr %31, align 4
  %33 = getelementptr inbounds i8, ptr %2, i64 60
  %34 = load float, ptr %33, align 4
  %35 = load float, ptr %1, align 4
  %36 = getelementptr inbounds i8, ptr %1, i64 4
  %37 = load float, ptr %36, align 4
  %38 = getelementptr inbounds i8, ptr %1, i64 8
  %39 = load float, ptr %38, align 4
  %40 = getelementptr inbounds i8, ptr %1, i64 12
  %41 = load float, ptr %40, align 4
  %42 = getelementptr inbounds i8, ptr %1, i64 16
  %43 = load float, ptr %42, align 4
  %44 = getelementptr inbounds i8, ptr %1, i64 20
  %45 = load float, ptr %44, align 4
  %46 = getelementptr inbounds i8, ptr %1, i64 24
  %47 = load float, ptr %46, align 4
  %48 = getelementptr inbounds i8, ptr %1, i64 28
  %49 = load float, ptr %48, align 4
  %50 = getelementptr inbounds i8, ptr %1, i64 32
  %51 = load float, ptr %50, align 4
  %52 = getelementptr inbounds i8, ptr %1, i64 36
  %53 = load float, ptr %52, align 4
  %54 = getelementptr inbounds i8, ptr %1, i64 40
  %55 = load float, ptr %54, align 4
  %56 = getelementptr inbounds i8, ptr %1, i64 44
  %57 = load float, ptr %56, align 4
  %58 = getelementptr inbounds i8, ptr %1, i64 48
  %59 = load float, ptr %58, align 4
  %60 = getelementptr inbounds i8, ptr %1, i64 52
  %61 = load float, ptr %60, align 4
  %62 = getelementptr inbounds i8, ptr %1, i64 56
  %63 = load float, ptr %62, align 4
  %64 = getelementptr inbounds i8, ptr %1, i64 60
  %65 = load float, ptr %64, align 4
  %66 = fmul float %6, %43
  %67 = tail call float @llvm.fmuladd.f32(float %4, float %35, float %66)
  %68 = tail call float @llvm.fmuladd.f32(float %8, float %51, float %67)
  %69 = tail call float @llvm.fmuladd.f32(float %10, float %59, float %68)
  store float %69, ptr %0, align 4, !tbaa !34
  %70 = fmul float %6, %45
  %71 = tail call float @llvm.fmuladd.f32(float %4, float %37, float %70)
  %72 = tail call float @llvm.fmuladd.f32(float %8, float %53, float %71)
  %73 = tail call float @llvm.fmuladd.f32(float %10, float %61, float %72)
  %74 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  store float %73, ptr %74, align 4, !tbaa !34
  %75 = fmul float %6, %47
  %76 = tail call float @llvm.fmuladd.f32(float %4, float %39, float %75)
  %77 = tail call float @llvm.fmuladd.f32(float %8, float %55, float %76)
  %78 = tail call float @llvm.fmuladd.f32(float %10, float %63, float %77)
  %79 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  store float %78, ptr %79, align 4, !tbaa !34
  %80 = fmul float %6, %49
  %81 = tail call float @llvm.fmuladd.f32(float %4, float %41, float %80)
  %82 = tail call float @llvm.fmuladd.f32(float %8, float %57, float %81)
  %83 = tail call float @llvm.fmuladd.f32(float %10, float %65, float %82)
  %84 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 3
  store float %83, ptr %84, align 4, !tbaa !34
  %85 = fmul float %14, %43
  %86 = tail call float @llvm.fmuladd.f32(float %12, float %35, float %85)
  %87 = tail call float @llvm.fmuladd.f32(float %16, float %51, float %86)
  %88 = tail call float @llvm.fmuladd.f32(float %18, float %59, float %87)
  %89 = getelementptr inbounds [4 x float], ptr %0, i64 1
  store float %88, ptr %89, align 4, !tbaa !34
  %90 = fmul float %14, %45
  %91 = tail call float @llvm.fmuladd.f32(float %12, float %37, float %90)
  %92 = tail call float @llvm.fmuladd.f32(float %16, float %53, float %91)
  %93 = tail call float @llvm.fmuladd.f32(float %18, float %61, float %92)
  %94 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  store float %93, ptr %94, align 4, !tbaa !34
  %95 = fmul float %14, %47
  %96 = tail call float @llvm.fmuladd.f32(float %12, float %39, float %95)
  %97 = tail call float @llvm.fmuladd.f32(float %16, float %55, float %96)
  %98 = tail call float @llvm.fmuladd.f32(float %18, float %63, float %97)
  %99 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  store float %98, ptr %99, align 4, !tbaa !34
  %100 = fmul float %14, %49
  %101 = tail call float @llvm.fmuladd.f32(float %12, float %41, float %100)
  %102 = tail call float @llvm.fmuladd.f32(float %16, float %57, float %101)
  %103 = tail call float @llvm.fmuladd.f32(float %18, float %65, float %102)
  %104 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 3
  store float %103, ptr %104, align 4, !tbaa !34
  %105 = fmul float %22, %43
  %106 = tail call float @llvm.fmuladd.f32(float %20, float %35, float %105)
  %107 = tail call float @llvm.fmuladd.f32(float %24, float %51, float %106)
  %108 = tail call float @llvm.fmuladd.f32(float %26, float %59, float %107)
  %109 = getelementptr inbounds [4 x float], ptr %0, i64 2
  store float %108, ptr %109, align 4, !tbaa !34
  %110 = fmul float %22, %45
  %111 = tail call float @llvm.fmuladd.f32(float %20, float %37, float %110)
  %112 = tail call float @llvm.fmuladd.f32(float %24, float %53, float %111)
  %113 = tail call float @llvm.fmuladd.f32(float %26, float %61, float %112)
  %114 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  store float %113, ptr %114, align 4, !tbaa !34
  %115 = fmul float %22, %47
  %116 = tail call float @llvm.fmuladd.f32(float %20, float %39, float %115)
  %117 = tail call float @llvm.fmuladd.f32(float %24, float %55, float %116)
  %118 = tail call float @llvm.fmuladd.f32(float %26, float %63, float %117)
  %119 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  store float %118, ptr %119, align 4, !tbaa !34
  %120 = fmul float %22, %49
  %121 = tail call float @llvm.fmuladd.f32(float %20, float %41, float %120)
  %122 = tail call float @llvm.fmuladd.f32(float %24, float %57, float %121)
  %123 = tail call float @llvm.fmuladd.f32(float %26, float %65, float %122)
  %124 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  store float %123, ptr %124, align 4, !tbaa !34
  %125 = fmul float %30, %43
  %126 = tail call float @llvm.fmuladd.f32(float %28, float %35, float %125)
  %127 = tail call float @llvm.fmuladd.f32(float %32, float %51, float %126)
  %128 = tail call float @llvm.fmuladd.f32(float %34, float %59, float %127)
  %129 = getelementptr inbounds [4 x float], ptr %0, i64 3
  store float %128, ptr %129, align 4, !tbaa !34
  %130 = fmul float %30, %45
  %131 = tail call float @llvm.fmuladd.f32(float %28, float %37, float %130)
  %132 = tail call float @llvm.fmuladd.f32(float %32, float %53, float %131)
  %133 = tail call float @llvm.fmuladd.f32(float %34, float %61, float %132)
  %134 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 1
  store float %133, ptr %134, align 4, !tbaa !34
  %135 = fmul float %30, %47
  %136 = tail call float @llvm.fmuladd.f32(float %28, float %39, float %135)
  %137 = tail call float @llvm.fmuladd.f32(float %32, float %55, float %136)
  %138 = tail call float @llvm.fmuladd.f32(float %34, float %63, float %137)
  %139 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 2
  store float %138, ptr %139, align 4, !tbaa !34
  %140 = fmul float %30, %49
  %141 = tail call float @llvm.fmuladd.f32(float %28, float %41, float %140)
  %142 = tail call float @llvm.fmuladd.f32(float %32, float %57, float %141)
  %143 = tail call float @llvm.fmuladd.f32(float %34, float %65, float %142)
  %144 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 3
  store float %143, ptr %144, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_m3_m3m3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = load float, ptr %2, align 4
  %5 = getelementptr inbounds i8, ptr %2, i64 4
  %6 = load float, ptr %5, align 4
  %7 = getelementptr inbounds i8, ptr %2, i64 8
  %8 = load float, ptr %7, align 4
  %9 = getelementptr inbounds i8, ptr %2, i64 12
  %10 = load float, ptr %9, align 4
  %11 = getelementptr inbounds i8, ptr %2, i64 16
  %12 = load float, ptr %11, align 4
  %13 = getelementptr inbounds i8, ptr %2, i64 20
  %14 = load float, ptr %13, align 4
  %15 = getelementptr inbounds i8, ptr %2, i64 24
  %16 = load float, ptr %15, align 4
  %17 = getelementptr inbounds i8, ptr %2, i64 28
  %18 = load float, ptr %17, align 4
  %19 = getelementptr inbounds i8, ptr %2, i64 32
  %20 = load float, ptr %19, align 4
  %21 = load float, ptr %1, align 4
  %22 = getelementptr inbounds i8, ptr %1, i64 4
  %23 = load float, ptr %22, align 4
  %24 = getelementptr inbounds i8, ptr %1, i64 8
  %25 = load float, ptr %24, align 4
  %26 = getelementptr inbounds i8, ptr %1, i64 12
  %27 = load float, ptr %26, align 4
  %28 = getelementptr inbounds i8, ptr %1, i64 16
  %29 = load float, ptr %28, align 4
  %30 = getelementptr inbounds i8, ptr %1, i64 20
  %31 = load float, ptr %30, align 4
  %32 = getelementptr inbounds i8, ptr %1, i64 24
  %33 = load float, ptr %32, align 4
  %34 = getelementptr inbounds i8, ptr %1, i64 28
  %35 = load float, ptr %34, align 4
  %36 = getelementptr inbounds i8, ptr %1, i64 32
  %37 = load float, ptr %36, align 4
  %38 = fmul float %6, %27
  %39 = tail call float @llvm.fmuladd.f32(float %4, float %21, float %38)
  %40 = tail call float @llvm.fmuladd.f32(float %8, float %33, float %39)
  store float %40, ptr %0, align 4, !tbaa !34
  %41 = fmul float %6, %29
  %42 = tail call float @llvm.fmuladd.f32(float %4, float %23, float %41)
  %43 = tail call float @llvm.fmuladd.f32(float %8, float %35, float %42)
  %44 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float %43, ptr %44, align 4, !tbaa !34
  %45 = fmul float %6, %31
  %46 = tail call float @llvm.fmuladd.f32(float %4, float %25, float %45)
  %47 = tail call float @llvm.fmuladd.f32(float %8, float %37, float %46)
  %48 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %47, ptr %48, align 4, !tbaa !34
  %49 = fmul float %12, %27
  %50 = tail call float @llvm.fmuladd.f32(float %10, float %21, float %49)
  %51 = tail call float @llvm.fmuladd.f32(float %14, float %33, float %50)
  %52 = getelementptr inbounds [3 x float], ptr %0, i64 1
  store float %51, ptr %52, align 4, !tbaa !34
  %53 = fmul float %12, %29
  %54 = tail call float @llvm.fmuladd.f32(float %10, float %23, float %53)
  %55 = tail call float @llvm.fmuladd.f32(float %14, float %35, float %54)
  %56 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %55, ptr %56, align 4, !tbaa !34
  %57 = fmul float %12, %31
  %58 = tail call float @llvm.fmuladd.f32(float %10, float %25, float %57)
  %59 = tail call float @llvm.fmuladd.f32(float %14, float %37, float %58)
  %60 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float %59, ptr %60, align 4, !tbaa !34
  %61 = fmul float %18, %27
  %62 = tail call float @llvm.fmuladd.f32(float %16, float %21, float %61)
  %63 = tail call float @llvm.fmuladd.f32(float %20, float %33, float %62)
  %64 = getelementptr inbounds [3 x float], ptr %0, i64 2
  store float %63, ptr %64, align 4, !tbaa !34
  %65 = fmul float %18, %29
  %66 = tail call float @llvm.fmuladd.f32(float %16, float %23, float %65)
  %67 = tail call float @llvm.fmuladd.f32(float %20, float %35, float %66)
  %68 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float %67, ptr %68, align 4, !tbaa !34
  %69 = fmul float %18, %31
  %70 = tail call float @llvm.fmuladd.f32(float %16, float %25, float %69)
  %71 = tail call float @llvm.fmuladd.f32(float %20, float %37, float %70)
  %72 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %71, ptr %72, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_m4_m4m3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = load float, ptr %2, align 4
  %5 = getelementptr inbounds i8, ptr %2, i64 4
  %6 = load float, ptr %5, align 4
  %7 = getelementptr inbounds i8, ptr %2, i64 8
  %8 = load float, ptr %7, align 4
  %9 = getelementptr inbounds i8, ptr %2, i64 12
  %10 = load float, ptr %9, align 4
  %11 = getelementptr inbounds i8, ptr %2, i64 16
  %12 = load float, ptr %11, align 4
  %13 = getelementptr inbounds i8, ptr %2, i64 20
  %14 = load float, ptr %13, align 4
  %15 = getelementptr inbounds i8, ptr %2, i64 24
  %16 = load float, ptr %15, align 4
  %17 = getelementptr inbounds i8, ptr %2, i64 28
  %18 = load float, ptr %17, align 4
  %19 = getelementptr inbounds i8, ptr %2, i64 32
  %20 = load float, ptr %19, align 4
  %21 = load float, ptr %1, align 4
  %22 = getelementptr inbounds i8, ptr %1, i64 4
  %23 = load float, ptr %22, align 4
  %24 = getelementptr inbounds i8, ptr %1, i64 8
  %25 = load float, ptr %24, align 4
  %26 = getelementptr inbounds i8, ptr %1, i64 16
  %27 = load float, ptr %26, align 4
  %28 = getelementptr inbounds i8, ptr %1, i64 20
  %29 = load float, ptr %28, align 4
  %30 = getelementptr inbounds i8, ptr %1, i64 24
  %31 = load float, ptr %30, align 4
  %32 = getelementptr inbounds i8, ptr %1, i64 32
  %33 = load float, ptr %32, align 4
  %34 = getelementptr inbounds i8, ptr %1, i64 36
  %35 = load float, ptr %34, align 4
  %36 = getelementptr inbounds i8, ptr %1, i64 40
  %37 = load float, ptr %36, align 4
  %38 = fmul float %6, %27
  %39 = tail call float @llvm.fmuladd.f32(float %4, float %21, float %38)
  %40 = tail call float @llvm.fmuladd.f32(float %8, float %33, float %39)
  store float %40, ptr %0, align 4, !tbaa !34
  %41 = fmul float %6, %29
  %42 = tail call float @llvm.fmuladd.f32(float %4, float %23, float %41)
  %43 = tail call float @llvm.fmuladd.f32(float %8, float %35, float %42)
  %44 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  store float %43, ptr %44, align 4, !tbaa !34
  %45 = fmul float %6, %31
  %46 = tail call float @llvm.fmuladd.f32(float %4, float %25, float %45)
  %47 = tail call float @llvm.fmuladd.f32(float %8, float %37, float %46)
  %48 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  store float %47, ptr %48, align 4, !tbaa !34
  %49 = fmul float %12, %27
  %50 = tail call float @llvm.fmuladd.f32(float %10, float %21, float %49)
  %51 = tail call float @llvm.fmuladd.f32(float %14, float %33, float %50)
  %52 = getelementptr inbounds [4 x float], ptr %0, i64 1
  store float %51, ptr %52, align 4, !tbaa !34
  %53 = fmul float %12, %29
  %54 = tail call float @llvm.fmuladd.f32(float %10, float %23, float %53)
  %55 = tail call float @llvm.fmuladd.f32(float %14, float %35, float %54)
  %56 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  store float %55, ptr %56, align 4, !tbaa !34
  %57 = fmul float %12, %31
  %58 = tail call float @llvm.fmuladd.f32(float %10, float %25, float %57)
  %59 = tail call float @llvm.fmuladd.f32(float %14, float %37, float %58)
  %60 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  store float %59, ptr %60, align 4, !tbaa !34
  %61 = fmul float %18, %27
  %62 = tail call float @llvm.fmuladd.f32(float %16, float %21, float %61)
  %63 = tail call float @llvm.fmuladd.f32(float %20, float %33, float %62)
  %64 = getelementptr inbounds [4 x float], ptr %0, i64 2
  store float %63, ptr %64, align 4, !tbaa !34
  %65 = fmul float %18, %29
  %66 = tail call float @llvm.fmuladd.f32(float %16, float %23, float %65)
  %67 = tail call float @llvm.fmuladd.f32(float %20, float %35, float %66)
  %68 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  store float %67, ptr %68, align 4, !tbaa !34
  %69 = fmul float %18, %31
  %70 = tail call float @llvm.fmuladd.f32(float %16, float %25, float %69)
  %71 = tail call float @llvm.fmuladd.f32(float %20, float %37, float %70)
  %72 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  store float %71, ptr %72, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_m3_m3m4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = load float, ptr %2, align 4
  %5 = getelementptr inbounds i8, ptr %2, i64 4
  %6 = load float, ptr %5, align 4
  %7 = getelementptr inbounds i8, ptr %2, i64 8
  %8 = load float, ptr %7, align 4
  %9 = getelementptr inbounds i8, ptr %2, i64 12
  %10 = load float, ptr %9, align 4
  %11 = getelementptr inbounds i8, ptr %2, i64 16
  %12 = load float, ptr %11, align 4
  %13 = getelementptr inbounds i8, ptr %2, i64 20
  %14 = load float, ptr %13, align 4
  %15 = getelementptr inbounds i8, ptr %2, i64 24
  %16 = load float, ptr %15, align 4
  %17 = getelementptr inbounds i8, ptr %2, i64 28
  %18 = load float, ptr %17, align 4
  %19 = getelementptr inbounds i8, ptr %2, i64 32
  %20 = load float, ptr %19, align 4
  %21 = load float, ptr %1, align 4
  %22 = getelementptr inbounds i8, ptr %1, i64 4
  %23 = load float, ptr %22, align 4
  %24 = getelementptr inbounds i8, ptr %1, i64 8
  %25 = load float, ptr %24, align 4
  %26 = getelementptr inbounds i8, ptr %1, i64 16
  %27 = load float, ptr %26, align 4
  %28 = getelementptr inbounds i8, ptr %1, i64 20
  %29 = load float, ptr %28, align 4
  %30 = getelementptr inbounds i8, ptr %1, i64 24
  %31 = load float, ptr %30, align 4
  %32 = getelementptr inbounds i8, ptr %1, i64 32
  %33 = load float, ptr %32, align 4
  %34 = getelementptr inbounds i8, ptr %1, i64 36
  %35 = load float, ptr %34, align 4
  %36 = getelementptr inbounds i8, ptr %1, i64 40
  %37 = load float, ptr %36, align 4
  %38 = fmul float %6, %27
  %39 = tail call float @llvm.fmuladd.f32(float %4, float %21, float %38)
  %40 = tail call float @llvm.fmuladd.f32(float %8, float %33, float %39)
  store float %40, ptr %0, align 4, !tbaa !34
  %41 = fmul float %6, %29
  %42 = tail call float @llvm.fmuladd.f32(float %4, float %23, float %41)
  %43 = tail call float @llvm.fmuladd.f32(float %8, float %35, float %42)
  %44 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float %43, ptr %44, align 4, !tbaa !34
  %45 = fmul float %6, %31
  %46 = tail call float @llvm.fmuladd.f32(float %4, float %25, float %45)
  %47 = tail call float @llvm.fmuladd.f32(float %8, float %37, float %46)
  %48 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %47, ptr %48, align 4, !tbaa !34
  %49 = fmul float %12, %27
  %50 = tail call float @llvm.fmuladd.f32(float %10, float %21, float %49)
  %51 = tail call float @llvm.fmuladd.f32(float %14, float %33, float %50)
  %52 = getelementptr inbounds [3 x float], ptr %0, i64 1
  store float %51, ptr %52, align 4, !tbaa !34
  %53 = fmul float %12, %29
  %54 = tail call float @llvm.fmuladd.f32(float %10, float %23, float %53)
  %55 = tail call float @llvm.fmuladd.f32(float %14, float %35, float %54)
  %56 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %55, ptr %56, align 4, !tbaa !34
  %57 = fmul float %12, %31
  %58 = tail call float @llvm.fmuladd.f32(float %10, float %25, float %57)
  %59 = tail call float @llvm.fmuladd.f32(float %14, float %37, float %58)
  %60 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float %59, ptr %60, align 4, !tbaa !34
  %61 = fmul float %18, %27
  %62 = tail call float @llvm.fmuladd.f32(float %16, float %21, float %61)
  %63 = tail call float @llvm.fmuladd.f32(float %20, float %33, float %62)
  %64 = getelementptr inbounds [3 x float], ptr %0, i64 2
  store float %63, ptr %64, align 4, !tbaa !34
  %65 = fmul float %18, %29
  %66 = tail call float @llvm.fmuladd.f32(float %16, float %23, float %65)
  %67 = tail call float @llvm.fmuladd.f32(float %20, float %35, float %66)
  %68 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float %67, ptr %68, align 4, !tbaa !34
  %69 = fmul float %18, %31
  %70 = tail call float @llvm.fmuladd.f32(float %16, float %25, float %69)
  %71 = tail call float @llvm.fmuladd.f32(float %20, float %37, float %70)
  %72 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %71, ptr %72, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_m4_m3m4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = load float, ptr %2, align 4
  %5 = getelementptr inbounds i8, ptr %2, i64 4
  %6 = load float, ptr %5, align 4
  %7 = getelementptr inbounds i8, ptr %2, i64 8
  %8 = load float, ptr %7, align 4
  %9 = getelementptr inbounds i8, ptr %2, i64 16
  %10 = load float, ptr %9, align 4
  %11 = getelementptr inbounds i8, ptr %2, i64 20
  %12 = load float, ptr %11, align 4
  %13 = getelementptr inbounds i8, ptr %2, i64 24
  %14 = load float, ptr %13, align 4
  %15 = getelementptr inbounds i8, ptr %2, i64 32
  %16 = load float, ptr %15, align 4
  %17 = getelementptr inbounds i8, ptr %2, i64 36
  %18 = load float, ptr %17, align 4
  %19 = getelementptr inbounds i8, ptr %2, i64 40
  %20 = load float, ptr %19, align 4
  %21 = load float, ptr %1, align 4
  %22 = getelementptr inbounds i8, ptr %1, i64 4
  %23 = load float, ptr %22, align 4
  %24 = getelementptr inbounds i8, ptr %1, i64 8
  %25 = load float, ptr %24, align 4
  %26 = getelementptr inbounds i8, ptr %1, i64 12
  %27 = load float, ptr %26, align 4
  %28 = getelementptr inbounds i8, ptr %1, i64 16
  %29 = load float, ptr %28, align 4
  %30 = getelementptr inbounds i8, ptr %1, i64 20
  %31 = load float, ptr %30, align 4
  %32 = getelementptr inbounds i8, ptr %1, i64 24
  %33 = load float, ptr %32, align 4
  %34 = getelementptr inbounds i8, ptr %1, i64 28
  %35 = load float, ptr %34, align 4
  %36 = getelementptr inbounds i8, ptr %1, i64 32
  %37 = load float, ptr %36, align 4
  %38 = fmul float %6, %27
  %39 = tail call float @llvm.fmuladd.f32(float %4, float %21, float %38)
  %40 = tail call float @llvm.fmuladd.f32(float %8, float %33, float %39)
  store float %40, ptr %0, align 4, !tbaa !34
  %41 = fmul float %6, %29
  %42 = tail call float @llvm.fmuladd.f32(float %4, float %23, float %41)
  %43 = tail call float @llvm.fmuladd.f32(float %8, float %35, float %42)
  %44 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  store float %43, ptr %44, align 4, !tbaa !34
  %45 = fmul float %6, %31
  %46 = tail call float @llvm.fmuladd.f32(float %4, float %25, float %45)
  %47 = tail call float @llvm.fmuladd.f32(float %8, float %37, float %46)
  %48 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  store float %47, ptr %48, align 4, !tbaa !34
  %49 = fmul float %12, %27
  %50 = tail call float @llvm.fmuladd.f32(float %10, float %21, float %49)
  %51 = tail call float @llvm.fmuladd.f32(float %14, float %33, float %50)
  %52 = getelementptr inbounds [4 x float], ptr %0, i64 1
  store float %51, ptr %52, align 4, !tbaa !34
  %53 = fmul float %12, %29
  %54 = tail call float @llvm.fmuladd.f32(float %10, float %23, float %53)
  %55 = tail call float @llvm.fmuladd.f32(float %14, float %35, float %54)
  %56 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  store float %55, ptr %56, align 4, !tbaa !34
  %57 = fmul float %12, %31
  %58 = tail call float @llvm.fmuladd.f32(float %10, float %25, float %57)
  %59 = tail call float @llvm.fmuladd.f32(float %14, float %37, float %58)
  %60 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  store float %59, ptr %60, align 4, !tbaa !34
  %61 = fmul float %18, %27
  %62 = tail call float @llvm.fmuladd.f32(float %16, float %21, float %61)
  %63 = tail call float @llvm.fmuladd.f32(float %20, float %33, float %62)
  %64 = getelementptr inbounds [4 x float], ptr %0, i64 2
  store float %63, ptr %64, align 4, !tbaa !34
  %65 = fmul float %18, %29
  %66 = tail call float @llvm.fmuladd.f32(float %16, float %23, float %65)
  %67 = tail call float @llvm.fmuladd.f32(float %20, float %35, float %66)
  %68 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  store float %67, ptr %68, align 4, !tbaa !34
  %69 = fmul float %18, %31
  %70 = tail call float @llvm.fmuladd.f32(float %16, float %25, float %69)
  %71 = tail call float @llvm.fmuladd.f32(float %20, float %37, float %70)
  %72 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  store float %71, ptr %72, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_va_mul_m3_series_3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = load float, ptr %2, align 4
  %5 = getelementptr inbounds i8, ptr %2, i64 4
  %6 = load float, ptr %5, align 4
  %7 = getelementptr inbounds i8, ptr %2, i64 8
  %8 = load float, ptr %7, align 4
  %9 = getelementptr inbounds i8, ptr %2, i64 12
  %10 = load float, ptr %9, align 4
  %11 = getelementptr inbounds i8, ptr %2, i64 16
  %12 = load float, ptr %11, align 4
  %13 = getelementptr inbounds i8, ptr %2, i64 20
  %14 = load float, ptr %13, align 4
  %15 = getelementptr inbounds i8, ptr %2, i64 24
  %16 = load float, ptr %15, align 4
  %17 = getelementptr inbounds i8, ptr %2, i64 28
  %18 = load float, ptr %17, align 4
  %19 = getelementptr inbounds i8, ptr %2, i64 32
  %20 = load float, ptr %19, align 4
  %21 = load float, ptr %1, align 4
  %22 = getelementptr inbounds i8, ptr %1, i64 4
  %23 = load float, ptr %22, align 4
  %24 = getelementptr inbounds i8, ptr %1, i64 8
  %25 = load float, ptr %24, align 4
  %26 = getelementptr inbounds i8, ptr %1, i64 12
  %27 = load float, ptr %26, align 4
  %28 = getelementptr inbounds i8, ptr %1, i64 16
  %29 = load float, ptr %28, align 4
  %30 = getelementptr inbounds i8, ptr %1, i64 20
  %31 = load float, ptr %30, align 4
  %32 = getelementptr inbounds i8, ptr %1, i64 24
  %33 = load float, ptr %32, align 4
  %34 = getelementptr inbounds i8, ptr %1, i64 28
  %35 = load float, ptr %34, align 4
  %36 = getelementptr inbounds i8, ptr %1, i64 32
  %37 = load float, ptr %36, align 4
  %38 = fmul float %6, %27
  %39 = tail call float @llvm.fmuladd.f32(float %4, float %21, float %38)
  %40 = tail call float @llvm.fmuladd.f32(float %8, float %33, float %39)
  store float %40, ptr %0, align 4, !tbaa !34
  %41 = fmul float %6, %29
  %42 = tail call float @llvm.fmuladd.f32(float %4, float %23, float %41)
  %43 = tail call float @llvm.fmuladd.f32(float %8, float %35, float %42)
  %44 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float %43, ptr %44, align 4, !tbaa !34
  %45 = fmul float %6, %31
  %46 = tail call float @llvm.fmuladd.f32(float %4, float %25, float %45)
  %47 = tail call float @llvm.fmuladd.f32(float %8, float %37, float %46)
  %48 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %47, ptr %48, align 4, !tbaa !34
  %49 = fmul float %12, %27
  %50 = tail call float @llvm.fmuladd.f32(float %10, float %21, float %49)
  %51 = tail call float @llvm.fmuladd.f32(float %14, float %33, float %50)
  %52 = getelementptr inbounds [3 x float], ptr %0, i64 1
  store float %51, ptr %52, align 4, !tbaa !34
  %53 = fmul float %12, %29
  %54 = tail call float @llvm.fmuladd.f32(float %10, float %23, float %53)
  %55 = tail call float @llvm.fmuladd.f32(float %14, float %35, float %54)
  %56 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %55, ptr %56, align 4, !tbaa !34
  %57 = fmul float %12, %31
  %58 = tail call float @llvm.fmuladd.f32(float %10, float %25, float %57)
  %59 = tail call float @llvm.fmuladd.f32(float %14, float %37, float %58)
  %60 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float %59, ptr %60, align 4, !tbaa !34
  %61 = fmul float %18, %27
  %62 = tail call float @llvm.fmuladd.f32(float %16, float %21, float %61)
  %63 = tail call float @llvm.fmuladd.f32(float %20, float %33, float %62)
  %64 = getelementptr inbounds [3 x float], ptr %0, i64 2
  store float %63, ptr %64, align 4, !tbaa !34
  %65 = fmul float %18, %29
  %66 = tail call float @llvm.fmuladd.f32(float %16, float %23, float %65)
  %67 = tail call float @llvm.fmuladd.f32(float %20, float %35, float %66)
  %68 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float %67, ptr %68, align 4, !tbaa !34
  %69 = fmul float %18, %31
  %70 = tail call float @llvm.fmuladd.f32(float %16, float %25, float %69)
  %71 = tail call float @llvm.fmuladd.f32(float %20, float %37, float %70)
  %72 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %71, ptr %72, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_va_mul_m3_series_4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #2 {
  %5 = load float, ptr %2, align 4
  %6 = getelementptr inbounds i8, ptr %2, i64 4
  %7 = load float, ptr %6, align 4
  %8 = getelementptr inbounds i8, ptr %2, i64 8
  %9 = load float, ptr %8, align 4
  %10 = getelementptr inbounds i8, ptr %2, i64 12
  %11 = load float, ptr %10, align 4
  %12 = getelementptr inbounds i8, ptr %2, i64 16
  %13 = load float, ptr %12, align 4
  %14 = getelementptr inbounds i8, ptr %2, i64 20
  %15 = load float, ptr %14, align 4
  %16 = getelementptr inbounds i8, ptr %2, i64 24
  %17 = load float, ptr %16, align 4
  %18 = getelementptr inbounds i8, ptr %2, i64 28
  %19 = load float, ptr %18, align 4
  %20 = getelementptr inbounds i8, ptr %2, i64 32
  %21 = load float, ptr %20, align 4
  %22 = load float, ptr %1, align 4
  %23 = getelementptr inbounds i8, ptr %1, i64 4
  %24 = load float, ptr %23, align 4
  %25 = getelementptr inbounds i8, ptr %1, i64 8
  %26 = load float, ptr %25, align 4
  %27 = getelementptr inbounds i8, ptr %1, i64 12
  %28 = load float, ptr %27, align 4
  %29 = getelementptr inbounds i8, ptr %1, i64 16
  %30 = load float, ptr %29, align 4
  %31 = getelementptr inbounds i8, ptr %1, i64 20
  %32 = load float, ptr %31, align 4
  %33 = getelementptr inbounds i8, ptr %1, i64 24
  %34 = load float, ptr %33, align 4
  %35 = getelementptr inbounds i8, ptr %1, i64 28
  %36 = load float, ptr %35, align 4
  %37 = getelementptr inbounds i8, ptr %1, i64 32
  %38 = load float, ptr %37, align 4
  %39 = fmul float %7, %28
  %40 = tail call float @llvm.fmuladd.f32(float %5, float %22, float %39)
  %41 = tail call float @llvm.fmuladd.f32(float %9, float %34, float %40)
  store float %41, ptr %0, align 4, !tbaa !34
  %42 = fmul float %7, %30
  %43 = tail call float @llvm.fmuladd.f32(float %5, float %24, float %42)
  %44 = tail call float @llvm.fmuladd.f32(float %9, float %36, float %43)
  %45 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float %44, ptr %45, align 4, !tbaa !34
  %46 = fmul float %7, %32
  %47 = tail call float @llvm.fmuladd.f32(float %5, float %26, float %46)
  %48 = tail call float @llvm.fmuladd.f32(float %9, float %38, float %47)
  %49 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %48, ptr %49, align 4, !tbaa !34
  %50 = fmul float %13, %28
  %51 = tail call float @llvm.fmuladd.f32(float %11, float %22, float %50)
  %52 = tail call float @llvm.fmuladd.f32(float %15, float %34, float %51)
  %53 = getelementptr inbounds [3 x float], ptr %0, i64 1
  store float %52, ptr %53, align 4, !tbaa !34
  %54 = fmul float %13, %30
  %55 = tail call float @llvm.fmuladd.f32(float %11, float %24, float %54)
  %56 = tail call float @llvm.fmuladd.f32(float %15, float %36, float %55)
  %57 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %56, ptr %57, align 4, !tbaa !34
  %58 = fmul float %13, %32
  %59 = tail call float @llvm.fmuladd.f32(float %11, float %26, float %58)
  %60 = tail call float @llvm.fmuladd.f32(float %15, float %38, float %59)
  %61 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float %60, ptr %61, align 4, !tbaa !34
  %62 = fmul float %19, %28
  %63 = tail call float @llvm.fmuladd.f32(float %17, float %22, float %62)
  %64 = tail call float @llvm.fmuladd.f32(float %21, float %34, float %63)
  %65 = getelementptr inbounds [3 x float], ptr %0, i64 2
  store float %64, ptr %65, align 4, !tbaa !34
  %66 = fmul float %19, %30
  %67 = tail call float @llvm.fmuladd.f32(float %17, float %24, float %66)
  %68 = tail call float @llvm.fmuladd.f32(float %21, float %36, float %67)
  %69 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float %68, ptr %69, align 4, !tbaa !34
  %70 = fmul float %19, %32
  %71 = tail call float @llvm.fmuladd.f32(float %17, float %26, float %70)
  %72 = tail call float @llvm.fmuladd.f32(float %21, float %38, float %71)
  %73 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %72, ptr %73, align 4, !tbaa !34
  %74 = load float, ptr %3, align 4
  %75 = getelementptr inbounds i8, ptr %3, i64 4
  %76 = load float, ptr %75, align 4
  %77 = getelementptr inbounds i8, ptr %3, i64 8
  %78 = load float, ptr %77, align 4
  %79 = getelementptr inbounds i8, ptr %3, i64 12
  %80 = load float, ptr %79, align 4
  %81 = getelementptr inbounds i8, ptr %3, i64 16
  %82 = load float, ptr %81, align 4
  %83 = getelementptr inbounds i8, ptr %3, i64 20
  %84 = load float, ptr %83, align 4
  %85 = getelementptr inbounds i8, ptr %3, i64 24
  %86 = load float, ptr %85, align 4
  %87 = getelementptr inbounds i8, ptr %3, i64 28
  %88 = load float, ptr %87, align 4
  %89 = getelementptr inbounds i8, ptr %3, i64 32
  %90 = load float, ptr %89, align 4
  %91 = fmul float %52, %76
  %92 = tail call float @llvm.fmuladd.f32(float %74, float %41, float %91)
  %93 = tail call float @llvm.fmuladd.f32(float %78, float %64, float %92)
  store float %93, ptr %0, align 4, !tbaa !34
  %94 = fmul float %56, %76
  %95 = tail call float @llvm.fmuladd.f32(float %74, float %44, float %94)
  %96 = tail call float @llvm.fmuladd.f32(float %78, float %68, float %95)
  store float %96, ptr %45, align 4, !tbaa !34
  %97 = fmul float %60, %76
  %98 = tail call float @llvm.fmuladd.f32(float %74, float %48, float %97)
  %99 = tail call float @llvm.fmuladd.f32(float %78, float %72, float %98)
  store float %99, ptr %49, align 4, !tbaa !34
  %100 = fmul float %52, %82
  %101 = tail call float @llvm.fmuladd.f32(float %80, float %41, float %100)
  %102 = tail call float @llvm.fmuladd.f32(float %84, float %64, float %101)
  store float %102, ptr %53, align 4, !tbaa !34
  %103 = fmul float %56, %82
  %104 = tail call float @llvm.fmuladd.f32(float %80, float %44, float %103)
  %105 = tail call float @llvm.fmuladd.f32(float %84, float %68, float %104)
  store float %105, ptr %57, align 4, !tbaa !34
  %106 = fmul float %60, %82
  %107 = tail call float @llvm.fmuladd.f32(float %80, float %48, float %106)
  %108 = tail call float @llvm.fmuladd.f32(float %84, float %72, float %107)
  store float %108, ptr %61, align 4, !tbaa !34
  %109 = fmul float %52, %88
  %110 = tail call float @llvm.fmuladd.f32(float %86, float %41, float %109)
  %111 = tail call float @llvm.fmuladd.f32(float %90, float %64, float %110)
  store float %111, ptr %65, align 4, !tbaa !34
  %112 = fmul float %56, %88
  %113 = tail call float @llvm.fmuladd.f32(float %86, float %44, float %112)
  %114 = tail call float @llvm.fmuladd.f32(float %90, float %68, float %113)
  store float %114, ptr %69, align 4, !tbaa !34
  %115 = fmul float %60, %88
  %116 = tail call float @llvm.fmuladd.f32(float %86, float %48, float %115)
  %117 = tail call float @llvm.fmuladd.f32(float %90, float %72, float %116)
  store float %117, ptr %73, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_va_mul_m3_series_5(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 {
  %6 = load float, ptr %2, align 4
  %7 = getelementptr inbounds i8, ptr %2, i64 4
  %8 = load float, ptr %7, align 4
  %9 = getelementptr inbounds i8, ptr %2, i64 8
  %10 = load float, ptr %9, align 4
  %11 = getelementptr inbounds i8, ptr %2, i64 12
  %12 = load float, ptr %11, align 4
  %13 = getelementptr inbounds i8, ptr %2, i64 16
  %14 = load float, ptr %13, align 4
  %15 = getelementptr inbounds i8, ptr %2, i64 20
  %16 = load float, ptr %15, align 4
  %17 = getelementptr inbounds i8, ptr %2, i64 24
  %18 = load float, ptr %17, align 4
  %19 = getelementptr inbounds i8, ptr %2, i64 28
  %20 = load float, ptr %19, align 4
  %21 = getelementptr inbounds i8, ptr %2, i64 32
  %22 = load float, ptr %21, align 4
  %23 = load float, ptr %1, align 4
  %24 = getelementptr inbounds i8, ptr %1, i64 4
  %25 = load float, ptr %24, align 4
  %26 = getelementptr inbounds i8, ptr %1, i64 8
  %27 = load float, ptr %26, align 4
  %28 = getelementptr inbounds i8, ptr %1, i64 12
  %29 = load float, ptr %28, align 4
  %30 = getelementptr inbounds i8, ptr %1, i64 16
  %31 = load float, ptr %30, align 4
  %32 = getelementptr inbounds i8, ptr %1, i64 20
  %33 = load float, ptr %32, align 4
  %34 = getelementptr inbounds i8, ptr %1, i64 24
  %35 = load float, ptr %34, align 4
  %36 = getelementptr inbounds i8, ptr %1, i64 28
  %37 = load float, ptr %36, align 4
  %38 = getelementptr inbounds i8, ptr %1, i64 32
  %39 = load float, ptr %38, align 4
  %40 = fmul float %8, %29
  %41 = tail call float @llvm.fmuladd.f32(float %6, float %23, float %40)
  %42 = tail call float @llvm.fmuladd.f32(float %10, float %35, float %41)
  store float %42, ptr %0, align 4, !tbaa !34
  %43 = fmul float %8, %31
  %44 = tail call float @llvm.fmuladd.f32(float %6, float %25, float %43)
  %45 = tail call float @llvm.fmuladd.f32(float %10, float %37, float %44)
  %46 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float %45, ptr %46, align 4, !tbaa !34
  %47 = fmul float %8, %33
  %48 = tail call float @llvm.fmuladd.f32(float %6, float %27, float %47)
  %49 = tail call float @llvm.fmuladd.f32(float %10, float %39, float %48)
  %50 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %49, ptr %50, align 4, !tbaa !34
  %51 = fmul float %14, %29
  %52 = tail call float @llvm.fmuladd.f32(float %12, float %23, float %51)
  %53 = tail call float @llvm.fmuladd.f32(float %16, float %35, float %52)
  %54 = getelementptr inbounds [3 x float], ptr %0, i64 1
  store float %53, ptr %54, align 4, !tbaa !34
  %55 = fmul float %14, %31
  %56 = tail call float @llvm.fmuladd.f32(float %12, float %25, float %55)
  %57 = tail call float @llvm.fmuladd.f32(float %16, float %37, float %56)
  %58 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %57, ptr %58, align 4, !tbaa !34
  %59 = fmul float %14, %33
  %60 = tail call float @llvm.fmuladd.f32(float %12, float %27, float %59)
  %61 = tail call float @llvm.fmuladd.f32(float %16, float %39, float %60)
  %62 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float %61, ptr %62, align 4, !tbaa !34
  %63 = fmul float %20, %29
  %64 = tail call float @llvm.fmuladd.f32(float %18, float %23, float %63)
  %65 = tail call float @llvm.fmuladd.f32(float %22, float %35, float %64)
  %66 = getelementptr inbounds [3 x float], ptr %0, i64 2
  store float %65, ptr %66, align 4, !tbaa !34
  %67 = fmul float %20, %31
  %68 = tail call float @llvm.fmuladd.f32(float %18, float %25, float %67)
  %69 = tail call float @llvm.fmuladd.f32(float %22, float %37, float %68)
  %70 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float %69, ptr %70, align 4, !tbaa !34
  %71 = fmul float %20, %33
  %72 = tail call float @llvm.fmuladd.f32(float %18, float %27, float %71)
  %73 = tail call float @llvm.fmuladd.f32(float %22, float %39, float %72)
  %74 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %73, ptr %74, align 4, !tbaa !34
  %75 = load float, ptr %3, align 4
  %76 = getelementptr inbounds i8, ptr %3, i64 4
  %77 = load float, ptr %76, align 4
  %78 = getelementptr inbounds i8, ptr %3, i64 8
  %79 = load float, ptr %78, align 4
  %80 = getelementptr inbounds i8, ptr %3, i64 12
  %81 = load float, ptr %80, align 4
  %82 = getelementptr inbounds i8, ptr %3, i64 16
  %83 = load float, ptr %82, align 4
  %84 = getelementptr inbounds i8, ptr %3, i64 20
  %85 = load float, ptr %84, align 4
  %86 = getelementptr inbounds i8, ptr %3, i64 24
  %87 = load float, ptr %86, align 4
  %88 = getelementptr inbounds i8, ptr %3, i64 28
  %89 = load float, ptr %88, align 4
  %90 = getelementptr inbounds i8, ptr %3, i64 32
  %91 = load float, ptr %90, align 4
  %92 = fmul float %53, %77
  %93 = tail call float @llvm.fmuladd.f32(float %75, float %42, float %92)
  %94 = tail call float @llvm.fmuladd.f32(float %79, float %65, float %93)
  store float %94, ptr %0, align 4, !tbaa !34
  %95 = fmul float %57, %77
  %96 = tail call float @llvm.fmuladd.f32(float %75, float %45, float %95)
  %97 = tail call float @llvm.fmuladd.f32(float %79, float %69, float %96)
  store float %97, ptr %46, align 4, !tbaa !34
  %98 = fmul float %61, %77
  %99 = tail call float @llvm.fmuladd.f32(float %75, float %49, float %98)
  %100 = tail call float @llvm.fmuladd.f32(float %79, float %73, float %99)
  store float %100, ptr %50, align 4, !tbaa !34
  %101 = fmul float %53, %83
  %102 = tail call float @llvm.fmuladd.f32(float %81, float %42, float %101)
  %103 = tail call float @llvm.fmuladd.f32(float %85, float %65, float %102)
  store float %103, ptr %54, align 4, !tbaa !34
  %104 = fmul float %57, %83
  %105 = tail call float @llvm.fmuladd.f32(float %81, float %45, float %104)
  %106 = tail call float @llvm.fmuladd.f32(float %85, float %69, float %105)
  store float %106, ptr %58, align 4, !tbaa !34
  %107 = fmul float %61, %83
  %108 = tail call float @llvm.fmuladd.f32(float %81, float %49, float %107)
  %109 = tail call float @llvm.fmuladd.f32(float %85, float %73, float %108)
  store float %109, ptr %62, align 4, !tbaa !34
  %110 = fmul float %53, %89
  %111 = tail call float @llvm.fmuladd.f32(float %87, float %42, float %110)
  %112 = tail call float @llvm.fmuladd.f32(float %91, float %65, float %111)
  store float %112, ptr %66, align 4, !tbaa !34
  %113 = fmul float %57, %89
  %114 = tail call float @llvm.fmuladd.f32(float %87, float %45, float %113)
  %115 = tail call float @llvm.fmuladd.f32(float %91, float %69, float %114)
  store float %115, ptr %70, align 4, !tbaa !34
  %116 = fmul float %61, %89
  %117 = tail call float @llvm.fmuladd.f32(float %87, float %49, float %116)
  %118 = tail call float @llvm.fmuladd.f32(float %91, float %73, float %117)
  store float %118, ptr %74, align 4, !tbaa !34
  %119 = load float, ptr %4, align 4
  %120 = getelementptr inbounds i8, ptr %4, i64 4
  %121 = load float, ptr %120, align 4
  %122 = getelementptr inbounds i8, ptr %4, i64 8
  %123 = load float, ptr %122, align 4
  %124 = getelementptr inbounds i8, ptr %4, i64 12
  %125 = load float, ptr %124, align 4
  %126 = getelementptr inbounds i8, ptr %4, i64 16
  %127 = load float, ptr %126, align 4
  %128 = getelementptr inbounds i8, ptr %4, i64 20
  %129 = load float, ptr %128, align 4
  %130 = getelementptr inbounds i8, ptr %4, i64 24
  %131 = load float, ptr %130, align 4
  %132 = getelementptr inbounds i8, ptr %4, i64 28
  %133 = load float, ptr %132, align 4
  %134 = getelementptr inbounds i8, ptr %4, i64 32
  %135 = load float, ptr %134, align 4
  %136 = fmul float %103, %121
  %137 = tail call float @llvm.fmuladd.f32(float %119, float %94, float %136)
  %138 = tail call float @llvm.fmuladd.f32(float %123, float %112, float %137)
  store float %138, ptr %0, align 4, !tbaa !34
  %139 = fmul float %106, %121
  %140 = tail call float @llvm.fmuladd.f32(float %119, float %97, float %139)
  %141 = tail call float @llvm.fmuladd.f32(float %123, float %115, float %140)
  store float %141, ptr %46, align 4, !tbaa !34
  %142 = fmul float %109, %121
  %143 = tail call float @llvm.fmuladd.f32(float %119, float %100, float %142)
  %144 = tail call float @llvm.fmuladd.f32(float %123, float %118, float %143)
  store float %144, ptr %50, align 4, !tbaa !34
  %145 = fmul float %103, %127
  %146 = tail call float @llvm.fmuladd.f32(float %125, float %94, float %145)
  %147 = tail call float @llvm.fmuladd.f32(float %129, float %112, float %146)
  store float %147, ptr %54, align 4, !tbaa !34
  %148 = fmul float %106, %127
  %149 = tail call float @llvm.fmuladd.f32(float %125, float %97, float %148)
  %150 = tail call float @llvm.fmuladd.f32(float %129, float %115, float %149)
  store float %150, ptr %58, align 4, !tbaa !34
  %151 = fmul float %109, %127
  %152 = tail call float @llvm.fmuladd.f32(float %125, float %100, float %151)
  %153 = tail call float @llvm.fmuladd.f32(float %129, float %118, float %152)
  store float %153, ptr %62, align 4, !tbaa !34
  %154 = fmul float %103, %133
  %155 = tail call float @llvm.fmuladd.f32(float %131, float %94, float %154)
  %156 = tail call float @llvm.fmuladd.f32(float %135, float %112, float %155)
  store float %156, ptr %66, align 4, !tbaa !34
  %157 = fmul float %106, %133
  %158 = tail call float @llvm.fmuladd.f32(float %131, float %97, float %157)
  %159 = tail call float @llvm.fmuladd.f32(float %135, float %115, float %158)
  store float %159, ptr %70, align 4, !tbaa !34
  %160 = fmul float %109, %133
  %161 = tail call float @llvm.fmuladd.f32(float %131, float %100, float %160)
  %162 = tail call float @llvm.fmuladd.f32(float %135, float %118, float %161)
  store float %162, ptr %74, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_va_mul_m3_series_6(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) local_unnamed_addr #2 {
  %7 = load float, ptr %2, align 4
  %8 = getelementptr inbounds i8, ptr %2, i64 4
  %9 = load float, ptr %8, align 4
  %10 = getelementptr inbounds i8, ptr %2, i64 8
  %11 = load float, ptr %10, align 4
  %12 = getelementptr inbounds i8, ptr %2, i64 12
  %13 = load float, ptr %12, align 4
  %14 = getelementptr inbounds i8, ptr %2, i64 16
  %15 = load float, ptr %14, align 4
  %16 = getelementptr inbounds i8, ptr %2, i64 20
  %17 = load float, ptr %16, align 4
  %18 = getelementptr inbounds i8, ptr %2, i64 24
  %19 = load float, ptr %18, align 4
  %20 = getelementptr inbounds i8, ptr %2, i64 28
  %21 = load float, ptr %20, align 4
  %22 = getelementptr inbounds i8, ptr %2, i64 32
  %23 = load float, ptr %22, align 4
  %24 = load float, ptr %1, align 4
  %25 = getelementptr inbounds i8, ptr %1, i64 4
  %26 = load float, ptr %25, align 4
  %27 = getelementptr inbounds i8, ptr %1, i64 8
  %28 = load float, ptr %27, align 4
  %29 = getelementptr inbounds i8, ptr %1, i64 12
  %30 = load float, ptr %29, align 4
  %31 = getelementptr inbounds i8, ptr %1, i64 16
  %32 = load float, ptr %31, align 4
  %33 = getelementptr inbounds i8, ptr %1, i64 20
  %34 = load float, ptr %33, align 4
  %35 = getelementptr inbounds i8, ptr %1, i64 24
  %36 = load float, ptr %35, align 4
  %37 = getelementptr inbounds i8, ptr %1, i64 28
  %38 = load float, ptr %37, align 4
  %39 = getelementptr inbounds i8, ptr %1, i64 32
  %40 = load float, ptr %39, align 4
  %41 = fmul float %9, %30
  %42 = tail call float @llvm.fmuladd.f32(float %7, float %24, float %41)
  %43 = tail call float @llvm.fmuladd.f32(float %11, float %36, float %42)
  store float %43, ptr %0, align 4, !tbaa !34
  %44 = fmul float %9, %32
  %45 = tail call float @llvm.fmuladd.f32(float %7, float %26, float %44)
  %46 = tail call float @llvm.fmuladd.f32(float %11, float %38, float %45)
  %47 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float %46, ptr %47, align 4, !tbaa !34
  %48 = fmul float %9, %34
  %49 = tail call float @llvm.fmuladd.f32(float %7, float %28, float %48)
  %50 = tail call float @llvm.fmuladd.f32(float %11, float %40, float %49)
  %51 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %50, ptr %51, align 4, !tbaa !34
  %52 = fmul float %15, %30
  %53 = tail call float @llvm.fmuladd.f32(float %13, float %24, float %52)
  %54 = tail call float @llvm.fmuladd.f32(float %17, float %36, float %53)
  %55 = getelementptr inbounds [3 x float], ptr %0, i64 1
  store float %54, ptr %55, align 4, !tbaa !34
  %56 = fmul float %15, %32
  %57 = tail call float @llvm.fmuladd.f32(float %13, float %26, float %56)
  %58 = tail call float @llvm.fmuladd.f32(float %17, float %38, float %57)
  %59 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %58, ptr %59, align 4, !tbaa !34
  %60 = fmul float %15, %34
  %61 = tail call float @llvm.fmuladd.f32(float %13, float %28, float %60)
  %62 = tail call float @llvm.fmuladd.f32(float %17, float %40, float %61)
  %63 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float %62, ptr %63, align 4, !tbaa !34
  %64 = fmul float %21, %30
  %65 = tail call float @llvm.fmuladd.f32(float %19, float %24, float %64)
  %66 = tail call float @llvm.fmuladd.f32(float %23, float %36, float %65)
  %67 = getelementptr inbounds [3 x float], ptr %0, i64 2
  store float %66, ptr %67, align 4, !tbaa !34
  %68 = fmul float %21, %32
  %69 = tail call float @llvm.fmuladd.f32(float %19, float %26, float %68)
  %70 = tail call float @llvm.fmuladd.f32(float %23, float %38, float %69)
  %71 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float %70, ptr %71, align 4, !tbaa !34
  %72 = fmul float %21, %34
  %73 = tail call float @llvm.fmuladd.f32(float %19, float %28, float %72)
  %74 = tail call float @llvm.fmuladd.f32(float %23, float %40, float %73)
  %75 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %74, ptr %75, align 4, !tbaa !34
  %76 = load float, ptr %3, align 4
  %77 = getelementptr inbounds i8, ptr %3, i64 4
  %78 = load float, ptr %77, align 4
  %79 = getelementptr inbounds i8, ptr %3, i64 8
  %80 = load float, ptr %79, align 4
  %81 = getelementptr inbounds i8, ptr %3, i64 12
  %82 = load float, ptr %81, align 4
  %83 = getelementptr inbounds i8, ptr %3, i64 16
  %84 = load float, ptr %83, align 4
  %85 = getelementptr inbounds i8, ptr %3, i64 20
  %86 = load float, ptr %85, align 4
  %87 = getelementptr inbounds i8, ptr %3, i64 24
  %88 = load float, ptr %87, align 4
  %89 = getelementptr inbounds i8, ptr %3, i64 28
  %90 = load float, ptr %89, align 4
  %91 = getelementptr inbounds i8, ptr %3, i64 32
  %92 = load float, ptr %91, align 4
  %93 = fmul float %54, %78
  %94 = tail call float @llvm.fmuladd.f32(float %76, float %43, float %93)
  %95 = tail call float @llvm.fmuladd.f32(float %80, float %66, float %94)
  store float %95, ptr %0, align 4, !tbaa !34
  %96 = fmul float %58, %78
  %97 = tail call float @llvm.fmuladd.f32(float %76, float %46, float %96)
  %98 = tail call float @llvm.fmuladd.f32(float %80, float %70, float %97)
  store float %98, ptr %47, align 4, !tbaa !34
  %99 = fmul float %62, %78
  %100 = tail call float @llvm.fmuladd.f32(float %76, float %50, float %99)
  %101 = tail call float @llvm.fmuladd.f32(float %80, float %74, float %100)
  store float %101, ptr %51, align 4, !tbaa !34
  %102 = fmul float %54, %84
  %103 = tail call float @llvm.fmuladd.f32(float %82, float %43, float %102)
  %104 = tail call float @llvm.fmuladd.f32(float %86, float %66, float %103)
  store float %104, ptr %55, align 4, !tbaa !34
  %105 = fmul float %58, %84
  %106 = tail call float @llvm.fmuladd.f32(float %82, float %46, float %105)
  %107 = tail call float @llvm.fmuladd.f32(float %86, float %70, float %106)
  store float %107, ptr %59, align 4, !tbaa !34
  %108 = fmul float %62, %84
  %109 = tail call float @llvm.fmuladd.f32(float %82, float %50, float %108)
  %110 = tail call float @llvm.fmuladd.f32(float %86, float %74, float %109)
  store float %110, ptr %63, align 4, !tbaa !34
  %111 = fmul float %54, %90
  %112 = tail call float @llvm.fmuladd.f32(float %88, float %43, float %111)
  %113 = tail call float @llvm.fmuladd.f32(float %92, float %66, float %112)
  store float %113, ptr %67, align 4, !tbaa !34
  %114 = fmul float %58, %90
  %115 = tail call float @llvm.fmuladd.f32(float %88, float %46, float %114)
  %116 = tail call float @llvm.fmuladd.f32(float %92, float %70, float %115)
  store float %116, ptr %71, align 4, !tbaa !34
  %117 = fmul float %62, %90
  %118 = tail call float @llvm.fmuladd.f32(float %88, float %50, float %117)
  %119 = tail call float @llvm.fmuladd.f32(float %92, float %74, float %118)
  store float %119, ptr %75, align 4, !tbaa !34
  %120 = load float, ptr %4, align 4
  %121 = getelementptr inbounds i8, ptr %4, i64 4
  %122 = load float, ptr %121, align 4
  %123 = getelementptr inbounds i8, ptr %4, i64 8
  %124 = load float, ptr %123, align 4
  %125 = getelementptr inbounds i8, ptr %4, i64 12
  %126 = load float, ptr %125, align 4
  %127 = getelementptr inbounds i8, ptr %4, i64 16
  %128 = load float, ptr %127, align 4
  %129 = getelementptr inbounds i8, ptr %4, i64 20
  %130 = load float, ptr %129, align 4
  %131 = getelementptr inbounds i8, ptr %4, i64 24
  %132 = load float, ptr %131, align 4
  %133 = getelementptr inbounds i8, ptr %4, i64 28
  %134 = load float, ptr %133, align 4
  %135 = getelementptr inbounds i8, ptr %4, i64 32
  %136 = load float, ptr %135, align 4
  %137 = fmul float %104, %122
  %138 = tail call float @llvm.fmuladd.f32(float %120, float %95, float %137)
  %139 = tail call float @llvm.fmuladd.f32(float %124, float %113, float %138)
  store float %139, ptr %0, align 4, !tbaa !34
  %140 = fmul float %107, %122
  %141 = tail call float @llvm.fmuladd.f32(float %120, float %98, float %140)
  %142 = tail call float @llvm.fmuladd.f32(float %124, float %116, float %141)
  store float %142, ptr %47, align 4, !tbaa !34
  %143 = fmul float %110, %122
  %144 = tail call float @llvm.fmuladd.f32(float %120, float %101, float %143)
  %145 = tail call float @llvm.fmuladd.f32(float %124, float %119, float %144)
  store float %145, ptr %51, align 4, !tbaa !34
  %146 = fmul float %104, %128
  %147 = tail call float @llvm.fmuladd.f32(float %126, float %95, float %146)
  %148 = tail call float @llvm.fmuladd.f32(float %130, float %113, float %147)
  store float %148, ptr %55, align 4, !tbaa !34
  %149 = fmul float %107, %128
  %150 = tail call float @llvm.fmuladd.f32(float %126, float %98, float %149)
  %151 = tail call float @llvm.fmuladd.f32(float %130, float %116, float %150)
  store float %151, ptr %59, align 4, !tbaa !34
  %152 = fmul float %110, %128
  %153 = tail call float @llvm.fmuladd.f32(float %126, float %101, float %152)
  %154 = tail call float @llvm.fmuladd.f32(float %130, float %119, float %153)
  store float %154, ptr %63, align 4, !tbaa !34
  %155 = fmul float %104, %134
  %156 = tail call float @llvm.fmuladd.f32(float %132, float %95, float %155)
  %157 = tail call float @llvm.fmuladd.f32(float %136, float %113, float %156)
  store float %157, ptr %67, align 4, !tbaa !34
  %158 = fmul float %107, %134
  %159 = tail call float @llvm.fmuladd.f32(float %132, float %98, float %158)
  %160 = tail call float @llvm.fmuladd.f32(float %136, float %116, float %159)
  store float %160, ptr %71, align 4, !tbaa !34
  %161 = fmul float %110, %134
  %162 = tail call float @llvm.fmuladd.f32(float %132, float %101, float %161)
  %163 = tail call float @llvm.fmuladd.f32(float %136, float %119, float %162)
  store float %163, ptr %75, align 4, !tbaa !34
  %164 = load float, ptr %5, align 4
  %165 = getelementptr inbounds i8, ptr %5, i64 4
  %166 = load float, ptr %165, align 4
  %167 = getelementptr inbounds i8, ptr %5, i64 8
  %168 = load float, ptr %167, align 4
  %169 = getelementptr inbounds i8, ptr %5, i64 12
  %170 = load float, ptr %169, align 4
  %171 = getelementptr inbounds i8, ptr %5, i64 16
  %172 = load float, ptr %171, align 4
  %173 = getelementptr inbounds i8, ptr %5, i64 20
  %174 = load float, ptr %173, align 4
  %175 = getelementptr inbounds i8, ptr %5, i64 24
  %176 = load float, ptr %175, align 4
  %177 = getelementptr inbounds i8, ptr %5, i64 28
  %178 = load float, ptr %177, align 4
  %179 = getelementptr inbounds i8, ptr %5, i64 32
  %180 = load float, ptr %179, align 4
  %181 = fmul float %148, %166
  %182 = tail call float @llvm.fmuladd.f32(float %164, float %139, float %181)
  %183 = tail call float @llvm.fmuladd.f32(float %168, float %157, float %182)
  store float %183, ptr %0, align 4, !tbaa !34
  %184 = fmul float %151, %166
  %185 = tail call float @llvm.fmuladd.f32(float %164, float %142, float %184)
  %186 = tail call float @llvm.fmuladd.f32(float %168, float %160, float %185)
  store float %186, ptr %47, align 4, !tbaa !34
  %187 = fmul float %154, %166
  %188 = tail call float @llvm.fmuladd.f32(float %164, float %145, float %187)
  %189 = tail call float @llvm.fmuladd.f32(float %168, float %163, float %188)
  store float %189, ptr %51, align 4, !tbaa !34
  %190 = fmul float %148, %172
  %191 = tail call float @llvm.fmuladd.f32(float %170, float %139, float %190)
  %192 = tail call float @llvm.fmuladd.f32(float %174, float %157, float %191)
  store float %192, ptr %55, align 4, !tbaa !34
  %193 = fmul float %151, %172
  %194 = tail call float @llvm.fmuladd.f32(float %170, float %142, float %193)
  %195 = tail call float @llvm.fmuladd.f32(float %174, float %160, float %194)
  store float %195, ptr %59, align 4, !tbaa !34
  %196 = fmul float %154, %172
  %197 = tail call float @llvm.fmuladd.f32(float %170, float %145, float %196)
  %198 = tail call float @llvm.fmuladd.f32(float %174, float %163, float %197)
  store float %198, ptr %63, align 4, !tbaa !34
  %199 = fmul float %148, %178
  %200 = tail call float @llvm.fmuladd.f32(float %176, float %139, float %199)
  %201 = tail call float @llvm.fmuladd.f32(float %180, float %157, float %200)
  store float %201, ptr %67, align 4, !tbaa !34
  %202 = fmul float %151, %178
  %203 = tail call float @llvm.fmuladd.f32(float %176, float %142, float %202)
  %204 = tail call float @llvm.fmuladd.f32(float %180, float %160, float %203)
  store float %204, ptr %71, align 4, !tbaa !34
  %205 = fmul float %154, %178
  %206 = tail call float @llvm.fmuladd.f32(float %176, float %145, float %205)
  %207 = tail call float @llvm.fmuladd.f32(float %180, float %163, float %206)
  store float %207, ptr %75, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_va_mul_m3_series_7(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6) local_unnamed_addr #2 {
  %8 = load float, ptr %2, align 4
  %9 = getelementptr inbounds i8, ptr %2, i64 4
  %10 = load float, ptr %9, align 4
  %11 = getelementptr inbounds i8, ptr %2, i64 8
  %12 = load float, ptr %11, align 4
  %13 = getelementptr inbounds i8, ptr %2, i64 12
  %14 = load float, ptr %13, align 4
  %15 = getelementptr inbounds i8, ptr %2, i64 16
  %16 = load float, ptr %15, align 4
  %17 = getelementptr inbounds i8, ptr %2, i64 20
  %18 = load float, ptr %17, align 4
  %19 = getelementptr inbounds i8, ptr %2, i64 24
  %20 = load float, ptr %19, align 4
  %21 = getelementptr inbounds i8, ptr %2, i64 28
  %22 = load float, ptr %21, align 4
  %23 = getelementptr inbounds i8, ptr %2, i64 32
  %24 = load float, ptr %23, align 4
  %25 = load float, ptr %1, align 4
  %26 = getelementptr inbounds i8, ptr %1, i64 4
  %27 = load float, ptr %26, align 4
  %28 = getelementptr inbounds i8, ptr %1, i64 8
  %29 = load float, ptr %28, align 4
  %30 = getelementptr inbounds i8, ptr %1, i64 12
  %31 = load float, ptr %30, align 4
  %32 = getelementptr inbounds i8, ptr %1, i64 16
  %33 = load float, ptr %32, align 4
  %34 = getelementptr inbounds i8, ptr %1, i64 20
  %35 = load float, ptr %34, align 4
  %36 = getelementptr inbounds i8, ptr %1, i64 24
  %37 = load float, ptr %36, align 4
  %38 = getelementptr inbounds i8, ptr %1, i64 28
  %39 = load float, ptr %38, align 4
  %40 = getelementptr inbounds i8, ptr %1, i64 32
  %41 = load float, ptr %40, align 4
  %42 = fmul float %10, %31
  %43 = tail call float @llvm.fmuladd.f32(float %8, float %25, float %42)
  %44 = tail call float @llvm.fmuladd.f32(float %12, float %37, float %43)
  store float %44, ptr %0, align 4, !tbaa !34
  %45 = fmul float %10, %33
  %46 = tail call float @llvm.fmuladd.f32(float %8, float %27, float %45)
  %47 = tail call float @llvm.fmuladd.f32(float %12, float %39, float %46)
  %48 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float %47, ptr %48, align 4, !tbaa !34
  %49 = fmul float %10, %35
  %50 = tail call float @llvm.fmuladd.f32(float %8, float %29, float %49)
  %51 = tail call float @llvm.fmuladd.f32(float %12, float %41, float %50)
  %52 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %51, ptr %52, align 4, !tbaa !34
  %53 = fmul float %16, %31
  %54 = tail call float @llvm.fmuladd.f32(float %14, float %25, float %53)
  %55 = tail call float @llvm.fmuladd.f32(float %18, float %37, float %54)
  %56 = getelementptr inbounds [3 x float], ptr %0, i64 1
  store float %55, ptr %56, align 4, !tbaa !34
  %57 = fmul float %16, %33
  %58 = tail call float @llvm.fmuladd.f32(float %14, float %27, float %57)
  %59 = tail call float @llvm.fmuladd.f32(float %18, float %39, float %58)
  %60 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %59, ptr %60, align 4, !tbaa !34
  %61 = fmul float %16, %35
  %62 = tail call float @llvm.fmuladd.f32(float %14, float %29, float %61)
  %63 = tail call float @llvm.fmuladd.f32(float %18, float %41, float %62)
  %64 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float %63, ptr %64, align 4, !tbaa !34
  %65 = fmul float %22, %31
  %66 = tail call float @llvm.fmuladd.f32(float %20, float %25, float %65)
  %67 = tail call float @llvm.fmuladd.f32(float %24, float %37, float %66)
  %68 = getelementptr inbounds [3 x float], ptr %0, i64 2
  store float %67, ptr %68, align 4, !tbaa !34
  %69 = fmul float %22, %33
  %70 = tail call float @llvm.fmuladd.f32(float %20, float %27, float %69)
  %71 = tail call float @llvm.fmuladd.f32(float %24, float %39, float %70)
  %72 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float %71, ptr %72, align 4, !tbaa !34
  %73 = fmul float %22, %35
  %74 = tail call float @llvm.fmuladd.f32(float %20, float %29, float %73)
  %75 = tail call float @llvm.fmuladd.f32(float %24, float %41, float %74)
  %76 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %75, ptr %76, align 4, !tbaa !34
  %77 = load float, ptr %3, align 4
  %78 = getelementptr inbounds i8, ptr %3, i64 4
  %79 = load float, ptr %78, align 4
  %80 = getelementptr inbounds i8, ptr %3, i64 8
  %81 = load float, ptr %80, align 4
  %82 = getelementptr inbounds i8, ptr %3, i64 12
  %83 = load float, ptr %82, align 4
  %84 = getelementptr inbounds i8, ptr %3, i64 16
  %85 = load float, ptr %84, align 4
  %86 = getelementptr inbounds i8, ptr %3, i64 20
  %87 = load float, ptr %86, align 4
  %88 = getelementptr inbounds i8, ptr %3, i64 24
  %89 = load float, ptr %88, align 4
  %90 = getelementptr inbounds i8, ptr %3, i64 28
  %91 = load float, ptr %90, align 4
  %92 = getelementptr inbounds i8, ptr %3, i64 32
  %93 = load float, ptr %92, align 4
  %94 = fmul float %55, %79
  %95 = tail call float @llvm.fmuladd.f32(float %77, float %44, float %94)
  %96 = tail call float @llvm.fmuladd.f32(float %81, float %67, float %95)
  store float %96, ptr %0, align 4, !tbaa !34
  %97 = fmul float %59, %79
  %98 = tail call float @llvm.fmuladd.f32(float %77, float %47, float %97)
  %99 = tail call float @llvm.fmuladd.f32(float %81, float %71, float %98)
  store float %99, ptr %48, align 4, !tbaa !34
  %100 = fmul float %63, %79
  %101 = tail call float @llvm.fmuladd.f32(float %77, float %51, float %100)
  %102 = tail call float @llvm.fmuladd.f32(float %81, float %75, float %101)
  store float %102, ptr %52, align 4, !tbaa !34
  %103 = fmul float %55, %85
  %104 = tail call float @llvm.fmuladd.f32(float %83, float %44, float %103)
  %105 = tail call float @llvm.fmuladd.f32(float %87, float %67, float %104)
  store float %105, ptr %56, align 4, !tbaa !34
  %106 = fmul float %59, %85
  %107 = tail call float @llvm.fmuladd.f32(float %83, float %47, float %106)
  %108 = tail call float @llvm.fmuladd.f32(float %87, float %71, float %107)
  store float %108, ptr %60, align 4, !tbaa !34
  %109 = fmul float %63, %85
  %110 = tail call float @llvm.fmuladd.f32(float %83, float %51, float %109)
  %111 = tail call float @llvm.fmuladd.f32(float %87, float %75, float %110)
  store float %111, ptr %64, align 4, !tbaa !34
  %112 = fmul float %55, %91
  %113 = tail call float @llvm.fmuladd.f32(float %89, float %44, float %112)
  %114 = tail call float @llvm.fmuladd.f32(float %93, float %67, float %113)
  store float %114, ptr %68, align 4, !tbaa !34
  %115 = fmul float %59, %91
  %116 = tail call float @llvm.fmuladd.f32(float %89, float %47, float %115)
  %117 = tail call float @llvm.fmuladd.f32(float %93, float %71, float %116)
  store float %117, ptr %72, align 4, !tbaa !34
  %118 = fmul float %63, %91
  %119 = tail call float @llvm.fmuladd.f32(float %89, float %51, float %118)
  %120 = tail call float @llvm.fmuladd.f32(float %93, float %75, float %119)
  store float %120, ptr %76, align 4, !tbaa !34
  %121 = load float, ptr %4, align 4
  %122 = getelementptr inbounds i8, ptr %4, i64 4
  %123 = load float, ptr %122, align 4
  %124 = getelementptr inbounds i8, ptr %4, i64 8
  %125 = load float, ptr %124, align 4
  %126 = getelementptr inbounds i8, ptr %4, i64 12
  %127 = load float, ptr %126, align 4
  %128 = getelementptr inbounds i8, ptr %4, i64 16
  %129 = load float, ptr %128, align 4
  %130 = getelementptr inbounds i8, ptr %4, i64 20
  %131 = load float, ptr %130, align 4
  %132 = getelementptr inbounds i8, ptr %4, i64 24
  %133 = load float, ptr %132, align 4
  %134 = getelementptr inbounds i8, ptr %4, i64 28
  %135 = load float, ptr %134, align 4
  %136 = getelementptr inbounds i8, ptr %4, i64 32
  %137 = load float, ptr %136, align 4
  %138 = fmul float %105, %123
  %139 = tail call float @llvm.fmuladd.f32(float %121, float %96, float %138)
  %140 = tail call float @llvm.fmuladd.f32(float %125, float %114, float %139)
  store float %140, ptr %0, align 4, !tbaa !34
  %141 = fmul float %108, %123
  %142 = tail call float @llvm.fmuladd.f32(float %121, float %99, float %141)
  %143 = tail call float @llvm.fmuladd.f32(float %125, float %117, float %142)
  store float %143, ptr %48, align 4, !tbaa !34
  %144 = fmul float %111, %123
  %145 = tail call float @llvm.fmuladd.f32(float %121, float %102, float %144)
  %146 = tail call float @llvm.fmuladd.f32(float %125, float %120, float %145)
  store float %146, ptr %52, align 4, !tbaa !34
  %147 = fmul float %105, %129
  %148 = tail call float @llvm.fmuladd.f32(float %127, float %96, float %147)
  %149 = tail call float @llvm.fmuladd.f32(float %131, float %114, float %148)
  store float %149, ptr %56, align 4, !tbaa !34
  %150 = fmul float %108, %129
  %151 = tail call float @llvm.fmuladd.f32(float %127, float %99, float %150)
  %152 = tail call float @llvm.fmuladd.f32(float %131, float %117, float %151)
  store float %152, ptr %60, align 4, !tbaa !34
  %153 = fmul float %111, %129
  %154 = tail call float @llvm.fmuladd.f32(float %127, float %102, float %153)
  %155 = tail call float @llvm.fmuladd.f32(float %131, float %120, float %154)
  store float %155, ptr %64, align 4, !tbaa !34
  %156 = fmul float %105, %135
  %157 = tail call float @llvm.fmuladd.f32(float %133, float %96, float %156)
  %158 = tail call float @llvm.fmuladd.f32(float %137, float %114, float %157)
  store float %158, ptr %68, align 4, !tbaa !34
  %159 = fmul float %108, %135
  %160 = tail call float @llvm.fmuladd.f32(float %133, float %99, float %159)
  %161 = tail call float @llvm.fmuladd.f32(float %137, float %117, float %160)
  store float %161, ptr %72, align 4, !tbaa !34
  %162 = fmul float %111, %135
  %163 = tail call float @llvm.fmuladd.f32(float %133, float %102, float %162)
  %164 = tail call float @llvm.fmuladd.f32(float %137, float %120, float %163)
  store float %164, ptr %76, align 4, !tbaa !34
  %165 = load float, ptr %5, align 4
  %166 = getelementptr inbounds i8, ptr %5, i64 4
  %167 = load float, ptr %166, align 4
  %168 = getelementptr inbounds i8, ptr %5, i64 8
  %169 = load float, ptr %168, align 4
  %170 = getelementptr inbounds i8, ptr %5, i64 12
  %171 = load float, ptr %170, align 4
  %172 = getelementptr inbounds i8, ptr %5, i64 16
  %173 = load float, ptr %172, align 4
  %174 = getelementptr inbounds i8, ptr %5, i64 20
  %175 = load float, ptr %174, align 4
  %176 = getelementptr inbounds i8, ptr %5, i64 24
  %177 = load float, ptr %176, align 4
  %178 = getelementptr inbounds i8, ptr %5, i64 28
  %179 = load float, ptr %178, align 4
  %180 = getelementptr inbounds i8, ptr %5, i64 32
  %181 = load float, ptr %180, align 4
  %182 = fmul float %149, %167
  %183 = tail call float @llvm.fmuladd.f32(float %165, float %140, float %182)
  %184 = tail call float @llvm.fmuladd.f32(float %169, float %158, float %183)
  store float %184, ptr %0, align 4, !tbaa !34
  %185 = fmul float %152, %167
  %186 = tail call float @llvm.fmuladd.f32(float %165, float %143, float %185)
  %187 = tail call float @llvm.fmuladd.f32(float %169, float %161, float %186)
  store float %187, ptr %48, align 4, !tbaa !34
  %188 = fmul float %155, %167
  %189 = tail call float @llvm.fmuladd.f32(float %165, float %146, float %188)
  %190 = tail call float @llvm.fmuladd.f32(float %169, float %164, float %189)
  store float %190, ptr %52, align 4, !tbaa !34
  %191 = fmul float %149, %173
  %192 = tail call float @llvm.fmuladd.f32(float %171, float %140, float %191)
  %193 = tail call float @llvm.fmuladd.f32(float %175, float %158, float %192)
  store float %193, ptr %56, align 4, !tbaa !34
  %194 = fmul float %152, %173
  %195 = tail call float @llvm.fmuladd.f32(float %171, float %143, float %194)
  %196 = tail call float @llvm.fmuladd.f32(float %175, float %161, float %195)
  store float %196, ptr %60, align 4, !tbaa !34
  %197 = fmul float %155, %173
  %198 = tail call float @llvm.fmuladd.f32(float %171, float %146, float %197)
  %199 = tail call float @llvm.fmuladd.f32(float %175, float %164, float %198)
  store float %199, ptr %64, align 4, !tbaa !34
  %200 = fmul float %149, %179
  %201 = tail call float @llvm.fmuladd.f32(float %177, float %140, float %200)
  %202 = tail call float @llvm.fmuladd.f32(float %181, float %158, float %201)
  store float %202, ptr %68, align 4, !tbaa !34
  %203 = fmul float %152, %179
  %204 = tail call float @llvm.fmuladd.f32(float %177, float %143, float %203)
  %205 = tail call float @llvm.fmuladd.f32(float %181, float %161, float %204)
  store float %205, ptr %72, align 4, !tbaa !34
  %206 = fmul float %155, %179
  %207 = tail call float @llvm.fmuladd.f32(float %177, float %146, float %206)
  %208 = tail call float @llvm.fmuladd.f32(float %181, float %164, float %207)
  store float %208, ptr %76, align 4, !tbaa !34
  %209 = load float, ptr %6, align 4
  %210 = getelementptr inbounds i8, ptr %6, i64 4
  %211 = load float, ptr %210, align 4
  %212 = getelementptr inbounds i8, ptr %6, i64 8
  %213 = load float, ptr %212, align 4
  %214 = getelementptr inbounds i8, ptr %6, i64 12
  %215 = load float, ptr %214, align 4
  %216 = getelementptr inbounds i8, ptr %6, i64 16
  %217 = load float, ptr %216, align 4
  %218 = getelementptr inbounds i8, ptr %6, i64 20
  %219 = load float, ptr %218, align 4
  %220 = getelementptr inbounds i8, ptr %6, i64 24
  %221 = load float, ptr %220, align 4
  %222 = getelementptr inbounds i8, ptr %6, i64 28
  %223 = load float, ptr %222, align 4
  %224 = getelementptr inbounds i8, ptr %6, i64 32
  %225 = load float, ptr %224, align 4
  %226 = fmul float %193, %211
  %227 = tail call float @llvm.fmuladd.f32(float %209, float %184, float %226)
  %228 = tail call float @llvm.fmuladd.f32(float %213, float %202, float %227)
  store float %228, ptr %0, align 4, !tbaa !34
  %229 = fmul float %196, %211
  %230 = tail call float @llvm.fmuladd.f32(float %209, float %187, float %229)
  %231 = tail call float @llvm.fmuladd.f32(float %213, float %205, float %230)
  store float %231, ptr %48, align 4, !tbaa !34
  %232 = fmul float %199, %211
  %233 = tail call float @llvm.fmuladd.f32(float %209, float %190, float %232)
  %234 = tail call float @llvm.fmuladd.f32(float %213, float %208, float %233)
  store float %234, ptr %52, align 4, !tbaa !34
  %235 = fmul float %193, %217
  %236 = tail call float @llvm.fmuladd.f32(float %215, float %184, float %235)
  %237 = tail call float @llvm.fmuladd.f32(float %219, float %202, float %236)
  store float %237, ptr %56, align 4, !tbaa !34
  %238 = fmul float %196, %217
  %239 = tail call float @llvm.fmuladd.f32(float %215, float %187, float %238)
  %240 = tail call float @llvm.fmuladd.f32(float %219, float %205, float %239)
  store float %240, ptr %60, align 4, !tbaa !34
  %241 = fmul float %199, %217
  %242 = tail call float @llvm.fmuladd.f32(float %215, float %190, float %241)
  %243 = tail call float @llvm.fmuladd.f32(float %219, float %208, float %242)
  store float %243, ptr %64, align 4, !tbaa !34
  %244 = fmul float %193, %223
  %245 = tail call float @llvm.fmuladd.f32(float %221, float %184, float %244)
  %246 = tail call float @llvm.fmuladd.f32(float %225, float %202, float %245)
  store float %246, ptr %68, align 4, !tbaa !34
  %247 = fmul float %196, %223
  %248 = tail call float @llvm.fmuladd.f32(float %221, float %187, float %247)
  %249 = tail call float @llvm.fmuladd.f32(float %225, float %205, float %248)
  store float %249, ptr %72, align 4, !tbaa !34
  %250 = fmul float %199, %223
  %251 = tail call float @llvm.fmuladd.f32(float %221, float %190, float %250)
  %252 = tail call float @llvm.fmuladd.f32(float %225, float %208, float %251)
  store float %252, ptr %76, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_va_mul_m3_series_8(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7) local_unnamed_addr #2 {
  %9 = load float, ptr %2, align 4
  %10 = getelementptr inbounds i8, ptr %2, i64 4
  %11 = load float, ptr %10, align 4
  %12 = getelementptr inbounds i8, ptr %2, i64 8
  %13 = load float, ptr %12, align 4
  %14 = getelementptr inbounds i8, ptr %2, i64 12
  %15 = load float, ptr %14, align 4
  %16 = getelementptr inbounds i8, ptr %2, i64 16
  %17 = load float, ptr %16, align 4
  %18 = getelementptr inbounds i8, ptr %2, i64 20
  %19 = load float, ptr %18, align 4
  %20 = getelementptr inbounds i8, ptr %2, i64 24
  %21 = load float, ptr %20, align 4
  %22 = getelementptr inbounds i8, ptr %2, i64 28
  %23 = load float, ptr %22, align 4
  %24 = getelementptr inbounds i8, ptr %2, i64 32
  %25 = load float, ptr %24, align 4
  %26 = load float, ptr %1, align 4
  %27 = getelementptr inbounds i8, ptr %1, i64 4
  %28 = load float, ptr %27, align 4
  %29 = getelementptr inbounds i8, ptr %1, i64 8
  %30 = load float, ptr %29, align 4
  %31 = getelementptr inbounds i8, ptr %1, i64 12
  %32 = load float, ptr %31, align 4
  %33 = getelementptr inbounds i8, ptr %1, i64 16
  %34 = load float, ptr %33, align 4
  %35 = getelementptr inbounds i8, ptr %1, i64 20
  %36 = load float, ptr %35, align 4
  %37 = getelementptr inbounds i8, ptr %1, i64 24
  %38 = load float, ptr %37, align 4
  %39 = getelementptr inbounds i8, ptr %1, i64 28
  %40 = load float, ptr %39, align 4
  %41 = getelementptr inbounds i8, ptr %1, i64 32
  %42 = load float, ptr %41, align 4
  %43 = fmul float %11, %32
  %44 = tail call float @llvm.fmuladd.f32(float %9, float %26, float %43)
  %45 = tail call float @llvm.fmuladd.f32(float %13, float %38, float %44)
  store float %45, ptr %0, align 4, !tbaa !34
  %46 = fmul float %11, %34
  %47 = tail call float @llvm.fmuladd.f32(float %9, float %28, float %46)
  %48 = tail call float @llvm.fmuladd.f32(float %13, float %40, float %47)
  %49 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float %48, ptr %49, align 4, !tbaa !34
  %50 = fmul float %11, %36
  %51 = tail call float @llvm.fmuladd.f32(float %9, float %30, float %50)
  %52 = tail call float @llvm.fmuladd.f32(float %13, float %42, float %51)
  %53 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %52, ptr %53, align 4, !tbaa !34
  %54 = fmul float %17, %32
  %55 = tail call float @llvm.fmuladd.f32(float %15, float %26, float %54)
  %56 = tail call float @llvm.fmuladd.f32(float %19, float %38, float %55)
  %57 = getelementptr inbounds [3 x float], ptr %0, i64 1
  store float %56, ptr %57, align 4, !tbaa !34
  %58 = fmul float %17, %34
  %59 = tail call float @llvm.fmuladd.f32(float %15, float %28, float %58)
  %60 = tail call float @llvm.fmuladd.f32(float %19, float %40, float %59)
  %61 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %60, ptr %61, align 4, !tbaa !34
  %62 = fmul float %17, %36
  %63 = tail call float @llvm.fmuladd.f32(float %15, float %30, float %62)
  %64 = tail call float @llvm.fmuladd.f32(float %19, float %42, float %63)
  %65 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float %64, ptr %65, align 4, !tbaa !34
  %66 = fmul float %23, %32
  %67 = tail call float @llvm.fmuladd.f32(float %21, float %26, float %66)
  %68 = tail call float @llvm.fmuladd.f32(float %25, float %38, float %67)
  %69 = getelementptr inbounds [3 x float], ptr %0, i64 2
  store float %68, ptr %69, align 4, !tbaa !34
  %70 = fmul float %23, %34
  %71 = tail call float @llvm.fmuladd.f32(float %21, float %28, float %70)
  %72 = tail call float @llvm.fmuladd.f32(float %25, float %40, float %71)
  %73 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float %72, ptr %73, align 4, !tbaa !34
  %74 = fmul float %23, %36
  %75 = tail call float @llvm.fmuladd.f32(float %21, float %30, float %74)
  %76 = tail call float @llvm.fmuladd.f32(float %25, float %42, float %75)
  %77 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %76, ptr %77, align 4, !tbaa !34
  %78 = load float, ptr %3, align 4
  %79 = getelementptr inbounds i8, ptr %3, i64 4
  %80 = load float, ptr %79, align 4
  %81 = getelementptr inbounds i8, ptr %3, i64 8
  %82 = load float, ptr %81, align 4
  %83 = getelementptr inbounds i8, ptr %3, i64 12
  %84 = load float, ptr %83, align 4
  %85 = getelementptr inbounds i8, ptr %3, i64 16
  %86 = load float, ptr %85, align 4
  %87 = getelementptr inbounds i8, ptr %3, i64 20
  %88 = load float, ptr %87, align 4
  %89 = getelementptr inbounds i8, ptr %3, i64 24
  %90 = load float, ptr %89, align 4
  %91 = getelementptr inbounds i8, ptr %3, i64 28
  %92 = load float, ptr %91, align 4
  %93 = getelementptr inbounds i8, ptr %3, i64 32
  %94 = load float, ptr %93, align 4
  %95 = fmul float %56, %80
  %96 = tail call float @llvm.fmuladd.f32(float %78, float %45, float %95)
  %97 = tail call float @llvm.fmuladd.f32(float %82, float %68, float %96)
  store float %97, ptr %0, align 4, !tbaa !34
  %98 = fmul float %60, %80
  %99 = tail call float @llvm.fmuladd.f32(float %78, float %48, float %98)
  %100 = tail call float @llvm.fmuladd.f32(float %82, float %72, float %99)
  store float %100, ptr %49, align 4, !tbaa !34
  %101 = fmul float %64, %80
  %102 = tail call float @llvm.fmuladd.f32(float %78, float %52, float %101)
  %103 = tail call float @llvm.fmuladd.f32(float %82, float %76, float %102)
  store float %103, ptr %53, align 4, !tbaa !34
  %104 = fmul float %56, %86
  %105 = tail call float @llvm.fmuladd.f32(float %84, float %45, float %104)
  %106 = tail call float @llvm.fmuladd.f32(float %88, float %68, float %105)
  store float %106, ptr %57, align 4, !tbaa !34
  %107 = fmul float %60, %86
  %108 = tail call float @llvm.fmuladd.f32(float %84, float %48, float %107)
  %109 = tail call float @llvm.fmuladd.f32(float %88, float %72, float %108)
  store float %109, ptr %61, align 4, !tbaa !34
  %110 = fmul float %64, %86
  %111 = tail call float @llvm.fmuladd.f32(float %84, float %52, float %110)
  %112 = tail call float @llvm.fmuladd.f32(float %88, float %76, float %111)
  store float %112, ptr %65, align 4, !tbaa !34
  %113 = fmul float %56, %92
  %114 = tail call float @llvm.fmuladd.f32(float %90, float %45, float %113)
  %115 = tail call float @llvm.fmuladd.f32(float %94, float %68, float %114)
  store float %115, ptr %69, align 4, !tbaa !34
  %116 = fmul float %60, %92
  %117 = tail call float @llvm.fmuladd.f32(float %90, float %48, float %116)
  %118 = tail call float @llvm.fmuladd.f32(float %94, float %72, float %117)
  store float %118, ptr %73, align 4, !tbaa !34
  %119 = fmul float %64, %92
  %120 = tail call float @llvm.fmuladd.f32(float %90, float %52, float %119)
  %121 = tail call float @llvm.fmuladd.f32(float %94, float %76, float %120)
  store float %121, ptr %77, align 4, !tbaa !34
  %122 = load float, ptr %4, align 4
  %123 = getelementptr inbounds i8, ptr %4, i64 4
  %124 = load float, ptr %123, align 4
  %125 = getelementptr inbounds i8, ptr %4, i64 8
  %126 = load float, ptr %125, align 4
  %127 = getelementptr inbounds i8, ptr %4, i64 12
  %128 = load float, ptr %127, align 4
  %129 = getelementptr inbounds i8, ptr %4, i64 16
  %130 = load float, ptr %129, align 4
  %131 = getelementptr inbounds i8, ptr %4, i64 20
  %132 = load float, ptr %131, align 4
  %133 = getelementptr inbounds i8, ptr %4, i64 24
  %134 = load float, ptr %133, align 4
  %135 = getelementptr inbounds i8, ptr %4, i64 28
  %136 = load float, ptr %135, align 4
  %137 = getelementptr inbounds i8, ptr %4, i64 32
  %138 = load float, ptr %137, align 4
  %139 = fmul float %106, %124
  %140 = tail call float @llvm.fmuladd.f32(float %122, float %97, float %139)
  %141 = tail call float @llvm.fmuladd.f32(float %126, float %115, float %140)
  store float %141, ptr %0, align 4, !tbaa !34
  %142 = fmul float %109, %124
  %143 = tail call float @llvm.fmuladd.f32(float %122, float %100, float %142)
  %144 = tail call float @llvm.fmuladd.f32(float %126, float %118, float %143)
  store float %144, ptr %49, align 4, !tbaa !34
  %145 = fmul float %112, %124
  %146 = tail call float @llvm.fmuladd.f32(float %122, float %103, float %145)
  %147 = tail call float @llvm.fmuladd.f32(float %126, float %121, float %146)
  store float %147, ptr %53, align 4, !tbaa !34
  %148 = fmul float %106, %130
  %149 = tail call float @llvm.fmuladd.f32(float %128, float %97, float %148)
  %150 = tail call float @llvm.fmuladd.f32(float %132, float %115, float %149)
  store float %150, ptr %57, align 4, !tbaa !34
  %151 = fmul float %109, %130
  %152 = tail call float @llvm.fmuladd.f32(float %128, float %100, float %151)
  %153 = tail call float @llvm.fmuladd.f32(float %132, float %118, float %152)
  store float %153, ptr %61, align 4, !tbaa !34
  %154 = fmul float %112, %130
  %155 = tail call float @llvm.fmuladd.f32(float %128, float %103, float %154)
  %156 = tail call float @llvm.fmuladd.f32(float %132, float %121, float %155)
  store float %156, ptr %65, align 4, !tbaa !34
  %157 = fmul float %106, %136
  %158 = tail call float @llvm.fmuladd.f32(float %134, float %97, float %157)
  %159 = tail call float @llvm.fmuladd.f32(float %138, float %115, float %158)
  store float %159, ptr %69, align 4, !tbaa !34
  %160 = fmul float %109, %136
  %161 = tail call float @llvm.fmuladd.f32(float %134, float %100, float %160)
  %162 = tail call float @llvm.fmuladd.f32(float %138, float %118, float %161)
  store float %162, ptr %73, align 4, !tbaa !34
  %163 = fmul float %112, %136
  %164 = tail call float @llvm.fmuladd.f32(float %134, float %103, float %163)
  %165 = tail call float @llvm.fmuladd.f32(float %138, float %121, float %164)
  store float %165, ptr %77, align 4, !tbaa !34
  %166 = load float, ptr %5, align 4
  %167 = getelementptr inbounds i8, ptr %5, i64 4
  %168 = load float, ptr %167, align 4
  %169 = getelementptr inbounds i8, ptr %5, i64 8
  %170 = load float, ptr %169, align 4
  %171 = getelementptr inbounds i8, ptr %5, i64 12
  %172 = load float, ptr %171, align 4
  %173 = getelementptr inbounds i8, ptr %5, i64 16
  %174 = load float, ptr %173, align 4
  %175 = getelementptr inbounds i8, ptr %5, i64 20
  %176 = load float, ptr %175, align 4
  %177 = getelementptr inbounds i8, ptr %5, i64 24
  %178 = load float, ptr %177, align 4
  %179 = getelementptr inbounds i8, ptr %5, i64 28
  %180 = load float, ptr %179, align 4
  %181 = getelementptr inbounds i8, ptr %5, i64 32
  %182 = load float, ptr %181, align 4
  %183 = fmul float %150, %168
  %184 = tail call float @llvm.fmuladd.f32(float %166, float %141, float %183)
  %185 = tail call float @llvm.fmuladd.f32(float %170, float %159, float %184)
  store float %185, ptr %0, align 4, !tbaa !34
  %186 = fmul float %153, %168
  %187 = tail call float @llvm.fmuladd.f32(float %166, float %144, float %186)
  %188 = tail call float @llvm.fmuladd.f32(float %170, float %162, float %187)
  store float %188, ptr %49, align 4, !tbaa !34
  %189 = fmul float %156, %168
  %190 = tail call float @llvm.fmuladd.f32(float %166, float %147, float %189)
  %191 = tail call float @llvm.fmuladd.f32(float %170, float %165, float %190)
  store float %191, ptr %53, align 4, !tbaa !34
  %192 = fmul float %150, %174
  %193 = tail call float @llvm.fmuladd.f32(float %172, float %141, float %192)
  %194 = tail call float @llvm.fmuladd.f32(float %176, float %159, float %193)
  store float %194, ptr %57, align 4, !tbaa !34
  %195 = fmul float %153, %174
  %196 = tail call float @llvm.fmuladd.f32(float %172, float %144, float %195)
  %197 = tail call float @llvm.fmuladd.f32(float %176, float %162, float %196)
  store float %197, ptr %61, align 4, !tbaa !34
  %198 = fmul float %156, %174
  %199 = tail call float @llvm.fmuladd.f32(float %172, float %147, float %198)
  %200 = tail call float @llvm.fmuladd.f32(float %176, float %165, float %199)
  store float %200, ptr %65, align 4, !tbaa !34
  %201 = fmul float %150, %180
  %202 = tail call float @llvm.fmuladd.f32(float %178, float %141, float %201)
  %203 = tail call float @llvm.fmuladd.f32(float %182, float %159, float %202)
  store float %203, ptr %69, align 4, !tbaa !34
  %204 = fmul float %153, %180
  %205 = tail call float @llvm.fmuladd.f32(float %178, float %144, float %204)
  %206 = tail call float @llvm.fmuladd.f32(float %182, float %162, float %205)
  store float %206, ptr %73, align 4, !tbaa !34
  %207 = fmul float %156, %180
  %208 = tail call float @llvm.fmuladd.f32(float %178, float %147, float %207)
  %209 = tail call float @llvm.fmuladd.f32(float %182, float %165, float %208)
  store float %209, ptr %77, align 4, !tbaa !34
  %210 = load float, ptr %6, align 4
  %211 = getelementptr inbounds i8, ptr %6, i64 4
  %212 = load float, ptr %211, align 4
  %213 = getelementptr inbounds i8, ptr %6, i64 8
  %214 = load float, ptr %213, align 4
  %215 = getelementptr inbounds i8, ptr %6, i64 12
  %216 = load float, ptr %215, align 4
  %217 = getelementptr inbounds i8, ptr %6, i64 16
  %218 = load float, ptr %217, align 4
  %219 = getelementptr inbounds i8, ptr %6, i64 20
  %220 = load float, ptr %219, align 4
  %221 = getelementptr inbounds i8, ptr %6, i64 24
  %222 = load float, ptr %221, align 4
  %223 = getelementptr inbounds i8, ptr %6, i64 28
  %224 = load float, ptr %223, align 4
  %225 = getelementptr inbounds i8, ptr %6, i64 32
  %226 = load float, ptr %225, align 4
  %227 = fmul float %194, %212
  %228 = tail call float @llvm.fmuladd.f32(float %210, float %185, float %227)
  %229 = tail call float @llvm.fmuladd.f32(float %214, float %203, float %228)
  store float %229, ptr %0, align 4, !tbaa !34
  %230 = fmul float %197, %212
  %231 = tail call float @llvm.fmuladd.f32(float %210, float %188, float %230)
  %232 = tail call float @llvm.fmuladd.f32(float %214, float %206, float %231)
  store float %232, ptr %49, align 4, !tbaa !34
  %233 = fmul float %200, %212
  %234 = tail call float @llvm.fmuladd.f32(float %210, float %191, float %233)
  %235 = tail call float @llvm.fmuladd.f32(float %214, float %209, float %234)
  store float %235, ptr %53, align 4, !tbaa !34
  %236 = fmul float %194, %218
  %237 = tail call float @llvm.fmuladd.f32(float %216, float %185, float %236)
  %238 = tail call float @llvm.fmuladd.f32(float %220, float %203, float %237)
  store float %238, ptr %57, align 4, !tbaa !34
  %239 = fmul float %197, %218
  %240 = tail call float @llvm.fmuladd.f32(float %216, float %188, float %239)
  %241 = tail call float @llvm.fmuladd.f32(float %220, float %206, float %240)
  store float %241, ptr %61, align 4, !tbaa !34
  %242 = fmul float %200, %218
  %243 = tail call float @llvm.fmuladd.f32(float %216, float %191, float %242)
  %244 = tail call float @llvm.fmuladd.f32(float %220, float %209, float %243)
  store float %244, ptr %65, align 4, !tbaa !34
  %245 = fmul float %194, %224
  %246 = tail call float @llvm.fmuladd.f32(float %222, float %185, float %245)
  %247 = tail call float @llvm.fmuladd.f32(float %226, float %203, float %246)
  store float %247, ptr %69, align 4, !tbaa !34
  %248 = fmul float %197, %224
  %249 = tail call float @llvm.fmuladd.f32(float %222, float %188, float %248)
  %250 = tail call float @llvm.fmuladd.f32(float %226, float %206, float %249)
  store float %250, ptr %73, align 4, !tbaa !34
  %251 = fmul float %200, %224
  %252 = tail call float @llvm.fmuladd.f32(float %222, float %191, float %251)
  %253 = tail call float @llvm.fmuladd.f32(float %226, float %209, float %252)
  store float %253, ptr %77, align 4, !tbaa !34
  %254 = load float, ptr %7, align 4
  %255 = getelementptr inbounds i8, ptr %7, i64 4
  %256 = load float, ptr %255, align 4
  %257 = getelementptr inbounds i8, ptr %7, i64 8
  %258 = load float, ptr %257, align 4
  %259 = getelementptr inbounds i8, ptr %7, i64 12
  %260 = load float, ptr %259, align 4
  %261 = getelementptr inbounds i8, ptr %7, i64 16
  %262 = load float, ptr %261, align 4
  %263 = getelementptr inbounds i8, ptr %7, i64 20
  %264 = load float, ptr %263, align 4
  %265 = getelementptr inbounds i8, ptr %7, i64 24
  %266 = load float, ptr %265, align 4
  %267 = getelementptr inbounds i8, ptr %7, i64 28
  %268 = load float, ptr %267, align 4
  %269 = getelementptr inbounds i8, ptr %7, i64 32
  %270 = load float, ptr %269, align 4
  %271 = fmul float %238, %256
  %272 = tail call float @llvm.fmuladd.f32(float %254, float %229, float %271)
  %273 = tail call float @llvm.fmuladd.f32(float %258, float %247, float %272)
  store float %273, ptr %0, align 4, !tbaa !34
  %274 = fmul float %241, %256
  %275 = tail call float @llvm.fmuladd.f32(float %254, float %232, float %274)
  %276 = tail call float @llvm.fmuladd.f32(float %258, float %250, float %275)
  store float %276, ptr %49, align 4, !tbaa !34
  %277 = fmul float %244, %256
  %278 = tail call float @llvm.fmuladd.f32(float %254, float %235, float %277)
  %279 = tail call float @llvm.fmuladd.f32(float %258, float %253, float %278)
  store float %279, ptr %53, align 4, !tbaa !34
  %280 = fmul float %238, %262
  %281 = tail call float @llvm.fmuladd.f32(float %260, float %229, float %280)
  %282 = tail call float @llvm.fmuladd.f32(float %264, float %247, float %281)
  store float %282, ptr %57, align 4, !tbaa !34
  %283 = fmul float %241, %262
  %284 = tail call float @llvm.fmuladd.f32(float %260, float %232, float %283)
  %285 = tail call float @llvm.fmuladd.f32(float %264, float %250, float %284)
  store float %285, ptr %61, align 4, !tbaa !34
  %286 = fmul float %244, %262
  %287 = tail call float @llvm.fmuladd.f32(float %260, float %235, float %286)
  %288 = tail call float @llvm.fmuladd.f32(float %264, float %253, float %287)
  store float %288, ptr %65, align 4, !tbaa !34
  %289 = fmul float %238, %268
  %290 = tail call float @llvm.fmuladd.f32(float %266, float %229, float %289)
  %291 = tail call float @llvm.fmuladd.f32(float %270, float %247, float %290)
  store float %291, ptr %69, align 4, !tbaa !34
  %292 = fmul float %241, %268
  %293 = tail call float @llvm.fmuladd.f32(float %266, float %232, float %292)
  %294 = tail call float @llvm.fmuladd.f32(float %270, float %250, float %293)
  store float %294, ptr %73, align 4, !tbaa !34
  %295 = fmul float %244, %268
  %296 = tail call float @llvm.fmuladd.f32(float %266, float %235, float %295)
  %297 = tail call float @llvm.fmuladd.f32(float %270, float %253, float %296)
  store float %297, ptr %77, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_va_mul_m3_series_9(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, ptr nocapture noundef readonly %8) local_unnamed_addr #2 {
  %10 = load float, ptr %2, align 4
  %11 = getelementptr inbounds i8, ptr %2, i64 4
  %12 = load float, ptr %11, align 4
  %13 = getelementptr inbounds i8, ptr %2, i64 8
  %14 = load float, ptr %13, align 4
  %15 = getelementptr inbounds i8, ptr %2, i64 12
  %16 = load float, ptr %15, align 4
  %17 = getelementptr inbounds i8, ptr %2, i64 16
  %18 = load float, ptr %17, align 4
  %19 = getelementptr inbounds i8, ptr %2, i64 20
  %20 = load float, ptr %19, align 4
  %21 = getelementptr inbounds i8, ptr %2, i64 24
  %22 = load float, ptr %21, align 4
  %23 = getelementptr inbounds i8, ptr %2, i64 28
  %24 = load float, ptr %23, align 4
  %25 = getelementptr inbounds i8, ptr %2, i64 32
  %26 = load float, ptr %25, align 4
  %27 = load float, ptr %1, align 4
  %28 = getelementptr inbounds i8, ptr %1, i64 4
  %29 = load float, ptr %28, align 4
  %30 = getelementptr inbounds i8, ptr %1, i64 8
  %31 = load float, ptr %30, align 4
  %32 = getelementptr inbounds i8, ptr %1, i64 12
  %33 = load float, ptr %32, align 4
  %34 = getelementptr inbounds i8, ptr %1, i64 16
  %35 = load float, ptr %34, align 4
  %36 = getelementptr inbounds i8, ptr %1, i64 20
  %37 = load float, ptr %36, align 4
  %38 = getelementptr inbounds i8, ptr %1, i64 24
  %39 = load float, ptr %38, align 4
  %40 = getelementptr inbounds i8, ptr %1, i64 28
  %41 = load float, ptr %40, align 4
  %42 = getelementptr inbounds i8, ptr %1, i64 32
  %43 = load float, ptr %42, align 4
  %44 = fmul float %12, %33
  %45 = tail call float @llvm.fmuladd.f32(float %10, float %27, float %44)
  %46 = tail call float @llvm.fmuladd.f32(float %14, float %39, float %45)
  store float %46, ptr %0, align 4, !tbaa !34
  %47 = fmul float %12, %35
  %48 = tail call float @llvm.fmuladd.f32(float %10, float %29, float %47)
  %49 = tail call float @llvm.fmuladd.f32(float %14, float %41, float %48)
  %50 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float %49, ptr %50, align 4, !tbaa !34
  %51 = fmul float %12, %37
  %52 = tail call float @llvm.fmuladd.f32(float %10, float %31, float %51)
  %53 = tail call float @llvm.fmuladd.f32(float %14, float %43, float %52)
  %54 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %53, ptr %54, align 4, !tbaa !34
  %55 = fmul float %18, %33
  %56 = tail call float @llvm.fmuladd.f32(float %16, float %27, float %55)
  %57 = tail call float @llvm.fmuladd.f32(float %20, float %39, float %56)
  %58 = getelementptr inbounds [3 x float], ptr %0, i64 1
  store float %57, ptr %58, align 4, !tbaa !34
  %59 = fmul float %18, %35
  %60 = tail call float @llvm.fmuladd.f32(float %16, float %29, float %59)
  %61 = tail call float @llvm.fmuladd.f32(float %20, float %41, float %60)
  %62 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %61, ptr %62, align 4, !tbaa !34
  %63 = fmul float %18, %37
  %64 = tail call float @llvm.fmuladd.f32(float %16, float %31, float %63)
  %65 = tail call float @llvm.fmuladd.f32(float %20, float %43, float %64)
  %66 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float %65, ptr %66, align 4, !tbaa !34
  %67 = fmul float %24, %33
  %68 = tail call float @llvm.fmuladd.f32(float %22, float %27, float %67)
  %69 = tail call float @llvm.fmuladd.f32(float %26, float %39, float %68)
  %70 = getelementptr inbounds [3 x float], ptr %0, i64 2
  store float %69, ptr %70, align 4, !tbaa !34
  %71 = fmul float %24, %35
  %72 = tail call float @llvm.fmuladd.f32(float %22, float %29, float %71)
  %73 = tail call float @llvm.fmuladd.f32(float %26, float %41, float %72)
  %74 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float %73, ptr %74, align 4, !tbaa !34
  %75 = fmul float %24, %37
  %76 = tail call float @llvm.fmuladd.f32(float %22, float %31, float %75)
  %77 = tail call float @llvm.fmuladd.f32(float %26, float %43, float %76)
  %78 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %77, ptr %78, align 4, !tbaa !34
  %79 = load float, ptr %3, align 4
  %80 = getelementptr inbounds i8, ptr %3, i64 4
  %81 = load float, ptr %80, align 4
  %82 = getelementptr inbounds i8, ptr %3, i64 8
  %83 = load float, ptr %82, align 4
  %84 = getelementptr inbounds i8, ptr %3, i64 12
  %85 = load float, ptr %84, align 4
  %86 = getelementptr inbounds i8, ptr %3, i64 16
  %87 = load float, ptr %86, align 4
  %88 = getelementptr inbounds i8, ptr %3, i64 20
  %89 = load float, ptr %88, align 4
  %90 = getelementptr inbounds i8, ptr %3, i64 24
  %91 = load float, ptr %90, align 4
  %92 = getelementptr inbounds i8, ptr %3, i64 28
  %93 = load float, ptr %92, align 4
  %94 = getelementptr inbounds i8, ptr %3, i64 32
  %95 = load float, ptr %94, align 4
  %96 = fmul float %57, %81
  %97 = tail call float @llvm.fmuladd.f32(float %79, float %46, float %96)
  %98 = tail call float @llvm.fmuladd.f32(float %83, float %69, float %97)
  store float %98, ptr %0, align 4, !tbaa !34
  %99 = fmul float %61, %81
  %100 = tail call float @llvm.fmuladd.f32(float %79, float %49, float %99)
  %101 = tail call float @llvm.fmuladd.f32(float %83, float %73, float %100)
  store float %101, ptr %50, align 4, !tbaa !34
  %102 = fmul float %65, %81
  %103 = tail call float @llvm.fmuladd.f32(float %79, float %53, float %102)
  %104 = tail call float @llvm.fmuladd.f32(float %83, float %77, float %103)
  store float %104, ptr %54, align 4, !tbaa !34
  %105 = fmul float %57, %87
  %106 = tail call float @llvm.fmuladd.f32(float %85, float %46, float %105)
  %107 = tail call float @llvm.fmuladd.f32(float %89, float %69, float %106)
  store float %107, ptr %58, align 4, !tbaa !34
  %108 = fmul float %61, %87
  %109 = tail call float @llvm.fmuladd.f32(float %85, float %49, float %108)
  %110 = tail call float @llvm.fmuladd.f32(float %89, float %73, float %109)
  store float %110, ptr %62, align 4, !tbaa !34
  %111 = fmul float %65, %87
  %112 = tail call float @llvm.fmuladd.f32(float %85, float %53, float %111)
  %113 = tail call float @llvm.fmuladd.f32(float %89, float %77, float %112)
  store float %113, ptr %66, align 4, !tbaa !34
  %114 = fmul float %57, %93
  %115 = tail call float @llvm.fmuladd.f32(float %91, float %46, float %114)
  %116 = tail call float @llvm.fmuladd.f32(float %95, float %69, float %115)
  store float %116, ptr %70, align 4, !tbaa !34
  %117 = fmul float %61, %93
  %118 = tail call float @llvm.fmuladd.f32(float %91, float %49, float %117)
  %119 = tail call float @llvm.fmuladd.f32(float %95, float %73, float %118)
  store float %119, ptr %74, align 4, !tbaa !34
  %120 = fmul float %65, %93
  %121 = tail call float @llvm.fmuladd.f32(float %91, float %53, float %120)
  %122 = tail call float @llvm.fmuladd.f32(float %95, float %77, float %121)
  store float %122, ptr %78, align 4, !tbaa !34
  %123 = load float, ptr %4, align 4
  %124 = getelementptr inbounds i8, ptr %4, i64 4
  %125 = load float, ptr %124, align 4
  %126 = getelementptr inbounds i8, ptr %4, i64 8
  %127 = load float, ptr %126, align 4
  %128 = getelementptr inbounds i8, ptr %4, i64 12
  %129 = load float, ptr %128, align 4
  %130 = getelementptr inbounds i8, ptr %4, i64 16
  %131 = load float, ptr %130, align 4
  %132 = getelementptr inbounds i8, ptr %4, i64 20
  %133 = load float, ptr %132, align 4
  %134 = getelementptr inbounds i8, ptr %4, i64 24
  %135 = load float, ptr %134, align 4
  %136 = getelementptr inbounds i8, ptr %4, i64 28
  %137 = load float, ptr %136, align 4
  %138 = getelementptr inbounds i8, ptr %4, i64 32
  %139 = load float, ptr %138, align 4
  %140 = fmul float %107, %125
  %141 = tail call float @llvm.fmuladd.f32(float %123, float %98, float %140)
  %142 = tail call float @llvm.fmuladd.f32(float %127, float %116, float %141)
  store float %142, ptr %0, align 4, !tbaa !34
  %143 = fmul float %110, %125
  %144 = tail call float @llvm.fmuladd.f32(float %123, float %101, float %143)
  %145 = tail call float @llvm.fmuladd.f32(float %127, float %119, float %144)
  store float %145, ptr %50, align 4, !tbaa !34
  %146 = fmul float %113, %125
  %147 = tail call float @llvm.fmuladd.f32(float %123, float %104, float %146)
  %148 = tail call float @llvm.fmuladd.f32(float %127, float %122, float %147)
  store float %148, ptr %54, align 4, !tbaa !34
  %149 = fmul float %107, %131
  %150 = tail call float @llvm.fmuladd.f32(float %129, float %98, float %149)
  %151 = tail call float @llvm.fmuladd.f32(float %133, float %116, float %150)
  store float %151, ptr %58, align 4, !tbaa !34
  %152 = fmul float %110, %131
  %153 = tail call float @llvm.fmuladd.f32(float %129, float %101, float %152)
  %154 = tail call float @llvm.fmuladd.f32(float %133, float %119, float %153)
  store float %154, ptr %62, align 4, !tbaa !34
  %155 = fmul float %113, %131
  %156 = tail call float @llvm.fmuladd.f32(float %129, float %104, float %155)
  %157 = tail call float @llvm.fmuladd.f32(float %133, float %122, float %156)
  store float %157, ptr %66, align 4, !tbaa !34
  %158 = fmul float %107, %137
  %159 = tail call float @llvm.fmuladd.f32(float %135, float %98, float %158)
  %160 = tail call float @llvm.fmuladd.f32(float %139, float %116, float %159)
  store float %160, ptr %70, align 4, !tbaa !34
  %161 = fmul float %110, %137
  %162 = tail call float @llvm.fmuladd.f32(float %135, float %101, float %161)
  %163 = tail call float @llvm.fmuladd.f32(float %139, float %119, float %162)
  store float %163, ptr %74, align 4, !tbaa !34
  %164 = fmul float %113, %137
  %165 = tail call float @llvm.fmuladd.f32(float %135, float %104, float %164)
  %166 = tail call float @llvm.fmuladd.f32(float %139, float %122, float %165)
  store float %166, ptr %78, align 4, !tbaa !34
  %167 = load float, ptr %5, align 4
  %168 = getelementptr inbounds i8, ptr %5, i64 4
  %169 = load float, ptr %168, align 4
  %170 = getelementptr inbounds i8, ptr %5, i64 8
  %171 = load float, ptr %170, align 4
  %172 = getelementptr inbounds i8, ptr %5, i64 12
  %173 = load float, ptr %172, align 4
  %174 = getelementptr inbounds i8, ptr %5, i64 16
  %175 = load float, ptr %174, align 4
  %176 = getelementptr inbounds i8, ptr %5, i64 20
  %177 = load float, ptr %176, align 4
  %178 = getelementptr inbounds i8, ptr %5, i64 24
  %179 = load float, ptr %178, align 4
  %180 = getelementptr inbounds i8, ptr %5, i64 28
  %181 = load float, ptr %180, align 4
  %182 = getelementptr inbounds i8, ptr %5, i64 32
  %183 = load float, ptr %182, align 4
  %184 = fmul float %151, %169
  %185 = tail call float @llvm.fmuladd.f32(float %167, float %142, float %184)
  %186 = tail call float @llvm.fmuladd.f32(float %171, float %160, float %185)
  store float %186, ptr %0, align 4, !tbaa !34
  %187 = fmul float %154, %169
  %188 = tail call float @llvm.fmuladd.f32(float %167, float %145, float %187)
  %189 = tail call float @llvm.fmuladd.f32(float %171, float %163, float %188)
  store float %189, ptr %50, align 4, !tbaa !34
  %190 = fmul float %157, %169
  %191 = tail call float @llvm.fmuladd.f32(float %167, float %148, float %190)
  %192 = tail call float @llvm.fmuladd.f32(float %171, float %166, float %191)
  store float %192, ptr %54, align 4, !tbaa !34
  %193 = fmul float %151, %175
  %194 = tail call float @llvm.fmuladd.f32(float %173, float %142, float %193)
  %195 = tail call float @llvm.fmuladd.f32(float %177, float %160, float %194)
  store float %195, ptr %58, align 4, !tbaa !34
  %196 = fmul float %154, %175
  %197 = tail call float @llvm.fmuladd.f32(float %173, float %145, float %196)
  %198 = tail call float @llvm.fmuladd.f32(float %177, float %163, float %197)
  store float %198, ptr %62, align 4, !tbaa !34
  %199 = fmul float %157, %175
  %200 = tail call float @llvm.fmuladd.f32(float %173, float %148, float %199)
  %201 = tail call float @llvm.fmuladd.f32(float %177, float %166, float %200)
  store float %201, ptr %66, align 4, !tbaa !34
  %202 = fmul float %151, %181
  %203 = tail call float @llvm.fmuladd.f32(float %179, float %142, float %202)
  %204 = tail call float @llvm.fmuladd.f32(float %183, float %160, float %203)
  store float %204, ptr %70, align 4, !tbaa !34
  %205 = fmul float %154, %181
  %206 = tail call float @llvm.fmuladd.f32(float %179, float %145, float %205)
  %207 = tail call float @llvm.fmuladd.f32(float %183, float %163, float %206)
  store float %207, ptr %74, align 4, !tbaa !34
  %208 = fmul float %157, %181
  %209 = tail call float @llvm.fmuladd.f32(float %179, float %148, float %208)
  %210 = tail call float @llvm.fmuladd.f32(float %183, float %166, float %209)
  store float %210, ptr %78, align 4, !tbaa !34
  %211 = load float, ptr %6, align 4
  %212 = getelementptr inbounds i8, ptr %6, i64 4
  %213 = load float, ptr %212, align 4
  %214 = getelementptr inbounds i8, ptr %6, i64 8
  %215 = load float, ptr %214, align 4
  %216 = getelementptr inbounds i8, ptr %6, i64 12
  %217 = load float, ptr %216, align 4
  %218 = getelementptr inbounds i8, ptr %6, i64 16
  %219 = load float, ptr %218, align 4
  %220 = getelementptr inbounds i8, ptr %6, i64 20
  %221 = load float, ptr %220, align 4
  %222 = getelementptr inbounds i8, ptr %6, i64 24
  %223 = load float, ptr %222, align 4
  %224 = getelementptr inbounds i8, ptr %6, i64 28
  %225 = load float, ptr %224, align 4
  %226 = getelementptr inbounds i8, ptr %6, i64 32
  %227 = load float, ptr %226, align 4
  %228 = fmul float %195, %213
  %229 = tail call float @llvm.fmuladd.f32(float %211, float %186, float %228)
  %230 = tail call float @llvm.fmuladd.f32(float %215, float %204, float %229)
  store float %230, ptr %0, align 4, !tbaa !34
  %231 = fmul float %198, %213
  %232 = tail call float @llvm.fmuladd.f32(float %211, float %189, float %231)
  %233 = tail call float @llvm.fmuladd.f32(float %215, float %207, float %232)
  store float %233, ptr %50, align 4, !tbaa !34
  %234 = fmul float %201, %213
  %235 = tail call float @llvm.fmuladd.f32(float %211, float %192, float %234)
  %236 = tail call float @llvm.fmuladd.f32(float %215, float %210, float %235)
  store float %236, ptr %54, align 4, !tbaa !34
  %237 = fmul float %195, %219
  %238 = tail call float @llvm.fmuladd.f32(float %217, float %186, float %237)
  %239 = tail call float @llvm.fmuladd.f32(float %221, float %204, float %238)
  store float %239, ptr %58, align 4, !tbaa !34
  %240 = fmul float %198, %219
  %241 = tail call float @llvm.fmuladd.f32(float %217, float %189, float %240)
  %242 = tail call float @llvm.fmuladd.f32(float %221, float %207, float %241)
  store float %242, ptr %62, align 4, !tbaa !34
  %243 = fmul float %201, %219
  %244 = tail call float @llvm.fmuladd.f32(float %217, float %192, float %243)
  %245 = tail call float @llvm.fmuladd.f32(float %221, float %210, float %244)
  store float %245, ptr %66, align 4, !tbaa !34
  %246 = fmul float %195, %225
  %247 = tail call float @llvm.fmuladd.f32(float %223, float %186, float %246)
  %248 = tail call float @llvm.fmuladd.f32(float %227, float %204, float %247)
  store float %248, ptr %70, align 4, !tbaa !34
  %249 = fmul float %198, %225
  %250 = tail call float @llvm.fmuladd.f32(float %223, float %189, float %249)
  %251 = tail call float @llvm.fmuladd.f32(float %227, float %207, float %250)
  store float %251, ptr %74, align 4, !tbaa !34
  %252 = fmul float %201, %225
  %253 = tail call float @llvm.fmuladd.f32(float %223, float %192, float %252)
  %254 = tail call float @llvm.fmuladd.f32(float %227, float %210, float %253)
  store float %254, ptr %78, align 4, !tbaa !34
  %255 = load float, ptr %7, align 4
  %256 = getelementptr inbounds i8, ptr %7, i64 4
  %257 = load float, ptr %256, align 4
  %258 = getelementptr inbounds i8, ptr %7, i64 8
  %259 = load float, ptr %258, align 4
  %260 = getelementptr inbounds i8, ptr %7, i64 12
  %261 = load float, ptr %260, align 4
  %262 = getelementptr inbounds i8, ptr %7, i64 16
  %263 = load float, ptr %262, align 4
  %264 = getelementptr inbounds i8, ptr %7, i64 20
  %265 = load float, ptr %264, align 4
  %266 = getelementptr inbounds i8, ptr %7, i64 24
  %267 = load float, ptr %266, align 4
  %268 = getelementptr inbounds i8, ptr %7, i64 28
  %269 = load float, ptr %268, align 4
  %270 = getelementptr inbounds i8, ptr %7, i64 32
  %271 = load float, ptr %270, align 4
  %272 = fmul float %239, %257
  %273 = tail call float @llvm.fmuladd.f32(float %255, float %230, float %272)
  %274 = tail call float @llvm.fmuladd.f32(float %259, float %248, float %273)
  store float %274, ptr %0, align 4, !tbaa !34
  %275 = fmul float %242, %257
  %276 = tail call float @llvm.fmuladd.f32(float %255, float %233, float %275)
  %277 = tail call float @llvm.fmuladd.f32(float %259, float %251, float %276)
  store float %277, ptr %50, align 4, !tbaa !34
  %278 = fmul float %245, %257
  %279 = tail call float @llvm.fmuladd.f32(float %255, float %236, float %278)
  %280 = tail call float @llvm.fmuladd.f32(float %259, float %254, float %279)
  store float %280, ptr %54, align 4, !tbaa !34
  %281 = fmul float %239, %263
  %282 = tail call float @llvm.fmuladd.f32(float %261, float %230, float %281)
  %283 = tail call float @llvm.fmuladd.f32(float %265, float %248, float %282)
  store float %283, ptr %58, align 4, !tbaa !34
  %284 = fmul float %242, %263
  %285 = tail call float @llvm.fmuladd.f32(float %261, float %233, float %284)
  %286 = tail call float @llvm.fmuladd.f32(float %265, float %251, float %285)
  store float %286, ptr %62, align 4, !tbaa !34
  %287 = fmul float %245, %263
  %288 = tail call float @llvm.fmuladd.f32(float %261, float %236, float %287)
  %289 = tail call float @llvm.fmuladd.f32(float %265, float %254, float %288)
  store float %289, ptr %66, align 4, !tbaa !34
  %290 = fmul float %239, %269
  %291 = tail call float @llvm.fmuladd.f32(float %267, float %230, float %290)
  %292 = tail call float @llvm.fmuladd.f32(float %271, float %248, float %291)
  store float %292, ptr %70, align 4, !tbaa !34
  %293 = fmul float %242, %269
  %294 = tail call float @llvm.fmuladd.f32(float %267, float %233, float %293)
  %295 = tail call float @llvm.fmuladd.f32(float %271, float %251, float %294)
  store float %295, ptr %74, align 4, !tbaa !34
  %296 = fmul float %245, %269
  %297 = tail call float @llvm.fmuladd.f32(float %267, float %236, float %296)
  %298 = tail call float @llvm.fmuladd.f32(float %271, float %254, float %297)
  store float %298, ptr %78, align 4, !tbaa !34
  %299 = load float, ptr %8, align 4
  %300 = getelementptr inbounds i8, ptr %8, i64 4
  %301 = load float, ptr %300, align 4
  %302 = getelementptr inbounds i8, ptr %8, i64 8
  %303 = load float, ptr %302, align 4
  %304 = getelementptr inbounds i8, ptr %8, i64 12
  %305 = load float, ptr %304, align 4
  %306 = getelementptr inbounds i8, ptr %8, i64 16
  %307 = load float, ptr %306, align 4
  %308 = getelementptr inbounds i8, ptr %8, i64 20
  %309 = load float, ptr %308, align 4
  %310 = getelementptr inbounds i8, ptr %8, i64 24
  %311 = load float, ptr %310, align 4
  %312 = getelementptr inbounds i8, ptr %8, i64 28
  %313 = load float, ptr %312, align 4
  %314 = getelementptr inbounds i8, ptr %8, i64 32
  %315 = load float, ptr %314, align 4
  %316 = fmul float %283, %301
  %317 = tail call float @llvm.fmuladd.f32(float %299, float %274, float %316)
  %318 = tail call float @llvm.fmuladd.f32(float %303, float %292, float %317)
  store float %318, ptr %0, align 4, !tbaa !34
  %319 = fmul float %286, %301
  %320 = tail call float @llvm.fmuladd.f32(float %299, float %277, float %319)
  %321 = tail call float @llvm.fmuladd.f32(float %303, float %295, float %320)
  store float %321, ptr %50, align 4, !tbaa !34
  %322 = fmul float %289, %301
  %323 = tail call float @llvm.fmuladd.f32(float %299, float %280, float %322)
  %324 = tail call float @llvm.fmuladd.f32(float %303, float %298, float %323)
  store float %324, ptr %54, align 4, !tbaa !34
  %325 = fmul float %283, %307
  %326 = tail call float @llvm.fmuladd.f32(float %305, float %274, float %325)
  %327 = tail call float @llvm.fmuladd.f32(float %309, float %292, float %326)
  store float %327, ptr %58, align 4, !tbaa !34
  %328 = fmul float %286, %307
  %329 = tail call float @llvm.fmuladd.f32(float %305, float %277, float %328)
  %330 = tail call float @llvm.fmuladd.f32(float %309, float %295, float %329)
  store float %330, ptr %62, align 4, !tbaa !34
  %331 = fmul float %289, %307
  %332 = tail call float @llvm.fmuladd.f32(float %305, float %280, float %331)
  %333 = tail call float @llvm.fmuladd.f32(float %309, float %298, float %332)
  store float %333, ptr %66, align 4, !tbaa !34
  %334 = fmul float %283, %313
  %335 = tail call float @llvm.fmuladd.f32(float %311, float %274, float %334)
  %336 = tail call float @llvm.fmuladd.f32(float %315, float %292, float %335)
  store float %336, ptr %70, align 4, !tbaa !34
  %337 = fmul float %286, %313
  %338 = tail call float @llvm.fmuladd.f32(float %311, float %277, float %337)
  %339 = tail call float @llvm.fmuladd.f32(float %315, float %295, float %338)
  store float %339, ptr %74, align 4, !tbaa !34
  %340 = fmul float %289, %313
  %341 = tail call float @llvm.fmuladd.f32(float %311, float %280, float %340)
  %342 = tail call float @llvm.fmuladd.f32(float %315, float %298, float %341)
  store float %342, ptr %78, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_va_mul_m4_series_3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_va_mul_m4_series_4(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #2 {
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_va_mul_m4_series_5(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 {
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %3)
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_va_mul_m4_series_6(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) local_unnamed_addr #2 {
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %3)
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %4)
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %5)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_va_mul_m4_series_7(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6) local_unnamed_addr #2 {
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %3)
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %4)
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %5)
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_va_mul_m4_series_8(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7) local_unnamed_addr #2 {
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %3)
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %4)
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %5)
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %6)
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %7)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_va_mul_m4_series_9(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, ptr nocapture noundef readonly %8) local_unnamed_addr #2 {
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %3)
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %4)
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %5)
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %6)
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %7)
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef %8)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_v2_m3v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = load float, ptr %2, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %2, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = load float, ptr %1, align 4, !tbaa !34
  %8 = getelementptr inbounds [3 x float], ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fmul float %6, %9
  %11 = tail call float @llvm.fmuladd.f32(float %7, float %4, float %10)
  %12 = getelementptr inbounds [3 x float], ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fadd float %13, %11
  %15 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds [3 x float], ptr %1, i64 1, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fmul float %6, %18
  %20 = tail call float @llvm.fmuladd.f32(float %16, float %4, float %19)
  %21 = getelementptr inbounds [3 x float], ptr %1, i64 2, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = fadd float %22, %20
  %24 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = getelementptr inbounds [3 x float], ptr %1, i64 1, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = fmul float %6, %27
  %29 = tail call float @llvm.fmuladd.f32(float %25, float %4, float %28)
  %30 = getelementptr inbounds [3 x float], ptr %1, i64 2, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = fadd float %31, %29
  %33 = fdiv float %14, %32
  store float %33, ptr %0, align 4, !tbaa !34
  %34 = fdiv float %23, %32
  %35 = getelementptr inbounds float, ptr %0, i64 1
  store float %34, ptr %35, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_m3_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = load float, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %5, %8
  %10 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %9)
  %11 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fadd float %12, %10
  %14 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fmul float %5, %17
  %19 = tail call float @llvm.fmuladd.f32(float %15, float %3, float %18)
  %20 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fadd float %21, %19
  %23 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = fmul float %5, %26
  %28 = tail call float @llvm.fmuladd.f32(float %24, float %3, float %27)
  %29 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = fadd float %30, %28
  %32 = fdiv float %13, %31
  store float %32, ptr %1, align 4, !tbaa !34
  %33 = fdiv float %22, %31
  store float %33, ptr %4, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_m2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = load float, ptr %0, align 4, !tbaa !34
  %5 = getelementptr inbounds [2 x float], ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %4, float %3, float %9)
  store float %10, ptr %1, align 4, !tbaa !34
  %11 = getelementptr inbounds [2 x float], ptr %0, i64 0, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds [2 x float], ptr %0, i64 1, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fmul float %8, %14
  %16 = tail call float @llvm.fmuladd.f32(float %12, float %3, float %15)
  store float %16, ptr %7, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_project_m4_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
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
  %20 = load float, ptr %0, align 4, !tbaa !34
  %21 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = fmul float %9, %22
  %24 = tail call float @llvm.fmuladd.f32(float %5, float %20, float %23)
  %25 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = tail call float @llvm.fmuladd.f32(float %26, float %15, float %24)
  %28 = getelementptr inbounds [4 x float], ptr %0, i64 3
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = fadd float %29, %27
  store float %30, ptr %1, align 4, !tbaa !34
  %31 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = fmul float %9, %34
  %36 = tail call float @llvm.fmuladd.f32(float %5, float %32, float %35)
  %37 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !34
  %39 = tail call float @llvm.fmuladd.f32(float %38, float %15, float %36)
  %40 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !34
  %42 = fadd float %41, %39
  store float %42, ptr %8, align 4, !tbaa !34
  %43 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !34
  %45 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !34
  %47 = fmul float %9, %46
  %48 = tail call float @llvm.fmuladd.f32(float %5, float %44, float %47)
  %49 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !34
  %51 = tail call float @llvm.fmuladd.f32(float %50, float %15, float %48)
  %52 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !34
  %54 = fadd float %53, %51
  store float %54, ptr %14, align 4, !tbaa !34
  %55 = fdiv float %30, %19
  store float %55, ptr %1, align 4, !tbaa !34
  %56 = fdiv float %42, %19
  store float %56, ptr %8, align 4, !tbaa !34
  %57 = fdiv float %54, %19
  store float %57, ptr %14, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_v3_project_m4_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = load float, ptr %2, align 4, !tbaa !34
  %7 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 3
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fmul float %8, %10
  %12 = tail call float @llvm.fmuladd.f32(float %5, float %6, float %11)
  %13 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 3
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = tail call float @llvm.fmuladd.f32(float %14, float %16, float %12)
  %18 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 3
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fadd float %17, %19
  %21 = load float, ptr %1, align 4, !tbaa !34
  %22 = getelementptr inbounds [4 x float], ptr %1, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = fmul float %10, %23
  %25 = tail call float @llvm.fmuladd.f32(float %6, float %21, float %24)
  %26 = getelementptr inbounds [4 x float], ptr %1, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = tail call float @llvm.fmuladd.f32(float %27, float %16, float %25)
  %29 = getelementptr inbounds [4 x float], ptr %1, i64 3
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = fadd float %30, %28
  store float %31, ptr %0, align 4, !tbaa !34
  %32 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = fmul float %10, %35
  %37 = tail call float @llvm.fmuladd.f32(float %6, float %33, float %36)
  %38 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !34
  %40 = load float, ptr %15, align 4, !tbaa !34
  %41 = tail call float @llvm.fmuladd.f32(float %39, float %40, float %37)
  %42 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !34
  %44 = fadd float %41, %43
  %45 = getelementptr inbounds float, ptr %0, i64 1
  store float %44, ptr %45, align 4, !tbaa !34
  %46 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !34
  %48 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !34
  %50 = fmul float %10, %49
  %51 = tail call float @llvm.fmuladd.f32(float %6, float %47, float %50)
  %52 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !34
  %54 = load float, ptr %15, align 4, !tbaa !34
  %55 = tail call float @llvm.fmuladd.f32(float %53, float %54, float %51)
  %56 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !34
  %58 = fadd float %55, %57
  %59 = getelementptr inbounds float, ptr %0, i64 2
  store float %58, ptr %59, align 4, !tbaa !34
  %60 = fdiv float %31, %20
  store float %60, ptr %0, align 4, !tbaa !34
  %61 = fdiv float %44, %20
  store float %61, ptr %45, align 4, !tbaa !34
  %62 = fdiv float %58, %20
  store float %62, ptr %59, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_v2_project_m4_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = load float, ptr %2, align 4, !tbaa !34
  %7 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 3
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fmul float %8, %10
  %12 = tail call float @llvm.fmuladd.f32(float %5, float %6, float %11)
  %13 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 3
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = tail call float @llvm.fmuladd.f32(float %14, float %16, float %12)
  %18 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 3
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fadd float %17, %19
  %21 = load float, ptr %1, align 4, !tbaa !34
  %22 = getelementptr inbounds [4 x float], ptr %1, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = fmul float %10, %23
  %25 = tail call float @llvm.fmuladd.f32(float %6, float %21, float %24)
  %26 = getelementptr inbounds [4 x float], ptr %1, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = tail call float @llvm.fmuladd.f32(float %27, float %16, float %25)
  %29 = getelementptr inbounds [4 x float], ptr %1, i64 3
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = fadd float %30, %28
  store float %31, ptr %0, align 4, !tbaa !34
  %32 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = load float, ptr %9, align 4, !tbaa !34
  %35 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = fmul float %34, %36
  %38 = tail call float @llvm.fmuladd.f32(float %6, float %33, float %37)
  %39 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = load float, ptr %15, align 4, !tbaa !34
  %42 = tail call float @llvm.fmuladd.f32(float %40, float %41, float %38)
  %43 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !34
  %45 = fadd float %42, %44
  %46 = getelementptr inbounds float, ptr %0, i64 1
  store float %45, ptr %46, align 4, !tbaa !34
  %47 = fdiv float %31, %20
  store float %47, ptr %0, align 4, !tbaa !34
  %48 = fdiv float %45, %20
  store float %48, ptr %46, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_m4_v4(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %1, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = load float, ptr %0, align 4, !tbaa !34
  %9 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fmul float %5, %10
  %12 = tail call float @llvm.fmuladd.f32(float %3, float %8, float %11)
  %13 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = tail call float @llvm.fmuladd.f32(float %7, float %14, float %12)
  %16 = getelementptr inbounds [4 x float], ptr %0, i64 3
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %1, i64 3
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = tail call float @llvm.fmuladd.f32(float %17, float %19, float %15)
  store float %20, ptr %1, align 4, !tbaa !34
  %21 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fmul float %5, %24
  %26 = tail call float @llvm.fmuladd.f32(float %3, float %22, float %25)
  %27 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = tail call float @llvm.fmuladd.f32(float %7, float %28, float %26)
  %30 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = tail call float @llvm.fmuladd.f32(float %31, float %19, float %29)
  store float %32, ptr %4, align 4, !tbaa !34
  %33 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = fmul float %5, %36
  %38 = tail call float @llvm.fmuladd.f32(float %3, float %34, float %37)
  %39 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = tail call float @llvm.fmuladd.f32(float %7, float %40, float %38)
  %42 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !34
  %44 = tail call float @llvm.fmuladd.f32(float %43, float %19, float %41)
  store float %44, ptr %6, align 4, !tbaa !34
  %45 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 3
  %46 = load float, ptr %45, align 4, !tbaa !34
  %47 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 3
  %48 = load float, ptr %47, align 4, !tbaa !34
  %49 = fmul float %5, %48
  %50 = tail call float @llvm.fmuladd.f32(float %3, float %46, float %49)
  %51 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  %52 = load float, ptr %51, align 4, !tbaa !34
  %53 = tail call float @llvm.fmuladd.f32(float %7, float %52, float %50)
  %54 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 3
  %55 = load float, ptr %54, align 4, !tbaa !34
  %56 = tail call float @llvm.fmuladd.f32(float %55, float %19, float %53)
  store float %56, ptr %18, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_m4_v4d(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = load double, ptr %1, align 8, !tbaa !38
  %4 = getelementptr inbounds double, ptr %1, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !38
  %6 = getelementptr inbounds double, ptr %1, i64 2
  %7 = load double, ptr %6, align 8, !tbaa !38
  %8 = load float, ptr %0, align 4, !tbaa !34
  %9 = fpext float %8 to double
  %10 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fpext float %11 to double
  %13 = fmul double %5, %12
  %14 = tail call double @llvm.fmuladd.f64(double %3, double %9, double %13)
  %15 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fpext float %16 to double
  %18 = tail call double @llvm.fmuladd.f64(double %7, double %17, double %14)
  %19 = getelementptr inbounds [4 x float], ptr %0, i64 3
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fpext float %20 to double
  %22 = getelementptr inbounds double, ptr %1, i64 3
  %23 = load double, ptr %22, align 8, !tbaa !38
  %24 = tail call double @llvm.fmuladd.f64(double %21, double %23, double %18)
  store double %24, ptr %1, align 8, !tbaa !38
  %25 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = fpext float %26 to double
  %28 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = fpext float %29 to double
  %31 = fmul double %5, %30
  %32 = tail call double @llvm.fmuladd.f64(double %3, double %27, double %31)
  %33 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = fpext float %34 to double
  %36 = tail call double @llvm.fmuladd.f64(double %7, double %35, double %32)
  %37 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !34
  %39 = fpext float %38 to double
  %40 = tail call double @llvm.fmuladd.f64(double %39, double %23, double %36)
  store double %40, ptr %4, align 8, !tbaa !38
  %41 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !34
  %43 = fpext float %42 to double
  %44 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !34
  %46 = fpext float %45 to double
  %47 = fmul double %5, %46
  %48 = tail call double @llvm.fmuladd.f64(double %3, double %43, double %47)
  %49 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !34
  %51 = fpext float %50 to double
  %52 = tail call double @llvm.fmuladd.f64(double %7, double %51, double %48)
  %53 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !34
  %55 = fpext float %54 to double
  %56 = tail call double @llvm.fmuladd.f64(double %55, double %23, double %52)
  store double %56, ptr %6, align 8, !tbaa !38
  %57 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 3
  %58 = load float, ptr %57, align 4, !tbaa !34
  %59 = fpext float %58 to double
  %60 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 3
  %61 = load float, ptr %60, align 4, !tbaa !34
  %62 = fpext float %61 to double
  %63 = fmul double %5, %62
  %64 = tail call double @llvm.fmuladd.f64(double %3, double %59, double %63)
  %65 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  %66 = load float, ptr %65, align 4, !tbaa !34
  %67 = fpext float %66 to double
  %68 = tail call double @llvm.fmuladd.f64(double %7, double %67, double %64)
  %69 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 3
  %70 = load float, ptr %69, align 4, !tbaa !34
  %71 = fpext float %70 to double
  %72 = tail call double @llvm.fmuladd.f64(double %71, double %23, double %68)
  store double %72, ptr %22, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_m3_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  %16 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fmul float %8, %19
  %21 = tail call float @llvm.fmuladd.f32(float %17, float %4, float %20)
  %22 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = tail call float @llvm.fmuladd.f32(float %23, float %14, float %21)
  %25 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = fmul float %8, %28
  %30 = tail call float @llvm.fmuladd.f32(float %26, float %4, float %29)
  %31 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = tail call float @llvm.fmuladd.f32(float %32, float %14, float %30)
  store float %15, ptr %1, align 4, !tbaa !34
  store float %24, ptr %7, align 4, !tbaa !34
  store float %33, ptr %13, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
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
  br i1 %11, label %12, label %5, !llvm.loop !46

12:                                               ; preds = %5
  %13 = add nuw nsw i64 %4, 1
  %14 = icmp eq i64 %13, 3
  br i1 %14, label %15, label %3, !llvm.loop !47

15:                                               ; preds = %12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @mul_m4_fl(ptr nocapture noundef %0, float noundef %1) local_unnamed_addr #4 {
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
  %11 = icmp eq i64 %10, 4
  br i1 %11, label %12, label %5, !llvm.loop !48

12:                                               ; preds = %5
  %13 = add nuw nsw i64 %4, 1
  %14 = icmp eq i64 %13, 4
  br i1 %14, label %15, label %3, !llvm.loop !49

15:                                               ; preds = %12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
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
  br i1 %11, label %12, label %5, !llvm.loop !50

12:                                               ; preds = %5
  %13 = add nuw nsw i64 %4, 1
  %14 = icmp eq i64 %13, 3
  br i1 %14, label %15, label %3, !llvm.loop !51

15:                                               ; preds = %12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
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
  br i1 %10, label %11, label %4, !llvm.loop !52

11:                                               ; preds = %4
  %12 = add nuw nsw i64 %3, 1
  %13 = icmp eq i64 %12, 3
  br i1 %13, label %14, label %2, !llvm.loop !53

14:                                               ; preds = %11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @negate_m4(ptr nocapture noundef %0) local_unnamed_addr #4 {
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
  %10 = icmp eq i64 %9, 4
  br i1 %10, label %11, label %4, !llvm.loop !54

11:                                               ; preds = %4
  %12 = add nuw nsw i64 %3, 1
  %13 = icmp eq i64 %12, 4
  br i1 %13, label %14, label %2, !llvm.loop !55

14:                                               ; preds = %11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_m3_v3_double(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = load double, ptr %1, align 8, !tbaa !38
  %4 = getelementptr inbounds double, ptr %1, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !38
  %6 = load float, ptr %0, align 4, !tbaa !34
  %7 = fpext float %6 to double
  %8 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fpext float %9 to double
  %11 = fmul double %5, %10
  %12 = tail call double @llvm.fmuladd.f64(double %3, double %7, double %11)
  %13 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fpext float %14 to double
  %16 = getelementptr inbounds double, ptr %1, i64 2
  %17 = load double, ptr %16, align 8, !tbaa !38
  %18 = tail call double @llvm.fmuladd.f64(double %15, double %17, double %12)
  store double %18, ptr %1, align 8, !tbaa !38
  %19 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fpext float %20 to double
  %22 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = fpext float %23 to double
  %25 = fmul double %5, %24
  %26 = tail call double @llvm.fmuladd.f64(double %3, double %21, double %25)
  %27 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = fpext float %28 to double
  %30 = tail call double @llvm.fmuladd.f64(double %29, double %17, double %26)
  store double %30, ptr %4, align 8, !tbaa !38
  %31 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = fpext float %32 to double
  %34 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = fpext float %35 to double
  %37 = fmul double %5, %36
  %38 = tail call double @llvm.fmuladd.f64(double %3, double %33, double %37)
  %39 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = fpext float %40 to double
  %42 = tail call double @llvm.fmuladd.f64(double %41, double %17, double %38)
  store double %42, ptr %16, align 8, !tbaa !38
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local zeroext i8 @invert_m3_ex(ptr nocapture noundef %0, float noundef %1) local_unnamed_addr #4 {
  %3 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #20
  %4 = call zeroext i8 @invert_m3_m3_ex(ptr noundef nonnull %3, ptr noundef %0, float noundef %1), !range !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %0, ptr noundef nonnull align 16 dereferenceable(36) %3, i64 36, i1 false)
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #20
  ret i8 %4
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local zeroext i8 @invert_m3_m3_ex(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds [3 x float], ptr %1, i64 1
  %5 = getelementptr inbounds [3 x float], ptr %1, i64 1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds [3 x float], ptr %1, i64 2
  %8 = getelementptr inbounds [3 x float], ptr %1, i64 2, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds [3 x float], ptr %1, i64 1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds [3 x float], ptr %1, i64 2, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fneg float %11
  %15 = fmul float %13, %14
  %16 = tail call float @llvm.fmuladd.f32(float %6, float %9, float %15)
  store float %16, ptr %0, align 4, !tbaa !34
  %17 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fneg float %18
  %20 = load float, ptr %8, align 4, !tbaa !34
  %21 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = load float, ptr %12, align 4, !tbaa !34
  %24 = fmul float %22, %23
  %25 = tail call float @llvm.fmuladd.f32(float %19, float %20, float %24)
  %26 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float %25, ptr %26, align 4, !tbaa !34
  %27 = load float, ptr %17, align 4, !tbaa !34
  %28 = load float, ptr %10, align 4, !tbaa !34
  %29 = load float, ptr %21, align 4, !tbaa !34
  %30 = load float, ptr %5, align 4, !tbaa !34
  %31 = fneg float %29
  %32 = fmul float %30, %31
  %33 = tail call float @llvm.fmuladd.f32(float %27, float %28, float %32)
  %34 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %33, ptr %34, align 4, !tbaa !34
  %35 = load float, ptr %4, align 4, !tbaa !34
  %36 = fneg float %35
  %37 = load float, ptr %8, align 4, !tbaa !34
  %38 = load float, ptr %10, align 4, !tbaa !34
  %39 = load float, ptr %7, align 4, !tbaa !34
  %40 = fmul float %38, %39
  %41 = tail call float @llvm.fmuladd.f32(float %36, float %37, float %40)
  %42 = getelementptr inbounds [3 x float], ptr %0, i64 1
  store float %41, ptr %42, align 4, !tbaa !34
  %43 = load float, ptr %1, align 4, !tbaa !34
  %44 = load float, ptr %8, align 4, !tbaa !34
  %45 = load float, ptr %21, align 4, !tbaa !34
  %46 = load float, ptr %7, align 4, !tbaa !34
  %47 = fneg float %45
  %48 = fmul float %46, %47
  %49 = tail call float @llvm.fmuladd.f32(float %43, float %44, float %48)
  %50 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %49, ptr %50, align 4, !tbaa !34
  %51 = load float, ptr %1, align 4, !tbaa !34
  %52 = fneg float %51
  %53 = load float, ptr %10, align 4, !tbaa !34
  %54 = load float, ptr %21, align 4, !tbaa !34
  %55 = load float, ptr %4, align 4, !tbaa !34
  %56 = fmul float %54, %55
  %57 = tail call float @llvm.fmuladd.f32(float %52, float %53, float %56)
  %58 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float %57, ptr %58, align 4, !tbaa !34
  %59 = load float, ptr %4, align 4, !tbaa !34
  %60 = load float, ptr %12, align 4, !tbaa !34
  %61 = load float, ptr %5, align 4, !tbaa !34
  %62 = load float, ptr %7, align 4, !tbaa !34
  %63 = fneg float %61
  %64 = fmul float %62, %63
  %65 = tail call float @llvm.fmuladd.f32(float %59, float %60, float %64)
  %66 = getelementptr inbounds [3 x float], ptr %0, i64 2
  store float %65, ptr %66, align 4, !tbaa !34
  %67 = load float, ptr %1, align 4, !tbaa !34
  %68 = fneg float %67
  %69 = load float, ptr %12, align 4, !tbaa !34
  %70 = load float, ptr %17, align 4, !tbaa !34
  %71 = load float, ptr %7, align 4, !tbaa !34
  %72 = fmul float %70, %71
  %73 = tail call float @llvm.fmuladd.f32(float %68, float %69, float %72)
  %74 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float %73, ptr %74, align 4, !tbaa !34
  %75 = load float, ptr %1, align 4, !tbaa !34
  %76 = load float, ptr %5, align 4, !tbaa !34
  %77 = load float, ptr %17, align 4, !tbaa !34
  %78 = load float, ptr %4, align 4, !tbaa !34
  %79 = fneg float %77
  %80 = fmul float %78, %79
  %81 = tail call float @llvm.fmuladd.f32(float %75, float %76, float %80)
  %82 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %81, ptr %82, align 4, !tbaa !34
  %83 = load float, ptr %1, align 4, !tbaa !34
  %84 = load float, ptr %5, align 4, !tbaa !34
  %85 = load float, ptr %8, align 4, !tbaa !34
  %86 = load float, ptr %10, align 4, !tbaa !34
  %87 = load float, ptr %12, align 4, !tbaa !34
  %88 = fneg float %86
  %89 = fmul float %87, %88
  %90 = tail call float @llvm.fmuladd.f32(float %84, float %85, float %89)
  %91 = load float, ptr %4, align 4, !tbaa !34
  %92 = load float, ptr %17, align 4, !tbaa !34
  %93 = load float, ptr %21, align 4, !tbaa !34
  %94 = fneg float %93
  %95 = fmul float %87, %94
  %96 = tail call float @llvm.fmuladd.f32(float %92, float %85, float %95)
  %97 = fneg float %91
  %98 = fmul float %96, %97
  %99 = tail call float @llvm.fmuladd.f32(float %83, float %90, float %98)
  %100 = load float, ptr %7, align 4, !tbaa !34
  %101 = fmul float %84, %94
  %102 = tail call float @llvm.fmuladd.f32(float %92, float %86, float %101)
  %103 = tail call float @llvm.fmuladd.f32(float %100, float %102, float %99)
  %104 = fcmp une float %103, 0.000000e+00
  br i1 %104, label %105, label %119

105:                                              ; preds = %3
  %106 = fdiv float 1.000000e+00, %103
  br label %107

107:                                              ; preds = %105, %116
  %108 = phi i64 [ 0, %105 ], [ %117, %116 ]
  br label %109

109:                                              ; preds = %107, %109
  %110 = phi i64 [ 0, %107 ], [ %114, %109 ]
  %111 = getelementptr inbounds [3 x float], ptr %0, i64 %108, i64 %110
  %112 = load float, ptr %111, align 4, !tbaa !34
  %113 = fmul float %106, %112
  store float %113, ptr %111, align 4, !tbaa !34
  %114 = add nuw nsw i64 %110, 1
  %115 = icmp eq i64 %114, 3
  br i1 %115, label %116, label %109, !llvm.loop !65

116:                                              ; preds = %109
  %117 = add nuw nsw i64 %108, 1
  %118 = icmp eq i64 %117, 3
  br i1 %118, label %119, label %107, !llvm.loop !66

119:                                              ; preds = %116, %3
  %120 = tail call float @llvm.fabs.f32(float %103)
  %121 = fcmp ogt float %120, %2
  %122 = zext i1 %121 to i8
  ret i8 %122
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @invert_m3(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #20
  %3 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %2, ptr noundef %0), !range !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %0, ptr noundef nonnull align 16 dereferenceable(36) %2, i64 36, i1 false)
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #20
  ret i8 %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @invert_m3_m3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
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
  %82 = load float, ptr %1, align 4, !tbaa !34
  %83 = load float, ptr %4, align 4, !tbaa !34
  %84 = load float, ptr %7, align 4, !tbaa !34
  %85 = load float, ptr %9, align 4, !tbaa !34
  %86 = load float, ptr %11, align 4, !tbaa !34
  %87 = fneg float %85
  %88 = fmul float %86, %87
  %89 = tail call float @llvm.fmuladd.f32(float %83, float %84, float %88)
  %90 = load float, ptr %3, align 4, !tbaa !34
  %91 = load float, ptr %16, align 4, !tbaa !34
  %92 = load float, ptr %20, align 4, !tbaa !34
  %93 = fneg float %92
  %94 = fmul float %86, %93
  %95 = tail call float @llvm.fmuladd.f32(float %91, float %84, float %94)
  %96 = fneg float %90
  %97 = fmul float %95, %96
  %98 = tail call float @llvm.fmuladd.f32(float %82, float %89, float %97)
  %99 = load float, ptr %6, align 4, !tbaa !34
  %100 = fmul float %83, %93
  %101 = tail call float @llvm.fmuladd.f32(float %91, float %85, float %100)
  %102 = tail call float @llvm.fmuladd.f32(float %99, float %101, float %98)
  %103 = fcmp une float %102, 0.000000e+00
  br i1 %103, label %104, label %118

104:                                              ; preds = %2
  %105 = fdiv float 1.000000e+00, %102
  br label %106

106:                                              ; preds = %104, %115
  %107 = phi i64 [ 0, %104 ], [ %116, %115 ]
  br label %108

108:                                              ; preds = %106, %108
  %109 = phi i64 [ 0, %106 ], [ %113, %108 ]
  %110 = getelementptr inbounds [3 x float], ptr %0, i64 %107, i64 %109
  %111 = load float, ptr %110, align 4, !tbaa !34
  %112 = fmul float %105, %111
  store float %112, ptr %110, align 4, !tbaa !34
  %113 = add nuw nsw i64 %109, 1
  %114 = icmp eq i64 %113, 3
  br i1 %114, label %115, label %108, !llvm.loop !67

115:                                              ; preds = %108
  %116 = add nuw nsw i64 %107, 1
  %117 = icmp eq i64 %116, 3
  br i1 %117, label %118, label %106, !llvm.loop !68

118:                                              ; preds = %115, %2
  %119 = zext i1 %103 to i8
  ret i8 %119
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @invert_m4(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #20
  %3 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %2, ptr noundef %0), !range !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) %2, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #20
  ret i8 %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @invert_m4_m4(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %0, i8 0, i64 64, i1 false), !tbaa !34
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %7, %4 ]
  %6 = getelementptr inbounds [4 x float], ptr %0, i64 %5, i64 %5
  store float 1.000000e+00, ptr %6, align 4, !tbaa !34
  %7 = add nuw nsw i64 %5, 1
  %8 = icmp eq i64 %7, 4
  br i1 %8, label %9, label %4, !llvm.loop !69

9:                                                ; preds = %4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 64, i1 false), !tbaa !34
  br label %13

10:                                               ; preds = %90
  %11 = add nuw nsw i64 %15, 1
  %12 = icmp eq i64 %17, 4
  br i1 %12, label %93, label %13, !llvm.loop !70

13:                                               ; preds = %9, %10
  %14 = phi i64 [ 0, %9 ], [ %17, %10 ]
  %15 = phi i64 [ 1, %9 ], [ %11, %10 ]
  %16 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 %14, i64 %14
  %17 = add nuw nsw i64 %14, 1
  %18 = icmp ult i64 %14, 3
  %19 = trunc i64 %14 to i32
  br i1 %18, label %20, label %37

20:                                               ; preds = %13
  %21 = load float, ptr %16, align 4, !tbaa !34
  %22 = tail call float @llvm.fabs.f32(float %21)
  %23 = trunc i64 %14 to i32
  br label %24

24:                                               ; preds = %20, %24
  %25 = phi i64 [ %15, %20 ], [ %35, %24 ]
  %26 = phi i32 [ %23, %20 ], [ %34, %24 ]
  %27 = phi float [ %22, %20 ], [ %32, %24 ]
  %28 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 %25, i64 %14
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = tail call float @llvm.fabs.f32(float %29)
  %31 = fcmp ogt float %30, %27
  %32 = select i1 %31, float %30, float %27
  %33 = trunc i64 %25 to i32
  %34 = select i1 %31, i32 %33, i32 %26
  %35 = add nuw nsw i64 %25, 1
  %36 = icmp eq i64 %35, 4
  br i1 %36, label %37, label %24, !llvm.loop !71

37:                                               ; preds = %24, %13
  %38 = phi i32 [ %19, %13 ], [ %34, %24 ]
  %39 = zext i32 %38 to i64
  %40 = icmp eq i64 %14, %39
  br i1 %40, label %55, label %41

41:                                               ; preds = %37
  %42 = sext i32 %38 to i64
  br label %43

43:                                               ; preds = %41, %43
  %44 = phi i64 [ 0, %41 ], [ %53, %43 ]
  %45 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 %14, i64 %44
  %46 = load float, ptr %45, align 4, !tbaa !34
  %47 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 %42, i64 %44
  %48 = load float, ptr %47, align 4, !tbaa !34
  store float %48, ptr %45, align 4, !tbaa !34
  store float %46, ptr %47, align 4, !tbaa !34
  %49 = getelementptr inbounds [4 x float], ptr %0, i64 %14, i64 %44
  %50 = load float, ptr %49, align 4, !tbaa !34
  %51 = getelementptr inbounds [4 x float], ptr %0, i64 %42, i64 %44
  %52 = load float, ptr %51, align 4, !tbaa !34
  store float %52, ptr %49, align 4, !tbaa !34
  store float %50, ptr %51, align 4, !tbaa !34
  %53 = add nuw nsw i64 %44, 1
  %54 = icmp eq i64 %53, 4
  br i1 %54, label %55, label %43, !llvm.loop !72

55:                                               ; preds = %43, %37
  %56 = load float, ptr %16, align 4, !tbaa !34
  %57 = fcmp oeq float %56, 0.000000e+00
  br i1 %57, label %93, label %58

58:                                               ; preds = %55, %58
  %59 = phi i64 [ %66, %58 ], [ 0, %55 ]
  %60 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 %14, i64 %59
  %61 = load float, ptr %60, align 4, !tbaa !34
  %62 = fdiv float %61, %56
  store float %62, ptr %60, align 4, !tbaa !34
  %63 = getelementptr inbounds [4 x float], ptr %0, i64 %14, i64 %59
  %64 = load float, ptr %63, align 4, !tbaa !34
  %65 = fdiv float %64, %56
  store float %65, ptr %63, align 4, !tbaa !34
  %66 = add nuw nsw i64 %59, 1
  %67 = icmp eq i64 %66, 4
  br i1 %67, label %68, label %58, !llvm.loop !73

68:                                               ; preds = %58, %90
  %69 = phi i64 [ %91, %90 ], [ 0, %58 ]
  %70 = icmp eq i64 %69, %14
  br i1 %70, label %90, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 %69, i64 %14
  %73 = load float, ptr %72, align 4, !tbaa !34
  br label %74

74:                                               ; preds = %71, %74
  %75 = phi i64 [ 0, %71 ], [ %88, %74 ]
  %76 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 %14, i64 %75
  %77 = load float, ptr %76, align 4, !tbaa !34
  %78 = fmul float %73, %77
  %79 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 %69, i64 %75
  %80 = load float, ptr %79, align 4, !tbaa !34
  %81 = fsub float %80, %78
  store float %81, ptr %79, align 4, !tbaa !34
  %82 = getelementptr inbounds [4 x float], ptr %0, i64 %14, i64 %75
  %83 = load float, ptr %82, align 4, !tbaa !34
  %84 = fmul float %73, %83
  %85 = getelementptr inbounds [4 x float], ptr %0, i64 %69, i64 %75
  %86 = load float, ptr %85, align 4, !tbaa !34
  %87 = fsub float %86, %84
  store float %87, ptr %85, align 4, !tbaa !34
  %88 = add nuw nsw i64 %75, 1
  %89 = icmp eq i64 %88, 4
  br i1 %89, label %90, label %74, !llvm.loop !74

90:                                               ; preds = %74, %68
  %91 = add nuw nsw i64 %69, 1
  %92 = icmp eq i64 %91, 4
  br i1 %92, label %10, label %68, !llvm.loop !75

93:                                               ; preds = %10, %55
  %94 = phi i8 [ 0, %55 ], [ 1, %10 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #20
  ret i8 %94
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @compare_m4m4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) local_unnamed_addr #7 {
  %4 = load float, ptr %0, align 4, !tbaa !34
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = fsub float %4, %5
  %7 = tail call float @llvm.fabs.f32(float %6)
  %8 = fcmp ugt float %7, %2
  br i1 %8, label %130, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds float, ptr %0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fsub float %11, %13
  %15 = tail call float @llvm.fabs.f32(float %14)
  %16 = fcmp ugt float %15, %2
  br i1 %16, label %130, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds float, ptr %0, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %1, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fsub float %19, %21
  %23 = tail call float @llvm.fabs.f32(float %22)
  %24 = fcmp ugt float %23, %2
  br i1 %24, label %130, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds float, ptr %0, i64 3
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = getelementptr inbounds float, ptr %1, i64 3
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = fsub float %27, %29
  %31 = tail call float @llvm.fabs.f32(float %30)
  %32 = fcmp ugt float %31, %2
  br i1 %32, label %130, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %35 = getelementptr inbounds [4 x float], ptr %1, i64 1
  %36 = load float, ptr %34, align 4, !tbaa !34
  %37 = load float, ptr %35, align 4, !tbaa !34
  %38 = fsub float %36, %37
  %39 = tail call float @llvm.fabs.f32(float %38)
  %40 = fcmp ugt float %39, %2
  br i1 %40, label %130, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !34
  %44 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !34
  %46 = fsub float %43, %45
  %47 = tail call float @llvm.fabs.f32(float %46)
  %48 = fcmp ugt float %47, %2
  br i1 %48, label %130, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !34
  %52 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !34
  %54 = fsub float %51, %53
  %55 = tail call float @llvm.fabs.f32(float %54)
  %56 = fcmp ugt float %55, %2
  br i1 %56, label %130, label %57

57:                                               ; preds = %49
  %58 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 3
  %59 = load float, ptr %58, align 4, !tbaa !34
  %60 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 3
  %61 = load float, ptr %60, align 4, !tbaa !34
  %62 = fsub float %59, %61
  %63 = tail call float @llvm.fabs.f32(float %62)
  %64 = fcmp ugt float %63, %2
  br i1 %64, label %130, label %65

65:                                               ; preds = %57
  %66 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %67 = getelementptr inbounds [4 x float], ptr %1, i64 2
  %68 = load float, ptr %66, align 4, !tbaa !34
  %69 = load float, ptr %67, align 4, !tbaa !34
  %70 = fsub float %68, %69
  %71 = tail call float @llvm.fabs.f32(float %70)
  %72 = fcmp ugt float %71, %2
  br i1 %72, label %130, label %73

73:                                               ; preds = %65
  %74 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !34
  %76 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !34
  %78 = fsub float %75, %77
  %79 = tail call float @llvm.fabs.f32(float %78)
  %80 = fcmp ugt float %79, %2
  br i1 %80, label %130, label %81

81:                                               ; preds = %73
  %82 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  %83 = load float, ptr %82, align 4, !tbaa !34
  %84 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 2
  %85 = load float, ptr %84, align 4, !tbaa !34
  %86 = fsub float %83, %85
  %87 = tail call float @llvm.fabs.f32(float %86)
  %88 = fcmp ugt float %87, %2
  br i1 %88, label %130, label %89

89:                                               ; preds = %81
  %90 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  %91 = load float, ptr %90, align 4, !tbaa !34
  %92 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 3
  %93 = load float, ptr %92, align 4, !tbaa !34
  %94 = fsub float %91, %93
  %95 = tail call float @llvm.fabs.f32(float %94)
  %96 = fcmp ugt float %95, %2
  br i1 %96, label %130, label %97

97:                                               ; preds = %89
  %98 = getelementptr inbounds [4 x float], ptr %0, i64 3
  %99 = getelementptr inbounds [4 x float], ptr %1, i64 3
  %100 = load float, ptr %98, align 4, !tbaa !34
  %101 = load float, ptr %99, align 4, !tbaa !34
  %102 = fsub float %100, %101
  %103 = tail call float @llvm.fabs.f32(float %102)
  %104 = fcmp ugt float %103, %2
  br i1 %104, label %129, label %105

105:                                              ; preds = %97
  %106 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 1
  %107 = load float, ptr %106, align 4, !tbaa !34
  %108 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 1
  %109 = load float, ptr %108, align 4, !tbaa !34
  %110 = fsub float %107, %109
  %111 = tail call float @llvm.fabs.f32(float %110)
  %112 = fcmp ugt float %111, %2
  br i1 %112, label %129, label %113

113:                                              ; preds = %105
  %114 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 2
  %115 = load float, ptr %114, align 4, !tbaa !34
  %116 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 2
  %117 = load float, ptr %116, align 4, !tbaa !34
  %118 = fsub float %115, %117
  %119 = tail call float @llvm.fabs.f32(float %118)
  %120 = fcmp ugt float %119, %2
  br i1 %120, label %129, label %121

121:                                              ; preds = %113
  %122 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 3
  %123 = load float, ptr %122, align 4, !tbaa !34
  %124 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 3
  %125 = load float, ptr %124, align 4, !tbaa !34
  %126 = fsub float %123, %125
  %127 = tail call float @llvm.fabs.f32(float %126)
  %128 = fcmp ugt float %127, %2
  br i1 %128, label %129, label %130

129:                                              ; preds = %121, %113, %105, %97
  br label %130

130:                                              ; preds = %65, %73, %81, %89, %33, %41, %49, %57, %3, %9, %17, %25, %129, %121
  %131 = phi i32 [ 1, %121 ], [ 0, %129 ], [ 0, %25 ], [ 0, %17 ], [ 0, %9 ], [ 0, %3 ], [ 0, %57 ], [ 0, %49 ], [ 0, %41 ], [ 0, %33 ], [ 0, %89 ], [ 0, %81 ], [ 0, %73 ], [ 0, %65 ]
  ret i32 %131
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @orthogonalize_m3(ptr noundef %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = fmul float %5, %5
  %7 = tail call float @llvm.fmuladd.f32(float %3, float %3, float %6)
  %8 = getelementptr inbounds float, ptr %0, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %7)
  %11 = tail call float @sqrtf(float noundef %10) #20
  %12 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fmul float %15, %15
  %17 = tail call float @llvm.fmuladd.f32(float %13, float %13, float %16)
  %18 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %19, float %17)
  %21 = tail call float @sqrtf(float noundef %20) #20
  %22 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = fmul float %25, %25
  %27 = tail call float @llvm.fmuladd.f32(float %23, float %23, float %26)
  %28 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = tail call float @llvm.fmuladd.f32(float %29, float %29, float %27)
  %31 = tail call float @sqrtf(float noundef %30) #20
  %32 = sext i32 %1 to i64
  %33 = getelementptr inbounds [3 x float], ptr %0, i64 %32
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = getelementptr inbounds float, ptr %33, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = fmul float %36, %36
  %38 = tail call float @llvm.fmuladd.f32(float %34, float %34, float %37)
  %39 = getelementptr inbounds float, ptr %33, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = tail call float @llvm.fmuladd.f32(float %40, float %40, float %38)
  %42 = fcmp ogt float %41, 0x38AA95A5C0000000
  br i1 %42, label %43, label %52

43:                                               ; preds = %2
  %44 = tail call float @sqrtf(float noundef %41) #20
  %45 = fdiv float 1.000000e+00, %44
  %46 = load float, ptr %33, align 4, !tbaa !34
  %47 = fmul float %46, %45
  store float %47, ptr %33, align 4, !tbaa !34
  %48 = load float, ptr %35, align 4, !tbaa !34
  %49 = fmul float %45, %48
  store float %49, ptr %35, align 4, !tbaa !34
  %50 = load float, ptr %39, align 4, !tbaa !34
  %51 = fmul float %45, %50
  br label %53

52:                                               ; preds = %2
  store float 0.000000e+00, ptr %33, align 4, !tbaa !34
  store float 0.000000e+00, ptr %35, align 4, !tbaa !34
  br label %53

53:                                               ; preds = %43, %52
  %54 = phi float [ 0.000000e+00, %52 ], [ %51, %43 ]
  store float %54, ptr %39, align 4, !tbaa !34
  switch i32 %1, label %469 [
    i32 0, label %55
    i32 1, label %194
    i32 2, label %330
  ]

55:                                               ; preds = %53
  %56 = load float, ptr %0, align 4, !tbaa !34
  %57 = load float, ptr %12, align 4, !tbaa !34
  %58 = load float, ptr %4, align 4, !tbaa !34
  %59 = load float, ptr %14, align 4, !tbaa !34
  %60 = fmul float %58, %59
  %61 = tail call float @llvm.fmuladd.f32(float %56, float %57, float %60)
  %62 = load float, ptr %8, align 4, !tbaa !34
  %63 = load float, ptr %18, align 4, !tbaa !34
  %64 = tail call float @llvm.fmuladd.f32(float %62, float %63, float %61)
  %65 = fcmp olt float %64, 1.000000e+00
  br i1 %65, label %66, label %106

66:                                               ; preds = %55
  %67 = fneg float %62
  %68 = fmul float %59, %67
  %69 = tail call float @llvm.fmuladd.f32(float %58, float %63, float %68)
  store float %69, ptr %22, align 4, !tbaa !34
  %70 = fneg float %56
  %71 = fmul float %63, %70
  %72 = tail call float @llvm.fmuladd.f32(float %62, float %57, float %71)
  store float %72, ptr %24, align 4, !tbaa !34
  %73 = fneg float %58
  %74 = fmul float %57, %73
  %75 = tail call float @llvm.fmuladd.f32(float %56, float %59, float %74)
  store float %75, ptr %28, align 4, !tbaa !34
  %76 = fmul float %72, %72
  %77 = tail call float @llvm.fmuladd.f32(float %69, float %69, float %76)
  %78 = tail call float @llvm.fmuladd.f32(float %75, float %75, float %77)
  %79 = fcmp ogt float %78, 0x38AA95A5C0000000
  br i1 %79, label %80, label %89

80:                                               ; preds = %66
  %81 = tail call float @sqrtf(float noundef %78) #20
  %82 = fdiv float 1.000000e+00, %81
  %83 = load float, ptr %22, align 4, !tbaa !34
  %84 = fmul float %83, %82
  store float %84, ptr %22, align 4, !tbaa !34
  %85 = load float, ptr %24, align 4, !tbaa !34
  %86 = fmul float %82, %85
  store float %86, ptr %24, align 4, !tbaa !34
  %87 = load float, ptr %28, align 4, !tbaa !34
  %88 = fmul float %82, %87
  br label %90

89:                                               ; preds = %66
  store float 0.000000e+00, ptr %22, align 4, !tbaa !34
  store float 0.000000e+00, ptr %24, align 4, !tbaa !34
  br label %90

90:                                               ; preds = %80, %89
  %91 = phi float [ 0.000000e+00, %89 ], [ %88, %80 ]
  store float %91, ptr %28, align 4, !tbaa !34
  %92 = load float, ptr %24, align 4, !tbaa !34
  %93 = load float, ptr %8, align 4, !tbaa !34
  %94 = load float, ptr %4, align 4, !tbaa !34
  %95 = fneg float %91
  %96 = fmul float %94, %95
  %97 = tail call float @llvm.fmuladd.f32(float %92, float %93, float %96)
  store float %97, ptr %12, align 4, !tbaa !34
  %98 = load float, ptr %0, align 4, !tbaa !34
  %99 = load float, ptr %22, align 4, !tbaa !34
  %100 = fneg float %99
  %101 = fmul float %93, %100
  %102 = tail call float @llvm.fmuladd.f32(float %91, float %98, float %101)
  store float %102, ptr %14, align 4, !tbaa !34
  %103 = fneg float %92
  %104 = fmul float %98, %103
  %105 = tail call float @llvm.fmuladd.f32(float %99, float %94, float %104)
  store float %105, ptr %18, align 4, !tbaa !34
  br label %469

106:                                              ; preds = %55
  %107 = load float, ptr %22, align 4, !tbaa !34
  %108 = load float, ptr %24, align 4, !tbaa !34
  %109 = fmul float %58, %108
  %110 = tail call float @llvm.fmuladd.f32(float %56, float %107, float %109)
  %111 = load float, ptr %28, align 4, !tbaa !34
  %112 = tail call float @llvm.fmuladd.f32(float %62, float %111, float %110)
  %113 = fcmp olt float %112, 1.000000e+00
  br i1 %113, label %114, label %154

114:                                              ; preds = %106
  %115 = fneg float %111
  %116 = fmul float %58, %115
  %117 = tail call float @llvm.fmuladd.f32(float %108, float %62, float %116)
  store float %117, ptr %12, align 4, !tbaa !34
  %118 = fneg float %107
  %119 = fmul float %62, %118
  %120 = tail call float @llvm.fmuladd.f32(float %111, float %56, float %119)
  store float %120, ptr %14, align 4, !tbaa !34
  %121 = fneg float %108
  %122 = fmul float %56, %121
  %123 = tail call float @llvm.fmuladd.f32(float %107, float %58, float %122)
  store float %123, ptr %18, align 4, !tbaa !34
  %124 = fmul float %120, %120
  %125 = tail call float @llvm.fmuladd.f32(float %117, float %117, float %124)
  %126 = tail call float @llvm.fmuladd.f32(float %123, float %123, float %125)
  %127 = fcmp ogt float %126, 0x38AA95A5C0000000
  br i1 %127, label %128, label %137

128:                                              ; preds = %114
  %129 = tail call float @sqrtf(float noundef %126) #20
  %130 = fdiv float 1.000000e+00, %129
  %131 = load float, ptr %12, align 4, !tbaa !34
  %132 = fmul float %131, %130
  store float %132, ptr %12, align 4, !tbaa !34
  %133 = load float, ptr %14, align 4, !tbaa !34
  %134 = fmul float %130, %133
  store float %134, ptr %14, align 4, !tbaa !34
  %135 = load float, ptr %18, align 4, !tbaa !34
  %136 = fmul float %130, %135
  br label %138

137:                                              ; preds = %114
  store float 0.000000e+00, ptr %12, align 4, !tbaa !34
  store float 0.000000e+00, ptr %14, align 4, !tbaa !34
  br label %138

138:                                              ; preds = %128, %137
  %139 = phi float [ 0.000000e+00, %137 ], [ %136, %128 ]
  store float %139, ptr %18, align 4, !tbaa !34
  %140 = load float, ptr %4, align 4, !tbaa !34
  %141 = load float, ptr %8, align 4, !tbaa !34
  %142 = load float, ptr %14, align 4, !tbaa !34
  %143 = fneg float %141
  %144 = fmul float %142, %143
  %145 = tail call float @llvm.fmuladd.f32(float %140, float %139, float %144)
  store float %145, ptr %22, align 4, !tbaa !34
  %146 = load float, ptr %12, align 4, !tbaa !34
  %147 = load float, ptr %0, align 4, !tbaa !34
  %148 = fneg float %147
  %149 = fmul float %139, %148
  %150 = tail call float @llvm.fmuladd.f32(float %141, float %146, float %149)
  store float %150, ptr %24, align 4, !tbaa !34
  %151 = fneg float %140
  %152 = fmul float %146, %151
  %153 = tail call float @llvm.fmuladd.f32(float %147, float %142, float %152)
  store float %153, ptr %28, align 4, !tbaa !34
  br label %469

154:                                              ; preds = %106
  %155 = fneg float %62
  %156 = fmul float %62, %155
  %157 = tail call float @llvm.fmuladd.f32(float %58, float %56, float %156)
  store float %157, ptr %22, align 4, !tbaa !34
  %158 = fneg float %56
  %159 = fmul float %56, %158
  %160 = tail call float @llvm.fmuladd.f32(float %62, float %58, float %159)
  store float %160, ptr %24, align 4, !tbaa !34
  %161 = fneg float %58
  %162 = fmul float %58, %161
  %163 = tail call float @llvm.fmuladd.f32(float %56, float %62, float %162)
  store float %163, ptr %28, align 4, !tbaa !34
  %164 = fmul float %160, %160
  %165 = tail call float @llvm.fmuladd.f32(float %157, float %157, float %164)
  %166 = tail call float @llvm.fmuladd.f32(float %163, float %163, float %165)
  %167 = fcmp ogt float %166, 0x38AA95A5C0000000
  br i1 %167, label %168, label %177

168:                                              ; preds = %154
  %169 = tail call float @sqrtf(float noundef %166) #20
  %170 = fdiv float 1.000000e+00, %169
  %171 = load float, ptr %22, align 4, !tbaa !34
  %172 = fmul float %171, %170
  store float %172, ptr %22, align 4, !tbaa !34
  %173 = load float, ptr %24, align 4, !tbaa !34
  %174 = fmul float %170, %173
  store float %174, ptr %24, align 4, !tbaa !34
  %175 = load float, ptr %28, align 4, !tbaa !34
  %176 = fmul float %170, %175
  br label %178

177:                                              ; preds = %154
  store float 0.000000e+00, ptr %22, align 4, !tbaa !34
  store float 0.000000e+00, ptr %24, align 4, !tbaa !34
  br label %178

178:                                              ; preds = %168, %177
  %179 = phi float [ 0.000000e+00, %177 ], [ %176, %168 ]
  store float %179, ptr %28, align 4, !tbaa !34
  %180 = load float, ptr %24, align 4, !tbaa !34
  %181 = load float, ptr %8, align 4, !tbaa !34
  %182 = load float, ptr %4, align 4, !tbaa !34
  %183 = fneg float %179
  %184 = fmul float %182, %183
  %185 = tail call float @llvm.fmuladd.f32(float %180, float %181, float %184)
  store float %185, ptr %12, align 4, !tbaa !34
  %186 = load float, ptr %0, align 4, !tbaa !34
  %187 = load float, ptr %22, align 4, !tbaa !34
  %188 = fneg float %187
  %189 = fmul float %181, %188
  %190 = tail call float @llvm.fmuladd.f32(float %179, float %186, float %189)
  store float %190, ptr %14, align 4, !tbaa !34
  %191 = fneg float %180
  %192 = fmul float %186, %191
  %193 = tail call float @llvm.fmuladd.f32(float %187, float %182, float %192)
  store float %193, ptr %18, align 4, !tbaa !34
  br label %469

194:                                              ; preds = %53
  %195 = load float, ptr %12, align 4, !tbaa !34
  %196 = load float, ptr %0, align 4, !tbaa !34
  %197 = load float, ptr %14, align 4, !tbaa !34
  %198 = load float, ptr %4, align 4, !tbaa !34
  %199 = fmul float %197, %198
  %200 = tail call float @llvm.fmuladd.f32(float %195, float %196, float %199)
  %201 = load float, ptr %18, align 4, !tbaa !34
  %202 = load float, ptr %8, align 4, !tbaa !34
  %203 = tail call float @llvm.fmuladd.f32(float %201, float %202, float %200)
  %204 = fcmp olt float %203, 1.000000e+00
  br i1 %204, label %205, label %245

205:                                              ; preds = %194
  %206 = fneg float %202
  %207 = fmul float %197, %206
  %208 = tail call float @llvm.fmuladd.f32(float %198, float %201, float %207)
  store float %208, ptr %22, align 4, !tbaa !34
  %209 = fneg float %196
  %210 = fmul float %201, %209
  %211 = tail call float @llvm.fmuladd.f32(float %202, float %195, float %210)
  store float %211, ptr %24, align 4, !tbaa !34
  %212 = fneg float %198
  %213 = fmul float %195, %212
  %214 = tail call float @llvm.fmuladd.f32(float %196, float %197, float %213)
  store float %214, ptr %28, align 4, !tbaa !34
  %215 = fmul float %211, %211
  %216 = tail call float @llvm.fmuladd.f32(float %208, float %208, float %215)
  %217 = tail call float @llvm.fmuladd.f32(float %214, float %214, float %216)
  %218 = fcmp ogt float %217, 0x38AA95A5C0000000
  br i1 %218, label %219, label %228

219:                                              ; preds = %205
  %220 = tail call float @sqrtf(float noundef %217) #20
  %221 = fdiv float 1.000000e+00, %220
  %222 = load float, ptr %22, align 4, !tbaa !34
  %223 = fmul float %222, %221
  store float %223, ptr %22, align 4, !tbaa !34
  %224 = load float, ptr %24, align 4, !tbaa !34
  %225 = fmul float %221, %224
  store float %225, ptr %24, align 4, !tbaa !34
  %226 = load float, ptr %28, align 4, !tbaa !34
  %227 = fmul float %221, %226
  br label %229

228:                                              ; preds = %205
  store float 0.000000e+00, ptr %22, align 4, !tbaa !34
  store float 0.000000e+00, ptr %24, align 4, !tbaa !34
  br label %229

229:                                              ; preds = %219, %228
  %230 = phi float [ 0.000000e+00, %228 ], [ %227, %219 ]
  store float %230, ptr %28, align 4, !tbaa !34
  %231 = load float, ptr %14, align 4, !tbaa !34
  %232 = load float, ptr %18, align 4, !tbaa !34
  %233 = load float, ptr %24, align 4, !tbaa !34
  %234 = fneg float %232
  %235 = fmul float %233, %234
  %236 = tail call float @llvm.fmuladd.f32(float %231, float %230, float %235)
  store float %236, ptr %0, align 4, !tbaa !34
  %237 = load float, ptr %22, align 4, !tbaa !34
  %238 = load float, ptr %12, align 4, !tbaa !34
  %239 = fneg float %238
  %240 = fmul float %230, %239
  %241 = tail call float @llvm.fmuladd.f32(float %232, float %237, float %240)
  store float %241, ptr %4, align 4, !tbaa !34
  %242 = fneg float %231
  %243 = fmul float %237, %242
  %244 = tail call float @llvm.fmuladd.f32(float %238, float %233, float %243)
  store float %244, ptr %8, align 4, !tbaa !34
  br label %469

245:                                              ; preds = %194
  %246 = load float, ptr %22, align 4, !tbaa !34
  %247 = load float, ptr %24, align 4, !tbaa !34
  %248 = fmul float %198, %247
  %249 = tail call float @llvm.fmuladd.f32(float %196, float %246, float %248)
  %250 = load float, ptr %28, align 4, !tbaa !34
  %251 = tail call float @llvm.fmuladd.f32(float %202, float %250, float %249)
  %252 = fcmp olt float %251, 1.000000e+00
  %253 = fneg float %201
  %254 = fneg float %195
  %255 = fneg float %197
  br i1 %252, label %256, label %293

256:                                              ; preds = %245
  %257 = fmul float %247, %253
  %258 = tail call float @llvm.fmuladd.f32(float %197, float %250, float %257)
  store float %258, ptr %0, align 4, !tbaa !34
  %259 = fmul float %250, %254
  %260 = tail call float @llvm.fmuladd.f32(float %201, float %246, float %259)
  store float %260, ptr %4, align 4, !tbaa !34
  %261 = fmul float %246, %255
  %262 = tail call float @llvm.fmuladd.f32(float %195, float %247, float %261)
  store float %262, ptr %8, align 4, !tbaa !34
  %263 = fmul float %260, %260
  %264 = tail call float @llvm.fmuladd.f32(float %258, float %258, float %263)
  %265 = tail call float @llvm.fmuladd.f32(float %262, float %262, float %264)
  %266 = fcmp ogt float %265, 0x38AA95A5C0000000
  br i1 %266, label %267, label %276

267:                                              ; preds = %256
  %268 = tail call float @sqrtf(float noundef %265) #20
  %269 = fdiv float 1.000000e+00, %268
  %270 = load float, ptr %0, align 4, !tbaa !34
  %271 = fmul float %270, %269
  store float %271, ptr %0, align 4, !tbaa !34
  %272 = load float, ptr %4, align 4, !tbaa !34
  %273 = fmul float %269, %272
  store float %273, ptr %4, align 4, !tbaa !34
  %274 = load float, ptr %8, align 4, !tbaa !34
  %275 = fmul float %269, %274
  br label %277

276:                                              ; preds = %256
  store float 0.000000e+00, ptr %0, align 4, !tbaa !34
  store float 0.000000e+00, ptr %4, align 4, !tbaa !34
  br label %277

277:                                              ; preds = %267, %276
  %278 = phi float [ 0.000000e+00, %276 ], [ %275, %267 ]
  store float %278, ptr %8, align 4, !tbaa !34
  %279 = load float, ptr %4, align 4, !tbaa !34
  %280 = load float, ptr %18, align 4, !tbaa !34
  %281 = load float, ptr %14, align 4, !tbaa !34
  %282 = fneg float %278
  %283 = fmul float %281, %282
  %284 = tail call float @llvm.fmuladd.f32(float %279, float %280, float %283)
  store float %284, ptr %22, align 4, !tbaa !34
  %285 = load float, ptr %12, align 4, !tbaa !34
  %286 = load float, ptr %0, align 4, !tbaa !34
  %287 = fneg float %286
  %288 = fmul float %280, %287
  %289 = tail call float @llvm.fmuladd.f32(float %278, float %285, float %288)
  store float %289, ptr %24, align 4, !tbaa !34
  %290 = fneg float %279
  %291 = fmul float %285, %290
  %292 = tail call float @llvm.fmuladd.f32(float %286, float %281, float %291)
  store float %292, ptr %28, align 4, !tbaa !34
  br label %469

293:                                              ; preds = %245
  %294 = fmul float %201, %253
  %295 = tail call float @llvm.fmuladd.f32(float %197, float %195, float %294)
  store float %295, ptr %0, align 4, !tbaa !34
  %296 = fmul float %195, %254
  %297 = tail call float @llvm.fmuladd.f32(float %201, float %197, float %296)
  store float %297, ptr %4, align 4, !tbaa !34
  %298 = fmul float %197, %255
  %299 = tail call float @llvm.fmuladd.f32(float %195, float %201, float %298)
  store float %299, ptr %8, align 4, !tbaa !34
  %300 = fmul float %297, %297
  %301 = tail call float @llvm.fmuladd.f32(float %295, float %295, float %300)
  %302 = tail call float @llvm.fmuladd.f32(float %299, float %299, float %301)
  %303 = fcmp ogt float %302, 0x38AA95A5C0000000
  br i1 %303, label %304, label %313

304:                                              ; preds = %293
  %305 = tail call float @sqrtf(float noundef %302) #20
  %306 = fdiv float 1.000000e+00, %305
  %307 = load float, ptr %0, align 4, !tbaa !34
  %308 = fmul float %307, %306
  store float %308, ptr %0, align 4, !tbaa !34
  %309 = load float, ptr %4, align 4, !tbaa !34
  %310 = fmul float %306, %309
  store float %310, ptr %4, align 4, !tbaa !34
  %311 = load float, ptr %8, align 4, !tbaa !34
  %312 = fmul float %306, %311
  br label %314

313:                                              ; preds = %293
  store float 0.000000e+00, ptr %0, align 4, !tbaa !34
  store float 0.000000e+00, ptr %4, align 4, !tbaa !34
  br label %314

314:                                              ; preds = %304, %313
  %315 = phi float [ 0.000000e+00, %313 ], [ %312, %304 ]
  store float %315, ptr %8, align 4, !tbaa !34
  %316 = load float, ptr %4, align 4, !tbaa !34
  %317 = load float, ptr %18, align 4, !tbaa !34
  %318 = load float, ptr %14, align 4, !tbaa !34
  %319 = fneg float %315
  %320 = fmul float %318, %319
  %321 = tail call float @llvm.fmuladd.f32(float %316, float %317, float %320)
  store float %321, ptr %22, align 4, !tbaa !34
  %322 = load float, ptr %12, align 4, !tbaa !34
  %323 = load float, ptr %0, align 4, !tbaa !34
  %324 = fneg float %323
  %325 = fmul float %317, %324
  %326 = tail call float @llvm.fmuladd.f32(float %315, float %322, float %325)
  store float %326, ptr %24, align 4, !tbaa !34
  %327 = fneg float %316
  %328 = fmul float %322, %327
  %329 = tail call float @llvm.fmuladd.f32(float %323, float %318, float %328)
  store float %329, ptr %28, align 4, !tbaa !34
  br label %469

330:                                              ; preds = %53
  %331 = load float, ptr %22, align 4, !tbaa !34
  %332 = load float, ptr %0, align 4, !tbaa !34
  %333 = load float, ptr %24, align 4, !tbaa !34
  %334 = load float, ptr %4, align 4, !tbaa !34
  %335 = fmul float %333, %334
  %336 = tail call float @llvm.fmuladd.f32(float %331, float %332, float %335)
  %337 = load float, ptr %28, align 4, !tbaa !34
  %338 = load float, ptr %8, align 4, !tbaa !34
  %339 = tail call float @llvm.fmuladd.f32(float %337, float %338, float %336)
  %340 = fcmp olt float %339, 1.000000e+00
  br i1 %340, label %341, label %381

341:                                              ; preds = %330
  %342 = fneg float %337
  %343 = fmul float %334, %342
  %344 = tail call float @llvm.fmuladd.f32(float %333, float %338, float %343)
  store float %344, ptr %12, align 4, !tbaa !34
  %345 = fneg float %331
  %346 = fmul float %338, %345
  %347 = tail call float @llvm.fmuladd.f32(float %337, float %332, float %346)
  store float %347, ptr %14, align 4, !tbaa !34
  %348 = fneg float %333
  %349 = fmul float %332, %348
  %350 = tail call float @llvm.fmuladd.f32(float %331, float %334, float %349)
  store float %350, ptr %18, align 4, !tbaa !34
  %351 = fmul float %347, %347
  %352 = tail call float @llvm.fmuladd.f32(float %344, float %344, float %351)
  %353 = tail call float @llvm.fmuladd.f32(float %350, float %350, float %352)
  %354 = fcmp ogt float %353, 0x38AA95A5C0000000
  br i1 %354, label %355, label %364

355:                                              ; preds = %341
  %356 = tail call float @sqrtf(float noundef %353) #20
  %357 = fdiv float 1.000000e+00, %356
  %358 = load float, ptr %12, align 4, !tbaa !34
  %359 = fmul float %358, %357
  store float %359, ptr %12, align 4, !tbaa !34
  %360 = load float, ptr %14, align 4, !tbaa !34
  %361 = fmul float %357, %360
  store float %361, ptr %14, align 4, !tbaa !34
  %362 = load float, ptr %18, align 4, !tbaa !34
  %363 = fmul float %357, %362
  br label %365

364:                                              ; preds = %341
  store float 0.000000e+00, ptr %12, align 4, !tbaa !34
  store float 0.000000e+00, ptr %14, align 4, !tbaa !34
  br label %365

365:                                              ; preds = %355, %364
  %366 = phi float [ 0.000000e+00, %364 ], [ %363, %355 ]
  store float %366, ptr %18, align 4, !tbaa !34
  %367 = load float, ptr %14, align 4, !tbaa !34
  %368 = load float, ptr %28, align 4, !tbaa !34
  %369 = load float, ptr %24, align 4, !tbaa !34
  %370 = fneg float %366
  %371 = fmul float %369, %370
  %372 = tail call float @llvm.fmuladd.f32(float %367, float %368, float %371)
  store float %372, ptr %0, align 4, !tbaa !34
  %373 = load float, ptr %22, align 4, !tbaa !34
  %374 = load float, ptr %12, align 4, !tbaa !34
  %375 = fneg float %374
  %376 = fmul float %368, %375
  %377 = tail call float @llvm.fmuladd.f32(float %366, float %373, float %376)
  store float %377, ptr %4, align 4, !tbaa !34
  %378 = fneg float %367
  %379 = fmul float %373, %378
  %380 = tail call float @llvm.fmuladd.f32(float %374, float %369, float %379)
  store float %380, ptr %8, align 4, !tbaa !34
  br label %469

381:                                              ; preds = %330
  %382 = load float, ptr %12, align 4, !tbaa !34
  %383 = load float, ptr %14, align 4, !tbaa !34
  %384 = fmul float %333, %383
  %385 = tail call float @llvm.fmuladd.f32(float %331, float %382, float %384)
  %386 = load float, ptr %18, align 4, !tbaa !34
  %387 = tail call float @llvm.fmuladd.f32(float %337, float %386, float %385)
  %388 = fcmp olt float %387, 1.000000e+00
  br i1 %388, label %389, label %429

389:                                              ; preds = %381
  %390 = fneg float %386
  %391 = fmul float %333, %390
  %392 = tail call float @llvm.fmuladd.f32(float %383, float %337, float %391)
  store float %392, ptr %0, align 4, !tbaa !34
  %393 = fneg float %382
  %394 = fmul float %337, %393
  %395 = tail call float @llvm.fmuladd.f32(float %386, float %331, float %394)
  store float %395, ptr %4, align 4, !tbaa !34
  %396 = fneg float %383
  %397 = fmul float %331, %396
  %398 = tail call float @llvm.fmuladd.f32(float %382, float %333, float %397)
  store float %398, ptr %8, align 4, !tbaa !34
  %399 = fmul float %395, %395
  %400 = tail call float @llvm.fmuladd.f32(float %392, float %392, float %399)
  %401 = tail call float @llvm.fmuladd.f32(float %398, float %398, float %400)
  %402 = fcmp ogt float %401, 0x38AA95A5C0000000
  br i1 %402, label %403, label %412

403:                                              ; preds = %389
  %404 = tail call float @sqrtf(float noundef %401) #20
  %405 = fdiv float 1.000000e+00, %404
  %406 = load float, ptr %0, align 4, !tbaa !34
  %407 = fmul float %406, %405
  store float %407, ptr %0, align 4, !tbaa !34
  %408 = load float, ptr %4, align 4, !tbaa !34
  %409 = fmul float %405, %408
  store float %409, ptr %4, align 4, !tbaa !34
  %410 = load float, ptr %8, align 4, !tbaa !34
  %411 = fmul float %405, %410
  br label %413

412:                                              ; preds = %389
  store float 0.000000e+00, ptr %0, align 4, !tbaa !34
  store float 0.000000e+00, ptr %4, align 4, !tbaa !34
  br label %413

413:                                              ; preds = %403, %412
  %414 = phi float [ 0.000000e+00, %412 ], [ %411, %403 ]
  store float %414, ptr %8, align 4, !tbaa !34
  %415 = load float, ptr %24, align 4, !tbaa !34
  %416 = load float, ptr %28, align 4, !tbaa !34
  %417 = load float, ptr %4, align 4, !tbaa !34
  %418 = fneg float %416
  %419 = fmul float %417, %418
  %420 = tail call float @llvm.fmuladd.f32(float %415, float %414, float %419)
  store float %420, ptr %12, align 4, !tbaa !34
  %421 = load float, ptr %0, align 4, !tbaa !34
  %422 = load float, ptr %22, align 4, !tbaa !34
  %423 = fneg float %422
  %424 = fmul float %414, %423
  %425 = tail call float @llvm.fmuladd.f32(float %416, float %421, float %424)
  store float %425, ptr %14, align 4, !tbaa !34
  %426 = fneg float %415
  %427 = fmul float %421, %426
  %428 = tail call float @llvm.fmuladd.f32(float %422, float %417, float %427)
  store float %428, ptr %18, align 4, !tbaa !34
  br label %469

429:                                              ; preds = %381
  %430 = fneg float %331
  %431 = fmul float %333, %430
  %432 = tail call float @llvm.fmuladd.f32(float %337, float %337, float %431)
  store float %432, ptr %0, align 4, !tbaa !34
  %433 = fneg float %333
  %434 = fmul float %337, %433
  %435 = tail call float @llvm.fmuladd.f32(float %331, float %331, float %434)
  store float %435, ptr %4, align 4, !tbaa !34
  %436 = fneg float %337
  %437 = fmul float %331, %436
  %438 = tail call float @llvm.fmuladd.f32(float %333, float %333, float %437)
  store float %438, ptr %8, align 4, !tbaa !34
  %439 = fmul float %435, %435
  %440 = tail call float @llvm.fmuladd.f32(float %432, float %432, float %439)
  %441 = tail call float @llvm.fmuladd.f32(float %438, float %438, float %440)
  %442 = fcmp ogt float %441, 0x38AA95A5C0000000
  br i1 %442, label %443, label %452

443:                                              ; preds = %429
  %444 = tail call float @sqrtf(float noundef %441) #20
  %445 = fdiv float 1.000000e+00, %444
  %446 = load float, ptr %0, align 4, !tbaa !34
  %447 = fmul float %446, %445
  store float %447, ptr %0, align 4, !tbaa !34
  %448 = load float, ptr %4, align 4, !tbaa !34
  %449 = fmul float %445, %448
  store float %449, ptr %4, align 4, !tbaa !34
  %450 = load float, ptr %8, align 4, !tbaa !34
  %451 = fmul float %445, %450
  br label %453

452:                                              ; preds = %429
  store float 0.000000e+00, ptr %0, align 4, !tbaa !34
  store float 0.000000e+00, ptr %4, align 4, !tbaa !34
  br label %453

453:                                              ; preds = %443, %452
  %454 = phi float [ 0.000000e+00, %452 ], [ %451, %443 ]
  store float %454, ptr %8, align 4, !tbaa !34
  %455 = load float, ptr %24, align 4, !tbaa !34
  %456 = load float, ptr %28, align 4, !tbaa !34
  %457 = load float, ptr %4, align 4, !tbaa !34
  %458 = fneg float %456
  %459 = fmul float %457, %458
  %460 = tail call float @llvm.fmuladd.f32(float %455, float %454, float %459)
  store float %460, ptr %12, align 4, !tbaa !34
  %461 = load float, ptr %0, align 4, !tbaa !34
  %462 = load float, ptr %22, align 4, !tbaa !34
  %463 = fneg float %462
  %464 = fmul float %454, %463
  %465 = tail call float @llvm.fmuladd.f32(float %456, float %461, float %464)
  store float %465, ptr %14, align 4, !tbaa !34
  %466 = fneg float %455
  %467 = fmul float %461, %466
  %468 = tail call float @llvm.fmuladd.f32(float %462, float %457, float %467)
  store float %468, ptr %18, align 4, !tbaa !34
  br label %469

469:                                              ; preds = %53, %365, %453, %413, %229, %314, %277, %90, %178, %138
  %470 = load float, ptr %0, align 4, !tbaa !34
  %471 = fmul float %11, %470
  store float %471, ptr %0, align 4, !tbaa !34
  %472 = load float, ptr %4, align 4, !tbaa !34
  %473 = fmul float %11, %472
  store float %473, ptr %4, align 4, !tbaa !34
  %474 = load float, ptr %8, align 4, !tbaa !34
  %475 = fmul float %11, %474
  store float %475, ptr %8, align 4, !tbaa !34
  %476 = load float, ptr %12, align 4, !tbaa !34
  %477 = fmul float %21, %476
  store float %477, ptr %12, align 4, !tbaa !34
  %478 = load float, ptr %14, align 4, !tbaa !34
  %479 = fmul float %21, %478
  store float %479, ptr %14, align 4, !tbaa !34
  %480 = load float, ptr %18, align 4, !tbaa !34
  %481 = fmul float %21, %480
  store float %481, ptr %18, align 4, !tbaa !34
  %482 = load float, ptr %22, align 4, !tbaa !34
  %483 = fmul float %31, %482
  store float %483, ptr %22, align 4, !tbaa !34
  %484 = load float, ptr %24, align 4, !tbaa !34
  %485 = fmul float %31, %484
  store float %485, ptr %24, align 4, !tbaa !34
  %486 = load float, ptr %28, align 4, !tbaa !34
  %487 = fmul float %31, %486
  store float %487, ptr %28, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @mat3_to_size(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = fmul float %5, %5
  %7 = tail call float @llvm.fmuladd.f32(float %3, float %3, float %6)
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %7)
  %11 = tail call float @sqrtf(float noundef %10) #20
  store float %11, ptr %0, align 4, !tbaa !34
  %12 = getelementptr inbounds [3 x float], ptr %1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds [3 x float], ptr %1, i64 1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fmul float %15, %15
  %17 = tail call float @llvm.fmuladd.f32(float %13, float %13, float %16)
  %18 = getelementptr inbounds [3 x float], ptr %1, i64 1, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %19, float %17)
  %21 = tail call float @sqrtf(float noundef %20) #20
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !34
  %23 = getelementptr inbounds [3 x float], ptr %1, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = getelementptr inbounds [3 x float], ptr %1, i64 2, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = fmul float %26, %26
  %28 = tail call float @llvm.fmuladd.f32(float %24, float %24, float %27)
  %29 = getelementptr inbounds [3 x float], ptr %1, i64 2, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = tail call float @llvm.fmuladd.f32(float %30, float %30, float %28)
  %32 = tail call float @sqrtf(float noundef %31) #20
  %33 = getelementptr inbounds float, ptr %0, i64 2
  store float %32, ptr %33, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @orthogonalize_m4(ptr noundef %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = fmul float %5, %5
  %7 = tail call float @llvm.fmuladd.f32(float %3, float %3, float %6)
  %8 = getelementptr inbounds float, ptr %0, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %7)
  %11 = tail call float @sqrtf(float noundef %10) #20
  %12 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fmul float %15, %15
  %17 = tail call float @llvm.fmuladd.f32(float %13, float %13, float %16)
  %18 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %19, float %17)
  %21 = tail call float @sqrtf(float noundef %20) #20
  %22 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = fmul float %25, %25
  %27 = tail call float @llvm.fmuladd.f32(float %23, float %23, float %26)
  %28 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = tail call float @llvm.fmuladd.f32(float %29, float %29, float %27)
  %31 = tail call float @sqrtf(float noundef %30) #20
  %32 = sext i32 %1 to i64
  %33 = getelementptr inbounds [4 x float], ptr %0, i64 %32
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = getelementptr inbounds float, ptr %33, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = fmul float %36, %36
  %38 = tail call float @llvm.fmuladd.f32(float %34, float %34, float %37)
  %39 = getelementptr inbounds float, ptr %33, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = tail call float @llvm.fmuladd.f32(float %40, float %40, float %38)
  %42 = fcmp ogt float %41, 0x38AA95A5C0000000
  br i1 %42, label %43, label %52

43:                                               ; preds = %2
  %44 = tail call float @sqrtf(float noundef %41) #20
  %45 = fdiv float 1.000000e+00, %44
  %46 = load float, ptr %33, align 4, !tbaa !34
  %47 = fmul float %46, %45
  store float %47, ptr %33, align 4, !tbaa !34
  %48 = load float, ptr %35, align 4, !tbaa !34
  %49 = fmul float %45, %48
  store float %49, ptr %35, align 4, !tbaa !34
  %50 = load float, ptr %39, align 4, !tbaa !34
  %51 = fmul float %45, %50
  br label %53

52:                                               ; preds = %2
  store float 0.000000e+00, ptr %33, align 4, !tbaa !34
  store float 0.000000e+00, ptr %35, align 4, !tbaa !34
  br label %53

53:                                               ; preds = %43, %52
  %54 = phi float [ 0.000000e+00, %52 ], [ %51, %43 ]
  store float %54, ptr %39, align 4, !tbaa !34
  switch i32 %1, label %469 [
    i32 0, label %55
    i32 1, label %194
    i32 2, label %330
  ]

55:                                               ; preds = %53
  %56 = load float, ptr %0, align 4, !tbaa !34
  %57 = load float, ptr %12, align 4, !tbaa !34
  %58 = load float, ptr %4, align 4, !tbaa !34
  %59 = load float, ptr %14, align 4, !tbaa !34
  %60 = fmul float %58, %59
  %61 = tail call float @llvm.fmuladd.f32(float %56, float %57, float %60)
  %62 = load float, ptr %8, align 4, !tbaa !34
  %63 = load float, ptr %18, align 4, !tbaa !34
  %64 = tail call float @llvm.fmuladd.f32(float %62, float %63, float %61)
  %65 = fcmp olt float %64, 1.000000e+00
  br i1 %65, label %66, label %106

66:                                               ; preds = %55
  %67 = fneg float %62
  %68 = fmul float %59, %67
  %69 = tail call float @llvm.fmuladd.f32(float %58, float %63, float %68)
  store float %69, ptr %22, align 4, !tbaa !34
  %70 = fneg float %56
  %71 = fmul float %63, %70
  %72 = tail call float @llvm.fmuladd.f32(float %62, float %57, float %71)
  store float %72, ptr %24, align 4, !tbaa !34
  %73 = fneg float %58
  %74 = fmul float %57, %73
  %75 = tail call float @llvm.fmuladd.f32(float %56, float %59, float %74)
  store float %75, ptr %28, align 4, !tbaa !34
  %76 = fmul float %72, %72
  %77 = tail call float @llvm.fmuladd.f32(float %69, float %69, float %76)
  %78 = tail call float @llvm.fmuladd.f32(float %75, float %75, float %77)
  %79 = fcmp ogt float %78, 0x38AA95A5C0000000
  br i1 %79, label %80, label %89

80:                                               ; preds = %66
  %81 = tail call float @sqrtf(float noundef %78) #20
  %82 = fdiv float 1.000000e+00, %81
  %83 = load float, ptr %22, align 4, !tbaa !34
  %84 = fmul float %83, %82
  store float %84, ptr %22, align 4, !tbaa !34
  %85 = load float, ptr %24, align 4, !tbaa !34
  %86 = fmul float %82, %85
  store float %86, ptr %24, align 4, !tbaa !34
  %87 = load float, ptr %28, align 4, !tbaa !34
  %88 = fmul float %82, %87
  br label %90

89:                                               ; preds = %66
  store float 0.000000e+00, ptr %22, align 4, !tbaa !34
  store float 0.000000e+00, ptr %24, align 4, !tbaa !34
  br label %90

90:                                               ; preds = %80, %89
  %91 = phi float [ 0.000000e+00, %89 ], [ %88, %80 ]
  store float %91, ptr %28, align 4, !tbaa !34
  %92 = load float, ptr %24, align 4, !tbaa !34
  %93 = load float, ptr %8, align 4, !tbaa !34
  %94 = load float, ptr %4, align 4, !tbaa !34
  %95 = fneg float %91
  %96 = fmul float %94, %95
  %97 = tail call float @llvm.fmuladd.f32(float %92, float %93, float %96)
  store float %97, ptr %12, align 4, !tbaa !34
  %98 = load float, ptr %0, align 4, !tbaa !34
  %99 = load float, ptr %22, align 4, !tbaa !34
  %100 = fneg float %99
  %101 = fmul float %93, %100
  %102 = tail call float @llvm.fmuladd.f32(float %91, float %98, float %101)
  store float %102, ptr %14, align 4, !tbaa !34
  %103 = fneg float %92
  %104 = fmul float %98, %103
  %105 = tail call float @llvm.fmuladd.f32(float %99, float %94, float %104)
  store float %105, ptr %18, align 4, !tbaa !34
  br label %469

106:                                              ; preds = %55
  %107 = load float, ptr %22, align 4, !tbaa !34
  %108 = load float, ptr %24, align 4, !tbaa !34
  %109 = fmul float %58, %108
  %110 = tail call float @llvm.fmuladd.f32(float %56, float %107, float %109)
  %111 = load float, ptr %28, align 4, !tbaa !34
  %112 = tail call float @llvm.fmuladd.f32(float %62, float %111, float %110)
  %113 = fcmp olt float %112, 1.000000e+00
  br i1 %113, label %114, label %154

114:                                              ; preds = %106
  %115 = fneg float %111
  %116 = fmul float %58, %115
  %117 = tail call float @llvm.fmuladd.f32(float %108, float %62, float %116)
  store float %117, ptr %12, align 4, !tbaa !34
  %118 = fneg float %107
  %119 = fmul float %62, %118
  %120 = tail call float @llvm.fmuladd.f32(float %111, float %56, float %119)
  store float %120, ptr %14, align 4, !tbaa !34
  %121 = fneg float %108
  %122 = fmul float %56, %121
  %123 = tail call float @llvm.fmuladd.f32(float %107, float %58, float %122)
  store float %123, ptr %18, align 4, !tbaa !34
  %124 = fmul float %120, %120
  %125 = tail call float @llvm.fmuladd.f32(float %117, float %117, float %124)
  %126 = tail call float @llvm.fmuladd.f32(float %123, float %123, float %125)
  %127 = fcmp ogt float %126, 0x38AA95A5C0000000
  br i1 %127, label %128, label %137

128:                                              ; preds = %114
  %129 = tail call float @sqrtf(float noundef %126) #20
  %130 = fdiv float 1.000000e+00, %129
  %131 = load float, ptr %12, align 4, !tbaa !34
  %132 = fmul float %131, %130
  store float %132, ptr %12, align 4, !tbaa !34
  %133 = load float, ptr %14, align 4, !tbaa !34
  %134 = fmul float %130, %133
  store float %134, ptr %14, align 4, !tbaa !34
  %135 = load float, ptr %18, align 4, !tbaa !34
  %136 = fmul float %130, %135
  br label %138

137:                                              ; preds = %114
  store float 0.000000e+00, ptr %12, align 4, !tbaa !34
  store float 0.000000e+00, ptr %14, align 4, !tbaa !34
  br label %138

138:                                              ; preds = %128, %137
  %139 = phi float [ 0.000000e+00, %137 ], [ %136, %128 ]
  store float %139, ptr %18, align 4, !tbaa !34
  %140 = load float, ptr %4, align 4, !tbaa !34
  %141 = load float, ptr %8, align 4, !tbaa !34
  %142 = load float, ptr %14, align 4, !tbaa !34
  %143 = fneg float %141
  %144 = fmul float %142, %143
  %145 = tail call float @llvm.fmuladd.f32(float %140, float %139, float %144)
  store float %145, ptr %22, align 4, !tbaa !34
  %146 = load float, ptr %12, align 4, !tbaa !34
  %147 = load float, ptr %0, align 4, !tbaa !34
  %148 = fneg float %147
  %149 = fmul float %139, %148
  %150 = tail call float @llvm.fmuladd.f32(float %141, float %146, float %149)
  store float %150, ptr %24, align 4, !tbaa !34
  %151 = fneg float %140
  %152 = fmul float %146, %151
  %153 = tail call float @llvm.fmuladd.f32(float %147, float %142, float %152)
  store float %153, ptr %28, align 4, !tbaa !34
  br label %469

154:                                              ; preds = %106
  %155 = fneg float %62
  %156 = fmul float %62, %155
  %157 = tail call float @llvm.fmuladd.f32(float %58, float %56, float %156)
  store float %157, ptr %22, align 4, !tbaa !34
  %158 = fneg float %56
  %159 = fmul float %56, %158
  %160 = tail call float @llvm.fmuladd.f32(float %62, float %58, float %159)
  store float %160, ptr %24, align 4, !tbaa !34
  %161 = fneg float %58
  %162 = fmul float %58, %161
  %163 = tail call float @llvm.fmuladd.f32(float %56, float %62, float %162)
  store float %163, ptr %28, align 4, !tbaa !34
  %164 = fmul float %160, %160
  %165 = tail call float @llvm.fmuladd.f32(float %157, float %157, float %164)
  %166 = tail call float @llvm.fmuladd.f32(float %163, float %163, float %165)
  %167 = fcmp ogt float %166, 0x38AA95A5C0000000
  br i1 %167, label %168, label %177

168:                                              ; preds = %154
  %169 = tail call float @sqrtf(float noundef %166) #20
  %170 = fdiv float 1.000000e+00, %169
  %171 = load float, ptr %22, align 4, !tbaa !34
  %172 = fmul float %171, %170
  store float %172, ptr %22, align 4, !tbaa !34
  %173 = load float, ptr %24, align 4, !tbaa !34
  %174 = fmul float %170, %173
  store float %174, ptr %24, align 4, !tbaa !34
  %175 = load float, ptr %28, align 4, !tbaa !34
  %176 = fmul float %170, %175
  br label %178

177:                                              ; preds = %154
  store float 0.000000e+00, ptr %22, align 4, !tbaa !34
  store float 0.000000e+00, ptr %24, align 4, !tbaa !34
  br label %178

178:                                              ; preds = %168, %177
  %179 = phi float [ 0.000000e+00, %177 ], [ %176, %168 ]
  store float %179, ptr %28, align 4, !tbaa !34
  %180 = load float, ptr %24, align 4, !tbaa !34
  %181 = load float, ptr %8, align 4, !tbaa !34
  %182 = load float, ptr %4, align 4, !tbaa !34
  %183 = fneg float %179
  %184 = fmul float %182, %183
  %185 = tail call float @llvm.fmuladd.f32(float %180, float %181, float %184)
  store float %185, ptr %12, align 4, !tbaa !34
  %186 = load float, ptr %0, align 4, !tbaa !34
  %187 = load float, ptr %22, align 4, !tbaa !34
  %188 = fneg float %187
  %189 = fmul float %181, %188
  %190 = tail call float @llvm.fmuladd.f32(float %179, float %186, float %189)
  store float %190, ptr %14, align 4, !tbaa !34
  %191 = fneg float %180
  %192 = fmul float %186, %191
  %193 = tail call float @llvm.fmuladd.f32(float %187, float %182, float %192)
  store float %193, ptr %18, align 4, !tbaa !34
  br label %469

194:                                              ; preds = %53
  %195 = load float, ptr %12, align 4, !tbaa !34
  %196 = load float, ptr %0, align 4, !tbaa !34
  %197 = load float, ptr %14, align 4, !tbaa !34
  %198 = load float, ptr %4, align 4, !tbaa !34
  %199 = fmul float %197, %198
  %200 = tail call float @llvm.fmuladd.f32(float %195, float %196, float %199)
  %201 = load float, ptr %18, align 4, !tbaa !34
  %202 = load float, ptr %8, align 4, !tbaa !34
  %203 = tail call float @llvm.fmuladd.f32(float %201, float %202, float %200)
  %204 = fcmp olt float %203, 1.000000e+00
  br i1 %204, label %205, label %245

205:                                              ; preds = %194
  %206 = fneg float %202
  %207 = fmul float %197, %206
  %208 = tail call float @llvm.fmuladd.f32(float %198, float %201, float %207)
  store float %208, ptr %22, align 4, !tbaa !34
  %209 = fneg float %196
  %210 = fmul float %201, %209
  %211 = tail call float @llvm.fmuladd.f32(float %202, float %195, float %210)
  store float %211, ptr %24, align 4, !tbaa !34
  %212 = fneg float %198
  %213 = fmul float %195, %212
  %214 = tail call float @llvm.fmuladd.f32(float %196, float %197, float %213)
  store float %214, ptr %28, align 4, !tbaa !34
  %215 = fmul float %211, %211
  %216 = tail call float @llvm.fmuladd.f32(float %208, float %208, float %215)
  %217 = tail call float @llvm.fmuladd.f32(float %214, float %214, float %216)
  %218 = fcmp ogt float %217, 0x38AA95A5C0000000
  br i1 %218, label %219, label %228

219:                                              ; preds = %205
  %220 = tail call float @sqrtf(float noundef %217) #20
  %221 = fdiv float 1.000000e+00, %220
  %222 = load float, ptr %22, align 4, !tbaa !34
  %223 = fmul float %222, %221
  store float %223, ptr %22, align 4, !tbaa !34
  %224 = load float, ptr %24, align 4, !tbaa !34
  %225 = fmul float %221, %224
  store float %225, ptr %24, align 4, !tbaa !34
  %226 = load float, ptr %28, align 4, !tbaa !34
  %227 = fmul float %221, %226
  br label %229

228:                                              ; preds = %205
  store float 0.000000e+00, ptr %22, align 4, !tbaa !34
  store float 0.000000e+00, ptr %24, align 4, !tbaa !34
  br label %229

229:                                              ; preds = %219, %228
  %230 = phi float [ 0.000000e+00, %228 ], [ %227, %219 ]
  store float %230, ptr %28, align 4, !tbaa !34
  %231 = load float, ptr %14, align 4, !tbaa !34
  %232 = load float, ptr %18, align 4, !tbaa !34
  %233 = load float, ptr %24, align 4, !tbaa !34
  %234 = fneg float %232
  %235 = fmul float %233, %234
  %236 = tail call float @llvm.fmuladd.f32(float %231, float %230, float %235)
  store float %236, ptr %0, align 4, !tbaa !34
  %237 = load float, ptr %22, align 4, !tbaa !34
  %238 = load float, ptr %12, align 4, !tbaa !34
  %239 = fneg float %238
  %240 = fmul float %230, %239
  %241 = tail call float @llvm.fmuladd.f32(float %232, float %237, float %240)
  store float %241, ptr %4, align 4, !tbaa !34
  %242 = fneg float %231
  %243 = fmul float %237, %242
  %244 = tail call float @llvm.fmuladd.f32(float %238, float %233, float %243)
  store float %244, ptr %8, align 4, !tbaa !34
  br label %469

245:                                              ; preds = %194
  %246 = load float, ptr %22, align 4, !tbaa !34
  %247 = load float, ptr %24, align 4, !tbaa !34
  %248 = fmul float %198, %247
  %249 = tail call float @llvm.fmuladd.f32(float %196, float %246, float %248)
  %250 = load float, ptr %28, align 4, !tbaa !34
  %251 = tail call float @llvm.fmuladd.f32(float %202, float %250, float %249)
  %252 = fcmp olt float %251, 1.000000e+00
  %253 = fneg float %201
  %254 = fneg float %195
  %255 = fneg float %197
  br i1 %252, label %256, label %293

256:                                              ; preds = %245
  %257 = fmul float %247, %253
  %258 = tail call float @llvm.fmuladd.f32(float %197, float %250, float %257)
  store float %258, ptr %0, align 4, !tbaa !34
  %259 = fmul float %250, %254
  %260 = tail call float @llvm.fmuladd.f32(float %201, float %246, float %259)
  store float %260, ptr %4, align 4, !tbaa !34
  %261 = fmul float %246, %255
  %262 = tail call float @llvm.fmuladd.f32(float %195, float %247, float %261)
  store float %262, ptr %8, align 4, !tbaa !34
  %263 = fmul float %260, %260
  %264 = tail call float @llvm.fmuladd.f32(float %258, float %258, float %263)
  %265 = tail call float @llvm.fmuladd.f32(float %262, float %262, float %264)
  %266 = fcmp ogt float %265, 0x38AA95A5C0000000
  br i1 %266, label %267, label %276

267:                                              ; preds = %256
  %268 = tail call float @sqrtf(float noundef %265) #20
  %269 = fdiv float 1.000000e+00, %268
  %270 = load float, ptr %0, align 4, !tbaa !34
  %271 = fmul float %270, %269
  store float %271, ptr %0, align 4, !tbaa !34
  %272 = load float, ptr %4, align 4, !tbaa !34
  %273 = fmul float %269, %272
  store float %273, ptr %4, align 4, !tbaa !34
  %274 = load float, ptr %8, align 4, !tbaa !34
  %275 = fmul float %269, %274
  br label %277

276:                                              ; preds = %256
  store float 0.000000e+00, ptr %0, align 4, !tbaa !34
  store float 0.000000e+00, ptr %4, align 4, !tbaa !34
  br label %277

277:                                              ; preds = %267, %276
  %278 = phi float [ 0.000000e+00, %276 ], [ %275, %267 ]
  store float %278, ptr %8, align 4, !tbaa !34
  %279 = load float, ptr %4, align 4, !tbaa !34
  %280 = load float, ptr %18, align 4, !tbaa !34
  %281 = load float, ptr %14, align 4, !tbaa !34
  %282 = fneg float %278
  %283 = fmul float %281, %282
  %284 = tail call float @llvm.fmuladd.f32(float %279, float %280, float %283)
  store float %284, ptr %22, align 4, !tbaa !34
  %285 = load float, ptr %12, align 4, !tbaa !34
  %286 = load float, ptr %0, align 4, !tbaa !34
  %287 = fneg float %286
  %288 = fmul float %280, %287
  %289 = tail call float @llvm.fmuladd.f32(float %278, float %285, float %288)
  store float %289, ptr %24, align 4, !tbaa !34
  %290 = fneg float %279
  %291 = fmul float %285, %290
  %292 = tail call float @llvm.fmuladd.f32(float %286, float %281, float %291)
  store float %292, ptr %28, align 4, !tbaa !34
  br label %469

293:                                              ; preds = %245
  %294 = fmul float %201, %253
  %295 = tail call float @llvm.fmuladd.f32(float %197, float %195, float %294)
  store float %295, ptr %0, align 4, !tbaa !34
  %296 = fmul float %195, %254
  %297 = tail call float @llvm.fmuladd.f32(float %201, float %197, float %296)
  store float %297, ptr %4, align 4, !tbaa !34
  %298 = fmul float %197, %255
  %299 = tail call float @llvm.fmuladd.f32(float %195, float %201, float %298)
  store float %299, ptr %8, align 4, !tbaa !34
  %300 = fmul float %297, %297
  %301 = tail call float @llvm.fmuladd.f32(float %295, float %295, float %300)
  %302 = tail call float @llvm.fmuladd.f32(float %299, float %299, float %301)
  %303 = fcmp ogt float %302, 0x38AA95A5C0000000
  br i1 %303, label %304, label %313

304:                                              ; preds = %293
  %305 = tail call float @sqrtf(float noundef %302) #20
  %306 = fdiv float 1.000000e+00, %305
  %307 = load float, ptr %0, align 4, !tbaa !34
  %308 = fmul float %307, %306
  store float %308, ptr %0, align 4, !tbaa !34
  %309 = load float, ptr %4, align 4, !tbaa !34
  %310 = fmul float %306, %309
  store float %310, ptr %4, align 4, !tbaa !34
  %311 = load float, ptr %8, align 4, !tbaa !34
  %312 = fmul float %306, %311
  br label %314

313:                                              ; preds = %293
  store float 0.000000e+00, ptr %0, align 4, !tbaa !34
  store float 0.000000e+00, ptr %4, align 4, !tbaa !34
  br label %314

314:                                              ; preds = %304, %313
  %315 = phi float [ 0.000000e+00, %313 ], [ %312, %304 ]
  store float %315, ptr %8, align 4, !tbaa !34
  %316 = load float, ptr %4, align 4, !tbaa !34
  %317 = load float, ptr %18, align 4, !tbaa !34
  %318 = load float, ptr %14, align 4, !tbaa !34
  %319 = fneg float %315
  %320 = fmul float %318, %319
  %321 = tail call float @llvm.fmuladd.f32(float %316, float %317, float %320)
  store float %321, ptr %22, align 4, !tbaa !34
  %322 = load float, ptr %12, align 4, !tbaa !34
  %323 = load float, ptr %0, align 4, !tbaa !34
  %324 = fneg float %323
  %325 = fmul float %317, %324
  %326 = tail call float @llvm.fmuladd.f32(float %315, float %322, float %325)
  store float %326, ptr %24, align 4, !tbaa !34
  %327 = fneg float %316
  %328 = fmul float %322, %327
  %329 = tail call float @llvm.fmuladd.f32(float %323, float %318, float %328)
  store float %329, ptr %28, align 4, !tbaa !34
  br label %469

330:                                              ; preds = %53
  %331 = load float, ptr %22, align 4, !tbaa !34
  %332 = load float, ptr %0, align 4, !tbaa !34
  %333 = load float, ptr %24, align 4, !tbaa !34
  %334 = load float, ptr %4, align 4, !tbaa !34
  %335 = fmul float %333, %334
  %336 = tail call float @llvm.fmuladd.f32(float %331, float %332, float %335)
  %337 = load float, ptr %28, align 4, !tbaa !34
  %338 = load float, ptr %8, align 4, !tbaa !34
  %339 = tail call float @llvm.fmuladd.f32(float %337, float %338, float %336)
  %340 = fcmp olt float %339, 1.000000e+00
  br i1 %340, label %341, label %381

341:                                              ; preds = %330
  %342 = fneg float %337
  %343 = fmul float %334, %342
  %344 = tail call float @llvm.fmuladd.f32(float %333, float %338, float %343)
  store float %344, ptr %12, align 4, !tbaa !34
  %345 = fneg float %331
  %346 = fmul float %338, %345
  %347 = tail call float @llvm.fmuladd.f32(float %337, float %332, float %346)
  store float %347, ptr %14, align 4, !tbaa !34
  %348 = fneg float %333
  %349 = fmul float %332, %348
  %350 = tail call float @llvm.fmuladd.f32(float %331, float %334, float %349)
  store float %350, ptr %18, align 4, !tbaa !34
  %351 = fmul float %347, %347
  %352 = tail call float @llvm.fmuladd.f32(float %344, float %344, float %351)
  %353 = tail call float @llvm.fmuladd.f32(float %350, float %350, float %352)
  %354 = fcmp ogt float %353, 0x38AA95A5C0000000
  br i1 %354, label %355, label %364

355:                                              ; preds = %341
  %356 = tail call float @sqrtf(float noundef %353) #20
  %357 = fdiv float 1.000000e+00, %356
  %358 = load float, ptr %12, align 4, !tbaa !34
  %359 = fmul float %358, %357
  store float %359, ptr %12, align 4, !tbaa !34
  %360 = load float, ptr %14, align 4, !tbaa !34
  %361 = fmul float %357, %360
  store float %361, ptr %14, align 4, !tbaa !34
  %362 = load float, ptr %18, align 4, !tbaa !34
  %363 = fmul float %357, %362
  br label %365

364:                                              ; preds = %341
  store float 0.000000e+00, ptr %12, align 4, !tbaa !34
  store float 0.000000e+00, ptr %14, align 4, !tbaa !34
  br label %365

365:                                              ; preds = %355, %364
  %366 = phi float [ 0.000000e+00, %364 ], [ %363, %355 ]
  store float %366, ptr %18, align 4, !tbaa !34
  %367 = load float, ptr %14, align 4, !tbaa !34
  %368 = load float, ptr %28, align 4, !tbaa !34
  %369 = load float, ptr %24, align 4, !tbaa !34
  %370 = fneg float %366
  %371 = fmul float %369, %370
  %372 = tail call float @llvm.fmuladd.f32(float %367, float %368, float %371)
  store float %372, ptr %0, align 4, !tbaa !34
  %373 = load float, ptr %22, align 4, !tbaa !34
  %374 = load float, ptr %12, align 4, !tbaa !34
  %375 = fneg float %374
  %376 = fmul float %368, %375
  %377 = tail call float @llvm.fmuladd.f32(float %366, float %373, float %376)
  store float %377, ptr %4, align 4, !tbaa !34
  %378 = fneg float %367
  %379 = fmul float %373, %378
  %380 = tail call float @llvm.fmuladd.f32(float %374, float %369, float %379)
  store float %380, ptr %8, align 4, !tbaa !34
  br label %469

381:                                              ; preds = %330
  %382 = load float, ptr %12, align 4, !tbaa !34
  %383 = load float, ptr %14, align 4, !tbaa !34
  %384 = fmul float %333, %383
  %385 = tail call float @llvm.fmuladd.f32(float %331, float %382, float %384)
  %386 = load float, ptr %18, align 4, !tbaa !34
  %387 = tail call float @llvm.fmuladd.f32(float %337, float %386, float %385)
  %388 = fcmp olt float %387, 1.000000e+00
  br i1 %388, label %389, label %429

389:                                              ; preds = %381
  %390 = fneg float %386
  %391 = fmul float %333, %390
  %392 = tail call float @llvm.fmuladd.f32(float %383, float %337, float %391)
  store float %392, ptr %0, align 4, !tbaa !34
  %393 = fneg float %382
  %394 = fmul float %337, %393
  %395 = tail call float @llvm.fmuladd.f32(float %386, float %331, float %394)
  store float %395, ptr %4, align 4, !tbaa !34
  %396 = fneg float %383
  %397 = fmul float %331, %396
  %398 = tail call float @llvm.fmuladd.f32(float %382, float %333, float %397)
  store float %398, ptr %8, align 4, !tbaa !34
  %399 = fmul float %395, %395
  %400 = tail call float @llvm.fmuladd.f32(float %392, float %392, float %399)
  %401 = tail call float @llvm.fmuladd.f32(float %398, float %398, float %400)
  %402 = fcmp ogt float %401, 0x38AA95A5C0000000
  br i1 %402, label %403, label %412

403:                                              ; preds = %389
  %404 = tail call float @sqrtf(float noundef %401) #20
  %405 = fdiv float 1.000000e+00, %404
  %406 = load float, ptr %0, align 4, !tbaa !34
  %407 = fmul float %406, %405
  store float %407, ptr %0, align 4, !tbaa !34
  %408 = load float, ptr %4, align 4, !tbaa !34
  %409 = fmul float %405, %408
  store float %409, ptr %4, align 4, !tbaa !34
  %410 = load float, ptr %8, align 4, !tbaa !34
  %411 = fmul float %405, %410
  br label %413

412:                                              ; preds = %389
  store float 0.000000e+00, ptr %0, align 4, !tbaa !34
  store float 0.000000e+00, ptr %4, align 4, !tbaa !34
  br label %413

413:                                              ; preds = %403, %412
  %414 = phi float [ 0.000000e+00, %412 ], [ %411, %403 ]
  store float %414, ptr %8, align 4, !tbaa !34
  %415 = load float, ptr %24, align 4, !tbaa !34
  %416 = load float, ptr %28, align 4, !tbaa !34
  %417 = load float, ptr %4, align 4, !tbaa !34
  %418 = fneg float %416
  %419 = fmul float %417, %418
  %420 = tail call float @llvm.fmuladd.f32(float %415, float %414, float %419)
  store float %420, ptr %12, align 4, !tbaa !34
  %421 = load float, ptr %0, align 4, !tbaa !34
  %422 = load float, ptr %22, align 4, !tbaa !34
  %423 = fneg float %422
  %424 = fmul float %414, %423
  %425 = tail call float @llvm.fmuladd.f32(float %416, float %421, float %424)
  store float %425, ptr %14, align 4, !tbaa !34
  %426 = fneg float %415
  %427 = fmul float %421, %426
  %428 = tail call float @llvm.fmuladd.f32(float %422, float %417, float %427)
  store float %428, ptr %18, align 4, !tbaa !34
  br label %469

429:                                              ; preds = %381
  %430 = fneg float %331
  %431 = fmul float %333, %430
  %432 = tail call float @llvm.fmuladd.f32(float %337, float %337, float %431)
  store float %432, ptr %0, align 4, !tbaa !34
  %433 = fneg float %333
  %434 = fmul float %337, %433
  %435 = tail call float @llvm.fmuladd.f32(float %331, float %331, float %434)
  store float %435, ptr %4, align 4, !tbaa !34
  %436 = fneg float %337
  %437 = fmul float %331, %436
  %438 = tail call float @llvm.fmuladd.f32(float %333, float %333, float %437)
  store float %438, ptr %8, align 4, !tbaa !34
  %439 = fmul float %435, %435
  %440 = tail call float @llvm.fmuladd.f32(float %432, float %432, float %439)
  %441 = tail call float @llvm.fmuladd.f32(float %438, float %438, float %440)
  %442 = fcmp ogt float %441, 0x38AA95A5C0000000
  br i1 %442, label %443, label %452

443:                                              ; preds = %429
  %444 = tail call float @sqrtf(float noundef %441) #20
  %445 = fdiv float 1.000000e+00, %444
  %446 = load float, ptr %0, align 4, !tbaa !34
  %447 = fmul float %446, %445
  store float %447, ptr %0, align 4, !tbaa !34
  %448 = load float, ptr %4, align 4, !tbaa !34
  %449 = fmul float %445, %448
  store float %449, ptr %4, align 4, !tbaa !34
  %450 = load float, ptr %8, align 4, !tbaa !34
  %451 = fmul float %445, %450
  br label %453

452:                                              ; preds = %429
  store float 0.000000e+00, ptr %0, align 4, !tbaa !34
  store float 0.000000e+00, ptr %4, align 4, !tbaa !34
  br label %453

453:                                              ; preds = %443, %452
  %454 = phi float [ 0.000000e+00, %452 ], [ %451, %443 ]
  store float %454, ptr %8, align 4, !tbaa !34
  %455 = load float, ptr %24, align 4, !tbaa !34
  %456 = load float, ptr %28, align 4, !tbaa !34
  %457 = load float, ptr %4, align 4, !tbaa !34
  %458 = fneg float %456
  %459 = fmul float %457, %458
  %460 = tail call float @llvm.fmuladd.f32(float %455, float %454, float %459)
  store float %460, ptr %12, align 4, !tbaa !34
  %461 = load float, ptr %0, align 4, !tbaa !34
  %462 = load float, ptr %22, align 4, !tbaa !34
  %463 = fneg float %462
  %464 = fmul float %454, %463
  %465 = tail call float @llvm.fmuladd.f32(float %456, float %461, float %464)
  store float %465, ptr %14, align 4, !tbaa !34
  %466 = fneg float %455
  %467 = fmul float %461, %466
  %468 = tail call float @llvm.fmuladd.f32(float %462, float %457, float %467)
  store float %468, ptr %18, align 4, !tbaa !34
  br label %469

469:                                              ; preds = %53, %365, %453, %413, %229, %314, %277, %90, %178, %138
  %470 = load float, ptr %0, align 4, !tbaa !34
  %471 = fmul float %11, %470
  store float %471, ptr %0, align 4, !tbaa !34
  %472 = load float, ptr %4, align 4, !tbaa !34
  %473 = fmul float %11, %472
  store float %473, ptr %4, align 4, !tbaa !34
  %474 = load float, ptr %8, align 4, !tbaa !34
  %475 = fmul float %11, %474
  store float %475, ptr %8, align 4, !tbaa !34
  %476 = load float, ptr %12, align 4, !tbaa !34
  %477 = fmul float %21, %476
  store float %477, ptr %12, align 4, !tbaa !34
  %478 = load float, ptr %14, align 4, !tbaa !34
  %479 = fmul float %21, %478
  store float %479, ptr %14, align 4, !tbaa !34
  %480 = load float, ptr %18, align 4, !tbaa !34
  %481 = fmul float %21, %480
  store float %481, ptr %18, align 4, !tbaa !34
  %482 = load float, ptr %22, align 4, !tbaa !34
  %483 = fmul float %31, %482
  store float %483, ptr %22, align 4, !tbaa !34
  %484 = load float, ptr %24, align 4, !tbaa !34
  %485 = fmul float %31, %484
  store float %485, ptr %24, align 4, !tbaa !34
  %486 = load float, ptr %28, align 4, !tbaa !34
  %487 = fmul float %31, %486
  store float %487, ptr %28, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @mat4_to_size(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = fmul float %5, %5
  %7 = tail call float @llvm.fmuladd.f32(float %3, float %3, float %6)
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %7)
  %11 = tail call float @sqrtf(float noundef %10) #20
  store float %11, ptr %0, align 4, !tbaa !34
  %12 = getelementptr inbounds [4 x float], ptr %1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fmul float %15, %15
  %17 = tail call float @llvm.fmuladd.f32(float %13, float %13, float %16)
  %18 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %19, float %17)
  %21 = tail call float @sqrtf(float noundef %20) #20
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !34
  %23 = getelementptr inbounds [4 x float], ptr %1, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = fmul float %26, %26
  %28 = tail call float @llvm.fmuladd.f32(float %24, float %24, float %27)
  %29 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = tail call float @llvm.fmuladd.f32(float %30, float %30, float %28)
  %32 = tail call float @sqrtf(float noundef %31) #20
  %33 = getelementptr inbounds float, ptr %0, i64 2
  store float %32, ptr %33, align 4, !tbaa !34
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @is_orthogonal_m3(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  br label %2

2:                                                ; preds = %1, %28
  %3 = phi i64 [ 0, %1 ], [ %29, %28 ]
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds [3 x float], ptr %0, i64 %3
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %6, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %6, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !34
  br label %15

12:                                               ; preds = %15
  %13 = add nuw nsw i64 %16, 1
  %14 = icmp eq i64 %13, %3
  br i1 %14, label %28, label %15, !llvm.loop !76

15:                                               ; preds = %5, %12
  %16 = phi i64 [ 0, %5 ], [ %13, %12 ]
  %17 = getelementptr inbounds [3 x float], ptr %0, i64 %16
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %17, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fmul float %9, %20
  %22 = tail call float @llvm.fmuladd.f32(float %7, float %18, float %21)
  %23 = getelementptr inbounds float, ptr %17, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = tail call float @llvm.fmuladd.f32(float %11, float %24, float %22)
  %26 = tail call float @llvm.fabs.f32(float %25)
  %27 = fcmp ogt float %26, 0x3E88000000000000
  br i1 %27, label %31, label %12

28:                                               ; preds = %12, %2
  %29 = add nuw nsw i64 %3, 1
  %30 = icmp eq i64 %29, 3
  br i1 %30, label %31, label %2, !llvm.loop !77

31:                                               ; preds = %28, %15
  %32 = phi i8 [ 0, %15 ], [ 1, %28 ]
  ret i8 %32
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @is_orthogonal_m4(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  br label %2

2:                                                ; preds = %1, %33
  %3 = phi i64 [ 0, %1 ], [ %34, %33 ]
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %33, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds [4 x float], ptr %0, i64 %3
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %6, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %6, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %6, i64 3
  %13 = load float, ptr %12, align 4, !tbaa !34
  br label %17

14:                                               ; preds = %17
  %15 = add nuw nsw i64 %18, 1
  %16 = icmp eq i64 %15, %3
  br i1 %16, label %33, label %17, !llvm.loop !78

17:                                               ; preds = %5, %14
  %18 = phi i64 [ 0, %5 ], [ %15, %14 ]
  %19 = getelementptr inbounds [4 x float], ptr %0, i64 %18
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = getelementptr inbounds float, ptr %19, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = fmul float %9, %22
  %24 = tail call float @llvm.fmuladd.f32(float %7, float %20, float %23)
  %25 = getelementptr inbounds float, ptr %19, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = tail call float @llvm.fmuladd.f32(float %11, float %26, float %24)
  %28 = getelementptr inbounds float, ptr %19, i64 3
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = tail call float @llvm.fmuladd.f32(float %13, float %29, float %27)
  %31 = tail call float @llvm.fabs.f32(float %30)
  %32 = fcmp ogt float %31, 0x3E88000000000000
  br i1 %32, label %36, label %14

33:                                               ; preds = %14, %2
  %34 = add nuw nsw i64 %3, 1
  %35 = icmp eq i64 %34, 4
  br i1 %35, label %36, label %2, !llvm.loop !79

36:                                               ; preds = %33, %17
  %37 = phi i8 [ 0, %17 ], [ 1, %33 ]
  ret i8 %37
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @is_orthonormal_m3(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  br label %2

2:                                                ; preds = %1, %29
  %3 = phi i64 [ 0, %1 ], [ %30, %29 ]
  %4 = phi i1 [ true, %1 ], [ %31, %29 ]
  %5 = icmp eq i64 %3, 0
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds [3 x float], ptr %0, i64 %3
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %7, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %7, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  br label %16

13:                                               ; preds = %16
  %14 = add nuw nsw i64 %17, 1
  %15 = icmp eq i64 %14, %3
  br i1 %15, label %29, label %16, !llvm.loop !76

16:                                               ; preds = %6, %13
  %17 = phi i64 [ 0, %6 ], [ %14, %13 ]
  %18 = getelementptr inbounds [3 x float], ptr %0, i64 %17
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %18, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fmul float %10, %21
  %23 = tail call float @llvm.fmuladd.f32(float %8, float %19, float %22)
  %24 = getelementptr inbounds float, ptr %18, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = tail call float @llvm.fmuladd.f32(float %12, float %25, float %23)
  %27 = tail call float @llvm.fabs.f32(float %26)
  %28 = fcmp ogt float %27, 0x3E88000000000000
  br i1 %28, label %33, label %13

29:                                               ; preds = %13, %2
  %30 = add nuw nsw i64 %3, 1
  %31 = icmp ult i64 %3, 2
  %32 = icmp eq i64 %30, 3
  br i1 %32, label %34, label %2, !llvm.loop !77

33:                                               ; preds = %16
  br i1 %4, label %52, label %34

34:                                               ; preds = %29, %33
  br label %38

35:                                               ; preds = %38
  %36 = add nuw nsw i64 %39, 1
  %37 = icmp eq i64 %36, 3
  br i1 %37, label %52, label %38, !llvm.loop !80

38:                                               ; preds = %34, %35
  %39 = phi i64 [ %36, %35 ], [ 0, %34 ]
  %40 = getelementptr inbounds [3 x float], ptr %0, i64 %39
  %41 = load float, ptr %40, align 4, !tbaa !34
  %42 = getelementptr inbounds float, ptr %40, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !34
  %44 = fmul float %43, %43
  %45 = tail call float @llvm.fmuladd.f32(float %41, float %41, float %44)
  %46 = getelementptr inbounds float, ptr %40, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !34
  %48 = tail call float @llvm.fmuladd.f32(float %47, float %47, float %45)
  %49 = fadd float %48, -1.000000e+00
  %50 = tail call float @llvm.fabs.f32(float %49)
  %51 = fcmp ogt float %50, 0x3E88000000000000
  br i1 %51, label %52, label %35

52:                                               ; preds = %38, %35, %33
  %53 = phi i8 [ 0, %33 ], [ 0, %38 ], [ 1, %35 ]
  ret i8 %53
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @is_orthonormal_m4(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  br label %2

2:                                                ; preds = %33, %1
  %3 = phi i64 [ 0, %1 ], [ %34, %33 ]
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %33, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds [4 x float], ptr %0, i64 %3
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %6, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %6, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %6, i64 3
  %13 = load float, ptr %12, align 4, !tbaa !34
  br label %17

14:                                               ; preds = %17
  %15 = add nuw nsw i64 %18, 1
  %16 = icmp eq i64 %15, %3
  br i1 %16, label %33, label %17, !llvm.loop !78

17:                                               ; preds = %14, %5
  %18 = phi i64 [ 0, %5 ], [ %15, %14 ]
  %19 = getelementptr inbounds [4 x float], ptr %0, i64 %18
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = getelementptr inbounds float, ptr %19, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = fmul float %9, %22
  %24 = tail call float @llvm.fmuladd.f32(float %7, float %20, float %23)
  %25 = getelementptr inbounds float, ptr %19, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = tail call float @llvm.fmuladd.f32(float %11, float %26, float %24)
  %28 = getelementptr inbounds float, ptr %19, i64 3
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = tail call float @llvm.fmuladd.f32(float %13, float %29, float %27)
  %31 = tail call float @llvm.fabs.f32(float %30)
  %32 = fcmp ogt float %31, 0x3E88000000000000
  br i1 %32, label %56, label %14

33:                                               ; preds = %14, %2
  %34 = add nuw nsw i64 %3, 1
  %35 = icmp eq i64 %34, 4
  br i1 %35, label %39, label %2, !llvm.loop !79

36:                                               ; preds = %39
  %37 = add nuw nsw i64 %40, 1
  %38 = icmp eq i64 %37, 4
  br i1 %38, label %56, label %39, !llvm.loop !81

39:                                               ; preds = %33, %36
  %40 = phi i64 [ %37, %36 ], [ 0, %33 ]
  %41 = getelementptr inbounds [4 x float], ptr %0, i64 %40
  %42 = load float, ptr %41, align 4, !tbaa !34
  %43 = getelementptr inbounds float, ptr %41, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !34
  %45 = fmul float %44, %44
  %46 = tail call float @llvm.fmuladd.f32(float %42, float %42, float %45)
  %47 = getelementptr inbounds float, ptr %41, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !34
  %49 = tail call float @llvm.fmuladd.f32(float %48, float %48, float %46)
  %50 = getelementptr inbounds float, ptr %41, i64 3
  %51 = load float, ptr %50, align 4, !tbaa !34
  %52 = tail call float @llvm.fmuladd.f32(float %51, float %51, float %49)
  %53 = fadd float %52, -1.000000e+00
  %54 = tail call float @llvm.fabs.f32(float %53)
  %55 = fcmp ogt float %54, 0x3E88000000000000
  br i1 %55, label %56, label %36

56:                                               ; preds = %17, %39, %36
  %57 = phi i8 [ 0, %39 ], [ 1, %36 ], [ 0, %17 ]
  ret i8 %57
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @is_uniform_scaled_m3(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = load float, ptr %0, align 4
  %3 = getelementptr inbounds i8, ptr %0, i64 4
  %4 = load float, ptr %3, align 4
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  %6 = load float, ptr %5, align 4
  %7 = getelementptr inbounds i8, ptr %0, i64 12
  %8 = load float, ptr %7, align 4
  %9 = getelementptr inbounds i8, ptr %0, i64 16
  %10 = load float, ptr %9, align 4
  %11 = getelementptr inbounds i8, ptr %0, i64 20
  %12 = load float, ptr %11, align 4
  %13 = getelementptr inbounds i8, ptr %0, i64 24
  %14 = load float, ptr %13, align 4
  %15 = getelementptr inbounds i8, ptr %0, i64 28
  %16 = load float, ptr %15, align 4
  %17 = getelementptr inbounds i8, ptr %0, i64 32
  %18 = load float, ptr %17, align 4
  %19 = fmul float %4, %4
  %20 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %19)
  %21 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %20)
  %22 = fmul float %10, %10
  %23 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %22)
  %24 = tail call float @llvm.fmuladd.f32(float %12, float %12, float %23)
  %25 = fmul float %8, %8
  %26 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %25)
  %27 = tail call float @llvm.fmuladd.f32(float %14, float %14, float %26)
  %28 = tail call float @llvm.fmuladd.f32(float %4, float %4, float %22)
  %29 = tail call float @llvm.fmuladd.f32(float %16, float %16, float %28)
  %30 = fmul float %12, %12
  %31 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %30)
  %32 = tail call float @llvm.fmuladd.f32(float %18, float %18, float %31)
  %33 = fsub float %24, %21
  %34 = tail call float @llvm.fabs.f32(float %33)
  %35 = fcmp ugt float %34, 0x3E7AD7F2A0000000
  br i1 %35, label %55, label %36

36:                                               ; preds = %1
  %37 = fmul float %16, %16
  %38 = tail call float @llvm.fmuladd.f32(float %14, float %14, float %37)
  %39 = tail call float @llvm.fmuladd.f32(float %18, float %18, float %38)
  %40 = fsub float %39, %21
  %41 = tail call float @llvm.fabs.f32(float %40)
  %42 = fcmp ugt float %41, 0x3E7AD7F2A0000000
  br i1 %42, label %55, label %43

43:                                               ; preds = %36
  %44 = fsub float %27, %21
  %45 = tail call float @llvm.fabs.f32(float %44)
  %46 = fcmp ugt float %45, 0x3E7AD7F2A0000000
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = fsub float %29, %21
  %49 = tail call float @llvm.fabs.f32(float %48)
  %50 = fcmp ugt float %49, 0x3E7AD7F2A0000000
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = fsub float %32, %21
  %53 = tail call float @llvm.fabs.f32(float %52)
  %54 = fcmp ugt float %53, 0x3E7AD7F2A0000000
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %47, %43, %36, %1
  br label %56

56:                                               ; preds = %51, %55
  %57 = phi i8 [ 0, %55 ], [ 1, %51 ]
  ret i8 %57
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @is_uniform_scaled_m4(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = load float, ptr %0, align 4, !tbaa !34
  %3 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fmul float %4, %4
  %20 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %19)
  %21 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %20)
  %22 = fmul float %10, %10
  %23 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %22)
  %24 = tail call float @llvm.fmuladd.f32(float %12, float %12, float %23)
  %25 = fmul float %8, %8
  %26 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %25)
  %27 = tail call float @llvm.fmuladd.f32(float %14, float %14, float %26)
  %28 = tail call float @llvm.fmuladd.f32(float %4, float %4, float %22)
  %29 = tail call float @llvm.fmuladd.f32(float %16, float %16, float %28)
  %30 = fmul float %12, %12
  %31 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %30)
  %32 = tail call float @llvm.fmuladd.f32(float %18, float %18, float %31)
  %33 = fsub float %24, %21
  %34 = tail call float @llvm.fabs.f32(float %33)
  %35 = fcmp ugt float %34, 0x3E7AD7F2A0000000
  br i1 %35, label %55, label %36

36:                                               ; preds = %1
  %37 = fmul float %16, %16
  %38 = tail call float @llvm.fmuladd.f32(float %14, float %14, float %37)
  %39 = tail call float @llvm.fmuladd.f32(float %18, float %18, float %38)
  %40 = fsub float %39, %21
  %41 = tail call float @llvm.fabs.f32(float %40)
  %42 = fcmp ugt float %41, 0x3E7AD7F2A0000000
  br i1 %42, label %55, label %43

43:                                               ; preds = %36
  %44 = fsub float %27, %21
  %45 = tail call float @llvm.fabs.f32(float %44)
  %46 = fcmp ugt float %45, 0x3E7AD7F2A0000000
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = fsub float %29, %21
  %49 = tail call float @llvm.fabs.f32(float %48)
  %50 = fcmp ugt float %49, 0x3E7AD7F2A0000000
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = fsub float %32, %21
  %53 = tail call float @llvm.fabs.f32(float %52)
  %54 = fcmp ugt float %53, 0x3E7AD7F2A0000000
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %47, %43, %36, %1
  br label %56

56:                                               ; preds = %51, %55
  %57 = phi i8 [ 0, %55 ], [ 1, %51 ]
  ret i8 %57
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @normalize_m3(ptr nocapture noundef %0) local_unnamed_addr #8 {
  %2 = load float, ptr %0, align 4, !tbaa !34
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %6)
  %10 = fcmp ogt float %9, 0x38AA95A5C0000000
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = tail call float @sqrtf(float noundef %9) #20
  %13 = fdiv float 1.000000e+00, %12
  %14 = load float, ptr %0, align 4, !tbaa !34
  %15 = fmul float %14, %13
  store float %15, ptr %0, align 4, !tbaa !34
  %16 = load float, ptr %3, align 4, !tbaa !34
  %17 = fmul float %13, %16
  store float %17, ptr %3, align 4, !tbaa !34
  %18 = load float, ptr %7, align 4, !tbaa !34
  %19 = fmul float %13, %18
  br label %21

20:                                               ; preds = %1
  store float 0.000000e+00, ptr %0, align 4, !tbaa !34
  store float 0.000000e+00, ptr %3, align 4, !tbaa !34
  br label %21

21:                                               ; preds = %11, %20
  %22 = phi float [ 0.000000e+00, %20 ], [ %19, %11 ]
  store float %22, ptr %7, align 4, !tbaa !34
  %23 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = fmul float %26, %26
  %28 = tail call float @llvm.fmuladd.f32(float %24, float %24, float %27)
  %29 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = tail call float @llvm.fmuladd.f32(float %30, float %30, float %28)
  %32 = fcmp ogt float %31, 0x38AA95A5C0000000
  br i1 %32, label %33, label %42

33:                                               ; preds = %21
  %34 = tail call float @sqrtf(float noundef %31) #20
  %35 = fdiv float 1.000000e+00, %34
  %36 = load float, ptr %23, align 4, !tbaa !34
  %37 = fmul float %36, %35
  store float %37, ptr %23, align 4, !tbaa !34
  %38 = load float, ptr %25, align 4, !tbaa !34
  %39 = fmul float %35, %38
  store float %39, ptr %25, align 4, !tbaa !34
  %40 = load float, ptr %29, align 4, !tbaa !34
  %41 = fmul float %35, %40
  br label %43

42:                                               ; preds = %21
  store float 0.000000e+00, ptr %23, align 4, !tbaa !34
  store float 0.000000e+00, ptr %25, align 4, !tbaa !34
  br label %43

43:                                               ; preds = %33, %42
  %44 = phi float [ 0.000000e+00, %42 ], [ %41, %33 ]
  store float %44, ptr %29, align 4, !tbaa !34
  %45 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !34
  %47 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !34
  %49 = fmul float %48, %48
  %50 = tail call float @llvm.fmuladd.f32(float %46, float %46, float %49)
  %51 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !34
  %53 = tail call float @llvm.fmuladd.f32(float %52, float %52, float %50)
  %54 = fcmp ogt float %53, 0x38AA95A5C0000000
  br i1 %54, label %55, label %64

55:                                               ; preds = %43
  %56 = tail call float @sqrtf(float noundef %53) #20
  %57 = fdiv float 1.000000e+00, %56
  %58 = load float, ptr %45, align 4, !tbaa !34
  %59 = fmul float %58, %57
  store float %59, ptr %45, align 4, !tbaa !34
  %60 = load float, ptr %47, align 4, !tbaa !34
  %61 = fmul float %57, %60
  store float %61, ptr %47, align 4, !tbaa !34
  %62 = load float, ptr %51, align 4, !tbaa !34
  %63 = fmul float %57, %62
  br label %65

64:                                               ; preds = %43
  store float 0.000000e+00, ptr %45, align 4, !tbaa !34
  store float 0.000000e+00, ptr %47, align 4, !tbaa !34
  br label %65

65:                                               ; preds = %55, %64
  %66 = phi float [ 0.000000e+00, %64 ], [ %63, %55 ]
  store float %66, ptr %51, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @normalize_m3_m3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = fmul float %5, %5
  %7 = tail call float @llvm.fmuladd.f32(float %3, float %3, float %6)
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %7)
  %11 = fcmp ogt float %10, 0x38AA95A5C0000000
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = tail call float @sqrtf(float noundef %10) #20
  %14 = fdiv float 1.000000e+00, %13
  %15 = load float, ptr %1, align 4, !tbaa !34
  %16 = fmul float %15, %14
  store float %16, ptr %0, align 4, !tbaa !34
  %17 = load float, ptr %4, align 4, !tbaa !34
  %18 = fmul float %14, %17
  %19 = getelementptr inbounds float, ptr %0, i64 1
  store float %18, ptr %19, align 4, !tbaa !34
  %20 = load float, ptr %8, align 4, !tbaa !34
  %21 = fmul float %14, %20
  br label %24

22:                                               ; preds = %2
  store float 0.000000e+00, ptr %0, align 4, !tbaa !34
  %23 = getelementptr inbounds float, ptr %0, i64 1
  store float 0.000000e+00, ptr %23, align 4, !tbaa !34
  br label %24

24:                                               ; preds = %12, %22
  %25 = phi float [ %21, %12 ], [ 0.000000e+00, %22 ]
  %26 = getelementptr inbounds float, ptr %0, i64 2
  store float %25, ptr %26, align 4, !tbaa !34
  %27 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %28 = getelementptr inbounds [3 x float], ptr %1, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = getelementptr inbounds [3 x float], ptr %1, i64 1, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = fmul float %31, %31
  %33 = tail call float @llvm.fmuladd.f32(float %29, float %29, float %32)
  %34 = getelementptr inbounds [3 x float], ptr %1, i64 1, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = tail call float @llvm.fmuladd.f32(float %35, float %35, float %33)
  %37 = fcmp ogt float %36, 0x38AA95A5C0000000
  br i1 %37, label %38, label %48

38:                                               ; preds = %24
  %39 = tail call float @sqrtf(float noundef %36) #20
  %40 = fdiv float 1.000000e+00, %39
  %41 = load float, ptr %28, align 4, !tbaa !34
  %42 = fmul float %41, %40
  store float %42, ptr %27, align 4, !tbaa !34
  %43 = load float, ptr %30, align 4, !tbaa !34
  %44 = fmul float %40, %43
  %45 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %44, ptr %45, align 4, !tbaa !34
  %46 = load float, ptr %34, align 4, !tbaa !34
  %47 = fmul float %40, %46
  br label %50

48:                                               ; preds = %24
  store float 0.000000e+00, ptr %27, align 4, !tbaa !34
  %49 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float 0.000000e+00, ptr %49, align 4, !tbaa !34
  br label %50

50:                                               ; preds = %38, %48
  %51 = phi float [ %47, %38 ], [ 0.000000e+00, %48 ]
  %52 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float %51, ptr %52, align 4, !tbaa !34
  %53 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %54 = getelementptr inbounds [3 x float], ptr %1, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !34
  %56 = getelementptr inbounds [3 x float], ptr %1, i64 2, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !34
  %58 = fmul float %57, %57
  %59 = tail call float @llvm.fmuladd.f32(float %55, float %55, float %58)
  %60 = getelementptr inbounds [3 x float], ptr %1, i64 2, i64 2
  %61 = load float, ptr %60, align 4, !tbaa !34
  %62 = tail call float @llvm.fmuladd.f32(float %61, float %61, float %59)
  %63 = fcmp ogt float %62, 0x38AA95A5C0000000
  br i1 %63, label %64, label %74

64:                                               ; preds = %50
  %65 = tail call float @sqrtf(float noundef %62) #20
  %66 = fdiv float 1.000000e+00, %65
  %67 = load float, ptr %54, align 4, !tbaa !34
  %68 = fmul float %67, %66
  store float %68, ptr %53, align 4, !tbaa !34
  %69 = load float, ptr %56, align 4, !tbaa !34
  %70 = fmul float %66, %69
  %71 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float %70, ptr %71, align 4, !tbaa !34
  %72 = load float, ptr %60, align 4, !tbaa !34
  %73 = fmul float %66, %72
  br label %76

74:                                               ; preds = %50
  store float 0.000000e+00, ptr %53, align 4, !tbaa !34
  %75 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float 0.000000e+00, ptr %75, align 4, !tbaa !34
  br label %76

76:                                               ; preds = %64, %74
  %77 = phi float [ %73, %64 ], [ 0.000000e+00, %74 ]
  %78 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %77, ptr %78, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @normalize_m4(ptr nocapture noundef %0) local_unnamed_addr #8 {
  %2 = load float, ptr %0, align 4, !tbaa !34
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %6)
  %10 = fcmp ogt float %9, 0x38AA95A5C0000000
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = tail call float @sqrtf(float noundef %9) #20
  %13 = fdiv float 1.000000e+00, %12
  %14 = load float, ptr %0, align 4, !tbaa !34
  %15 = fmul float %14, %13
  store float %15, ptr %0, align 4, !tbaa !34
  %16 = load float, ptr %3, align 4, !tbaa !34
  %17 = fmul float %13, %16
  store float %17, ptr %3, align 4, !tbaa !34
  %18 = load float, ptr %7, align 4, !tbaa !34
  %19 = fmul float %13, %18
  br label %21

20:                                               ; preds = %1
  store float 0.000000e+00, ptr %0, align 4, !tbaa !34
  store float 0.000000e+00, ptr %3, align 4, !tbaa !34
  br label %21

21:                                               ; preds = %11, %20
  %22 = phi float [ 0.000000e+00, %20 ], [ %19, %11 ]
  %23 = phi float [ 0.000000e+00, %20 ], [ %12, %11 ]
  store float %22, ptr %7, align 4, !tbaa !34
  %24 = fcmp une float %23, 0.000000e+00
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 3
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = fdiv float %27, %23
  store float %28, ptr %26, align 4, !tbaa !34
  br label %29

29:                                               ; preds = %25, %21
  %30 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = fmul float %33, %33
  %35 = tail call float @llvm.fmuladd.f32(float %31, float %31, float %34)
  %36 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !34
  %38 = tail call float @llvm.fmuladd.f32(float %37, float %37, float %35)
  %39 = fcmp ogt float %38, 0x38AA95A5C0000000
  br i1 %39, label %40, label %49

40:                                               ; preds = %29
  %41 = tail call float @sqrtf(float noundef %38) #20
  %42 = fdiv float 1.000000e+00, %41
  %43 = load float, ptr %30, align 4, !tbaa !34
  %44 = fmul float %43, %42
  store float %44, ptr %30, align 4, !tbaa !34
  %45 = load float, ptr %32, align 4, !tbaa !34
  %46 = fmul float %42, %45
  store float %46, ptr %32, align 4, !tbaa !34
  %47 = load float, ptr %36, align 4, !tbaa !34
  %48 = fmul float %42, %47
  br label %50

49:                                               ; preds = %29
  store float 0.000000e+00, ptr %30, align 4, !tbaa !34
  store float 0.000000e+00, ptr %32, align 4, !tbaa !34
  br label %50

50:                                               ; preds = %40, %49
  %51 = phi float [ 0.000000e+00, %49 ], [ %48, %40 ]
  %52 = phi float [ 0.000000e+00, %49 ], [ %41, %40 ]
  store float %51, ptr %36, align 4, !tbaa !34
  %53 = fcmp une float %52, 0.000000e+00
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 3
  %56 = load float, ptr %55, align 4, !tbaa !34
  %57 = fdiv float %56, %52
  store float %57, ptr %55, align 4, !tbaa !34
  br label %58

58:                                               ; preds = %54, %50
  %59 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %60 = load float, ptr %59, align 4, !tbaa !34
  %61 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !34
  %63 = fmul float %62, %62
  %64 = tail call float @llvm.fmuladd.f32(float %60, float %60, float %63)
  %65 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !34
  %67 = tail call float @llvm.fmuladd.f32(float %66, float %66, float %64)
  %68 = fcmp ogt float %67, 0x38AA95A5C0000000
  br i1 %68, label %69, label %78

69:                                               ; preds = %58
  %70 = tail call float @sqrtf(float noundef %67) #20
  %71 = fdiv float 1.000000e+00, %70
  %72 = load float, ptr %59, align 4, !tbaa !34
  %73 = fmul float %72, %71
  store float %73, ptr %59, align 4, !tbaa !34
  %74 = load float, ptr %61, align 4, !tbaa !34
  %75 = fmul float %71, %74
  store float %75, ptr %61, align 4, !tbaa !34
  %76 = load float, ptr %65, align 4, !tbaa !34
  %77 = fmul float %71, %76
  br label %79

78:                                               ; preds = %58
  store float 0.000000e+00, ptr %59, align 4, !tbaa !34
  store float 0.000000e+00, ptr %61, align 4, !tbaa !34
  br label %79

79:                                               ; preds = %69, %78
  %80 = phi float [ 0.000000e+00, %78 ], [ %77, %69 ]
  %81 = phi float [ 0.000000e+00, %78 ], [ %70, %69 ]
  store float %80, ptr %65, align 4, !tbaa !34
  %82 = fcmp une float %81, 0.000000e+00
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  %85 = load float, ptr %84, align 4, !tbaa !34
  %86 = fdiv float %85, %81
  store float %86, ptr %84, align 4, !tbaa !34
  br label %87

87:                                               ; preds = %83, %79
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @normalize_m4_m4(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 64, i1 false)
  tail call void @normalize_m4(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
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
  %34 = fneg float %31
  %35 = fmul float %25, %34
  %36 = tail call float @llvm.fmuladd.f32(float %23, float %33, float %35)
  %37 = fneg float %29
  %38 = fmul float %25, %37
  %39 = tail call float @llvm.fmuladd.f32(float %21, float %33, float %38)
  %40 = fneg float %39
  %41 = fmul float %15, %40
  %42 = tail call float @llvm.fmuladd.f32(float %13, float %36, float %41)
  %43 = fmul float %23, %37
  %44 = tail call float @llvm.fmuladd.f32(float %21, float %31, float %43)
  %45 = tail call float @llvm.fmuladd.f32(float %17, float %44, float %42)
  store float %45, ptr %0, align 4, !tbaa !34
  %46 = fneg float %27
  %47 = fmul float %25, %46
  %48 = tail call float @llvm.fmuladd.f32(float %19, float %33, float %47)
  %49 = fneg float %48
  %50 = fmul float %15, %49
  %51 = tail call float @llvm.fmuladd.f32(float %11, float %36, float %50)
  %52 = fmul float %23, %46
  %53 = tail call float @llvm.fmuladd.f32(float %19, float %31, float %52)
  %54 = tail call float @llvm.fmuladd.f32(float %17, float %53, float %51)
  %55 = fneg float %54
  %56 = getelementptr inbounds [4 x float], ptr %0, i64 1
  store float %55, ptr %56, align 4, !tbaa !34
  %57 = fmul float %13, %49
  %58 = tail call float @llvm.fmuladd.f32(float %11, float %39, float %57)
  %59 = fmul float %21, %46
  %60 = tail call float @llvm.fmuladd.f32(float %19, float %29, float %59)
  %61 = tail call float @llvm.fmuladd.f32(float %17, float %60, float %58)
  %62 = getelementptr inbounds [4 x float], ptr %0, i64 2
  store float %61, ptr %62, align 4, !tbaa !34
  %63 = fneg float %53
  %64 = fmul float %13, %63
  %65 = tail call float @llvm.fmuladd.f32(float %11, float %44, float %64)
  %66 = tail call float @llvm.fmuladd.f32(float %15, float %60, float %65)
  %67 = fneg float %66
  %68 = getelementptr inbounds [4 x float], ptr %0, i64 3
  store float %67, ptr %68, align 4, !tbaa !34
  %69 = fmul float %7, %40
  %70 = tail call float @llvm.fmuladd.f32(float %5, float %36, float %69)
  %71 = tail call float @llvm.fmuladd.f32(float %9, float %44, float %70)
  %72 = fneg float %71
  %73 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  store float %72, ptr %73, align 4, !tbaa !34
  %74 = fmul float %7, %49
  %75 = tail call float @llvm.fmuladd.f32(float %3, float %36, float %74)
  %76 = tail call float @llvm.fmuladd.f32(float %9, float %53, float %75)
  %77 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  store float %76, ptr %77, align 4, !tbaa !34
  %78 = fmul float %5, %49
  %79 = tail call float @llvm.fmuladd.f32(float %3, float %39, float %78)
  %80 = tail call float @llvm.fmuladd.f32(float %9, float %60, float %79)
  %81 = fneg float %80
  %82 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  store float %81, ptr %82, align 4, !tbaa !34
  %83 = fmul float %5, %63
  %84 = tail call float @llvm.fmuladd.f32(float %3, float %44, float %83)
  %85 = tail call float @llvm.fmuladd.f32(float %7, float %60, float %84)
  %86 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 1
  store float %85, ptr %86, align 4, !tbaa !34
  %87 = fmul float %17, %34
  %88 = tail call float @llvm.fmuladd.f32(float %15, float %33, float %87)
  %89 = fmul float %17, %37
  %90 = tail call float @llvm.fmuladd.f32(float %13, float %33, float %89)
  %91 = fneg float %90
  %92 = fmul float %7, %91
  %93 = tail call float @llvm.fmuladd.f32(float %5, float %88, float %92)
  %94 = fmul float %15, %37
  %95 = tail call float @llvm.fmuladd.f32(float %13, float %31, float %94)
  %96 = tail call float @llvm.fmuladd.f32(float %9, float %95, float %93)
  %97 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  store float %96, ptr %97, align 4, !tbaa !34
  %98 = fmul float %17, %46
  %99 = tail call float @llvm.fmuladd.f32(float %11, float %33, float %98)
  %100 = fneg float %99
  %101 = fmul float %7, %100
  %102 = tail call float @llvm.fmuladd.f32(float %3, float %88, float %101)
  %103 = fmul float %15, %46
  %104 = tail call float @llvm.fmuladd.f32(float %11, float %31, float %103)
  %105 = tail call float @llvm.fmuladd.f32(float %9, float %104, float %102)
  %106 = fneg float %105
  %107 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  store float %106, ptr %107, align 4, !tbaa !34
  %108 = fmul float %5, %100
  %109 = tail call float @llvm.fmuladd.f32(float %3, float %90, float %108)
  %110 = fmul float %13, %46
  %111 = tail call float @llvm.fmuladd.f32(float %11, float %29, float %110)
  %112 = tail call float @llvm.fmuladd.f32(float %9, float %111, float %109)
  %113 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  store float %112, ptr %113, align 4, !tbaa !34
  %114 = fneg float %104
  %115 = fmul float %5, %114
  %116 = tail call float @llvm.fmuladd.f32(float %3, float %95, float %115)
  %117 = tail call float @llvm.fmuladd.f32(float %7, float %111, float %116)
  %118 = fneg float %117
  %119 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 2
  store float %118, ptr %119, align 4, !tbaa !34
  %120 = fneg float %23
  %121 = fmul float %17, %120
  %122 = tail call float @llvm.fmuladd.f32(float %15, float %25, float %121)
  %123 = fneg float %21
  %124 = fmul float %17, %123
  %125 = tail call float @llvm.fmuladd.f32(float %13, float %25, float %124)
  %126 = fneg float %125
  %127 = fmul float %7, %126
  %128 = tail call float @llvm.fmuladd.f32(float %5, float %122, float %127)
  %129 = fmul float %15, %123
  %130 = tail call float @llvm.fmuladd.f32(float %13, float %23, float %129)
  %131 = tail call float @llvm.fmuladd.f32(float %9, float %130, float %128)
  %132 = fneg float %131
  %133 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 3
  store float %132, ptr %133, align 4, !tbaa !34
  %134 = fneg float %19
  %135 = fmul float %17, %134
  %136 = tail call float @llvm.fmuladd.f32(float %11, float %25, float %135)
  %137 = fneg float %136
  %138 = fmul float %7, %137
  %139 = tail call float @llvm.fmuladd.f32(float %3, float %122, float %138)
  %140 = fmul float %15, %134
  %141 = tail call float @llvm.fmuladd.f32(float %11, float %23, float %140)
  %142 = tail call float @llvm.fmuladd.f32(float %9, float %141, float %139)
  %143 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 3
  store float %142, ptr %143, align 4, !tbaa !34
  %144 = fmul float %5, %137
  %145 = tail call float @llvm.fmuladd.f32(float %3, float %125, float %144)
  %146 = fmul float %13, %134
  %147 = tail call float @llvm.fmuladd.f32(float %11, float %21, float %146)
  %148 = tail call float @llvm.fmuladd.f32(float %9, float %147, float %145)
  %149 = fneg float %148
  %150 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  store float %149, ptr %150, align 4, !tbaa !34
  %151 = fneg float %141
  %152 = fmul float %5, %151
  %153 = tail call float @llvm.fmuladd.f32(float %3, float %130, float %152)
  %154 = tail call float @llvm.fmuladd.f32(float %7, float %147, float %153)
  %155 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 3
  store float %154, ptr %155, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local float @determinant_m3(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8) local_unnamed_addr #10 {
  %10 = fneg float %5
  %11 = fmul float %10, %7
  %12 = tail call float @llvm.fmuladd.f32(float %4, float %8, float %11)
  %13 = fneg float %2
  %14 = fmul float %13, %7
  %15 = tail call float @llvm.fmuladd.f32(float %1, float %8, float %14)
  %16 = fneg float %15
  %17 = fmul float %16, %3
  %18 = tail call float @llvm.fmuladd.f32(float %0, float %12, float %17)
  %19 = fmul float %13, %4
  %20 = tail call float @llvm.fmuladd.f32(float %1, float %5, float %19)
  %21 = tail call float @llvm.fmuladd.f32(float %6, float %20, float %18)
  ret float %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @determinant_m2(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #10 {
  %5 = fneg float %1
  %6 = fmul float %5, %2
  %7 = tail call float @llvm.fmuladd.f32(float %0, float %3, float %6)
  ret float %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
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
  %33 = fneg float %30
  %34 = fmul float %24, %33
  %35 = tail call float @llvm.fmuladd.f32(float %22, float %32, float %34)
  %36 = fneg float %28
  %37 = fmul float %24, %36
  %38 = tail call float @llvm.fmuladd.f32(float %20, float %32, float %37)
  %39 = fneg float %38
  %40 = fmul float %14, %39
  %41 = tail call float @llvm.fmuladd.f32(float %12, float %35, float %40)
  %42 = fmul float %22, %36
  %43 = tail call float @llvm.fmuladd.f32(float %20, float %30, float %42)
  %44 = tail call float @llvm.fmuladd.f32(float %16, float %43, float %41)
  %45 = fneg float %26
  %46 = fmul float %24, %45
  %47 = tail call float @llvm.fmuladd.f32(float %18, float %32, float %46)
  %48 = fneg float %47
  %49 = fmul float %14, %48
  %50 = tail call float @llvm.fmuladd.f32(float %10, float %35, float %49)
  %51 = fmul float %22, %45
  %52 = tail call float @llvm.fmuladd.f32(float %18, float %30, float %51)
  %53 = tail call float @llvm.fmuladd.f32(float %16, float %52, float %50)
  %54 = fneg float %4
  %55 = fmul float %53, %54
  %56 = tail call float @llvm.fmuladd.f32(float %2, float %44, float %55)
  %57 = fmul float %12, %48
  %58 = tail call float @llvm.fmuladd.f32(float %10, float %38, float %57)
  %59 = fmul float %20, %45
  %60 = tail call float @llvm.fmuladd.f32(float %18, float %28, float %59)
  %61 = tail call float @llvm.fmuladd.f32(float %16, float %60, float %58)
  %62 = tail call float @llvm.fmuladd.f32(float %6, float %61, float %56)
  %63 = fneg float %52
  %64 = fmul float %12, %63
  %65 = tail call float @llvm.fmuladd.f32(float %10, float %43, float %64)
  %66 = tail call float @llvm.fmuladd.f32(float %14, float %60, float %65)
  %67 = fneg float %8
  %68 = tail call float @llvm.fmuladd.f32(float %67, float %66, float %62)
  ret float %68
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @size_to_mat3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float 0.000000e+00, ptr %4, align 4, !tbaa !34
  %5 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float 0.000000e+00, ptr %5, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %9 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %7, ptr %9, align 4, !tbaa !34
  store float 0.000000e+00, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float 0.000000e+00, ptr %10, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %14 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %12, ptr %14, align 4, !tbaa !34
  %15 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float 0.000000e+00, ptr %15, align 4, !tbaa !34
  store float 0.000000e+00, ptr %13, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @mat3_to_scale(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = load float, ptr %0, align 4, !tbaa !34
  %3 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = fmul float %4, 0x3FE279A740000000
  %6 = tail call float @llvm.fmuladd.f32(float %2, float 0x3FE279A740000000, float %5)
  %7 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FE279A740000000, float %6)
  %10 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fmul float %13, 0x3FE279A740000000
  %15 = tail call float @llvm.fmuladd.f32(float %11, float 0x3FE279A740000000, float %14)
  %16 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = tail call float @llvm.fmuladd.f32(float %17, float 0x3FE279A740000000, float %15)
  %19 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = fmul float %22, 0x3FE279A740000000
  %24 = tail call float @llvm.fmuladd.f32(float %20, float 0x3FE279A740000000, float %23)
  %25 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = tail call float @llvm.fmuladd.f32(float %26, float 0x3FE279A740000000, float %24)
  %28 = fmul float %18, %18
  %29 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %28)
  %30 = tail call float @llvm.fmuladd.f32(float %27, float %27, float %29)
  %31 = tail call float @sqrtf(float noundef %30) #20
  ret float %31
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @mat4_to_scale(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = load float, ptr %0, align 4, !tbaa !34
  %3 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = fmul float %4, 0x3FE279A740000000
  %6 = tail call float @llvm.fmuladd.f32(float %2, float 0x3FE279A740000000, float %5)
  %7 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FE279A740000000, float %6)
  %10 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fmul float %13, 0x3FE279A740000000
  %15 = tail call float @llvm.fmuladd.f32(float %11, float 0x3FE279A740000000, float %14)
  %16 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = tail call float @llvm.fmuladd.f32(float %17, float 0x3FE279A740000000, float %15)
  %19 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = fmul float %22, 0x3FE279A740000000
  %24 = tail call float @llvm.fmuladd.f32(float %20, float 0x3FE279A740000000, float %23)
  %25 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = tail call float @llvm.fmuladd.f32(float %26, float 0x3FE279A740000000, float %24)
  %28 = fmul float %18, %18
  %29 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %28)
  %30 = tail call float @llvm.fmuladd.f32(float %27, float %27, float %29)
  %31 = tail call float @sqrtf(float noundef %30) #20
  ret float %31
}

; Function Attrs: nofree nounwind memory(write, argmem: readwrite) uwtable
define dso_local void @mat3_to_rot_size(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) local_unnamed_addr #11 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #20
  %6 = load float, ptr %2, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %2, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %8, %8
  %10 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %9)
  %11 = getelementptr inbounds float, ptr %2, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = tail call float @llvm.fmuladd.f32(float %12, float %12, float %10)
  %14 = fcmp ogt float %13, 0x38AA95A5C0000000
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = tail call float @sqrtf(float noundef %13) #20
  %17 = fdiv float 1.000000e+00, %16
  %18 = load float, ptr %2, align 4, !tbaa !34
  %19 = fmul float %18, %17
  store float %19, ptr %4, align 16, !tbaa !34
  %20 = load float, ptr %7, align 4, !tbaa !34
  %21 = fmul float %17, %20
  %22 = getelementptr inbounds float, ptr %4, i64 1
  store float %21, ptr %22, align 4, !tbaa !34
  %23 = load float, ptr %11, align 4, !tbaa !34
  %24 = fmul float %17, %23
  br label %27

25:                                               ; preds = %3
  store float 0.000000e+00, ptr %4, align 16, !tbaa !34
  %26 = getelementptr inbounds float, ptr %4, i64 1
  store float 0.000000e+00, ptr %26, align 4, !tbaa !34
  br label %27

27:                                               ; preds = %25, %15
  %28 = phi float [ 0.000000e+00, %25 ], [ %24, %15 ]
  %29 = getelementptr inbounds float, ptr %4, i64 2
  store float %28, ptr %29, align 8, !tbaa !34
  %30 = getelementptr inbounds [3 x float], ptr %4, i64 1
  %31 = getelementptr inbounds [3 x float], ptr %2, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = getelementptr inbounds [3 x float], ptr %2, i64 1, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = fmul float %34, %34
  %36 = tail call float @llvm.fmuladd.f32(float %32, float %32, float %35)
  %37 = getelementptr inbounds [3 x float], ptr %2, i64 1, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !34
  %39 = tail call float @llvm.fmuladd.f32(float %38, float %38, float %36)
  %40 = fcmp ogt float %39, 0x38AA95A5C0000000
  br i1 %40, label %41, label %51

41:                                               ; preds = %27
  %42 = tail call float @sqrtf(float noundef %39) #20
  %43 = fdiv float 1.000000e+00, %42
  %44 = load float, ptr %31, align 4, !tbaa !34
  %45 = fmul float %44, %43
  store float %45, ptr %30, align 4, !tbaa !34
  %46 = load float, ptr %33, align 4, !tbaa !34
  %47 = fmul float %43, %46
  %48 = getelementptr inbounds [3 x float], ptr %4, i64 1, i64 1
  store float %47, ptr %48, align 16, !tbaa !34
  %49 = load float, ptr %37, align 4, !tbaa !34
  %50 = fmul float %43, %49
  br label %53

51:                                               ; preds = %27
  store float 0.000000e+00, ptr %30, align 4, !tbaa !34
  %52 = getelementptr inbounds [3 x float], ptr %4, i64 1, i64 1
  store float 0.000000e+00, ptr %52, align 16, !tbaa !34
  br label %53

53:                                               ; preds = %51, %41
  %54 = phi float [ 0.000000e+00, %51 ], [ %50, %41 ]
  %55 = getelementptr inbounds [3 x float], ptr %4, i64 1, i64 2
  store float %54, ptr %55, align 4, !tbaa !34
  %56 = getelementptr inbounds [3 x float], ptr %4, i64 2
  %57 = getelementptr inbounds [3 x float], ptr %2, i64 2
  %58 = load float, ptr %57, align 4, !tbaa !34
  %59 = getelementptr inbounds [3 x float], ptr %2, i64 2, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !34
  %61 = fmul float %60, %60
  %62 = tail call float @llvm.fmuladd.f32(float %58, float %58, float %61)
  %63 = getelementptr inbounds [3 x float], ptr %2, i64 2, i64 2
  %64 = load float, ptr %63, align 4, !tbaa !34
  %65 = tail call float @llvm.fmuladd.f32(float %64, float %64, float %62)
  %66 = fcmp ogt float %65, 0x38AA95A5C0000000
  br i1 %66, label %67, label %77

67:                                               ; preds = %53
  %68 = tail call float @sqrtf(float noundef %65) #20
  %69 = fdiv float 1.000000e+00, %68
  %70 = load float, ptr %57, align 4, !tbaa !34
  %71 = fmul float %70, %69
  store float %71, ptr %56, align 8, !tbaa !34
  %72 = load float, ptr %59, align 4, !tbaa !34
  %73 = fmul float %69, %72
  %74 = getelementptr inbounds [3 x float], ptr %4, i64 2, i64 1
  store float %73, ptr %74, align 4, !tbaa !34
  %75 = load float, ptr %63, align 4, !tbaa !34
  %76 = fmul float %69, %75
  br label %79

77:                                               ; preds = %53
  store float 0.000000e+00, ptr %56, align 8, !tbaa !34
  %78 = getelementptr inbounds [3 x float], ptr %4, i64 2, i64 1
  store float 0.000000e+00, ptr %78, align 4, !tbaa !34
  br label %79

79:                                               ; preds = %67, %77
  %80 = phi float [ %76, %67 ], [ 0.000000e+00, %77 ]
  %81 = getelementptr inbounds [3 x float], ptr %4, i64 2, i64 2
  store float %80, ptr %81, align 16, !tbaa !34
  %82 = load float, ptr %7, align 4, !tbaa !34
  %83 = load float, ptr %37, align 4, !tbaa !34
  %84 = load float, ptr %11, align 4, !tbaa !34
  %85 = load float, ptr %33, align 4, !tbaa !34
  %86 = fneg float %84
  %87 = fmul float %85, %86
  %88 = tail call float @llvm.fmuladd.f32(float %82, float %83, float %87)
  %89 = load float, ptr %31, align 4, !tbaa !34
  %90 = load float, ptr %2, align 4, !tbaa !34
  %91 = fneg float %90
  %92 = fmul float %83, %91
  %93 = tail call float @llvm.fmuladd.f32(float %84, float %89, float %92)
  %94 = fneg float %82
  %95 = fmul float %89, %94
  %96 = tail call float @llvm.fmuladd.f32(float %90, float %85, float %95)
  %97 = load float, ptr %57, align 4, !tbaa !34
  %98 = load float, ptr %59, align 4, !tbaa !34
  %99 = fmul float %93, %98
  %100 = tail call float @llvm.fmuladd.f32(float %88, float %97, float %99)
  %101 = load float, ptr %63, align 4, !tbaa !34
  %102 = tail call float @llvm.fmuladd.f32(float %96, float %101, float %100)
  %103 = fcmp uge float %102, 0.000000e+00
  br i1 %103, label %129, label %104

104:                                              ; preds = %79
  %105 = load float, ptr %4, align 16, !tbaa !34
  %106 = fneg float %105
  store float %106, ptr %4, align 16, !tbaa !34
  %107 = getelementptr inbounds float, ptr %4, i64 1
  %108 = load float, ptr %107, align 4, !tbaa !34
  %109 = fneg float %108
  store float %109, ptr %107, align 4, !tbaa !34
  %110 = getelementptr inbounds float, ptr %4, i64 2
  %111 = load float, ptr %110, align 8, !tbaa !34
  %112 = fneg float %111
  store float %112, ptr %110, align 8, !tbaa !34
  %113 = load float, ptr %30, align 4, !tbaa !34
  %114 = fneg float %113
  store float %114, ptr %30, align 4, !tbaa !34
  %115 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 1
  %116 = load float, ptr %115, align 16, !tbaa !34
  %117 = fneg float %116
  store float %117, ptr %115, align 16, !tbaa !34
  %118 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 2
  %119 = load float, ptr %118, align 4, !tbaa !34
  %120 = fneg float %119
  store float %120, ptr %118, align 4, !tbaa !34
  %121 = load float, ptr %56, align 8, !tbaa !34
  %122 = fneg float %121
  store float %122, ptr %56, align 8, !tbaa !34
  %123 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 1
  %124 = load float, ptr %123, align 4, !tbaa !34
  %125 = fneg float %124
  store float %125, ptr %123, align 4, !tbaa !34
  %126 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 2
  %127 = load float, ptr %126, align 16, !tbaa !34
  %128 = fneg float %127
  store float %128, ptr %126, align 16, !tbaa !34
  br label %129

129:                                              ; preds = %104, %79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %0, ptr noundef nonnull align 16 dereferenceable(36) %4, i64 36, i1 false)
  %130 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %5, ptr noundef nonnull %4), !range !64
  %131 = load float, ptr %2, align 4
  %132 = load float, ptr %7, align 4
  %133 = load float, ptr %11, align 4
  %134 = load float, ptr %31, align 4
  %135 = load float, ptr %33, align 4
  %136 = load float, ptr %37, align 4
  %137 = load float, ptr %57, align 4
  %138 = load float, ptr %59, align 4
  %139 = load float, ptr %63, align 4
  %140 = load float, ptr %5, align 16
  %141 = getelementptr inbounds i8, ptr %5, i64 4
  %142 = load float, ptr %141, align 4
  %143 = getelementptr inbounds i8, ptr %5, i64 8
  %144 = load float, ptr %143, align 8
  %145 = getelementptr inbounds i8, ptr %5, i64 12
  %146 = load float, ptr %145, align 4
  %147 = getelementptr inbounds i8, ptr %5, i64 16
  %148 = load float, ptr %147, align 16
  %149 = getelementptr inbounds i8, ptr %5, i64 20
  %150 = load float, ptr %149, align 4
  %151 = getelementptr inbounds i8, ptr %5, i64 24
  %152 = load float, ptr %151, align 8
  %153 = getelementptr inbounds i8, ptr %5, i64 28
  %154 = load float, ptr %153, align 4
  %155 = getelementptr inbounds i8, ptr %5, i64 32
  %156 = load float, ptr %155, align 16
  %157 = fmul float %132, %146
  %158 = tail call float @llvm.fmuladd.f32(float %131, float %140, float %157)
  %159 = tail call float @llvm.fmuladd.f32(float %133, float %152, float %158)
  store float %159, ptr %2, align 4, !tbaa !34
  %160 = fmul float %132, %148
  %161 = tail call float @llvm.fmuladd.f32(float %131, float %142, float %160)
  %162 = tail call float @llvm.fmuladd.f32(float %133, float %154, float %161)
  store float %162, ptr %7, align 4, !tbaa !34
  %163 = fmul float %132, %150
  %164 = tail call float @llvm.fmuladd.f32(float %131, float %144, float %163)
  %165 = tail call float @llvm.fmuladd.f32(float %133, float %156, float %164)
  store float %165, ptr %11, align 4, !tbaa !34
  %166 = fmul float %135, %146
  %167 = tail call float @llvm.fmuladd.f32(float %134, float %140, float %166)
  %168 = tail call float @llvm.fmuladd.f32(float %136, float %152, float %167)
  store float %168, ptr %31, align 4, !tbaa !34
  %169 = fmul float %135, %148
  %170 = tail call float @llvm.fmuladd.f32(float %134, float %142, float %169)
  %171 = tail call float @llvm.fmuladd.f32(float %136, float %154, float %170)
  store float %171, ptr %33, align 4, !tbaa !34
  %172 = fmul float %135, %150
  %173 = tail call float @llvm.fmuladd.f32(float %134, float %144, float %172)
  %174 = tail call float @llvm.fmuladd.f32(float %136, float %156, float %173)
  store float %174, ptr %37, align 4, !tbaa !34
  %175 = fmul float %138, %146
  %176 = tail call float @llvm.fmuladd.f32(float %137, float %140, float %175)
  %177 = tail call float @llvm.fmuladd.f32(float %139, float %152, float %176)
  store float %177, ptr %57, align 4, !tbaa !34
  %178 = fmul float %138, %148
  %179 = tail call float @llvm.fmuladd.f32(float %137, float %142, float %178)
  %180 = tail call float @llvm.fmuladd.f32(float %139, float %154, float %179)
  store float %180, ptr %59, align 4, !tbaa !34
  %181 = fmul float %138, %150
  %182 = tail call float @llvm.fmuladd.f32(float %137, float %144, float %181)
  %183 = tail call float @llvm.fmuladd.f32(float %139, float %156, float %182)
  store float %183, ptr %63, align 4, !tbaa !34
  store float %159, ptr %1, align 4, !tbaa !34
  %184 = load float, ptr %33, align 4, !tbaa !34
  %185 = getelementptr inbounds float, ptr %1, i64 1
  store float %184, ptr %185, align 4, !tbaa !34
  %186 = load float, ptr %63, align 4, !tbaa !34
  %187 = getelementptr inbounds float, ptr %1, i64 2
  store float %186, ptr %187, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @is_negative_m3(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fneg float %8
  %12 = fmul float %10, %11
  %13 = tail call float @llvm.fmuladd.f32(float %4, float %6, float %12)
  %14 = load float, ptr %2, align 4, !tbaa !34
  %15 = load float, ptr %0, align 4, !tbaa !34
  %16 = fneg float %15
  %17 = fmul float %6, %16
  %18 = tail call float @llvm.fmuladd.f32(float %8, float %14, float %17)
  %19 = fneg float %4
  %20 = fmul float %14, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %10, float %20)
  %22 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = fmul float %18, %25
  %27 = tail call float @llvm.fmuladd.f32(float %13, float %23, float %26)
  %28 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = tail call float @llvm.fmuladd.f32(float %21, float %29, float %27)
  %31 = fcmp olt float %30, 0.000000e+00
  %32 = zext i1 %31 to i8
  ret i8 %32
}

; Function Attrs: nofree nounwind memory(write, argmem: readwrite) uwtable
define dso_local void @mat4_to_loc_rot_size(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #11 {
  %5 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #20
  %6 = load float, ptr %3, align 4, !tbaa !34
  store float %6, ptr %5, align 16, !tbaa !34
  %7 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float %8, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float %11, ptr %12, align 8, !tbaa !34
  %13 = getelementptr inbounds [4 x float], ptr %3, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds [3 x float], ptr %5, i64 1
  store float %14, ptr %15, align 4, !tbaa !34
  %16 = getelementptr inbounds [4 x float], ptr %3, i64 1, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds [3 x float], ptr %5, i64 1, i64 1
  store float %17, ptr %18, align 16, !tbaa !34
  %19 = getelementptr inbounds [4 x float], ptr %3, i64 1, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = getelementptr inbounds [3 x float], ptr %5, i64 1, i64 2
  store float %20, ptr %21, align 4, !tbaa !34
  %22 = getelementptr inbounds [4 x float], ptr %3, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds [3 x float], ptr %5, i64 2
  store float %23, ptr %24, align 8, !tbaa !34
  %25 = getelementptr inbounds [4 x float], ptr %3, i64 2, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = getelementptr inbounds [3 x float], ptr %5, i64 2, i64 1
  store float %26, ptr %27, align 4, !tbaa !34
  %28 = getelementptr inbounds [4 x float], ptr %3, i64 2, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = getelementptr inbounds [3 x float], ptr %5, i64 2, i64 2
  store float %29, ptr %30, align 16, !tbaa !34
  call void @mat3_to_rot_size(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5)
  %31 = getelementptr inbounds [4 x float], ptr %3, i64 3
  %32 = load float, ptr %31, align 4, !tbaa !34
  store float %32, ptr %0, align 4, !tbaa !34
  %33 = getelementptr inbounds [4 x float], ptr %3, i64 3, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = getelementptr inbounds float, ptr %0, i64 1
  store float %34, ptr %35, align 4, !tbaa !34
  %36 = getelementptr inbounds [4 x float], ptr %3, i64 3, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !34
  %38 = getelementptr inbounds float, ptr %0, i64 2
  store float %37, ptr %38, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @mat4_to_loc_quat(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #12 {
  %4 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #20
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds [4 x float], ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds [4 x float], ptr %2, i64 1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds [4 x float], ptr %2, i64 1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds [4 x float], ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds [4 x float], ptr %2, i64 2, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds [4 x float], ptr %2, i64 2, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fmul float %7, %7
  %23 = tail call float @llvm.fmuladd.f32(float %5, float %5, float %22)
  %24 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %23)
  %25 = fcmp ogt float %24, 0x38AA95A5C0000000
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = tail call float @sqrtf(float noundef %24) #20
  %28 = fdiv float 1.000000e+00, %27
  %29 = fmul float %5, %28
  store float %29, ptr %4, align 16, !tbaa !34
  %30 = fmul float %7, %28
  %31 = getelementptr inbounds float, ptr %4, i64 1
  store float %30, ptr %31, align 4, !tbaa !34
  %32 = fmul float %9, %28
  br label %35

33:                                               ; preds = %3
  store float 0.000000e+00, ptr %4, align 16, !tbaa !34
  %34 = getelementptr inbounds float, ptr %4, i64 1
  store float 0.000000e+00, ptr %34, align 4, !tbaa !34
  br label %35

35:                                               ; preds = %33, %26
  %36 = phi float [ 0.000000e+00, %33 ], [ %32, %26 ]
  %37 = getelementptr inbounds float, ptr %4, i64 2
  store float %36, ptr %37, align 8, !tbaa !34
  %38 = getelementptr inbounds [3 x float], ptr %4, i64 1
  %39 = fmul float %13, %13
  %40 = tail call float @llvm.fmuladd.f32(float %11, float %11, float %39)
  %41 = tail call float @llvm.fmuladd.f32(float %15, float %15, float %40)
  %42 = fcmp ogt float %41, 0x38AA95A5C0000000
  br i1 %42, label %43, label %50

43:                                               ; preds = %35
  %44 = tail call float @sqrtf(float noundef %41) #20
  %45 = fdiv float 1.000000e+00, %44
  %46 = fmul float %11, %45
  store float %46, ptr %38, align 4, !tbaa !34
  %47 = fmul float %13, %45
  %48 = getelementptr inbounds [3 x float], ptr %4, i64 1, i64 1
  store float %47, ptr %48, align 16, !tbaa !34
  %49 = fmul float %15, %45
  br label %52

50:                                               ; preds = %35
  store float 0.000000e+00, ptr %38, align 4, !tbaa !34
  %51 = getelementptr inbounds [3 x float], ptr %4, i64 1, i64 1
  store float 0.000000e+00, ptr %51, align 16, !tbaa !34
  br label %52

52:                                               ; preds = %50, %43
  %53 = phi float [ 0.000000e+00, %50 ], [ %49, %43 ]
  %54 = getelementptr inbounds [3 x float], ptr %4, i64 1, i64 2
  store float %53, ptr %54, align 4, !tbaa !34
  %55 = getelementptr inbounds [3 x float], ptr %4, i64 2
  %56 = fmul float %19, %19
  %57 = tail call float @llvm.fmuladd.f32(float %17, float %17, float %56)
  %58 = tail call float @llvm.fmuladd.f32(float %21, float %21, float %57)
  %59 = fcmp ogt float %58, 0x38AA95A5C0000000
  br i1 %59, label %60, label %67

60:                                               ; preds = %52
  %61 = tail call float @sqrtf(float noundef %58) #20
  %62 = fdiv float 1.000000e+00, %61
  %63 = fmul float %17, %62
  store float %63, ptr %55, align 8, !tbaa !34
  %64 = fmul float %19, %62
  %65 = getelementptr inbounds [3 x float], ptr %4, i64 2, i64 1
  store float %64, ptr %65, align 4, !tbaa !34
  %66 = fmul float %21, %62
  br label %69

67:                                               ; preds = %52
  store float 0.000000e+00, ptr %55, align 8, !tbaa !34
  %68 = getelementptr inbounds [3 x float], ptr %4, i64 2, i64 1
  store float 0.000000e+00, ptr %68, align 4, !tbaa !34
  br label %69

69:                                               ; preds = %60, %67
  %70 = phi float [ %66, %60 ], [ 0.000000e+00, %67 ]
  %71 = getelementptr inbounds [3 x float], ptr %4, i64 2, i64 2
  store float %70, ptr %71, align 16, !tbaa !34
  %72 = fneg float %9
  %73 = fmul float %13, %72
  %74 = tail call float @llvm.fmuladd.f32(float %7, float %15, float %73)
  %75 = fneg float %5
  %76 = fmul float %15, %75
  %77 = tail call float @llvm.fmuladd.f32(float %9, float %11, float %76)
  %78 = fneg float %7
  %79 = fmul float %11, %78
  %80 = tail call float @llvm.fmuladd.f32(float %5, float %13, float %79)
  %81 = fmul float %77, %19
  %82 = tail call float @llvm.fmuladd.f32(float %74, float %17, float %81)
  %83 = tail call float @llvm.fmuladd.f32(float %80, float %21, float %82)
  %84 = fcmp uge float %83, 0.000000e+00
  br i1 %84, label %110, label %85

85:                                               ; preds = %69
  %86 = load float, ptr %4, align 16, !tbaa !34
  %87 = fneg float %86
  store float %87, ptr %4, align 16, !tbaa !34
  %88 = getelementptr inbounds float, ptr %4, i64 1
  %89 = load float, ptr %88, align 4, !tbaa !34
  %90 = fneg float %89
  store float %90, ptr %88, align 4, !tbaa !34
  %91 = getelementptr inbounds float, ptr %4, i64 2
  %92 = load float, ptr %91, align 8, !tbaa !34
  %93 = fneg float %92
  store float %93, ptr %91, align 8, !tbaa !34
  %94 = load float, ptr %38, align 4, !tbaa !34
  %95 = fneg float %94
  store float %95, ptr %38, align 4, !tbaa !34
  %96 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 1
  %97 = load float, ptr %96, align 16, !tbaa !34
  %98 = fneg float %97
  store float %98, ptr %96, align 16, !tbaa !34
  %99 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 2
  %100 = load float, ptr %99, align 4, !tbaa !34
  %101 = fneg float %100
  store float %101, ptr %99, align 4, !tbaa !34
  %102 = load float, ptr %55, align 8, !tbaa !34
  %103 = fneg float %102
  store float %103, ptr %55, align 8, !tbaa !34
  %104 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 1
  %105 = load float, ptr %104, align 4, !tbaa !34
  %106 = fneg float %105
  store float %106, ptr %104, align 4, !tbaa !34
  %107 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 2
  %108 = load float, ptr %107, align 16, !tbaa !34
  %109 = fneg float %108
  store float %109, ptr %107, align 16, !tbaa !34
  br label %110

110:                                              ; preds = %85, %69
  call void @mat3_to_quat(ptr noundef %1, ptr noundef nonnull %4) #20
  %111 = getelementptr inbounds [4 x float], ptr %2, i64 3
  %112 = load float, ptr %111, align 4, !tbaa !34
  store float %112, ptr %0, align 4, !tbaa !34
  %113 = getelementptr inbounds [4 x float], ptr %2, i64 3, i64 1
  %114 = load float, ptr %113, align 4, !tbaa !34
  %115 = getelementptr inbounds float, ptr %0, i64 1
  store float %114, ptr %115, align 4, !tbaa !34
  %116 = getelementptr inbounds [4 x float], ptr %2, i64 3, i64 2
  %117 = load float, ptr %116, align 4, !tbaa !34
  %118 = getelementptr inbounds float, ptr %0, i64 2
  store float %117, ptr %118, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #20
  ret void
}

declare void @mat3_to_quat(ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local void @mat4_decompose(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #12 {
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #20
  %7 = load float, ptr %3, align 4, !tbaa !34
  store float %7, ptr %5, align 16, !tbaa !34
  %8 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float %9, ptr %10, align 4, !tbaa !34
  %11 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float %12, ptr %13, align 8, !tbaa !34
  %14 = getelementptr inbounds [4 x float], ptr %3, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds [3 x float], ptr %5, i64 1
  store float %15, ptr %16, align 4, !tbaa !34
  %17 = getelementptr inbounds [4 x float], ptr %3, i64 1, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds [3 x float], ptr %5, i64 1, i64 1
  store float %18, ptr %19, align 16, !tbaa !34
  %20 = getelementptr inbounds [4 x float], ptr %3, i64 1, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = getelementptr inbounds [3 x float], ptr %5, i64 1, i64 2
  store float %21, ptr %22, align 4, !tbaa !34
  %23 = getelementptr inbounds [4 x float], ptr %3, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = getelementptr inbounds [3 x float], ptr %5, i64 2
  store float %24, ptr %25, align 8, !tbaa !34
  %26 = getelementptr inbounds [4 x float], ptr %3, i64 2, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = getelementptr inbounds [3 x float], ptr %5, i64 2, i64 1
  store float %27, ptr %28, align 4, !tbaa !34
  %29 = getelementptr inbounds [4 x float], ptr %3, i64 2, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = getelementptr inbounds [3 x float], ptr %5, i64 2, i64 2
  store float %30, ptr %31, align 16, !tbaa !34
  call void @mat3_to_rot_size(ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull %5)
  %32 = getelementptr inbounds [4 x float], ptr %3, i64 3
  %33 = load float, ptr %32, align 4, !tbaa !34
  store float %33, ptr %0, align 4, !tbaa !34
  %34 = getelementptr inbounds [4 x float], ptr %3, i64 3, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = getelementptr inbounds float, ptr %0, i64 1
  store float %35, ptr %36, align 4, !tbaa !34
  %37 = getelementptr inbounds [4 x float], ptr %3, i64 3, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !34
  %39 = getelementptr inbounds float, ptr %0, i64 2
  store float %38, ptr %39, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #20
  call void @mat3_to_quat(ptr noundef %1, ptr noundef nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @scale_m3_fl(ptr nocapture noundef writeonly %0, float noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %4 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %1, ptr %4, align 4, !tbaa !34
  %5 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %6 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %1, ptr %6, align 4, !tbaa !34
  store float %1, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float 0.000000e+00, ptr %7, align 4, !tbaa !34
  %8 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float 0.000000e+00, ptr %8, align 4, !tbaa !34
  %9 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float 0.000000e+00, ptr %9, align 4, !tbaa !34
  store float 0.000000e+00, ptr %5, align 4, !tbaa !34
  %10 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float 0.000000e+00, ptr %10, align 4, !tbaa !34
  store float 0.000000e+00, ptr %3, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @translate_m4(ptr nocapture noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #2 {
  %5 = load float, ptr %0, align 4, !tbaa !34
  %6 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fmul float %7, %2
  %9 = tail call float @llvm.fmuladd.f32(float %1, float %5, float %8)
  %10 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = tail call float @llvm.fmuladd.f32(float %3, float %11, float %9)
  %13 = getelementptr inbounds [4 x float], ptr %0, i64 3
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fadd float %14, %12
  store float %15, ptr %13, align 4, !tbaa !34
  %16 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fmul float %19, %2
  %21 = tail call float @llvm.fmuladd.f32(float %1, float %17, float %20)
  %22 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = tail call float @llvm.fmuladd.f32(float %3, float %23, float %21)
  %25 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = fadd float %26, %24
  store float %27, ptr %25, align 4, !tbaa !34
  %28 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = fmul float %31, %2
  %33 = tail call float @llvm.fmuladd.f32(float %1, float %29, float %32)
  %34 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = tail call float @llvm.fmuladd.f32(float %3, float %35, float %33)
  %37 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !34
  %39 = fadd float %38, %36
  store float %39, ptr %37, align 4, !tbaa !34
  ret void
}

; Function Attrs: nofree nounwind memory(write, argmem: readwrite) uwtable
define dso_local void @rotate_m4(ptr nocapture noundef %0, i8 noundef zeroext %1, float noundef %2) local_unnamed_addr #11 {
  %4 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = tail call float @cosf(float noundef %2) #20
  %6 = tail call float @sinf(float noundef %2) #20
  switch i8 %1, label %82 [
    i8 88, label %11
    i8 89, label %7
    i8 90, label %59
  ]

7:                                                ; preds = %3
  %8 = fneg float %6
  br label %34

9:                                                ; preds = %11
  %10 = fneg float %6
  br label %22

11:                                               ; preds = %3, %11
  %12 = phi i64 [ %20, %11 ], [ 0, %3 ]
  %13 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 %12
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 %12
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fmul float %6, %16
  %18 = tail call float @llvm.fmuladd.f32(float %5, float %14, float %17)
  %19 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 %12
  store float %18, ptr %19, align 4, !tbaa !34
  %20 = add nuw nsw i64 %12, 1
  %21 = icmp eq i64 %20, 4
  br i1 %21, label %9, label %11, !llvm.loop !82

22:                                               ; preds = %9, %22
  %23 = phi i64 [ 0, %9 ], [ %32, %22 ]
  %24 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 %23
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 %23
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = fmul float %5, %27
  %29 = tail call float @llvm.fmuladd.f32(float %10, float %25, float %28)
  store float %29, ptr %26, align 4, !tbaa !34
  %30 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 %23
  %31 = load float, ptr %30, align 4, !tbaa !34
  store float %31, ptr %24, align 4, !tbaa !34
  %32 = add nuw nsw i64 %23, 1
  %33 = icmp eq i64 %32, 4
  br i1 %33, label %82, label %22, !llvm.loop !83

34:                                               ; preds = %7, %34
  %35 = phi i64 [ 0, %7 ], [ %43, %34 ]
  %36 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 %35
  %37 = load float, ptr %36, align 4, !tbaa !34
  %38 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 %35
  %39 = load float, ptr %38, align 4, !tbaa !34
  %40 = fmul float %39, %8
  %41 = tail call float @llvm.fmuladd.f32(float %5, float %37, float %40)
  %42 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 %35
  store float %41, ptr %42, align 4, !tbaa !34
  %43 = add nuw nsw i64 %35, 1
  %44 = icmp eq i64 %43, 4
  br i1 %44, label %45, label %34, !llvm.loop !84

45:                                               ; preds = %34, %45
  %46 = phi i64 [ %55, %45 ], [ 0, %34 ]
  %47 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 %46
  %48 = load float, ptr %47, align 4, !tbaa !34
  %49 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 %46
  %50 = load float, ptr %49, align 4, !tbaa !34
  %51 = fmul float %5, %50
  %52 = tail call float @llvm.fmuladd.f32(float %6, float %48, float %51)
  store float %52, ptr %49, align 4, !tbaa !34
  %53 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 %46
  %54 = load float, ptr %53, align 4, !tbaa !34
  store float %54, ptr %47, align 4, !tbaa !34
  %55 = add nuw nsw i64 %46, 1
  %56 = icmp eq i64 %55, 4
  br i1 %56, label %82, label %45, !llvm.loop !85

57:                                               ; preds = %59
  %58 = fneg float %6
  br label %70

59:                                               ; preds = %3, %59
  %60 = phi i64 [ %68, %59 ], [ 0, %3 ]
  %61 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 %60
  %62 = load float, ptr %61, align 4, !tbaa !34
  %63 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 %60
  %64 = load float, ptr %63, align 4, !tbaa !34
  %65 = fmul float %6, %64
  %66 = tail call float @llvm.fmuladd.f32(float %5, float %62, float %65)
  %67 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 %60
  store float %66, ptr %67, align 4, !tbaa !34
  %68 = add nuw nsw i64 %60, 1
  %69 = icmp eq i64 %68, 4
  br i1 %69, label %57, label %59, !llvm.loop !86

70:                                               ; preds = %57, %70
  %71 = phi i64 [ 0, %57 ], [ %80, %70 ]
  %72 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 %71
  %73 = load float, ptr %72, align 4, !tbaa !34
  %74 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 %71
  %75 = load float, ptr %74, align 4, !tbaa !34
  %76 = fmul float %5, %75
  %77 = tail call float @llvm.fmuladd.f32(float %58, float %73, float %76)
  store float %77, ptr %74, align 4, !tbaa !34
  %78 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 %71
  %79 = load float, ptr %78, align 4, !tbaa !34
  store float %79, ptr %72, align 4, !tbaa !34
  %80 = add nuw nsw i64 %71, 1
  %81 = icmp eq i64 %80, 4
  br i1 %81, label %82, label %70, !llvm.loop !87

82:                                               ; preds = %70, %45, %22, %3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local void @rotate_m2(ptr nocapture noundef writeonly %0, float noundef %1) local_unnamed_addr #15 {
  %3 = tail call float @cosf(float noundef %1) #20
  %4 = getelementptr inbounds [2 x float], ptr %0, i64 1
  %5 = getelementptr inbounds [2 x float], ptr %0, i64 1, i64 1
  store float %3, ptr %5, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %6 = tail call float @sinf(float noundef %1) #20
  %7 = getelementptr inbounds [2 x float], ptr %0, i64 0, i64 1
  store float %6, ptr %7, align 4, !tbaa !34
  %8 = fneg float %6
  store float %8, ptr %4, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @transform_pivot_set_m4(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #20
  %4 = getelementptr inbounds [4 x float], ptr %3, i64 3
  %5 = getelementptr inbounds [4 x float], ptr %3, i64 3, i64 3
  store float 1.000000e+00, ptr %5, align 4, !tbaa !34
  %6 = getelementptr inbounds [4 x float], ptr %3, i64 2, i64 2
  store float 1.000000e+00, ptr %6, align 8, !tbaa !34
  %7 = getelementptr inbounds [4 x float], ptr %3, i64 1, i64 1
  store float 1.000000e+00, ptr %7, align 4, !tbaa !34
  store float 1.000000e+00, ptr %3, align 16, !tbaa !34
  %8 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 1
  %9 = getelementptr inbounds [4 x float], ptr %3, i64 1, i64 2
  %10 = getelementptr inbounds [4 x float], ptr %3, i64 2, i64 3
  %11 = getelementptr inbounds [4 x float], ptr %3, i64 3, i64 2
  %12 = getelementptr inbounds [4 x float], ptr %3, i64 3, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %13 = load float, ptr %1, align 4, !tbaa !34
  store float %13, ptr %4, align 16, !tbaa !34
  %14 = getelementptr inbounds float, ptr %1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  store float %15, ptr %12, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %1, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  store float %17, ptr %11, align 8, !tbaa !34
  call void @mul_m4_m4m4(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %0)
  %18 = fneg float %13
  store float %18, ptr %4, align 16, !tbaa !34
  %19 = fneg float %15
  store float %19, ptr %12, align 4, !tbaa !34
  %20 = fneg float %17
  store float %20, ptr %11, align 8, !tbaa !34
  call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #20
  ret void
}

; Function Attrs: nounwind uwtable
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
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %13) #20
  call void @mat3_to_rot_size(ptr noundef nonnull %6, ptr noundef nonnull %11, ptr noundef %1)
  call void @mat3_to_rot_size(ptr noundef nonnull %5, ptr noundef nonnull %10, ptr noundef %2)
  call void @mat3_to_quat(ptr noundef nonnull %8, ptr noundef nonnull %6) #20
  call void @mat3_to_quat(ptr noundef nonnull %7, ptr noundef nonnull %5) #20
  call void @interp_qt_qtqt(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %7, float noundef %3) #20
  call void @interp_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %10, float noundef %3) #20
  call void @quat_to_mat3(ptr noundef nonnull %13, ptr noundef nonnull %9) #20
  %14 = load float, ptr %12, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %12, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %12, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = load float, ptr %13, align 16
  %20 = getelementptr inbounds i8, ptr %13, i64 4
  %21 = load float, ptr %20, align 4
  %22 = getelementptr inbounds i8, ptr %13, i64 8
  %23 = load float, ptr %22, align 8
  %24 = getelementptr inbounds i8, ptr %13, i64 12
  %25 = load float, ptr %24, align 4
  %26 = getelementptr inbounds i8, ptr %13, i64 16
  %27 = load float, ptr %26, align 16
  %28 = getelementptr inbounds i8, ptr %13, i64 20
  %29 = load float, ptr %28, align 4
  %30 = getelementptr inbounds i8, ptr %13, i64 24
  %31 = load float, ptr %30, align 8
  %32 = getelementptr inbounds i8, ptr %13, i64 28
  %33 = load float, ptr %32, align 4
  %34 = getelementptr inbounds i8, ptr %13, i64 32
  %35 = load float, ptr %34, align 16
  %36 = fmul float %25, 0.000000e+00
  %37 = call float @llvm.fmuladd.f32(float %14, float %19, float %36)
  %38 = call float @llvm.fmuladd.f32(float %31, float 0.000000e+00, float %37)
  store float %38, ptr %0, align 4, !tbaa !34
  %39 = fmul float %27, 0.000000e+00
  %40 = call float @llvm.fmuladd.f32(float %14, float %21, float %39)
  %41 = call float @llvm.fmuladd.f32(float %33, float 0.000000e+00, float %40)
  %42 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float %41, ptr %42, align 4, !tbaa !34
  %43 = fmul float %29, 0.000000e+00
  %44 = call float @llvm.fmuladd.f32(float %14, float %23, float %43)
  %45 = call float @llvm.fmuladd.f32(float %35, float 0.000000e+00, float %44)
  %46 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %45, ptr %46, align 4, !tbaa !34
  %47 = fmul float %16, %25
  %48 = call float @llvm.fmuladd.f32(float %19, float 0.000000e+00, float %47)
  %49 = call float @llvm.fmuladd.f32(float %31, float 0.000000e+00, float %48)
  %50 = getelementptr inbounds [3 x float], ptr %0, i64 1
  store float %49, ptr %50, align 4, !tbaa !34
  %51 = fmul float %16, %27
  %52 = call float @llvm.fmuladd.f32(float %21, float 0.000000e+00, float %51)
  %53 = call float @llvm.fmuladd.f32(float %33, float 0.000000e+00, float %52)
  %54 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %53, ptr %54, align 4, !tbaa !34
  %55 = fmul float %16, %29
  %56 = call float @llvm.fmuladd.f32(float %23, float 0.000000e+00, float %55)
  %57 = call float @llvm.fmuladd.f32(float %35, float 0.000000e+00, float %56)
  %58 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float %57, ptr %58, align 4, !tbaa !34
  %59 = call float @llvm.fmuladd.f32(float %19, float 0.000000e+00, float %36)
  %60 = call float @llvm.fmuladd.f32(float %18, float %31, float %59)
  %61 = getelementptr inbounds [3 x float], ptr %0, i64 2
  store float %60, ptr %61, align 4, !tbaa !34
  %62 = call float @llvm.fmuladd.f32(float %21, float 0.000000e+00, float %39)
  %63 = call float @llvm.fmuladd.f32(float %18, float %33, float %62)
  %64 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float %63, ptr %64, align 4, !tbaa !34
  %65 = call float @llvm.fmuladd.f32(float %23, float 0.000000e+00, float %43)
  %66 = call float @llvm.fmuladd.f32(float %18, float %35, float %65)
  %67 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %66, ptr %67, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #20
  ret void
}

declare void @interp_qt_qtqt(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #13

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #13

declare void @quat_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local void @blend_m4_m4m4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #12 {
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x [3 x float]], align 16
  %12 = alloca [3 x [3 x float]], align 16
  %13 = alloca [4 x float], align 16
  %14 = alloca [4 x float], align 16
  %15 = alloca [4 x float], align 16
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #20
  %19 = load float, ptr %1, align 4, !tbaa !34
  store float %19, ptr %7, align 16, !tbaa !34
  %20 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  store float %21, ptr %22, align 4, !tbaa !34
  %23 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float %24, ptr %25, align 8, !tbaa !34
  %26 = getelementptr inbounds [4 x float], ptr %1, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = getelementptr inbounds [3 x float], ptr %7, i64 1
  store float %27, ptr %28, align 4, !tbaa !34
  %29 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = getelementptr inbounds [3 x float], ptr %7, i64 1, i64 1
  store float %30, ptr %31, align 16, !tbaa !34
  %32 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = getelementptr inbounds [3 x float], ptr %7, i64 1, i64 2
  store float %33, ptr %34, align 4, !tbaa !34
  %35 = getelementptr inbounds [4 x float], ptr %1, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = getelementptr inbounds [3 x float], ptr %7, i64 2
  store float %36, ptr %37, align 8, !tbaa !34
  %38 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !34
  %40 = getelementptr inbounds [3 x float], ptr %7, i64 2, i64 1
  store float %39, ptr %40, align 4, !tbaa !34
  %41 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !34
  %43 = getelementptr inbounds [3 x float], ptr %7, i64 2, i64 2
  store float %42, ptr %43, align 16, !tbaa !34
  call void @mat3_to_rot_size(ptr noundef nonnull %12, ptr noundef nonnull %17, ptr noundef nonnull %7)
  %44 = getelementptr inbounds [4 x float], ptr %1, i64 3
  %45 = load float, ptr %44, align 4, !tbaa !34
  store float %45, ptr %9, align 4, !tbaa !34
  %46 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !34
  %48 = getelementptr inbounds float, ptr %9, i64 1
  store float %47, ptr %48, align 4, !tbaa !34
  %49 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !34
  %51 = getelementptr inbounds float, ptr %9, i64 2
  store float %50, ptr %51, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #20
  %52 = load float, ptr %2, align 4, !tbaa !34
  store float %52, ptr %6, align 16, !tbaa !34
  %53 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !34
  %55 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  store float %54, ptr %55, align 4, !tbaa !34
  %56 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !34
  %58 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float %57, ptr %58, align 8, !tbaa !34
  %59 = getelementptr inbounds [4 x float], ptr %2, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !34
  %61 = getelementptr inbounds [3 x float], ptr %6, i64 1
  store float %60, ptr %61, align 4, !tbaa !34
  %62 = getelementptr inbounds [4 x float], ptr %2, i64 1, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !34
  %64 = getelementptr inbounds [3 x float], ptr %6, i64 1, i64 1
  store float %63, ptr %64, align 16, !tbaa !34
  %65 = getelementptr inbounds [4 x float], ptr %2, i64 1, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !34
  %67 = getelementptr inbounds [3 x float], ptr %6, i64 1, i64 2
  store float %66, ptr %67, align 4, !tbaa !34
  %68 = getelementptr inbounds [4 x float], ptr %2, i64 2
  %69 = load float, ptr %68, align 4, !tbaa !34
  %70 = getelementptr inbounds [3 x float], ptr %6, i64 2
  store float %69, ptr %70, align 8, !tbaa !34
  %71 = getelementptr inbounds [4 x float], ptr %2, i64 2, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !34
  %73 = getelementptr inbounds [3 x float], ptr %6, i64 2, i64 1
  store float %72, ptr %73, align 4, !tbaa !34
  %74 = getelementptr inbounds [4 x float], ptr %2, i64 2, i64 2
  %75 = load float, ptr %74, align 4, !tbaa !34
  %76 = getelementptr inbounds [3 x float], ptr %6, i64 2, i64 2
  store float %75, ptr %76, align 16, !tbaa !34
  call void @mat3_to_rot_size(ptr noundef nonnull %11, ptr noundef nonnull %16, ptr noundef nonnull %6)
  %77 = getelementptr inbounds [4 x float], ptr %2, i64 3
  %78 = load float, ptr %77, align 4, !tbaa !34
  store float %78, ptr %8, align 4, !tbaa !34
  %79 = getelementptr inbounds [4 x float], ptr %2, i64 3, i64 1
  %80 = load float, ptr %79, align 4, !tbaa !34
  %81 = getelementptr inbounds float, ptr %8, i64 1
  store float %80, ptr %81, align 4, !tbaa !34
  %82 = getelementptr inbounds [4 x float], ptr %2, i64 3, i64 2
  %83 = load float, ptr %82, align 4, !tbaa !34
  %84 = getelementptr inbounds float, ptr %8, i64 2
  store float %83, ptr %84, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #20
  call void @mat3_to_quat(ptr noundef nonnull %14, ptr noundef nonnull %12) #20
  call void @mat3_to_quat(ptr noundef nonnull %13, ptr noundef nonnull %11) #20
  call void @interp_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %8, float noundef %3) #20
  call void @interp_qt_qtqt(ptr noundef nonnull %15, ptr noundef nonnull %14, ptr noundef nonnull %13, float noundef %3) #20
  call void @interp_v3_v3v3(ptr noundef nonnull %18, ptr noundef nonnull %17, ptr noundef nonnull %16, float noundef %3) #20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #20
  %85 = getelementptr inbounds [4 x float], ptr %0, i64 3
  %86 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 3
  store float 1.000000e+00, ptr %86, align 4, !tbaa !34
  %87 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %88 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  store float 1.000000e+00, ptr %88, align 4, !tbaa !34
  %89 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %90 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  store float 1.000000e+00, ptr %90, align 4, !tbaa !34
  store float 1.000000e+00, ptr %0, align 4, !tbaa !34
  %91 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 3
  %92 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  %93 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  %94 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 3
  %95 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  %96 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  %97 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  %98 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 2
  %99 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %93, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %95, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %96, i8 0, i64 16, i1 false)
  call void @quat_to_mat3(ptr noundef nonnull %5, ptr noundef nonnull %15) #20
  %100 = load float, ptr %18, align 4, !tbaa !34
  %101 = getelementptr inbounds float, ptr %18, i64 1
  %102 = load float, ptr %101, align 4, !tbaa !34
  %103 = getelementptr inbounds float, ptr %18, i64 2
  %104 = load float, ptr %103, align 4, !tbaa !34
  %105 = load float, ptr %5, align 16
  %106 = getelementptr inbounds i8, ptr %5, i64 4
  %107 = load float, ptr %106, align 4
  %108 = getelementptr inbounds i8, ptr %5, i64 8
  %109 = load float, ptr %108, align 8
  %110 = getelementptr inbounds i8, ptr %5, i64 12
  %111 = load float, ptr %110, align 4
  %112 = getelementptr inbounds i8, ptr %5, i64 16
  %113 = load float, ptr %112, align 16
  %114 = getelementptr inbounds i8, ptr %5, i64 20
  %115 = load float, ptr %114, align 4
  %116 = getelementptr inbounds i8, ptr %5, i64 24
  %117 = load float, ptr %116, align 8
  %118 = getelementptr inbounds i8, ptr %5, i64 28
  %119 = load float, ptr %118, align 4
  %120 = getelementptr inbounds i8, ptr %5, i64 32
  %121 = load float, ptr %120, align 16
  %122 = fmul float %111, 0.000000e+00
  %123 = call float @llvm.fmuladd.f32(float %100, float %105, float %122)
  %124 = call float @llvm.fmuladd.f32(float %117, float 0.000000e+00, float %123)
  %125 = fmul float %113, 0.000000e+00
  %126 = call float @llvm.fmuladd.f32(float %100, float %107, float %125)
  %127 = call float @llvm.fmuladd.f32(float %119, float 0.000000e+00, float %126)
  %128 = fmul float %115, 0.000000e+00
  %129 = call float @llvm.fmuladd.f32(float %100, float %109, float %128)
  %130 = call float @llvm.fmuladd.f32(float %121, float 0.000000e+00, float %129)
  %131 = fmul float %102, %111
  %132 = call float @llvm.fmuladd.f32(float %105, float 0.000000e+00, float %131)
  %133 = call float @llvm.fmuladd.f32(float %117, float 0.000000e+00, float %132)
  %134 = fmul float %102, %113
  %135 = call float @llvm.fmuladd.f32(float %107, float 0.000000e+00, float %134)
  %136 = call float @llvm.fmuladd.f32(float %119, float 0.000000e+00, float %135)
  %137 = fmul float %102, %115
  %138 = call float @llvm.fmuladd.f32(float %109, float 0.000000e+00, float %137)
  %139 = call float @llvm.fmuladd.f32(float %121, float 0.000000e+00, float %138)
  %140 = call float @llvm.fmuladd.f32(float %105, float 0.000000e+00, float %122)
  %141 = call float @llvm.fmuladd.f32(float %104, float %117, float %140)
  %142 = call float @llvm.fmuladd.f32(float %107, float 0.000000e+00, float %125)
  %143 = call float @llvm.fmuladd.f32(float %104, float %119, float %142)
  %144 = call float @llvm.fmuladd.f32(float %109, float 0.000000e+00, float %128)
  %145 = call float @llvm.fmuladd.f32(float %104, float %121, float %144)
  store float %124, ptr %0, align 4, !tbaa !34
  store float %127, ptr %93, align 4, !tbaa !34
  store float %130, ptr %92, align 4, !tbaa !34
  store float %133, ptr %89, align 4, !tbaa !34
  store float %136, ptr %90, align 4, !tbaa !34
  store float %139, ptr %95, align 4, !tbaa !34
  store float %141, ptr %87, align 4, !tbaa !34
  store float %143, ptr %97, align 4, !tbaa !34
  store float %145, ptr %88, align 4, !tbaa !34
  store float 0.000000e+00, ptr %91, align 4, !tbaa !34
  store float 0.000000e+00, ptr %94, align 4, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %96, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %86, align 4, !tbaa !34
  %146 = load float, ptr %10, align 4, !tbaa !34
  store float %146, ptr %85, align 4, !tbaa !34
  %147 = getelementptr inbounds float, ptr %10, i64 1
  %148 = load float, ptr %147, align 4, !tbaa !34
  store float %148, ptr %99, align 4, !tbaa !34
  %149 = getelementptr inbounds float, ptr %10, i64 2
  %150 = load float, ptr %149, align 4, !tbaa !34
  store float %150, ptr %98, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @loc_quat_size_to_mat4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #12 {
  %5 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #20
  %6 = getelementptr inbounds [4 x float], ptr %0, i64 3
  %7 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 3
  store float 1.000000e+00, ptr %7, align 4, !tbaa !34
  %8 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %9 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  store float 1.000000e+00, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %11 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  store float 1.000000e+00, ptr %11, align 4, !tbaa !34
  store float 1.000000e+00, ptr %0, align 4, !tbaa !34
  %12 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 3
  %13 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  %14 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  %15 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 3
  %16 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  %17 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  %18 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  %19 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 2
  %20 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  call void @quat_to_mat3(ptr noundef nonnull %5, ptr noundef %2) #20
  %21 = load float, ptr %3, align 4, !tbaa !34
  %22 = getelementptr inbounds float, ptr %3, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds float, ptr %3, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = load float, ptr %5, align 16
  %27 = getelementptr inbounds i8, ptr %5, i64 4
  %28 = load float, ptr %27, align 4
  %29 = getelementptr inbounds i8, ptr %5, i64 8
  %30 = load float, ptr %29, align 8
  %31 = getelementptr inbounds i8, ptr %5, i64 12
  %32 = load float, ptr %31, align 4
  %33 = getelementptr inbounds i8, ptr %5, i64 16
  %34 = load float, ptr %33, align 16
  %35 = getelementptr inbounds i8, ptr %5, i64 20
  %36 = load float, ptr %35, align 4
  %37 = getelementptr inbounds i8, ptr %5, i64 24
  %38 = load float, ptr %37, align 8
  %39 = getelementptr inbounds i8, ptr %5, i64 28
  %40 = load float, ptr %39, align 4
  %41 = getelementptr inbounds i8, ptr %5, i64 32
  %42 = load float, ptr %41, align 16
  %43 = fmul float %32, 0.000000e+00
  %44 = call float @llvm.fmuladd.f32(float %21, float %26, float %43)
  %45 = call float @llvm.fmuladd.f32(float %38, float 0.000000e+00, float %44)
  %46 = fmul float %34, 0.000000e+00
  %47 = call float @llvm.fmuladd.f32(float %21, float %28, float %46)
  %48 = call float @llvm.fmuladd.f32(float %40, float 0.000000e+00, float %47)
  %49 = fmul float %36, 0.000000e+00
  %50 = call float @llvm.fmuladd.f32(float %21, float %30, float %49)
  %51 = call float @llvm.fmuladd.f32(float %42, float 0.000000e+00, float %50)
  %52 = fmul float %23, %32
  %53 = call float @llvm.fmuladd.f32(float %26, float 0.000000e+00, float %52)
  %54 = call float @llvm.fmuladd.f32(float %38, float 0.000000e+00, float %53)
  %55 = fmul float %23, %34
  %56 = call float @llvm.fmuladd.f32(float %28, float 0.000000e+00, float %55)
  %57 = call float @llvm.fmuladd.f32(float %40, float 0.000000e+00, float %56)
  %58 = fmul float %23, %36
  %59 = call float @llvm.fmuladd.f32(float %30, float 0.000000e+00, float %58)
  %60 = call float @llvm.fmuladd.f32(float %42, float 0.000000e+00, float %59)
  %61 = call float @llvm.fmuladd.f32(float %26, float 0.000000e+00, float %43)
  %62 = call float @llvm.fmuladd.f32(float %25, float %38, float %61)
  %63 = call float @llvm.fmuladd.f32(float %28, float 0.000000e+00, float %46)
  %64 = call float @llvm.fmuladd.f32(float %25, float %40, float %63)
  %65 = call float @llvm.fmuladd.f32(float %30, float 0.000000e+00, float %49)
  %66 = call float @llvm.fmuladd.f32(float %25, float %42, float %65)
  store float %45, ptr %0, align 4, !tbaa !34
  store float %48, ptr %14, align 4, !tbaa !34
  store float %51, ptr %13, align 4, !tbaa !34
  store float %54, ptr %10, align 4, !tbaa !34
  store float %57, ptr %11, align 4, !tbaa !34
  store float %60, ptr %16, align 4, !tbaa !34
  store float %62, ptr %8, align 4, !tbaa !34
  store float %64, ptr %18, align 4, !tbaa !34
  store float %66, ptr %9, align 4, !tbaa !34
  store float 0.000000e+00, ptr %12, align 4, !tbaa !34
  store float 0.000000e+00, ptr %15, align 4, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %7, align 4, !tbaa !34
  %67 = load float, ptr %1, align 4, !tbaa !34
  store float %67, ptr %6, align 4, !tbaa !34
  %68 = getelementptr inbounds float, ptr %1, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !34
  store float %69, ptr %20, align 4, !tbaa !34
  %70 = getelementptr inbounds float, ptr %1, i64 2
  %71 = load float, ptr %70, align 4, !tbaa !34
  store float %71, ptr %19, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @is_negative_m4(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fneg float %8
  %12 = fmul float %10, %11
  %13 = tail call float @llvm.fmuladd.f32(float %4, float %6, float %12)
  %14 = load float, ptr %2, align 4, !tbaa !34
  %15 = load float, ptr %0, align 4, !tbaa !34
  %16 = fneg float %15
  %17 = fmul float %6, %16
  %18 = tail call float @llvm.fmuladd.f32(float %8, float %14, float %17)
  %19 = fneg float %4
  %20 = fmul float %14, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %10, float %20)
  %22 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = fmul float %18, %25
  %27 = tail call float @llvm.fmuladd.f32(float %13, float %23, float %26)
  %28 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = tail call float @llvm.fmuladd.f32(float %21, float %29, float %27)
  %31 = fcmp olt float %30, 0.000000e+00
  %32 = zext i1 %31 to i8
  ret i8 %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @is_zero_m3(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = load float, ptr %0, align 4, !tbaa !34
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %37

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %37

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fcmp une float %10, 0.000000e+00
  br i1 %11, label %37, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fcmp oeq float %14, 0.000000e+00
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fcmp oeq float %18, 0.000000e+00
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = fcmp une float %22, 0.000000e+00
  br i1 %23, label %37, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = fcmp oeq float %26, 0.000000e+00
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = fcmp oeq float %30, 0.000000e+00
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = fcmp oeq float %34, 0.000000e+00
  %36 = zext i1 %35 to i8
  br label %37

37:                                               ; preds = %16, %12, %4, %1, %32, %28, %24, %20, %8
  %38 = phi i8 [ 0, %20 ], [ 0, %8 ], [ 0, %28 ], [ 0, %24 ], [ %36, %32 ], [ 0, %1 ], [ 0, %4 ], [ 0, %12 ], [ 0, %16 ]
  ret i8 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @is_zero_m4(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = load float, ptr %0, align 4, !tbaa !34
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %65

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %65

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fcmp oeq float %10, 0.000000e+00
  br i1 %11, label %12, label %65

12:                                               ; preds = %8
  %13 = getelementptr inbounds float, ptr %0, i64 3
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fcmp une float %14, 0.000000e+00
  br i1 %15, label %65, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fcmp oeq float %18, 0.000000e+00
  br i1 %19, label %20, label %65

20:                                               ; preds = %16
  %21 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = fcmp oeq float %22, 0.000000e+00
  br i1 %23, label %24, label %65

24:                                               ; preds = %20
  %25 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = fcmp oeq float %26, 0.000000e+00
  br i1 %27, label %28, label %65

28:                                               ; preds = %24
  %29 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 3
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = fcmp une float %30, 0.000000e+00
  br i1 %31, label %65, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = fcmp oeq float %34, 0.000000e+00
  br i1 %35, label %36, label %65

36:                                               ; preds = %32
  %37 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !34
  %39 = fcmp oeq float %38, 0.000000e+00
  br i1 %39, label %40, label %65

40:                                               ; preds = %36
  %41 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !34
  %43 = fcmp oeq float %42, 0.000000e+00
  br i1 %43, label %44, label %65

44:                                               ; preds = %40
  %45 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  %46 = load float, ptr %45, align 4, !tbaa !34
  %47 = fcmp une float %46, 0.000000e+00
  br i1 %47, label %65, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds [4 x float], ptr %0, i64 3
  %50 = load float, ptr %49, align 4, !tbaa !34
  %51 = fcmp oeq float %50, 0.000000e+00
  br i1 %51, label %52, label %65

52:                                               ; preds = %48
  %53 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !34
  %55 = fcmp oeq float %54, 0.000000e+00
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 2
  %58 = load float, ptr %57, align 4, !tbaa !34
  %59 = fcmp oeq float %58, 0.000000e+00
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 3
  %62 = load float, ptr %61, align 4, !tbaa !34
  %63 = fcmp oeq float %62, 0.000000e+00
  %64 = zext i1 %63 to i8
  br label %65

65:                                               ; preds = %40, %36, %32, %24, %20, %16, %8, %4, %1, %60, %56, %52, %48, %44, %28, %12
  %66 = phi i8 [ 0, %44 ], [ 0, %28 ], [ 0, %12 ], [ 0, %56 ], [ 0, %52 ], [ 0, %48 ], [ %64, %60 ], [ 0, %1 ], [ 0, %4 ], [ 0, %8 ], [ 0, %16 ], [ 0, %20 ], [ 0, %24 ], [ 0, %32 ], [ 0, %36 ], [ 0, %40 ]
  ret i8 %66
}

; Function Attrs: nounwind uwtable
define dso_local void @loc_eul_size_to_mat4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #12 {
  %5 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #20
  %6 = getelementptr inbounds [4 x float], ptr %0, i64 3
  %7 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 3
  store float 1.000000e+00, ptr %7, align 4, !tbaa !34
  %8 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %9 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  store float 1.000000e+00, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %11 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  store float 1.000000e+00, ptr %11, align 4, !tbaa !34
  store float 1.000000e+00, ptr %0, align 4, !tbaa !34
  %12 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 3
  %13 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  %14 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  %15 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 3
  %16 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  %17 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  %18 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  %19 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 2
  %20 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  call void @eul_to_mat3(ptr noundef nonnull %5, ptr noundef %2) #20
  %21 = load float, ptr %3, align 4, !tbaa !34
  %22 = getelementptr inbounds float, ptr %3, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds float, ptr %3, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = load float, ptr %5, align 16
  %27 = getelementptr inbounds i8, ptr %5, i64 4
  %28 = load float, ptr %27, align 4
  %29 = getelementptr inbounds i8, ptr %5, i64 8
  %30 = load float, ptr %29, align 8
  %31 = getelementptr inbounds i8, ptr %5, i64 12
  %32 = load float, ptr %31, align 4
  %33 = getelementptr inbounds i8, ptr %5, i64 16
  %34 = load float, ptr %33, align 16
  %35 = getelementptr inbounds i8, ptr %5, i64 20
  %36 = load float, ptr %35, align 4
  %37 = getelementptr inbounds i8, ptr %5, i64 24
  %38 = load float, ptr %37, align 8
  %39 = getelementptr inbounds i8, ptr %5, i64 28
  %40 = load float, ptr %39, align 4
  %41 = getelementptr inbounds i8, ptr %5, i64 32
  %42 = load float, ptr %41, align 16
  %43 = fmul float %32, 0.000000e+00
  %44 = call float @llvm.fmuladd.f32(float %21, float %26, float %43)
  %45 = call float @llvm.fmuladd.f32(float %38, float 0.000000e+00, float %44)
  %46 = fmul float %34, 0.000000e+00
  %47 = call float @llvm.fmuladd.f32(float %21, float %28, float %46)
  %48 = call float @llvm.fmuladd.f32(float %40, float 0.000000e+00, float %47)
  %49 = fmul float %36, 0.000000e+00
  %50 = call float @llvm.fmuladd.f32(float %21, float %30, float %49)
  %51 = call float @llvm.fmuladd.f32(float %42, float 0.000000e+00, float %50)
  %52 = fmul float %23, %32
  %53 = call float @llvm.fmuladd.f32(float %26, float 0.000000e+00, float %52)
  %54 = call float @llvm.fmuladd.f32(float %38, float 0.000000e+00, float %53)
  %55 = fmul float %23, %34
  %56 = call float @llvm.fmuladd.f32(float %28, float 0.000000e+00, float %55)
  %57 = call float @llvm.fmuladd.f32(float %40, float 0.000000e+00, float %56)
  %58 = fmul float %23, %36
  %59 = call float @llvm.fmuladd.f32(float %30, float 0.000000e+00, float %58)
  %60 = call float @llvm.fmuladd.f32(float %42, float 0.000000e+00, float %59)
  %61 = call float @llvm.fmuladd.f32(float %26, float 0.000000e+00, float %43)
  %62 = call float @llvm.fmuladd.f32(float %25, float %38, float %61)
  %63 = call float @llvm.fmuladd.f32(float %28, float 0.000000e+00, float %46)
  %64 = call float @llvm.fmuladd.f32(float %25, float %40, float %63)
  %65 = call float @llvm.fmuladd.f32(float %30, float 0.000000e+00, float %49)
  %66 = call float @llvm.fmuladd.f32(float %25, float %42, float %65)
  store float %45, ptr %0, align 4, !tbaa !34
  store float %48, ptr %14, align 4, !tbaa !34
  store float %51, ptr %13, align 4, !tbaa !34
  store float %54, ptr %10, align 4, !tbaa !34
  store float %57, ptr %11, align 4, !tbaa !34
  store float %60, ptr %16, align 4, !tbaa !34
  store float %62, ptr %8, align 4, !tbaa !34
  store float %64, ptr %18, align 4, !tbaa !34
  store float %66, ptr %9, align 4, !tbaa !34
  store float 0.000000e+00, ptr %12, align 4, !tbaa !34
  store float 0.000000e+00, ptr %15, align 4, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %7, align 4, !tbaa !34
  %67 = load float, ptr %1, align 4, !tbaa !34
  store float %67, ptr %6, align 4, !tbaa !34
  %68 = getelementptr inbounds float, ptr %1, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !34
  store float %69, ptr %20, align 4, !tbaa !34
  %70 = getelementptr inbounds float, ptr %1, i64 2
  %71 = load float, ptr %70, align 4, !tbaa !34
  store float %71, ptr %19, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #20
  ret void
}

declare void @eul_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local void @loc_eulO_size_to_mat4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, i16 noundef signext %4) local_unnamed_addr #12 {
  %6 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #20
  %7 = getelementptr inbounds [4 x float], ptr %0, i64 3
  %8 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 3
  store float 1.000000e+00, ptr %8, align 4, !tbaa !34
  %9 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %10 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  store float 1.000000e+00, ptr %10, align 4, !tbaa !34
  %11 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %12 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  store float 1.000000e+00, ptr %12, align 4, !tbaa !34
  store float 1.000000e+00, ptr %0, align 4, !tbaa !34
  %13 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 3
  %14 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  %15 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  %16 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 3
  %17 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  %18 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  %19 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  %20 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 2
  %21 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  call void @eulO_to_mat3(ptr noundef nonnull %6, ptr noundef %2, i16 noundef signext %4) #20
  %22 = load float, ptr %3, align 4, !tbaa !34
  %23 = getelementptr inbounds float, ptr %3, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = getelementptr inbounds float, ptr %3, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = load float, ptr %6, align 16
  %28 = getelementptr inbounds i8, ptr %6, i64 4
  %29 = load float, ptr %28, align 4
  %30 = getelementptr inbounds i8, ptr %6, i64 8
  %31 = load float, ptr %30, align 8
  %32 = getelementptr inbounds i8, ptr %6, i64 12
  %33 = load float, ptr %32, align 4
  %34 = getelementptr inbounds i8, ptr %6, i64 16
  %35 = load float, ptr %34, align 16
  %36 = getelementptr inbounds i8, ptr %6, i64 20
  %37 = load float, ptr %36, align 4
  %38 = getelementptr inbounds i8, ptr %6, i64 24
  %39 = load float, ptr %38, align 8
  %40 = getelementptr inbounds i8, ptr %6, i64 28
  %41 = load float, ptr %40, align 4
  %42 = getelementptr inbounds i8, ptr %6, i64 32
  %43 = load float, ptr %42, align 16
  %44 = fmul float %33, 0.000000e+00
  %45 = call float @llvm.fmuladd.f32(float %22, float %27, float %44)
  %46 = call float @llvm.fmuladd.f32(float %39, float 0.000000e+00, float %45)
  %47 = fmul float %35, 0.000000e+00
  %48 = call float @llvm.fmuladd.f32(float %22, float %29, float %47)
  %49 = call float @llvm.fmuladd.f32(float %41, float 0.000000e+00, float %48)
  %50 = fmul float %37, 0.000000e+00
  %51 = call float @llvm.fmuladd.f32(float %22, float %31, float %50)
  %52 = call float @llvm.fmuladd.f32(float %43, float 0.000000e+00, float %51)
  %53 = fmul float %24, %33
  %54 = call float @llvm.fmuladd.f32(float %27, float 0.000000e+00, float %53)
  %55 = call float @llvm.fmuladd.f32(float %39, float 0.000000e+00, float %54)
  %56 = fmul float %24, %35
  %57 = call float @llvm.fmuladd.f32(float %29, float 0.000000e+00, float %56)
  %58 = call float @llvm.fmuladd.f32(float %41, float 0.000000e+00, float %57)
  %59 = fmul float %24, %37
  %60 = call float @llvm.fmuladd.f32(float %31, float 0.000000e+00, float %59)
  %61 = call float @llvm.fmuladd.f32(float %43, float 0.000000e+00, float %60)
  %62 = call float @llvm.fmuladd.f32(float %27, float 0.000000e+00, float %44)
  %63 = call float @llvm.fmuladd.f32(float %26, float %39, float %62)
  %64 = call float @llvm.fmuladd.f32(float %29, float 0.000000e+00, float %47)
  %65 = call float @llvm.fmuladd.f32(float %26, float %41, float %64)
  %66 = call float @llvm.fmuladd.f32(float %31, float 0.000000e+00, float %50)
  %67 = call float @llvm.fmuladd.f32(float %26, float %43, float %66)
  store float %46, ptr %0, align 4, !tbaa !34
  store float %49, ptr %15, align 4, !tbaa !34
  store float %52, ptr %14, align 4, !tbaa !34
  store float %55, ptr %11, align 4, !tbaa !34
  store float %58, ptr %12, align 4, !tbaa !34
  store float %61, ptr %17, align 4, !tbaa !34
  store float %63, ptr %9, align 4, !tbaa !34
  store float %65, ptr %19, align 4, !tbaa !34
  store float %67, ptr %10, align 4, !tbaa !34
  store float 0.000000e+00, ptr %13, align 4, !tbaa !34
  store float 0.000000e+00, ptr %16, align 4, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %8, align 4, !tbaa !34
  %68 = load float, ptr %1, align 4, !tbaa !34
  store float %68, ptr %7, align 4, !tbaa !34
  %69 = getelementptr inbounds float, ptr %1, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !34
  store float %70, ptr %21, align 4, !tbaa !34
  %71 = getelementptr inbounds float, ptr %1, i64 2
  %72 = load float, ptr %71, align 4, !tbaa !34
  store float %72, ptr %20, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #20
  ret void
}

declare void @eulO_to_mat3(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local void @loc_axisangle_size_to_mat4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, float noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #12 {
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #20
  call void @axis_angle_to_quat(ptr noundef nonnull %7, ptr noundef %2, float noundef %3) #20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #20
  %8 = getelementptr inbounds [4 x float], ptr %0, i64 3
  %9 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 3
  store float 1.000000e+00, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %11 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  store float 1.000000e+00, ptr %11, align 4, !tbaa !34
  %12 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %13 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  store float 1.000000e+00, ptr %13, align 4, !tbaa !34
  store float 1.000000e+00, ptr %0, align 4, !tbaa !34
  %14 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 3
  %15 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  %16 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  %17 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 3
  %18 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  %19 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  %20 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  %21 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 2
  %22 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  call void @quat_to_mat3(ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  %23 = load float, ptr %4, align 4, !tbaa !34
  %24 = getelementptr inbounds float, ptr %4, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = getelementptr inbounds float, ptr %4, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = load float, ptr %6, align 16
  %29 = getelementptr inbounds i8, ptr %6, i64 4
  %30 = load float, ptr %29, align 4
  %31 = getelementptr inbounds i8, ptr %6, i64 8
  %32 = load float, ptr %31, align 8
  %33 = getelementptr inbounds i8, ptr %6, i64 12
  %34 = load float, ptr %33, align 4
  %35 = getelementptr inbounds i8, ptr %6, i64 16
  %36 = load float, ptr %35, align 16
  %37 = getelementptr inbounds i8, ptr %6, i64 20
  %38 = load float, ptr %37, align 4
  %39 = getelementptr inbounds i8, ptr %6, i64 24
  %40 = load float, ptr %39, align 8
  %41 = getelementptr inbounds i8, ptr %6, i64 28
  %42 = load float, ptr %41, align 4
  %43 = getelementptr inbounds i8, ptr %6, i64 32
  %44 = load float, ptr %43, align 16
  %45 = fmul float %34, 0.000000e+00
  %46 = call float @llvm.fmuladd.f32(float %23, float %28, float %45)
  %47 = call float @llvm.fmuladd.f32(float %40, float 0.000000e+00, float %46)
  %48 = fmul float %36, 0.000000e+00
  %49 = call float @llvm.fmuladd.f32(float %23, float %30, float %48)
  %50 = call float @llvm.fmuladd.f32(float %42, float 0.000000e+00, float %49)
  %51 = fmul float %38, 0.000000e+00
  %52 = call float @llvm.fmuladd.f32(float %23, float %32, float %51)
  %53 = call float @llvm.fmuladd.f32(float %44, float 0.000000e+00, float %52)
  %54 = fmul float %25, %34
  %55 = call float @llvm.fmuladd.f32(float %28, float 0.000000e+00, float %54)
  %56 = call float @llvm.fmuladd.f32(float %40, float 0.000000e+00, float %55)
  %57 = fmul float %25, %36
  %58 = call float @llvm.fmuladd.f32(float %30, float 0.000000e+00, float %57)
  %59 = call float @llvm.fmuladd.f32(float %42, float 0.000000e+00, float %58)
  %60 = fmul float %25, %38
  %61 = call float @llvm.fmuladd.f32(float %32, float 0.000000e+00, float %60)
  %62 = call float @llvm.fmuladd.f32(float %44, float 0.000000e+00, float %61)
  %63 = call float @llvm.fmuladd.f32(float %28, float 0.000000e+00, float %45)
  %64 = call float @llvm.fmuladd.f32(float %27, float %40, float %63)
  %65 = call float @llvm.fmuladd.f32(float %30, float 0.000000e+00, float %48)
  %66 = call float @llvm.fmuladd.f32(float %27, float %42, float %65)
  %67 = call float @llvm.fmuladd.f32(float %32, float 0.000000e+00, float %51)
  %68 = call float @llvm.fmuladd.f32(float %27, float %44, float %67)
  store float %47, ptr %0, align 4, !tbaa !34
  store float %50, ptr %16, align 4, !tbaa !34
  store float %53, ptr %15, align 4, !tbaa !34
  store float %56, ptr %12, align 4, !tbaa !34
  store float %59, ptr %13, align 4, !tbaa !34
  store float %62, ptr %18, align 4, !tbaa !34
  store float %64, ptr %10, align 4, !tbaa !34
  store float %66, ptr %20, align 4, !tbaa !34
  store float %68, ptr %11, align 4, !tbaa !34
  store float 0.000000e+00, ptr %14, align 4, !tbaa !34
  store float 0.000000e+00, ptr %17, align 4, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %9, align 4, !tbaa !34
  %69 = load float, ptr %1, align 4, !tbaa !34
  store float %69, ptr %8, align 4, !tbaa !34
  %70 = getelementptr inbounds float, ptr %1, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !34
  store float %71, ptr %22, align 4, !tbaa !34
  %72 = getelementptr inbounds float, ptr %1, i64 2
  %73 = load float, ptr %72, align 4, !tbaa !34
  store float %73, ptr %21, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #20
  ret void
}

declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind uwtable
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
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %5, double noundef %8, double noundef %11)
  %13 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fpext float %14 to double
  %16 = getelementptr inbounds [3 x float], ptr %1, i64 1, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fpext float %17 to double
  %19 = getelementptr inbounds [3 x float], ptr %1, i64 2, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fpext float %20 to double
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %15, double noundef %18, double noundef %21)
  %23 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fpext float %24 to double
  %26 = getelementptr inbounds [3 x float], ptr %1, i64 1, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = fpext float %27 to double
  %29 = getelementptr inbounds [3 x float], ptr %1, i64 2, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = fpext float %30 to double
  %32 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %25, double noundef %28, double noundef %31)
  %33 = tail call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: nofree nounwind uwtable
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
  %15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %5, double noundef %8, double noundef %11, double noundef %14)
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
  %28 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %18, double noundef %21, double noundef %24, double noundef %27)
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
  %41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %31, double noundef %34, double noundef %37, double noundef %40)
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
  %54 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %44, double noundef %47, double noundef %50, double noundef %53)
  %55 = tail call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @svd_m4(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #12 {
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x float], align 16
  %7 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(64) %3, i64 64, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  %8 = getelementptr inbounds float, ptr %1, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %9 = getelementptr i8, ptr %6, i64 4
  br label %10

10:                                               ; preds = %4, %177
  %11 = phi i64 [ 1, %4 ], [ %178, %177 ]
  %12 = phi i64 [ 0, %4 ], [ %51, %177 ]
  %13 = shl nuw nsw i64 %12, 2
  %14 = getelementptr i8, ptr %9, i64 %13
  %15 = shl i64 %12, 2
  %16 = sub i64 12, %15
  %17 = getelementptr inbounds float, ptr %1, i64 %12
  store float 0.000000e+00, ptr %17, align 4, !tbaa !34
  br label %18

18:                                               ; preds = %10, %18
  %19 = phi i64 [ %12, %10 ], [ %24, %18 ]
  %20 = load float, ptr %17, align 4, !tbaa !34
  %21 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %19, i64 %12
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = tail call float @hypotf(float noundef %20, float noundef %22) #20
  store float %23, ptr %17, align 4, !tbaa !34
  %24 = add nuw nsw i64 %19, 1
  %25 = icmp eq i64 %24, 4
  br i1 %25, label %26, label %18, !llvm.loop !88

26:                                               ; preds = %18
  %27 = load float, ptr %17, align 4, !tbaa !34
  %28 = fcmp une float %27, 0.000000e+00
  br i1 %28, label %29, label %48

29:                                               ; preds = %26
  %30 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %12, i64 %12
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = fcmp olt float %31, 0.000000e+00
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = fneg float %27
  store float %34, ptr %17, align 4, !tbaa !34
  br label %35

35:                                               ; preds = %33, %29
  %36 = load float, ptr %17, align 4, !tbaa !34
  %37 = fdiv float 1.000000e+00, %36
  br label %38

38:                                               ; preds = %35, %38
  %39 = phi i64 [ %12, %35 ], [ %43, %38 ]
  %40 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %39, i64 %12
  %41 = load float, ptr %40, align 4, !tbaa !34
  %42 = fmul float %37, %41
  store float %42, ptr %40, align 4, !tbaa !34
  %43 = add nuw nsw i64 %39, 1
  %44 = icmp eq i64 %43, 4
  br i1 %44, label %45, label %38, !llvm.loop !89

45:                                               ; preds = %38
  %46 = load float, ptr %30, align 4, !tbaa !34
  %47 = fadd float %46, 1.000000e+00
  store float %47, ptr %30, align 4, !tbaa !34
  br label %48

48:                                               ; preds = %45, %26
  %49 = load float, ptr %17, align 4, !tbaa !34
  %50 = fneg float %49
  store float %50, ptr %17, align 4, !tbaa !34
  %51 = add nuw nsw i64 %12, 1
  %52 = fcmp une float %49, 0.000000e+00
  %53 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %12, i64 %12
  br label %54

54:                                               ; preds = %48, %79
  %55 = phi i64 [ %11, %48 ], [ %83, %79 ]
  br i1 %52, label %56, label %79

56:                                               ; preds = %54, %56
  %57 = phi i64 [ %64, %56 ], [ %12, %54 ]
  %58 = phi float [ %63, %56 ], [ 0.000000e+00, %54 ]
  %59 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %57, i64 %12
  %60 = load float, ptr %59, align 4, !tbaa !34
  %61 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %57, i64 %55
  %62 = load float, ptr %61, align 4, !tbaa !34
  %63 = tail call float @llvm.fmuladd.f32(float %60, float %62, float %58)
  %64 = add nuw nsw i64 %57, 1
  %65 = icmp eq i64 %64, 4
  br i1 %65, label %66, label %56, !llvm.loop !90

66:                                               ; preds = %56
  %67 = fneg float %63
  %68 = load float, ptr %53, align 4, !tbaa !34
  %69 = fdiv float %67, %68
  br label %70

70:                                               ; preds = %66, %70
  %71 = phi i64 [ %12, %66 ], [ %77, %70 ]
  %72 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %71, i64 %12
  %73 = load float, ptr %72, align 4, !tbaa !34
  %74 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %71, i64 %55
  %75 = load float, ptr %74, align 4, !tbaa !34
  %76 = tail call float @llvm.fmuladd.f32(float %69, float %73, float %75)
  store float %76, ptr %74, align 4, !tbaa !34
  %77 = add nuw nsw i64 %71, 1
  %78 = icmp eq i64 %77, 4
  br i1 %78, label %79, label %70, !llvm.loop !91

79:                                               ; preds = %70, %54
  %80 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %12, i64 %55
  %81 = load float, ptr %80, align 4, !tbaa !34
  %82 = getelementptr inbounds float, ptr %7, i64 %55
  store float %81, ptr %82, align 4, !tbaa !34
  %83 = add nuw nsw i64 %55, 1
  %84 = icmp eq i64 %83, 4
  br i1 %84, label %85, label %54, !llvm.loop !92

85:                                               ; preds = %79, %85
  %86 = phi i64 [ %90, %85 ], [ %12, %79 ]
  %87 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %86, i64 %12
  %88 = load float, ptr %87, align 4, !tbaa !34
  %89 = getelementptr inbounds [4 x float], ptr %0, i64 %86, i64 %12
  store float %88, ptr %89, align 4, !tbaa !34
  %90 = add nuw nsw i64 %86, 1
  %91 = icmp eq i64 %90, 4
  br i1 %91, label %92, label %85, !llvm.loop !93

92:                                               ; preds = %85
  %93 = icmp eq i64 %12, 2
  br i1 %93, label %177, label %94

94:                                               ; preds = %92
  %95 = getelementptr inbounds float, ptr %7, i64 %12
  store float 0.000000e+00, ptr %95, align 4, !tbaa !34
  br label %96

96:                                               ; preds = %94, %96
  %97 = phi i64 [ %11, %94 ], [ %102, %96 ]
  %98 = phi float [ 0.000000e+00, %94 ], [ %101, %96 ]
  %99 = getelementptr inbounds float, ptr %7, i64 %97
  %100 = load float, ptr %99, align 4, !tbaa !34
  %101 = tail call float @hypotf(float noundef %98, float noundef %100) #20
  store float %101, ptr %95, align 4, !tbaa !34
  %102 = add nuw nsw i64 %97, 1
  %103 = icmp eq i64 %102, 4
  br i1 %103, label %104, label %96, !llvm.loop !94

104:                                              ; preds = %96
  %105 = load float, ptr %95, align 4, !tbaa !34
  %106 = fcmp une float %105, 0.000000e+00
  br i1 %106, label %107, label %126

107:                                              ; preds = %104
  %108 = getelementptr inbounds float, ptr %7, i64 %51
  %109 = load float, ptr %108, align 4, !tbaa !34
  %110 = fcmp olt float %109, 0.000000e+00
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = fneg float %105
  store float %112, ptr %95, align 4, !tbaa !34
  br label %113

113:                                              ; preds = %111, %107
  %114 = load float, ptr %95, align 4, !tbaa !34
  %115 = fdiv float 1.000000e+00, %114
  br label %116

116:                                              ; preds = %113, %116
  %117 = phi i64 [ %11, %113 ], [ %121, %116 ]
  %118 = getelementptr inbounds float, ptr %7, i64 %117
  %119 = load float, ptr %118, align 4, !tbaa !34
  %120 = fmul float %115, %119
  store float %120, ptr %118, align 4, !tbaa !34
  %121 = add nuw nsw i64 %117, 1
  %122 = icmp eq i64 %121, 4
  br i1 %122, label %123, label %116, !llvm.loop !95

123:                                              ; preds = %116
  %124 = load float, ptr %108, align 4, !tbaa !34
  %125 = fadd float %124, 1.000000e+00
  store float %125, ptr %108, align 4, !tbaa !34
  br label %126

126:                                              ; preds = %123, %104
  %127 = load float, ptr %95, align 4, !tbaa !34
  %128 = fneg float %127
  store float %128, ptr %95, align 4, !tbaa !34
  %129 = fcmp une float %127, 0.000000e+00
  br i1 %129, label %130, label %169

130:                                              ; preds = %126
  call void @llvm.memset.p0.i64(ptr align 4 %14, i8 0, i64 %16, i1 false), !tbaa !34
  br label %131

131:                                              ; preds = %130, %144
  %132 = phi i64 [ %11, %130 ], [ %145, %144 ]
  %133 = getelementptr inbounds float, ptr %7, i64 %132
  %134 = load float, ptr %133, align 4, !tbaa !34
  br label %135

135:                                              ; preds = %131, %135
  %136 = phi i64 [ %11, %131 ], [ %142, %135 ]
  %137 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %136, i64 %132
  %138 = load float, ptr %137, align 4, !tbaa !34
  %139 = getelementptr inbounds float, ptr %6, i64 %136
  %140 = load float, ptr %139, align 4, !tbaa !34
  %141 = tail call float @llvm.fmuladd.f32(float %134, float %138, float %140)
  store float %141, ptr %139, align 4, !tbaa !34
  %142 = add nuw nsw i64 %136, 1
  %143 = icmp eq i64 %142, 4
  br i1 %143, label %144, label %135, !llvm.loop !96

144:                                              ; preds = %135
  %145 = add nuw nsw i64 %132, 1
  %146 = icmp eq i64 %145, 4
  br i1 %146, label %147, label %131, !llvm.loop !97

147:                                              ; preds = %144
  %148 = getelementptr inbounds float, ptr %7, i64 %51
  %149 = load float, ptr %148, align 4, !tbaa !34
  %150 = fdiv float 1.000000e+00, %149
  br label %151

151:                                              ; preds = %147, %166
  %152 = phi i64 [ %11, %147 ], [ %167, %166 ]
  %153 = getelementptr inbounds float, ptr %7, i64 %152
  %154 = load float, ptr %153, align 4, !tbaa !34
  %155 = fneg float %154
  %156 = fmul float %150, %155
  br label %157

157:                                              ; preds = %151, %157
  %158 = phi i64 [ %11, %151 ], [ %164, %157 ]
  %159 = getelementptr inbounds float, ptr %6, i64 %158
  %160 = load float, ptr %159, align 4, !tbaa !34
  %161 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %158, i64 %152
  %162 = load float, ptr %161, align 4, !tbaa !34
  %163 = tail call float @llvm.fmuladd.f32(float %156, float %160, float %162)
  store float %163, ptr %161, align 4, !tbaa !34
  %164 = add nuw nsw i64 %158, 1
  %165 = icmp eq i64 %164, 4
  br i1 %165, label %166, label %157, !llvm.loop !98

166:                                              ; preds = %157
  %167 = add nuw nsw i64 %152, 1
  %168 = icmp eq i64 %167, 4
  br i1 %168, label %169, label %151, !llvm.loop !99

169:                                              ; preds = %166, %126
  br label %170

170:                                              ; preds = %169, %170
  %171 = phi i64 [ %175, %170 ], [ %11, %169 ]
  %172 = getelementptr inbounds float, ptr %7, i64 %171
  %173 = load float, ptr %172, align 4, !tbaa !34
  %174 = getelementptr inbounds [4 x float], ptr %2, i64 %171, i64 %12
  store float %173, ptr %174, align 4, !tbaa !34
  %175 = add nuw nsw i64 %171, 1
  %176 = icmp eq i64 %175, 4
  br i1 %176, label %177, label %170, !llvm.loop !100

177:                                              ; preds = %170, %92
  %178 = add nuw nsw i64 %11, 1
  %179 = icmp eq i64 %51, 3
  br i1 %179, label %180, label %10, !llvm.loop !101

180:                                              ; preds = %177
  %181 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3, i64 3
  %182 = load float, ptr %181, align 4, !tbaa !34
  store float %182, ptr %8, align 4, !tbaa !34
  %183 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 2, i64 3
  %184 = load float, ptr %183, align 4, !tbaa !34
  %185 = getelementptr inbounds float, ptr %7, i64 2
  store float %184, ptr %185, align 8, !tbaa !34
  %186 = getelementptr inbounds float, ptr %7, i64 3
  store float 0.000000e+00, ptr %186, align 4, !tbaa !34
  br label %187

187:                                              ; preds = %180, %187
  %188 = phi i64 [ 0, %180 ], [ %190, %187 ]
  %189 = getelementptr inbounds [4 x float], ptr %0, i64 %188, i64 3
  store float 0.000000e+00, ptr %189, align 4, !tbaa !34
  %190 = add nuw nsw i64 %188, 1
  %191 = icmp eq i64 %190, 4
  br i1 %191, label %192, label %187, !llvm.loop !102

192:                                              ; preds = %187
  %193 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 3
  store float 1.000000e+00, ptr %193, align 4, !tbaa !34
  br label %194

194:                                              ; preds = %192, %252
  %195 = phi i64 [ 3, %192 ], [ %255, %252 ]
  %196 = phi i64 [ 2, %192 ], [ %253, %252 ]
  %197 = trunc i64 %195 to i32
  %198 = getelementptr inbounds float, ptr %1, i64 %196
  %199 = load float, ptr %198, align 4, !tbaa !34
  %200 = fcmp une float %199, 0.000000e+00
  br i1 %200, label %201, label %243

201:                                              ; preds = %194
  %202 = getelementptr inbounds [4 x float], ptr %0, i64 %196, i64 %196
  br label %203

203:                                              ; preds = %201, %228
  %204 = phi i64 [ %195, %201 ], [ %229, %228 ]
  br label %205

205:                                              ; preds = %203, %205
  %206 = phi i64 [ %196, %203 ], [ %213, %205 ]
  %207 = phi float [ 0.000000e+00, %203 ], [ %212, %205 ]
  %208 = getelementptr inbounds [4 x float], ptr %0, i64 %206, i64 %196
  %209 = load float, ptr %208, align 4, !tbaa !34
  %210 = getelementptr inbounds [4 x float], ptr %0, i64 %206, i64 %204
  %211 = load float, ptr %210, align 4, !tbaa !34
  %212 = tail call float @llvm.fmuladd.f32(float %209, float %211, float %207)
  %213 = add nuw nsw i64 %206, 1
  %214 = icmp eq i64 %213, 4
  br i1 %214, label %215, label %205, !llvm.loop !103

215:                                              ; preds = %205
  %216 = fneg float %212
  %217 = load float, ptr %202, align 4, !tbaa !34
  %218 = fdiv float %216, %217
  br label %219

219:                                              ; preds = %215, %219
  %220 = phi i64 [ %196, %215 ], [ %226, %219 ]
  %221 = getelementptr inbounds [4 x float], ptr %0, i64 %220, i64 %196
  %222 = load float, ptr %221, align 4, !tbaa !34
  %223 = getelementptr inbounds [4 x float], ptr %0, i64 %220, i64 %204
  %224 = load float, ptr %223, align 4, !tbaa !34
  %225 = tail call float @llvm.fmuladd.f32(float %218, float %222, float %224)
  store float %225, ptr %223, align 4, !tbaa !34
  %226 = add nuw nsw i64 %220, 1
  %227 = icmp eq i64 %226, 4
  br i1 %227, label %228, label %219, !llvm.loop !104

228:                                              ; preds = %219
  %229 = add nuw nsw i64 %204, 1
  %230 = icmp eq i64 %229, 4
  br i1 %230, label %231, label %203, !llvm.loop !105

231:                                              ; preds = %228, %231
  %232 = phi i64 [ %236, %231 ], [ %196, %228 ]
  %233 = getelementptr inbounds [4 x float], ptr %0, i64 %232, i64 %196
  %234 = load float, ptr %233, align 4, !tbaa !34
  %235 = fneg float %234
  store float %235, ptr %233, align 4, !tbaa !34
  %236 = add nuw nsw i64 %232, 1
  %237 = icmp eq i64 %236, 4
  br i1 %237, label %238, label %231, !llvm.loop !106

238:                                              ; preds = %231
  %239 = getelementptr inbounds [4 x float], ptr %0, i64 %196, i64 %196
  %240 = load float, ptr %239, align 4, !tbaa !34
  %241 = fadd float %240, 1.000000e+00
  store float %241, ptr %239, align 4, !tbaa !34
  %242 = icmp ugt i32 %197, 2
  br i1 %242, label %248, label %252

243:                                              ; preds = %194, %243
  %244 = phi i64 [ %246, %243 ], [ 0, %194 ]
  %245 = getelementptr inbounds [4 x float], ptr %0, i64 %244, i64 %196
  store float 0.000000e+00, ptr %245, align 4, !tbaa !34
  %246 = add nuw nsw i64 %244, 1
  %247 = icmp eq i64 %246, 4
  br i1 %247, label %248, label %243, !llvm.loop !107

248:                                              ; preds = %243, %238
  %249 = phi i64 [ 0, %238 ], [ %196, %243 ]
  %250 = phi float [ 0.000000e+00, %238 ], [ 1.000000e+00, %243 ]
  %251 = getelementptr inbounds [4 x float], ptr %0, i64 %249, i64 %196
  store float %250, ptr %251, align 4, !tbaa !34
  br label %252

252:                                              ; preds = %248, %238
  %253 = add nsw i64 %196, -1
  %254 = icmp eq i64 %196, 0
  %255 = add nsw i64 %195, -1
  br i1 %254, label %261, label %194, !llvm.loop !108

256:                                              ; preds = %306
  %257 = getelementptr float, ptr %1, i64 1
  %258 = getelementptr float, ptr %7, i64 -1
  %259 = getelementptr float, ptr %7, i64 -1
  %260 = getelementptr float, ptr %7, i64 -1
  br label %311

261:                                              ; preds = %252, %306
  %262 = phi i64 [ %308, %306 ], [ 3, %252 ]
  %263 = phi i64 [ %310, %306 ], [ 4, %252 ]
  %264 = icmp ult i64 %262, 2
  %265 = getelementptr inbounds float, ptr %7, i64 %262
  %266 = load float, ptr %265, align 4, !tbaa !34
  %267 = fcmp une float %266, 0.000000e+00
  %268 = and i1 %264, %267
  br i1 %268, label %269, label %300

269:                                              ; preds = %261
  %270 = add nuw nsw i64 %262, 1
  %271 = getelementptr inbounds [4 x float], ptr %2, i64 %270, i64 %262
  br label %272

272:                                              ; preds = %269, %297
  %273 = phi i64 [ %263, %269 ], [ %298, %297 ]
  br label %274

274:                                              ; preds = %272, %274
  %275 = phi i64 [ %263, %272 ], [ %282, %274 ]
  %276 = phi float [ 0.000000e+00, %272 ], [ %281, %274 ]
  %277 = getelementptr inbounds [4 x float], ptr %2, i64 %275, i64 %262
  %278 = load float, ptr %277, align 4, !tbaa !34
  %279 = getelementptr inbounds [4 x float], ptr %2, i64 %275, i64 %273
  %280 = load float, ptr %279, align 4, !tbaa !34
  %281 = tail call float @llvm.fmuladd.f32(float %278, float %280, float %276)
  %282 = add nuw nsw i64 %275, 1
  %283 = icmp eq i64 %282, 4
  br i1 %283, label %284, label %274, !llvm.loop !109

284:                                              ; preds = %274
  %285 = fneg float %281
  %286 = load float, ptr %271, align 4, !tbaa !34
  %287 = fdiv float %285, %286
  br label %288

288:                                              ; preds = %284, %288
  %289 = phi i64 [ %263, %284 ], [ %295, %288 ]
  %290 = getelementptr inbounds [4 x float], ptr %2, i64 %289, i64 %262
  %291 = load float, ptr %290, align 4, !tbaa !34
  %292 = getelementptr inbounds [4 x float], ptr %2, i64 %289, i64 %273
  %293 = load float, ptr %292, align 4, !tbaa !34
  %294 = tail call float @llvm.fmuladd.f32(float %287, float %291, float %293)
  store float %294, ptr %292, align 4, !tbaa !34
  %295 = add nuw nsw i64 %289, 1
  %296 = icmp eq i64 %295, 4
  br i1 %296, label %297, label %288, !llvm.loop !110

297:                                              ; preds = %288
  %298 = add nuw nsw i64 %273, 1
  %299 = icmp eq i64 %298, 4
  br i1 %299, label %300, label %272, !llvm.loop !111

300:                                              ; preds = %297, %261
  br label %301

301:                                              ; preds = %300, %301
  %302 = phi i64 [ %304, %301 ], [ 0, %300 ]
  %303 = getelementptr inbounds [4 x float], ptr %2, i64 %302, i64 %262
  store float 0.000000e+00, ptr %303, align 4, !tbaa !34
  %304 = add nuw nsw i64 %302, 1
  %305 = icmp eq i64 %304, 4
  br i1 %305, label %306, label %301, !llvm.loop !112

306:                                              ; preds = %301
  %307 = getelementptr inbounds [4 x float], ptr %2, i64 %262, i64 %262
  store float 1.000000e+00, ptr %307, align 4, !tbaa !34
  %308 = add nsw i64 %262, -1
  %309 = icmp eq i64 %262, 0
  %310 = add nsw i64 %263, -1
  br i1 %309, label %256, label %261, !llvm.loop !113

311:                                              ; preds = %256, %668
  %312 = phi i32 [ %669, %668 ], [ 4, %256 ]
  %313 = phi i32 [ %670, %668 ], [ 200, %256 ]
  %314 = icmp sgt i32 %312, 0
  br i1 %314, label %315, label %671

315:                                              ; preds = %311
  %316 = icmp eq i32 %313, 0
  br i1 %316, label %668, label %317

317:                                              ; preds = %315
  %318 = add nsw i32 %313, -1
  %319 = add nsw i32 %312, -2
  %320 = icmp eq i32 %319, -1
  br i1 %320, label %343, label %321

321:                                              ; preds = %317
  %322 = sext i32 %319 to i64
  br label %323

323:                                              ; preds = %321, %340
  %324 = phi i64 [ %322, %321 ], [ %341, %340 ]
  %325 = getelementptr inbounds float, ptr %7, i64 %324
  %326 = load float, ptr %325, align 4, !tbaa !34
  %327 = tail call float @llvm.fabs.f32(float %326)
  %328 = getelementptr inbounds float, ptr %1, i64 %324
  %329 = load float, ptr %328, align 4, !tbaa !34
  %330 = tail call float @llvm.fabs.f32(float %329)
  %331 = getelementptr float, ptr %257, i64 %324
  %332 = load float, ptr %331, align 4, !tbaa !34
  %333 = tail call float @llvm.fabs.f32(float %332)
  %334 = fadd float %330, %333
  %335 = fmul float %334, 0x3CB0000000000000
  %336 = fcmp ugt float %327, %335
  br i1 %336, label %340, label %337

337:                                              ; preds = %323
  %338 = trunc i64 %324 to i32
  %339 = getelementptr inbounds float, ptr %7, i64 %324
  store float 0.000000e+00, ptr %339, align 4, !tbaa !34
  br label %343

340:                                              ; preds = %323
  %341 = add nsw i64 %324, -1
  %342 = icmp eq i64 %324, 0
  br i1 %342, label %343, label %323, !llvm.loop !114

343:                                              ; preds = %340, %317, %337
  %344 = phi i32 [ %338, %337 ], [ %319, %317 ], [ -1, %340 ]
  %345 = icmp eq i32 %344, %319
  br i1 %345, label %392, label %346

346:                                              ; preds = %343
  %347 = add nsw i32 %312, -1
  %348 = icmp sgt i32 %347, %344
  br i1 %348, label %349, label %385

349:                                              ; preds = %346
  %350 = add nsw i32 %344, 1
  %351 = sext i32 %347 to i64
  %352 = sext i32 %344 to i64
  %353 = zext nneg i32 %312 to i64
  %354 = sext i32 %350 to i64
  br label %355

355:                                              ; preds = %349, %380
  %356 = phi i64 [ %351, %349 ], [ %381, %380 ]
  %357 = icmp eq i64 %356, %353
  br i1 %357, label %362, label %358

358:                                              ; preds = %355
  %359 = getelementptr inbounds float, ptr %7, i64 %356
  %360 = load float, ptr %359, align 4, !tbaa !34
  %361 = tail call float @llvm.fabs.f32(float %360)
  br label %362

362:                                              ; preds = %355, %358
  %363 = phi float [ %361, %358 ], [ 0.000000e+00, %355 ]
  %364 = icmp eq i64 %356, %354
  br i1 %364, label %369, label %365

365:                                              ; preds = %362
  %366 = getelementptr float, ptr %258, i64 %356
  %367 = load float, ptr %366, align 4, !tbaa !34
  %368 = tail call float @llvm.fabs.f32(float %367)
  br label %369

369:                                              ; preds = %362, %365
  %370 = phi float [ %368, %365 ], [ 0.000000e+00, %362 ]
  %371 = fadd float %363, %370
  %372 = getelementptr inbounds float, ptr %1, i64 %356
  %373 = load float, ptr %372, align 4, !tbaa !34
  %374 = tail call float @llvm.fabs.f32(float %373)
  %375 = fmul float %371, 0x3CB0000000000000
  %376 = fcmp ugt float %374, %375
  br i1 %376, label %380, label %377

377:                                              ; preds = %369
  %378 = trunc i64 %356 to i32
  %379 = getelementptr inbounds float, ptr %1, i64 %356
  store float 0.000000e+00, ptr %379, align 4, !tbaa !34
  br label %385

380:                                              ; preds = %369
  %381 = add nsw i64 %356, -1
  %382 = icmp sgt i64 %381, %352
  br i1 %382, label %355, label %383, !llvm.loop !115

383:                                              ; preds = %380
  %384 = trunc i64 %381 to i32
  br label %385

385:                                              ; preds = %383, %346, %377
  %386 = phi i32 [ %378, %377 ], [ %347, %346 ], [ %384, %383 ]
  %387 = icmp eq i32 %386, %344
  %388 = icmp eq i32 %386, %347
  %389 = select i1 %388, i32 1, i32 2
  %390 = select i1 %387, i32 3, i32 %389
  %391 = select i1 %388, i32 %344, i32 %386
  br label %392

392:                                              ; preds = %343, %385
  %393 = phi i32 [ %390, %385 ], [ 4, %343 ]
  %394 = phi i32 [ %391, %385 ], [ %344, %343 ]
  %395 = add i32 %394, 1
  switch i32 %393, label %667 [
    i32 1, label %396
    i32 2, label %442
    i32 3, label %480
    i32 4, label %617
  ]

396:                                              ; preds = %392
  %397 = sext i32 %319 to i64
  %398 = getelementptr inbounds float, ptr %7, i64 %397
  %399 = load float, ptr %398, align 4, !tbaa !34
  store float 0.000000e+00, ptr %398, align 4, !tbaa !34
  %400 = icmp sgt i32 %319, %394
  br i1 %400, label %401, label %668

401:                                              ; preds = %396
  %402 = add nsw i32 %312, -1
  %403 = zext nneg i32 %402 to i64
  %404 = sext i32 %319 to i64
  %405 = sext i32 %394 to i64
  %406 = sext i32 %395 to i64
  br label %407

407:                                              ; preds = %401, %439
  %408 = phi i64 [ %404, %401 ], [ %440, %439 ]
  %409 = phi float [ %399, %401 ], [ %425, %439 ]
  %410 = getelementptr inbounds float, ptr %1, i64 %408
  %411 = load float, ptr %410, align 4, !tbaa !34
  %412 = tail call float @hypotf(float noundef %411, float noundef %409) #20
  %413 = fdiv float 1.000000e+00, %412
  %414 = load float, ptr %410, align 4, !tbaa !34
  %415 = fmul float %414, %413
  %416 = fmul float %409, %413
  store float %412, ptr %410, align 4, !tbaa !34
  %417 = icmp eq i64 %408, %406
  br i1 %417, label %424, label %418

418:                                              ; preds = %407
  %419 = fneg float %416
  %420 = getelementptr float, ptr %260, i64 %408
  %421 = load float, ptr %420, align 4, !tbaa !34
  %422 = fmul float %421, %419
  %423 = fmul float %415, %421
  store float %423, ptr %420, align 4, !tbaa !34
  br label %424

424:                                              ; preds = %418, %407
  %425 = phi float [ %422, %418 ], [ %409, %407 ]
  %426 = fneg float %416
  br label %427

427:                                              ; preds = %424, %427
  %428 = phi i64 [ 0, %424 ], [ %437, %427 ]
  %429 = getelementptr inbounds [4 x float], ptr %2, i64 %428, i64 %408
  %430 = load float, ptr %429, align 4, !tbaa !34
  %431 = getelementptr inbounds [4 x float], ptr %2, i64 %428, i64 %403
  %432 = load float, ptr %431, align 4, !tbaa !34
  %433 = fmul float %416, %432
  %434 = tail call float @llvm.fmuladd.f32(float %415, float %430, float %433)
  %435 = fmul float %415, %432
  %436 = tail call float @llvm.fmuladd.f32(float %426, float %430, float %435)
  store float %436, ptr %431, align 4, !tbaa !34
  store float %434, ptr %429, align 4, !tbaa !34
  %437 = add nuw nsw i64 %428, 1
  %438 = icmp eq i64 %437, 4
  br i1 %438, label %439, label %427, !llvm.loop !116

439:                                              ; preds = %427
  %440 = add nsw i64 %408, -1
  %441 = icmp sgt i64 %440, %405
  br i1 %441, label %407, label %668, !llvm.loop !117

442:                                              ; preds = %392
  %443 = sext i32 %394 to i64
  %444 = getelementptr inbounds float, ptr %7, i64 %443
  %445 = load float, ptr %444, align 4, !tbaa !34
  store float 0.000000e+00, ptr %444, align 4, !tbaa !34
  %446 = icmp slt i32 %395, %312
  br i1 %446, label %447, label %668

447:                                              ; preds = %442
  %448 = sext i32 %395 to i64
  br label %449

449:                                              ; preds = %447, %475
  %450 = phi i64 [ %448, %447 ], [ %477, %475 ]
  %451 = phi float [ %445, %447 ], [ %476, %475 ]
  %452 = getelementptr inbounds float, ptr %1, i64 %450
  %453 = load float, ptr %452, align 4, !tbaa !34
  %454 = tail call float @hypotf(float noundef %453, float noundef %451) #20
  %455 = fdiv float 1.000000e+00, %454
  %456 = load float, ptr %452, align 4, !tbaa !34
  %457 = fmul float %456, %455
  %458 = fmul float %451, %455
  store float %454, ptr %452, align 4, !tbaa !34
  %459 = fneg float %458
  %460 = getelementptr inbounds float, ptr %7, i64 %450
  %461 = load float, ptr %460, align 4, !tbaa !34
  %462 = fmul float %457, %461
  store float %462, ptr %460, align 4, !tbaa !34
  br label %463

463:                                              ; preds = %449, %463
  %464 = phi i64 [ 0, %449 ], [ %473, %463 ]
  %465 = getelementptr inbounds [4 x float], ptr %0, i64 %464, i64 %450
  %466 = load float, ptr %465, align 4, !tbaa !34
  %467 = getelementptr inbounds [4 x float], ptr %0, i64 %464, i64 %443
  %468 = load float, ptr %467, align 4, !tbaa !34
  %469 = fmul float %458, %468
  %470 = tail call float @llvm.fmuladd.f32(float %457, float %466, float %469)
  %471 = fmul float %457, %468
  %472 = tail call float @llvm.fmuladd.f32(float %459, float %466, float %471)
  store float %472, ptr %467, align 4, !tbaa !34
  store float %470, ptr %465, align 4, !tbaa !34
  %473 = add nuw nsw i64 %464, 1
  %474 = icmp eq i64 %473, 4
  br i1 %474, label %475, label %463, !llvm.loop !118

475:                                              ; preds = %463
  %476 = fmul float %461, %459
  %477 = add nsw i64 %450, 1
  %478 = trunc i64 %477 to i32
  %479 = icmp eq i32 %312, %478
  br i1 %479, label %668, label %449, !llvm.loop !119

480:                                              ; preds = %392
  %481 = add nsw i32 %312, -1
  %482 = zext nneg i32 %481 to i64
  %483 = getelementptr inbounds float, ptr %1, i64 %482
  %484 = load float, ptr %483, align 4, !tbaa !34
  %485 = tail call float @llvm.fabs.f32(float %484)
  %486 = sext i32 %319 to i64
  %487 = getelementptr inbounds float, ptr %1, i64 %486
  %488 = load float, ptr %487, align 4, !tbaa !34
  %489 = tail call float @llvm.fabs.f32(float %488)
  %490 = fcmp ogt float %485, %489
  %491 = select i1 %490, float %485, float %489
  %492 = getelementptr inbounds float, ptr %7, i64 %486
  %493 = load float, ptr %492, align 4, !tbaa !34
  %494 = tail call float @llvm.fabs.f32(float %493)
  %495 = fcmp ogt float %491, %494
  %496 = select i1 %495, float %491, float %494
  %497 = sext i32 %395 to i64
  %498 = getelementptr inbounds float, ptr %1, i64 %497
  %499 = load float, ptr %498, align 4, !tbaa !34
  %500 = tail call float @llvm.fabs.f32(float %499)
  %501 = fcmp ogt float %496, %500
  %502 = select i1 %501, float %496, float %500
  %503 = getelementptr inbounds float, ptr %7, i64 %497
  %504 = load float, ptr %503, align 4, !tbaa !34
  %505 = tail call float @llvm.fabs.f32(float %504)
  %506 = fcmp ogt float %502, %505
  %507 = select i1 %506, float %502, float %505
  %508 = fdiv float 1.000000e+00, %507
  %509 = fmul float %484, %508
  %510 = fmul float %488, %508
  %511 = fmul float %493, %508
  %512 = fmul float %499, %508
  %513 = fmul float %504, %508
  %514 = fadd float %510, %509
  %515 = fsub float %510, %509
  %516 = fmul float %511, %511
  %517 = tail call float @llvm.fmuladd.f32(float %514, float %515, float %516)
  %518 = fmul float %517, 5.000000e-01
  %519 = fmul float %509, %511
  %520 = fmul float %519, %519
  %521 = fcmp une float %518, 0.000000e+00
  %522 = fcmp une float %520, 0.000000e+00
  %523 = select i1 %521, i1 true, i1 %522
  br i1 %523, label %524, label %532

524:                                              ; preds = %480
  %525 = tail call float @llvm.fmuladd.f32(float %518, float %518, float %520)
  %526 = tail call float @sqrtf(float noundef %525) #20
  %527 = fcmp olt float %518, 0.000000e+00
  %528 = fneg float %526
  %529 = select i1 %527, float %528, float %526
  %530 = fadd float %518, %529
  %531 = fdiv float %520, %530
  br label %532

532:                                              ; preds = %480, %524
  %533 = phi float [ %531, %524 ], [ 0.000000e+00, %480 ]
  %534 = fadd float %512, %509
  %535 = fsub float %512, %509
  %536 = tail call float @llvm.fmuladd.f32(float %534, float %535, float %533)
  %537 = icmp slt i32 %395, %481
  br i1 %537, label %538, label %615

538:                                              ; preds = %532
  %539 = fmul float %512, %513
  %540 = sext i32 %395 to i64
  %541 = sext i32 %395 to i64
  br label %542

542:                                              ; preds = %538, %612
  %543 = phi i64 [ %540, %538 ], [ %564, %612 ]
  %544 = phi float [ %539, %538 ], [ %597, %612 ]
  %545 = phi float [ %536, %538 ], [ %591, %612 ]
  %546 = tail call float @hypotf(float noundef %545, float noundef %544) #20
  %547 = fcmp oeq float %546, 0.000000e+00
  %548 = fdiv float %545, %546
  %549 = select i1 %547, float 0.000000e+00, float %548
  %550 = fdiv float %544, %546
  %551 = select i1 %547, float 0.000000e+00, float %550
  %552 = icmp eq i64 %543, %541
  br i1 %552, label %555, label %553

553:                                              ; preds = %542
  %554 = getelementptr float, ptr %259, i64 %543
  store float %546, ptr %554, align 4, !tbaa !34
  br label %555

555:                                              ; preds = %553, %542
  %556 = getelementptr inbounds float, ptr %1, i64 %543
  %557 = load float, ptr %556, align 4, !tbaa !34
  %558 = getelementptr inbounds float, ptr %7, i64 %543
  %559 = load float, ptr %558, align 4, !tbaa !34
  %560 = fmul float %551, %559
  %561 = fneg float %551
  %562 = fmul float %557, %561
  %563 = tail call float @llvm.fmuladd.f32(float %549, float %559, float %562)
  store float %563, ptr %558, align 4, !tbaa !34
  %564 = add nsw i64 %543, 1
  %565 = getelementptr inbounds float, ptr %1, i64 %564
  %566 = load float, ptr %565, align 4, !tbaa !34
  %567 = fmul float %549, %566
  store float %567, ptr %565, align 4, !tbaa !34
  br label %568

568:                                              ; preds = %555, %568
  %569 = phi i64 [ 0, %555 ], [ %578, %568 ]
  %570 = getelementptr inbounds [4 x float], ptr %2, i64 %569, i64 %543
  %571 = load float, ptr %570, align 4, !tbaa !34
  %572 = getelementptr inbounds [4 x float], ptr %2, i64 %569, i64 %564
  %573 = load float, ptr %572, align 4, !tbaa !34
  %574 = fmul float %551, %573
  %575 = tail call float @llvm.fmuladd.f32(float %549, float %571, float %574)
  %576 = fmul float %549, %573
  %577 = tail call float @llvm.fmuladd.f32(float %561, float %571, float %576)
  store float %577, ptr %572, align 4, !tbaa !34
  store float %575, ptr %570, align 4, !tbaa !34
  %578 = add nuw nsw i64 %569, 1
  %579 = icmp eq i64 %578, 4
  br i1 %579, label %580, label %568, !llvm.loop !120

580:                                              ; preds = %568
  %581 = tail call float @llvm.fmuladd.f32(float %549, float %557, float %560)
  %582 = fmul float %551, %566
  %583 = tail call float @hypotf(float noundef %581, float noundef %582) #20
  %584 = fcmp oeq float %583, 0.000000e+00
  %585 = fdiv float %581, %583
  %586 = select i1 %584, float 0.000000e+00, float %585
  %587 = fdiv float %582, %583
  %588 = select i1 %584, float 0.000000e+00, float %587
  store float %583, ptr %556, align 4, !tbaa !34
  %589 = load float, ptr %565, align 4, !tbaa !34
  %590 = fmul float %588, %589
  %591 = tail call float @llvm.fmuladd.f32(float %586, float %563, float %590)
  %592 = fneg float %588
  %593 = fmul float %586, %589
  %594 = tail call float @llvm.fmuladd.f32(float %592, float %563, float %593)
  store float %594, ptr %565, align 4, !tbaa !34
  %595 = getelementptr inbounds float, ptr %7, i64 %564
  %596 = load float, ptr %595, align 4, !tbaa !34
  %597 = fmul float %588, %596
  %598 = fmul float %586, %596
  store float %598, ptr %595, align 4, !tbaa !34
  %599 = icmp slt i64 %543, 3
  br i1 %599, label %600, label %612

600:                                              ; preds = %580, %600
  %601 = phi i64 [ %610, %600 ], [ 0, %580 ]
  %602 = getelementptr inbounds [4 x float], ptr %0, i64 %601, i64 %543
  %603 = load float, ptr %602, align 4, !tbaa !34
  %604 = getelementptr inbounds [4 x float], ptr %0, i64 %601, i64 %564
  %605 = load float, ptr %604, align 4, !tbaa !34
  %606 = fmul float %588, %605
  %607 = tail call float @llvm.fmuladd.f32(float %586, float %603, float %606)
  %608 = fmul float %586, %605
  %609 = tail call float @llvm.fmuladd.f32(float %592, float %603, float %608)
  store float %609, ptr %604, align 4, !tbaa !34
  store float %607, ptr %602, align 4, !tbaa !34
  %610 = add nuw nsw i64 %601, 1
  %611 = icmp eq i64 %610, 4
  br i1 %611, label %612, label %600, !llvm.loop !121

612:                                              ; preds = %600, %580
  %613 = trunc i64 %564 to i32
  %614 = icmp eq i32 %481, %613
  br i1 %614, label %615, label %542, !llvm.loop !122

615:                                              ; preds = %612, %532
  %616 = phi float [ %536, %532 ], [ %591, %612 ]
  store float %616, ptr %492, align 4, !tbaa !34
  br label %668

617:                                              ; preds = %392
  %618 = sext i32 %395 to i64
  %619 = getelementptr inbounds float, ptr %1, i64 %618
  %620 = load float, ptr %619, align 4, !tbaa !34
  %621 = fcmp ugt float %620, 0.000000e+00
  br i1 %621, label %633, label %622

622:                                              ; preds = %617
  %623 = fcmp olt float %620, 0.000000e+00
  %624 = fneg float %620
  %625 = select i1 %623, float %624, float 0.000000e+00
  store float %625, ptr %619, align 4, !tbaa !34
  br label %626

626:                                              ; preds = %622, %626
  %627 = phi i64 [ 0, %622 ], [ %631, %626 ]
  %628 = getelementptr inbounds [4 x float], ptr %2, i64 %627, i64 %618
  %629 = load float, ptr %628, align 4, !tbaa !34
  %630 = fneg float %629
  store float %630, ptr %628, align 4, !tbaa !34
  %631 = add nuw nsw i64 %627, 1
  %632 = icmp eq i64 %631, 4
  br i1 %632, label %633, label %626, !llvm.loop !123

633:                                              ; preds = %626, %617
  br label %634

634:                                              ; preds = %633, %663
  %635 = phi i32 [ %664, %663 ], [ %395, %633 ]
  %636 = icmp slt i32 %635, 3
  br i1 %636, label %637, label %665

637:                                              ; preds = %634
  %638 = sext i32 %635 to i64
  %639 = getelementptr inbounds float, ptr %1, i64 %638
  %640 = load float, ptr %639, align 4, !tbaa !34
  %641 = add nsw i32 %635, 1
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds float, ptr %1, i64 %642
  %644 = load float, ptr %643, align 4, !tbaa !34
  %645 = fcmp ult float %640, %644
  br i1 %645, label %646, label %663

646:                                              ; preds = %637
  store float %644, ptr %639, align 4, !tbaa !34
  store float %640, ptr %643, align 4, !tbaa !34
  br label %647

647:                                              ; preds = %646, %647
  %648 = phi i64 [ 0, %646 ], [ %653, %647 ]
  %649 = getelementptr inbounds [4 x float], ptr %2, i64 %648, i64 %642
  %650 = load float, ptr %649, align 4, !tbaa !34
  %651 = getelementptr inbounds [4 x float], ptr %2, i64 %648, i64 %638
  %652 = load float, ptr %651, align 4, !tbaa !34
  store float %652, ptr %649, align 4, !tbaa !34
  store float %650, ptr %651, align 4, !tbaa !34
  %653 = add nuw nsw i64 %648, 1
  %654 = icmp eq i64 %653, 4
  br i1 %654, label %655, label %647, !llvm.loop !124

655:                                              ; preds = %647, %655
  %656 = phi i64 [ %661, %655 ], [ 0, %647 ]
  %657 = getelementptr inbounds [4 x float], ptr %0, i64 %656, i64 %642
  %658 = load float, ptr %657, align 4, !tbaa !34
  %659 = getelementptr inbounds [4 x float], ptr %0, i64 %656, i64 %638
  %660 = load float, ptr %659, align 4, !tbaa !34
  store float %660, ptr %657, align 4, !tbaa !34
  store float %658, ptr %659, align 4, !tbaa !34
  %661 = add nuw nsw i64 %656, 1
  %662 = icmp eq i64 %661, 4
  br i1 %662, label %663, label %655, !llvm.loop !125

663:                                              ; preds = %655, %637
  %664 = phi i32 [ %635, %637 ], [ %641, %655 ]
  br i1 %645, label %634, label %665

665:                                              ; preds = %663, %634
  %666 = add nsw i32 %312, -1
  br label %668

667:                                              ; preds = %392
  unreachable

668:                                              ; preds = %475, %439, %442, %396, %615, %665, %315
  %669 = phi i32 [ %312, %315 ], [ %666, %665 ], [ %312, %615 ], [ %312, %396 ], [ %312, %442 ], [ %312, %439 ], [ %312, %475 ]
  %670 = phi i32 [ 0, %315 ], [ %318, %665 ], [ %318, %615 ], [ %318, %396 ], [ %318, %442 ], [ %318, %439 ], [ %318, %475 ]
  br i1 %316, label %671, label %311

671:                                              ; preds = %668, %311
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #20
  ret void
}

; Function Attrs: nounwind
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local void @pseudoinverse_m4_m4(ptr nocapture noundef %0, ptr nocapture noundef %1, float noundef %2) local_unnamed_addr #12 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #20
  %8 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds [4 x float], ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  store float %11, ptr %8, align 4, !tbaa !34
  store float %9, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds [4 x float], ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  store float %15, ptr %12, align 4, !tbaa !34
  store float %13, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 3
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds [4 x float], ptr %1, i64 3
  %19 = load float, ptr %18, align 4, !tbaa !34
  store float %19, ptr %16, align 4, !tbaa !34
  store float %17, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  store float %23, ptr %20, align 4, !tbaa !34
  store float %21, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 3
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !34
  store float %27, ptr %24, align 4, !tbaa !34
  store float %25, ptr %26, align 4, !tbaa !34
  %28 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 3
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !34
  store float %31, ptr %28, align 4, !tbaa !34
  store float %29, ptr %30, align 4, !tbaa !34
  call void @svd_m4(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef %1)
  %32 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = getelementptr inbounds [4 x float], ptr %7, i64 1
  %35 = load float, ptr %34, align 16, !tbaa !34
  store float %35, ptr %32, align 4, !tbaa !34
  store float %33, ptr %34, align 16, !tbaa !34
  %36 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  %37 = load float, ptr %36, align 8, !tbaa !34
  %38 = getelementptr inbounds [4 x float], ptr %7, i64 2
  %39 = load float, ptr %38, align 16, !tbaa !34
  store float %39, ptr %36, align 8, !tbaa !34
  store float %37, ptr %38, align 16, !tbaa !34
  %40 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  %41 = load float, ptr %40, align 4, !tbaa !34
  %42 = getelementptr inbounds [4 x float], ptr %7, i64 3
  %43 = load float, ptr %42, align 16, !tbaa !34
  store float %43, ptr %40, align 4, !tbaa !34
  store float %41, ptr %42, align 16, !tbaa !34
  %44 = getelementptr inbounds [4 x float], ptr %7, i64 1, i64 2
  %45 = load float, ptr %44, align 8, !tbaa !34
  %46 = getelementptr inbounds [4 x float], ptr %7, i64 2, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !34
  store float %47, ptr %44, align 8, !tbaa !34
  store float %45, ptr %46, align 4, !tbaa !34
  %48 = getelementptr inbounds [4 x float], ptr %7, i64 1, i64 3
  %49 = load float, ptr %48, align 4, !tbaa !34
  %50 = getelementptr inbounds [4 x float], ptr %7, i64 3, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !34
  store float %51, ptr %48, align 4, !tbaa !34
  store float %49, ptr %50, align 4, !tbaa !34
  %52 = getelementptr inbounds [4 x float], ptr %7, i64 2, i64 3
  %53 = load float, ptr %52, align 4, !tbaa !34
  %54 = getelementptr inbounds [4 x float], ptr %7, i64 3, i64 2
  %55 = load float, ptr %54, align 8, !tbaa !34
  store float %55, ptr %52, align 4, !tbaa !34
  store float %53, ptr %54, align 8, !tbaa !34
  %56 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !34
  %58 = getelementptr inbounds [4 x float], ptr %4, i64 1
  %59 = load float, ptr %58, align 16, !tbaa !34
  store float %59, ptr %56, align 4, !tbaa !34
  store float %57, ptr %58, align 16, !tbaa !34
  %60 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  %61 = load float, ptr %60, align 8, !tbaa !34
  %62 = getelementptr inbounds [4 x float], ptr %4, i64 2
  %63 = load float, ptr %62, align 16, !tbaa !34
  store float %63, ptr %60, align 8, !tbaa !34
  store float %61, ptr %62, align 16, !tbaa !34
  %64 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  %65 = load float, ptr %64, align 4, !tbaa !34
  %66 = getelementptr inbounds [4 x float], ptr %4, i64 3
  %67 = load float, ptr %66, align 16, !tbaa !34
  store float %67, ptr %64, align 4, !tbaa !34
  store float %65, ptr %66, align 16, !tbaa !34
  %68 = getelementptr inbounds [4 x float], ptr %4, i64 1, i64 2
  %69 = load float, ptr %68, align 8, !tbaa !34
  %70 = getelementptr inbounds [4 x float], ptr %4, i64 2, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !34
  store float %71, ptr %68, align 8, !tbaa !34
  store float %69, ptr %70, align 4, !tbaa !34
  %72 = getelementptr inbounds [4 x float], ptr %4, i64 1, i64 3
  %73 = load float, ptr %72, align 4, !tbaa !34
  %74 = getelementptr inbounds [4 x float], ptr %4, i64 3, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !34
  store float %75, ptr %72, align 4, !tbaa !34
  store float %73, ptr %74, align 4, !tbaa !34
  %76 = getelementptr inbounds [4 x float], ptr %4, i64 2, i64 3
  %77 = load float, ptr %76, align 4, !tbaa !34
  %78 = getelementptr inbounds [4 x float], ptr %4, i64 3, i64 2
  %79 = load float, ptr %78, align 8, !tbaa !34
  store float %79, ptr %76, align 4, !tbaa !34
  store float %77, ptr %78, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, i8 0, i64 64, i1 false)
  br label %80

80:                                               ; preds = %3, %80
  %81 = phi i64 [ 0, %3 ], [ %88, %80 ]
  %82 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 %81
  %83 = load float, ptr %82, align 4, !tbaa !34
  %84 = fcmp olt float %83, %2
  %85 = fdiv float 1.000000e+00, %83
  %86 = select i1 %84, float 0.000000e+00, float %85
  %87 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 %81, i64 %81
  store float %86, ptr %87, align 4, !tbaa !34
  %88 = add nuw nsw i64 %81, 1
  %89 = icmp eq i64 %88, 4
  br i1 %89, label %90, label %80, !llvm.loop !126

90:                                               ; preds = %80
  store float %57, ptr %56, align 4, !tbaa !34
  store float %59, ptr %58, align 16, !tbaa !34
  store float %61, ptr %60, align 8, !tbaa !34
  store float %63, ptr %62, align 16, !tbaa !34
  store float %65, ptr %64, align 4, !tbaa !34
  store float %67, ptr %66, align 16, !tbaa !34
  store float %69, ptr %68, align 8, !tbaa !34
  store float %71, ptr %70, align 4, !tbaa !34
  store float %73, ptr %72, align 4, !tbaa !34
  store float %75, ptr %74, align 4, !tbaa !34
  store float %77, ptr %76, align 4, !tbaa !34
  store float %79, ptr %78, align 8, !tbaa !34
  call void @mul_m4_m4m4(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %6)
  call void @mul_m4_m4m4(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @pseudoinverse_m3_m3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) local_unnamed_addr #12 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = tail call zeroext i8 @invert_m3_m3(ptr noundef %0, ptr noundef %1), !range !64
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %63

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #20
  %9 = load float, ptr %1, align 4, !tbaa !34
  store float %9, ptr %4, align 16, !tbaa !34
  %10 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  store float %11, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  store float %14, ptr %15, align 8, !tbaa !34
  %16 = getelementptr inbounds [3 x float], ptr %1, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds [4 x float], ptr %4, i64 1
  store float %17, ptr %18, align 16, !tbaa !34
  %19 = getelementptr inbounds [3 x float], ptr %1, i64 1, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = getelementptr inbounds [4 x float], ptr %4, i64 1, i64 1
  store float %20, ptr %21, align 4, !tbaa !34
  %22 = getelementptr inbounds [3 x float], ptr %1, i64 1, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds [4 x float], ptr %4, i64 1, i64 2
  store float %23, ptr %24, align 8, !tbaa !34
  %25 = getelementptr inbounds [3 x float], ptr %1, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = getelementptr inbounds [4 x float], ptr %4, i64 2
  store float %26, ptr %27, align 16, !tbaa !34
  %28 = getelementptr inbounds [3 x float], ptr %1, i64 2, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = getelementptr inbounds [4 x float], ptr %4, i64 2, i64 1
  store float %29, ptr %30, align 4, !tbaa !34
  %31 = getelementptr inbounds [3 x float], ptr %1, i64 2, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = getelementptr inbounds [4 x float], ptr %4, i64 2, i64 2
  store float %32, ptr %33, align 8, !tbaa !34
  %34 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  store float 0.000000e+00, ptr %34, align 4, !tbaa !34
  %35 = getelementptr inbounds [4 x float], ptr %4, i64 1, i64 3
  store float 0.000000e+00, ptr %35, align 4, !tbaa !34
  %36 = getelementptr inbounds [4 x float], ptr %4, i64 2, i64 3
  %37 = getelementptr inbounds [4 x float], ptr %4, i64 3, i64 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %36, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %37, align 4, !tbaa !34
  call void @pseudoinverse_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %4, float noundef %2)
  %38 = load float, ptr %5, align 16, !tbaa !34
  store float %38, ptr %0, align 4, !tbaa !34
  %39 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float %40, ptr %41, align 4, !tbaa !34
  %42 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  %43 = load float, ptr %42, align 8, !tbaa !34
  %44 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %43, ptr %44, align 4, !tbaa !34
  %45 = getelementptr inbounds [4 x float], ptr %5, i64 1
  %46 = load float, ptr %45, align 16, !tbaa !34
  %47 = getelementptr inbounds [3 x float], ptr %0, i64 1
  store float %46, ptr %47, align 4, !tbaa !34
  %48 = getelementptr inbounds [4 x float], ptr %5, i64 1, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !34
  %50 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %49, ptr %50, align 4, !tbaa !34
  %51 = getelementptr inbounds [4 x float], ptr %5, i64 1, i64 2
  %52 = load float, ptr %51, align 8, !tbaa !34
  %53 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float %52, ptr %53, align 4, !tbaa !34
  %54 = getelementptr inbounds [4 x float], ptr %5, i64 2
  %55 = load float, ptr %54, align 16, !tbaa !34
  %56 = getelementptr inbounds [3 x float], ptr %0, i64 2
  store float %55, ptr %56, align 4, !tbaa !34
  %57 = getelementptr inbounds [4 x float], ptr %5, i64 2, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !34
  %59 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float %58, ptr %59, align 4, !tbaa !34
  %60 = getelementptr inbounds [4 x float], ptr %5, i64 2, i64 2
  %61 = load float, ptr %60, align 8, !tbaa !34
  %62 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %61, ptr %62, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #20
  br label %63

63:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @has_zero_axis_m4(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = load float, ptr %0, align 4, !tbaa !34
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %6)
  %10 = fcmp olt float %9, 0x3E80000000000000
  br i1 %10, label %34, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fmul float %15, %15
  %17 = tail call float @llvm.fmuladd.f32(float %13, float %13, float %16)
  %18 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %19, float %17)
  %21 = fcmp olt float %20, 0x3E80000000000000
  br i1 %21, label %34, label %22

22:                                               ; preds = %11
  %23 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = fmul float %26, %26
  %28 = tail call float @llvm.fmuladd.f32(float %24, float %24, float %27)
  %29 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = tail call float @llvm.fmuladd.f32(float %30, float %30, float %28)
  %32 = fcmp olt float %31, 0x3E80000000000000
  %33 = zext i1 %32 to i8
  br label %34

34:                                               ; preds = %22, %11, %1
  %35 = phi i8 [ 1, %11 ], [ 1, %1 ], [ %33, %22 ]
  ret i8 %35
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @invert_m4_m4_safe(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = tail call zeroext i8 @invert_m4_m4(ptr noundef %0, ptr noundef %1), !range !64
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 64, i1 false)
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
  %15 = call zeroext i8 @invert_m4_m4(ptr noundef %0, ptr noundef nonnull %3), !range !64
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %6
  %18 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 3
  store float 1.000000e+00, ptr %18, align 4, !tbaa !34
  %19 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  store float 1.000000e+00, ptr %19, align 4, !tbaa !34
  %20 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  store float 1.000000e+00, ptr %20, align 4, !tbaa !34
  store float 1.000000e+00, ptr %0, align 4, !tbaa !34
  %21 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  %22 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  %23 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  br label %24

24:                                               ; preds = %17, %6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #20
  br label %25

25:                                               ; preds = %24, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @BLI_space_transform_from_matrices(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  %4 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #20
  %5 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef %2), !range !64
  call void @mul_m4_m4m4(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %1)
  %6 = getelementptr inbounds %struct.SpaceTransform, ptr %0, i64 0, i32 1
  %7 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %6, ptr noundef %0), !range !64
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_space_transform_apply(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_space_transform_invert(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.SpaceTransform, ptr %0, i64 0, i32 1
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = load float, ptr %3, align 4, !tbaa !34
  %8 = getelementptr inbounds %struct.SpaceTransform, ptr %0, i64 0, i32 1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fmul float %6, %9
  %11 = tail call float @llvm.fmuladd.f32(float %4, float %7, float %10)
  %12 = getelementptr inbounds %struct.SpaceTransform, ptr %0, i64 0, i32 1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %15, float %11)
  %17 = getelementptr inbounds %struct.SpaceTransform, ptr %0, i64 0, i32 1, i64 3
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fadd float %16, %18
  store float %19, ptr %1, align 4, !tbaa !34
  %20 = getelementptr inbounds %struct.SpaceTransform, ptr %0, i64 0, i32 1, i64 0, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = getelementptr inbounds %struct.SpaceTransform, ptr %0, i64 0, i32 1, i64 1, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = fmul float %6, %23
  %25 = tail call float @llvm.fmuladd.f32(float %4, float %21, float %24)
  %26 = getelementptr inbounds %struct.SpaceTransform, ptr %0, i64 0, i32 1, i64 2, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = tail call float @llvm.fmuladd.f32(float %27, float %15, float %25)
  %29 = getelementptr inbounds %struct.SpaceTransform, ptr %0, i64 0, i32 1, i64 3, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = fadd float %30, %28
  store float %31, ptr %5, align 4, !tbaa !34
  %32 = getelementptr inbounds %struct.SpaceTransform, ptr %0, i64 0, i32 1, i64 0, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = getelementptr inbounds %struct.SpaceTransform, ptr %0, i64 0, i32 1, i64 1, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = fmul float %6, %35
  %37 = tail call float @llvm.fmuladd.f32(float %4, float %33, float %36)
  %38 = getelementptr inbounds %struct.SpaceTransform, ptr %0, i64 0, i32 1, i64 2, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !34
  %40 = tail call float @llvm.fmuladd.f32(float %39, float %15, float %37)
  %41 = getelementptr inbounds %struct.SpaceTransform, ptr %0, i64 0, i32 1, i64 3, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !34
  %43 = fadd float %42, %40
  store float %43, ptr %14, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @BLI_space_transform_apply_normal(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #8 {
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
  %34 = fmul float %24, %24
  %35 = tail call float @llvm.fmuladd.f32(float %15, float %15, float %34)
  %36 = tail call float @llvm.fmuladd.f32(float %33, float %33, float %35)
  %37 = fcmp ogt float %36, 0x38AA95A5C0000000
  br i1 %37, label %38, label %47

38:                                               ; preds = %2
  %39 = tail call float @sqrtf(float noundef %36) #20
  %40 = fdiv float 1.000000e+00, %39
  %41 = load float, ptr %1, align 4, !tbaa !34
  %42 = fmul float %41, %40
  store float %42, ptr %1, align 4, !tbaa !34
  %43 = load float, ptr %4, align 4, !tbaa !34
  %44 = fmul float %40, %43
  store float %44, ptr %4, align 4, !tbaa !34
  %45 = load float, ptr %13, align 4, !tbaa !34
  %46 = fmul float %40, %45
  br label %48

47:                                               ; preds = %2
  store float 0.000000e+00, ptr %1, align 4, !tbaa !34
  store float 0.000000e+00, ptr %4, align 4, !tbaa !34
  br label %48

48:                                               ; preds = %38, %47
  %49 = phi float [ 0.000000e+00, %47 ], [ %46, %38 ]
  store float %49, ptr %13, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @BLI_space_transform_invert_normal(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.SpaceTransform, ptr %0, i64 0, i32 1
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = load float, ptr %3, align 4, !tbaa !34
  %8 = getelementptr inbounds %struct.SpaceTransform, ptr %0, i64 0, i32 1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fmul float %6, %9
  %11 = tail call float @llvm.fmuladd.f32(float %4, float %7, float %10)
  %12 = getelementptr inbounds %struct.SpaceTransform, ptr %0, i64 0, i32 1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %15, float %11)
  store float %16, ptr %1, align 4, !tbaa !34
  %17 = getelementptr inbounds %struct.SpaceTransform, ptr %0, i64 0, i32 1, i64 0, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds %struct.SpaceTransform, ptr %0, i64 0, i32 1, i64 1, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fmul float %6, %20
  %22 = tail call float @llvm.fmuladd.f32(float %4, float %18, float %21)
  %23 = getelementptr inbounds %struct.SpaceTransform, ptr %0, i64 0, i32 1, i64 2, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = tail call float @llvm.fmuladd.f32(float %24, float %15, float %22)
  store float %25, ptr %5, align 4, !tbaa !34
  %26 = getelementptr inbounds %struct.SpaceTransform, ptr %0, i64 0, i32 1, i64 0, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = getelementptr inbounds %struct.SpaceTransform, ptr %0, i64 0, i32 1, i64 1, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = fmul float %6, %29
  %31 = tail call float @llvm.fmuladd.f32(float %4, float %27, float %30)
  %32 = getelementptr inbounds %struct.SpaceTransform, ptr %0, i64 0, i32 1, i64 2, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = tail call float @llvm.fmuladd.f32(float %33, float %15, float %31)
  store float %34, ptr %14, align 4, !tbaa !34
  %35 = fmul float %25, %25
  %36 = tail call float @llvm.fmuladd.f32(float %16, float %16, float %35)
  %37 = tail call float @llvm.fmuladd.f32(float %34, float %34, float %36)
  %38 = fcmp ogt float %37, 0x38AA95A5C0000000
  br i1 %38, label %39, label %48

39:                                               ; preds = %2
  %40 = tail call float @sqrtf(float noundef %37) #20
  %41 = fdiv float 1.000000e+00, %40
  %42 = load float, ptr %1, align 4, !tbaa !34
  %43 = fmul float %42, %41
  store float %43, ptr %1, align 4, !tbaa !34
  %44 = load float, ptr %5, align 4, !tbaa !34
  %45 = fmul float %41, %44
  store float %45, ptr %5, align 4, !tbaa !34
  %46 = load float, ptr %14, align 4, !tbaa !34
  %47 = fmul float %41, %46
  br label %49

48:                                               ; preds = %2
  store float 0.000000e+00, ptr %1, align 4, !tbaa !34
  store float 0.000000e+00, ptr %5, align 4, !tbaa !34
  br label %49

49:                                               ; preds = %39, %48
  %50 = phi float [ 0.000000e+00, %48 ], [ %47, %39 ]
  store float %50, ptr %14, align 4, !tbaa !34
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #19

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind }
attributes #20 = { nounwind }

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
!38 = !{!39, !39, i64 0}
!39 = !{!"double", !36, i64 0}
!40 = distinct !{!40, !41, !42}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = distinct !{!43, !41, !42}
!44 = distinct !{!44, !41, !42}
!45 = distinct !{!45, !41, !42}
!46 = distinct !{!46, !41, !42}
!47 = distinct !{!47, !41, !42}
!48 = distinct !{!48, !41, !42}
!49 = distinct !{!49, !41, !42}
!50 = distinct !{!50, !41, !42}
!51 = distinct !{!51, !41, !42}
!52 = distinct !{!52, !41, !42}
!53 = distinct !{!53, !41, !42}
!54 = distinct !{!54, !41, !42}
!55 = distinct !{!55, !41, !42}
!56 = distinct !{!56, !41, !42}
!57 = distinct !{!57, !41, !42}
!58 = distinct !{!58, !41, !42}
!59 = distinct !{!59, !41, !42}
!60 = distinct !{!60, !41, !42}
!61 = distinct !{!61, !41, !42}
!62 = distinct !{!62, !41, !42}
!63 = distinct !{!63, !41, !42}
!64 = !{i8 0, i8 2}
!65 = distinct !{!65, !41, !42}
!66 = distinct !{!66, !41, !42}
!67 = distinct !{!67, !41, !42}
!68 = distinct !{!68, !41, !42}
!69 = distinct !{!69, !41, !42}
!70 = distinct !{!70, !41, !42}
!71 = distinct !{!71, !41, !42}
!72 = distinct !{!72, !41, !42}
!73 = distinct !{!73, !41, !42}
!74 = distinct !{!74, !41, !42}
!75 = distinct !{!75, !41, !42}
!76 = distinct !{!76, !41, !42}
!77 = distinct !{!77, !41, !42}
!78 = distinct !{!78, !41, !42}
!79 = distinct !{!79, !41, !42}
!80 = distinct !{!80, !41, !42}
!81 = distinct !{!81, !41, !42}
!82 = distinct !{!82, !41, !42}
!83 = distinct !{!83, !41, !42}
!84 = distinct !{!84, !41, !42}
!85 = distinct !{!85, !41, !42}
!86 = distinct !{!86, !41, !42}
!87 = distinct !{!87, !41, !42}
!88 = distinct !{!88, !41, !42}
!89 = distinct !{!89, !41, !42}
!90 = distinct !{!90, !41, !42}
!91 = distinct !{!91, !41, !42}
!92 = distinct !{!92, !41, !42}
!93 = distinct !{!93, !41, !42}
!94 = distinct !{!94, !41, !42}
!95 = distinct !{!95, !41, !42}
!96 = distinct !{!96, !41, !42}
!97 = distinct !{!97, !41, !42}
!98 = distinct !{!98, !41, !42}
!99 = distinct !{!99, !41, !42}
!100 = distinct !{!100, !41, !42}
!101 = distinct !{!101, !41, !42}
!102 = distinct !{!102, !41, !42}
!103 = distinct !{!103, !41, !42}
!104 = distinct !{!104, !41, !42}
!105 = distinct !{!105, !41, !42}
!106 = distinct !{!106, !41, !42}
!107 = distinct !{!107, !41, !42}
!108 = distinct !{!108, !41, !42}
!109 = distinct !{!109, !41, !42}
!110 = distinct !{!110, !41, !42}
!111 = distinct !{!111, !41, !42}
!112 = distinct !{!112, !41, !42}
!113 = distinct !{!113, !41, !42}
!114 = distinct !{!114, !41, !42}
!115 = distinct !{!115, !41, !42}
!116 = distinct !{!116, !41, !42}
!117 = distinct !{!117, !41, !42}
!118 = distinct !{!118, !41, !42}
!119 = distinct !{!119, !41, !42}
!120 = distinct !{!120, !41, !42}
!121 = distinct !{!121, !41, !42}
!122 = distinct !{!122, !41, !42}
!123 = distinct !{!123, !41, !42}
!124 = distinct !{!124, !41, !42}
!125 = distinct !{!125, !41, !42}
!126 = distinct !{!126, !41, !42}
