; ModuleID = 'gsmatrix.c'
source_filename = "gsmatrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_sincos_s = type { double, double }
%struct.gs_point_s = type { double, double }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_fixed_point_s = type { i64, i64 }

@gs_identity_matrix = internal unnamed_addr constant %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gs_make_identity(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(24) @gs_identity_matrix, i64 24, i1 false), !tbaa.struct !5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_make_translation(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(24) @gs_identity_matrix, i64 24, i1 false), !tbaa.struct !5
  %4 = fptrunc double %0 to float
  %5 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 4
  store float %4, ptr %5, align 4, !tbaa !10
  %6 = fptrunc double %1 to float
  %7 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 5
  store float %6, ptr %7, align 4, !tbaa !12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_make_scaling(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(24) @gs_identity_matrix, i64 24, i1 false), !tbaa.struct !5
  %4 = fptrunc double %0 to float
  store float %4, ptr %2, align 4, !tbaa !13
  %5 = fptrunc double %1 to float
  %6 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 3
  store float %5, ptr %6, align 4, !tbaa !14
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_make_rotation(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #2 {
  %3 = alloca %struct.gs_sincos_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @gs_sincos_degrees(double noundef %0, ptr noundef nonnull %3) #6
  %4 = getelementptr inbounds %struct.gs_sincos_s, ptr %3, i64 0, i32 1
  %5 = load double, ptr %4, align 8, !tbaa !15
  %6 = fptrunc double %5 to float
  store float %6, ptr %1, align 4, !tbaa !13
  %7 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 3
  store float %6, ptr %7, align 4, !tbaa !14
  %8 = load double, ptr %3, align 8, !tbaa !18
  %9 = fptrunc double %8 to float
  %10 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 1
  store float %9, ptr %10, align 4, !tbaa !19
  %11 = fneg float %9
  %12 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 2
  store float %11, ptr %12, align 4, !tbaa !20
  %13 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 5
  store float 0.000000e+00, ptr %13, align 4, !tbaa !12
  %14 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 4
  store float 0.000000e+00, ptr %14, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare void @gs_sincos_degrees(double noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_matrix_multiply(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load float, ptr %0, align 4, !tbaa !13
  %5 = fpext float %4 to double
  %6 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 3
  %7 = load float, ptr %6, align 4, !tbaa !14
  %8 = fpext float %7 to double
  %9 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 4
  %10 = load float, ptr %9, align 4, !tbaa !10
  %11 = fpext float %10 to double
  %12 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 5
  %13 = load float, ptr %12, align 4, !tbaa !12
  %14 = fpext float %13 to double
  %15 = load float, ptr %1, align 4, !tbaa !13
  %16 = fpext float %15 to double
  %17 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 3
  %18 = load float, ptr %17, align 4, !tbaa !14
  %19 = fpext float %18 to double
  %20 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 1
  %21 = load float, ptr %20, align 4, !tbaa !19
  %22 = fpext float %21 to double
  %23 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 2
  %24 = load float, ptr %23, align 4, !tbaa !20
  %25 = fpext float %24 to double
  %26 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 1
  %27 = load float, ptr %26, align 4, !tbaa !19
  %28 = fcmp oeq float %27, 0.000000e+00
  br i1 %28, label %29, label %69

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 2
  %31 = load float, ptr %30, align 4, !tbaa !20
  %32 = fcmp oeq float %31, 0.000000e+00
  br i1 %32, label %33, label %69

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 4
  %35 = load float, ptr %34, align 4, !tbaa !10
  %36 = fpext float %35 to double
  %37 = tail call double @llvm.fmuladd.f64(double %11, double %16, double %36)
  %38 = fptrunc double %37 to float
  %39 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 4
  store float %38, ptr %39, align 4, !tbaa !10
  %40 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 5
  %41 = load float, ptr %40, align 4, !tbaa !12
  %42 = fpext float %41 to double
  %43 = tail call double @llvm.fmuladd.f64(double %14, double %19, double %42)
  %44 = fptrunc double %43 to float
  %45 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 5
  store float %44, ptr %45, align 4, !tbaa !12
  %46 = fcmp oeq float %21, 0.000000e+00
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 1
  store float 0.000000e+00, ptr %48, align 4, !tbaa !19
  br label %55

49:                                               ; preds = %33
  %50 = fmul float %4, %21
  %51 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 1
  store float %50, ptr %51, align 4, !tbaa !19
  %52 = fpext float %44 to double
  %53 = tail call double @llvm.fmuladd.f64(double %11, double %22, double %52)
  %54 = fptrunc double %53 to float
  store float %54, ptr %45, align 4, !tbaa !12
  br label %55

55:                                               ; preds = %49, %47
  %56 = fmul float %4, %15
  store float %56, ptr %2, align 4, !tbaa !13
  %57 = fcmp oeq float %24, 0.000000e+00
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 2
  store float 0.000000e+00, ptr %59, align 4, !tbaa !20
  br label %66

60:                                               ; preds = %55
  %61 = fmul float %7, %24
  %62 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 2
  store float %61, ptr %62, align 4, !tbaa !20
  %63 = fpext float %38 to double
  %64 = tail call double @llvm.fmuladd.f64(double %14, double %25, double %63)
  %65 = fptrunc double %64 to float
  store float %65, ptr %39, align 4, !tbaa !10
  br label %66

66:                                               ; preds = %60, %58
  %67 = fmul float %7, %18
  %68 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 3
  store float %67, ptr %68, align 4, !tbaa !14
  br label %105

69:                                               ; preds = %29, %3
  %70 = fpext float %27 to double
  %71 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 2
  %72 = load float, ptr %71, align 4, !tbaa !20
  %73 = fpext float %72 to double
  %74 = fmul double %25, %70
  %75 = tail call double @llvm.fmuladd.f64(double %5, double %16, double %74)
  %76 = fptrunc double %75 to float
  store float %76, ptr %2, align 4, !tbaa !13
  %77 = fmul double %19, %70
  %78 = tail call double @llvm.fmuladd.f64(double %5, double %22, double %77)
  %79 = fptrunc double %78 to float
  %80 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 1
  store float %79, ptr %80, align 4, !tbaa !19
  %81 = fmul double %8, %19
  %82 = tail call double @llvm.fmuladd.f64(double %73, double %22, double %81)
  %83 = fptrunc double %82 to float
  %84 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 3
  store float %83, ptr %84, align 4, !tbaa !14
  %85 = fmul double %8, %25
  %86 = tail call double @llvm.fmuladd.f64(double %73, double %16, double %85)
  %87 = fptrunc double %86 to float
  %88 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 2
  store float %87, ptr %88, align 4, !tbaa !20
  %89 = fmul double %14, %25
  %90 = tail call double @llvm.fmuladd.f64(double %11, double %16, double %89)
  %91 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 4
  %92 = load float, ptr %91, align 4, !tbaa !10
  %93 = fpext float %92 to double
  %94 = fadd double %90, %93
  %95 = fptrunc double %94 to float
  %96 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 4
  store float %95, ptr %96, align 4, !tbaa !10
  %97 = fmul double %14, %19
  %98 = tail call double @llvm.fmuladd.f64(double %11, double %22, double %97)
  %99 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 5
  %100 = load float, ptr %99, align 4, !tbaa !12
  %101 = fpext float %100 to double
  %102 = fadd double %98, %101
  %103 = fptrunc double %102 to float
  %104 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 5
  store float %103, ptr %104, align 4, !tbaa !12
  br label %105

105:                                              ; preds = %69, %66
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_matrix_invert(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 1
  %4 = load float, ptr %3, align 4, !tbaa !19
  %5 = fcmp oeq float %4, 0.000000e+00
  br i1 %5, label %6, label %32

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 2
  %8 = load float, ptr %7, align 4, !tbaa !20
  %9 = fcmp oeq float %8, 0.000000e+00
  br i1 %9, label %10, label %32

10:                                               ; preds = %6
  %11 = load float, ptr %0, align 4, !tbaa !13
  %12 = fcmp oeq float %11, 0.000000e+00
  br i1 %12, label %72, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 3
  %15 = load float, ptr %14, align 4, !tbaa !14
  %16 = fcmp oeq float %15, 0.000000e+00
  br i1 %16, label %72, label %17

17:                                               ; preds = %13
  %18 = fdiv float 1.000000e+00, %11
  store float %18, ptr %1, align 4, !tbaa !13
  %19 = fneg float %18
  %20 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 4
  %21 = load float, ptr %20, align 4, !tbaa !10
  %22 = fmul float %21, %19
  %23 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 4
  store float %22, ptr %23, align 4, !tbaa !10
  %24 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 1
  store float 0.000000e+00, ptr %24, align 4, !tbaa !19
  %25 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 2
  store float 0.000000e+00, ptr %25, align 4, !tbaa !20
  %26 = fdiv float 1.000000e+00, %15
  %27 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 3
  store float %26, ptr %27, align 4, !tbaa !14
  %28 = fneg float %26
  %29 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 5
  %30 = load float, ptr %29, align 4, !tbaa !12
  %31 = fmul float %30, %28
  br label %69

32:                                               ; preds = %6, %2
  %33 = load float, ptr %0, align 4, !tbaa !13
  %34 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 3
  %35 = load float, ptr %34, align 4, !tbaa !14
  %36 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 2
  %37 = load float, ptr %36, align 4, !tbaa !20
  %38 = fneg float %4
  %39 = fmul float %37, %38
  %40 = tail call float @llvm.fmuladd.f32(float %33, float %35, float %39)
  %41 = fcmp une float %40, 0.000000e+00
  br i1 %41, label %42, label %72

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 4
  %44 = load float, ptr %43, align 4, !tbaa !10
  %45 = fpext float %44 to double
  %46 = fdiv float %35, %40
  store float %46, ptr %1, align 4, !tbaa !13
  %47 = fdiv float %38, %40
  %48 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 1
  store float %47, ptr %48, align 4, !tbaa !19
  %49 = fneg float %37
  %50 = fdiv float %49, %40
  %51 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 2
  store float %50, ptr %51, align 4, !tbaa !20
  %52 = fdiv float %33, %40
  %53 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 3
  store float %52, ptr %53, align 4, !tbaa !14
  %54 = fpext float %46 to double
  %55 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 5
  %56 = load float, ptr %55, align 4, !tbaa !12
  %57 = fmul float %50, %56
  %58 = fpext float %57 to double
  %59 = tail call double @llvm.fmuladd.f64(double %45, double %54, double %58)
  %60 = fptrunc double %59 to float
  %61 = fneg float %60
  %62 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 4
  store float %61, ptr %62, align 4, !tbaa !10
  %63 = fpext float %47 to double
  %64 = fmul float %52, %56
  %65 = fpext float %64 to double
  %66 = tail call double @llvm.fmuladd.f64(double %45, double %63, double %65)
  %67 = fptrunc double %66 to float
  %68 = fneg float %67
  br label %69

69:                                               ; preds = %42, %17
  %70 = phi float [ %31, %17 ], [ %68, %42 ]
  %71 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 5
  store float %70, ptr %71, align 4, !tbaa !12
  br label %72

72:                                               ; preds = %69, %32, %10, %13
  %73 = phi i32 [ -23, %13 ], [ -23, %10 ], [ -23, %32 ], [ 0, %69 ]
  ret i32 %73
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_matrix_translate(ptr noundef readonly %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load float, ptr %0, align 4, !tbaa !13
  %6 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 3
  %7 = load float, ptr %6, align 4, !tbaa !14
  %8 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 2
  %9 = load float, ptr %8, align 4, !tbaa !20
  %10 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !19
  %12 = icmp eq ptr %3, %0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !5
  br label %14

14:                                               ; preds = %13, %4
  %15 = fcmp oeq float %11, 0.000000e+00
  %16 = fpext float %7 to double
  %17 = fmul double %16, %2
  %18 = fpext float %11 to double
  %19 = tail call double @llvm.fmuladd.f64(double %1, double %18, double %17)
  %20 = select i1 %15, double %17, double %19
  %21 = fcmp oeq float %9, 0.000000e+00
  %22 = fpext float %5 to double
  %23 = fmul double %22, %1
  %24 = fpext float %9 to double
  %25 = tail call double @llvm.fmuladd.f64(double %2, double %24, double %23)
  %26 = select i1 %21, double %23, double %25
  %27 = getelementptr inbounds %struct.gs_matrix_s, ptr %3, i64 0, i32 4
  %28 = load float, ptr %27, align 4, !tbaa !10
  %29 = fpext float %28 to double
  %30 = fadd double %26, %29
  %31 = fptrunc double %30 to float
  store float %31, ptr %27, align 4, !tbaa !10
  %32 = getelementptr inbounds %struct.gs_matrix_s, ptr %3, i64 0, i32 5
  %33 = load float, ptr %32, align 4, !tbaa !12
  %34 = fpext float %33 to double
  %35 = fadd double %20, %34
  %36 = fptrunc double %35 to float
  store float %36, ptr %32, align 4, !tbaa !12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_distance_transform(double noundef %0, double noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load float, ptr %2, align 4, !tbaa !13
  %6 = fpext float %5 to double
  %7 = fmul double %6, %0
  store double %7, ptr %3, align 8, !tbaa !21
  %8 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 3
  %9 = load float, ptr %8, align 4, !tbaa !14
  %10 = fpext float %9 to double
  %11 = fmul double %10, %1
  %12 = getelementptr inbounds %struct.gs_point_s, ptr %3, i64 0, i32 1
  store double %11, ptr %12, align 8, !tbaa !23
  %13 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 2
  %14 = load float, ptr %13, align 4, !tbaa !20
  %15 = fcmp oeq float %14, 0.000000e+00
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = fpext float %14 to double
  %18 = tail call double @llvm.fmuladd.f64(double %1, double %17, double %7)
  store double %18, ptr %3, align 8, !tbaa !21
  br label %19

19:                                               ; preds = %16, %4
  %20 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 1
  %21 = load float, ptr %20, align 4, !tbaa !19
  %22 = fcmp oeq float %21, 0.000000e+00
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = fpext float %21 to double
  %25 = tail call double @llvm.fmuladd.f64(double %0, double %24, double %11)
  store double %25, ptr %12, align 8, !tbaa !23
  br label %26

26:                                               ; preds = %23, %19
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_matrix_scale(ptr noundef readonly %0, double noundef %1, double noundef %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load float, ptr %0, align 4, !tbaa !13
  %6 = fpext float %5 to double
  %7 = fmul double %6, %1
  %8 = fptrunc double %7 to float
  store float %8, ptr %3, align 4, !tbaa !13
  %9 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 1
  %10 = load float, ptr %9, align 4, !tbaa !19
  %11 = fpext float %10 to double
  %12 = fmul double %11, %1
  %13 = fptrunc double %12 to float
  %14 = getelementptr inbounds %struct.gs_matrix_s, ptr %3, i64 0, i32 1
  store float %13, ptr %14, align 4, !tbaa !19
  %15 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 2
  %16 = load float, ptr %15, align 4, !tbaa !20
  %17 = fpext float %16 to double
  %18 = fmul double %17, %2
  %19 = fptrunc double %18 to float
  %20 = getelementptr inbounds %struct.gs_matrix_s, ptr %3, i64 0, i32 2
  store float %19, ptr %20, align 4, !tbaa !20
  %21 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 3
  %22 = load float, ptr %21, align 4, !tbaa !14
  %23 = fpext float %22 to double
  %24 = fmul double %23, %2
  %25 = fptrunc double %24 to float
  %26 = getelementptr inbounds %struct.gs_matrix_s, ptr %3, i64 0, i32 3
  store float %25, ptr %26, align 4, !tbaa !14
  %27 = icmp eq ptr %3, %0
  br i1 %27, label %35, label %28

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 4
  %30 = load float, ptr %29, align 4, !tbaa !10
  %31 = getelementptr inbounds %struct.gs_matrix_s, ptr %3, i64 0, i32 4
  store float %30, ptr %31, align 4, !tbaa !10
  %32 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 5
  %33 = load float, ptr %32, align 4, !tbaa !12
  %34 = getelementptr inbounds %struct.gs_matrix_s, ptr %3, i64 0, i32 5
  store float %33, ptr %34, align 4, !tbaa !12
  br label %35

35:                                               ; preds = %28, %4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_matrix_rotate(ptr noundef readonly %0, double noundef %1, ptr noundef writeonly %2) local_unnamed_addr #2 {
  %4 = alloca %struct.gs_sincos_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @gs_sincos_degrees(double noundef %1, ptr noundef nonnull %4) #6
  %5 = load float, ptr %0, align 4, !tbaa !13
  %6 = fpext float %5 to double
  %7 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 1
  %8 = load float, ptr %7, align 4, !tbaa !19
  %9 = fpext float %8 to double
  %10 = getelementptr inbounds %struct.gs_sincos_s, ptr %4, i64 0, i32 1
  %11 = load double, ptr %10, align 8, !tbaa !15
  %12 = load double, ptr %4, align 8, !tbaa !18
  %13 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 2
  %14 = load float, ptr %13, align 4, !tbaa !20
  %15 = fpext float %14 to double
  %16 = fmul double %12, %15
  %17 = call double @llvm.fmuladd.f64(double %11, double %6, double %16)
  %18 = fptrunc double %17 to float
  store float %18, ptr %2, align 4, !tbaa !13
  %19 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 3
  %20 = load float, ptr %19, align 4, !tbaa !14
  %21 = fpext float %20 to double
  %22 = fmul double %12, %21
  %23 = call double @llvm.fmuladd.f64(double %11, double %9, double %22)
  %24 = fptrunc double %23 to float
  %25 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 1
  store float %24, ptr %25, align 4, !tbaa !19
  %26 = fneg double %12
  %27 = fmul double %6, %26
  %28 = call double @llvm.fmuladd.f64(double %11, double %15, double %27)
  %29 = fptrunc double %28 to float
  %30 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 2
  store float %29, ptr %30, align 4, !tbaa !20
  %31 = fmul double %9, %26
  %32 = call double @llvm.fmuladd.f64(double %11, double %21, double %31)
  %33 = fptrunc double %32 to float
  %34 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 3
  store float %33, ptr %34, align 4, !tbaa !14
  %35 = icmp eq ptr %2, %0
  br i1 %35, label %43, label %36

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 4
  %38 = load float, ptr %37, align 4, !tbaa !10
  %39 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 4
  store float %38, ptr %39, align 4, !tbaa !10
  %40 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 5
  %41 = load float, ptr %40, align 4, !tbaa !12
  %42 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 5
  store float %41, ptr %42, align 4, !tbaa !12
  br label %43

43:                                               ; preds = %36, %3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_point_transform(double noundef %0, double noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load float, ptr %2, align 4, !tbaa !13
  %6 = fpext float %5 to double
  %7 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 4
  %8 = load float, ptr %7, align 4, !tbaa !10
  %9 = fpext float %8 to double
  %10 = tail call double @llvm.fmuladd.f64(double %0, double %6, double %9)
  store double %10, ptr %3, align 8, !tbaa !21
  %11 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 3
  %12 = load float, ptr %11, align 4, !tbaa !14
  %13 = fpext float %12 to double
  %14 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 5
  %15 = load float, ptr %14, align 4, !tbaa !12
  %16 = fpext float %15 to double
  %17 = tail call double @llvm.fmuladd.f64(double %1, double %13, double %16)
  %18 = getelementptr inbounds %struct.gs_point_s, ptr %3, i64 0, i32 1
  store double %17, ptr %18, align 8, !tbaa !23
  %19 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 2
  %20 = load float, ptr %19, align 4, !tbaa !20
  %21 = fcmp oeq float %20, 0.000000e+00
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = fpext float %20 to double
  %24 = tail call double @llvm.fmuladd.f64(double %1, double %23, double %10)
  store double %24, ptr %3, align 8, !tbaa !21
  br label %25

25:                                               ; preds = %22, %4
  %26 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 1
  %27 = load float, ptr %26, align 4, !tbaa !19
  %28 = fcmp oeq float %27, 0.000000e+00
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = fpext float %27 to double
  %31 = tail call double @llvm.fmuladd.f64(double %0, double %30, double %17)
  store double %31, ptr %18, align 8, !tbaa !23
  br label %32

32:                                               ; preds = %29, %25
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_point_transform_inverse(double noundef %0, double noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 1
  %6 = load float, ptr %5, align 4, !tbaa !19
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %33

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 2
  %10 = load float, ptr %9, align 4, !tbaa !20
  %11 = fcmp oeq float %10, 0.000000e+00
  br i1 %11, label %12, label %33

12:                                               ; preds = %8
  %13 = load float, ptr %2, align 4, !tbaa !13
  %14 = fpext float %13 to double
  %15 = fcmp oeq float %13, 0.000000e+00
  br i1 %15, label %138, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 3
  %18 = load float, ptr %17, align 4, !tbaa !14
  %19 = fcmp oeq float %18, 0.000000e+00
  br i1 %19, label %138, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 4
  %22 = load float, ptr %21, align 4, !tbaa !10
  %23 = fpext float %22 to double
  %24 = fsub double %0, %23
  %25 = fdiv double %24, %14
  store double %25, ptr %3, align 8, !tbaa !21
  %26 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 5
  %27 = load float, ptr %26, align 4, !tbaa !12
  %28 = fpext float %27 to double
  %29 = fsub double %1, %28
  %30 = fpext float %18 to double
  %31 = fdiv double %29, %30
  %32 = getelementptr inbounds %struct.gs_point_s, ptr %3, i64 0, i32 1
  store double %31, ptr %32, align 8, !tbaa !23
  br label %138

33:                                               ; preds = %8, %4
  %34 = load float, ptr %2, align 4, !tbaa !13
  %35 = fcmp oeq float %34, 0.000000e+00
  br i1 %35, label %36, label %59

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 3
  %38 = load float, ptr %37, align 4, !tbaa !14
  %39 = fcmp oeq float %38, 0.000000e+00
  br i1 %39, label %40, label %59

40:                                               ; preds = %36
  %41 = fpext float %6 to double
  br i1 %7, label %138, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 2
  %44 = load float, ptr %43, align 4, !tbaa !20
  %45 = fcmp oeq float %44, 0.000000e+00
  br i1 %45, label %138, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 5
  %48 = load float, ptr %47, align 4, !tbaa !12
  %49 = fpext float %48 to double
  %50 = fsub double %1, %49
  %51 = fdiv double %50, %41
  store double %51, ptr %3, align 8, !tbaa !21
  %52 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 4
  %53 = load float, ptr %52, align 4, !tbaa !10
  %54 = fpext float %53 to double
  %55 = fsub double %0, %54
  %56 = fpext float %44 to double
  %57 = fdiv double %55, %56
  %58 = getelementptr inbounds %struct.gs_point_s, ptr %3, i64 0, i32 1
  store double %57, ptr %58, align 8, !tbaa !23
  br label %138

59:                                               ; preds = %36, %33
  br i1 %7, label %60, label %80

60:                                               ; preds = %59
  %61 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 2
  %62 = load float, ptr %61, align 4, !tbaa !20
  %63 = fcmp oeq float %62, 0.000000e+00
  br i1 %63, label %64, label %80

64:                                               ; preds = %60
  br i1 %35, label %112, label %65

65:                                               ; preds = %64
  %66 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 3
  %67 = load float, ptr %66, align 4, !tbaa !14
  %68 = fcmp oeq float %67, 0.000000e+00
  br i1 %68, label %112, label %69

69:                                               ; preds = %65
  %70 = fdiv float 1.000000e+00, %34
  %71 = fneg float %70
  %72 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 4
  %73 = load float, ptr %72, align 4, !tbaa !10
  %74 = fmul float %73, %71
  %75 = fdiv float 1.000000e+00, %67
  %76 = fneg float %75
  %77 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 5
  %78 = load float, ptr %77, align 4, !tbaa !12
  %79 = fmul float %78, %76
  br label %112

80:                                               ; preds = %60, %59
  %81 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 3
  %82 = load float, ptr %81, align 4, !tbaa !14
  %83 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 2
  %84 = load float, ptr %83, align 4, !tbaa !20
  %85 = fneg float %6
  %86 = fmul float %84, %85
  %87 = tail call float @llvm.fmuladd.f32(float %34, float %82, float %86)
  %88 = fcmp une float %87, 0.000000e+00
  br i1 %88, label %89, label %112

89:                                               ; preds = %80
  %90 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 4
  %91 = load float, ptr %90, align 4, !tbaa !10
  %92 = fpext float %91 to double
  %93 = fdiv float %82, %87
  %94 = fdiv float %85, %87
  %95 = fneg float %84
  %96 = fdiv float %95, %87
  %97 = fdiv float %34, %87
  %98 = fpext float %93 to double
  %99 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 5
  %100 = load float, ptr %99, align 4, !tbaa !12
  %101 = fmul float %96, %100
  %102 = fpext float %101 to double
  %103 = tail call double @llvm.fmuladd.f64(double %92, double %98, double %102)
  %104 = fptrunc double %103 to float
  %105 = fneg float %104
  %106 = fpext float %94 to double
  %107 = fmul float %97, %100
  %108 = fpext float %107 to double
  %109 = tail call double @llvm.fmuladd.f64(double %92, double %106, double %108)
  %110 = fptrunc double %109 to float
  %111 = fneg float %110
  br label %112

112:                                              ; preds = %64, %65, %69, %80, %89
  %113 = phi float [ undef, %64 ], [ undef, %65 ], [ %79, %69 ], [ %111, %89 ], [ undef, %80 ]
  %114 = phi float [ undef, %64 ], [ undef, %65 ], [ %74, %69 ], [ %105, %89 ], [ undef, %80 ]
  %115 = phi float [ undef, %64 ], [ undef, %65 ], [ %75, %69 ], [ %97, %89 ], [ undef, %80 ]
  %116 = phi float [ undef, %64 ], [ undef, %65 ], [ 0.000000e+00, %69 ], [ %96, %89 ], [ undef, %80 ]
  %117 = phi float [ undef, %64 ], [ undef, %65 ], [ 0.000000e+00, %69 ], [ %94, %89 ], [ undef, %80 ]
  %118 = phi float [ undef, %64 ], [ undef, %65 ], [ %70, %69 ], [ %93, %89 ], [ undef, %80 ]
  %119 = phi i1 [ true, %64 ], [ true, %65 ], [ false, %69 ], [ false, %89 ], [ true, %80 ]
  %120 = phi i32 [ -23, %64 ], [ -23, %65 ], [ 0, %69 ], [ 0, %89 ], [ -23, %80 ]
  br i1 %119, label %138, label %121

121:                                              ; preds = %112
  %122 = fpext float %118 to double
  %123 = fpext float %114 to double
  %124 = tail call double @llvm.fmuladd.f64(double %0, double %122, double %123)
  store double %124, ptr %3, align 8, !tbaa !21
  %125 = fpext float %115 to double
  %126 = fpext float %113 to double
  %127 = tail call double @llvm.fmuladd.f64(double %1, double %125, double %126)
  %128 = getelementptr inbounds %struct.gs_point_s, ptr %3, i64 0, i32 1
  store double %127, ptr %128, align 8, !tbaa !23
  %129 = fcmp oeq float %116, 0.000000e+00
  br i1 %129, label %133, label %130

130:                                              ; preds = %121
  %131 = fpext float %116 to double
  %132 = tail call double @llvm.fmuladd.f64(double %1, double %131, double %124)
  store double %132, ptr %3, align 8, !tbaa !21
  br label %133

133:                                              ; preds = %130, %121
  %134 = fcmp oeq float %117, 0.000000e+00
  br i1 %134, label %138, label %135

135:                                              ; preds = %133
  %136 = fpext float %117 to double
  %137 = tail call double @llvm.fmuladd.f64(double %0, double %136, double %127)
  store double %137, ptr %128, align 8, !tbaa !23
  br label %138

138:                                              ; preds = %112, %133, %135, %40, %42, %12, %16, %46, %20
  %139 = phi i32 [ 0, %20 ], [ 0, %46 ], [ -23, %16 ], [ -23, %12 ], [ -23, %42 ], [ -23, %40 ], [ %120, %112 ], [ 0, %133 ], [ 0, %135 ]
  ret i32 %139
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_distance_transform_inverse(double noundef %0, double noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 1
  %6 = load float, ptr %5, align 4, !tbaa !19
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %24

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 2
  %10 = load float, ptr %9, align 4, !tbaa !20
  %11 = fcmp oeq float %10, 0.000000e+00
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = load float, ptr %2, align 4, !tbaa !13
  %14 = fpext float %13 to double
  %15 = fcmp oeq float %13, 0.000000e+00
  br i1 %15, label %67, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 3
  %18 = load float, ptr %17, align 4, !tbaa !14
  %19 = fcmp oeq float %18, 0.000000e+00
  br i1 %19, label %67, label %20

20:                                               ; preds = %16
  %21 = fdiv double %0, %14
  store double %21, ptr %3, align 8, !tbaa !21
  %22 = fpext float %18 to double
  %23 = fdiv double %1, %22
  br label %64

24:                                               ; preds = %8, %4
  %25 = load float, ptr %2, align 4, !tbaa !13
  %26 = fcmp oeq float %25, 0.000000e+00
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 3
  %29 = load float, ptr %28, align 4, !tbaa !14
  %30 = fcmp oeq float %29, 0.000000e+00
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = fpext float %6 to double
  br i1 %7, label %67, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 2
  %35 = load float, ptr %34, align 4, !tbaa !20
  %36 = fcmp oeq float %35, 0.000000e+00
  br i1 %36, label %67, label %37

37:                                               ; preds = %33
  %38 = fdiv double %1, %32
  store double %38, ptr %3, align 8, !tbaa !21
  %39 = fpext float %35 to double
  %40 = fdiv double %0, %39
  br label %64

41:                                               ; preds = %27, %24
  %42 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 3
  %43 = load float, ptr %42, align 4, !tbaa !14
  %44 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 2
  %45 = load float, ptr %44, align 4, !tbaa !20
  %46 = fneg float %6
  %47 = fmul float %45, %46
  %48 = tail call float @llvm.fmuladd.f32(float %25, float %43, float %47)
  %49 = fcmp une float %48, 0.000000e+00
  br i1 %49, label %50, label %67

50:                                               ; preds = %41
  %51 = fpext float %48 to double
  %52 = fpext float %43 to double
  %53 = fpext float %45 to double
  %54 = fneg double %53
  %55 = fmul double %54, %1
  %56 = tail call double @llvm.fmuladd.f64(double %0, double %52, double %55)
  %57 = fdiv double %56, %51
  store double %57, ptr %3, align 8, !tbaa !21
  %58 = fpext float %25 to double
  %59 = fpext float %6 to double
  %60 = fneg double %59
  %61 = fmul double %60, %0
  %62 = tail call double @llvm.fmuladd.f64(double %1, double %58, double %61)
  %63 = fdiv double %62, %51
  br label %64

64:                                               ; preds = %50, %37, %20
  %65 = phi double [ %23, %20 ], [ %40, %37 ], [ %63, %50 ]
  %66 = getelementptr inbounds %struct.gs_point_s, ptr %3, i64 0, i32 1
  store double %65, ptr %66, align 8, !tbaa !23
  br label %67

67:                                               ; preds = %64, %41, %31, %33, %12, %16
  %68 = phi i32 [ -23, %16 ], [ -23, %12 ], [ -23, %33 ], [ -23, %31 ], [ -23, %41 ], [ 0, %64 ]
  ret i32 %68
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_points_bbox(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load double, ptr %0, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.gs_point_s, ptr %0, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !21
  %6 = fcmp olt double %3, %5
  %7 = select i1 %6, double %3, double %5
  %8 = select i1 %6, double %5, double %3
  %9 = getelementptr inbounds %struct.gs_point_s, ptr %0, i64 2
  %10 = load double, ptr %9, align 8, !tbaa !21
  %11 = getelementptr inbounds %struct.gs_point_s, ptr %0, i64 3
  %12 = load double, ptr %11, align 8, !tbaa !21
  %13 = fcmp olt double %10, %12
  %14 = select i1 %13, double %10, double %12
  %15 = select i1 %13, double %12, double %10
  %16 = fcmp olt double %7, %14
  %17 = select i1 %16, double %7, double %14
  store double %17, ptr %1, align 8, !tbaa !24
  %18 = fcmp ogt double %8, %15
  %19 = select i1 %18, double %8, double %15
  %20 = getelementptr inbounds %struct.gs_rect_s, ptr %1, i64 0, i32 1
  store double %19, ptr %20, align 8, !tbaa !26
  %21 = getelementptr inbounds %struct.gs_point_s, ptr %0, i64 0, i32 1
  %22 = load double, ptr %21, align 8, !tbaa !23
  %23 = getelementptr inbounds %struct.gs_point_s, ptr %0, i64 1, i32 1
  %24 = load double, ptr %23, align 8, !tbaa !23
  %25 = fcmp olt double %22, %24
  %26 = select i1 %25, double %22, double %24
  %27 = select i1 %25, double %24, double %22
  %28 = getelementptr inbounds %struct.gs_point_s, ptr %0, i64 2, i32 1
  %29 = load double, ptr %28, align 8, !tbaa !23
  %30 = getelementptr inbounds %struct.gs_point_s, ptr %0, i64 3, i32 1
  %31 = load double, ptr %30, align 8, !tbaa !23
  %32 = fcmp olt double %29, %31
  %33 = select i1 %32, double %29, double %31
  %34 = select i1 %32, double %31, double %29
  %35 = fcmp olt double %26, %33
  %36 = select i1 %35, double %26, double %33
  %37 = getelementptr inbounds %struct.gs_point_s, ptr %1, i64 0, i32 1
  store double %36, ptr %37, align 8, !tbaa !27
  %38 = fcmp ogt double %27, %34
  %39 = select i1 %38, double %27, double %34
  %40 = getelementptr inbounds %struct.gs_rect_s, ptr %1, i64 0, i32 1, i32 1
  store double %39, ptr %40, align 8, !tbaa !28
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_bbox_transform(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load double, ptr %0, align 8, !tbaa !24
  %5 = getelementptr inbounds %struct.gs_point_s, ptr %0, i64 0, i32 1
  %6 = load double, ptr %5, align 8, !tbaa !27
  %7 = load float, ptr %1, align 4, !tbaa !13
  %8 = fpext float %7 to double
  %9 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 4
  %10 = load float, ptr %9, align 4, !tbaa !10
  %11 = fpext float %10 to double
  %12 = tail call double @llvm.fmuladd.f64(double %4, double %8, double %11)
  %13 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 3
  %14 = load float, ptr %13, align 4, !tbaa !14
  %15 = fpext float %14 to double
  %16 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 5
  %17 = load float, ptr %16, align 4, !tbaa !12
  %18 = fpext float %17 to double
  %19 = tail call double @llvm.fmuladd.f64(double %6, double %15, double %18)
  %20 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 2
  %21 = load float, ptr %20, align 4, !tbaa !20
  %22 = fcmp oeq float %21, 0.000000e+00
  %23 = fpext float %21 to double
  %24 = tail call double @llvm.fmuladd.f64(double %6, double %23, double %12)
  %25 = select i1 %22, double %12, double %24
  %26 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 1
  %27 = load float, ptr %26, align 4, !tbaa !19
  %28 = fcmp oeq float %27, 0.000000e+00
  %29 = fpext float %27 to double
  %30 = tail call double @llvm.fmuladd.f64(double %4, double %29, double %19)
  %31 = select i1 %28, double %19, double %30
  %32 = getelementptr inbounds %struct.gs_rect_s, ptr %0, i64 0, i32 1
  %33 = getelementptr inbounds %struct.gs_rect_s, ptr %0, i64 0, i32 1, i32 1
  %34 = load double, ptr %33, align 8, !tbaa !28
  %35 = tail call double @llvm.fmuladd.f64(double %34, double %15, double %18)
  %36 = fpext float %21 to double
  %37 = tail call double @llvm.fmuladd.f64(double %34, double %36, double %12)
  %38 = select i1 %22, double %12, double %37
  %39 = fpext float %27 to double
  %40 = tail call double @llvm.fmuladd.f64(double %4, double %39, double %35)
  %41 = select i1 %28, double %35, double %40
  %42 = load double, ptr %32, align 8, !tbaa !26
  %43 = tail call double @llvm.fmuladd.f64(double %42, double %8, double %11)
  %44 = fpext float %21 to double
  %45 = tail call double @llvm.fmuladd.f64(double %6, double %44, double %43)
  %46 = select i1 %22, double %43, double %45
  %47 = fpext float %27 to double
  %48 = tail call double @llvm.fmuladd.f64(double %42, double %47, double %19)
  %49 = select i1 %28, double %19, double %48
  %50 = fpext float %21 to double
  %51 = tail call double @llvm.fmuladd.f64(double %34, double %50, double %43)
  %52 = select i1 %22, double %43, double %51
  %53 = fpext float %27 to double
  %54 = tail call double @llvm.fmuladd.f64(double %42, double %53, double %35)
  %55 = select i1 %28, double %35, double %54
  %56 = fcmp olt double %25, %38
  %57 = select i1 %56, double %25, double %38
  %58 = select i1 %56, double %38, double %25
  %59 = fcmp olt double %46, %52
  %60 = select i1 %59, double %46, double %52
  %61 = select i1 %59, double %52, double %46
  %62 = fcmp olt double %57, %60
  %63 = select i1 %62, double %57, double %60
  store double %63, ptr %2, align 8, !tbaa !24
  %64 = fcmp ogt double %58, %61
  %65 = select i1 %64, double %58, double %61
  %66 = getelementptr inbounds %struct.gs_rect_s, ptr %2, i64 0, i32 1
  store double %65, ptr %66, align 8, !tbaa !26
  %67 = fcmp olt double %31, %41
  %68 = select i1 %67, double %31, double %41
  %69 = select i1 %67, double %41, double %31
  %70 = fcmp olt double %49, %55
  %71 = select i1 %70, double %49, double %55
  %72 = select i1 %70, double %55, double %49
  %73 = fcmp olt double %68, %71
  %74 = select i1 %73, double %68, double %71
  %75 = getelementptr inbounds %struct.gs_point_s, ptr %2, i64 0, i32 1
  store double %74, ptr %75, align 8, !tbaa !27
  %76 = fcmp ogt double %69, %72
  %77 = select i1 %76, double %69, double %72
  %78 = getelementptr inbounds %struct.gs_rect_s, ptr %2, i64 0, i32 1, i32 1
  store double %77, ptr %78, align 8, !tbaa !28
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_bbox_transform_only(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load double, ptr %0, align 8, !tbaa !24
  %5 = getelementptr inbounds %struct.gs_point_s, ptr %0, i64 0, i32 1
  %6 = load double, ptr %5, align 8, !tbaa !27
  %7 = load float, ptr %1, align 4, !tbaa !13
  %8 = fpext float %7 to double
  %9 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 4
  %10 = load float, ptr %9, align 4, !tbaa !10
  %11 = fpext float %10 to double
  %12 = tail call double @llvm.fmuladd.f64(double %4, double %8, double %11)
  store double %12, ptr %2, align 8, !tbaa !21
  %13 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 3
  %14 = load float, ptr %13, align 4, !tbaa !14
  %15 = fpext float %14 to double
  %16 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 5
  %17 = load float, ptr %16, align 4, !tbaa !12
  %18 = fpext float %17 to double
  %19 = tail call double @llvm.fmuladd.f64(double %6, double %15, double %18)
  %20 = getelementptr inbounds %struct.gs_point_s, ptr %2, i64 0, i32 1
  store double %19, ptr %20, align 8, !tbaa !23
  %21 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 2
  %22 = load float, ptr %21, align 4, !tbaa !20
  %23 = fcmp oeq float %22, 0.000000e+00
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = fpext float %22 to double
  %26 = tail call double @llvm.fmuladd.f64(double %6, double %25, double %12)
  store double %26, ptr %2, align 8, !tbaa !21
  br label %27

27:                                               ; preds = %24, %3
  %28 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 1
  %29 = load float, ptr %28, align 4, !tbaa !19
  %30 = fcmp oeq float %29, 0.000000e+00
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = fpext float %29 to double
  %33 = tail call double @llvm.fmuladd.f64(double %4, double %32, double %19)
  store double %33, ptr %20, align 8, !tbaa !23
  br label %34

34:                                               ; preds = %31, %27
  %35 = load double, ptr %0, align 8, !tbaa !24
  %36 = getelementptr inbounds %struct.gs_rect_s, ptr %0, i64 0, i32 1
  %37 = getelementptr inbounds %struct.gs_rect_s, ptr %0, i64 0, i32 1, i32 1
  %38 = load double, ptr %37, align 8, !tbaa !28
  %39 = getelementptr inbounds %struct.gs_point_s, ptr %2, i64 1
  %40 = tail call double @llvm.fmuladd.f64(double %35, double %8, double %11)
  store double %40, ptr %39, align 8, !tbaa !21
  %41 = tail call double @llvm.fmuladd.f64(double %38, double %15, double %18)
  %42 = getelementptr inbounds %struct.gs_point_s, ptr %2, i64 1, i32 1
  store double %41, ptr %42, align 8, !tbaa !23
  br i1 %23, label %46, label %43

43:                                               ; preds = %34
  %44 = fpext float %22 to double
  %45 = tail call double @llvm.fmuladd.f64(double %38, double %44, double %40)
  store double %45, ptr %39, align 8, !tbaa !21
  br label %46

46:                                               ; preds = %43, %34
  br i1 %30, label %50, label %47

47:                                               ; preds = %46
  %48 = fpext float %29 to double
  %49 = tail call double @llvm.fmuladd.f64(double %35, double %48, double %41)
  store double %49, ptr %42, align 8, !tbaa !23
  br label %50

50:                                               ; preds = %47, %46
  %51 = load double, ptr %36, align 8, !tbaa !26
  %52 = load double, ptr %5, align 8, !tbaa !27
  %53 = getelementptr inbounds %struct.gs_point_s, ptr %2, i64 2
  %54 = tail call double @llvm.fmuladd.f64(double %51, double %8, double %11)
  store double %54, ptr %53, align 8, !tbaa !21
  %55 = tail call double @llvm.fmuladd.f64(double %52, double %15, double %18)
  %56 = getelementptr inbounds %struct.gs_point_s, ptr %2, i64 2, i32 1
  store double %55, ptr %56, align 8, !tbaa !23
  br i1 %23, label %60, label %57

57:                                               ; preds = %50
  %58 = fpext float %22 to double
  %59 = tail call double @llvm.fmuladd.f64(double %52, double %58, double %54)
  store double %59, ptr %53, align 8, !tbaa !21
  br label %60

60:                                               ; preds = %57, %50
  br i1 %30, label %64, label %61

61:                                               ; preds = %60
  %62 = fpext float %29 to double
  %63 = tail call double @llvm.fmuladd.f64(double %51, double %62, double %55)
  store double %63, ptr %56, align 8, !tbaa !23
  br label %64

64:                                               ; preds = %61, %60
  %65 = load double, ptr %36, align 8, !tbaa !26
  %66 = load double, ptr %37, align 8, !tbaa !28
  %67 = getelementptr inbounds %struct.gs_point_s, ptr %2, i64 3
  %68 = tail call double @llvm.fmuladd.f64(double %65, double %8, double %11)
  store double %68, ptr %67, align 8, !tbaa !21
  %69 = tail call double @llvm.fmuladd.f64(double %66, double %15, double %18)
  %70 = getelementptr inbounds %struct.gs_point_s, ptr %2, i64 3, i32 1
  store double %69, ptr %70, align 8, !tbaa !23
  br i1 %23, label %74, label %71

71:                                               ; preds = %64
  %72 = fpext float %22 to double
  %73 = tail call double @llvm.fmuladd.f64(double %66, double %72, double %68)
  store double %73, ptr %67, align 8, !tbaa !21
  br label %74

74:                                               ; preds = %71, %64
  br i1 %30, label %78, label %75

75:                                               ; preds = %74
  %76 = fpext float %29 to double
  %77 = tail call double @llvm.fmuladd.f64(double %65, double %76, double %69)
  store double %77, ptr %70, align 8, !tbaa !23
  br label %78

78:                                               ; preds = %75, %74
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_bbox_transform_inverse(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca [4 x %struct.gs_point_s], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  %5 = load double, ptr %0, align 8, !tbaa !24
  %6 = getelementptr inbounds %struct.gs_point_s, ptr %0, i64 0, i32 1
  %7 = load double, ptr %6, align 8, !tbaa !27
  %8 = call i32 @gs_point_transform_inverse(double noundef %5, double noundef %7, ptr noundef %1, ptr noundef nonnull %4) #6, !callees !29
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.gs_rect_s, ptr %0, i64 0, i32 1, i32 1
  %12 = load double, ptr %11, align 8, !tbaa !28
  %13 = getelementptr inbounds %struct.gs_point_s, ptr %4, i64 1
  %14 = call i32 @gs_point_transform_inverse(double noundef %5, double noundef %12, ptr noundef %1, ptr noundef nonnull %13) #6, !callees !29
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.gs_rect_s, ptr %0, i64 0, i32 1
  %18 = load double, ptr %17, align 8, !tbaa !26
  %19 = getelementptr inbounds %struct.gs_point_s, ptr %4, i64 2
  %20 = call i32 @gs_point_transform_inverse(double noundef %18, double noundef %7, ptr noundef %1, ptr noundef nonnull %19) #6, !callees !29
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.gs_point_s, ptr %4, i64 3
  %24 = call i32 @gs_point_transform_inverse(double noundef %18, double noundef %12, ptr noundef %1, ptr noundef nonnull %23) #6, !callees !29
  br label %25

25:                                               ; preds = %22, %16, %10, %3
  %26 = phi i32 [ %8, %3 ], [ %14, %10 ], [ %20, %16 ], [ %24, %22 ]
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %67, label %28

28:                                               ; preds = %25
  %29 = load double, ptr %4, align 16, !tbaa !21
  %30 = getelementptr inbounds %struct.gs_point_s, ptr %4, i64 1
  %31 = load double, ptr %30, align 16, !tbaa !21
  %32 = fcmp olt double %29, %31
  %33 = select i1 %32, double %29, double %31
  %34 = select i1 %32, double %31, double %29
  %35 = getelementptr inbounds %struct.gs_point_s, ptr %4, i64 2
  %36 = load double, ptr %35, align 16, !tbaa !21
  %37 = getelementptr inbounds %struct.gs_point_s, ptr %4, i64 3
  %38 = load double, ptr %37, align 16, !tbaa !21
  %39 = fcmp olt double %36, %38
  %40 = select i1 %39, double %36, double %38
  %41 = select i1 %39, double %38, double %36
  %42 = fcmp olt double %33, %40
  %43 = select i1 %42, double %33, double %40
  store double %43, ptr %2, align 8, !tbaa !24
  %44 = fcmp ogt double %34, %41
  %45 = select i1 %44, double %34, double %41
  %46 = getelementptr inbounds %struct.gs_rect_s, ptr %2, i64 0, i32 1
  store double %45, ptr %46, align 8, !tbaa !26
  %47 = getelementptr inbounds %struct.gs_point_s, ptr %4, i64 0, i32 1
  %48 = load double, ptr %47, align 8, !tbaa !23
  %49 = getelementptr inbounds %struct.gs_point_s, ptr %4, i64 1, i32 1
  %50 = load double, ptr %49, align 8, !tbaa !23
  %51 = fcmp olt double %48, %50
  %52 = select i1 %51, double %48, double %50
  %53 = select i1 %51, double %50, double %48
  %54 = getelementptr inbounds %struct.gs_point_s, ptr %4, i64 2, i32 1
  %55 = load double, ptr %54, align 8, !tbaa !23
  %56 = getelementptr inbounds %struct.gs_point_s, ptr %4, i64 3, i32 1
  %57 = load double, ptr %56, align 8, !tbaa !23
  %58 = fcmp olt double %55, %57
  %59 = select i1 %58, double %55, double %57
  %60 = select i1 %58, double %57, double %55
  %61 = fcmp olt double %52, %59
  %62 = select i1 %61, double %52, double %59
  %63 = getelementptr inbounds %struct.gs_point_s, ptr %2, i64 0, i32 1
  store double %62, ptr %63, align 8, !tbaa !27
  %64 = fcmp ogt double %53, %60
  %65 = select i1 %64, double %53, double %60
  %66 = getelementptr inbounds %struct.gs_rect_s, ptr %2, i64 0, i32 1, i32 1
  store double %65, ptr %66, align 8, !tbaa !28
  br label %67

67:                                               ; preds = %25, %28
  %68 = phi i32 [ 0, %28 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  ret i32 %68
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_point_transform2fixed(ptr nocapture noundef readonly %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.gs_matrix_fixed_s, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !30
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %46

8:                                                ; preds = %4
  %9 = load float, ptr %0, align 4, !tbaa !13
  %10 = fpext float %9 to double
  %11 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 4
  %12 = load float, ptr %11, align 4, !tbaa !10
  %13 = fpext float %12 to double
  %14 = tail call double @llvm.fmuladd.f64(double %1, double %10, double %13)
  %15 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 3
  %16 = load float, ptr %15, align 4, !tbaa !14
  %17 = fpext float %16 to double
  %18 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 5
  %19 = load float, ptr %18, align 4, !tbaa !12
  %20 = fpext float %19 to double
  %21 = tail call double @llvm.fmuladd.f64(double %2, double %17, double %20)
  %22 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 2
  %23 = load float, ptr %22, align 4, !tbaa !20
  %24 = fcmp oeq float %23, 0.000000e+00
  %25 = fpext float %23 to double
  %26 = tail call double @llvm.fmuladd.f64(double %2, double %25, double %14)
  %27 = select i1 %24, double %14, double %26
  %28 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 1
  %29 = load float, ptr %28, align 4, !tbaa !19
  %30 = fcmp oeq float %29, 0.000000e+00
  %31 = fpext float %29 to double
  %32 = tail call double @llvm.fmuladd.f64(double %1, double %31, double %21)
  %33 = select i1 %30, double %21, double %32
  %34 = fcmp oge double %27, 0xC320000000000000
  %35 = fcmp olt double %27, 0x4320000000000000
  %36 = and i1 %34, %35
  %37 = fcmp oge double %33, 0xC320000000000000
  %38 = select i1 %36, i1 %37, i1 false
  %39 = fcmp olt double %33, 0x4320000000000000
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %41, label %152

41:                                               ; preds = %8
  %42 = fmul double %27, 4.096000e+03
  %43 = fptosi double %42 to i64
  store i64 %43, ptr %3, align 8, !tbaa !34
  %44 = fmul double %33, 4.096000e+03
  %45 = fptosi double %44 to i64
  br label %149

46:                                               ; preds = %4
  %47 = getelementptr inbounds %struct.gs_matrix_fixed_s, ptr %0, i64 0, i32 1
  %48 = load float, ptr %47, align 4, !tbaa !36
  %49 = fcmp oeq float %48, 0.000000e+00
  br i1 %49, label %102, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.gs_matrix_fixed_s, ptr %0, i64 0, i32 2
  %52 = load float, ptr %51, align 8, !tbaa !37
  %53 = fpext float %52 to double
  %54 = fmul double %53, %2
  %55 = fcmp ult double %54, 0xC320000000000000
  %56 = fcmp uge double %54, 0x4320000000000000
  %57 = or i1 %55, %56
  %58 = fmul double %54, 4.096000e+03
  %59 = fptosi double %58 to i64
  %60 = select i1 %57, i64 undef, i64 %59
  %61 = select i1 %57, i32 -13, i32 0
  br i1 %57, label %152, label %62

62:                                               ; preds = %50
  %63 = fpext float %48 to double
  %64 = fmul double %63, %1
  %65 = fcmp ult double %64, 0xC320000000000000
  %66 = fcmp uge double %64, 0x4320000000000000
  %67 = or i1 %65, %66
  %68 = fmul double %64, 4.096000e+03
  %69 = fptosi double %68 to i64
  %70 = select i1 %67, i64 undef, i64 %69
  %71 = select i1 %67, i32 -13, i32 0
  br i1 %67, label %152, label %72

72:                                               ; preds = %62
  %73 = load float, ptr %0, align 8, !tbaa !38
  %74 = fcmp oeq float %73, 0.000000e+00
  br i1 %74, label %86, label %75

75:                                               ; preds = %72
  %76 = fpext float %73 to double
  %77 = fmul double %76, %1
  %78 = fcmp ult double %77, 0xC320000000000000
  %79 = fcmp uge double %77, 0x4320000000000000
  %80 = or i1 %78, %79
  %81 = select i1 %80, i32 -13, i32 0
  br i1 %80, label %152, label %82

82:                                               ; preds = %75
  %83 = fmul double %77, 4.096000e+03
  %84 = fptosi double %83 to i64
  %85 = add nsw i64 %60, %84
  br label %86

86:                                               ; preds = %82, %72
  %87 = phi i64 [ %60, %72 ], [ %85, %82 ]
  %88 = getelementptr inbounds %struct.gs_matrix_fixed_s, ptr %0, i64 0, i32 3
  %89 = load float, ptr %88, align 4, !tbaa !39
  %90 = fcmp oeq float %89, 0.000000e+00
  br i1 %90, label %140, label %91

91:                                               ; preds = %86
  %92 = fpext float %89 to double
  %93 = fmul double %92, %2
  %94 = fcmp ult double %93, 0xC320000000000000
  %95 = fcmp uge double %93, 0x4320000000000000
  %96 = or i1 %94, %95
  %97 = select i1 %96, i32 -13, i32 0
  br i1 %96, label %152, label %98

98:                                               ; preds = %91
  %99 = fmul double %93, 4.096000e+03
  %100 = fptosi double %99 to i64
  %101 = add nsw i64 %70, %100
  br label %140

102:                                              ; preds = %46
  %103 = load float, ptr %0, align 8, !tbaa !38
  %104 = fpext float %103 to double
  %105 = fmul double %104, %1
  %106 = fcmp ult double %105, 0xC320000000000000
  %107 = fcmp uge double %105, 0x4320000000000000
  %108 = or i1 %106, %107
  %109 = fmul double %105, 4.096000e+03
  %110 = fptosi double %109 to i64
  %111 = select i1 %108, i64 undef, i64 %110
  %112 = select i1 %108, i32 -13, i32 0
  br i1 %108, label %152, label %113

113:                                              ; preds = %102
  %114 = getelementptr inbounds %struct.gs_matrix_fixed_s, ptr %0, i64 0, i32 3
  %115 = load float, ptr %114, align 4, !tbaa !39
  %116 = fpext float %115 to double
  %117 = fmul double %116, %2
  %118 = fcmp ult double %117, 0xC320000000000000
  %119 = fcmp uge double %117, 0x4320000000000000
  %120 = or i1 %118, %119
  %121 = fmul double %117, 4.096000e+03
  %122 = fptosi double %121 to i64
  %123 = select i1 %120, i64 undef, i64 %122
  %124 = select i1 %120, i32 -13, i32 0
  br i1 %120, label %152, label %125

125:                                              ; preds = %113
  %126 = getelementptr inbounds %struct.gs_matrix_fixed_s, ptr %0, i64 0, i32 2
  %127 = load float, ptr %126, align 8, !tbaa !37
  %128 = fcmp oeq float %127, 0.000000e+00
  br i1 %128, label %140, label %129

129:                                              ; preds = %125
  %130 = fpext float %127 to double
  %131 = fmul double %130, %2
  %132 = fcmp ult double %131, 0xC320000000000000
  %133 = fcmp uge double %131, 0x4320000000000000
  %134 = or i1 %132, %133
  %135 = select i1 %134, i32 -13, i32 0
  br i1 %134, label %152, label %136

136:                                              ; preds = %129
  %137 = fmul double %131, 4.096000e+03
  %138 = fptosi double %137 to i64
  %139 = add nsw i64 %111, %138
  br label %140

140:                                              ; preds = %125, %136, %86, %98
  %141 = phi i64 [ %111, %125 ], [ %139, %136 ], [ %87, %86 ], [ %87, %98 ]
  %142 = phi i64 [ %123, %125 ], [ %123, %136 ], [ %70, %86 ], [ %101, %98 ]
  %143 = getelementptr inbounds %struct.gs_matrix_fixed_s, ptr %0, i64 0, i32 6
  %144 = load i64, ptr %143, align 8, !tbaa !40
  %145 = add nsw i64 %144, %141
  store i64 %145, ptr %3, align 8, !tbaa !34
  %146 = getelementptr inbounds %struct.gs_matrix_fixed_s, ptr %0, i64 0, i32 7
  %147 = load i64, ptr %146, align 8, !tbaa !41
  %148 = add nsw i64 %147, %142
  br label %149

149:                                              ; preds = %140, %41
  %150 = phi i64 [ %45, %41 ], [ %148, %140 ]
  %151 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %3, i64 0, i32 1
  store i64 %150, ptr %151, align 8, !tbaa !42
  br label %152

152:                                              ; preds = %149, %8, %129, %102, %113, %91, %75, %50, %62
  %153 = phi i32 [ %61, %50 ], [ %71, %62 ], [ %81, %75 ], [ %97, %91 ], [ %112, %102 ], [ %124, %113 ], [ %135, %129 ], [ -13, %8 ], [ 0, %149 ]
  ret i32 %153
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_distance_transform2fixed(ptr nocapture noundef readonly %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load float, ptr %0, align 8, !tbaa !38
  %6 = fpext float %5 to double
  %7 = fmul double %6, %1
  %8 = fcmp ult double %7, 0xC320000000000000
  %9 = fcmp uge double %7, 0x4320000000000000
  %10 = or i1 %8, %9
  %11 = fmul double %7, 4.096000e+03
  %12 = fptosi double %11 to i64
  %13 = select i1 %10, i64 undef, i64 %12
  %14 = select i1 %10, i32 -13, i32 0
  br i1 %10, label %61, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.gs_matrix_fixed_s, ptr %0, i64 0, i32 3
  %17 = load float, ptr %16, align 4, !tbaa !39
  %18 = fpext float %17 to double
  %19 = fmul double %18, %2
  %20 = fcmp ult double %19, 0xC320000000000000
  %21 = fcmp uge double %19, 0x4320000000000000
  %22 = or i1 %20, %21
  %23 = fmul double %19, 4.096000e+03
  %24 = fptosi double %23 to i64
  %25 = select i1 %22, i64 undef, i64 %24
  %26 = select i1 %22, i32 -13, i32 0
  br i1 %22, label %61, label %27

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.gs_matrix_fixed_s, ptr %0, i64 0, i32 2
  %29 = load float, ptr %28, align 8, !tbaa !37
  %30 = fcmp oeq float %29, 0.000000e+00
  br i1 %30, label %42, label %31

31:                                               ; preds = %27
  %32 = fpext float %29 to double
  %33 = fmul double %32, %2
  %34 = fcmp ult double %33, 0xC320000000000000
  %35 = fcmp uge double %33, 0x4320000000000000
  %36 = or i1 %34, %35
  %37 = select i1 %36, i32 -13, i32 0
  br i1 %36, label %61, label %38

38:                                               ; preds = %31
  %39 = fmul double %33, 4.096000e+03
  %40 = fptosi double %39 to i64
  %41 = add nsw i64 %13, %40
  br label %42

42:                                               ; preds = %38, %27
  %43 = phi i64 [ %13, %27 ], [ %41, %38 ]
  %44 = getelementptr inbounds %struct.gs_matrix_fixed_s, ptr %0, i64 0, i32 1
  %45 = load float, ptr %44, align 4, !tbaa !36
  %46 = fcmp oeq float %45, 0.000000e+00
  br i1 %46, label %58, label %47

47:                                               ; preds = %42
  %48 = fpext float %45 to double
  %49 = fmul double %48, %1
  %50 = fcmp ult double %49, 0xC320000000000000
  %51 = fcmp uge double %49, 0x4320000000000000
  %52 = or i1 %50, %51
  %53 = select i1 %52, i32 -13, i32 0
  br i1 %52, label %61, label %54

54:                                               ; preds = %47
  %55 = fmul double %49, 4.096000e+03
  %56 = fptosi double %55 to i64
  %57 = add nsw i64 %25, %56
  br label %58

58:                                               ; preds = %54, %42
  %59 = phi i64 [ %25, %42 ], [ %57, %54 ]
  store i64 %43, ptr %3, align 8, !tbaa !34
  %60 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %3, i64 0, i32 1
  store i64 %59, ptr %60, align 8, !tbaa !42
  br label %61

61:                                               ; preds = %47, %31, %4, %15, %58
  %62 = phi i32 [ 0, %58 ], [ %14, %4 ], [ %26, %15 ], [ %37, %31 ], [ %53, %47 ]
  ret i32 %62
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{i64 0, i64 4, !6, i64 4, i64 4, !6, i64 8, i64 4, !6, i64 12, i64 4, !6, i64 16, i64 4, !6, i64 20, i64 4, !6}
!6 = !{!7, !7, i64 0}
!7 = !{!"float", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 16}
!11 = !{!"gs_matrix_s", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!12 = !{!11, !7, i64 20}
!13 = !{!11, !7, i64 0}
!14 = !{!11, !7, i64 12}
!15 = !{!16, !17, i64 8}
!16 = !{!"gs_sincos_s", !17, i64 0, !17, i64 8}
!17 = !{!"double", !8, i64 0}
!18 = !{!16, !17, i64 0}
!19 = !{!11, !7, i64 4}
!20 = !{!11, !7, i64 8}
!21 = !{!22, !17, i64 0}
!22 = !{!"gs_point_s", !17, i64 0, !17, i64 8}
!23 = !{!22, !17, i64 8}
!24 = !{!25, !17, i64 0}
!25 = !{!"gs_rect_s", !22, i64 0, !22, i64 16}
!26 = !{!25, !17, i64 16}
!27 = !{!25, !17, i64 8}
!28 = !{!25, !17, i64 24}
!29 = !{ptr @gs_point_transform, ptr @gs_point_transform_inverse}
!30 = !{!31, !33, i64 40}
!31 = !{!"gs_matrix_fixed_s", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !32, i64 24, !32, i64 32, !33, i64 40}
!32 = !{!"long", !8, i64 0}
!33 = !{!"int", !8, i64 0}
!34 = !{!35, !32, i64 0}
!35 = !{!"gs_fixed_point_s", !32, i64 0, !32, i64 8}
!36 = !{!31, !7, i64 4}
!37 = !{!31, !7, i64 8}
!38 = !{!31, !7, i64 0}
!39 = !{!31, !7, i64 12}
!40 = !{!31, !32, i64 24}
!41 = !{!31, !32, i64 32}
!42 = !{!35, !32, i64 8}
