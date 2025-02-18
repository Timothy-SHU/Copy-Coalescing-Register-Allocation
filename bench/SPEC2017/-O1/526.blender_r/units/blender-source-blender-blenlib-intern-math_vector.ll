; ModuleID = 'blender/source/blender/blenlib/intern/math_vector.c'
source_filename = "blender/source/blender/blenlib/intern/math_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"%s: %.8f %.8f\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%s: %.8f %.8f %.8f\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%s: %.8f %.8f %.8f %.8f\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s[%d]:\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" %.8f\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @interp_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fsub float 1.000000e+00, %3
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = load float, ptr %2, align 4, !tbaa !34
  %8 = fmul float %7, %3
  %9 = tail call float @llvm.fmuladd.f32(float %5, float %6, float %8)
  store float %9, ptr %0, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %2, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fmul float %13, %3
  %15 = tail call float @llvm.fmuladd.f32(float %5, float %11, float %14)
  %16 = getelementptr inbounds float, ptr %0, i64 1
  store float %15, ptr %16, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @interp_v2_v2v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = load float, ptr %4, align 4, !tbaa !34
  %8 = load float, ptr %2, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %4, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fmul float %8, %10
  %12 = tail call float @llvm.fmuladd.f32(float %6, float %7, float %11)
  %13 = load float, ptr %3, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %4, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %15, float %12)
  store float %16, ptr %0, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %1, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = load float, ptr %4, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %2, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = load float, ptr %9, align 4, !tbaa !34
  %23 = fmul float %21, %22
  %24 = tail call float @llvm.fmuladd.f32(float %18, float %19, float %23)
  %25 = getelementptr inbounds float, ptr %3, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = load float, ptr %14, align 4, !tbaa !34
  %28 = tail call float @llvm.fmuladd.f32(float %26, float %27, float %24)
  %29 = getelementptr inbounds float, ptr %0, i64 1
  store float %28, ptr %29, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @interp_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fsub float 1.000000e+00, %3
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = load float, ptr %2, align 4, !tbaa !34
  %8 = fmul float %7, %3
  %9 = tail call float @llvm.fmuladd.f32(float %5, float %6, float %8)
  store float %9, ptr %0, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %2, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fmul float %13, %3
  %15 = tail call float @llvm.fmuladd.f32(float %5, float %11, float %14)
  %16 = getelementptr inbounds float, ptr %0, i64 1
  store float %15, ptr %16, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %1, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %2, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fmul float %20, %3
  %22 = tail call float @llvm.fmuladd.f32(float %5, float %18, float %21)
  %23 = getelementptr inbounds float, ptr %0, i64 2
  store float %22, ptr %23, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @interp_v4_v4v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fsub float 1.000000e+00, %3
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = load float, ptr %2, align 4, !tbaa !34
  %8 = fmul float %7, %3
  %9 = tail call float @llvm.fmuladd.f32(float %5, float %6, float %8)
  store float %9, ptr %0, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %2, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fmul float %13, %3
  %15 = tail call float @llvm.fmuladd.f32(float %5, float %11, float %14)
  %16 = getelementptr inbounds float, ptr %0, i64 1
  store float %15, ptr %16, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %1, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %2, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fmul float %20, %3
  %22 = tail call float @llvm.fmuladd.f32(float %5, float %18, float %21)
  %23 = getelementptr inbounds float, ptr %0, i64 2
  store float %22, ptr %23, align 4, !tbaa !34
  %24 = getelementptr inbounds float, ptr %1, i64 3
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = getelementptr inbounds float, ptr %2, i64 3
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = fmul float %27, %3
  %29 = tail call float @llvm.fmuladd.f32(float %5, float %25, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 3
  store float %29, ptr %30, align 4, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @interp_v3_v3v3_slerp(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #3 {
  %5 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = load float, ptr %2, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fmul float %9, %11
  %13 = tail call float @llvm.fmuladd.f32(float %6, float %7, float %12)
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = tail call float @llvm.fmuladd.f32(float %15, float %17, float %13)
  %19 = fcmp olt float %18, 0xBFEFFFFFC0000000
  br i1 %19, label %38, label %20

20:                                               ; preds = %4
  call void @interp_dot_slerp(float noundef %3, float noundef %18, ptr noundef nonnull %5) #15
  %21 = load float, ptr %5, align 4, !tbaa !34
  %22 = load float, ptr %1, align 4, !tbaa !34
  %23 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = load float, ptr %2, align 4, !tbaa !34
  %26 = fmul float %24, %25
  %27 = call float @llvm.fmuladd.f32(float %21, float %22, float %26)
  store float %27, ptr %0, align 4, !tbaa !34
  %28 = load float, ptr %8, align 4, !tbaa !34
  %29 = load float, ptr %10, align 4, !tbaa !34
  %30 = fmul float %24, %29
  %31 = call float @llvm.fmuladd.f32(float %21, float %28, float %30)
  %32 = getelementptr inbounds float, ptr %0, i64 1
  store float %31, ptr %32, align 4, !tbaa !34
  %33 = load float, ptr %14, align 4, !tbaa !34
  %34 = load float, ptr %16, align 4, !tbaa !34
  %35 = fmul float %24, %34
  %36 = call float @llvm.fmuladd.f32(float %21, float %33, float %35)
  %37 = getelementptr inbounds float, ptr %0, i64 2
  store float %36, ptr %37, align 4, !tbaa !34
  br label %38

38:                                               ; preds = %4, %20
  %39 = phi i8 [ 1, %20 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  ret i8 %39
}

declare void @interp_dot_slerp(float noundef, float noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @interp_v2_v2v2_slerp(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #3 {
  %5 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = load float, ptr %2, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fmul float %9, %11
  %13 = tail call float @llvm.fmuladd.f32(float %6, float %7, float %12)
  %14 = fcmp olt float %13, 0x3FF0000020000000
  br i1 %14, label %28, label %15

15:                                               ; preds = %4
  call void @interp_dot_slerp(float noundef %3, float noundef %13, ptr noundef nonnull %5) #15
  %16 = load float, ptr %5, align 4, !tbaa !34
  %17 = load float, ptr %1, align 4, !tbaa !34
  %18 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = load float, ptr %2, align 4, !tbaa !34
  %21 = fmul float %19, %20
  %22 = call float @llvm.fmuladd.f32(float %16, float %17, float %21)
  store float %22, ptr %0, align 4, !tbaa !34
  %23 = load float, ptr %8, align 4, !tbaa !34
  %24 = load float, ptr %10, align 4, !tbaa !34
  %25 = fmul float %19, %24
  %26 = call float @llvm.fmuladd.f32(float %16, float %23, float %25)
  %27 = getelementptr inbounds float, ptr %0, i64 1
  store float %26, ptr %27, align 4, !tbaa !34
  br label %28

28:                                               ; preds = %4, %15
  %29 = phi i8 [ 1, %15 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  ret i8 %29
}

; Function Attrs: nounwind uwtable
define dso_local void @interp_v3_v3v3_slerp_safe(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #3 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  %8 = load float, ptr %1, align 4, !tbaa !34
  %9 = load float, ptr %2, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %2, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fmul float %11, %13
  %15 = tail call float @llvm.fmuladd.f32(float %8, float %9, float %14)
  %16 = getelementptr inbounds float, ptr %1, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %2, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = tail call float @llvm.fmuladd.f32(float %17, float %19, float %15)
  %21 = fcmp olt float %20, 0xBFEFFFFFC0000000
  br i1 %21, label %40, label %22

22:                                               ; preds = %4
  call void @interp_dot_slerp(float noundef %3, float noundef %20, ptr noundef nonnull %7) #15
  %23 = load float, ptr %7, align 4, !tbaa !34
  %24 = load float, ptr %1, align 4, !tbaa !34
  %25 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = load float, ptr %2, align 4, !tbaa !34
  %28 = fmul float %26, %27
  %29 = call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  store float %29, ptr %0, align 4, !tbaa !34
  %30 = load float, ptr %10, align 4, !tbaa !34
  %31 = load float, ptr %12, align 4, !tbaa !34
  %32 = fmul float %26, %31
  %33 = call float @llvm.fmuladd.f32(float %23, float %30, float %32)
  %34 = getelementptr inbounds float, ptr %0, i64 1
  store float %33, ptr %34, align 4, !tbaa !34
  %35 = load float, ptr %16, align 4, !tbaa !34
  %36 = load float, ptr %18, align 4, !tbaa !34
  %37 = fmul float %26, %36
  %38 = call float @llvm.fmuladd.f32(float %23, float %35, float %37)
  %39 = getelementptr inbounds float, ptr %0, i64 2
  store float %38, ptr %39, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  br label %143

40:                                               ; preds = %4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  %41 = load float, ptr %1, align 4, !tbaa !34
  %42 = tail call float @llvm.fabs.f32(float %41)
  %43 = load float, ptr %10, align 4, !tbaa !34
  %44 = tail call float @llvm.fabs.f32(float %43)
  %45 = load float, ptr %16, align 4, !tbaa !34
  %46 = tail call float @llvm.fabs.f32(float %45)
  %47 = fcmp ogt float %42, %44
  %48 = fcmp ogt float %42, %46
  %49 = select i1 %48, i32 0, i32 2
  %50 = fcmp ogt float %44, %46
  %51 = select i1 %50, i32 1, i32 2
  %52 = select i1 %47, i32 %49, i32 %51
  switch i32 %52, label %62 [
    i32 0, label %53
    i32 1, label %56
    i32 2, label %59
  ]

53:                                               ; preds = %40
  %54 = fneg float %43
  %55 = fsub float %54, %45
  br label %63

56:                                               ; preds = %40
  %57 = fneg float %41
  %58 = fsub float %57, %45
  br label %63

59:                                               ; preds = %40
  %60 = fneg float %41
  %61 = fsub float %60, %43
  br label %63

62:                                               ; preds = %40
  unreachable

63:                                               ; preds = %53, %56, %59
  %64 = phi float [ %61, %59 ], [ %43, %56 ], [ %41, %53 ]
  %65 = phi float [ %45, %59 ], [ %58, %56 ], [ %41, %53 ]
  %66 = phi float [ %45, %59 ], [ %43, %56 ], [ %55, %53 ]
  %67 = fmul float %65, %65
  %68 = tail call float @llvm.fmuladd.f32(float %66, float %66, float %67)
  %69 = tail call float @llvm.fmuladd.f32(float %64, float %64, float %68)
  %70 = fcmp ogt float %69, 0x38AA95A5C0000000
  br i1 %70, label %71, label %77

71:                                               ; preds = %63
  %72 = tail call float @sqrtf(float noundef %69) #15
  %73 = fdiv float 1.000000e+00, %72
  %74 = fmul float %66, %73
  %75 = fmul float %65, %73
  %76 = fmul float %64, %73
  br label %77

77:                                               ; preds = %63, %71
  %78 = phi float [ %75, %71 ], [ 0.000000e+00, %63 ]
  %79 = phi float [ %74, %71 ], [ 0.000000e+00, %63 ]
  %80 = phi float [ %76, %71 ], [ 0.000000e+00, %63 ]
  %81 = fcmp olt float %3, 5.000000e-01
  br i1 %81, label %82, label %112

82:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  %83 = load float, ptr %1, align 4, !tbaa !34
  %84 = load float, ptr %10, align 4, !tbaa !34
  %85 = fmul float %78, %84
  %86 = tail call float @llvm.fmuladd.f32(float %83, float %79, float %85)
  %87 = load float, ptr %16, align 4, !tbaa !34
  %88 = tail call float @llvm.fmuladd.f32(float %87, float %80, float %86)
  %89 = fcmp olt float %88, 0xBFEFFFFFC0000000
  br i1 %89, label %106, label %90

90:                                               ; preds = %82
  %91 = fmul float %3, 2.000000e+00
  call void @interp_dot_slerp(float noundef %91, float noundef %88, ptr noundef nonnull %6) #15
  %92 = load float, ptr %6, align 4, !tbaa !34
  %93 = load float, ptr %1, align 4, !tbaa !34
  %94 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %95 = load float, ptr %94, align 4, !tbaa !34
  %96 = fmul float %79, %95
  %97 = call float @llvm.fmuladd.f32(float %92, float %93, float %96)
  store float %97, ptr %0, align 4, !tbaa !34
  %98 = load float, ptr %10, align 4, !tbaa !34
  %99 = fmul float %78, %95
  %100 = call float @llvm.fmuladd.f32(float %92, float %98, float %99)
  %101 = getelementptr inbounds float, ptr %0, i64 1
  store float %100, ptr %101, align 4, !tbaa !34
  %102 = load float, ptr %16, align 4, !tbaa !34
  %103 = fmul float %80, %95
  %104 = call float @llvm.fmuladd.f32(float %92, float %102, float %103)
  %105 = getelementptr inbounds float, ptr %0, i64 2
  store float %104, ptr %105, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  br label %143

106:                                              ; preds = %82
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  %107 = load float, ptr %1, align 4, !tbaa !34
  store float %107, ptr %0, align 4, !tbaa !34
  %108 = load float, ptr %10, align 4, !tbaa !34
  %109 = getelementptr inbounds float, ptr %0, i64 1
  store float %108, ptr %109, align 4, !tbaa !34
  %110 = load float, ptr %16, align 4, !tbaa !34
  %111 = getelementptr inbounds float, ptr %0, i64 2
  store float %110, ptr %111, align 4, !tbaa !34
  br label %143

112:                                              ; preds = %77
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %113 = load float, ptr %2, align 4, !tbaa !34
  %114 = load float, ptr %12, align 4, !tbaa !34
  %115 = fmul float %78, %114
  %116 = tail call float @llvm.fmuladd.f32(float %79, float %113, float %115)
  %117 = load float, ptr %18, align 4, !tbaa !34
  %118 = tail call float @llvm.fmuladd.f32(float %80, float %117, float %116)
  %119 = fcmp olt float %118, 0xBFEFFFFFC0000000
  br i1 %119, label %137, label %120

120:                                              ; preds = %112
  %121 = fadd float %3, -5.000000e-01
  %122 = fmul float %121, 2.000000e+00
  call void @interp_dot_slerp(float noundef %122, float noundef %118, ptr noundef nonnull %5) #15
  %123 = load float, ptr %5, align 4, !tbaa !34
  %124 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %125 = load float, ptr %124, align 4, !tbaa !34
  %126 = load float, ptr %2, align 4, !tbaa !34
  %127 = fmul float %125, %126
  %128 = call float @llvm.fmuladd.f32(float %123, float %79, float %127)
  store float %128, ptr %0, align 4, !tbaa !34
  %129 = load float, ptr %12, align 4, !tbaa !34
  %130 = fmul float %125, %129
  %131 = call float @llvm.fmuladd.f32(float %123, float %78, float %130)
  %132 = getelementptr inbounds float, ptr %0, i64 1
  store float %131, ptr %132, align 4, !tbaa !34
  %133 = load float, ptr %18, align 4, !tbaa !34
  %134 = fmul float %125, %133
  %135 = call float @llvm.fmuladd.f32(float %123, float %80, float %134)
  %136 = getelementptr inbounds float, ptr %0, i64 2
  store float %135, ptr %136, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  br label %143

137:                                              ; preds = %112
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  %138 = load float, ptr %2, align 4, !tbaa !34
  store float %138, ptr %0, align 4, !tbaa !34
  %139 = load float, ptr %12, align 4, !tbaa !34
  %140 = getelementptr inbounds float, ptr %0, i64 1
  store float %139, ptr %140, align 4, !tbaa !34
  %141 = load float, ptr %18, align 4, !tbaa !34
  %142 = getelementptr inbounds float, ptr %0, i64 2
  store float %141, ptr %142, align 4, !tbaa !34
  br label %143

143:                                              ; preds = %120, %90, %22, %106, %137
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ortho_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = tail call float @llvm.fabs.f32(float %3)
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = tail call float @llvm.fabs.f32(float %6)
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = tail call float @llvm.fabs.f32(float %9)
  %11 = fcmp ogt float %4, %7
  %12 = fcmp ogt float %4, %10
  %13 = select i1 %12, i32 0, i32 2
  %14 = fcmp ogt float %7, %10
  %15 = select i1 %14, i32 1, i32 2
  %16 = select i1 %11, i32 %13, i32 %15
  switch i32 %16, label %37 [
    i32 0, label %17
    i32 1, label %23
    i32 2, label %30
  ]

17:                                               ; preds = %2
  %18 = fneg float %6
  %19 = fsub float %18, %9
  store float %19, ptr %0, align 4, !tbaa !34
  %20 = load float, ptr %1, align 4, !tbaa !34
  %21 = getelementptr inbounds float, ptr %0, i64 1
  store float %20, ptr %21, align 4, !tbaa !34
  %22 = load float, ptr %1, align 4, !tbaa !34
  br label %38

23:                                               ; preds = %2
  store float %6, ptr %0, align 4, !tbaa !34
  %24 = load float, ptr %1, align 4, !tbaa !34
  %25 = fneg float %24
  %26 = load float, ptr %8, align 4, !tbaa !34
  %27 = fsub float %25, %26
  %28 = getelementptr inbounds float, ptr %0, i64 1
  store float %27, ptr %28, align 4, !tbaa !34
  %29 = load float, ptr %5, align 4, !tbaa !34
  br label %38

30:                                               ; preds = %2
  store float %9, ptr %0, align 4, !tbaa !34
  %31 = load float, ptr %8, align 4, !tbaa !34
  %32 = getelementptr inbounds float, ptr %0, i64 1
  store float %31, ptr %32, align 4, !tbaa !34
  %33 = load float, ptr %1, align 4, !tbaa !34
  %34 = fneg float %33
  %35 = load float, ptr %5, align 4, !tbaa !34
  %36 = fsub float %34, %35
  br label %38

37:                                               ; preds = %2
  unreachable

38:                                               ; preds = %30, %23, %17
  %39 = phi float [ %36, %30 ], [ %29, %23 ], [ %22, %17 ]
  %40 = getelementptr inbounds float, ptr %0, i64 2
  store float %39, ptr %40, align 4, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interp_v2_v2v2_slerp_safe(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #3 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  %8 = load float, ptr %1, align 4, !tbaa !34
  %9 = load float, ptr %2, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %2, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fmul float %11, %13
  %15 = tail call float @llvm.fmuladd.f32(float %8, float %9, float %14)
  %16 = fcmp olt float %15, 0x3FF0000020000000
  br i1 %16, label %30, label %17

17:                                               ; preds = %4
  call void @interp_dot_slerp(float noundef %3, float noundef %15, ptr noundef nonnull %7) #15
  %18 = load float, ptr %7, align 4, !tbaa !34
  %19 = load float, ptr %1, align 4, !tbaa !34
  %20 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = load float, ptr %2, align 4, !tbaa !34
  %23 = fmul float %21, %22
  %24 = call float @llvm.fmuladd.f32(float %18, float %19, float %23)
  store float %24, ptr %0, align 4, !tbaa !34
  %25 = load float, ptr %10, align 4, !tbaa !34
  %26 = load float, ptr %12, align 4, !tbaa !34
  %27 = fmul float %21, %26
  %28 = call float @llvm.fmuladd.f32(float %18, float %25, float %27)
  %29 = getelementptr inbounds float, ptr %0, i64 1
  store float %28, ptr %29, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  br label %78

30:                                               ; preds = %4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  %31 = load float, ptr %10, align 4, !tbaa !34
  %32 = fneg float %31
  %33 = load float, ptr %1, align 4, !tbaa !34
  %34 = fcmp olt float %3, 5.000000e-01
  br i1 %34, label %35, label %55

35:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  %36 = fmul float %31, %33
  %37 = tail call float @llvm.fmuladd.f32(float %33, float %32, float %36)
  %38 = fcmp olt float %37, 0x3FF0000020000000
  br i1 %38, label %51, label %39

39:                                               ; preds = %35
  %40 = fmul float %3, 2.000000e+00
  call void @interp_dot_slerp(float noundef %40, float noundef %37, ptr noundef nonnull %6) #15
  %41 = load float, ptr %6, align 4, !tbaa !34
  %42 = load float, ptr %1, align 4, !tbaa !34
  %43 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !34
  %45 = fmul float %44, %32
  %46 = call float @llvm.fmuladd.f32(float %41, float %42, float %45)
  store float %46, ptr %0, align 4, !tbaa !34
  %47 = load float, ptr %10, align 4, !tbaa !34
  %48 = fmul float %33, %44
  %49 = call float @llvm.fmuladd.f32(float %41, float %47, float %48)
  %50 = getelementptr inbounds float, ptr %0, i64 1
  store float %49, ptr %50, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  br label %78

51:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  %52 = load float, ptr %1, align 4, !tbaa !34
  store float %52, ptr %0, align 4, !tbaa !34
  %53 = load float, ptr %10, align 4, !tbaa !34
  %54 = getelementptr inbounds float, ptr %0, i64 1
  store float %53, ptr %54, align 4, !tbaa !34
  br label %78

55:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %56 = load float, ptr %2, align 4, !tbaa !34
  %57 = load float, ptr %12, align 4, !tbaa !34
  %58 = fmul float %33, %57
  %59 = tail call float @llvm.fmuladd.f32(float %32, float %56, float %58)
  %60 = fcmp olt float %59, 0x3FF0000020000000
  br i1 %60, label %74, label %61

61:                                               ; preds = %55
  %62 = fadd float %3, -5.000000e-01
  %63 = fmul float %62, 2.000000e+00
  call void @interp_dot_slerp(float noundef %63, float noundef %59, ptr noundef nonnull %5) #15
  %64 = load float, ptr %5, align 4, !tbaa !34
  %65 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !34
  %67 = load float, ptr %2, align 4, !tbaa !34
  %68 = fmul float %66, %67
  %69 = call float @llvm.fmuladd.f32(float %64, float %32, float %68)
  store float %69, ptr %0, align 4, !tbaa !34
  %70 = load float, ptr %12, align 4, !tbaa !34
  %71 = fmul float %66, %70
  %72 = call float @llvm.fmuladd.f32(float %64, float %33, float %71)
  %73 = getelementptr inbounds float, ptr %0, i64 1
  store float %72, ptr %73, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  br label %78

74:                                               ; preds = %55
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  %75 = load float, ptr %2, align 4, !tbaa !34
  store float %75, ptr %0, align 4, !tbaa !34
  %76 = load float, ptr %12, align 4, !tbaa !34
  %77 = getelementptr inbounds float, ptr %0, i64 1
  store float %76, ptr %77, align 4, !tbaa !34
  br label %78

78:                                               ; preds = %61, %39, %17, %51, %74
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ortho_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds float, ptr %1, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = fneg float %4
  store float %5, ptr %0, align 4, !tbaa !34
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %0, i64 1
  store float %6, ptr %7, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @interp_v3_v3v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = load float, ptr %4, align 4, !tbaa !34
  %8 = load float, ptr %2, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %4, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fmul float %8, %10
  %12 = tail call float @llvm.fmuladd.f32(float %6, float %7, float %11)
  %13 = load float, ptr %3, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %4, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %15, float %12)
  store float %16, ptr %0, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %1, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = load float, ptr %4, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %2, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = load float, ptr %9, align 4, !tbaa !34
  %23 = fmul float %21, %22
  %24 = tail call float @llvm.fmuladd.f32(float %18, float %19, float %23)
  %25 = getelementptr inbounds float, ptr %3, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = load float, ptr %14, align 4, !tbaa !34
  %28 = tail call float @llvm.fmuladd.f32(float %26, float %27, float %24)
  %29 = getelementptr inbounds float, ptr %0, i64 1
  store float %28, ptr %29, align 4, !tbaa !34
  %30 = getelementptr inbounds float, ptr %1, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = load float, ptr %4, align 4, !tbaa !34
  %33 = getelementptr inbounds float, ptr %2, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = load float, ptr %9, align 4, !tbaa !34
  %36 = fmul float %34, %35
  %37 = tail call float @llvm.fmuladd.f32(float %31, float %32, float %36)
  %38 = getelementptr inbounds float, ptr %3, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !34
  %40 = load float, ptr %14, align 4, !tbaa !34
  %41 = tail call float @llvm.fmuladd.f32(float %39, float %40, float %37)
  %42 = getelementptr inbounds float, ptr %0, i64 2
  store float %41, ptr %42, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @interp_v3_v3v3v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = load float, ptr %1, align 4, !tbaa !34
  %8 = load float, ptr %5, align 4, !tbaa !34
  %9 = load float, ptr %2, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %5, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fmul float %9, %11
  %13 = tail call float @llvm.fmuladd.f32(float %7, float %8, float %12)
  %14 = load float, ptr %3, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %5, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = tail call float @llvm.fmuladd.f32(float %14, float %16, float %13)
  %18 = load float, ptr %4, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %5, i64 3
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = tail call float @llvm.fmuladd.f32(float %18, float %20, float %17)
  store float %21, ptr %0, align 4, !tbaa !34
  %22 = getelementptr inbounds float, ptr %1, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = load float, ptr %5, align 4, !tbaa !34
  %25 = getelementptr inbounds float, ptr %2, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = load float, ptr %10, align 4, !tbaa !34
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %3, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = load float, ptr %15, align 4, !tbaa !34
  %33 = tail call float @llvm.fmuladd.f32(float %31, float %32, float %29)
  %34 = getelementptr inbounds float, ptr %4, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = load float, ptr %19, align 4, !tbaa !34
  %37 = tail call float @llvm.fmuladd.f32(float %35, float %36, float %33)
  %38 = getelementptr inbounds float, ptr %0, i64 1
  store float %37, ptr %38, align 4, !tbaa !34
  %39 = getelementptr inbounds float, ptr %1, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = load float, ptr %5, align 4, !tbaa !34
  %42 = getelementptr inbounds float, ptr %2, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !34
  %44 = load float, ptr %10, align 4, !tbaa !34
  %45 = fmul float %43, %44
  %46 = tail call float @llvm.fmuladd.f32(float %40, float %41, float %45)
  %47 = getelementptr inbounds float, ptr %3, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !34
  %49 = load float, ptr %15, align 4, !tbaa !34
  %50 = tail call float @llvm.fmuladd.f32(float %48, float %49, float %46)
  %51 = getelementptr inbounds float, ptr %4, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !34
  %53 = load float, ptr %19, align 4, !tbaa !34
  %54 = tail call float @llvm.fmuladd.f32(float %52, float %53, float %50)
  %55 = getelementptr inbounds float, ptr %0, i64 2
  store float %54, ptr %55, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @interp_v4_v4v4v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = load float, ptr %4, align 4, !tbaa !34
  %8 = load float, ptr %2, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %4, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fmul float %8, %10
  %12 = tail call float @llvm.fmuladd.f32(float %6, float %7, float %11)
  %13 = load float, ptr %3, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %4, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %15, float %12)
  store float %16, ptr %0, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %1, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = load float, ptr %4, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %2, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = load float, ptr %9, align 4, !tbaa !34
  %23 = fmul float %21, %22
  %24 = tail call float @llvm.fmuladd.f32(float %18, float %19, float %23)
  %25 = getelementptr inbounds float, ptr %3, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = load float, ptr %14, align 4, !tbaa !34
  %28 = tail call float @llvm.fmuladd.f32(float %26, float %27, float %24)
  %29 = getelementptr inbounds float, ptr %0, i64 1
  store float %28, ptr %29, align 4, !tbaa !34
  %30 = getelementptr inbounds float, ptr %1, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = load float, ptr %4, align 4, !tbaa !34
  %33 = getelementptr inbounds float, ptr %2, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = load float, ptr %9, align 4, !tbaa !34
  %36 = fmul float %34, %35
  %37 = tail call float @llvm.fmuladd.f32(float %31, float %32, float %36)
  %38 = getelementptr inbounds float, ptr %3, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !34
  %40 = load float, ptr %14, align 4, !tbaa !34
  %41 = tail call float @llvm.fmuladd.f32(float %39, float %40, float %37)
  %42 = getelementptr inbounds float, ptr %0, i64 2
  store float %41, ptr %42, align 4, !tbaa !34
  %43 = getelementptr inbounds float, ptr %1, i64 3
  %44 = load float, ptr %43, align 4, !tbaa !34
  %45 = load float, ptr %4, align 4, !tbaa !34
  %46 = getelementptr inbounds float, ptr %2, i64 3
  %47 = load float, ptr %46, align 4, !tbaa !34
  %48 = load float, ptr %9, align 4, !tbaa !34
  %49 = fmul float %47, %48
  %50 = tail call float @llvm.fmuladd.f32(float %44, float %45, float %49)
  %51 = getelementptr inbounds float, ptr %3, i64 3
  %52 = load float, ptr %51, align 4, !tbaa !34
  %53 = load float, ptr %14, align 4, !tbaa !34
  %54 = tail call float @llvm.fmuladd.f32(float %52, float %53, float %50)
  %55 = getelementptr inbounds float, ptr %0, i64 3
  store float %54, ptr %55, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @interp_v4_v4v4v4v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = load float, ptr %1, align 4, !tbaa !34
  %8 = load float, ptr %5, align 4, !tbaa !34
  %9 = load float, ptr %2, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %5, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fmul float %9, %11
  %13 = tail call float @llvm.fmuladd.f32(float %7, float %8, float %12)
  %14 = load float, ptr %3, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %5, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = tail call float @llvm.fmuladd.f32(float %14, float %16, float %13)
  %18 = load float, ptr %4, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %5, i64 3
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = tail call float @llvm.fmuladd.f32(float %18, float %20, float %17)
  store float %21, ptr %0, align 4, !tbaa !34
  %22 = getelementptr inbounds float, ptr %1, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = load float, ptr %5, align 4, !tbaa !34
  %25 = getelementptr inbounds float, ptr %2, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = load float, ptr %10, align 4, !tbaa !34
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %3, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = load float, ptr %15, align 4, !tbaa !34
  %33 = tail call float @llvm.fmuladd.f32(float %31, float %32, float %29)
  %34 = getelementptr inbounds float, ptr %4, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = load float, ptr %19, align 4, !tbaa !34
  %37 = tail call float @llvm.fmuladd.f32(float %35, float %36, float %33)
  %38 = getelementptr inbounds float, ptr %0, i64 1
  store float %37, ptr %38, align 4, !tbaa !34
  %39 = getelementptr inbounds float, ptr %1, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = load float, ptr %5, align 4, !tbaa !34
  %42 = getelementptr inbounds float, ptr %2, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !34
  %44 = load float, ptr %10, align 4, !tbaa !34
  %45 = fmul float %43, %44
  %46 = tail call float @llvm.fmuladd.f32(float %40, float %41, float %45)
  %47 = getelementptr inbounds float, ptr %3, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !34
  %49 = load float, ptr %15, align 4, !tbaa !34
  %50 = tail call float @llvm.fmuladd.f32(float %48, float %49, float %46)
  %51 = getelementptr inbounds float, ptr %4, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !34
  %53 = load float, ptr %19, align 4, !tbaa !34
  %54 = tail call float @llvm.fmuladd.f32(float %52, float %53, float %50)
  %55 = getelementptr inbounds float, ptr %0, i64 2
  store float %54, ptr %55, align 4, !tbaa !34
  %56 = getelementptr inbounds float, ptr %1, i64 3
  %57 = load float, ptr %56, align 4, !tbaa !34
  %58 = load float, ptr %5, align 4, !tbaa !34
  %59 = getelementptr inbounds float, ptr %2, i64 3
  %60 = load float, ptr %59, align 4, !tbaa !34
  %61 = load float, ptr %10, align 4, !tbaa !34
  %62 = fmul float %60, %61
  %63 = tail call float @llvm.fmuladd.f32(float %57, float %58, float %62)
  %64 = getelementptr inbounds float, ptr %3, i64 3
  %65 = load float, ptr %64, align 4, !tbaa !34
  %66 = load float, ptr %15, align 4, !tbaa !34
  %67 = tail call float @llvm.fmuladd.f32(float %65, float %66, float %63)
  %68 = getelementptr inbounds float, ptr %4, i64 3
  %69 = load float, ptr %68, align 4, !tbaa !34
  %70 = load float, ptr %19, align 4, !tbaa !34
  %71 = tail call float @llvm.fmuladd.f32(float %69, float %70, float %67)
  %72 = getelementptr inbounds float, ptr %0, i64 3
  store float %71, ptr %72, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @interp_v3_v3v3v3_uv(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = load float, ptr %2, align 4, !tbaa !34
  %8 = fsub float %7, %6
  %9 = load float, ptr %4, align 4, !tbaa !34
  %10 = tail call float @llvm.fmuladd.f32(float %8, float %9, float %6)
  %11 = load float, ptr %3, align 4, !tbaa !34
  %12 = fsub float %11, %6
  %13 = getelementptr inbounds float, ptr %4, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  store float %15, ptr %0, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %1, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %2, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fsub float %19, %17
  %21 = load float, ptr %4, align 4, !tbaa !34
  %22 = tail call float @llvm.fmuladd.f32(float %20, float %21, float %17)
  %23 = getelementptr inbounds float, ptr %3, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fsub float %24, %17
  %26 = load float, ptr %13, align 4, !tbaa !34
  %27 = tail call float @llvm.fmuladd.f32(float %25, float %26, float %22)
  %28 = getelementptr inbounds float, ptr %0, i64 1
  store float %27, ptr %28, align 4, !tbaa !34
  %29 = getelementptr inbounds float, ptr %1, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = getelementptr inbounds float, ptr %2, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = fsub float %32, %30
  %34 = load float, ptr %4, align 4, !tbaa !34
  %35 = tail call float @llvm.fmuladd.f32(float %33, float %34, float %30)
  %36 = getelementptr inbounds float, ptr %3, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !34
  %38 = fsub float %37, %30
  %39 = load float, ptr %13, align 4, !tbaa !34
  %40 = tail call float @llvm.fmuladd.f32(float %38, float %39, float %35)
  %41 = getelementptr inbounds float, ptr %0, i64 2
  store float %40, ptr %41, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @interp_v3_v3v3_uchar(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fsub float 1.000000e+00, %3
  %6 = load i8, ptr %1, align 1, !tbaa !38
  %7 = uitofp i8 %6 to float
  %8 = load i8, ptr %2, align 1, !tbaa !38
  %9 = uitofp i8 %8 to float
  %10 = fmul float %9, %3
  %11 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %10)
  %12 = tail call float @llvm.floor.f32(float %11)
  %13 = fptoui float %12 to i8
  store i8 %13, ptr %0, align 1, !tbaa !38
  %14 = getelementptr inbounds i8, ptr %1, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !38
  %16 = uitofp i8 %15 to float
  %17 = getelementptr inbounds i8, ptr %2, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !38
  %19 = uitofp i8 %18 to float
  %20 = fmul float %19, %3
  %21 = tail call float @llvm.fmuladd.f32(float %5, float %16, float %20)
  %22 = tail call float @llvm.floor.f32(float %21)
  %23 = fptoui float %22 to i8
  %24 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %23, ptr %24, align 1, !tbaa !38
  %25 = getelementptr inbounds i8, ptr %1, i64 2
  %26 = load i8, ptr %25, align 1, !tbaa !38
  %27 = uitofp i8 %26 to float
  %28 = getelementptr inbounds i8, ptr %2, i64 2
  %29 = load i8, ptr %28, align 1, !tbaa !38
  %30 = uitofp i8 %29 to float
  %31 = fmul float %30, %3
  %32 = tail call float @llvm.fmuladd.f32(float %5, float %27, float %31)
  %33 = tail call float @llvm.floor.f32(float %32)
  %34 = fptoui float %33 to i8
  %35 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %34, ptr %35, align 1, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @interp_v3_v3v3_char(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fsub float 1.000000e+00, %3
  %6 = load i8, ptr %1, align 1, !tbaa !38
  %7 = uitofp i8 %6 to float
  %8 = load i8, ptr %2, align 1, !tbaa !38
  %9 = uitofp i8 %8 to float
  %10 = fmul float %9, %3
  %11 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %10)
  %12 = tail call float @llvm.floor.f32(float %11)
  %13 = fptoui float %12 to i8
  store i8 %13, ptr %0, align 1, !tbaa !38
  %14 = getelementptr inbounds i8, ptr %1, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !38
  %16 = uitofp i8 %15 to float
  %17 = getelementptr inbounds i8, ptr %2, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !38
  %19 = uitofp i8 %18 to float
  %20 = fmul float %19, %3
  %21 = tail call float @llvm.fmuladd.f32(float %5, float %16, float %20)
  %22 = tail call float @llvm.floor.f32(float %21)
  %23 = fptoui float %22 to i8
  %24 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %23, ptr %24, align 1, !tbaa !38
  %25 = getelementptr inbounds i8, ptr %1, i64 2
  %26 = load i8, ptr %25, align 1, !tbaa !38
  %27 = uitofp i8 %26 to float
  %28 = getelementptr inbounds i8, ptr %2, i64 2
  %29 = load i8, ptr %28, align 1, !tbaa !38
  %30 = uitofp i8 %29 to float
  %31 = fmul float %30, %3
  %32 = tail call float @llvm.fmuladd.f32(float %5, float %27, float %31)
  %33 = tail call float @llvm.floor.f32(float %32)
  %34 = fptoui float %33 to i8
  %35 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %34, ptr %35, align 1, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @interp_v4_v4v4_uchar(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fsub float 1.000000e+00, %3
  %6 = load i8, ptr %1, align 1, !tbaa !38
  %7 = uitofp i8 %6 to float
  %8 = load i8, ptr %2, align 1, !tbaa !38
  %9 = uitofp i8 %8 to float
  %10 = fmul float %9, %3
  %11 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %10)
  %12 = tail call float @llvm.floor.f32(float %11)
  %13 = fptoui float %12 to i8
  store i8 %13, ptr %0, align 1, !tbaa !38
  %14 = getelementptr inbounds i8, ptr %1, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !38
  %16 = uitofp i8 %15 to float
  %17 = getelementptr inbounds i8, ptr %2, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !38
  %19 = uitofp i8 %18 to float
  %20 = fmul float %19, %3
  %21 = tail call float @llvm.fmuladd.f32(float %5, float %16, float %20)
  %22 = tail call float @llvm.floor.f32(float %21)
  %23 = fptoui float %22 to i8
  %24 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %23, ptr %24, align 1, !tbaa !38
  %25 = getelementptr inbounds i8, ptr %1, i64 2
  %26 = load i8, ptr %25, align 1, !tbaa !38
  %27 = uitofp i8 %26 to float
  %28 = getelementptr inbounds i8, ptr %2, i64 2
  %29 = load i8, ptr %28, align 1, !tbaa !38
  %30 = uitofp i8 %29 to float
  %31 = fmul float %30, %3
  %32 = tail call float @llvm.fmuladd.f32(float %5, float %27, float %31)
  %33 = tail call float @llvm.floor.f32(float %32)
  %34 = fptoui float %33 to i8
  %35 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %34, ptr %35, align 1, !tbaa !38
  %36 = getelementptr inbounds i8, ptr %1, i64 3
  %37 = load i8, ptr %36, align 1, !tbaa !38
  %38 = uitofp i8 %37 to float
  %39 = getelementptr inbounds i8, ptr %2, i64 3
  %40 = load i8, ptr %39, align 1, !tbaa !38
  %41 = uitofp i8 %40 to float
  %42 = fmul float %41, %3
  %43 = tail call float @llvm.fmuladd.f32(float %5, float %38, float %42)
  %44 = tail call float @llvm.floor.f32(float %43)
  %45 = fptoui float %44 to i8
  %46 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %45, ptr %46, align 1, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @interp_v4_v4v4_char(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fsub float 1.000000e+00, %3
  %6 = load i8, ptr %1, align 1, !tbaa !38
  %7 = uitofp i8 %6 to float
  %8 = load i8, ptr %2, align 1, !tbaa !38
  %9 = uitofp i8 %8 to float
  %10 = fmul float %9, %3
  %11 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %10)
  %12 = tail call float @llvm.floor.f32(float %11)
  %13 = fptoui float %12 to i8
  store i8 %13, ptr %0, align 1, !tbaa !38
  %14 = getelementptr inbounds i8, ptr %1, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !38
  %16 = uitofp i8 %15 to float
  %17 = getelementptr inbounds i8, ptr %2, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !38
  %19 = uitofp i8 %18 to float
  %20 = fmul float %19, %3
  %21 = tail call float @llvm.fmuladd.f32(float %5, float %16, float %20)
  %22 = tail call float @llvm.floor.f32(float %21)
  %23 = fptoui float %22 to i8
  %24 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %23, ptr %24, align 1, !tbaa !38
  %25 = getelementptr inbounds i8, ptr %1, i64 2
  %26 = load i8, ptr %25, align 1, !tbaa !38
  %27 = uitofp i8 %26 to float
  %28 = getelementptr inbounds i8, ptr %2, i64 2
  %29 = load i8, ptr %28, align 1, !tbaa !38
  %30 = uitofp i8 %29 to float
  %31 = fmul float %30, %3
  %32 = tail call float @llvm.fmuladd.f32(float %5, float %27, float %31)
  %33 = tail call float @llvm.floor.f32(float %32)
  %34 = fptoui float %33 to i8
  %35 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %34, ptr %35, align 1, !tbaa !38
  %36 = getelementptr inbounds i8, ptr %1, i64 3
  %37 = load i8, ptr %36, align 1, !tbaa !38
  %38 = uitofp i8 %37 to float
  %39 = getelementptr inbounds i8, ptr %2, i64 3
  %40 = load i8, ptr %39, align 1, !tbaa !38
  %41 = uitofp i8 %40 to float
  %42 = fmul float %41, %3
  %43 = tail call float @llvm.fmuladd.f32(float %5, float %38, float %42)
  %44 = tail call float @llvm.floor.f32(float %43)
  %45 = fptoui float %44 to i8
  %46 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %45, ptr %46, align 1, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @mid_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fadd float %4, %5
  %7 = fmul float %6, 5.000000e-01
  store float %7, ptr %0, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fadd float %9, %11
  %13 = fmul float %12, 5.000000e-01
  %14 = getelementptr inbounds float, ptr %0, i64 1
  store float %13, ptr %14, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %1, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %2, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fadd float %16, %18
  %20 = fmul float %19, 5.000000e-01
  %21 = getelementptr inbounds float, ptr %0, i64 2
  store float %20, ptr %21, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @mid_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fadd float %4, %5
  %7 = fmul float %6, 5.000000e-01
  store float %7, ptr %0, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fadd float %9, %11
  %13 = fmul float %12, 5.000000e-01
  %14 = getelementptr inbounds float, ptr %0, i64 1
  store float %13, ptr %14, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @mid_v3_v3v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = load float, ptr %2, align 4, !tbaa !34
  %7 = fadd float %5, %6
  %8 = load float, ptr %3, align 4, !tbaa !34
  %9 = fadd float %7, %8
  %10 = fdiv float %9, 3.000000e+00
  store float %10, ptr %0, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %2, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fadd float %12, %14
  %16 = getelementptr inbounds float, ptr %3, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fadd float %15, %17
  %19 = fdiv float %18, 3.000000e+00
  %20 = getelementptr inbounds float, ptr %0, i64 1
  store float %19, ptr %20, align 4, !tbaa !34
  %21 = getelementptr inbounds float, ptr %1, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = getelementptr inbounds float, ptr %2, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fadd float %22, %24
  %26 = getelementptr inbounds float, ptr %3, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = fadd float %25, %27
  %29 = fdiv float %28, 3.000000e+00
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @mid_v3_v3v3_angle_weighted(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #5 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !34
  %19 = fmul float %11, %11
  %20 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %19)
  %21 = tail call float @llvm.fmuladd.f32(float %17, float %17, float %20)
  %22 = fcmp ogt float %21, 0x38AA95A5C0000000
  br i1 %22, label %23, label %33

23:                                               ; preds = %3
  %24 = tail call float @sqrtf(float noundef %21) #15
  %25 = fdiv float 1.000000e+00, %24
  %26 = load float, ptr %0, align 4, !tbaa !34
  %27 = fmul float %26, %25
  store float %27, ptr %0, align 4, !tbaa !34
  %28 = load float, ptr %12, align 4, !tbaa !34
  %29 = fmul float %25, %28
  store float %29, ptr %12, align 4, !tbaa !34
  %30 = load float, ptr %18, align 4, !tbaa !34
  %31 = fmul float %25, %30
  %32 = fmul float %24, 5.000000e-01
  br label %34

33:                                               ; preds = %3
  store float 0.000000e+00, ptr %0, align 4, !tbaa !34
  store float 0.000000e+00, ptr %12, align 4, !tbaa !34
  br label %34

34:                                               ; preds = %23, %33
  %35 = phi float [ 0.000000e+00, %33 ], [ %31, %23 ]
  %36 = phi float [ 0.000000e+00, %33 ], [ %32, %23 ]
  store float %35, ptr %18, align 4, !tbaa !34
  %37 = tail call float @acosf(float noundef %36) #15
  %38 = fmul float %37, 0x3FF45F3060000000
  %39 = load float, ptr %0, align 4, !tbaa !34
  %40 = fmul float %39, %38
  store float %40, ptr %0, align 4, !tbaa !34
  %41 = load float, ptr %12, align 4, !tbaa !34
  %42 = fmul float %38, %41
  store float %42, ptr %12, align 4, !tbaa !34
  %43 = load float, ptr %18, align 4, !tbaa !34
  %44 = fmul float %38, %43
  store float %44, ptr %18, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @mid_v3_angle_weighted(ptr nocapture noundef %0) local_unnamed_addr #5 {
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
  %12 = tail call float @sqrtf(float noundef %9) #15
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
  %24 = tail call float @acosf(float noundef %23) #15
  %25 = fmul float %24, 0x3FF45F3060000000
  %26 = load float, ptr %0, align 4, !tbaa !34
  %27 = fmul float %26, %25
  store float %27, ptr %0, align 4, !tbaa !34
  %28 = load float, ptr %3, align 4, !tbaa !34
  %29 = fmul float %25, %28
  store float %29, ptr %3, align 4, !tbaa !34
  %30 = load float, ptr %7, align 4, !tbaa !34
  %31 = fmul float %25, %30
  store float %31, ptr %7, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @flip_v4_v4v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fsub float %4, %5
  %7 = fadd float %4, %6
  store float %7, ptr %0, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fsub float %9, %11
  %13 = fadd float %9, %12
  %14 = getelementptr inbounds float, ptr %0, i64 1
  store float %13, ptr %14, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %1, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %2, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fsub float %16, %18
  %20 = fadd float %16, %19
  %21 = getelementptr inbounds float, ptr %0, i64 2
  store float %20, ptr %21, align 4, !tbaa !34
  %22 = getelementptr inbounds float, ptr %1, i64 3
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds float, ptr %2, i64 3
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = fsub float %23, %25
  %27 = fadd float %23, %26
  %28 = getelementptr inbounds float, ptr %0, i64 3
  store float %27, ptr %28, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @flip_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fsub float %4, %5
  %7 = fadd float %4, %6
  store float %7, ptr %0, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fsub float %9, %11
  %13 = fadd float %9, %12
  %14 = getelementptr inbounds float, ptr %0, i64 1
  store float %13, ptr %14, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %1, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %2, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fsub float %16, %18
  %20 = fadd float %16, %19
  %21 = getelementptr inbounds float, ptr %0, i64 2
  store float %20, ptr %21, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @flip_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fsub float %4, %5
  %7 = fadd float %4, %6
  store float %7, ptr %0, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fsub float %9, %11
  %13 = fadd float %9, %12
  %14 = getelementptr inbounds float, ptr %0, i64 1
  store float %13, ptr %14, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @angle_v3v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #5 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %0, align 4, !tbaa !34
  %6 = fsub float %4, %5
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fsub float %13, %15
  %17 = load float, ptr %2, align 4, !tbaa !34
  %18 = fsub float %4, %17
  %19 = getelementptr inbounds float, ptr %2, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fsub float %8, %20
  %22 = getelementptr inbounds float, ptr %2, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = fsub float %13, %23
  %25 = fmul float %11, %11
  %26 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %25)
  %27 = tail call float @llvm.fmuladd.f32(float %16, float %16, float %26)
  %28 = fcmp ogt float %27, 0x38AA95A5C0000000
  br i1 %28, label %29, label %35

29:                                               ; preds = %3
  %30 = tail call float @sqrtf(float noundef %27) #15
  %31 = fdiv float 1.000000e+00, %30
  %32 = fmul float %6, %31
  %33 = fmul float %11, %31
  %34 = fmul float %16, %31
  br label %35

35:                                               ; preds = %3, %29
  %36 = phi float [ %33, %29 ], [ 0.000000e+00, %3 ]
  %37 = phi float [ %32, %29 ], [ 0.000000e+00, %3 ]
  %38 = phi float [ %34, %29 ], [ 0.000000e+00, %3 ]
  %39 = fmul float %21, %21
  %40 = tail call float @llvm.fmuladd.f32(float %18, float %18, float %39)
  %41 = tail call float @llvm.fmuladd.f32(float %24, float %24, float %40)
  %42 = fcmp ogt float %41, 0x38AA95A5C0000000
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = tail call float @sqrtf(float noundef %41) #15
  %45 = fdiv float 1.000000e+00, %44
  %46 = fmul float %18, %45
  %47 = fmul float %21, %45
  %48 = fmul float %24, %45
  br label %49

49:                                               ; preds = %35, %43
  %50 = phi float [ %47, %43 ], [ 0.000000e+00, %35 ]
  %51 = phi float [ %46, %43 ], [ 0.000000e+00, %35 ]
  %52 = phi float [ %48, %43 ], [ 0.000000e+00, %35 ]
  %53 = fmul float %36, %50
  %54 = tail call float @llvm.fmuladd.f32(float %37, float %51, float %53)
  %55 = tail call float @llvm.fmuladd.f32(float %38, float %52, float %54)
  %56 = fcmp ult float %55, 0.000000e+00
  br i1 %56, label %72, label %57

57:                                               ; preds = %49
  %58 = fsub float %51, %37
  %59 = fsub float %50, %36
  %60 = fsub float %52, %38
  %61 = fmul float %59, %59
  %62 = tail call float @llvm.fmuladd.f32(float %58, float %58, float %61)
  %63 = tail call float @llvm.fmuladd.f32(float %60, float %60, float %62)
  %64 = tail call float @sqrtf(float noundef %63) #15
  %65 = fmul float %64, 5.000000e-01
  %66 = fcmp ugt float %65, -1.000000e+00
  br i1 %66, label %67, label %92

67:                                               ; preds = %57
  %68 = fcmp ult float %65, 1.000000e+00
  br i1 %68, label %69, label %92

69:                                               ; preds = %67
  %70 = tail call float @asinf(float noundef %65) #15
  %71 = fmul float %70, 2.000000e+00
  br label %92

72:                                               ; preds = %49
  %73 = fneg float %51
  %74 = fneg float %50
  %75 = fneg float %52
  %76 = fsub float %73, %37
  %77 = fsub float %74, %36
  %78 = fsub float %75, %38
  %79 = fmul float %77, %77
  %80 = tail call float @llvm.fmuladd.f32(float %76, float %76, float %79)
  %81 = tail call float @llvm.fmuladd.f32(float %78, float %78, float %80)
  %82 = tail call float @sqrtf(float noundef %81) #15
  %83 = fmul float %82, 5.000000e-01
  %84 = fcmp ugt float %83, -1.000000e+00
  br i1 %84, label %85, label %89

85:                                               ; preds = %72
  %86 = fcmp ult float %83, 1.000000e+00
  br i1 %86, label %87, label %89

87:                                               ; preds = %85
  %88 = tail call float @asinf(float noundef %83) #15
  br label %89

89:                                               ; preds = %87, %85, %72
  %90 = phi float [ %88, %87 ], [ 0xBFF921FB60000000, %72 ], [ 0x3FF921FB60000000, %85 ]
  %91 = tail call float @llvm.fmuladd.f32(float %90, float -2.000000e+00, float 0x400921FB60000000)
  br label %92

92:                                               ; preds = %57, %67, %69, %89
  %93 = phi float [ %91, %89 ], [ %71, %69 ], [ 0xC00921FB60000000, %57 ], [ 0x400921FB60000000, %67 ]
  ret float %93
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @angle_normalized_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
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
  %16 = fcmp ult float %15, 0.000000e+00
  br i1 %16, label %32, label %17

17:                                               ; preds = %2
  %18 = fsub float %4, %3
  %19 = fsub float %8, %6
  %20 = fsub float %14, %12
  %21 = fmul float %19, %19
  %22 = tail call float @llvm.fmuladd.f32(float %18, float %18, float %21)
  %23 = tail call float @llvm.fmuladd.f32(float %20, float %20, float %22)
  %24 = tail call float @sqrtf(float noundef %23) #15
  %25 = fmul float %24, 5.000000e-01
  %26 = fcmp ugt float %25, -1.000000e+00
  br i1 %26, label %27, label %52

27:                                               ; preds = %17
  %28 = fcmp ult float %25, 1.000000e+00
  br i1 %28, label %29, label %52

29:                                               ; preds = %27
  %30 = tail call float @asinf(float noundef %25) #15
  %31 = fmul float %30, 2.000000e+00
  br label %52

32:                                               ; preds = %2
  %33 = fneg float %4
  %34 = fneg float %8
  %35 = fneg float %14
  %36 = fsub float %33, %3
  %37 = fsub float %34, %6
  %38 = fsub float %35, %12
  %39 = fmul float %37, %37
  %40 = tail call float @llvm.fmuladd.f32(float %36, float %36, float %39)
  %41 = tail call float @llvm.fmuladd.f32(float %38, float %38, float %40)
  %42 = tail call float @sqrtf(float noundef %41) #15
  %43 = fmul float %42, 5.000000e-01
  %44 = fcmp ugt float %43, -1.000000e+00
  br i1 %44, label %45, label %49

45:                                               ; preds = %32
  %46 = fcmp ult float %43, 1.000000e+00
  br i1 %46, label %47, label %49

47:                                               ; preds = %45
  %48 = tail call float @asinf(float noundef %43) #15
  br label %49

49:                                               ; preds = %32, %45, %47
  %50 = phi float [ %48, %47 ], [ 0xBFF921FB60000000, %32 ], [ 0x3FF921FB60000000, %45 ]
  %51 = tail call float @llvm.fmuladd.f32(float %50, float -2.000000e+00, float 0x400921FB60000000)
  br label %52

52:                                               ; preds = %29, %27, %17, %49
  %53 = phi float [ %51, %49 ], [ %31, %29 ], [ 0xC00921FB60000000, %17 ], [ 0x400921FB60000000, %27 ]
  ret float %53
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @cos_v3v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #5 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %0, align 4, !tbaa !34
  %6 = fsub float %4, %5
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fsub float %13, %15
  %17 = load float, ptr %2, align 4, !tbaa !34
  %18 = fsub float %4, %17
  %19 = getelementptr inbounds float, ptr %2, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fsub float %8, %20
  %22 = getelementptr inbounds float, ptr %2, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = fsub float %13, %23
  %25 = fmul float %11, %11
  %26 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %25)
  %27 = tail call float @llvm.fmuladd.f32(float %16, float %16, float %26)
  %28 = fcmp ogt float %27, 0x38AA95A5C0000000
  br i1 %28, label %29, label %35

29:                                               ; preds = %3
  %30 = tail call float @sqrtf(float noundef %27) #15
  %31 = fdiv float 1.000000e+00, %30
  %32 = fmul float %6, %31
  %33 = fmul float %11, %31
  %34 = fmul float %16, %31
  br label %35

35:                                               ; preds = %3, %29
  %36 = phi float [ %33, %29 ], [ 0.000000e+00, %3 ]
  %37 = phi float [ %32, %29 ], [ 0.000000e+00, %3 ]
  %38 = phi float [ %34, %29 ], [ 0.000000e+00, %3 ]
  %39 = fmul float %21, %21
  %40 = tail call float @llvm.fmuladd.f32(float %18, float %18, float %39)
  %41 = tail call float @llvm.fmuladd.f32(float %24, float %24, float %40)
  %42 = fcmp ogt float %41, 0x38AA95A5C0000000
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = tail call float @sqrtf(float noundef %41) #15
  %45 = fdiv float 1.000000e+00, %44
  %46 = fmul float %18, %45
  %47 = fmul float %21, %45
  %48 = fmul float %24, %45
  br label %49

49:                                               ; preds = %35, %43
  %50 = phi float [ %47, %43 ], [ 0.000000e+00, %35 ]
  %51 = phi float [ %46, %43 ], [ 0.000000e+00, %35 ]
  %52 = phi float [ %48, %43 ], [ 0.000000e+00, %35 ]
  %53 = fmul float %36, %50
  %54 = tail call float @llvm.fmuladd.f32(float %37, float %51, float %53)
  %55 = tail call float @llvm.fmuladd.f32(float %38, float %52, float %54)
  ret float %55
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @angle_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = fmul float %5, %5
  %7 = tail call float @llvm.fmuladd.f32(float %3, float %3, float %6)
  %8 = getelementptr inbounds float, ptr %0, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %7)
  %11 = fcmp ogt float %10, 0x38AA95A5C0000000
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = tail call float @sqrtf(float noundef %10) #15
  %14 = fdiv float 1.000000e+00, %13
  %15 = load float, ptr %0, align 4, !tbaa !34
  %16 = fmul float %15, %14
  %17 = load float, ptr %4, align 4, !tbaa !34
  %18 = fmul float %14, %17
  %19 = load float, ptr %8, align 4, !tbaa !34
  %20 = fmul float %14, %19
  br label %21

21:                                               ; preds = %2, %12
  %22 = phi float [ %20, %12 ], [ 0.000000e+00, %2 ]
  %23 = phi float [ %18, %12 ], [ 0.000000e+00, %2 ]
  %24 = phi float [ %16, %12 ], [ 0.000000e+00, %2 ]
  %25 = load float, ptr %1, align 4, !tbaa !34
  %26 = getelementptr inbounds float, ptr %1, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = fmul float %27, %27
  %29 = tail call float @llvm.fmuladd.f32(float %25, float %25, float %28)
  %30 = getelementptr inbounds float, ptr %1, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = tail call float @llvm.fmuladd.f32(float %31, float %31, float %29)
  %33 = fcmp ogt float %32, 0x38AA95A5C0000000
  br i1 %33, label %34, label %43

34:                                               ; preds = %21
  %35 = tail call float @sqrtf(float noundef %32) #15
  %36 = fdiv float 1.000000e+00, %35
  %37 = load float, ptr %1, align 4, !tbaa !34
  %38 = fmul float %37, %36
  %39 = load float, ptr %26, align 4, !tbaa !34
  %40 = fmul float %36, %39
  %41 = load float, ptr %30, align 4, !tbaa !34
  %42 = fmul float %36, %41
  br label %43

43:                                               ; preds = %21, %34
  %44 = phi float [ %42, %34 ], [ 0.000000e+00, %21 ]
  %45 = phi float [ %40, %34 ], [ 0.000000e+00, %21 ]
  %46 = phi float [ %38, %34 ], [ 0.000000e+00, %21 ]
  %47 = fmul float %23, %45
  %48 = tail call float @llvm.fmuladd.f32(float %24, float %46, float %47)
  %49 = tail call float @llvm.fmuladd.f32(float %22, float %44, float %48)
  %50 = fcmp ult float %49, 0.000000e+00
  br i1 %50, label %66, label %51

51:                                               ; preds = %43
  %52 = fsub float %46, %24
  %53 = fsub float %45, %23
  %54 = fsub float %44, %22
  %55 = fmul float %53, %53
  %56 = tail call float @llvm.fmuladd.f32(float %52, float %52, float %55)
  %57 = tail call float @llvm.fmuladd.f32(float %54, float %54, float %56)
  %58 = tail call float @sqrtf(float noundef %57) #15
  %59 = fmul float %58, 5.000000e-01
  %60 = fcmp ugt float %59, -1.000000e+00
  br i1 %60, label %61, label %86

61:                                               ; preds = %51
  %62 = fcmp ult float %59, 1.000000e+00
  br i1 %62, label %63, label %86

63:                                               ; preds = %61
  %64 = tail call float @asinf(float noundef %59) #15
  %65 = fmul float %64, 2.000000e+00
  br label %86

66:                                               ; preds = %43
  %67 = fneg float %46
  %68 = fneg float %45
  %69 = fneg float %44
  %70 = fsub float %67, %24
  %71 = fsub float %68, %23
  %72 = fsub float %69, %22
  %73 = fmul float %71, %71
  %74 = tail call float @llvm.fmuladd.f32(float %70, float %70, float %73)
  %75 = tail call float @llvm.fmuladd.f32(float %72, float %72, float %74)
  %76 = tail call float @sqrtf(float noundef %75) #15
  %77 = fmul float %76, 5.000000e-01
  %78 = fcmp ugt float %77, -1.000000e+00
  br i1 %78, label %79, label %83

79:                                               ; preds = %66
  %80 = fcmp ult float %77, 1.000000e+00
  br i1 %80, label %81, label %83

81:                                               ; preds = %79
  %82 = tail call float @asinf(float noundef %77) #15
  br label %83

83:                                               ; preds = %81, %79, %66
  %84 = phi float [ %82, %81 ], [ 0xBFF921FB60000000, %66 ], [ 0x3FF921FB60000000, %79 ]
  %85 = tail call float @llvm.fmuladd.f32(float %84, float -2.000000e+00, float 0x400921FB60000000)
  br label %86

86:                                               ; preds = %51, %61, %63, %83
  %87 = phi float [ %85, %83 ], [ %65, %63 ], [ 0xC00921FB60000000, %51 ], [ 0x400921FB60000000, %61 ]
  ret float %87
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @angle_v2v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #5 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %0, align 4, !tbaa !34
  %6 = fsub float %4, %5
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fsub float %8, %10
  %12 = load float, ptr %2, align 4, !tbaa !34
  %13 = fsub float %4, %12
  %14 = getelementptr inbounds float, ptr %2, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fsub float %8, %15
  %17 = fmul float %11, %11
  %18 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %17)
  %19 = fcmp ogt float %18, 0x38AA95A5C0000000
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = tail call float @sqrtf(float noundef %18) #15
  %22 = fdiv float 1.000000e+00, %21
  %23 = fmul float %6, %22
  %24 = fmul float %11, %22
  br label %25

25:                                               ; preds = %3, %20
  %26 = phi float [ %23, %20 ], [ 0.000000e+00, %3 ]
  %27 = phi float [ %24, %20 ], [ 0.000000e+00, %3 ]
  %28 = fmul float %16, %16
  %29 = tail call float @llvm.fmuladd.f32(float %13, float %13, float %28)
  %30 = fcmp ogt float %29, 0x38AA95A5C0000000
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = tail call float @sqrtf(float noundef %29) #15
  %33 = fdiv float 1.000000e+00, %32
  %34 = fmul float %13, %33
  %35 = fmul float %16, %33
  br label %36

36:                                               ; preds = %25, %31
  %37 = phi float [ %34, %31 ], [ 0.000000e+00, %25 ]
  %38 = phi float [ %35, %31 ], [ 0.000000e+00, %25 ]
  %39 = fmul float %27, %38
  %40 = tail call float @llvm.fmuladd.f32(float %26, float %37, float %39)
  %41 = fcmp ult float %40, 0.000000e+00
  br i1 %41, label %55, label %42

42:                                               ; preds = %36
  %43 = fsub float %26, %37
  %44 = fsub float %27, %38
  %45 = fmul float %44, %44
  %46 = tail call float @llvm.fmuladd.f32(float %43, float %43, float %45)
  %47 = tail call float @sqrtf(float noundef %46) #15
  %48 = fmul float %47, 5.000000e-01
  %49 = fcmp ugt float %48, -1.000000e+00
  br i1 %49, label %50, label %70

50:                                               ; preds = %42
  %51 = fcmp ult float %48, 1.000000e+00
  br i1 %51, label %52, label %70

52:                                               ; preds = %50
  %53 = tail call float @asinf(float noundef %48) #15
  %54 = fmul float %53, 2.000000e+00
  br label %70

55:                                               ; preds = %36
  %56 = fadd float %26, %37
  %57 = fadd float %27, %38
  %58 = fmul float %57, %57
  %59 = tail call float @llvm.fmuladd.f32(float %56, float %56, float %58)
  %60 = tail call float @sqrtf(float noundef %59) #15
  %61 = fmul float %60, 5.000000e-01
  %62 = fcmp ugt float %61, -1.000000e+00
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = fcmp ult float %61, 1.000000e+00
  br i1 %64, label %65, label %67

65:                                               ; preds = %63
  %66 = tail call float @asinf(float noundef %61) #15
  br label %67

67:                                               ; preds = %65, %63, %55
  %68 = phi float [ %66, %65 ], [ 0xBFF921FB60000000, %55 ], [ 0x3FF921FB60000000, %63 ]
  %69 = tail call float @llvm.fmuladd.f32(float %68, float -2.000000e+00, float 0x400921FB60000000)
  br label %70

70:                                               ; preds = %42, %50, %52, %67
  %71 = phi float [ %69, %67 ], [ %54, %52 ], [ 0xC00921FB60000000, %42 ], [ 0x400921FB60000000, %50 ]
  ret float %71
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @angle_normalized_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = fcmp ult float %10, 0.000000e+00
  br i1 %11, label %25, label %12

12:                                               ; preds = %2
  %13 = fsub float %3, %4
  %14 = fsub float %6, %8
  %15 = fmul float %14, %14
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %13, float %15)
  %17 = tail call float @sqrtf(float noundef %16) #15
  %18 = fmul float %17, 5.000000e-01
  %19 = fcmp ugt float %18, -1.000000e+00
  br i1 %19, label %20, label %40

20:                                               ; preds = %12
  %21 = fcmp ult float %18, 1.000000e+00
  br i1 %21, label %22, label %40

22:                                               ; preds = %20
  %23 = tail call float @asinf(float noundef %18) #15
  %24 = fmul float %23, 2.000000e+00
  br label %40

25:                                               ; preds = %2
  %26 = fadd float %3, %4
  %27 = fadd float %6, %8
  %28 = fmul float %27, %27
  %29 = tail call float @llvm.fmuladd.f32(float %26, float %26, float %28)
  %30 = tail call float @sqrtf(float noundef %29) #15
  %31 = fmul float %30, 5.000000e-01
  %32 = fcmp ugt float %31, -1.000000e+00
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = fcmp ult float %31, 1.000000e+00
  br i1 %34, label %35, label %37

35:                                               ; preds = %33
  %36 = tail call float @asinf(float noundef %31) #15
  br label %37

37:                                               ; preds = %25, %33, %35
  %38 = phi float [ %36, %35 ], [ 0xBFF921FB60000000, %25 ], [ 0x3FF921FB60000000, %33 ]
  %39 = tail call float @llvm.fmuladd.f32(float %38, float -2.000000e+00, float 0x400921FB60000000)
  br label %40

40:                                               ; preds = %22, %20, %12, %37
  %41 = phi float [ %39, %37 ], [ %24, %22 ], [ 0xC00921FB60000000, %12 ], [ 0x400921FB60000000, %20 ]
  ret float %41
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @angle_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %5, %5
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %3, float %9)
  %11 = fcmp ogt float %10, 0x38AA95A5C0000000
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = tail call float @sqrtf(float noundef %10) #15
  %14 = fdiv float 1.000000e+00, %13
  %15 = fmul float %3, %14
  %16 = fmul float %5, %14
  br label %17

17:                                               ; preds = %2, %12
  %18 = phi float [ %15, %12 ], [ 0.000000e+00, %2 ]
  %19 = phi float [ %16, %12 ], [ 0.000000e+00, %2 ]
  %20 = fmul float %8, %8
  %21 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %20)
  %22 = fcmp ogt float %21, 0x38AA95A5C0000000
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = tail call float @sqrtf(float noundef %21) #15
  %25 = fdiv float 1.000000e+00, %24
  %26 = fmul float %6, %25
  %27 = fmul float %8, %25
  br label %28

28:                                               ; preds = %17, %23
  %29 = phi float [ %26, %23 ], [ 0.000000e+00, %17 ]
  %30 = phi float [ %27, %23 ], [ 0.000000e+00, %17 ]
  %31 = fmul float %19, %30
  %32 = tail call float @llvm.fmuladd.f32(float %18, float %29, float %31)
  %33 = fcmp ult float %32, 0.000000e+00
  br i1 %33, label %47, label %34

34:                                               ; preds = %28
  %35 = fsub float %18, %29
  %36 = fsub float %19, %30
  %37 = fmul float %36, %36
  %38 = tail call float @llvm.fmuladd.f32(float %35, float %35, float %37)
  %39 = tail call float @sqrtf(float noundef %38) #15
  %40 = fmul float %39, 5.000000e-01
  %41 = fcmp ugt float %40, -1.000000e+00
  br i1 %41, label %42, label %62

42:                                               ; preds = %34
  %43 = fcmp ult float %40, 1.000000e+00
  br i1 %43, label %44, label %62

44:                                               ; preds = %42
  %45 = tail call float @asinf(float noundef %40) #15
  %46 = fmul float %45, 2.000000e+00
  br label %62

47:                                               ; preds = %28
  %48 = fadd float %18, %29
  %49 = fadd float %19, %30
  %50 = fmul float %49, %49
  %51 = tail call float @llvm.fmuladd.f32(float %48, float %48, float %50)
  %52 = tail call float @sqrtf(float noundef %51) #15
  %53 = fmul float %52, 5.000000e-01
  %54 = fcmp ugt float %53, -1.000000e+00
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = fcmp ult float %53, 1.000000e+00
  br i1 %56, label %57, label %59

57:                                               ; preds = %55
  %58 = tail call float @asinf(float noundef %53) #15
  br label %59

59:                                               ; preds = %57, %55, %47
  %60 = phi float [ %58, %57 ], [ 0xBFF921FB60000000, %47 ], [ 0x3FF921FB60000000, %55 ]
  %61 = tail call float @llvm.fmuladd.f32(float %60, float -2.000000e+00, float 0x400921FB60000000)
  br label %62

62:                                               ; preds = %34, %42, %44, %59
  %63 = phi float [ %61, %59 ], [ %46, %44 ], [ 0xC00921FB60000000, %34 ], [ 0x400921FB60000000, %42 ]
  ret float %63
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @angle_signed_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = load float, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fneg float %6
  %10 = fmul float %8, %9
  %11 = tail call float @llvm.fmuladd.f32(float %4, float %5, float %10)
  %12 = fmul float %4, %8
  %13 = tail call float @llvm.fmuladd.f32(float %6, float %5, float %12)
  %14 = tail call float @atan2f(float noundef %11, float noundef %13) #15
  ret float %14
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @angle_on_axis_v3v3v3_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #5 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  %7 = load float, ptr %0, align 4, !tbaa !34
  %8 = load float, ptr %1, align 4, !tbaa !34
  %9 = fsub float %7, %8
  store float %9, ptr %5, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fsub float %11, %13
  %15 = getelementptr inbounds float, ptr %5, i64 1
  store float %14, ptr %15, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %0, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %1, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fsub float %17, %19
  %21 = getelementptr inbounds float, ptr %5, i64 2
  store float %20, ptr %21, align 4, !tbaa !34
  %22 = load float, ptr %2, align 4, !tbaa !34
  %23 = fsub float %22, %8
  store float %23, ptr %6, align 4, !tbaa !34
  %24 = getelementptr inbounds float, ptr %2, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = fsub float %25, %13
  %27 = getelementptr inbounds float, ptr %6, i64 1
  store float %26, ptr %27, align 4, !tbaa !34
  %28 = getelementptr inbounds float, ptr %2, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = fsub float %29, %19
  %31 = getelementptr inbounds float, ptr %6, i64 2
  store float %30, ptr %31, align 4, !tbaa !34
  %32 = load float, ptr %3, align 4, !tbaa !34
  %33 = getelementptr inbounds float, ptr %3, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = fmul float %14, %34
  %36 = tail call float @llvm.fmuladd.f32(float %9, float %32, float %35)
  %37 = getelementptr inbounds float, ptr %3, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !34
  %39 = tail call float @llvm.fmuladd.f32(float %20, float %38, float %36)
  %40 = fmul float %34, %34
  %41 = tail call float @llvm.fmuladd.f32(float %32, float %32, float %40)
  %42 = tail call float @llvm.fmuladd.f32(float %38, float %38, float %41)
  %43 = fdiv float %39, %42
  %44 = fmul float %32, %43
  %45 = fmul float %34, %43
  %46 = fmul float %38, %43
  %47 = fsub float %9, %44
  store float %47, ptr %5, align 4, !tbaa !34
  %48 = fsub float %14, %45
  store float %48, ptr %15, align 4, !tbaa !34
  %49 = fsub float %20, %46
  store float %49, ptr %21, align 4, !tbaa !34
  %50 = fmul float %26, %34
  %51 = tail call float @llvm.fmuladd.f32(float %23, float %32, float %50)
  %52 = tail call float @llvm.fmuladd.f32(float %30, float %38, float %51)
  %53 = fdiv float %52, %42
  %54 = fmul float %32, %53
  %55 = fmul float %34, %53
  %56 = fmul float %38, %53
  %57 = fsub float %23, %54
  store float %57, ptr %6, align 4, !tbaa !34
  %58 = fsub float %26, %55
  store float %58, ptr %27, align 4, !tbaa !34
  %59 = fsub float %30, %56
  store float %59, ptr %31, align 4, !tbaa !34
  %60 = call float @angle_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  ret float %60
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @project_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %2, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fmul float %7, %9
  %11 = tail call float @llvm.fmuladd.f32(float %4, float %5, float %10)
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %2, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %15, float %11)
  %17 = fmul float %9, %9
  %18 = tail call float @llvm.fmuladd.f32(float %5, float %5, float %17)
  %19 = tail call float @llvm.fmuladd.f32(float %15, float %15, float %18)
  %20 = fdiv float %16, %19
  %21 = fmul float %5, %20
  store float %21, ptr %0, align 4, !tbaa !34
  %22 = load float, ptr %8, align 4, !tbaa !34
  %23 = fmul float %20, %22
  %24 = getelementptr inbounds float, ptr %0, i64 1
  store float %23, ptr %24, align 4, !tbaa !34
  %25 = load float, ptr %14, align 4, !tbaa !34
  %26 = fmul float %20, %25
  %27 = getelementptr inbounds float, ptr %0, i64 2
  store float %26, ptr %27, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @angle_signed_on_axis_v3v3v3_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #5 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  %7 = load float, ptr %0, align 4, !tbaa !34
  %8 = load float, ptr %1, align 4, !tbaa !34
  %9 = fsub float %7, %8
  store float %9, ptr %5, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fsub float %11, %13
  %15 = getelementptr inbounds float, ptr %5, i64 1
  store float %14, ptr %15, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %0, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %1, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fsub float %17, %19
  %21 = getelementptr inbounds float, ptr %5, i64 2
  store float %20, ptr %21, align 4, !tbaa !34
  %22 = load float, ptr %2, align 4, !tbaa !34
  %23 = fsub float %22, %8
  store float %23, ptr %6, align 4, !tbaa !34
  %24 = getelementptr inbounds float, ptr %2, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = fsub float %25, %13
  %27 = getelementptr inbounds float, ptr %6, i64 1
  store float %26, ptr %27, align 4, !tbaa !34
  %28 = getelementptr inbounds float, ptr %2, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = fsub float %29, %19
  %31 = getelementptr inbounds float, ptr %6, i64 2
  store float %30, ptr %31, align 4, !tbaa !34
  %32 = load float, ptr %3, align 4, !tbaa !34
  %33 = getelementptr inbounds float, ptr %3, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = fmul float %14, %34
  %36 = tail call float @llvm.fmuladd.f32(float %9, float %32, float %35)
  %37 = getelementptr inbounds float, ptr %3, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !34
  %39 = tail call float @llvm.fmuladd.f32(float %20, float %38, float %36)
  %40 = fmul float %34, %34
  %41 = tail call float @llvm.fmuladd.f32(float %32, float %32, float %40)
  %42 = tail call float @llvm.fmuladd.f32(float %38, float %38, float %41)
  %43 = fdiv float %39, %42
  %44 = fmul float %32, %43
  %45 = fmul float %34, %43
  %46 = fmul float %38, %43
  %47 = fsub float %9, %44
  store float %47, ptr %5, align 4, !tbaa !34
  %48 = fsub float %14, %45
  store float %48, ptr %15, align 4, !tbaa !34
  %49 = fsub float %20, %46
  store float %49, ptr %21, align 4, !tbaa !34
  %50 = fmul float %26, %34
  %51 = tail call float @llvm.fmuladd.f32(float %23, float %32, float %50)
  %52 = tail call float @llvm.fmuladd.f32(float %30, float %38, float %51)
  %53 = fdiv float %52, %42
  %54 = fmul float %32, %53
  %55 = fmul float %34, %53
  %56 = fmul float %38, %53
  %57 = fsub float %23, %54
  store float %57, ptr %6, align 4, !tbaa !34
  %58 = fsub float %26, %55
  store float %58, ptr %27, align 4, !tbaa !34
  %59 = fsub float %30, %56
  store float %59, ptr %31, align 4, !tbaa !34
  %60 = call float @angle_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %61 = fneg float %59
  %62 = fmul float %48, %61
  %63 = tail call float @llvm.fmuladd.f32(float %58, float %49, float %62)
  %64 = fneg float %57
  %65 = fmul float %49, %64
  %66 = tail call float @llvm.fmuladd.f32(float %59, float %47, float %65)
  %67 = fneg float %58
  %68 = fmul float %47, %67
  %69 = tail call float @llvm.fmuladd.f32(float %57, float %48, float %68)
  %70 = load float, ptr %3, align 4, !tbaa !34
  %71 = load float, ptr %33, align 4, !tbaa !34
  %72 = fmul float %66, %71
  %73 = tail call float @llvm.fmuladd.f32(float %63, float %70, float %72)
  %74 = load float, ptr %37, align 4, !tbaa !34
  %75 = tail call float @llvm.fmuladd.f32(float %69, float %74, float %73)
  %76 = fcmp olt float %75, 0.000000e+00
  %77 = fsub float 0x401921FB60000000, %60
  %78 = select i1 %76, float %77, float %60
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  ret float %78
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @angle_tri_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #5 {
  %5 = load float, ptr %3, align 4, !tbaa !34
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = fsub float %5, %6
  %8 = getelementptr inbounds float, ptr %3, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fsub float %9, %11
  %13 = getelementptr inbounds float, ptr %3, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %1, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fsub float %14, %16
  %18 = load float, ptr %2, align 4, !tbaa !34
  %19 = fsub float %6, %18
  %20 = getelementptr inbounds float, ptr %2, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fsub float %11, %21
  %23 = getelementptr inbounds float, ptr %2, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fsub float %16, %24
  %26 = fsub float %18, %5
  %27 = fsub float %21, %9
  %28 = fsub float %24, %14
  %29 = fmul float %12, %12
  %30 = tail call float @llvm.fmuladd.f32(float %7, float %7, float %29)
  %31 = tail call float @llvm.fmuladd.f32(float %17, float %17, float %30)
  %32 = fcmp ogt float %31, 0x38AA95A5C0000000
  br i1 %32, label %33, label %39

33:                                               ; preds = %4
  %34 = tail call float @sqrtf(float noundef %31) #15
  %35 = fdiv float 1.000000e+00, %34
  %36 = fmul float %7, %35
  %37 = fmul float %12, %35
  %38 = fmul float %17, %35
  br label %39

39:                                               ; preds = %4, %33
  %40 = phi float [ %37, %33 ], [ 0.000000e+00, %4 ]
  %41 = phi float [ %36, %33 ], [ 0.000000e+00, %4 ]
  %42 = phi float [ %38, %33 ], [ 0.000000e+00, %4 ]
  %43 = fmul float %22, %22
  %44 = tail call float @llvm.fmuladd.f32(float %19, float %19, float %43)
  %45 = tail call float @llvm.fmuladd.f32(float %25, float %25, float %44)
  %46 = fcmp ogt float %45, 0x38AA95A5C0000000
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = tail call float @sqrtf(float noundef %45) #15
  %49 = fdiv float 1.000000e+00, %48
  %50 = fmul float %19, %49
  %51 = fmul float %22, %49
  %52 = fmul float %25, %49
  br label %53

53:                                               ; preds = %39, %47
  %54 = phi float [ %51, %47 ], [ 0.000000e+00, %39 ]
  %55 = phi float [ %50, %47 ], [ 0.000000e+00, %39 ]
  %56 = phi float [ %52, %47 ], [ 0.000000e+00, %39 ]
  %57 = fmul float %27, %27
  %58 = tail call float @llvm.fmuladd.f32(float %26, float %26, float %57)
  %59 = tail call float @llvm.fmuladd.f32(float %28, float %28, float %58)
  %60 = fcmp ogt float %59, 0x38AA95A5C0000000
  br i1 %60, label %61, label %67

61:                                               ; preds = %53
  %62 = tail call float @sqrtf(float noundef %59) #15
  %63 = fdiv float 1.000000e+00, %62
  %64 = fmul float %26, %63
  %65 = fmul float %27, %63
  %66 = fmul float %28, %63
  br label %67

67:                                               ; preds = %53, %61
  %68 = phi float [ %65, %61 ], [ 0.000000e+00, %53 ]
  %69 = phi float [ %64, %61 ], [ 0.000000e+00, %53 ]
  %70 = phi float [ %66, %61 ], [ 0.000000e+00, %53 ]
  %71 = fmul float %40, %54
  %72 = tail call float @llvm.fmuladd.f32(float %41, float %55, float %71)
  %73 = tail call float @llvm.fmuladd.f32(float %42, float %56, float %72)
  %74 = fcmp ult float %73, 0.000000e+00
  br i1 %74, label %90, label %75

75:                                               ; preds = %67
  %76 = fsub float %55, %41
  %77 = fsub float %54, %40
  %78 = fsub float %56, %42
  %79 = fmul float %77, %77
  %80 = tail call float @llvm.fmuladd.f32(float %76, float %76, float %79)
  %81 = tail call float @llvm.fmuladd.f32(float %78, float %78, float %80)
  %82 = tail call float @sqrtf(float noundef %81) #15
  %83 = fmul float %82, 5.000000e-01
  %84 = fcmp ugt float %83, -1.000000e+00
  br i1 %84, label %85, label %110

85:                                               ; preds = %75
  %86 = fcmp ult float %83, 1.000000e+00
  br i1 %86, label %87, label %110

87:                                               ; preds = %85
  %88 = tail call float @asinf(float noundef %83) #15
  %89 = fmul float %88, 2.000000e+00
  br label %110

90:                                               ; preds = %67
  %91 = fneg float %55
  %92 = fneg float %54
  %93 = fneg float %56
  %94 = fsub float %91, %41
  %95 = fsub float %92, %40
  %96 = fsub float %93, %42
  %97 = fmul float %95, %95
  %98 = tail call float @llvm.fmuladd.f32(float %94, float %94, float %97)
  %99 = tail call float @llvm.fmuladd.f32(float %96, float %96, float %98)
  %100 = tail call float @sqrtf(float noundef %99) #15
  %101 = fmul float %100, 5.000000e-01
  %102 = fcmp ugt float %101, -1.000000e+00
  br i1 %102, label %103, label %107

103:                                              ; preds = %90
  %104 = fcmp ult float %101, 1.000000e+00
  br i1 %104, label %105, label %107

105:                                              ; preds = %103
  %106 = tail call float @asinf(float noundef %101) #15
  br label %107

107:                                              ; preds = %105, %103, %90
  %108 = phi float [ %106, %105 ], [ 0xBFF921FB60000000, %90 ], [ 0x3FF921FB60000000, %103 ]
  %109 = tail call float @llvm.fmuladd.f32(float %108, float -2.000000e+00, float 0x400921FB60000000)
  br label %110

110:                                              ; preds = %75, %85, %87, %107
  %111 = phi float [ %109, %107 ], [ %89, %87 ], [ 0xC00921FB60000000, %75 ], [ 0x400921FB60000000, %85 ]
  %112 = fsub float 0x400921FB60000000, %111
  store float %112, ptr %0, align 4, !tbaa !34
  %113 = fmul float %54, %68
  %114 = tail call float @llvm.fmuladd.f32(float %55, float %69, float %113)
  %115 = tail call float @llvm.fmuladd.f32(float %56, float %70, float %114)
  %116 = fcmp ult float %115, 0.000000e+00
  br i1 %116, label %132, label %117

117:                                              ; preds = %110
  %118 = fsub float %69, %55
  %119 = fsub float %68, %54
  %120 = fsub float %70, %56
  %121 = fmul float %119, %119
  %122 = tail call float @llvm.fmuladd.f32(float %118, float %118, float %121)
  %123 = tail call float @llvm.fmuladd.f32(float %120, float %120, float %122)
  %124 = tail call float @sqrtf(float noundef %123) #15
  %125 = fmul float %124, 5.000000e-01
  %126 = fcmp ugt float %125, -1.000000e+00
  br i1 %126, label %127, label %152

127:                                              ; preds = %117
  %128 = fcmp ult float %125, 1.000000e+00
  br i1 %128, label %129, label %152

129:                                              ; preds = %127
  %130 = tail call float @asinf(float noundef %125) #15
  %131 = fmul float %130, 2.000000e+00
  br label %152

132:                                              ; preds = %110
  %133 = fneg float %69
  %134 = fneg float %68
  %135 = fneg float %70
  %136 = fsub float %133, %55
  %137 = fsub float %134, %54
  %138 = fsub float %135, %56
  %139 = fmul float %137, %137
  %140 = tail call float @llvm.fmuladd.f32(float %136, float %136, float %139)
  %141 = tail call float @llvm.fmuladd.f32(float %138, float %138, float %140)
  %142 = tail call float @sqrtf(float noundef %141) #15
  %143 = fmul float %142, 5.000000e-01
  %144 = fcmp ugt float %143, -1.000000e+00
  br i1 %144, label %145, label %149

145:                                              ; preds = %132
  %146 = fcmp ult float %143, 1.000000e+00
  br i1 %146, label %147, label %149

147:                                              ; preds = %145
  %148 = tail call float @asinf(float noundef %143) #15
  br label %149

149:                                              ; preds = %147, %145, %132
  %150 = phi float [ %148, %147 ], [ 0xBFF921FB60000000, %132 ], [ 0x3FF921FB60000000, %145 ]
  %151 = tail call float @llvm.fmuladd.f32(float %150, float -2.000000e+00, float 0x400921FB60000000)
  br label %152

152:                                              ; preds = %117, %127, %129, %149
  %153 = phi float [ %151, %149 ], [ %131, %129 ], [ 0xC00921FB60000000, %117 ], [ 0x400921FB60000000, %127 ]
  %154 = fsub float 0x400921FB60000000, %153
  %155 = getelementptr inbounds float, ptr %0, i64 1
  store float %154, ptr %155, align 4, !tbaa !34
  %156 = load float, ptr %0, align 4, !tbaa !34
  %157 = fadd float %154, %156
  %158 = fsub float 0x400921FB60000000, %157
  %159 = getelementptr inbounds float, ptr %0, i64 2
  store float %158, ptr %159, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @angle_quad_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #5 {
  %6 = load float, ptr %4, align 4, !tbaa !34
  %7 = load float, ptr %1, align 4, !tbaa !34
  %8 = fsub float %6, %7
  %9 = getelementptr inbounds float, ptr %4, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fsub float %10, %12
  %14 = getelementptr inbounds float, ptr %4, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %1, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fsub float %15, %17
  %19 = load float, ptr %2, align 4, !tbaa !34
  %20 = fsub float %7, %19
  %21 = getelementptr inbounds float, ptr %2, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = fsub float %12, %22
  %24 = getelementptr inbounds float, ptr %2, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = fsub float %17, %25
  %27 = load float, ptr %3, align 4, !tbaa !34
  %28 = fsub float %19, %27
  %29 = getelementptr inbounds float, ptr %3, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = fsub float %22, %30
  %32 = getelementptr inbounds float, ptr %3, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = fsub float %25, %33
  %35 = fsub float %27, %6
  %36 = fsub float %30, %10
  %37 = fsub float %33, %15
  %38 = fmul float %13, %13
  %39 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %38)
  %40 = tail call float @llvm.fmuladd.f32(float %18, float %18, float %39)
  %41 = fcmp ogt float %40, 0x38AA95A5C0000000
  br i1 %41, label %42, label %48

42:                                               ; preds = %5
  %43 = tail call float @sqrtf(float noundef %40) #15
  %44 = fdiv float 1.000000e+00, %43
  %45 = fmul float %8, %44
  %46 = fmul float %13, %44
  %47 = fmul float %18, %44
  br label %48

48:                                               ; preds = %5, %42
  %49 = phi float [ %46, %42 ], [ 0.000000e+00, %5 ]
  %50 = phi float [ %45, %42 ], [ 0.000000e+00, %5 ]
  %51 = phi float [ %47, %42 ], [ 0.000000e+00, %5 ]
  %52 = fmul float %23, %23
  %53 = tail call float @llvm.fmuladd.f32(float %20, float %20, float %52)
  %54 = tail call float @llvm.fmuladd.f32(float %26, float %26, float %53)
  %55 = fcmp ogt float %54, 0x38AA95A5C0000000
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = tail call float @sqrtf(float noundef %54) #15
  %58 = fdiv float 1.000000e+00, %57
  %59 = fmul float %20, %58
  %60 = fmul float %23, %58
  %61 = fmul float %26, %58
  br label %62

62:                                               ; preds = %48, %56
  %63 = phi float [ %60, %56 ], [ 0.000000e+00, %48 ]
  %64 = phi float [ %59, %56 ], [ 0.000000e+00, %48 ]
  %65 = phi float [ %61, %56 ], [ 0.000000e+00, %48 ]
  %66 = fmul float %31, %31
  %67 = tail call float @llvm.fmuladd.f32(float %28, float %28, float %66)
  %68 = tail call float @llvm.fmuladd.f32(float %34, float %34, float %67)
  %69 = fcmp ogt float %68, 0x38AA95A5C0000000
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = tail call float @sqrtf(float noundef %68) #15
  %72 = fdiv float 1.000000e+00, %71
  %73 = fmul float %28, %72
  %74 = fmul float %31, %72
  %75 = fmul float %34, %72
  br label %76

76:                                               ; preds = %62, %70
  %77 = phi float [ %74, %70 ], [ 0.000000e+00, %62 ]
  %78 = phi float [ %73, %70 ], [ 0.000000e+00, %62 ]
  %79 = phi float [ %75, %70 ], [ 0.000000e+00, %62 ]
  %80 = fmul float %36, %36
  %81 = tail call float @llvm.fmuladd.f32(float %35, float %35, float %80)
  %82 = tail call float @llvm.fmuladd.f32(float %37, float %37, float %81)
  %83 = fcmp ogt float %82, 0x38AA95A5C0000000
  br i1 %83, label %84, label %90

84:                                               ; preds = %76
  %85 = tail call float @sqrtf(float noundef %82) #15
  %86 = fdiv float 1.000000e+00, %85
  %87 = fmul float %35, %86
  %88 = fmul float %36, %86
  %89 = fmul float %37, %86
  br label %90

90:                                               ; preds = %76, %84
  %91 = phi float [ %88, %84 ], [ 0.000000e+00, %76 ]
  %92 = phi float [ %87, %84 ], [ 0.000000e+00, %76 ]
  %93 = phi float [ %89, %84 ], [ 0.000000e+00, %76 ]
  %94 = fmul float %49, %63
  %95 = tail call float @llvm.fmuladd.f32(float %50, float %64, float %94)
  %96 = tail call float @llvm.fmuladd.f32(float %51, float %65, float %95)
  %97 = fcmp ult float %96, 0.000000e+00
  br i1 %97, label %113, label %98

98:                                               ; preds = %90
  %99 = fsub float %64, %50
  %100 = fsub float %63, %49
  %101 = fsub float %65, %51
  %102 = fmul float %100, %100
  %103 = tail call float @llvm.fmuladd.f32(float %99, float %99, float %102)
  %104 = tail call float @llvm.fmuladd.f32(float %101, float %101, float %103)
  %105 = tail call float @sqrtf(float noundef %104) #15
  %106 = fmul float %105, 5.000000e-01
  %107 = fcmp ugt float %106, -1.000000e+00
  br i1 %107, label %108, label %133

108:                                              ; preds = %98
  %109 = fcmp ult float %106, 1.000000e+00
  br i1 %109, label %110, label %133

110:                                              ; preds = %108
  %111 = tail call float @asinf(float noundef %106) #15
  %112 = fmul float %111, 2.000000e+00
  br label %133

113:                                              ; preds = %90
  %114 = fneg float %64
  %115 = fneg float %63
  %116 = fneg float %65
  %117 = fsub float %114, %50
  %118 = fsub float %115, %49
  %119 = fsub float %116, %51
  %120 = fmul float %118, %118
  %121 = tail call float @llvm.fmuladd.f32(float %117, float %117, float %120)
  %122 = tail call float @llvm.fmuladd.f32(float %119, float %119, float %121)
  %123 = tail call float @sqrtf(float noundef %122) #15
  %124 = fmul float %123, 5.000000e-01
  %125 = fcmp ugt float %124, -1.000000e+00
  br i1 %125, label %126, label %130

126:                                              ; preds = %113
  %127 = fcmp ult float %124, 1.000000e+00
  br i1 %127, label %128, label %130

128:                                              ; preds = %126
  %129 = tail call float @asinf(float noundef %124) #15
  br label %130

130:                                              ; preds = %128, %126, %113
  %131 = phi float [ %129, %128 ], [ 0xBFF921FB60000000, %113 ], [ 0x3FF921FB60000000, %126 ]
  %132 = tail call float @llvm.fmuladd.f32(float %131, float -2.000000e+00, float 0x400921FB60000000)
  br label %133

133:                                              ; preds = %98, %108, %110, %130
  %134 = phi float [ %132, %130 ], [ %112, %110 ], [ 0xC00921FB60000000, %98 ], [ 0x400921FB60000000, %108 ]
  %135 = fsub float 0x400921FB60000000, %134
  store float %135, ptr %0, align 4, !tbaa !34
  %136 = fmul float %63, %77
  %137 = tail call float @llvm.fmuladd.f32(float %64, float %78, float %136)
  %138 = tail call float @llvm.fmuladd.f32(float %65, float %79, float %137)
  %139 = fcmp ult float %138, 0.000000e+00
  br i1 %139, label %155, label %140

140:                                              ; preds = %133
  %141 = fsub float %78, %64
  %142 = fsub float %77, %63
  %143 = fsub float %79, %65
  %144 = fmul float %142, %142
  %145 = tail call float @llvm.fmuladd.f32(float %141, float %141, float %144)
  %146 = tail call float @llvm.fmuladd.f32(float %143, float %143, float %145)
  %147 = tail call float @sqrtf(float noundef %146) #15
  %148 = fmul float %147, 5.000000e-01
  %149 = fcmp ugt float %148, -1.000000e+00
  br i1 %149, label %150, label %175

150:                                              ; preds = %140
  %151 = fcmp ult float %148, 1.000000e+00
  br i1 %151, label %152, label %175

152:                                              ; preds = %150
  %153 = tail call float @asinf(float noundef %148) #15
  %154 = fmul float %153, 2.000000e+00
  br label %175

155:                                              ; preds = %133
  %156 = fneg float %78
  %157 = fneg float %77
  %158 = fneg float %79
  %159 = fsub float %156, %64
  %160 = fsub float %157, %63
  %161 = fsub float %158, %65
  %162 = fmul float %160, %160
  %163 = tail call float @llvm.fmuladd.f32(float %159, float %159, float %162)
  %164 = tail call float @llvm.fmuladd.f32(float %161, float %161, float %163)
  %165 = tail call float @sqrtf(float noundef %164) #15
  %166 = fmul float %165, 5.000000e-01
  %167 = fcmp ugt float %166, -1.000000e+00
  br i1 %167, label %168, label %172

168:                                              ; preds = %155
  %169 = fcmp ult float %166, 1.000000e+00
  br i1 %169, label %170, label %172

170:                                              ; preds = %168
  %171 = tail call float @asinf(float noundef %166) #15
  br label %172

172:                                              ; preds = %170, %168, %155
  %173 = phi float [ %171, %170 ], [ 0xBFF921FB60000000, %155 ], [ 0x3FF921FB60000000, %168 ]
  %174 = tail call float @llvm.fmuladd.f32(float %173, float -2.000000e+00, float 0x400921FB60000000)
  br label %175

175:                                              ; preds = %140, %150, %152, %172
  %176 = phi float [ %174, %172 ], [ %154, %152 ], [ 0xC00921FB60000000, %140 ], [ 0x400921FB60000000, %150 ]
  %177 = fsub float 0x400921FB60000000, %176
  %178 = getelementptr inbounds float, ptr %0, i64 1
  store float %177, ptr %178, align 4, !tbaa !34
  %179 = fmul float %77, %91
  %180 = tail call float @llvm.fmuladd.f32(float %78, float %92, float %179)
  %181 = tail call float @llvm.fmuladd.f32(float %79, float %93, float %180)
  %182 = fcmp ult float %181, 0.000000e+00
  br i1 %182, label %198, label %183

183:                                              ; preds = %175
  %184 = fsub float %92, %78
  %185 = fsub float %91, %77
  %186 = fsub float %93, %79
  %187 = fmul float %185, %185
  %188 = tail call float @llvm.fmuladd.f32(float %184, float %184, float %187)
  %189 = tail call float @llvm.fmuladd.f32(float %186, float %186, float %188)
  %190 = tail call float @sqrtf(float noundef %189) #15
  %191 = fmul float %190, 5.000000e-01
  %192 = fcmp ugt float %191, -1.000000e+00
  br i1 %192, label %193, label %218

193:                                              ; preds = %183
  %194 = fcmp ult float %191, 1.000000e+00
  br i1 %194, label %195, label %218

195:                                              ; preds = %193
  %196 = tail call float @asinf(float noundef %191) #15
  %197 = fmul float %196, 2.000000e+00
  br label %218

198:                                              ; preds = %175
  %199 = fneg float %92
  %200 = fneg float %91
  %201 = fneg float %93
  %202 = fsub float %199, %78
  %203 = fsub float %200, %77
  %204 = fsub float %201, %79
  %205 = fmul float %203, %203
  %206 = tail call float @llvm.fmuladd.f32(float %202, float %202, float %205)
  %207 = tail call float @llvm.fmuladd.f32(float %204, float %204, float %206)
  %208 = tail call float @sqrtf(float noundef %207) #15
  %209 = fmul float %208, 5.000000e-01
  %210 = fcmp ugt float %209, -1.000000e+00
  br i1 %210, label %211, label %215

211:                                              ; preds = %198
  %212 = fcmp ult float %209, 1.000000e+00
  br i1 %212, label %213, label %215

213:                                              ; preds = %211
  %214 = tail call float @asinf(float noundef %209) #15
  br label %215

215:                                              ; preds = %213, %211, %198
  %216 = phi float [ %214, %213 ], [ 0xBFF921FB60000000, %198 ], [ 0x3FF921FB60000000, %211 ]
  %217 = tail call float @llvm.fmuladd.f32(float %216, float -2.000000e+00, float 0x400921FB60000000)
  br label %218

218:                                              ; preds = %183, %193, %195, %215
  %219 = phi float [ %217, %215 ], [ %197, %195 ], [ 0xC00921FB60000000, %183 ], [ 0x400921FB60000000, %193 ]
  %220 = fsub float 0x400921FB60000000, %219
  %221 = getelementptr inbounds float, ptr %0, i64 2
  store float %220, ptr %221, align 4, !tbaa !34
  %222 = fmul float %49, %91
  %223 = tail call float @llvm.fmuladd.f32(float %92, float %50, float %222)
  %224 = tail call float @llvm.fmuladd.f32(float %93, float %51, float %223)
  %225 = fcmp ult float %224, 0.000000e+00
  br i1 %225, label %241, label %226

226:                                              ; preds = %218
  %227 = fsub float %50, %92
  %228 = fsub float %49, %91
  %229 = fsub float %51, %93
  %230 = fmul float %228, %228
  %231 = tail call float @llvm.fmuladd.f32(float %227, float %227, float %230)
  %232 = tail call float @llvm.fmuladd.f32(float %229, float %229, float %231)
  %233 = tail call float @sqrtf(float noundef %232) #15
  %234 = fmul float %233, 5.000000e-01
  %235 = fcmp ugt float %234, -1.000000e+00
  br i1 %235, label %236, label %261

236:                                              ; preds = %226
  %237 = fcmp ult float %234, 1.000000e+00
  br i1 %237, label %238, label %261

238:                                              ; preds = %236
  %239 = tail call float @asinf(float noundef %234) #15
  %240 = fmul float %239, 2.000000e+00
  br label %261

241:                                              ; preds = %218
  %242 = fneg float %50
  %243 = fneg float %49
  %244 = fneg float %51
  %245 = fsub float %242, %92
  %246 = fsub float %243, %91
  %247 = fsub float %244, %93
  %248 = fmul float %246, %246
  %249 = tail call float @llvm.fmuladd.f32(float %245, float %245, float %248)
  %250 = tail call float @llvm.fmuladd.f32(float %247, float %247, float %249)
  %251 = tail call float @sqrtf(float noundef %250) #15
  %252 = fmul float %251, 5.000000e-01
  %253 = fcmp ugt float %252, -1.000000e+00
  br i1 %253, label %254, label %258

254:                                              ; preds = %241
  %255 = fcmp ult float %252, 1.000000e+00
  br i1 %255, label %256, label %258

256:                                              ; preds = %254
  %257 = tail call float @asinf(float noundef %252) #15
  br label %258

258:                                              ; preds = %256, %254, %241
  %259 = phi float [ %257, %256 ], [ 0xBFF921FB60000000, %241 ], [ 0x3FF921FB60000000, %254 ]
  %260 = tail call float @llvm.fmuladd.f32(float %259, float -2.000000e+00, float 0x400921FB60000000)
  br label %261

261:                                              ; preds = %226, %236, %238, %258
  %262 = phi float [ %260, %258 ], [ %240, %238 ], [ 0xC00921FB60000000, %226 ], [ 0x400921FB60000000, %236 ]
  %263 = fsub float 0x400921FB60000000, %262
  %264 = getelementptr inbounds float, ptr %0, i64 3
  store float %263, ptr %264, align 4, !tbaa !34
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @angle_poly_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #15
  %5 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2
  %6 = sext i32 %2 to i64
  %7 = getelementptr ptr, ptr %1, i64 %6
  %8 = getelementptr ptr, ptr %7, i64 -1
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = load ptr, ptr %1, align 8, !tbaa !39
  %11 = load float, ptr %9, align 4, !tbaa !34
  %12 = load float, ptr %10, align 4, !tbaa !34
  %13 = fsub float %11, %12
  store float %13, ptr %5, align 8, !tbaa !34
  %14 = getelementptr inbounds float, ptr %9, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %10, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fsub float %15, %17
  %19 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 1
  store float %18, ptr %19, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %9, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = getelementptr inbounds float, ptr %10, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = fsub float %21, %23
  %25 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 2
  store float %24, ptr %25, align 16, !tbaa !34
  %26 = fmul float %18, %18
  %27 = tail call float @llvm.fmuladd.f32(float %13, float %13, float %26)
  %28 = tail call float @llvm.fmuladd.f32(float %24, float %24, float %27)
  %29 = fcmp ogt float %28, 0x38AA95A5C0000000
  br i1 %29, label %30, label %36

30:                                               ; preds = %3
  %31 = tail call float @sqrtf(float noundef %28) #15
  %32 = fdiv float 1.000000e+00, %31
  %33 = fmul float %13, %32
  store float %33, ptr %5, align 8, !tbaa !34
  %34 = fmul float %18, %32
  store float %34, ptr %19, align 4, !tbaa !34
  %35 = fmul float %24, %32
  br label %37

36:                                               ; preds = %3
  store float 0.000000e+00, ptr %5, align 8, !tbaa !34
  store float 0.000000e+00, ptr %19, align 4, !tbaa !34
  br label %37

37:                                               ; preds = %30, %36
  %38 = phi float [ 0.000000e+00, %36 ], [ %35, %30 ]
  store float %38, ptr %25, align 16, !tbaa !34
  %39 = icmp sgt i32 %2, 0
  br i1 %39, label %40, label %94

40:                                               ; preds = %37
  %41 = zext nneg i32 %2 to i64
  %42 = zext nneg i32 %2 to i64
  br label %43

43:                                               ; preds = %40, %83
  %44 = phi i64 [ 0, %40 ], [ %51, %83 ]
  %45 = trunc i64 %44 to i32
  %46 = urem i32 %45, 3
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 %47
  %49 = getelementptr inbounds ptr, ptr %1, i64 %44
  %50 = load ptr, ptr %49, align 8, !tbaa !39
  %51 = add nuw nsw i64 %44, 1
  %52 = icmp eq i64 %51, %41
  %53 = and i64 %51, 4294967295
  %54 = select i1 %52, i64 0, i64 %53
  %55 = getelementptr inbounds ptr, ptr %1, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !39
  %57 = load float, ptr %50, align 4, !tbaa !34
  %58 = load float, ptr %56, align 4, !tbaa !34
  %59 = fsub float %57, %58
  store float %59, ptr %48, align 4, !tbaa !34
  %60 = getelementptr inbounds float, ptr %50, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !34
  %62 = getelementptr inbounds float, ptr %56, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !34
  %64 = fsub float %61, %63
  %65 = getelementptr inbounds float, ptr %48, i64 1
  store float %64, ptr %65, align 4, !tbaa !34
  %66 = getelementptr inbounds float, ptr %50, i64 2
  %67 = load float, ptr %66, align 4, !tbaa !34
  %68 = getelementptr inbounds float, ptr %56, i64 2
  %69 = load float, ptr %68, align 4, !tbaa !34
  %70 = fsub float %67, %69
  %71 = getelementptr inbounds float, ptr %48, i64 2
  store float %70, ptr %71, align 4, !tbaa !34
  %72 = fmul float %64, %64
  %73 = tail call float @llvm.fmuladd.f32(float %59, float %59, float %72)
  %74 = tail call float @llvm.fmuladd.f32(float %70, float %70, float %73)
  %75 = fcmp ogt float %74, 0x38AA95A5C0000000
  br i1 %75, label %76, label %82

76:                                               ; preds = %43
  %77 = tail call float @sqrtf(float noundef %74) #15
  %78 = fdiv float 1.000000e+00, %77
  %79 = fmul float %59, %78
  store float %79, ptr %48, align 4, !tbaa !34
  %80 = fmul float %64, %78
  store float %80, ptr %65, align 4, !tbaa !34
  %81 = fmul float %70, %78
  br label %83

82:                                               ; preds = %43
  store float 0.000000e+00, ptr %48, align 4, !tbaa !34
  store float 0.000000e+00, ptr %65, align 4, !tbaa !34
  br label %83

83:                                               ; preds = %76, %82
  %84 = phi float [ 0.000000e+00, %82 ], [ %81, %76 ]
  store float %84, ptr %71, align 4, !tbaa !34
  %85 = trunc i64 %44 to i32
  %86 = add i32 %85, 2
  %87 = urem i32 %86, 3
  %88 = zext nneg i32 %87 to i64
  %89 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 %88
  %90 = call float @angle_normalized_v3v3(ptr noundef nonnull %89, ptr noundef nonnull %48)
  %91 = fsub float 0x400921FB60000000, %90
  %92 = getelementptr inbounds float, ptr %0, i64 %44
  store float %91, ptr %92, align 4, !tbaa !34
  %93 = icmp eq i64 %51, %42
  br i1 %93, label %94, label %43, !llvm.loop !41

94:                                               ; preds = %83, %37
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @project_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %2, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fmul float %7, %9
  %11 = tail call float @llvm.fmuladd.f32(float %4, float %5, float %10)
  %12 = fmul float %9, %9
  %13 = tail call float @llvm.fmuladd.f32(float %5, float %5, float %12)
  %14 = fdiv float %11, %13
  %15 = fmul float %5, %14
  store float %15, ptr %0, align 4, !tbaa !34
  %16 = load float, ptr %8, align 4, !tbaa !34
  %17 = fmul float %16, %14
  %18 = getelementptr inbounds float, ptr %0, i64 1
  store float %17, ptr %18, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @project_v3_plane(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load float, ptr %0, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fsub float %4, %5
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %2, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fsub float %13, %15
  %17 = load float, ptr %1, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %1, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fmul float %11, %19
  %21 = tail call float @llvm.fmuladd.f32(float %6, float %17, float %20)
  %22 = getelementptr inbounds float, ptr %1, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = tail call float @llvm.fmuladd.f32(float %16, float %23, float %21)
  %25 = fmul float %19, %19
  %26 = tail call float @llvm.fmuladd.f32(float %17, float %17, float %25)
  %27 = tail call float @llvm.fmuladd.f32(float %23, float %23, float %26)
  %28 = fdiv float %24, %27
  %29 = fmul float %17, %28
  %30 = fmul float %19, %28
  %31 = fmul float %23, %28
  %32 = fsub float %4, %29
  store float %32, ptr %0, align 4, !tbaa !34
  %33 = fsub float %8, %30
  store float %33, ptr %7, align 4, !tbaa !34
  %34 = fsub float %13, %31
  store float %34, ptr %12, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @bisect_v3_v3v3v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #5 {
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = fsub float %5, %6
  %8 = getelementptr inbounds float, ptr %2, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fsub float %9, %11
  %13 = getelementptr inbounds float, ptr %2, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %1, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fsub float %14, %16
  %18 = load float, ptr %3, align 4, !tbaa !34
  %19 = fsub float %18, %5
  %20 = getelementptr inbounds float, ptr %3, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fsub float %21, %9
  %23 = getelementptr inbounds float, ptr %3, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fsub float %24, %14
  %26 = fmul float %12, %12
  %27 = tail call float @llvm.fmuladd.f32(float %7, float %7, float %26)
  %28 = tail call float @llvm.fmuladd.f32(float %17, float %17, float %27)
  %29 = fcmp ogt float %28, 0x38AA95A5C0000000
  br i1 %29, label %30, label %36

30:                                               ; preds = %4
  %31 = tail call float @sqrtf(float noundef %28) #15
  %32 = fdiv float 1.000000e+00, %31
  %33 = fmul float %7, %32
  %34 = fmul float %12, %32
  %35 = fmul float %17, %32
  br label %36

36:                                               ; preds = %4, %30
  %37 = phi float [ %34, %30 ], [ 0.000000e+00, %4 ]
  %38 = phi float [ %33, %30 ], [ 0.000000e+00, %4 ]
  %39 = phi float [ %35, %30 ], [ 0.000000e+00, %4 ]
  %40 = fmul float %22, %22
  %41 = tail call float @llvm.fmuladd.f32(float %19, float %19, float %40)
  %42 = tail call float @llvm.fmuladd.f32(float %25, float %25, float %41)
  %43 = fcmp ogt float %42, 0x38AA95A5C0000000
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = tail call float @sqrtf(float noundef %42) #15
  %46 = fdiv float 1.000000e+00, %45
  %47 = fmul float %19, %46
  %48 = fmul float %22, %46
  %49 = fmul float %25, %46
  br label %50

50:                                               ; preds = %36, %44
  %51 = phi float [ %48, %44 ], [ 0.000000e+00, %36 ]
  %52 = phi float [ %47, %44 ], [ 0.000000e+00, %36 ]
  %53 = phi float [ %49, %44 ], [ 0.000000e+00, %36 ]
  %54 = fadd float %38, %52
  store float %54, ptr %0, align 4, !tbaa !34
  %55 = fadd float %37, %51
  %56 = getelementptr inbounds float, ptr %0, i64 1
  store float %55, ptr %56, align 4, !tbaa !34
  %57 = fadd float %39, %53
  %58 = getelementptr inbounds float, ptr %0, i64 2
  store float %57, ptr %58, align 4, !tbaa !34
  %59 = fmul float %55, %55
  %60 = tail call float @llvm.fmuladd.f32(float %54, float %54, float %59)
  %61 = tail call float @llvm.fmuladd.f32(float %57, float %57, float %60)
  %62 = fcmp ogt float %61, 0x38AA95A5C0000000
  br i1 %62, label %63, label %72

63:                                               ; preds = %50
  %64 = tail call float @sqrtf(float noundef %61) #15
  %65 = fdiv float 1.000000e+00, %64
  %66 = load float, ptr %0, align 4, !tbaa !34
  %67 = fmul float %66, %65
  store float %67, ptr %0, align 4, !tbaa !34
  %68 = load float, ptr %56, align 4, !tbaa !34
  %69 = fmul float %65, %68
  store float %69, ptr %56, align 4, !tbaa !34
  %70 = load float, ptr %58, align 4, !tbaa !34
  %71 = fmul float %65, %70
  br label %73

72:                                               ; preds = %50
  store float 0.000000e+00, ptr %0, align 4, !tbaa !34
  store float 0.000000e+00, ptr %56, align 4, !tbaa !34
  br label %73

73:                                               ; preds = %63, %72
  %74 = phi float [ 0.000000e+00, %72 ], [ %71, %63 ]
  store float %74, ptr %58, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @reflect_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %2, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fmul float %7, %9
  %11 = tail call float @llvm.fmuladd.f32(float %4, float %5, float %10)
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %2, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %15, float %11)
  %17 = fmul float %16, -2.000000e+00
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %5, float %4)
  store float %18, ptr %0, align 4, !tbaa !34
  %19 = load float, ptr %6, align 4, !tbaa !34
  %20 = load float, ptr %8, align 4, !tbaa !34
  %21 = tail call float @llvm.fmuladd.f32(float %17, float %20, float %19)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !34
  %23 = load float, ptr %12, align 4, !tbaa !34
  %24 = load float, ptr %14, align 4, !tbaa !34
  %25 = tail call float @llvm.fmuladd.f32(float %17, float %24, float %23)
  %26 = getelementptr inbounds float, ptr %0, i64 2
  store float %25, ptr %26, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @ortho_basis_v3v3_v3(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #5 {
  %4 = load float, ptr %2, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %2, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fmul float %6, %6
  %8 = tail call float @llvm.fmuladd.f32(float %4, float %4, float %7)
  %9 = fcmp ogt float %8, 0x3E80000000000000
  br i1 %9, label %10, label %35

10:                                               ; preds = %3
  %11 = tail call float @sqrtf(float noundef %8) #15
  %12 = fdiv float 1.000000e+00, %11
  %13 = load float, ptr %5, align 4, !tbaa !34
  %14 = fmul float %13, %12
  store float %14, ptr %0, align 4, !tbaa !34
  %15 = load float, ptr %2, align 4, !tbaa !34
  %16 = fneg float %15
  %17 = fmul float %12, %16
  %18 = getelementptr inbounds float, ptr %0, i64 1
  store float %17, ptr %18, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %19, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %2, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fneg float %21
  %23 = fmul float %17, %22
  store float %23, ptr %1, align 4, !tbaa !34
  %24 = load float, ptr %20, align 4, !tbaa !34
  %25 = load float, ptr %0, align 4, !tbaa !34
  %26 = fmul float %24, %25
  %27 = getelementptr inbounds float, ptr %1, i64 1
  store float %26, ptr %27, align 4, !tbaa !34
  %28 = load float, ptr %2, align 4, !tbaa !34
  %29 = load float, ptr %18, align 4, !tbaa !34
  %30 = load float, ptr %5, align 4, !tbaa !34
  %31 = load float, ptr %0, align 4, !tbaa !34
  %32 = fneg float %30
  %33 = fmul float %31, %32
  %34 = tail call float @llvm.fmuladd.f32(float %28, float %29, float %33)
  br label %43

35:                                               ; preds = %3
  %36 = getelementptr inbounds float, ptr %2, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !34
  %38 = fcmp olt float %37, 0.000000e+00
  %39 = select i1 %38, float -1.000000e+00, float 1.000000e+00
  store float %39, ptr %0, align 4, !tbaa !34
  %40 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %40, align 4, !tbaa !34
  store float 0.000000e+00, ptr %1, align 4, !tbaa !34
  %41 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %41, align 4, !tbaa !34
  %42 = getelementptr inbounds float, ptr %0, i64 1
  store float 0.000000e+00, ptr %42, align 4, !tbaa !34
  br label %43

43:                                               ; preds = %35, %10
  %44 = phi i64 [ 1, %35 ], [ 2, %10 ]
  %45 = phi float [ 1.000000e+00, %35 ], [ %34, %10 ]
  %46 = getelementptr inbounds float, ptr %1, i64 %44
  store float %45, ptr %46, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @rotate_normalized_v3_v3v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #5 {
  %5 = tail call float @cosf(float noundef %3) #15
  %6 = tail call float @sinf(float noundef %3) #15
  %7 = fsub float 1.000000e+00, %5
  %8 = load float, ptr %2, align 4, !tbaa !34
  %9 = fmul float %7, %8
  %10 = tail call float @llvm.fmuladd.f32(float %9, float %8, float %5)
  %11 = load float, ptr %1, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %2, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %2, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fneg float %15
  %17 = fmul float %6, %16
  %18 = tail call float @llvm.fmuladd.f32(float %9, float %13, float %17)
  %19 = getelementptr inbounds float, ptr %1, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fmul float %20, %18
  %22 = tail call float @llvm.fmuladd.f32(float %10, float %11, float %21)
  %23 = fmul float %6, %13
  %24 = tail call float @llvm.fmuladd.f32(float %9, float %15, float %23)
  %25 = getelementptr inbounds float, ptr %1, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = tail call float @llvm.fmuladd.f32(float %24, float %26, float %22)
  store float %27, ptr %0, align 4, !tbaa !34
  %28 = load float, ptr %2, align 4, !tbaa !34
  %29 = fmul float %7, %28
  %30 = load float, ptr %12, align 4, !tbaa !34
  %31 = load float, ptr %14, align 4, !tbaa !34
  %32 = fmul float %6, %31
  %33 = tail call float @llvm.fmuladd.f32(float %29, float %30, float %32)
  %34 = load float, ptr %1, align 4, !tbaa !34
  %35 = fmul float %7, %30
  %36 = tail call float @llvm.fmuladd.f32(float %35, float %30, float %5)
  %37 = load float, ptr %19, align 4, !tbaa !34
  %38 = fmul float %36, %37
  %39 = tail call float @llvm.fmuladd.f32(float %33, float %34, float %38)
  %40 = fneg float %28
  %41 = fmul float %6, %40
  %42 = tail call float @llvm.fmuladd.f32(float %35, float %31, float %41)
  %43 = load float, ptr %25, align 4, !tbaa !34
  %44 = tail call float @llvm.fmuladd.f32(float %42, float %43, float %39)
  %45 = getelementptr inbounds float, ptr %0, i64 1
  store float %44, ptr %45, align 4, !tbaa !34
  %46 = load float, ptr %2, align 4, !tbaa !34
  %47 = fmul float %7, %46
  %48 = load float, ptr %14, align 4, !tbaa !34
  %49 = load float, ptr %12, align 4, !tbaa !34
  %50 = fneg float %49
  %51 = fmul float %6, %50
  %52 = tail call float @llvm.fmuladd.f32(float %47, float %48, float %51)
  %53 = load float, ptr %1, align 4, !tbaa !34
  %54 = fmul float %7, %49
  %55 = fmul float %6, %46
  %56 = tail call float @llvm.fmuladd.f32(float %54, float %48, float %55)
  %57 = load float, ptr %19, align 4, !tbaa !34
  %58 = fmul float %56, %57
  %59 = tail call float @llvm.fmuladd.f32(float %52, float %53, float %58)
  %60 = fmul float %7, %48
  %61 = tail call float @llvm.fmuladd.f32(float %60, float %48, float %5)
  %62 = load float, ptr %25, align 4, !tbaa !34
  %63 = tail call float @llvm.fmuladd.f32(float %61, float %62, float %59)
  %64 = getelementptr inbounds float, ptr %0, i64 2
  store float %63, ptr %64, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @rotate_v3_v3v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #5 {
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %2, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fmul float %7, %7
  %9 = tail call float @llvm.fmuladd.f32(float %5, float %5, float %8)
  %10 = getelementptr inbounds float, ptr %2, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %11, float %9)
  %13 = fcmp ogt float %12, 0x38AA95A5C0000000
  br i1 %13, label %14, label %23

14:                                               ; preds = %4
  %15 = tail call float @sqrtf(float noundef %12) #15
  %16 = fdiv float 1.000000e+00, %15
  %17 = load float, ptr %2, align 4, !tbaa !34
  %18 = fmul float %17, %16
  %19 = load float, ptr %6, align 4, !tbaa !34
  %20 = fmul float %16, %19
  %21 = load float, ptr %10, align 4, !tbaa !34
  %22 = fmul float %16, %21
  br label %23

23:                                               ; preds = %4, %14
  %24 = phi float [ %22, %14 ], [ 0.000000e+00, %4 ]
  %25 = phi float [ %20, %14 ], [ 0.000000e+00, %4 ]
  %26 = phi float [ %18, %14 ], [ 0.000000e+00, %4 ]
  %27 = tail call float @cosf(float noundef %3) #15
  %28 = tail call float @sinf(float noundef %3) #15
  %29 = fsub float 1.000000e+00, %27
  %30 = fmul float %26, %29
  %31 = tail call float @llvm.fmuladd.f32(float %30, float %26, float %27)
  %32 = load float, ptr %1, align 4, !tbaa !34
  %33 = fneg float %24
  %34 = fmul float %28, %33
  %35 = tail call float @llvm.fmuladd.f32(float %30, float %25, float %34)
  %36 = getelementptr inbounds float, ptr %1, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !34
  %38 = fmul float %37, %35
  %39 = tail call float @llvm.fmuladd.f32(float %31, float %32, float %38)
  %40 = fmul float %25, %28
  %41 = tail call float @llvm.fmuladd.f32(float %30, float %24, float %40)
  %42 = getelementptr inbounds float, ptr %1, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !34
  %44 = tail call float @llvm.fmuladd.f32(float %41, float %43, float %39)
  store float %44, ptr %0, align 4, !tbaa !34
  %45 = fmul float %24, %28
  %46 = tail call float @llvm.fmuladd.f32(float %30, float %25, float %45)
  %47 = load float, ptr %1, align 4, !tbaa !34
  %48 = fmul float %25, %29
  %49 = tail call float @llvm.fmuladd.f32(float %48, float %25, float %27)
  %50 = load float, ptr %36, align 4, !tbaa !34
  %51 = fmul float %49, %50
  %52 = tail call float @llvm.fmuladd.f32(float %46, float %47, float %51)
  %53 = fneg float %26
  %54 = fmul float %28, %53
  %55 = tail call float @llvm.fmuladd.f32(float %48, float %24, float %54)
  %56 = load float, ptr %42, align 4, !tbaa !34
  %57 = tail call float @llvm.fmuladd.f32(float %55, float %56, float %52)
  %58 = getelementptr inbounds float, ptr %0, i64 1
  store float %57, ptr %58, align 4, !tbaa !34
  %59 = fneg float %25
  %60 = fmul float %28, %59
  %61 = tail call float @llvm.fmuladd.f32(float %30, float %24, float %60)
  %62 = load float, ptr %1, align 4, !tbaa !34
  %63 = fmul float %26, %28
  %64 = tail call float @llvm.fmuladd.f32(float %48, float %24, float %63)
  %65 = load float, ptr %36, align 4, !tbaa !34
  %66 = fmul float %64, %65
  %67 = tail call float @llvm.fmuladd.f32(float %61, float %62, float %66)
  %68 = fmul float %24, %29
  %69 = tail call float @llvm.fmuladd.f32(float %68, float %24, float %27)
  %70 = load float, ptr %42, align 4, !tbaa !34
  %71 = tail call float @llvm.fmuladd.f32(float %69, float %70, float %67)
  %72 = getelementptr inbounds float, ptr %0, i64 2
  store float %71, ptr %72, align 4, !tbaa !34
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @print_v2(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = fpext float %3 to double
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fpext float %6 to double
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %0, double noundef %4, double noundef %7)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define dso_local void @print_v3(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = fpext float %3 to double
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fpext float %6 to double
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fpext float %9 to double
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %0, double noundef %4, double noundef %7, double noundef %10)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @print_v4(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = fpext float %3 to double
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fpext float %6 to double
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fpext float %9 to double
  %11 = getelementptr inbounds float, ptr %1, i64 3
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fpext float %12 to double
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %0, double noundef %4, double noundef %7, double noundef %10, double noundef %13)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @print_vn(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %0, i32 noundef %2)
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %3
  %7 = zext nneg i32 %2 to i64
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %10, %8 ]
  %10 = add nuw nsw i64 %9, 1
  %11 = getelementptr inbounds float, ptr %1, i64 %9
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fpext float %12 to double
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %13)
  %15 = icmp eq i64 %10, %7
  br i1 %15, label %16, label %8, !llvm.loop !44

16:                                               ; preds = %8, %3
  %17 = tail call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @minmax_v3v3_v3(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load float, ptr %0, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fcmp ogt float %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store float %5, ptr %0, align 4, !tbaa !34
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %2, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fcmp ogt float %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store float %12, ptr %9, align 4, !tbaa !34
  br label %15

15:                                               ; preds = %14, %8
  %16 = getelementptr inbounds float, ptr %0, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %2, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fcmp ogt float %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store float %19, ptr %16, align 4, !tbaa !34
  br label %22

22:                                               ; preds = %21, %15
  %23 = load float, ptr %1, align 4, !tbaa !34
  %24 = load float, ptr %2, align 4, !tbaa !34
  %25 = fcmp olt float %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store float %24, ptr %1, align 4, !tbaa !34
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds float, ptr %1, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = load float, ptr %11, align 4, !tbaa !34
  %31 = fcmp olt float %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store float %30, ptr %28, align 4, !tbaa !34
  br label %33

33:                                               ; preds = %32, %27
  %34 = getelementptr inbounds float, ptr %1, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = load float, ptr %18, align 4, !tbaa !34
  %37 = fcmp olt float %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store float %36, ptr %34, align 4, !tbaa !34
  br label %39

39:                                               ; preds = %38, %33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @minmax_v2v2_v2(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load float, ptr %0, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fcmp ogt float %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store float %5, ptr %0, align 4, !tbaa !34
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %2, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fcmp ogt float %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store float %12, ptr %9, align 4, !tbaa !34
  br label %15

15:                                               ; preds = %14, %8
  %16 = load float, ptr %1, align 4, !tbaa !34
  %17 = load float, ptr %2, align 4, !tbaa !34
  %18 = fcmp olt float %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store float %17, ptr %1, align 4, !tbaa !34
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds float, ptr %1, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = load float, ptr %11, align 4, !tbaa !34
  %24 = fcmp olt float %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store float %23, ptr %21, align 4, !tbaa !34
  br label %26

26:                                               ; preds = %25, %20
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @dist_ensure_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) local_unnamed_addr #5 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %0, align 4, !tbaa !34
  %6 = fcmp oeq float %4, %5
  br i1 %6, label %7, label %19

7:                                                ; preds = %3
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fcmp oeq float %9, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %0, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fcmp une float %15, %17
  br i1 %18, label %19, label %51

19:                                               ; preds = %7, %3, %13
  %20 = fsub float %5, %4
  %21 = getelementptr inbounds float, ptr %0, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = getelementptr inbounds float, ptr %1, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fsub float %22, %24
  %26 = getelementptr inbounds float, ptr %0, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = getelementptr inbounds float, ptr %1, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = fsub float %27, %29
  %31 = fmul float %25, %25
  %32 = tail call float @llvm.fmuladd.f32(float %20, float %20, float %31)
  %33 = tail call float @llvm.fmuladd.f32(float %30, float %30, float %32)
  %34 = fcmp ogt float %33, 0x38AA95A5C0000000
  br i1 %34, label %35, label %41

35:                                               ; preds = %19
  %36 = tail call float @sqrtf(float noundef %33) #15
  %37 = fdiv float 1.000000e+00, %36
  %38 = fmul float %20, %37
  %39 = fmul float %25, %37
  %40 = fmul float %30, %37
  br label %41

41:                                               ; preds = %19, %35
  %42 = phi float [ %39, %35 ], [ 0.000000e+00, %19 ]
  %43 = phi float [ %38, %35 ], [ 0.000000e+00, %19 ]
  %44 = phi float [ %40, %35 ], [ 0.000000e+00, %19 ]
  %45 = load float, ptr %1, align 4, !tbaa !34
  %46 = tail call float @llvm.fmuladd.f32(float %43, float %2, float %45)
  store float %46, ptr %0, align 4, !tbaa !34
  %47 = load float, ptr %23, align 4, !tbaa !34
  %48 = tail call float @llvm.fmuladd.f32(float %42, float %2, float %47)
  store float %48, ptr %21, align 4, !tbaa !34
  %49 = load float, ptr %28, align 4, !tbaa !34
  %50 = tail call float @llvm.fmuladd.f32(float %44, float %2, float %49)
  store float %50, ptr %26, align 4, !tbaa !34
  br label %51

51:                                               ; preds = %41, %13
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @dist_ensure_v2_v2fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) local_unnamed_addr #5 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %0, align 4, !tbaa !34
  %6 = fcmp oeq float %4, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fcmp une float %9, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %3, %7
  %14 = fsub float %5, %4
  %15 = getelementptr inbounds float, ptr %0, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %1, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fsub float %16, %18
  %20 = fmul float %19, %19
  %21 = tail call float @llvm.fmuladd.f32(float %14, float %14, float %20)
  %22 = fcmp ogt float %21, 0x38AA95A5C0000000
  br i1 %22, label %23, label %28

23:                                               ; preds = %13
  %24 = tail call float @sqrtf(float noundef %21) #15
  %25 = fdiv float 1.000000e+00, %24
  %26 = fmul float %14, %25
  %27 = fmul float %19, %25
  br label %28

28:                                               ; preds = %13, %23
  %29 = phi float [ %26, %23 ], [ 0.000000e+00, %13 ]
  %30 = phi float [ %27, %23 ], [ 0.000000e+00, %13 ]
  %31 = load float, ptr %1, align 4, !tbaa !34
  %32 = tail call float @llvm.fmuladd.f32(float %29, float %2, float %31)
  store float %32, ptr %0, align 4, !tbaa !34
  %33 = load float, ptr %17, align 4, !tbaa !34
  %34 = tail call float @llvm.fmuladd.f32(float %30, float %2, float %33)
  store float %34, ptr %15, align 4, !tbaa !34
  br label %35

35:                                               ; preds = %28, %7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @axis_sort_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fcmp olt float %3, %5
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = fcmp olt float %7, %3
  br i1 %10, label %11, label %24

11:                                               ; preds = %9
  %12 = load i32, ptr %1, align 4, !tbaa !45
  %13 = getelementptr inbounds i32, ptr %1, i64 2
  %14 = load i32, ptr %13, align 4, !tbaa !45
  store i32 %14, ptr %1, align 4, !tbaa !45
  store i32 %12, ptr %13, align 4, !tbaa !45
  br label %24

15:                                               ; preds = %2
  %16 = fcmp olt float %5, %7
  %17 = load i32, ptr %1, align 4, !tbaa !45
  br i1 %16, label %18, label %21

18:                                               ; preds = %15
  %19 = getelementptr inbounds i32, ptr %1, i64 1
  %20 = load i32, ptr %19, align 4, !tbaa !45
  store i32 %20, ptr %1, align 4, !tbaa !45
  store i32 %17, ptr %19, align 4, !tbaa !45
  br label %24

21:                                               ; preds = %15
  %22 = getelementptr inbounds i32, ptr %1, i64 2
  %23 = load i32, ptr %22, align 4, !tbaa !45
  store i32 %23, ptr %1, align 4, !tbaa !45
  store i32 %17, ptr %22, align 4, !tbaa !45
  br label %24

24:                                               ; preds = %18, %21, %9, %11
  %25 = phi float [ %3, %11 ], [ %7, %9 ], [ %7, %18 ], [ %3, %21 ]
  %26 = phi float [ %5, %11 ], [ %5, %9 ], [ %3, %18 ], [ %5, %21 ]
  %27 = fcmp olt float %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = getelementptr inbounds i32, ptr %1, i64 1
  %30 = load i32, ptr %29, align 4, !tbaa !45
  %31 = getelementptr inbounds i32, ptr %1, i64 2
  %32 = load i32, ptr %31, align 4, !tbaa !45
  store i32 %32, ptr %29, align 4, !tbaa !45
  store i32 %30, ptr %31, align 4, !tbaa !45
  br label %33

33:                                               ; preds = %28, %24
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local double @dot_vn_vn(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #10 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %24, label %5

5:                                                ; preds = %3
  %6 = add nsw i32 %2, -1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = getelementptr inbounds float, ptr %0, i64 %7
  br label %10

10:                                               ; preds = %5, %10
  %11 = phi i32 [ %15, %10 ], [ %2, %5 ]
  %12 = phi ptr [ %18, %10 ], [ %8, %5 ]
  %13 = phi ptr [ %16, %10 ], [ %9, %5 ]
  %14 = phi double [ %22, %10 ], [ 0.000000e+00, %5 ]
  %15 = add nsw i32 %11, -1
  %16 = getelementptr inbounds float, ptr %13, i64 -1
  %17 = load float, ptr %13, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %12, i64 -1
  %19 = load float, ptr %12, align 4, !tbaa !34
  %20 = fmul float %17, %19
  %21 = fpext float %20 to double
  %22 = fadd double %14, %21
  %23 = icmp eq i32 %15, 0
  br i1 %23, label %24, label %10, !llvm.loop !47

24:                                               ; preds = %10, %3
  %25 = phi double [ 0.000000e+00, %3 ], [ %22, %10 ]
  ret double %25
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local double @len_squared_vn(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = sext i32 %1 to i64
  %6 = getelementptr float, ptr %0, i64 %5
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %12, %7 ], [ %1, %4 ]
  %9 = phi ptr [ %11, %7 ], [ %6, %4 ]
  %10 = phi double [ %16, %7 ], [ 0.000000e+00, %4 ]
  %11 = getelementptr inbounds float, ptr %9, i64 -1
  %12 = add nsw i32 %8, -1
  %13 = load float, ptr %11, align 4, !tbaa !34
  %14 = fpext float %13 to double
  %15 = fmul double %14, %14
  %16 = fadd double %10, %15
  %17 = icmp eq i32 %12, 0
  br i1 %17, label %18, label %7, !llvm.loop !48

18:                                               ; preds = %7, %2
  %19 = phi double [ 0.000000e+00, %2 ], [ %16, %7 ]
  ret double %19
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local float @normalize_vn_vn(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = sext i32 %2 to i64
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %3
  %7 = getelementptr float, ptr %1, i64 %4
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i32 [ %13, %8 ], [ %2, %6 ]
  %10 = phi ptr [ %12, %8 ], [ %7, %6 ]
  %11 = phi double [ %17, %8 ], [ 0.000000e+00, %6 ]
  %12 = getelementptr inbounds float, ptr %10, i64 -1
  %13 = add nsw i32 %9, -1
  %14 = load float, ptr %12, align 4, !tbaa !34
  %15 = fpext float %14 to double
  %16 = fmul double %15, %15
  %17 = fadd double %11, %16
  %18 = icmp eq i32 %13, 0
  br i1 %18, label %19, label %8, !llvm.loop !48

19:                                               ; preds = %8, %3
  %20 = phi double [ 0.000000e+00, %3 ], [ %17, %8 ]
  %21 = fcmp ogt double %20, 1.000000e-35
  br i1 %21, label %22, label %42

22:                                               ; preds = %19
  %23 = tail call double @sqrt(double noundef %20) #15
  %24 = fptrunc double %23 to float
  %25 = fdiv float 1.000000e+00, %24
  %26 = icmp eq i32 %2, 0
  br i1 %26, label %54, label %27

27:                                               ; preds = %22
  %28 = add nsw i32 %2, -1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, ptr %1, i64 %29
  %31 = getelementptr inbounds float, ptr %0, i64 %29
  br label %32

32:                                               ; preds = %27, %32
  %33 = phi i32 [ %36, %32 ], [ %2, %27 ]
  %34 = phi ptr [ %37, %32 ], [ %30, %27 ]
  %35 = phi ptr [ %40, %32 ], [ %31, %27 ]
  %36 = add nsw i32 %33, -1
  %37 = getelementptr inbounds float, ptr %34, i64 -1
  %38 = load float, ptr %34, align 4, !tbaa !34
  %39 = fmul float %25, %38
  %40 = getelementptr inbounds float, ptr %35, i64 -1
  store float %39, ptr %35, align 4, !tbaa !34
  %41 = icmp eq i32 %36, 0
  br i1 %41, label %54, label %32, !llvm.loop !49

42:                                               ; preds = %19
  %43 = icmp eq i32 %2, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %42
  %45 = shl nsw i64 %4, 2
  %46 = add nsw i64 %45, -4
  %47 = add i32 %2, -1
  %48 = zext i32 %47 to i64
  %49 = shl nuw nsw i64 %48, 2
  %50 = sub nsw i64 %46, %49
  %51 = getelementptr i8, ptr %0, i64 %50
  %52 = zext i32 %2 to i64
  %53 = shl nuw nsw i64 %52, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %51, i8 0, i64 %53, i1 false), !tbaa !34
  br label %54

54:                                               ; preds = %32, %44, %42, %22
  %55 = phi float [ %24, %22 ], [ 0.000000e+00, %42 ], [ 0.000000e+00, %44 ], [ %24, %32 ]
  ret float %55
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @mul_vn_vn_fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, float noundef %3) local_unnamed_addr #11 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %4
  %7 = add nsw i32 %2, -1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds float, ptr %1, i64 %8
  %10 = getelementptr inbounds float, ptr %0, i64 %8
  br label %11

11:                                               ; preds = %6, %11
  %12 = phi i32 [ %15, %11 ], [ %2, %6 ]
  %13 = phi ptr [ %16, %11 ], [ %9, %6 ]
  %14 = phi ptr [ %19, %11 ], [ %10, %6 ]
  %15 = add nsw i32 %12, -1
  %16 = getelementptr inbounds float, ptr %13, i64 -1
  %17 = load float, ptr %13, align 4, !tbaa !34
  %18 = fmul float %17, %3
  %19 = getelementptr inbounds float, ptr %14, i64 -1
  store float %18, ptr %14, align 4, !tbaa !34
  %20 = icmp eq i32 %15, 0
  br i1 %20, label %21, label %11, !llvm.loop !49

21:                                               ; preds = %11, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define dso_local void @fill_vn_fl(ptr nocapture noundef writeonly %0, i32 noundef %1, float noundef %2) local_unnamed_addr #12 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %3
  %6 = sext i32 %1 to i64
  %7 = getelementptr float, ptr %0, i64 %6
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i32 [ %12, %8 ], [ %1, %5 ]
  %10 = phi ptr [ %11, %8 ], [ %7, %5 ]
  %11 = getelementptr inbounds float, ptr %10, i64 -1
  %12 = add nsw i32 %9, -1
  store float %2, ptr %11, align 4, !tbaa !34
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %8, !llvm.loop !50

14:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local float @normalize_vn(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = sext i32 %1 to i64
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = getelementptr float, ptr %0, i64 %3
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ %12, %7 ], [ %1, %5 ]
  %9 = phi ptr [ %11, %7 ], [ %6, %5 ]
  %10 = phi double [ %16, %7 ], [ 0.000000e+00, %5 ]
  %11 = getelementptr inbounds float, ptr %9, i64 -1
  %12 = add nsw i32 %8, -1
  %13 = load float, ptr %11, align 4, !tbaa !34
  %14 = fpext float %13 to double
  %15 = fmul double %14, %14
  %16 = fadd double %10, %15
  %17 = icmp eq i32 %12, 0
  br i1 %17, label %18, label %7, !llvm.loop !48

18:                                               ; preds = %7, %2
  %19 = phi double [ 0.000000e+00, %2 ], [ %16, %7 ]
  %20 = fcmp ogt double %19, 1.000000e-35
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = tail call double @sqrt(double noundef %19) #15
  %23 = fptrunc double %22 to float
  %24 = fdiv float 1.000000e+00, %23
  br i1 %4, label %47, label %25

25:                                               ; preds = %21
  %26 = sext i32 %1 to i64
  %27 = getelementptr float, ptr %0, i64 %26
  br label %28

28:                                               ; preds = %28, %25
  %29 = phi i32 [ %32, %28 ], [ %1, %25 ]
  %30 = phi ptr [ %31, %28 ], [ %27, %25 ]
  %31 = getelementptr float, ptr %30, i64 -1
  %32 = add nsw i32 %29, -1
  %33 = load float, ptr %31, align 4, !tbaa !34
  %34 = fmul float %24, %33
  store float %34, ptr %31, align 4, !tbaa !34
  %35 = icmp eq i32 %32, 0
  br i1 %35, label %47, label %28, !llvm.loop !49

36:                                               ; preds = %18
  br i1 %4, label %47, label %37

37:                                               ; preds = %36
  %38 = shl nsw i64 %3, 2
  %39 = add nsw i64 %38, -4
  %40 = add i32 %1, -1
  %41 = zext i32 %40 to i64
  %42 = shl nuw nsw i64 %41, 2
  %43 = sub nsw i64 %39, %42
  %44 = getelementptr i8, ptr %0, i64 %43
  %45 = zext i32 %1 to i64
  %46 = shl nuw nsw i64 %45, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %44, i8 0, i64 %46, i1 false), !tbaa !34
  br label %47

47:                                               ; preds = %28, %21, %36, %37
  %48 = phi float [ %23, %21 ], [ 0.000000e+00, %36 ], [ 0.000000e+00, %37 ], [ %23, %28 ]
  ret float %48
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define dso_local void @range_vn_i(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  %6 = add nsw i32 %1, -1
  %7 = add nsw i32 %6, %2
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds i32, ptr %0, i64 %8
  br label %10

10:                                               ; preds = %5, %10
  %11 = phi i32 [ %14, %10 ], [ %1, %5 ]
  %12 = phi i32 [ %15, %10 ], [ %7, %5 ]
  %13 = phi ptr [ %16, %10 ], [ %9, %5 ]
  %14 = add nsw i32 %11, -1
  %15 = add nsw i32 %12, -1
  %16 = getelementptr inbounds i32, ptr %13, i64 -1
  store i32 %12, ptr %13, align 4, !tbaa !45
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %18, label %10, !llvm.loop !51

18:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define dso_local void @range_vn_fl(ptr nocapture noundef writeonly %0, i32 noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #12 {
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  %7 = sext i32 %1 to i64
  %8 = getelementptr float, ptr %0, i64 %7
  br label %9

9:                                                ; preds = %6, %9
  %10 = phi i32 [ %13, %9 ], [ %1, %6 ]
  %11 = phi ptr [ %12, %9 ], [ %8, %6 ]
  %12 = getelementptr inbounds float, ptr %11, i64 -1
  %13 = add nsw i32 %10, -1
  %14 = sitofp i32 %13 to float
  %15 = tail call float @llvm.fmuladd.f32(float %3, float %14, float %2)
  store float %15, ptr %12, align 4, !tbaa !34
  %16 = icmp eq i32 %13, 0
  br i1 %16, label %17, label %9, !llvm.loop !52

17:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @negate_vn(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = sext i32 %1 to i64
  %6 = getelementptr float, ptr %0, i64 %5
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %11, %7 ], [ %1, %4 ]
  %9 = phi ptr [ %10, %7 ], [ %6, %4 ]
  %10 = getelementptr inbounds float, ptr %9, i64 -1
  %11 = add nsw i32 %8, -1
  %12 = load float, ptr %10, align 4, !tbaa !34
  %13 = fneg float %12
  store float %13, ptr %10, align 4, !tbaa !34
  %14 = icmp eq i32 %11, 0
  br i1 %14, label %15, label %7, !llvm.loop !53

15:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @negate_vn_vn(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #11 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %3
  %6 = add nsw i32 %2, -1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = getelementptr inbounds float, ptr %0, i64 %7
  br label %10

10:                                               ; preds = %5, %10
  %11 = phi i32 [ %14, %10 ], [ %2, %5 ]
  %12 = phi ptr [ %15, %10 ], [ %8, %5 ]
  %13 = phi ptr [ %18, %10 ], [ %9, %5 ]
  %14 = add nsw i32 %11, -1
  %15 = getelementptr inbounds float, ptr %12, i64 -1
  %16 = load float, ptr %12, align 4, !tbaa !34
  %17 = fneg float %16
  %18 = getelementptr inbounds float, ptr %13, i64 -1
  store float %17, ptr %13, align 4, !tbaa !34
  %19 = icmp eq i32 %14, 0
  br i1 %19, label %20, label %10, !llvm.loop !54

20:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @mul_vn_fl(ptr nocapture noundef %0, i32 noundef %1, float noundef %2) local_unnamed_addr #11 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = sext i32 %1 to i64
  %7 = getelementptr float, ptr %0, i64 %6
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i32 [ %12, %8 ], [ %1, %5 ]
  %10 = phi ptr [ %11, %8 ], [ %7, %5 ]
  %11 = getelementptr inbounds float, ptr %10, i64 -1
  %12 = add nsw i32 %9, -1
  %13 = load float, ptr %11, align 4, !tbaa !34
  %14 = fmul float %13, %2
  store float %14, ptr %11, align 4, !tbaa !34
  %15 = icmp eq i32 %12, 0
  br i1 %15, label %16, label %8, !llvm.loop !55

16:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @add_vn_vn(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #11 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %3
  %6 = add nsw i32 %2, -1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = getelementptr inbounds float, ptr %0, i64 %7
  br label %10

10:                                               ; preds = %5, %10
  %11 = phi i32 [ %14, %10 ], [ %2, %5 ]
  %12 = phi ptr [ %15, %10 ], [ %8, %5 ]
  %13 = phi ptr [ %17, %10 ], [ %9, %5 ]
  %14 = add nsw i32 %11, -1
  %15 = getelementptr inbounds float, ptr %12, i64 -1
  %16 = load float, ptr %12, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %13, i64 -1
  %18 = load float, ptr %13, align 4, !tbaa !34
  %19 = fadd float %16, %18
  store float %19, ptr %13, align 4, !tbaa !34
  %20 = icmp eq i32 %14, 0
  br i1 %20, label %21, label %10, !llvm.loop !56

21:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @add_vn_vnvn(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #11 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %4
  %7 = add nsw i32 %3, -1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds float, ptr %2, i64 %8
  %10 = getelementptr inbounds float, ptr %1, i64 %8
  %11 = getelementptr inbounds float, ptr %0, i64 %8
  br label %12

12:                                               ; preds = %6, %12
  %13 = phi i32 [ %17, %12 ], [ %3, %6 ]
  %14 = phi ptr [ %20, %12 ], [ %9, %6 ]
  %15 = phi ptr [ %18, %12 ], [ %10, %6 ]
  %16 = phi ptr [ %23, %12 ], [ %11, %6 ]
  %17 = add nsw i32 %13, -1
  %18 = getelementptr inbounds float, ptr %15, i64 -1
  %19 = load float, ptr %15, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %14, i64 -1
  %21 = load float, ptr %14, align 4, !tbaa !34
  %22 = fadd float %19, %21
  %23 = getelementptr inbounds float, ptr %16, i64 -1
  store float %22, ptr %16, align 4, !tbaa !34
  %24 = icmp eq i32 %17, 0
  br i1 %24, label %25, label %12, !llvm.loop !57

25:                                               ; preds = %12, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @madd_vn_vn(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2, i32 noundef %3) local_unnamed_addr #11 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %4
  %7 = add nsw i32 %3, -1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds float, ptr %1, i64 %8
  %10 = getelementptr inbounds float, ptr %0, i64 %8
  br label %11

11:                                               ; preds = %6, %11
  %12 = phi i32 [ %15, %11 ], [ %3, %6 ]
  %13 = phi ptr [ %16, %11 ], [ %9, %6 ]
  %14 = phi ptr [ %18, %11 ], [ %10, %6 ]
  %15 = add nsw i32 %12, -1
  %16 = getelementptr inbounds float, ptr %13, i64 -1
  %17 = load float, ptr %13, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %14, i64 -1
  %19 = load float, ptr %14, align 4, !tbaa !34
  %20 = tail call float @llvm.fmuladd.f32(float %17, float %2, float %19)
  store float %20, ptr %14, align 4, !tbaa !34
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %22, label %11, !llvm.loop !58

22:                                               ; preds = %11, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @madd_vn_vnvn(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, i32 noundef %4) local_unnamed_addr #11 {
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %5
  %8 = add nsw i32 %4, -1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds float, ptr %2, i64 %9
  %11 = getelementptr inbounds float, ptr %1, i64 %9
  %12 = getelementptr inbounds float, ptr %0, i64 %9
  br label %13

13:                                               ; preds = %7, %13
  %14 = phi i32 [ %18, %13 ], [ %4, %7 ]
  %15 = phi ptr [ %21, %13 ], [ %10, %7 ]
  %16 = phi ptr [ %19, %13 ], [ %11, %7 ]
  %17 = phi ptr [ %24, %13 ], [ %12, %7 ]
  %18 = add nsw i32 %14, -1
  %19 = getelementptr inbounds float, ptr %16, i64 -1
  %20 = load float, ptr %16, align 4, !tbaa !34
  %21 = getelementptr inbounds float, ptr %15, i64 -1
  %22 = load float, ptr %15, align 4, !tbaa !34
  %23 = tail call float @llvm.fmuladd.f32(float %22, float %3, float %20)
  %24 = getelementptr inbounds float, ptr %17, i64 -1
  store float %23, ptr %17, align 4, !tbaa !34
  %25 = icmp eq i32 %18, 0
  br i1 %25, label %26, label %13, !llvm.loop !59

26:                                               ; preds = %13, %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sub_vn_vn(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #11 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %3
  %6 = add nsw i32 %2, -1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = getelementptr inbounds float, ptr %0, i64 %7
  br label %10

10:                                               ; preds = %5, %10
  %11 = phi i32 [ %14, %10 ], [ %2, %5 ]
  %12 = phi ptr [ %15, %10 ], [ %8, %5 ]
  %13 = phi ptr [ %17, %10 ], [ %9, %5 ]
  %14 = add nsw i32 %11, -1
  %15 = getelementptr inbounds float, ptr %12, i64 -1
  %16 = load float, ptr %12, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %13, i64 -1
  %18 = load float, ptr %13, align 4, !tbaa !34
  %19 = fsub float %18, %16
  store float %19, ptr %13, align 4, !tbaa !34
  %20 = icmp eq i32 %14, 0
  br i1 %20, label %21, label %10, !llvm.loop !60

21:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sub_vn_vnvn(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #11 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %4
  %7 = add nsw i32 %3, -1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds float, ptr %2, i64 %8
  %10 = getelementptr inbounds float, ptr %1, i64 %8
  %11 = getelementptr inbounds float, ptr %0, i64 %8
  br label %12

12:                                               ; preds = %6, %12
  %13 = phi i32 [ %17, %12 ], [ %3, %6 ]
  %14 = phi ptr [ %20, %12 ], [ %9, %6 ]
  %15 = phi ptr [ %18, %12 ], [ %10, %6 ]
  %16 = phi ptr [ %23, %12 ], [ %11, %6 ]
  %17 = add nsw i32 %13, -1
  %18 = getelementptr inbounds float, ptr %15, i64 -1
  %19 = load float, ptr %15, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %14, i64 -1
  %21 = load float, ptr %14, align 4, !tbaa !34
  %22 = fsub float %19, %21
  %23 = getelementptr inbounds float, ptr %16, i64 -1
  store float %22, ptr %16, align 4, !tbaa !34
  %24 = icmp eq i32 %17, 0
  br i1 %24, label %25, label %12, !llvm.loop !61

25:                                               ; preds = %12, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @msub_vn_vn(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2, i32 noundef %3) local_unnamed_addr #11 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %4
  %7 = add nsw i32 %3, -1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds float, ptr %1, i64 %8
  %10 = getelementptr inbounds float, ptr %0, i64 %8
  br label %11

11:                                               ; preds = %6, %11
  %12 = phi i32 [ %15, %11 ], [ %3, %6 ]
  %13 = phi ptr [ %16, %11 ], [ %9, %6 ]
  %14 = phi ptr [ %18, %11 ], [ %10, %6 ]
  %15 = add nsw i32 %12, -1
  %16 = getelementptr inbounds float, ptr %13, i64 -1
  %17 = load float, ptr %13, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %14, i64 -1
  %19 = load float, ptr %14, align 4, !tbaa !34
  %20 = fneg float %17
  %21 = tail call float @llvm.fmuladd.f32(float %20, float %2, float %19)
  store float %21, ptr %14, align 4, !tbaa !34
  %22 = icmp eq i32 %15, 0
  br i1 %22, label %23, label %11, !llvm.loop !62

23:                                               ; preds = %11, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @msub_vn_vnvn(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, i32 noundef %4) local_unnamed_addr #11 {
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %5
  %8 = add nsw i32 %4, -1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds float, ptr %2, i64 %9
  %11 = getelementptr inbounds float, ptr %1, i64 %9
  %12 = getelementptr inbounds float, ptr %0, i64 %9
  br label %13

13:                                               ; preds = %7, %13
  %14 = phi i32 [ %18, %13 ], [ %4, %7 ]
  %15 = phi ptr [ %21, %13 ], [ %10, %7 ]
  %16 = phi ptr [ %19, %13 ], [ %11, %7 ]
  %17 = phi ptr [ %25, %13 ], [ %12, %7 ]
  %18 = add nsw i32 %14, -1
  %19 = getelementptr inbounds float, ptr %16, i64 -1
  %20 = load float, ptr %16, align 4, !tbaa !34
  %21 = getelementptr inbounds float, ptr %15, i64 -1
  %22 = load float, ptr %15, align 4, !tbaa !34
  %23 = fneg float %22
  %24 = tail call float @llvm.fmuladd.f32(float %23, float %3, float %20)
  %25 = getelementptr inbounds float, ptr %17, i64 -1
  store float %24, ptr %17, align 4, !tbaa !34
  %26 = icmp eq i32 %18, 0
  br i1 %26, label %27, label %13, !llvm.loop !63

27:                                               ; preds = %13, %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @interp_vn_vn(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2, i32 noundef %3) local_unnamed_addr #11 {
  %5 = fsub float 1.000000e+00, %2
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %4
  %8 = add nsw i32 %3, -1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds float, ptr %1, i64 %9
  %11 = getelementptr inbounds float, ptr %0, i64 %9
  br label %12

12:                                               ; preds = %7, %12
  %13 = phi i32 [ %16, %12 ], [ %3, %7 ]
  %14 = phi ptr [ %22, %12 ], [ %10, %7 ]
  %15 = phi ptr [ %21, %12 ], [ %11, %7 ]
  %16 = add nsw i32 %13, -1
  %17 = load float, ptr %15, align 4, !tbaa !34
  %18 = load float, ptr %14, align 4, !tbaa !34
  %19 = fmul float %18, %2
  %20 = tail call float @llvm.fmuladd.f32(float %5, float %17, float %19)
  store float %20, ptr %15, align 4, !tbaa !34
  %21 = getelementptr inbounds float, ptr %15, i64 -1
  %22 = getelementptr inbounds float, ptr %14, i64 -1
  %23 = icmp eq i32 %16, 0
  br i1 %23, label %24, label %12, !llvm.loop !64

24:                                               ; preds = %12, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define dso_local void @fill_vn_i(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %3
  %6 = sext i32 %1 to i64
  %7 = getelementptr i32, ptr %0, i64 %6
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i32 [ %12, %8 ], [ %1, %5 ]
  %10 = phi ptr [ %11, %8 ], [ %7, %5 ]
  %11 = getelementptr inbounds i32, ptr %10, i64 -1
  %12 = add nsw i32 %9, -1
  store i32 %2, ptr %11, align 4, !tbaa !45
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %8, !llvm.loop !65

14:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define dso_local void @fill_vn_short(ptr nocapture noundef writeonly %0, i32 noundef %1, i16 noundef signext %2) local_unnamed_addr #12 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %3
  %6 = sext i32 %1 to i64
  %7 = getelementptr i16, ptr %0, i64 %6
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i32 [ %12, %8 ], [ %1, %5 ]
  %10 = phi ptr [ %11, %8 ], [ %7, %5 ]
  %11 = getelementptr inbounds i16, ptr %10, i64 -1
  %12 = add nsw i32 %9, -1
  store i16 %2, ptr %11, align 2, !tbaa !66
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %8, !llvm.loop !68

14:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define dso_local void @fill_vn_ushort(ptr nocapture noundef writeonly %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #12 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %3
  %6 = sext i32 %1 to i64
  %7 = getelementptr i16, ptr %0, i64 %6
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i32 [ %12, %8 ], [ %1, %5 ]
  %10 = phi ptr [ %11, %8 ], [ %7, %5 ]
  %11 = getelementptr inbounds i16, ptr %10, i64 -1
  %12 = add nsw i32 %9, -1
  store i16 %2, ptr %11, align 2, !tbaa !66
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %8, !llvm.loop !69

14:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @asinf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }

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
!38 = !{!36, !36, i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"any pointer", !36, i64 0}
!41 = distinct !{!41, !42, !43}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = distinct !{!44, !42, !43}
!45 = !{!46, !46, i64 0}
!46 = !{!"int", !36, i64 0}
!47 = distinct !{!47, !42, !43}
!48 = distinct !{!48, !42, !43}
!49 = distinct !{!49, !42, !43}
!50 = distinct !{!50, !42, !43}
!51 = distinct !{!51, !42, !43}
!52 = distinct !{!52, !42, !43}
!53 = distinct !{!53, !42, !43}
!54 = distinct !{!54, !42, !43}
!55 = distinct !{!55, !42, !43}
!56 = distinct !{!56, !42, !43}
!57 = distinct !{!57, !42, !43}
!58 = distinct !{!58, !42, !43}
!59 = distinct !{!59, !42, !43}
!60 = distinct !{!60, !42, !43}
!61 = distinct !{!61, !42, !43}
!62 = distinct !{!62, !42, !43}
!63 = distinct !{!63, !42, !43}
!64 = distinct !{!64, !42, !43}
!65 = distinct !{!65, !42, !43}
!66 = !{!67, !67, i64 0}
!67 = !{!"short", !36, i64 0}
!68 = distinct !{!68, !42, !43}
!69 = distinct !{!69, !42, !43}
