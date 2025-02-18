; ModuleID = 'blender/source/blender/blenlib/intern/math_geom.c'
source_filename = "blender/source/blender/blenlib/intern/math_geom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.IsectRayAABBData = type { [3 x float], [3 x float], [3 x i32] }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.fill_poly_v2i_n = private unnamed_addr constant [16 x i8] c"fill_poly_v2i_n\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"interp_sparse_array up\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"interp_sparse_array tup\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"interp_sparse_array tdown\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @cent_tri_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @cent_quad_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = load float, ptr %2, align 4, !tbaa !34
  %8 = fadd float %6, %7
  %9 = load float, ptr %3, align 4, !tbaa !34
  %10 = fadd float %8, %9
  %11 = load float, ptr %4, align 4, !tbaa !34
  %12 = fadd float %10, %11
  %13 = fmul float %12, 2.500000e-01
  store float %13, ptr %0, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %2, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fadd float %15, %17
  %19 = getelementptr inbounds float, ptr %3, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fadd float %18, %20
  %22 = getelementptr inbounds float, ptr %4, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = fadd float %21, %23
  %25 = fmul float %24, 2.500000e-01
  %26 = getelementptr inbounds float, ptr %0, i64 1
  store float %25, ptr %26, align 4, !tbaa !34
  %27 = getelementptr inbounds float, ptr %1, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = getelementptr inbounds float, ptr %2, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = fadd float %28, %30
  %32 = getelementptr inbounds float, ptr %3, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = fadd float %31, %33
  %35 = getelementptr inbounds float, ptr %4, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = fadd float %34, %36
  %38 = fmul float %37, 2.500000e-01
  %39 = getelementptr inbounds float, ptr %0, i64 2
  store float %38, ptr %39, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @normal_tri_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = load float, ptr %2, align 4, !tbaa !34
  %7 = fsub float %5, %6
  %8 = load float, ptr %3, align 4, !tbaa !34
  %9 = fsub float %6, %8
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %2, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fsub float %11, %13
  %15 = getelementptr inbounds float, ptr %3, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fsub float %13, %16
  %18 = getelementptr inbounds float, ptr %1, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %2, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fsub float %19, %21
  %23 = getelementptr inbounds float, ptr %3, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fsub float %21, %24
  %26 = fneg float %22
  %27 = fmul float %17, %26
  %28 = tail call float @llvm.fmuladd.f32(float %14, float %25, float %27)
  store float %28, ptr %0, align 4, !tbaa !34
  %29 = fneg float %7
  %30 = fmul float %25, %29
  %31 = tail call float @llvm.fmuladd.f32(float %22, float %9, float %30)
  %32 = getelementptr inbounds float, ptr %0, i64 1
  store float %31, ptr %32, align 4, !tbaa !34
  %33 = fneg float %14
  %34 = fmul float %9, %33
  %35 = tail call float @llvm.fmuladd.f32(float %7, float %17, float %34)
  %36 = getelementptr inbounds float, ptr %0, i64 2
  store float %35, ptr %36, align 4, !tbaa !34
  %37 = fmul float %31, %31
  %38 = tail call float @llvm.fmuladd.f32(float %28, float %28, float %37)
  %39 = tail call float @llvm.fmuladd.f32(float %35, float %35, float %38)
  %40 = fcmp ogt float %39, 0x38AA95A5C0000000
  br i1 %40, label %41, label %50

41:                                               ; preds = %4
  %42 = tail call float @sqrtf(float noundef %39) #17
  %43 = fdiv float 1.000000e+00, %42
  %44 = load float, ptr %0, align 4, !tbaa !34
  %45 = fmul float %44, %43
  store float %45, ptr %0, align 4, !tbaa !34
  %46 = load float, ptr %32, align 4, !tbaa !34
  %47 = fmul float %43, %46
  store float %47, ptr %32, align 4, !tbaa !34
  %48 = load float, ptr %36, align 4, !tbaa !34
  %49 = fmul float %43, %48
  br label %51

50:                                               ; preds = %4
  store float 0.000000e+00, ptr %0, align 4, !tbaa !34
  store float 0.000000e+00, ptr %32, align 4, !tbaa !34
  br label %51

51:                                               ; preds = %41, %50
  %52 = phi float [ 0.000000e+00, %50 ], [ %49, %41 ]
  %53 = phi float [ 0.000000e+00, %50 ], [ %42, %41 ]
  store float %52, ptr %36, align 4, !tbaa !34
  ret float %53
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @normal_quad_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #1 {
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = load float, ptr %3, align 4, !tbaa !34
  %8 = fsub float %6, %7
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %3, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fsub float %10, %12
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %3, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fsub float %15, %17
  %19 = load float, ptr %2, align 4, !tbaa !34
  %20 = load float, ptr %4, align 4, !tbaa !34
  %21 = fsub float %19, %20
  %22 = getelementptr inbounds float, ptr %2, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds float, ptr %4, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = fsub float %23, %25
  %27 = getelementptr inbounds float, ptr %2, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = getelementptr inbounds float, ptr %4, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = fsub float %28, %30
  %32 = fneg float %18
  %33 = fmul float %26, %32
  %34 = tail call float @llvm.fmuladd.f32(float %13, float %31, float %33)
  store float %34, ptr %0, align 4, !tbaa !34
  %35 = fneg float %8
  %36 = fmul float %31, %35
  %37 = tail call float @llvm.fmuladd.f32(float %18, float %21, float %36)
  %38 = getelementptr inbounds float, ptr %0, i64 1
  store float %37, ptr %38, align 4, !tbaa !34
  %39 = fneg float %13
  %40 = fmul float %21, %39
  %41 = tail call float @llvm.fmuladd.f32(float %8, float %26, float %40)
  %42 = getelementptr inbounds float, ptr %0, i64 2
  store float %41, ptr %42, align 4, !tbaa !34
  %43 = fmul float %37, %37
  %44 = tail call float @llvm.fmuladd.f32(float %34, float %34, float %43)
  %45 = tail call float @llvm.fmuladd.f32(float %41, float %41, float %44)
  %46 = fcmp ogt float %45, 0x38AA95A5C0000000
  br i1 %46, label %47, label %56

47:                                               ; preds = %5
  %48 = tail call float @sqrtf(float noundef %45) #17
  %49 = fdiv float 1.000000e+00, %48
  %50 = load float, ptr %0, align 4, !tbaa !34
  %51 = fmul float %50, %49
  store float %51, ptr %0, align 4, !tbaa !34
  %52 = load float, ptr %38, align 4, !tbaa !34
  %53 = fmul float %49, %52
  store float %53, ptr %38, align 4, !tbaa !34
  %54 = load float, ptr %42, align 4, !tbaa !34
  %55 = fmul float %49, %54
  br label %57

56:                                               ; preds = %5
  store float 0.000000e+00, ptr %0, align 4, !tbaa !34
  store float 0.000000e+00, ptr %38, align 4, !tbaa !34
  br label %57

57:                                               ; preds = %47, %56
  %58 = phi float [ 0.000000e+00, %56 ], [ %55, %47 ]
  %59 = phi float [ 0.000000e+00, %56 ], [ %48, %47 ]
  store float %58, ptr %42, align 4, !tbaa !34
  ret float %59
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local float @normal_poly_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #4 {
  store float 0.000000e+00, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %0, i64 1
  store float 0.000000e+00, ptr %4, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %5, align 4, !tbaa !34
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %50, label %7

7:                                                ; preds = %3
  %8 = add i32 %2, -1
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [3 x float], ptr %1, i64 %9
  %11 = load float, ptr %0, align 4, !tbaa !34
  %12 = load float, ptr %4, align 4, !tbaa !34
  %13 = load float, ptr %5, align 4, !tbaa !34
  %14 = zext i32 %2 to i64
  br label %15

15:                                               ; preds = %7, %15
  %16 = phi i64 [ 0, %7 ], [ %47, %15 ]
  %17 = phi float [ %13, %7 ], [ %46, %15 ]
  %18 = phi float [ %12, %7 ], [ %39, %15 ]
  %19 = phi float [ %11, %7 ], [ %32, %15 ]
  %20 = phi ptr [ %1, %7 ], [ %48, %15 ]
  %21 = phi ptr [ %10, %7 ], [ %20, %15 ]
  %22 = getelementptr inbounds float, ptr %21, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds float, ptr %20, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = fsub float %23, %25
  %27 = getelementptr inbounds float, ptr %21, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = getelementptr inbounds float, ptr %20, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = fadd float %28, %30
  %32 = tail call float @llvm.fmuladd.f32(float %26, float %31, float %19)
  store float %32, ptr %0, align 4, !tbaa !34
  %33 = load float, ptr %27, align 4, !tbaa !34
  %34 = load float, ptr %29, align 4, !tbaa !34
  %35 = fsub float %33, %34
  %36 = load float, ptr %21, align 4, !tbaa !34
  %37 = load float, ptr %20, align 4, !tbaa !34
  %38 = fadd float %36, %37
  %39 = tail call float @llvm.fmuladd.f32(float %35, float %38, float %18)
  store float %39, ptr %4, align 4, !tbaa !34
  %40 = load float, ptr %21, align 4, !tbaa !34
  %41 = load float, ptr %20, align 4, !tbaa !34
  %42 = fsub float %40, %41
  %43 = load float, ptr %22, align 4, !tbaa !34
  %44 = load float, ptr %24, align 4, !tbaa !34
  %45 = fadd float %43, %44
  %46 = tail call float @llvm.fmuladd.f32(float %42, float %45, float %17)
  store float %46, ptr %5, align 4, !tbaa !34
  %47 = add nuw nsw i64 %16, 1
  %48 = getelementptr inbounds [3 x float], ptr %1, i64 %47
  %49 = icmp eq i64 %47, %14
  br i1 %49, label %50, label %15, !llvm.loop !38

50:                                               ; preds = %15, %3
  %51 = load float, ptr %0, align 4, !tbaa !34
  %52 = load float, ptr %4, align 4, !tbaa !34
  %53 = fmul float %52, %52
  %54 = tail call float @llvm.fmuladd.f32(float %51, float %51, float %53)
  %55 = load float, ptr %5, align 4, !tbaa !34
  %56 = tail call float @llvm.fmuladd.f32(float %55, float %55, float %54)
  %57 = fcmp ogt float %56, 0x38AA95A5C0000000
  br i1 %57, label %58, label %67

58:                                               ; preds = %50
  %59 = tail call float @sqrtf(float noundef %56) #17
  %60 = fdiv float 1.000000e+00, %59
  %61 = load float, ptr %0, align 4, !tbaa !34
  %62 = fmul float %61, %60
  store float %62, ptr %0, align 4, !tbaa !34
  %63 = load float, ptr %4, align 4, !tbaa !34
  %64 = fmul float %60, %63
  store float %64, ptr %4, align 4, !tbaa !34
  %65 = load float, ptr %5, align 4, !tbaa !34
  %66 = fmul float %60, %65
  br label %68

67:                                               ; preds = %50
  store float 0.000000e+00, ptr %0, align 4, !tbaa !34
  store float 0.000000e+00, ptr %4, align 4, !tbaa !34
  br label %68

68:                                               ; preds = %58, %67
  %69 = phi float [ 0.000000e+00, %67 ], [ %66, %58 ]
  %70 = phi float [ 0.000000e+00, %67 ], [ %59, %58 ]
  store float %69, ptr %5, align 4, !tbaa !34
  ret float %70
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @area_quad_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = load float, ptr %0, align 4, !tbaa !34
  %7 = fsub float %5, %6
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fsub float %9, %11
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %0, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fsub float %14, %16
  %18 = load float, ptr %3, align 4, !tbaa !34
  %19 = fsub float %18, %6
  %20 = getelementptr inbounds float, ptr %3, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fsub float %21, %11
  %23 = getelementptr inbounds float, ptr %3, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fsub float %24, %16
  %26 = fneg float %17
  %27 = fmul float %22, %26
  %28 = tail call float @llvm.fmuladd.f32(float %12, float %25, float %27)
  %29 = fneg float %7
  %30 = fmul float %25, %29
  %31 = tail call float @llvm.fmuladd.f32(float %17, float %19, float %30)
  %32 = fneg float %12
  %33 = fmul float %19, %32
  %34 = tail call float @llvm.fmuladd.f32(float %7, float %22, float %33)
  %35 = fmul float %31, %31
  %36 = tail call float @llvm.fmuladd.f32(float %28, float %28, float %35)
  %37 = tail call float @llvm.fmuladd.f32(float %34, float %34, float %36)
  %38 = tail call float @sqrtf(float noundef %37) #17
  %39 = load float, ptr %3, align 4, !tbaa !34
  %40 = load float, ptr %2, align 4, !tbaa !34
  %41 = fsub float %39, %40
  %42 = load float, ptr %20, align 4, !tbaa !34
  %43 = getelementptr inbounds float, ptr %2, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !34
  %45 = fsub float %42, %44
  %46 = load float, ptr %23, align 4, !tbaa !34
  %47 = getelementptr inbounds float, ptr %2, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !34
  %49 = fsub float %46, %48
  %50 = load float, ptr %1, align 4, !tbaa !34
  %51 = fsub float %50, %40
  %52 = load float, ptr %8, align 4, !tbaa !34
  %53 = fsub float %52, %44
  %54 = load float, ptr %13, align 4, !tbaa !34
  %55 = fsub float %54, %48
  %56 = fneg float %49
  %57 = fmul float %53, %56
  %58 = tail call float @llvm.fmuladd.f32(float %45, float %55, float %57)
  %59 = fneg float %41
  %60 = fmul float %55, %59
  %61 = tail call float @llvm.fmuladd.f32(float %49, float %51, float %60)
  %62 = fneg float %45
  %63 = fmul float %51, %62
  %64 = tail call float @llvm.fmuladd.f32(float %41, float %53, float %63)
  %65 = fmul float %61, %61
  %66 = tail call float @llvm.fmuladd.f32(float %58, float %58, float %65)
  %67 = tail call float @llvm.fmuladd.f32(float %64, float %64, float %66)
  %68 = tail call float @sqrtf(float noundef %67) #17
  %69 = fadd float %38, %68
  %70 = fmul float %69, 5.000000e-01
  ret float %70
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @area_tri_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = load float, ptr %2, align 4, !tbaa !34
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = fsub float %4, %5
  %7 = getelementptr inbounds float, ptr %2, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %2, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fsub float %13, %15
  %17 = load float, ptr %0, align 4, !tbaa !34
  %18 = fsub float %17, %5
  %19 = getelementptr inbounds float, ptr %0, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fsub float %20, %10
  %22 = getelementptr inbounds float, ptr %0, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = fsub float %23, %15
  %25 = fneg float %16
  %26 = fmul float %21, %25
  %27 = tail call float @llvm.fmuladd.f32(float %11, float %24, float %26)
  %28 = fneg float %6
  %29 = fmul float %24, %28
  %30 = tail call float @llvm.fmuladd.f32(float %16, float %18, float %29)
  %31 = fneg float %11
  %32 = fmul float %18, %31
  %33 = tail call float @llvm.fmuladd.f32(float %6, float %21, float %32)
  %34 = fmul float %30, %30
  %35 = tail call float @llvm.fmuladd.f32(float %27, float %27, float %34)
  %36 = tail call float @llvm.fmuladd.f32(float %33, float %33, float %35)
  %37 = tail call float @sqrtf(float noundef %36) #17
  %38 = fmul float %37, 5.000000e-01
  ret float %38
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @area_tri_signed_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
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
  %18 = load float, ptr %0, align 4, !tbaa !34
  %19 = fsub float %18, %6
  %20 = getelementptr inbounds float, ptr %0, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fsub float %21, %11
  %23 = getelementptr inbounds float, ptr %0, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fsub float %24, %16
  %26 = fneg float %17
  %27 = fmul float %22, %26
  %28 = tail call float @llvm.fmuladd.f32(float %12, float %25, float %27)
  %29 = fneg float %7
  %30 = fmul float %25, %29
  %31 = tail call float @llvm.fmuladd.f32(float %17, float %19, float %30)
  %32 = fneg float %12
  %33 = fmul float %19, %32
  %34 = tail call float @llvm.fmuladd.f32(float %7, float %22, float %33)
  %35 = fmul float %31, %31
  %36 = tail call float @llvm.fmuladd.f32(float %28, float %28, float %35)
  %37 = tail call float @llvm.fmuladd.f32(float %34, float %34, float %36)
  %38 = tail call float @sqrtf(float noundef %37) #17
  %39 = fmul float %38, 5.000000e-01
  %40 = load float, ptr %3, align 4, !tbaa !34
  %41 = getelementptr inbounds float, ptr %3, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !34
  %43 = fmul float %31, %42
  %44 = tail call float @llvm.fmuladd.f32(float %28, float %40, float %43)
  %45 = getelementptr inbounds float, ptr %3, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !34
  %47 = tail call float @llvm.fmuladd.f32(float %34, float %46, float %44)
  %48 = fcmp olt float %47, 0.000000e+00
  %49 = fneg float %39
  %50 = select i1 %48, float %49, float %39
  ret float %50
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local float @area_poly_v3(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %38, label %4

4:                                                ; preds = %2
  %5 = add i32 %1, -1
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds [3 x float], ptr %0, i64 %6
  %8 = zext i32 %1 to i64
  br label %9

9:                                                ; preds = %9, %4
  %10 = phi i64 [ 0, %4 ], [ %35, %9 ]
  %11 = phi float [ 0.000000e+00, %4 ], [ %34, %9 ]
  %12 = phi float [ 0.000000e+00, %4 ], [ %31, %9 ]
  %13 = phi float [ 0.000000e+00, %4 ], [ %26, %9 ]
  %14 = phi ptr [ %0, %4 ], [ %36, %9 ]
  %15 = phi ptr [ %7, %4 ], [ %14, %9 ]
  %16 = getelementptr inbounds float, ptr %15, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %14, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fsub float %17, %19
  %21 = getelementptr inbounds float, ptr %15, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = getelementptr inbounds float, ptr %14, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fadd float %22, %24
  %26 = tail call float @llvm.fmuladd.f32(float %20, float %25, float %13)
  %27 = fsub float %22, %24
  %28 = load float, ptr %15, align 4, !tbaa !34
  %29 = load float, ptr %14, align 4, !tbaa !34
  %30 = fadd float %28, %29
  %31 = tail call float @llvm.fmuladd.f32(float %27, float %30, float %12)
  %32 = fsub float %28, %29
  %33 = fadd float %17, %19
  %34 = tail call float @llvm.fmuladd.f32(float %32, float %33, float %11)
  %35 = add nuw nsw i64 %10, 1
  %36 = getelementptr inbounds [3 x float], ptr %0, i64 %35
  %37 = icmp eq i64 %35, %8
  br i1 %37, label %38, label %9, !llvm.loop !38

38:                                               ; preds = %9, %2
  %39 = phi float [ 0.000000e+00, %2 ], [ %34, %9 ]
  %40 = phi float [ 0.000000e+00, %2 ], [ %31, %9 ]
  %41 = phi float [ 0.000000e+00, %2 ], [ %26, %9 ]
  %42 = fmul float %40, %40
  %43 = tail call float @llvm.fmuladd.f32(float %41, float %41, float %42)
  %44 = tail call float @llvm.fmuladd.f32(float %39, float %39, float %43)
  %45 = fcmp ogt float %44, 0x38AA95A5C0000000
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = tail call float @sqrtf(float noundef %44) #17
  %48 = fmul float %47, 5.000000e-01
  br label %49

49:                                               ; preds = %38, %46
  %50 = phi float [ %48, %46 ], [ 0.000000e+00, %38 ]
  ret float %50
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local float @cross_poly_v2(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %25, label %4

4:                                                ; preds = %2
  %5 = add i32 %1, -1
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds [2 x float], ptr %0, i64 %6
  br label %8

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %10, %8 ], [ %7, %4 ]
  %10 = phi ptr [ %22, %8 ], [ %0, %4 ]
  %11 = phi float [ %21, %8 ], [ 0.000000e+00, %4 ]
  %12 = phi i32 [ %23, %8 ], [ 0, %4 ]
  %13 = load float, ptr %10, align 4, !tbaa !34
  %14 = load float, ptr %9, align 4, !tbaa !34
  %15 = fsub float %13, %14
  %16 = getelementptr inbounds float, ptr %10, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %9, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fadd float %17, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %20, float %11)
  %22 = getelementptr inbounds float, ptr %10, i64 2
  %23 = add nuw i32 %12, 1
  %24 = icmp eq i32 %23, %1
  br i1 %24, label %25, label %8, !llvm.loop !41

25:                                               ; preds = %8, %2
  %26 = phi float [ 0.000000e+00, %2 ], [ %21, %8 ]
  ret float %26
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local float @area_poly_v2(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = add i32 %1, -1
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds [2 x float], ptr %0, i64 %6
  br label %8

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %10, %8 ], [ %7, %4 ]
  %10 = phi ptr [ %22, %8 ], [ %0, %4 ]
  %11 = phi float [ %21, %8 ], [ 0.000000e+00, %4 ]
  %12 = phi i32 [ %23, %8 ], [ 0, %4 ]
  %13 = load float, ptr %10, align 4, !tbaa !34
  %14 = load float, ptr %9, align 4, !tbaa !34
  %15 = fsub float %13, %14
  %16 = getelementptr inbounds float, ptr %10, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %9, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fadd float %17, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %20, float %11)
  %22 = getelementptr inbounds float, ptr %10, i64 2
  %23 = add nuw i32 %12, 1
  %24 = icmp eq i32 %23, %1
  br i1 %24, label %25, label %8, !llvm.loop !41

25:                                               ; preds = %8
  %26 = fmul float %21, 5.000000e-01
  br label %27

27:                                               ; preds = %25, %2
  %28 = phi float [ 0.000000e+00, %2 ], [ %26, %25 ]
  %29 = tail call float @llvm.fabs.f32(float %28)
  ret float %29
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @cotangent_tri_weight_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
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
  %18 = fsub float %17, %5
  %19 = getelementptr inbounds float, ptr %2, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fsub float %20, %10
  %22 = getelementptr inbounds float, ptr %2, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = fsub float %23, %15
  %25 = fneg float %16
  %26 = fmul float %21, %25
  %27 = tail call float @llvm.fmuladd.f32(float %11, float %24, float %26)
  %28 = fneg float %6
  %29 = fmul float %24, %28
  %30 = tail call float @llvm.fmuladd.f32(float %16, float %18, float %29)
  %31 = fneg float %11
  %32 = fmul float %18, %31
  %33 = tail call float @llvm.fmuladd.f32(float %6, float %21, float %32)
  %34 = fmul float %30, %30
  %35 = tail call float @llvm.fmuladd.f32(float %27, float %27, float %34)
  %36 = tail call float @llvm.fmuladd.f32(float %33, float %33, float %35)
  %37 = tail call float @sqrtf(float noundef %36) #17
  %38 = fcmp ogt float %37, 0x3E80000000000000
  br i1 %38, label %39, label %44

39:                                               ; preds = %3
  %40 = fmul float %11, %21
  %41 = tail call float @llvm.fmuladd.f32(float %6, float %18, float %40)
  %42 = tail call float @llvm.fmuladd.f32(float %16, float %24, float %41)
  %43 = fdiv float %42, %37
  br label %44

44:                                               ; preds = %3, %39
  %45 = phi float [ %43, %39 ], [ 0.000000e+00, %3 ]
  ret float %45
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @plane_from_point_normal_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load float, ptr %2, align 4, !tbaa !34
  store float %4, ptr %0, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %2, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %0, i64 1
  store float %6, ptr %7, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %2, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %0, i64 2
  store float %9, ptr %10, align 4, !tbaa !34
  %11 = load float, ptr %1, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fmul float %6, %13
  %15 = tail call float @llvm.fmuladd.f32(float %4, float %11, float %14)
  %16 = getelementptr inbounds float, ptr %1, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = tail call float @llvm.fmuladd.f32(float %9, float %17, float %15)
  %19 = fneg float %18
  %20 = getelementptr inbounds float, ptr %0, i64 3
  store float %19, ptr %20, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @plane_to_point_normal_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) local_unnamed_addr #1 {
  %4 = load float, ptr %0, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fmul float %6, %6
  %8 = tail call float @llvm.fmuladd.f32(float %4, float %4, float %7)
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = tail call float @llvm.fmuladd.f32(float %10, float %10, float %8)
  %12 = fcmp ogt float %11, 0x38AA95A5C0000000
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = tail call float @sqrtf(float noundef %11) #17
  %15 = fdiv float 1.000000e+00, %14
  %16 = load float, ptr %0, align 4, !tbaa !34
  %17 = fmul float %16, %15
  store float %17, ptr %2, align 4, !tbaa !34
  %18 = load float, ptr %5, align 4, !tbaa !34
  %19 = fmul float %15, %18
  %20 = getelementptr inbounds float, ptr %2, i64 1
  store float %19, ptr %20, align 4, !tbaa !34
  %21 = load float, ptr %9, align 4, !tbaa !34
  %22 = fmul float %15, %21
  br label %25

23:                                               ; preds = %3
  store float 0.000000e+00, ptr %2, align 4, !tbaa !34
  %24 = getelementptr inbounds float, ptr %2, i64 1
  store float 0.000000e+00, ptr %24, align 4, !tbaa !34
  br label %25

25:                                               ; preds = %13, %23
  %26 = phi float [ %22, %13 ], [ 0.000000e+00, %23 ]
  %27 = phi float [ %14, %13 ], [ 0.000000e+00, %23 ]
  %28 = getelementptr inbounds float, ptr %2, i64 2
  store float %26, ptr %28, align 4, !tbaa !34
  %29 = getelementptr inbounds float, ptr %0, i64 3
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = fdiv float %30, %27
  %32 = fsub float -1.000000e+00, %31
  %33 = load float, ptr %2, align 4, !tbaa !34
  %34 = tail call float @llvm.fmuladd.f32(float %33, float %32, float %33)
  store float %34, ptr %1, align 4, !tbaa !34
  %35 = getelementptr inbounds float, ptr %2, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = tail call float @llvm.fmuladd.f32(float %36, float %32, float %36)
  %38 = getelementptr inbounds float, ptr %1, i64 1
  store float %37, ptr %38, align 4, !tbaa !34
  %39 = getelementptr inbounds float, ptr %2, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = tail call float @llvm.fmuladd.f32(float %40, float %32, float %40)
  %42 = getelementptr inbounds float, ptr %1, i64 2
  store float %41, ptr %42, align 4, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local float @volume_tetrahedron_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #6 {
  %5 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #17
  %6 = load float, ptr %0, align 4, !tbaa !34
  %7 = load float, ptr %1, align 4, !tbaa !34
  %8 = fsub float %6, %7
  store float %8, ptr %5, align 16, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fsub float %10, %12
  %14 = getelementptr inbounds float, ptr %5, i64 1
  store float %13, ptr %14, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %0, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %1, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fsub float %16, %18
  %20 = getelementptr inbounds float, ptr %5, i64 2
  store float %19, ptr %20, align 8, !tbaa !34
  %21 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1
  %22 = load float, ptr %2, align 4, !tbaa !34
  %23 = fsub float %7, %22
  store float %23, ptr %21, align 4, !tbaa !34
  %24 = getelementptr inbounds float, ptr %2, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = fsub float %12, %25
  %27 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1, i64 1
  store float %26, ptr %27, align 16, !tbaa !34
  %28 = getelementptr inbounds float, ptr %2, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = fsub float %18, %29
  %31 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1, i64 2
  store float %30, ptr %31, align 4, !tbaa !34
  %32 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2
  %33 = load float, ptr %3, align 4, !tbaa !34
  %34 = fsub float %22, %33
  store float %34, ptr %32, align 8, !tbaa !34
  %35 = getelementptr inbounds float, ptr %3, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = fsub float %25, %36
  %38 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2, i64 1
  store float %37, ptr %38, align 4, !tbaa !34
  %39 = getelementptr inbounds float, ptr %3, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = fsub float %29, %40
  %42 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2, i64 2
  store float %41, ptr %42, align 16, !tbaa !34
  %43 = call float @determinant_m3_array(ptr noundef nonnull %5) #17
  %44 = call float @llvm.fabs.f32(float %43)
  %45 = fdiv float %44, 6.000000e+00
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #17
  ret float %45
}

declare float @determinant_m3_array(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local float @volume_tetrahedron_signed_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #6 {
  %5 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #17
  %6 = load float, ptr %0, align 4, !tbaa !34
  %7 = load float, ptr %1, align 4, !tbaa !34
  %8 = fsub float %6, %7
  store float %8, ptr %5, align 16, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fsub float %10, %12
  %14 = getelementptr inbounds float, ptr %5, i64 1
  store float %13, ptr %14, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %0, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %1, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fsub float %16, %18
  %20 = getelementptr inbounds float, ptr %5, i64 2
  store float %19, ptr %20, align 8, !tbaa !34
  %21 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1
  %22 = load float, ptr %2, align 4, !tbaa !34
  %23 = fsub float %7, %22
  store float %23, ptr %21, align 4, !tbaa !34
  %24 = getelementptr inbounds float, ptr %2, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = fsub float %12, %25
  %27 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1, i64 1
  store float %26, ptr %27, align 16, !tbaa !34
  %28 = getelementptr inbounds float, ptr %2, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = fsub float %18, %29
  %31 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1, i64 2
  store float %30, ptr %31, align 4, !tbaa !34
  %32 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2
  %33 = load float, ptr %3, align 4, !tbaa !34
  %34 = fsub float %22, %33
  store float %34, ptr %32, align 8, !tbaa !34
  %35 = getelementptr inbounds float, ptr %3, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = fsub float %25, %36
  %38 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2, i64 1
  store float %37, ptr %38, align 4, !tbaa !34
  %39 = getelementptr inbounds float, ptr %3, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = fsub float %29, %40
  %42 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2, i64 2
  store float %41, ptr %42, align 16, !tbaa !34
  %43 = call float @determinant_m3_array(ptr noundef nonnull %5) #17
  %44 = fdiv float %43, 6.000000e+00
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #17
  ret float %44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @dist_squared_to_line_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %2, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fsub float %5, %7
  %9 = load float, ptr %2, align 4, !tbaa !34
  %10 = load float, ptr %1, align 4, !tbaa !34
  %11 = fsub float %9, %10
  %12 = fmul float %11, %11
  %13 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %12)
  %14 = fcmp une float %13, 0.000000e+00
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load float, ptr %0, align 4, !tbaa !34
  %17 = fsub float %16, %10
  %18 = getelementptr inbounds float, ptr %0, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fsub float %19, %5
  %21 = fmul float %11, %20
  %22 = tail call float @llvm.fmuladd.f32(float %17, float %8, float %21)
  %23 = fmul float %22, %22
  %24 = fdiv float %23, %13
  br label %25

25:                                               ; preds = %3, %15
  %26 = phi float [ %24, %15 ], [ 0.000000e+00, %3 ]
  ret float %26
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @dist_to_line_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %2, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fsub float %5, %7
  %9 = load float, ptr %2, align 4, !tbaa !34
  %10 = load float, ptr %1, align 4, !tbaa !34
  %11 = fsub float %9, %10
  %12 = fmul float %11, %11
  %13 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %12)
  %14 = fcmp une float %13, 0.000000e+00
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load float, ptr %0, align 4, !tbaa !34
  %17 = fsub float %16, %10
  %18 = getelementptr inbounds float, ptr %0, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fsub float %19, %5
  %21 = fmul float %11, %20
  %22 = tail call float @llvm.fmuladd.f32(float %17, float %8, float %21)
  %23 = tail call float @llvm.fabs.f32(float %22)
  %24 = tail call float @sqrtf(float noundef %13) #17
  %25 = fdiv float %23, %24
  br label %26

26:                                               ; preds = %3, %15
  %27 = phi float [ %25, %15 ], [ 0.000000e+00, %3 ]
  ret float %27
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @dist_squared_to_line_segment_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #8 {
  %4 = load float, ptr %2, align 4, !tbaa !34
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = fsub float %4, %5
  %7 = getelementptr inbounds float, ptr %2, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fsub float %8, %10
  %12 = fmul float %11, %11
  %13 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %12)
  %14 = fcmp oeq float %13, 0.000000e+00
  %15 = load float, ptr %0, align 4, !tbaa !34
  %16 = fsub float %15, %5
  %17 = getelementptr inbounds float, ptr %0, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fsub float %18, %10
  br i1 %14, label %20, label %23

20:                                               ; preds = %3
  %21 = fmul float %19, %19
  %22 = tail call float @llvm.fmuladd.f32(float %16, float %16, float %21)
  br label %40

23:                                               ; preds = %3
  %24 = fmul float %11, %19
  %25 = tail call float @llvm.fmuladd.f32(float %6, float %16, float %24)
  %26 = fdiv float %25, %13
  %27 = fcmp ugt float %26, 0.000000e+00
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = fcmp ult float %26, 1.000000e+00
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = tail call float @llvm.fmuladd.f32(float %26, float %6, float %5)
  %32 = tail call float @llvm.fmuladd.f32(float %26, float %11, float %10)
  br label %33

33:                                               ; preds = %28, %23, %30
  %34 = phi float [ %32, %30 ], [ %10, %23 ], [ %8, %28 ]
  %35 = phi float [ %31, %30 ], [ %5, %23 ], [ %4, %28 ]
  %36 = fsub float %35, %15
  %37 = fsub float %34, %18
  %38 = fmul float %37, %37
  %39 = tail call float @llvm.fmuladd.f32(float %36, float %36, float %38)
  br label %40

40:                                               ; preds = %33, %20
  %41 = phi float [ %22, %20 ], [ %39, %33 ]
  ret float %41
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @dist_to_line_segment_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = load float, ptr %2, align 4, !tbaa !34
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = fsub float %4, %5
  %7 = getelementptr inbounds float, ptr %2, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fsub float %8, %10
  %12 = fmul float %11, %11
  %13 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %12)
  %14 = fcmp oeq float %13, 0.000000e+00
  %15 = load float, ptr %0, align 4, !tbaa !34
  %16 = fsub float %15, %5
  %17 = getelementptr inbounds float, ptr %0, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fsub float %18, %10
  br i1 %14, label %20, label %23

20:                                               ; preds = %3
  %21 = fmul float %19, %19
  %22 = tail call float @llvm.fmuladd.f32(float %16, float %16, float %21)
  br label %40

23:                                               ; preds = %3
  %24 = fmul float %11, %19
  %25 = tail call float @llvm.fmuladd.f32(float %6, float %16, float %24)
  %26 = fdiv float %25, %13
  %27 = fcmp ugt float %26, 0.000000e+00
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = fcmp ult float %26, 1.000000e+00
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = tail call float @llvm.fmuladd.f32(float %26, float %6, float %5)
  %32 = tail call float @llvm.fmuladd.f32(float %26, float %11, float %10)
  br label %33

33:                                               ; preds = %30, %28, %23
  %34 = phi float [ %32, %30 ], [ %10, %23 ], [ %8, %28 ]
  %35 = phi float [ %31, %30 ], [ %5, %23 ], [ %4, %28 ]
  %36 = fsub float %35, %15
  %37 = fsub float %34, %18
  %38 = fmul float %37, %37
  %39 = tail call float @llvm.fmuladd.f32(float %36, float %36, float %38)
  br label %40

40:                                               ; preds = %20, %33
  %41 = phi float [ %22, %20 ], [ %39, %33 ]
  %42 = tail call float @sqrtf(float noundef %41) #17
  ret float %42
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @closest_to_line_segment_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = load float, ptr %3, align 4, !tbaa !34
  %6 = load float, ptr %2, align 4, !tbaa !34
  %7 = fsub float %5, %6
  %8 = getelementptr inbounds float, ptr %3, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fsub float %9, %11
  %13 = load float, ptr %1, align 4, !tbaa !34
  %14 = fsub float %13, %6
  %15 = getelementptr inbounds float, ptr %1, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fsub float %16, %11
  %18 = fmul float %12, %17
  %19 = tail call float @llvm.fmuladd.f32(float %7, float %14, float %18)
  %20 = fmul float %12, %12
  %21 = tail call float @llvm.fmuladd.f32(float %7, float %7, float %20)
  %22 = fdiv float %19, %21
  %23 = tail call float @llvm.fmuladd.f32(float %7, float %22, float %6)
  %24 = tail call float @llvm.fmuladd.f32(float %12, float %22, float %11)
  %25 = fcmp ugt float %22, 0.000000e+00
  br i1 %25, label %28, label %26

26:                                               ; preds = %4
  store float %6, ptr %0, align 4, !tbaa !34
  %27 = load float, ptr %10, align 4, !tbaa !34
  br label %33

28:                                               ; preds = %4
  %29 = fcmp ult float %22, 1.000000e+00
  br i1 %29, label %32, label %30

30:                                               ; preds = %28
  store float %5, ptr %0, align 4, !tbaa !34
  %31 = load float, ptr %8, align 4, !tbaa !34
  br label %33

32:                                               ; preds = %28
  store float %23, ptr %0, align 4, !tbaa !34
  br label %33

33:                                               ; preds = %30, %32, %26
  %34 = phi float [ %31, %30 ], [ %24, %32 ], [ %27, %26 ]
  %35 = getelementptr inbounds float, ptr %0, i64 1
  store float %34, ptr %35, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local float @closest_to_line_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = load float, ptr %3, align 4, !tbaa !34
  %6 = load float, ptr %2, align 4, !tbaa !34
  %7 = fsub float %5, %6
  %8 = getelementptr inbounds float, ptr %3, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fsub float %9, %11
  %13 = load float, ptr %1, align 4, !tbaa !34
  %14 = fsub float %13, %6
  %15 = getelementptr inbounds float, ptr %1, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fsub float %16, %11
  %18 = fmul float %12, %17
  %19 = tail call float @llvm.fmuladd.f32(float %7, float %14, float %18)
  %20 = fmul float %12, %12
  %21 = tail call float @llvm.fmuladd.f32(float %7, float %7, float %20)
  %22 = fdiv float %19, %21
  %23 = tail call float @llvm.fmuladd.f32(float %7, float %22, float %6)
  store float %23, ptr %0, align 4, !tbaa !34
  %24 = load float, ptr %10, align 4, !tbaa !34
  %25 = tail call float @llvm.fmuladd.f32(float %12, float %22, float %24)
  %26 = getelementptr inbounds float, ptr %0, i64 1
  store float %25, ptr %26, align 4, !tbaa !34
  ret float %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @closest_to_line_segment_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = load float, ptr %3, align 4, !tbaa !34
  %6 = load float, ptr %2, align 4, !tbaa !34
  %7 = fsub float %5, %6
  %8 = getelementptr inbounds float, ptr %3, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fsub float %9, %11
  %13 = getelementptr inbounds float, ptr %3, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fsub float %14, %16
  %18 = load float, ptr %1, align 4, !tbaa !34
  %19 = fsub float %18, %6
  %20 = getelementptr inbounds float, ptr %1, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fsub float %21, %11
  %23 = getelementptr inbounds float, ptr %1, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fsub float %24, %16
  %26 = fmul float %12, %22
  %27 = tail call float @llvm.fmuladd.f32(float %7, float %19, float %26)
  %28 = tail call float @llvm.fmuladd.f32(float %17, float %25, float %27)
  %29 = fmul float %12, %12
  %30 = tail call float @llvm.fmuladd.f32(float %7, float %7, float %29)
  %31 = tail call float @llvm.fmuladd.f32(float %17, float %17, float %30)
  %32 = fdiv float %28, %31
  %33 = tail call float @llvm.fmuladd.f32(float %7, float %32, float %6)
  %34 = tail call float @llvm.fmuladd.f32(float %12, float %32, float %11)
  %35 = tail call float @llvm.fmuladd.f32(float %17, float %32, float %16)
  %36 = fcmp ugt float %32, 0.000000e+00
  br i1 %36, label %41, label %37

37:                                               ; preds = %4
  store float %6, ptr %0, align 4, !tbaa !34
  %38 = load float, ptr %10, align 4, !tbaa !34
  %39 = getelementptr inbounds float, ptr %0, i64 1
  store float %38, ptr %39, align 4, !tbaa !34
  %40 = load float, ptr %15, align 4, !tbaa !34
  br label %49

41:                                               ; preds = %4
  %42 = fcmp ult float %32, 1.000000e+00
  br i1 %42, label %47, label %43

43:                                               ; preds = %41
  store float %5, ptr %0, align 4, !tbaa !34
  %44 = load float, ptr %8, align 4, !tbaa !34
  %45 = getelementptr inbounds float, ptr %0, i64 1
  store float %44, ptr %45, align 4, !tbaa !34
  %46 = load float, ptr %13, align 4, !tbaa !34
  br label %49

47:                                               ; preds = %41
  store float %33, ptr %0, align 4, !tbaa !34
  %48 = getelementptr inbounds float, ptr %0, i64 1
  store float %34, ptr %48, align 4, !tbaa !34
  br label %49

49:                                               ; preds = %43, %47, %37
  %50 = phi float [ %46, %43 ], [ %35, %47 ], [ %40, %37 ]
  %51 = getelementptr inbounds float, ptr %0, i64 2
  store float %50, ptr %51, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local float @closest_to_line_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = load float, ptr %3, align 4, !tbaa !34
  %6 = load float, ptr %2, align 4, !tbaa !34
  %7 = fsub float %5, %6
  %8 = getelementptr inbounds float, ptr %3, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fsub float %9, %11
  %13 = getelementptr inbounds float, ptr %3, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fsub float %14, %16
  %18 = load float, ptr %1, align 4, !tbaa !34
  %19 = fsub float %18, %6
  %20 = getelementptr inbounds float, ptr %1, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fsub float %21, %11
  %23 = getelementptr inbounds float, ptr %1, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fsub float %24, %16
  %26 = fmul float %12, %22
  %27 = tail call float @llvm.fmuladd.f32(float %7, float %19, float %26)
  %28 = tail call float @llvm.fmuladd.f32(float %17, float %25, float %27)
  %29 = fmul float %12, %12
  %30 = tail call float @llvm.fmuladd.f32(float %7, float %7, float %29)
  %31 = tail call float @llvm.fmuladd.f32(float %17, float %17, float %30)
  %32 = fdiv float %28, %31
  %33 = tail call float @llvm.fmuladd.f32(float %7, float %32, float %6)
  store float %33, ptr %0, align 4, !tbaa !34
  %34 = load float, ptr %10, align 4, !tbaa !34
  %35 = tail call float @llvm.fmuladd.f32(float %12, float %32, float %34)
  %36 = getelementptr inbounds float, ptr %0, i64 1
  store float %35, ptr %36, align 4, !tbaa !34
  %37 = load float, ptr %15, align 4, !tbaa !34
  %38 = tail call float @llvm.fmuladd.f32(float %17, float %32, float %37)
  %39 = getelementptr inbounds float, ptr %0, i64 2
  store float %38, ptr %39, align 4, !tbaa !34
  ret float %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @closest_to_plane_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fmul float %6, %6
  %8 = tail call float @llvm.fmuladd.f32(float %4, float %4, float %7)
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = tail call float @llvm.fmuladd.f32(float %10, float %10, float %8)
  %12 = load float, ptr %2, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %2, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fmul float %6, %14
  %16 = tail call float @llvm.fmuladd.f32(float %12, float %4, float %15)
  %17 = getelementptr inbounds float, ptr %2, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = tail call float @llvm.fmuladd.f32(float %18, float %10, float %16)
  %20 = getelementptr inbounds float, ptr %1, i64 3
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fadd float %21, %19
  %23 = fneg float %22
  %24 = fdiv float %23, %11
  %25 = tail call float @llvm.fmuladd.f32(float %4, float %24, float %12)
  store float %25, ptr %0, align 4, !tbaa !34
  %26 = load float, ptr %13, align 4, !tbaa !34
  %27 = load float, ptr %5, align 4, !tbaa !34
  %28 = tail call float @llvm.fmuladd.f32(float %27, float %24, float %26)
  %29 = getelementptr inbounds float, ptr %0, i64 1
  store float %28, ptr %29, align 4, !tbaa !34
  %30 = load float, ptr %17, align 4, !tbaa !34
  %31 = load float, ptr %9, align 4, !tbaa !34
  %32 = tail call float @llvm.fmuladd.f32(float %31, float %24, float %30)
  %33 = getelementptr inbounds float, ptr %0, i64 2
  store float %32, ptr %33, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @dist_signed_squared_to_plane_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = fmul float %5, %5
  %7 = tail call float @llvm.fmuladd.f32(float %3, float %3, float %6)
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %7)
  %11 = load float, ptr %0, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fmul float %5, %13
  %15 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %14)
  %16 = getelementptr inbounds float, ptr %0, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %9, float %15)
  %19 = getelementptr inbounds float, ptr %1, i64 3
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fadd float %20, %18
  %22 = fdiv float %21, %10
  %23 = fmul float %22, %22
  %24 = fmul float %10, %23
  %25 = tail call float @llvm.copysign.f32(float %24, float %21)
  ret float %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @dist_squared_to_plane_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = fmul float %5, %5
  %7 = tail call float @llvm.fmuladd.f32(float %3, float %3, float %6)
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %7)
  %11 = load float, ptr %0, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fmul float %5, %13
  %15 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %14)
  %16 = getelementptr inbounds float, ptr %0, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %9, float %15)
  %19 = getelementptr inbounds float, ptr %1, i64 3
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fadd float %20, %18
  %22 = fdiv float %21, %10
  %23 = fmul float %22, %22
  %24 = fmul float %10, %23
  ret float %24
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @dist_signed_to_plane_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = fmul float %5, %5
  %7 = tail call float @llvm.fmuladd.f32(float %3, float %3, float %6)
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %7)
  %11 = load float, ptr %0, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fmul float %5, %13
  %15 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %14)
  %16 = getelementptr inbounds float, ptr %0, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %9, float %15)
  %19 = getelementptr inbounds float, ptr %1, i64 3
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fadd float %20, %18
  %22 = fdiv float %21, %10
  %23 = tail call float @sqrtf(float noundef %10) #17
  %24 = fmul float %23, %22
  ret float %24
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @dist_to_plane_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = fmul float %5, %5
  %7 = tail call float @llvm.fmuladd.f32(float %3, float %3, float %6)
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %7)
  %11 = load float, ptr %0, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fmul float %5, %13
  %15 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %14)
  %16 = getelementptr inbounds float, ptr %0, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %9, float %15)
  %19 = getelementptr inbounds float, ptr %1, i64 3
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fadd float %20, %18
  %22 = fdiv float %21, %10
  %23 = tail call float @sqrtf(float noundef %10) #17
  %24 = fmul float %23, %22
  %25 = tail call float @llvm.fabs.f32(float %24)
  ret float %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @dist_squared_to_line_segment_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #8 {
  %4 = load float, ptr %2, align 4, !tbaa !34
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = fsub float %4, %5
  %7 = getelementptr inbounds float, ptr %2, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %2, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fsub float %13, %15
  %17 = load float, ptr %0, align 4, !tbaa !34
  %18 = fsub float %17, %5
  %19 = getelementptr inbounds float, ptr %0, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fsub float %20, %10
  %22 = getelementptr inbounds float, ptr %0, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = fsub float %23, %15
  %25 = fmul float %11, %21
  %26 = tail call float @llvm.fmuladd.f32(float %6, float %18, float %25)
  %27 = tail call float @llvm.fmuladd.f32(float %16, float %24, float %26)
  %28 = fmul float %11, %11
  %29 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %28)
  %30 = tail call float @llvm.fmuladd.f32(float %16, float %16, float %29)
  %31 = fdiv float %27, %30
  %32 = fcmp ugt float %31, 0.000000e+00
  br i1 %32, label %33, label %41

33:                                               ; preds = %3
  %34 = tail call float @llvm.fmuladd.f32(float %16, float %31, float %15)
  %35 = tail call float @llvm.fmuladd.f32(float %11, float %31, float %10)
  %36 = tail call float @llvm.fmuladd.f32(float %6, float %31, float %5)
  %37 = fcmp ult float %31, 1.000000e+00
  %38 = select i1 %37, float %34, float %13
  %39 = select i1 %37, float %35, float %8
  %40 = select i1 %37, float %36, float %4
  br label %41

41:                                               ; preds = %33, %3
  %42 = phi float [ %15, %3 ], [ %38, %33 ]
  %43 = phi float [ %10, %3 ], [ %39, %33 ]
  %44 = phi float [ %5, %3 ], [ %40, %33 ]
  %45 = fsub float %17, %44
  %46 = fsub float %20, %43
  %47 = fsub float %23, %42
  %48 = fmul float %46, %46
  %49 = tail call float @llvm.fmuladd.f32(float %45, float %45, float %48)
  %50 = tail call float @llvm.fmuladd.f32(float %47, float %47, float %49)
  ret float %50
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @dist_to_line_segment_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = load float, ptr %2, align 4, !tbaa !34
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = fsub float %4, %5
  %7 = getelementptr inbounds float, ptr %2, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %2, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fsub float %13, %15
  %17 = load float, ptr %0, align 4, !tbaa !34
  %18 = fsub float %17, %5
  %19 = getelementptr inbounds float, ptr %0, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fsub float %20, %10
  %22 = getelementptr inbounds float, ptr %0, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = fsub float %23, %15
  %25 = fmul float %11, %21
  %26 = tail call float @llvm.fmuladd.f32(float %6, float %18, float %25)
  %27 = tail call float @llvm.fmuladd.f32(float %16, float %24, float %26)
  %28 = fmul float %11, %11
  %29 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %28)
  %30 = tail call float @llvm.fmuladd.f32(float %16, float %16, float %29)
  %31 = fdiv float %27, %30
  %32 = fcmp ugt float %31, 0.000000e+00
  br i1 %32, label %33, label %41

33:                                               ; preds = %3
  %34 = tail call float @llvm.fmuladd.f32(float %16, float %31, float %15)
  %35 = tail call float @llvm.fmuladd.f32(float %11, float %31, float %10)
  %36 = tail call float @llvm.fmuladd.f32(float %6, float %31, float %5)
  %37 = fcmp ult float %31, 1.000000e+00
  %38 = select i1 %37, float %34, float %13
  %39 = select i1 %37, float %35, float %8
  %40 = select i1 %37, float %36, float %4
  br label %41

41:                                               ; preds = %33, %3
  %42 = phi float [ %15, %3 ], [ %38, %33 ]
  %43 = phi float [ %10, %3 ], [ %39, %33 ]
  %44 = phi float [ %5, %3 ], [ %40, %33 ]
  %45 = fsub float %17, %44
  %46 = fsub float %20, %43
  %47 = fsub float %23, %42
  %48 = fmul float %46, %46
  %49 = tail call float @llvm.fmuladd.f32(float %45, float %45, float %48)
  %50 = tail call float @llvm.fmuladd.f32(float %47, float %47, float %49)
  %51 = tail call float @sqrtf(float noundef %50) #17
  ret float %51
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @dist_squared_to_line_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #8 {
  %4 = load float, ptr %2, align 4, !tbaa !34
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = fsub float %4, %5
  %7 = getelementptr inbounds float, ptr %2, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %2, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fsub float %13, %15
  %17 = load float, ptr %0, align 4, !tbaa !34
  %18 = fsub float %17, %5
  %19 = getelementptr inbounds float, ptr %0, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fsub float %20, %10
  %22 = getelementptr inbounds float, ptr %0, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = fsub float %23, %15
  %25 = fmul float %11, %21
  %26 = tail call float @llvm.fmuladd.f32(float %6, float %18, float %25)
  %27 = tail call float @llvm.fmuladd.f32(float %16, float %24, float %26)
  %28 = fmul float %11, %11
  %29 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %28)
  %30 = tail call float @llvm.fmuladd.f32(float %16, float %16, float %29)
  %31 = fdiv float %27, %30
  %32 = tail call float @llvm.fmuladd.f32(float %6, float %31, float %5)
  %33 = tail call float @llvm.fmuladd.f32(float %11, float %31, float %10)
  %34 = tail call float @llvm.fmuladd.f32(float %16, float %31, float %15)
  %35 = fsub float %17, %32
  %36 = fsub float %20, %33
  %37 = fsub float %23, %34
  %38 = fmul float %36, %36
  %39 = tail call float @llvm.fmuladd.f32(float %35, float %35, float %38)
  %40 = tail call float @llvm.fmuladd.f32(float %37, float %37, float %39)
  ret float %40
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @dist_to_line_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = load float, ptr %2, align 4, !tbaa !34
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = fsub float %4, %5
  %7 = getelementptr inbounds float, ptr %2, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %2, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fsub float %13, %15
  %17 = load float, ptr %0, align 4, !tbaa !34
  %18 = fsub float %17, %5
  %19 = getelementptr inbounds float, ptr %0, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fsub float %20, %10
  %22 = getelementptr inbounds float, ptr %0, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = fsub float %23, %15
  %25 = fmul float %11, %21
  %26 = tail call float @llvm.fmuladd.f32(float %6, float %18, float %25)
  %27 = tail call float @llvm.fmuladd.f32(float %16, float %24, float %26)
  %28 = fmul float %11, %11
  %29 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %28)
  %30 = tail call float @llvm.fmuladd.f32(float %16, float %16, float %29)
  %31 = fdiv float %27, %30
  %32 = tail call float @llvm.fmuladd.f32(float %6, float %31, float %5)
  %33 = tail call float @llvm.fmuladd.f32(float %11, float %31, float %10)
  %34 = tail call float @llvm.fmuladd.f32(float %16, float %31, float %15)
  %35 = fsub float %17, %32
  %36 = fsub float %20, %33
  %37 = fsub float %23, %34
  %38 = fmul float %36, %36
  %39 = tail call float @llvm.fmuladd.f32(float %35, float %35, float %38)
  %40 = tail call float @llvm.fmuladd.f32(float %37, float %37, float %39)
  %41 = tail call float @sqrtf(float noundef %40) #17
  ret float %41
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @closest_on_tri_to_point_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = load float, ptr %3, align 4, !tbaa !34
  %7 = load float, ptr %2, align 4, !tbaa !34
  %8 = fsub float %6, %7
  %9 = getelementptr inbounds float, ptr %3, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %2, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fsub float %10, %12
  %14 = getelementptr inbounds float, ptr %3, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fsub float %15, %17
  %19 = load float, ptr %4, align 4, !tbaa !34
  %20 = fsub float %19, %7
  %21 = getelementptr inbounds float, ptr %4, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = fsub float %22, %12
  %24 = getelementptr inbounds float, ptr %4, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = fsub float %25, %17
  %27 = load float, ptr %1, align 4, !tbaa !34
  %28 = fsub float %27, %7
  %29 = getelementptr inbounds float, ptr %1, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = fsub float %30, %12
  %32 = getelementptr inbounds float, ptr %1, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = fsub float %33, %17
  %35 = fmul float %13, %31
  %36 = tail call float @llvm.fmuladd.f32(float %8, float %28, float %35)
  %37 = tail call float @llvm.fmuladd.f32(float %18, float %34, float %36)
  %38 = fmul float %23, %31
  %39 = tail call float @llvm.fmuladd.f32(float %20, float %28, float %38)
  %40 = tail call float @llvm.fmuladd.f32(float %26, float %34, float %39)
  %41 = fcmp ole float %37, 0.000000e+00
  %42 = fcmp ole float %40, 0.000000e+00
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %44, label %49

44:                                               ; preds = %5
  store float %7, ptr %0, align 4, !tbaa !34
  %45 = load float, ptr %11, align 4, !tbaa !34
  %46 = getelementptr inbounds float, ptr %0, i64 1
  store float %45, ptr %46, align 4, !tbaa !34
  %47 = load float, ptr %16, align 4, !tbaa !34
  %48 = getelementptr inbounds float, ptr %0, i64 2
  store float %47, ptr %48, align 4, !tbaa !34
  br label %174

49:                                               ; preds = %5
  %50 = fsub float %27, %6
  %51 = fsub float %30, %10
  %52 = fsub float %33, %15
  %53 = fmul float %13, %51
  %54 = tail call float @llvm.fmuladd.f32(float %8, float %50, float %53)
  %55 = tail call float @llvm.fmuladd.f32(float %18, float %52, float %54)
  %56 = fmul float %23, %51
  %57 = tail call float @llvm.fmuladd.f32(float %20, float %50, float %56)
  %58 = tail call float @llvm.fmuladd.f32(float %26, float %52, float %57)
  %59 = fcmp ult float %55, 0.000000e+00
  %60 = fcmp ugt float %58, %55
  %61 = select i1 %59, i1 true, i1 %60
  br i1 %61, label %67, label %62

62:                                               ; preds = %49
  store float %6, ptr %0, align 4, !tbaa !34
  %63 = load float, ptr %9, align 4, !tbaa !34
  %64 = getelementptr inbounds float, ptr %0, i64 1
  store float %63, ptr %64, align 4, !tbaa !34
  %65 = load float, ptr %14, align 4, !tbaa !34
  %66 = getelementptr inbounds float, ptr %0, i64 2
  store float %65, ptr %66, align 4, !tbaa !34
  br label %174

67:                                               ; preds = %49
  %68 = fneg float %55
  %69 = fmul float %40, %68
  %70 = tail call float @llvm.fmuladd.f32(float %37, float %58, float %69)
  %71 = fcmp ole float %70, 0.000000e+00
  %72 = fcmp oge float %37, 0.000000e+00
  %73 = and i1 %72, %71
  %74 = fcmp ole float %55, 0.000000e+00
  %75 = and i1 %74, %73
  br i1 %75, label %76, label %86

76:                                               ; preds = %67
  %77 = fsub float %37, %55
  %78 = fdiv float %37, %77
  %79 = tail call float @llvm.fmuladd.f32(float %8, float %78, float %7)
  store float %79, ptr %0, align 4, !tbaa !34
  %80 = load float, ptr %11, align 4, !tbaa !34
  %81 = tail call float @llvm.fmuladd.f32(float %13, float %78, float %80)
  %82 = getelementptr inbounds float, ptr %0, i64 1
  store float %81, ptr %82, align 4, !tbaa !34
  %83 = load float, ptr %16, align 4, !tbaa !34
  %84 = tail call float @llvm.fmuladd.f32(float %18, float %78, float %83)
  %85 = getelementptr inbounds float, ptr %0, i64 2
  store float %84, ptr %85, align 4, !tbaa !34
  br label %174

86:                                               ; preds = %67
  %87 = fsub float %27, %19
  %88 = fsub float %30, %22
  %89 = fsub float %33, %25
  %90 = fmul float %13, %88
  %91 = tail call float @llvm.fmuladd.f32(float %8, float %87, float %90)
  %92 = tail call float @llvm.fmuladd.f32(float %18, float %89, float %91)
  %93 = fmul float %23, %88
  %94 = tail call float @llvm.fmuladd.f32(float %20, float %87, float %93)
  %95 = tail call float @llvm.fmuladd.f32(float %26, float %89, float %94)
  %96 = fcmp ult float %95, 0.000000e+00
  %97 = fcmp ugt float %92, %95
  %98 = select i1 %96, i1 true, i1 %97
  br i1 %98, label %104, label %99

99:                                               ; preds = %86
  store float %19, ptr %0, align 4, !tbaa !34
  %100 = load float, ptr %21, align 4, !tbaa !34
  %101 = getelementptr inbounds float, ptr %0, i64 1
  store float %100, ptr %101, align 4, !tbaa !34
  %102 = load float, ptr %24, align 4, !tbaa !34
  %103 = getelementptr inbounds float, ptr %0, i64 2
  store float %102, ptr %103, align 4, !tbaa !34
  br label %174

104:                                              ; preds = %86
  %105 = fneg float %37
  %106 = fmul float %95, %105
  %107 = tail call float @llvm.fmuladd.f32(float %92, float %40, float %106)
  %108 = fcmp ole float %107, 0.000000e+00
  %109 = fcmp oge float %40, 0.000000e+00
  %110 = select i1 %108, i1 %109, i1 false
  %111 = fcmp ole float %95, 0.000000e+00
  %112 = and i1 %111, %110
  br i1 %112, label %113, label %123

113:                                              ; preds = %104
  %114 = fsub float %40, %95
  %115 = fdiv float %40, %114
  %116 = tail call float @llvm.fmuladd.f32(float %20, float %115, float %7)
  store float %116, ptr %0, align 4, !tbaa !34
  %117 = load float, ptr %11, align 4, !tbaa !34
  %118 = tail call float @llvm.fmuladd.f32(float %23, float %115, float %117)
  %119 = getelementptr inbounds float, ptr %0, i64 1
  store float %118, ptr %119, align 4, !tbaa !34
  %120 = load float, ptr %16, align 4, !tbaa !34
  %121 = tail call float @llvm.fmuladd.f32(float %26, float %115, float %120)
  %122 = getelementptr inbounds float, ptr %0, i64 2
  store float %121, ptr %122, align 4, !tbaa !34
  br label %174

123:                                              ; preds = %104
  %124 = fneg float %92
  %125 = fmul float %58, %124
  %126 = tail call float @llvm.fmuladd.f32(float %55, float %95, float %125)
  %127 = fcmp ugt float %126, 0.000000e+00
  br i1 %127, label %155, label %128

128:                                              ; preds = %123
  %129 = fsub float %58, %55
  %130 = fcmp ult float %129, 0.000000e+00
  br i1 %130, label %155, label %131

131:                                              ; preds = %128
  %132 = fsub float %92, %95
  %133 = fcmp ult float %132, 0.000000e+00
  br i1 %133, label %155, label %134

134:                                              ; preds = %131
  %135 = fadd float %129, %132
  %136 = fdiv float %129, %135
  %137 = fsub float %19, %6
  store float %137, ptr %0, align 4, !tbaa !34
  %138 = load float, ptr %21, align 4, !tbaa !34
  %139 = load float, ptr %9, align 4, !tbaa !34
  %140 = fsub float %138, %139
  %141 = getelementptr inbounds float, ptr %0, i64 1
  store float %140, ptr %141, align 4, !tbaa !34
  %142 = load float, ptr %24, align 4, !tbaa !34
  %143 = load float, ptr %14, align 4, !tbaa !34
  %144 = fsub float %142, %143
  %145 = getelementptr inbounds float, ptr %0, i64 2
  store float %144, ptr %145, align 4, !tbaa !34
  %146 = fmul float %137, %136
  store float %146, ptr %0, align 4, !tbaa !34
  %147 = fmul float %136, %140
  store float %147, ptr %141, align 4, !tbaa !34
  %148 = fmul float %136, %144
  store float %148, ptr %145, align 4, !tbaa !34
  %149 = load float, ptr %3, align 4, !tbaa !34
  %150 = fadd float %146, %149
  store float %150, ptr %0, align 4, !tbaa !34
  %151 = load float, ptr %9, align 4, !tbaa !34
  %152 = fadd float %147, %151
  store float %152, ptr %141, align 4, !tbaa !34
  %153 = load float, ptr %14, align 4, !tbaa !34
  %154 = fadd float %148, %153
  store float %154, ptr %145, align 4, !tbaa !34
  br label %174

155:                                              ; preds = %131, %128, %123
  %156 = fadd float %126, %107
  %157 = fadd float %70, %156
  %158 = fdiv float 1.000000e+00, %157
  %159 = fmul float %107, %158
  %160 = fmul float %70, %158
  %161 = fmul float %20, %160
  %162 = fmul float %23, %160
  %163 = fmul float %26, %160
  %164 = tail call float @llvm.fmuladd.f32(float %8, float %159, float %7)
  store float %164, ptr %0, align 4, !tbaa !34
  %165 = load float, ptr %11, align 4, !tbaa !34
  %166 = tail call float @llvm.fmuladd.f32(float %13, float %159, float %165)
  %167 = getelementptr inbounds float, ptr %0, i64 1
  store float %166, ptr %167, align 4, !tbaa !34
  %168 = load float, ptr %16, align 4, !tbaa !34
  %169 = tail call float @llvm.fmuladd.f32(float %18, float %159, float %168)
  %170 = getelementptr inbounds float, ptr %0, i64 2
  store float %169, ptr %170, align 4, !tbaa !34
  %171 = fadd float %164, %161
  store float %171, ptr %0, align 4, !tbaa !34
  %172 = fadd float %162, %166
  store float %172, ptr %167, align 4, !tbaa !34
  %173 = fadd float %163, %169
  store float %173, ptr %170, align 4, !tbaa !34
  br label %174

174:                                              ; preds = %155, %134, %113, %99, %76, %62, %44
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @isect_line_line_v2_int(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #8 {
  %5 = load i32, ptr %1, align 4, !tbaa !42
  %6 = load i32, ptr %0, align 4, !tbaa !42
  %7 = sub nsw i32 %5, %6
  %8 = getelementptr inbounds i32, ptr %3, i64 1
  %9 = load i32, ptr %8, align 4, !tbaa !42
  %10 = getelementptr inbounds i32, ptr %2, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !42
  %12 = sub nsw i32 %9, %11
  %13 = mul nsw i32 %12, %7
  %14 = getelementptr inbounds i32, ptr %1, i64 1
  %15 = load i32, ptr %14, align 4, !tbaa !42
  %16 = getelementptr inbounds i32, ptr %0, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !42
  %18 = sub nsw i32 %15, %17
  %19 = load i32, ptr %3, align 4, !tbaa !42
  %20 = load i32, ptr %2, align 4, !tbaa !42
  %21 = sub nsw i32 %19, %20
  %22 = mul nsw i32 %21, %18
  %23 = icmp eq i32 %13, %22
  br i1 %23, label %55, label %24

24:                                               ; preds = %4
  %25 = sub nsw i32 %13, %22
  %26 = sitofp i32 %25 to float
  %27 = sub nsw i32 %17, %11
  %28 = mul nsw i32 %21, %27
  %29 = sub nsw i32 %6, %20
  %30 = mul nsw i32 %29, %12
  %31 = sub nsw i32 %28, %30
  %32 = sitofp i32 %31 to float
  %33 = fdiv float %32, %26
  %34 = mul nsw i32 %27, %7
  %35 = mul nsw i32 %29, %18
  %36 = sub nsw i32 %34, %35
  %37 = sitofp i32 %36 to float
  %38 = fdiv float %37, %26
  %39 = fcmp oge float %33, 0.000000e+00
  %40 = fcmp ole float %33, 1.000000e+00
  %41 = and i1 %39, %40
  %42 = fcmp oge float %38, 0.000000e+00
  %43 = select i1 %41, i1 %42, i1 false
  %44 = fcmp ole float %38, 1.000000e+00
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %46, label %55

46:                                               ; preds = %24
  %47 = fcmp oeq float %33, 0.000000e+00
  %48 = fcmp oeq float %33, 1.000000e+00
  %49 = or i1 %47, %48
  %50 = fcmp oeq float %38, 0.000000e+00
  %51 = select i1 %49, i1 true, i1 %50
  %52 = fcmp oeq float %38, 1.000000e+00
  %53 = select i1 %51, i1 true, i1 %52
  %54 = select i1 %53, i32 1, i32 2
  br label %55

55:                                               ; preds = %24, %46, %4
  %56 = phi i32 [ -1, %4 ], [ %54, %46 ], [ 0, %24 ]
  ret i32 %56
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @isect_line_line_v2_point(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = load float, ptr %0, align 4, !tbaa !34
  %8 = fsub float %6, %7
  %9 = getelementptr inbounds float, ptr %3, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %2, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fsub float %10, %12
  %14 = getelementptr inbounds float, ptr %1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fsub float %15, %17
  %19 = load float, ptr %3, align 4, !tbaa !34
  %20 = load float, ptr %2, align 4, !tbaa !34
  %21 = fsub float %19, %20
  %22 = fneg float %18
  %23 = fmul float %21, %22
  %24 = tail call float @llvm.fmuladd.f32(float %8, float %13, float %23)
  %25 = fcmp oeq float %24, 0.000000e+00
  br i1 %25, label %60, label %26

26:                                               ; preds = %5
  %27 = fsub float %20, %19
  %28 = fneg float %17
  %29 = fmul float %6, %28
  %30 = tail call float @llvm.fmuladd.f32(float %7, float %15, float %29)
  %31 = fsub float %7, %6
  %32 = fneg float %12
  %33 = fmul float %19, %32
  %34 = tail call float @llvm.fmuladd.f32(float %20, float %10, float %33)
  %35 = fneg float %31
  %36 = fmul float %34, %35
  %37 = tail call float @llvm.fmuladd.f32(float %27, float %30, float %36)
  %38 = fdiv float %37, %24
  store float %38, ptr %4, align 4, !tbaa !34
  %39 = load float, ptr %11, align 4, !tbaa !34
  %40 = load float, ptr %9, align 4, !tbaa !34
  %41 = fsub float %39, %40
  %42 = load float, ptr %0, align 4, !tbaa !34
  %43 = load float, ptr %14, align 4, !tbaa !34
  %44 = load float, ptr %16, align 4, !tbaa !34
  %45 = load float, ptr %1, align 4, !tbaa !34
  %46 = fneg float %44
  %47 = fmul float %45, %46
  %48 = tail call float @llvm.fmuladd.f32(float %42, float %43, float %47)
  %49 = fsub float %44, %43
  %50 = load float, ptr %2, align 4, !tbaa !34
  %51 = load float, ptr %3, align 4, !tbaa !34
  %52 = fneg float %39
  %53 = fmul float %51, %52
  %54 = tail call float @llvm.fmuladd.f32(float %50, float %40, float %53)
  %55 = fneg float %49
  %56 = fmul float %54, %55
  %57 = tail call float @llvm.fmuladd.f32(float %41, float %48, float %56)
  %58 = fdiv float %57, %24
  %59 = getelementptr inbounds float, ptr %4, i64 1
  store float %58, ptr %59, align 4, !tbaa !34
  br label %60

60:                                               ; preds = %5, %26
  %61 = phi i32 [ 2, %26 ], [ -1, %5 ]
  ret i32 %61
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @isect_line_line_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #8 {
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = load float, ptr %0, align 4, !tbaa !34
  %7 = fsub float %5, %6
  %8 = getelementptr inbounds float, ptr %3, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fsub float %9, %11
  %13 = getelementptr inbounds float, ptr %1, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %0, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fsub float %14, %16
  %18 = load float, ptr %3, align 4, !tbaa !34
  %19 = load float, ptr %2, align 4, !tbaa !34
  %20 = fsub float %18, %19
  %21 = fneg float %17
  %22 = fmul float %20, %21
  %23 = tail call float @llvm.fmuladd.f32(float %7, float %12, float %22)
  %24 = fcmp oeq float %23, 0.000000e+00
  br i1 %24, label %51, label %25

25:                                               ; preds = %4
  %26 = fsub float %16, %11
  %27 = fsub float %6, %19
  %28 = fneg float %27
  %29 = fmul float %12, %28
  %30 = tail call float @llvm.fmuladd.f32(float %26, float %20, float %29)
  %31 = fdiv float %30, %23
  %32 = fmul float %17, %28
  %33 = tail call float @llvm.fmuladd.f32(float %26, float %7, float %32)
  %34 = fdiv float %33, %23
  %35 = fcmp oge float %31, 0.000000e+00
  %36 = fcmp ole float %31, 1.000000e+00
  %37 = and i1 %35, %36
  %38 = fcmp oge float %34, 0.000000e+00
  %39 = select i1 %37, i1 %38, i1 false
  %40 = fcmp ole float %34, 1.000000e+00
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %42, label %51

42:                                               ; preds = %25
  %43 = fcmp oeq float %31, 0.000000e+00
  %44 = fcmp oeq float %31, 1.000000e+00
  %45 = or i1 %43, %44
  %46 = fcmp oeq float %34, 0.000000e+00
  %47 = select i1 %45, i1 true, i1 %46
  %48 = fcmp oeq float %34, 1.000000e+00
  %49 = select i1 %47, i1 true, i1 %48
  %50 = select i1 %49, i32 1, i32 2
  br label %51

51:                                               ; preds = %25, %42, %4
  %52 = phi i32 [ -1, %4 ], [ %50, %42 ], [ 0, %25 ]
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define dso_local i32 @isect_seg_seg_v2_point(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #6 {
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = load float, ptr %0, align 4, !tbaa !34
  %8 = fsub float %6, %7
  %9 = load float, ptr %3, align 4, !tbaa !34
  %10 = load float, ptr %2, align 4, !tbaa !34
  %11 = fsub float %9, %10
  %12 = fsub float %7, %9
  %13 = getelementptr inbounds float, ptr %1, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %0, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %3, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %2, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fsub float %19, %21
  %23 = fsub float %16, %19
  %24 = fneg float %17
  %25 = fmul float %11, %24
  %26 = tail call float @llvm.fmuladd.f32(float %8, float %22, float %25)
  %27 = fcmp oeq float %26, 0.000000e+00
  br i1 %27, label %28, label %100

28:                                               ; preds = %5
  %29 = fmul float %12, %24
  %30 = tail call float @llvm.fmuladd.f32(float %8, float %23, float %29)
  %31 = fcmp oeq float %30, 0.000000e+00
  br i1 %31, label %32, label %99

32:                                               ; preds = %28
  %33 = fneg float %22
  %34 = fmul float %12, %33
  %35 = tail call float @llvm.fmuladd.f32(float %11, float %23, float %34)
  %36 = fcmp oeq float %35, 0.000000e+00
  br i1 %36, label %37, label %99

37:                                               ; preds = %32
  %38 = fcmp une float %7, %6
  %39 = fcmp une float %16, %14
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %52, label %41

41:                                               ; preds = %37
  %42 = fmul float %22, %22
  %43 = tail call float @llvm.fmuladd.f32(float %11, float %11, float %42)
  %44 = fcmp ogt float %43, 0x3D71979980000000
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = fcmp une float %7, %10
  %47 = fcmp une float %16, %21
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %96, label %49

49:                                               ; preds = %45
  store float %7, ptr %4, align 4, !tbaa !34
  %50 = load float, ptr %15, align 4, !tbaa !34
  %51 = getelementptr inbounds float, ptr %4, i64 1
  store float %50, ptr %51, align 4, !tbaa !34
  br label %96

52:                                               ; preds = %41, %37
  %53 = phi ptr [ %3, %37 ], [ %1, %41 ]
  %54 = phi ptr [ %2, %37 ], [ %0, %41 ]
  %55 = phi ptr [ %1, %37 ], [ %3, %41 ]
  %56 = phi ptr [ %0, %37 ], [ %2, %41 ]
  %57 = load float, ptr %54, align 4, !tbaa !34
  %58 = load float, ptr %56, align 4, !tbaa !34
  %59 = fsub float %57, %58
  %60 = getelementptr inbounds float, ptr %54, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !34
  %62 = getelementptr inbounds float, ptr %56, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !34
  %64 = fsub float %61, %63
  %65 = load float, ptr %55, align 4, !tbaa !34
  %66 = fsub float %65, %58
  %67 = getelementptr inbounds float, ptr %55, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !34
  %69 = fsub float %68, %63
  %70 = fmul float %64, %69
  %71 = tail call float @llvm.fmuladd.f32(float %59, float %66, float %70)
  %72 = fmul float %69, %69
  %73 = tail call float @llvm.fmuladd.f32(float %66, float %66, float %72)
  %74 = fdiv float %71, %73
  %75 = load float, ptr %53, align 4, !tbaa !34
  %76 = fsub float %75, %58
  %77 = getelementptr inbounds float, ptr %53, i64 1
  %78 = load float, ptr %77, align 4, !tbaa !34
  %79 = fsub float %78, %63
  %80 = fmul float %69, %79
  %81 = tail call float @llvm.fmuladd.f32(float %76, float %66, float %80)
  %82 = fdiv float %81, %73
  %83 = fcmp ogt float %74, %82
  %84 = select i1 %83, float %82, float %74
  %85 = select i1 %83, float %74, float %82
  %86 = fcmp ogt float %84, 0x3FF0000100000000
  %87 = fcmp olt float %85, 0xBEB0C6F7A0000000
  %88 = or i1 %86, %87
  br i1 %88, label %96, label %89

89:                                               ; preds = %52
  %90 = fcmp olt float %84, 0.000000e+00
  %91 = select i1 %90, float 0.000000e+00, float %84
  %92 = fcmp ogt float %85, 1.000000e+00
  %93 = select i1 %92, float 1.000000e+00, float %85
  %94 = fcmp oeq float %91, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  tail call void @interp_v2_v2v2(ptr noundef %4, ptr noundef nonnull %56, ptr noundef nonnull %55, float noundef %91) #17
  br label %96

96:                                               ; preds = %89, %52, %45, %95, %49
  %97 = phi i1 [ false, %95 ], [ false, %49 ], [ false, %45 ], [ false, %52 ], [ true, %89 ]
  %98 = phi i32 [ 1, %95 ], [ 1, %49 ], [ -1, %45 ], [ -1, %52 ], [ undef, %89 ]
  br i1 %97, label %99, label %117

99:                                               ; preds = %96, %32, %28
  br label %117

100:                                              ; preds = %5
  %101 = fneg float %22
  %102 = fmul float %12, %101
  %103 = tail call float @llvm.fmuladd.f32(float %23, float %11, float %102)
  %104 = fdiv float %103, %26
  %105 = fneg float %8
  %106 = fmul float %23, %105
  %107 = tail call float @llvm.fmuladd.f32(float %12, float %17, float %106)
  %108 = fdiv float %107, %26
  %109 = fcmp oge float %104, 0xBEB0C6F7A0000000
  %110 = fcmp ole float %104, 0x3FF0000100000000
  %111 = and i1 %109, %110
  %112 = fcmp oge float %108, 0xBEB0C6F7A0000000
  %113 = select i1 %111, i1 %112, i1 false
  %114 = fcmp ole float %108, 0x3FF0000100000000
  %115 = select i1 %113, i1 %114, i1 false
  br i1 %115, label %116, label %117

116:                                              ; preds = %100
  tail call void @interp_v2_v2v2(ptr noundef %4, ptr noundef nonnull %0, ptr noundef nonnull %1, float noundef %104) #17
  br label %117

117:                                              ; preds = %100, %96, %116, %99
  %118 = phi i32 [ -1, %99 ], [ %98, %96 ], [ 1, %116 ], [ -1, %100 ]
  ret i32 %118
}

declare void @interp_v2_v2v2(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @isect_seg_seg_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #8 {
  %5 = getelementptr inbounds float, ptr %3, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fsub float %6, %8
  %10 = load float, ptr %2, align 4, !tbaa !34
  %11 = load float, ptr %0, align 4, !tbaa !34
  %12 = fsub float %10, %11
  %13 = fmul float %9, %12
  %14 = getelementptr inbounds float, ptr %2, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fsub float %15, %8
  %17 = load float, ptr %3, align 4, !tbaa !34
  %18 = fsub float %17, %11
  %19 = fmul float %16, %18
  %20 = fcmp ogt float %13, %19
  %21 = getelementptr inbounds float, ptr %1, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = fsub float %6, %22
  %24 = load float, ptr %1, align 4, !tbaa !34
  %25 = fsub float %10, %24
  %26 = fmul float %23, %25
  %27 = fsub float %15, %22
  %28 = fsub float %17, %24
  %29 = fmul float %27, %28
  %30 = fcmp ule float %26, %29
  %31 = xor i1 %20, %30
  br i1 %31, label %43, label %32

32:                                               ; preds = %4
  %33 = fsub float %24, %11
  %34 = fmul float %16, %33
  %35 = fsub float %22, %8
  %36 = fmul float %12, %35
  %37 = fcmp ogt float %34, %36
  %38 = fmul float %9, %33
  %39 = fmul float %18, %35
  %40 = fcmp ogt float %38, %39
  %41 = xor i1 %37, %40
  %42 = zext i1 %41 to i8
  br label %43

43:                                               ; preds = %32, %4
  %44 = phi i8 [ 0, %4 ], [ %42, %32 ]
  ret i8 %44
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef i32 @isect_line_sphere_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #1 {
  %7 = load float, ptr %1, align 4, !tbaa !34
  %8 = load float, ptr %0, align 4, !tbaa !34
  %9 = fsub float %7, %8
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fsub float %11, %13
  %15 = getelementptr inbounds float, ptr %1, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %0, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fsub float %16, %18
  %20 = fmul float %14, %14
  %21 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %20)
  %22 = tail call float @llvm.fmuladd.f32(float %19, float %19, float %21)
  %23 = load float, ptr %2, align 4, !tbaa !34
  %24 = fsub float %8, %23
  %25 = getelementptr inbounds float, ptr %2, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = fsub float %13, %26
  %28 = fmul float %14, %27
  %29 = tail call float @llvm.fmuladd.f32(float %9, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %2, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = fsub float %18, %31
  %33 = tail call float @llvm.fmuladd.f32(float %19, float %32, float %29)
  %34 = fmul float %33, 2.000000e+00
  %35 = fmul float %26, %26
  %36 = tail call float @llvm.fmuladd.f32(float %23, float %23, float %35)
  %37 = tail call float @llvm.fmuladd.f32(float %31, float %31, float %36)
  %38 = fmul float %13, %13
  %39 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %38)
  %40 = tail call float @llvm.fmuladd.f32(float %18, float %18, float %39)
  %41 = fadd float %40, %37
  %42 = fmul float %13, %26
  %43 = tail call float @llvm.fmuladd.f32(float %23, float %8, float %42)
  %44 = tail call float @llvm.fmuladd.f32(float %31, float %18, float %43)
  %45 = tail call float @llvm.fmuladd.f32(float %44, float -2.000000e+00, float %41)
  %46 = fneg float %3
  %47 = tail call float @llvm.fmuladd.f32(float %46, float %3, float %45)
  %48 = fmul float %22, -4.000000e+00
  %49 = fmul float %48, %47
  %50 = tail call float @llvm.fmuladd.f32(float %34, float %34, float %49)
  %51 = fcmp olt float %50, 0.000000e+00
  br i1 %51, label %89, label %52

52:                                               ; preds = %6
  %53 = fcmp oeq float %50, 0.000000e+00
  br i1 %53, label %54, label %59

54:                                               ; preds = %52
  %55 = fneg float %34
  %56 = fmul float %22, 2.000000e+00
  %57 = fdiv float %55, %56
  %58 = tail call float @llvm.fmuladd.f32(float %9, float %57, float %8)
  store float %58, ptr %4, align 4, !tbaa !34
  br label %79

59:                                               ; preds = %52
  %60 = fcmp ogt float %50, 0.000000e+00
  br i1 %60, label %61, label %89

61:                                               ; preds = %59
  %62 = tail call float @sqrtf(float noundef %50) #17
  %63 = fneg float %34
  %64 = fsub float %62, %34
  %65 = fmul float %22, 2.000000e+00
  %66 = fdiv float %64, %65
  %67 = load float, ptr %0, align 4, !tbaa !34
  %68 = tail call float @llvm.fmuladd.f32(float %9, float %66, float %67)
  store float %68, ptr %4, align 4, !tbaa !34
  %69 = load float, ptr %12, align 4, !tbaa !34
  %70 = tail call float @llvm.fmuladd.f32(float %14, float %66, float %69)
  %71 = getelementptr inbounds float, ptr %4, i64 1
  store float %70, ptr %71, align 4, !tbaa !34
  %72 = load float, ptr %17, align 4, !tbaa !34
  %73 = tail call float @llvm.fmuladd.f32(float %19, float %66, float %72)
  %74 = getelementptr inbounds float, ptr %4, i64 2
  store float %73, ptr %74, align 4, !tbaa !34
  %75 = fsub float %63, %62
  %76 = fdiv float %75, %65
  %77 = load float, ptr %0, align 4, !tbaa !34
  %78 = tail call float @llvm.fmuladd.f32(float %9, float %76, float %77)
  store float %78, ptr %5, align 4, !tbaa !34
  br label %79

79:                                               ; preds = %54, %61
  %80 = phi float [ %76, %61 ], [ %57, %54 ]
  %81 = phi ptr [ %5, %61 ], [ %4, %54 ]
  %82 = phi i32 [ 2, %61 ], [ 1, %54 ]
  %83 = load float, ptr %12, align 4, !tbaa !34
  %84 = tail call float @llvm.fmuladd.f32(float %14, float %80, float %83)
  %85 = getelementptr inbounds float, ptr %81, i64 1
  store float %84, ptr %85, align 4, !tbaa !34
  %86 = load float, ptr %17, align 4, !tbaa !34
  %87 = tail call float @llvm.fmuladd.f32(float %19, float %80, float %86)
  %88 = getelementptr inbounds float, ptr %81, i64 2
  store float %87, ptr %88, align 4, !tbaa !34
  br label %89

89:                                               ; preds = %79, %59, %6
  %90 = phi i32 [ 0, %6 ], [ -1, %59 ], [ %82, %79 ]
  ret i32 %90
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef i32 @isect_line_sphere_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #1 {
  %7 = load float, ptr %1, align 4, !tbaa !34
  %8 = load float, ptr %0, align 4, !tbaa !34
  %9 = fsub float %7, %8
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fsub float %11, %13
  %15 = fmul float %14, %14
  %16 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %15)
  %17 = load float, ptr %2, align 4, !tbaa !34
  %18 = fsub float %8, %17
  %19 = getelementptr inbounds float, ptr %2, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fsub float %13, %20
  %22 = fmul float %14, %21
  %23 = tail call float @llvm.fmuladd.f32(float %9, float %18, float %22)
  %24 = fmul float %23, 2.000000e+00
  %25 = fmul float %20, %20
  %26 = tail call float @llvm.fmuladd.f32(float %17, float %17, float %25)
  %27 = fmul float %13, %13
  %28 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %27)
  %29 = fadd float %28, %26
  %30 = fmul float %13, %20
  %31 = tail call float @llvm.fmuladd.f32(float %17, float %8, float %30)
  %32 = tail call float @llvm.fmuladd.f32(float %31, float -2.000000e+00, float %29)
  %33 = fneg float %3
  %34 = tail call float @llvm.fmuladd.f32(float %33, float %3, float %32)
  %35 = fmul float %16, -4.000000e+00
  %36 = fmul float %35, %34
  %37 = tail call float @llvm.fmuladd.f32(float %24, float %24, float %36)
  %38 = fcmp olt float %37, 0.000000e+00
  br i1 %38, label %70, label %39

39:                                               ; preds = %6
  %40 = fcmp oeq float %37, 0.000000e+00
  br i1 %40, label %41, label %46

41:                                               ; preds = %39
  %42 = fneg float %24
  %43 = fmul float %16, 2.000000e+00
  %44 = fdiv float %42, %43
  %45 = tail call float @llvm.fmuladd.f32(float %9, float %44, float %8)
  store float %45, ptr %4, align 4, !tbaa !34
  br label %63

46:                                               ; preds = %39
  %47 = fcmp ogt float %37, 0.000000e+00
  br i1 %47, label %48, label %70

48:                                               ; preds = %46
  %49 = tail call float @sqrtf(float noundef %37) #17
  %50 = fneg float %24
  %51 = fsub float %49, %24
  %52 = fmul float %16, 2.000000e+00
  %53 = fdiv float %51, %52
  %54 = load float, ptr %0, align 4, !tbaa !34
  %55 = tail call float @llvm.fmuladd.f32(float %9, float %53, float %54)
  store float %55, ptr %4, align 4, !tbaa !34
  %56 = load float, ptr %12, align 4, !tbaa !34
  %57 = tail call float @llvm.fmuladd.f32(float %14, float %53, float %56)
  %58 = getelementptr inbounds float, ptr %4, i64 1
  store float %57, ptr %58, align 4, !tbaa !34
  %59 = fsub float %50, %49
  %60 = fdiv float %59, %52
  %61 = load float, ptr %0, align 4, !tbaa !34
  %62 = tail call float @llvm.fmuladd.f32(float %9, float %60, float %61)
  store float %62, ptr %5, align 4, !tbaa !34
  br label %63

63:                                               ; preds = %41, %48
  %64 = phi float [ %60, %48 ], [ %44, %41 ]
  %65 = phi ptr [ %5, %48 ], [ %4, %41 ]
  %66 = phi i32 [ 2, %48 ], [ 1, %41 ]
  %67 = load float, ptr %12, align 4, !tbaa !34
  %68 = tail call float @llvm.fmuladd.f32(float %14, float %64, float %67)
  %69 = getelementptr inbounds float, ptr %65, i64 1
  store float %68, ptr %69, align 4, !tbaa !34
  br label %70

70:                                               ; preds = %63, %46, %6
  %71 = phi i32 [ 0, %6 ], [ -1, %46 ], [ %66, %63 ]
  ret i32 %71
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local zeroext i8 @isect_point_poly_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #10 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %44, label %6

6:                                                ; preds = %4
  %7 = add i32 %2, -1
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = zext i32 %2 to i64
  br label %11

11:                                               ; preds = %6, %39
  %12 = phi i64 [ 0, %6 ], [ %41, %39 ]
  %13 = phi i8 [ 0, %6 ], [ %40, %39 ]
  %14 = phi i32 [ %7, %6 ], [ %42, %39 ]
  %15 = getelementptr inbounds [2 x float], ptr %1, i64 %12, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fcmp ogt float %16, %9
  %18 = zext i32 %14 to i64
  %19 = getelementptr inbounds [2 x float], ptr %1, i64 %18, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fcmp ule float %20, %9
  %22 = xor i1 %17, %21
  br i1 %22, label %39, label %23

23:                                               ; preds = %11
  %24 = getelementptr inbounds [2 x float], ptr %1, i64 %18
  %25 = getelementptr inbounds [2 x float], ptr %1, i64 %12
  %26 = load float, ptr %0, align 4, !tbaa !34
  %27 = load float, ptr %24, align 4, !tbaa !34
  %28 = load float, ptr %25, align 4, !tbaa !34
  %29 = fsub float %27, %28
  %30 = fsub float %9, %16
  %31 = fmul float %30, %29
  %32 = fsub float %20, %16
  %33 = fdiv float %31, %32
  %34 = fadd float %28, %33
  %35 = fcmp olt float %26, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %23
  %37 = icmp eq i8 %13, 0
  %38 = zext i1 %37 to i8
  br label %39

39:                                               ; preds = %11, %23, %36
  %40 = phi i8 [ %38, %36 ], [ %13, %23 ], [ %13, %11 ]
  %41 = add nuw nsw i64 %12, 1
  %42 = trunc i64 %12 to i32
  %43 = icmp eq i64 %41, %10
  br i1 %43, label %44, label %11, !llvm.loop !44

44:                                               ; preds = %39, %4
  %45 = phi i8 [ 0, %4 ], [ %40, %39 ]
  ret i8 %45
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local zeroext i8 @isect_point_poly_v2_int(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #10 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %44, label %6

6:                                                ; preds = %4
  %7 = add i32 %2, -1
  %8 = getelementptr inbounds i32, ptr %0, i64 1
  %9 = load i32, ptr %8, align 4, !tbaa !42
  %10 = zext i32 %2 to i64
  br label %11

11:                                               ; preds = %6, %39
  %12 = phi i64 [ 0, %6 ], [ %41, %39 ]
  %13 = phi i8 [ 0, %6 ], [ %40, %39 ]
  %14 = phi i32 [ %7, %6 ], [ %42, %39 ]
  %15 = getelementptr inbounds [2 x i32], ptr %1, i64 %12, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !42
  %17 = icmp sgt i32 %16, %9
  %18 = zext i32 %14 to i64
  %19 = getelementptr inbounds [2 x i32], ptr %1, i64 %18, i64 1
  %20 = load i32, ptr %19, align 4, !tbaa !42
  %21 = icmp sle i32 %20, %9
  %22 = xor i1 %17, %21
  br i1 %22, label %39, label %23

23:                                               ; preds = %11
  %24 = getelementptr inbounds [2 x i32], ptr %1, i64 %18
  %25 = getelementptr inbounds [2 x i32], ptr %1, i64 %12
  %26 = load i32, ptr %0, align 4, !tbaa !42
  %27 = load i32, ptr %24, align 4, !tbaa !42
  %28 = load i32, ptr %25, align 4, !tbaa !42
  %29 = sub nsw i32 %27, %28
  %30 = sub nsw i32 %9, %16
  %31 = mul nsw i32 %29, %30
  %32 = sub nsw i32 %20, %16
  %33 = sdiv i32 %31, %32
  %34 = add nsw i32 %33, %28
  %35 = icmp slt i32 %26, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %23
  %37 = icmp eq i8 %13, 0
  %38 = zext i1 %37 to i8
  br label %39

39:                                               ; preds = %11, %23, %36
  %40 = phi i8 [ %38, %36 ], [ %13, %23 ], [ %13, %11 ]
  %41 = add nuw nsw i64 %12, 1
  %42 = trunc i64 %12 to i32
  %43 = icmp eq i64 %41, %10
  br i1 %43, label %44, label %11, !llvm.loop !45

44:                                               ; preds = %39, %4
  %45 = phi i8 [ 0, %4 ], [ %40, %39 ]
  ret i8 %45
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @isect_point_tri_v2_cw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #8 {
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = load float, ptr %0, align 4, !tbaa !34
  %7 = fsub float %5, %6
  %8 = getelementptr inbounds float, ptr %2, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fsub float %9, %11
  %13 = load float, ptr %2, align 4, !tbaa !34
  %14 = fsub float %13, %6
  %15 = getelementptr inbounds float, ptr %1, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fsub float %16, %11
  %18 = fneg float %14
  %19 = fmul float %17, %18
  %20 = tail call float @llvm.fmuladd.f32(float %7, float %12, float %19)
  %21 = fcmp ult float %20, 0.000000e+00
  br i1 %21, label %37, label %22

22:                                               ; preds = %4
  %23 = getelementptr inbounds float, ptr %3, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fsub float %24, %11
  %26 = load float, ptr %3, align 4, !tbaa !34
  %27 = fsub float %26, %6
  %28 = fneg float %27
  %29 = fmul float %12, %28
  %30 = tail call float @llvm.fmuladd.f32(float %14, float %25, float %29)
  %31 = fcmp ult float %30, 0.000000e+00
  br i1 %31, label %37, label %32

32:                                               ; preds = %22
  %33 = fneg float %7
  %34 = fmul float %25, %33
  %35 = tail call float @llvm.fmuladd.f32(float %27, float %17, float %34)
  %36 = fcmp ult float %35, 0.000000e+00
  br i1 %36, label %37, label %38

37:                                               ; preds = %22, %32, %4
  br label %38

38:                                               ; preds = %32, %37
  %39 = phi i8 [ 0, %37 ], [ 1, %32 ]
  ret i8 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @isect_point_tri_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #8 {
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = load float, ptr %0, align 4, !tbaa !34
  %7 = fsub float %5, %6
  %8 = getelementptr inbounds float, ptr %2, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fsub float %9, %11
  %13 = load float, ptr %2, align 4, !tbaa !34
  %14 = fsub float %13, %6
  %15 = getelementptr inbounds float, ptr %1, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fsub float %16, %11
  %18 = fneg float %14
  %19 = fmul float %17, %18
  %20 = tail call float @llvm.fmuladd.f32(float %7, float %12, float %19)
  %21 = fcmp ult float %20, 0.000000e+00
  %22 = getelementptr inbounds float, ptr %3, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = fsub float %23, %11
  %25 = load float, ptr %3, align 4, !tbaa !34
  %26 = fsub float %25, %6
  %27 = fneg float %26
  %28 = fmul float %12, %27
  %29 = tail call float @llvm.fmuladd.f32(float %14, float %24, float %28)
  %30 = fcmp ult float %29, 0.000000e+00
  br i1 %21, label %37, label %31

31:                                               ; preds = %4
  br i1 %30, label %43, label %32

32:                                               ; preds = %31
  %33 = fneg float %7
  %34 = fmul float %24, %33
  %35 = tail call float @llvm.fmuladd.f32(float %26, float %17, float %34)
  %36 = fcmp ult float %35, 0.000000e+00
  br i1 %36, label %43, label %44

37:                                               ; preds = %4
  br i1 %30, label %38, label %43

38:                                               ; preds = %37
  %39 = fneg float %7
  %40 = fmul float %24, %39
  %41 = tail call float @llvm.fmuladd.f32(float %26, float %17, float %40)
  %42 = fcmp ult float %41, 0.000000e+00
  br i1 %42, label %44, label %43

43:                                               ; preds = %37, %38, %31, %32
  br label %44

44:                                               ; preds = %38, %32, %43
  %45 = phi i32 [ 0, %43 ], [ 1, %32 ], [ -1, %38 ]
  ret i32 %45
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @isect_point_quad_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #8 {
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = load float, ptr %0, align 4, !tbaa !34
  %8 = fsub float %6, %7
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %0, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fsub float %10, %12
  %14 = load float, ptr %2, align 4, !tbaa !34
  %15 = fsub float %14, %7
  %16 = getelementptr inbounds float, ptr %1, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fsub float %17, %12
  %19 = fneg float %15
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %8, float %13, float %20)
  %22 = fcmp ult float %21, 0.000000e+00
  %23 = getelementptr inbounds float, ptr %3, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fsub float %24, %12
  %26 = load float, ptr %3, align 4, !tbaa !34
  %27 = fsub float %26, %7
  %28 = fneg float %27
  %29 = fmul float %13, %28
  %30 = tail call float @llvm.fmuladd.f32(float %15, float %25, float %29)
  %31 = fcmp ult float %30, 0.000000e+00
  br i1 %22, label %48, label %32

32:                                               ; preds = %5
  br i1 %31, label %64, label %33

33:                                               ; preds = %32
  %34 = getelementptr inbounds float, ptr %4, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = fsub float %35, %12
  %37 = load float, ptr %4, align 4, !tbaa !34
  %38 = fsub float %37, %7
  %39 = fneg float %38
  %40 = fmul float %25, %39
  %41 = tail call float @llvm.fmuladd.f32(float %27, float %36, float %40)
  %42 = fcmp ult float %41, 0.000000e+00
  br i1 %42, label %64, label %43

43:                                               ; preds = %33
  %44 = fneg float %8
  %45 = fmul float %36, %44
  %46 = tail call float @llvm.fmuladd.f32(float %38, float %18, float %45)
  %47 = fcmp ult float %46, 0.000000e+00
  br i1 %47, label %64, label %65

48:                                               ; preds = %5
  br i1 %31, label %49, label %64

49:                                               ; preds = %48
  %50 = getelementptr inbounds float, ptr %4, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !34
  %52 = fsub float %51, %12
  %53 = load float, ptr %4, align 4, !tbaa !34
  %54 = fsub float %53, %7
  %55 = fneg float %54
  %56 = fmul float %25, %55
  %57 = tail call float @llvm.fmuladd.f32(float %27, float %52, float %56)
  %58 = fcmp ult float %57, 0.000000e+00
  br i1 %58, label %59, label %64

59:                                               ; preds = %49
  %60 = fneg float %8
  %61 = fmul float %52, %60
  %62 = tail call float @llvm.fmuladd.f32(float %54, float %18, float %61)
  %63 = fcmp ult float %62, 0.000000e+00
  br i1 %63, label %65, label %64

64:                                               ; preds = %48, %59, %49, %32, %43, %33
  br label %65

65:                                               ; preds = %59, %43, %64
  %66 = phi i32 [ 0, %64 ], [ 1, %43 ], [ -1, %59 ]
  ret i32 %66
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @isect_line_tri_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5, ptr noundef writeonly %6) local_unnamed_addr #0 {
  %8 = load float, ptr %3, align 4, !tbaa !34
  %9 = load float, ptr %2, align 4, !tbaa !34
  %10 = fsub float %8, %9
  %11 = getelementptr inbounds float, ptr %3, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %2, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fsub float %12, %14
  %16 = getelementptr inbounds float, ptr %3, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %2, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fsub float %17, %19
  %21 = load float, ptr %4, align 4, !tbaa !34
  %22 = fsub float %21, %9
  %23 = getelementptr inbounds float, ptr %4, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fsub float %24, %14
  %26 = getelementptr inbounds float, ptr %4, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = fsub float %27, %19
  %29 = load float, ptr %1, align 4, !tbaa !34
  %30 = load float, ptr %0, align 4, !tbaa !34
  %31 = fsub float %29, %30
  %32 = getelementptr inbounds float, ptr %1, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = getelementptr inbounds float, ptr %0, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = fsub float %33, %35
  %37 = getelementptr inbounds float, ptr %1, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !34
  %39 = getelementptr inbounds float, ptr %0, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = fsub float %38, %40
  %42 = fneg float %41
  %43 = fmul float %25, %42
  %44 = tail call float @llvm.fmuladd.f32(float %36, float %28, float %43)
  %45 = fneg float %31
  %46 = fmul float %28, %45
  %47 = tail call float @llvm.fmuladd.f32(float %41, float %22, float %46)
  %48 = fneg float %36
  %49 = fmul float %22, %48
  %50 = tail call float @llvm.fmuladd.f32(float %31, float %25, float %49)
  %51 = fmul float %15, %47
  %52 = tail call float @llvm.fmuladd.f32(float %10, float %44, float %51)
  %53 = tail call float @llvm.fmuladd.f32(float %20, float %50, float %52)
  %54 = fcmp oeq float %53, 0.000000e+00
  br i1 %54, label %97, label %55

55:                                               ; preds = %7
  %56 = fdiv float 1.000000e+00, %53
  %57 = fsub float %30, %9
  %58 = fsub float %35, %14
  %59 = fsub float %40, %19
  %60 = fmul float %58, %47
  %61 = tail call float @llvm.fmuladd.f32(float %57, float %44, float %60)
  %62 = tail call float @llvm.fmuladd.f32(float %59, float %50, float %61)
  %63 = fmul float %62, %56
  %64 = fcmp olt float %63, 0.000000e+00
  %65 = fcmp ogt float %63, 1.000000e+00
  %66 = or i1 %64, %65
  br i1 %66, label %97, label %67

67:                                               ; preds = %55
  %68 = fneg float %59
  %69 = fmul float %15, %68
  %70 = tail call float @llvm.fmuladd.f32(float %58, float %20, float %69)
  %71 = fneg float %57
  %72 = fmul float %20, %71
  %73 = tail call float @llvm.fmuladd.f32(float %59, float %10, float %72)
  %74 = fneg float %58
  %75 = fmul float %10, %74
  %76 = tail call float @llvm.fmuladd.f32(float %57, float %15, float %75)
  %77 = fmul float %36, %73
  %78 = tail call float @llvm.fmuladd.f32(float %31, float %70, float %77)
  %79 = tail call float @llvm.fmuladd.f32(float %41, float %76, float %78)
  %80 = fmul float %79, %56
  %81 = fcmp olt float %80, 0.000000e+00
  %82 = fadd float %63, %80
  %83 = fcmp ogt float %82, 1.000000e+00
  %84 = or i1 %81, %83
  br i1 %84, label %97, label %85

85:                                               ; preds = %67
  %86 = fmul float %25, %73
  %87 = tail call float @llvm.fmuladd.f32(float %22, float %70, float %86)
  %88 = tail call float @llvm.fmuladd.f32(float %28, float %76, float %87)
  %89 = fmul float %88, %56
  store float %89, ptr %5, align 4, !tbaa !34
  %90 = fcmp olt float %89, 0.000000e+00
  %91 = fcmp ogt float %89, 1.000000e+00
  %92 = or i1 %90, %91
  br i1 %92, label %97, label %93

93:                                               ; preds = %85
  %94 = icmp eq ptr %6, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %93
  store float %63, ptr %6, align 4, !tbaa !34
  %96 = getelementptr inbounds float, ptr %6, i64 1
  store float %80, ptr %96, align 4, !tbaa !34
  br label %97

97:                                               ; preds = %93, %95, %85, %67, %55, %7
  %98 = phi i8 [ 0, %7 ], [ 0, %55 ], [ 0, %67 ], [ 0, %85 ], [ 1, %95 ], [ 1, %93 ]
  ret i8 %98
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @isect_line_tri_epsilon_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5, ptr noundef writeonly %6, float noundef %7) local_unnamed_addr #0 {
  %9 = load float, ptr %3, align 4, !tbaa !34
  %10 = load float, ptr %2, align 4, !tbaa !34
  %11 = fsub float %9, %10
  %12 = getelementptr inbounds float, ptr %3, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %2, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fsub float %13, %15
  %17 = getelementptr inbounds float, ptr %3, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %2, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fsub float %18, %20
  %22 = load float, ptr %4, align 4, !tbaa !34
  %23 = fsub float %22, %10
  %24 = getelementptr inbounds float, ptr %4, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = fsub float %25, %15
  %27 = getelementptr inbounds float, ptr %4, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = fsub float %28, %20
  %30 = load float, ptr %1, align 4, !tbaa !34
  %31 = load float, ptr %0, align 4, !tbaa !34
  %32 = fsub float %30, %31
  %33 = getelementptr inbounds float, ptr %1, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = getelementptr inbounds float, ptr %0, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = fsub float %34, %36
  %38 = getelementptr inbounds float, ptr %1, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !34
  %40 = getelementptr inbounds float, ptr %0, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !34
  %42 = fsub float %39, %41
  %43 = fneg float %42
  %44 = fmul float %26, %43
  %45 = tail call float @llvm.fmuladd.f32(float %37, float %29, float %44)
  %46 = fneg float %32
  %47 = fmul float %29, %46
  %48 = tail call float @llvm.fmuladd.f32(float %42, float %23, float %47)
  %49 = fneg float %37
  %50 = fmul float %23, %49
  %51 = tail call float @llvm.fmuladd.f32(float %32, float %26, float %50)
  %52 = fmul float %16, %48
  %53 = tail call float @llvm.fmuladd.f32(float %11, float %45, float %52)
  %54 = tail call float @llvm.fmuladd.f32(float %21, float %51, float %53)
  %55 = fcmp oeq float %54, 0.000000e+00
  br i1 %55, label %100, label %56

56:                                               ; preds = %8
  %57 = fdiv float 1.000000e+00, %54
  %58 = fsub float %31, %10
  %59 = fsub float %36, %15
  %60 = fsub float %41, %20
  %61 = fmul float %59, %48
  %62 = tail call float @llvm.fmuladd.f32(float %58, float %45, float %61)
  %63 = tail call float @llvm.fmuladd.f32(float %60, float %51, float %62)
  %64 = fmul float %63, %57
  %65 = fneg float %7
  %66 = fcmp olt float %64, %65
  br i1 %66, label %100, label %67

67:                                               ; preds = %56
  %68 = fadd float %7, 1.000000e+00
  %69 = fcmp ogt float %64, %68
  br i1 %69, label %100, label %70

70:                                               ; preds = %67
  %71 = fneg float %60
  %72 = fmul float %16, %71
  %73 = tail call float @llvm.fmuladd.f32(float %59, float %21, float %72)
  %74 = fneg float %58
  %75 = fmul float %21, %74
  %76 = tail call float @llvm.fmuladd.f32(float %60, float %11, float %75)
  %77 = fneg float %59
  %78 = fmul float %11, %77
  %79 = tail call float @llvm.fmuladd.f32(float %58, float %16, float %78)
  %80 = fmul float %37, %76
  %81 = tail call float @llvm.fmuladd.f32(float %32, float %73, float %80)
  %82 = tail call float @llvm.fmuladd.f32(float %42, float %79, float %81)
  %83 = fmul float %82, %57
  %84 = fcmp olt float %83, %65
  %85 = fadd float %64, %83
  %86 = fcmp ogt float %85, %68
  %87 = or i1 %84, %86
  br i1 %87, label %100, label %88

88:                                               ; preds = %70
  %89 = fmul float %26, %76
  %90 = tail call float @llvm.fmuladd.f32(float %23, float %73, float %89)
  %91 = tail call float @llvm.fmuladd.f32(float %29, float %79, float %90)
  %92 = fmul float %91, %57
  store float %92, ptr %5, align 4, !tbaa !34
  %93 = fcmp olt float %92, 0.000000e+00
  %94 = fcmp ogt float %92, 1.000000e+00
  %95 = or i1 %93, %94
  br i1 %95, label %100, label %96

96:                                               ; preds = %88
  %97 = icmp eq ptr %6, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %96
  store float %64, ptr %6, align 4, !tbaa !34
  %99 = getelementptr inbounds float, ptr %6, i64 1
  store float %83, ptr %99, align 4, !tbaa !34
  br label %100

100:                                              ; preds = %96, %98, %88, %70, %56, %67, %8
  %101 = phi i8 [ 0, %8 ], [ 0, %67 ], [ 0, %56 ], [ 0, %70 ], [ 0, %88 ], [ 1, %98 ], [ 1, %96 ]
  ret i8 %101
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @isect_ray_tri_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5, ptr noundef writeonly %6) local_unnamed_addr #0 {
  %8 = load float, ptr %3, align 4, !tbaa !34
  %9 = load float, ptr %2, align 4, !tbaa !34
  %10 = fsub float %8, %9
  %11 = getelementptr inbounds float, ptr %3, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %2, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fsub float %12, %14
  %16 = getelementptr inbounds float, ptr %3, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %2, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fsub float %17, %19
  %21 = load float, ptr %4, align 4, !tbaa !34
  %22 = fsub float %21, %9
  %23 = getelementptr inbounds float, ptr %4, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fsub float %24, %14
  %26 = getelementptr inbounds float, ptr %4, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = fsub float %27, %19
  %29 = getelementptr inbounds float, ptr %1, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = getelementptr inbounds float, ptr %1, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = fneg float %32
  %34 = fmul float %25, %33
  %35 = tail call float @llvm.fmuladd.f32(float %30, float %28, float %34)
  %36 = load float, ptr %1, align 4, !tbaa !34
  %37 = fneg float %36
  %38 = fmul float %28, %37
  %39 = tail call float @llvm.fmuladd.f32(float %32, float %22, float %38)
  %40 = fneg float %30
  %41 = fmul float %22, %40
  %42 = tail call float @llvm.fmuladd.f32(float %36, float %25, float %41)
  %43 = fmul float %15, %39
  %44 = tail call float @llvm.fmuladd.f32(float %10, float %35, float %43)
  %45 = tail call float @llvm.fmuladd.f32(float %20, float %42, float %44)
  %46 = fcmp ogt float %45, 0xBE45798EE0000000
  %47 = fcmp olt float %45, 0x3E45798EE0000000
  %48 = and i1 %46, %47
  br i1 %48, label %94, label %49

49:                                               ; preds = %7
  %50 = fdiv float 1.000000e+00, %45
  %51 = load float, ptr %0, align 4, !tbaa !34
  %52 = fsub float %51, %9
  %53 = getelementptr inbounds float, ptr %0, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !34
  %55 = fsub float %54, %14
  %56 = getelementptr inbounds float, ptr %0, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !34
  %58 = fsub float %57, %19
  %59 = fmul float %39, %55
  %60 = tail call float @llvm.fmuladd.f32(float %52, float %35, float %59)
  %61 = tail call float @llvm.fmuladd.f32(float %58, float %42, float %60)
  %62 = fmul float %50, %61
  %63 = fcmp olt float %62, 0.000000e+00
  %64 = fcmp ogt float %62, 1.000000e+00
  %65 = or i1 %63, %64
  br i1 %65, label %94, label %66

66:                                               ; preds = %49
  %67 = fneg float %58
  %68 = fmul float %15, %67
  %69 = tail call float @llvm.fmuladd.f32(float %55, float %20, float %68)
  %70 = fneg float %52
  %71 = fmul float %20, %70
  %72 = tail call float @llvm.fmuladd.f32(float %58, float %10, float %71)
  %73 = fneg float %55
  %74 = fmul float %10, %73
  %75 = tail call float @llvm.fmuladd.f32(float %52, float %15, float %74)
  %76 = fmul float %30, %72
  %77 = tail call float @llvm.fmuladd.f32(float %36, float %69, float %76)
  %78 = tail call float @llvm.fmuladd.f32(float %32, float %75, float %77)
  %79 = fmul float %50, %78
  %80 = fcmp olt float %79, 0.000000e+00
  %81 = fadd float %62, %79
  %82 = fcmp ogt float %81, 1.000000e+00
  %83 = or i1 %80, %82
  br i1 %83, label %94, label %84

84:                                               ; preds = %66
  %85 = fmul float %25, %72
  %86 = tail call float @llvm.fmuladd.f32(float %22, float %69, float %85)
  %87 = tail call float @llvm.fmuladd.f32(float %28, float %75, float %86)
  %88 = fmul float %50, %87
  store float %88, ptr %5, align 4, !tbaa !34
  %89 = fcmp olt float %88, 0.000000e+00
  br i1 %89, label %94, label %90

90:                                               ; preds = %84
  %91 = icmp eq ptr %6, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %90
  store float %62, ptr %6, align 4, !tbaa !34
  %93 = getelementptr inbounds float, ptr %6, i64 1
  store float %79, ptr %93, align 4, !tbaa !34
  br label %94

94:                                               ; preds = %90, %92, %84, %66, %49, %7
  %95 = phi i8 [ 0, %7 ], [ 0, %49 ], [ 0, %66 ], [ 0, %84 ], [ 1, %92 ], [ 1, %90 ]
  ret i8 %95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local zeroext i8 @isect_ray_plane_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = load float, ptr %3, align 4, !tbaa !34
  %9 = load float, ptr %2, align 4, !tbaa !34
  %10 = fsub float %8, %9
  %11 = getelementptr inbounds float, ptr %3, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %2, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fsub float %12, %14
  %16 = getelementptr inbounds float, ptr %3, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %2, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fsub float %17, %19
  %21 = load float, ptr %4, align 4, !tbaa !34
  %22 = fsub float %21, %9
  %23 = getelementptr inbounds float, ptr %4, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fsub float %24, %14
  %26 = getelementptr inbounds float, ptr %4, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = fsub float %27, %19
  %29 = getelementptr inbounds float, ptr %1, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = getelementptr inbounds float, ptr %1, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = fneg float %32
  %34 = fmul float %25, %33
  %35 = tail call float @llvm.fmuladd.f32(float %30, float %28, float %34)
  %36 = load float, ptr %1, align 4, !tbaa !34
  %37 = fneg float %36
  %38 = fmul float %28, %37
  %39 = tail call float @llvm.fmuladd.f32(float %32, float %22, float %38)
  %40 = fneg float %30
  %41 = fmul float %22, %40
  %42 = tail call float @llvm.fmuladd.f32(float %36, float %25, float %41)
  %43 = fmul float %15, %39
  %44 = tail call float @llvm.fmuladd.f32(float %10, float %35, float %43)
  %45 = tail call float @llvm.fmuladd.f32(float %20, float %42, float %44)
  %46 = fcmp ogt float %45, 0xBE45798EE0000000
  %47 = fcmp olt float %45, 0x3E45798EE0000000
  %48 = and i1 %46, %47
  br i1 %48, label %76, label %49

49:                                               ; preds = %7
  %50 = fdiv float 1.000000e+00, %45
  %51 = load float, ptr %0, align 4, !tbaa !34
  %52 = fsub float %51, %9
  %53 = getelementptr inbounds float, ptr %0, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !34
  %55 = fsub float %54, %14
  %56 = getelementptr inbounds float, ptr %0, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !34
  %58 = fsub float %57, %19
  %59 = fneg float %58
  %60 = fmul float %15, %59
  %61 = tail call float @llvm.fmuladd.f32(float %55, float %20, float %60)
  %62 = fneg float %52
  %63 = fmul float %20, %62
  %64 = tail call float @llvm.fmuladd.f32(float %58, float %10, float %63)
  %65 = fneg float %55
  %66 = fmul float %10, %65
  %67 = tail call float @llvm.fmuladd.f32(float %52, float %15, float %66)
  %68 = fmul float %25, %64
  %69 = tail call float @llvm.fmuladd.f32(float %22, float %61, float %68)
  %70 = tail call float @llvm.fmuladd.f32(float %28, float %67, float %69)
  %71 = fmul float %50, %70
  store float %71, ptr %5, align 4, !tbaa !34
  %72 = icmp eq i32 %6, 0
  %73 = fcmp uge float %71, 0.000000e+00
  %74 = select i1 %72, i1 true, i1 %73
  %75 = zext i1 %74 to i8
  br label %76

76:                                               ; preds = %49, %7
  %77 = phi i8 [ 0, %7 ], [ %75, %49 ]
  ret i8 %77
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @isect_ray_tri_epsilon_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5, ptr noundef writeonly %6, float noundef %7) local_unnamed_addr #0 {
  %9 = load float, ptr %3, align 4, !tbaa !34
  %10 = load float, ptr %2, align 4, !tbaa !34
  %11 = fsub float %9, %10
  %12 = getelementptr inbounds float, ptr %3, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %2, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fsub float %13, %15
  %17 = getelementptr inbounds float, ptr %3, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %2, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fsub float %18, %20
  %22 = load float, ptr %4, align 4, !tbaa !34
  %23 = fsub float %22, %10
  %24 = getelementptr inbounds float, ptr %4, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = fsub float %25, %15
  %27 = getelementptr inbounds float, ptr %4, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = fsub float %28, %20
  %30 = getelementptr inbounds float, ptr %1, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = getelementptr inbounds float, ptr %1, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = fneg float %33
  %35 = fmul float %26, %34
  %36 = tail call float @llvm.fmuladd.f32(float %31, float %29, float %35)
  %37 = load float, ptr %1, align 4, !tbaa !34
  %38 = fneg float %37
  %39 = fmul float %29, %38
  %40 = tail call float @llvm.fmuladd.f32(float %33, float %23, float %39)
  %41 = fneg float %31
  %42 = fmul float %23, %41
  %43 = tail call float @llvm.fmuladd.f32(float %37, float %26, float %42)
  %44 = fmul float %16, %40
  %45 = tail call float @llvm.fmuladd.f32(float %11, float %36, float %44)
  %46 = tail call float @llvm.fmuladd.f32(float %21, float %43, float %45)
  %47 = fcmp oeq float %46, 0.000000e+00
  br i1 %47, label %95, label %48

48:                                               ; preds = %8
  %49 = fdiv float 1.000000e+00, %46
  %50 = load float, ptr %0, align 4, !tbaa !34
  %51 = fsub float %50, %10
  %52 = getelementptr inbounds float, ptr %0, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !34
  %54 = fsub float %53, %15
  %55 = getelementptr inbounds float, ptr %0, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !34
  %57 = fsub float %56, %20
  %58 = fmul float %40, %54
  %59 = tail call float @llvm.fmuladd.f32(float %51, float %36, float %58)
  %60 = tail call float @llvm.fmuladd.f32(float %57, float %43, float %59)
  %61 = fmul float %49, %60
  %62 = fneg float %7
  %63 = fcmp olt float %61, %62
  br i1 %63, label %95, label %64

64:                                               ; preds = %48
  %65 = fadd float %7, 1.000000e+00
  %66 = fcmp ogt float %61, %65
  br i1 %66, label %95, label %67

67:                                               ; preds = %64
  %68 = fneg float %57
  %69 = fmul float %16, %68
  %70 = tail call float @llvm.fmuladd.f32(float %54, float %21, float %69)
  %71 = fneg float %51
  %72 = fmul float %21, %71
  %73 = tail call float @llvm.fmuladd.f32(float %57, float %11, float %72)
  %74 = fneg float %54
  %75 = fmul float %11, %74
  %76 = tail call float @llvm.fmuladd.f32(float %51, float %16, float %75)
  %77 = fmul float %31, %73
  %78 = tail call float @llvm.fmuladd.f32(float %37, float %70, float %77)
  %79 = tail call float @llvm.fmuladd.f32(float %33, float %76, float %78)
  %80 = fmul float %49, %79
  %81 = fcmp olt float %80, %62
  %82 = fadd float %61, %80
  %83 = fcmp ogt float %82, %65
  %84 = or i1 %81, %83
  br i1 %84, label %95, label %85

85:                                               ; preds = %67
  %86 = fmul float %26, %73
  %87 = tail call float @llvm.fmuladd.f32(float %23, float %70, float %86)
  %88 = tail call float @llvm.fmuladd.f32(float %29, float %76, float %87)
  %89 = fmul float %49, %88
  store float %89, ptr %5, align 4, !tbaa !34
  %90 = fcmp olt float %89, 0.000000e+00
  br i1 %90, label %95, label %91

91:                                               ; preds = %85
  %92 = icmp eq ptr %6, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %91
  store float %61, ptr %6, align 4, !tbaa !34
  %94 = getelementptr inbounds float, ptr %6, i64 1
  store float %80, ptr %94, align 4, !tbaa !34
  br label %95

95:                                               ; preds = %91, %93, %85, %67, %48, %64, %8
  %96 = phi i8 [ 0, %8 ], [ 0, %64 ], [ 0, %48 ], [ 0, %67 ], [ 0, %85 ], [ 1, %93 ], [ 1, %91 ]
  ret i8 %96
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @isect_ray_tri_threshold_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5, ptr noundef writeonly %6, float noundef %7) local_unnamed_addr #0 {
  %9 = load float, ptr %3, align 4, !tbaa !34
  %10 = load float, ptr %2, align 4, !tbaa !34
  %11 = fsub float %9, %10
  %12 = getelementptr inbounds float, ptr %3, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %2, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fsub float %13, %15
  %17 = getelementptr inbounds float, ptr %3, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %2, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fsub float %18, %20
  %22 = load float, ptr %4, align 4, !tbaa !34
  %23 = fsub float %22, %10
  %24 = getelementptr inbounds float, ptr %4, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = fsub float %25, %15
  %27 = getelementptr inbounds float, ptr %4, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = fsub float %28, %20
  %30 = getelementptr inbounds float, ptr %1, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = getelementptr inbounds float, ptr %1, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = fneg float %33
  %35 = fmul float %26, %34
  %36 = tail call float @llvm.fmuladd.f32(float %31, float %29, float %35)
  %37 = load float, ptr %1, align 4, !tbaa !34
  %38 = fneg float %37
  %39 = fmul float %29, %38
  %40 = tail call float @llvm.fmuladd.f32(float %33, float %23, float %39)
  %41 = fneg float %31
  %42 = fmul float %23, %41
  %43 = tail call float @llvm.fmuladd.f32(float %37, float %26, float %42)
  %44 = fmul float %16, %40
  %45 = tail call float @llvm.fmuladd.f32(float %11, float %36, float %44)
  %46 = tail call float @llvm.fmuladd.f32(float %21, float %43, float %45)
  %47 = fcmp ogt float %46, 0xBEB0C6F7A0000000
  %48 = fcmp olt float %46, 0x3EB0C6F7A0000000
  %49 = and i1 %47, %48
  br i1 %49, label %132, label %50

50:                                               ; preds = %8
  %51 = fdiv float 1.000000e+00, %46
  %52 = load float, ptr %0, align 4, !tbaa !34
  %53 = fsub float %52, %10
  %54 = getelementptr inbounds float, ptr %0, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !34
  %56 = fsub float %55, %15
  %57 = getelementptr inbounds float, ptr %0, i64 2
  %58 = load float, ptr %57, align 4, !tbaa !34
  %59 = fsub float %58, %20
  %60 = fneg float %59
  %61 = fmul float %16, %60
  %62 = tail call float @llvm.fmuladd.f32(float %56, float %21, float %61)
  %63 = fneg float %53
  %64 = fmul float %21, %63
  %65 = tail call float @llvm.fmuladd.f32(float %59, float %11, float %64)
  %66 = fneg float %56
  %67 = fmul float %11, %66
  %68 = tail call float @llvm.fmuladd.f32(float %53, float %16, float %67)
  %69 = fmul float %26, %65
  %70 = tail call float @llvm.fmuladd.f32(float %23, float %62, float %69)
  %71 = tail call float @llvm.fmuladd.f32(float %29, float %68, float %70)
  %72 = fmul float %51, %71
  store float %72, ptr %5, align 4, !tbaa !34
  %73 = fcmp olt float %72, 0.000000e+00
  br i1 %73, label %132, label %74

74:                                               ; preds = %50
  %75 = fmul float %40, %56
  %76 = tail call float @llvm.fmuladd.f32(float %53, float %36, float %75)
  %77 = tail call float @llvm.fmuladd.f32(float %59, float %43, float %76)
  %78 = fmul float %51, %77
  %79 = load float, ptr %1, align 4, !tbaa !34
  %80 = load float, ptr %30, align 4, !tbaa !34
  %81 = fmul float %65, %80
  %82 = tail call float @llvm.fmuladd.f32(float %79, float %62, float %81)
  %83 = load float, ptr %32, align 4, !tbaa !34
  %84 = tail call float @llvm.fmuladd.f32(float %83, float %68, float %82)
  %85 = fmul float %51, %84
  %86 = fcmp ogt float %78, 0.000000e+00
  %87 = fcmp ogt float %85, 0.000000e+00
  %88 = select i1 %86, i1 %87, i1 false
  br i1 %88, label %89, label %97

89:                                               ; preds = %74
  %90 = fadd float %78, %85
  %91 = fcmp ogt float %90, 1.000000e+00
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = fadd float %90, -1.000000e+00
  %94 = fmul float %93, 5.000000e-01
  %95 = fsub float %78, %94
  %96 = fsub float %85, %94
  br label %110

97:                                               ; preds = %89, %74
  %98 = fcmp olt float %78, 0.000000e+00
  br i1 %98, label %103, label %99

99:                                               ; preds = %97
  %100 = fcmp ogt float %78, 1.000000e+00
  br i1 %100, label %101, label %103

101:                                              ; preds = %99
  %102 = fadd float %78, -1.000000e+00
  br label %103

103:                                              ; preds = %99, %97, %101
  %104 = phi float [ %102, %101 ], [ %78, %97 ], [ 0.000000e+00, %99 ]
  %105 = fcmp olt float %85, 0.000000e+00
  br i1 %105, label %110, label %106

106:                                              ; preds = %103
  %107 = fcmp ogt float %85, 1.000000e+00
  br i1 %107, label %108, label %110

108:                                              ; preds = %106
  %109 = fadd float %85, -1.000000e+00
  br label %110

110:                                              ; preds = %106, %103, %108, %92
  %111 = phi float [ %95, %92 ], [ %104, %108 ], [ %104, %103 ], [ %104, %106 ]
  %112 = phi float [ %96, %92 ], [ %109, %108 ], [ %85, %103 ], [ 0.000000e+00, %106 ]
  %113 = fmul float %11, %111
  %114 = fmul float %16, %111
  %115 = fmul float %21, %111
  %116 = fmul float %23, %112
  %117 = fmul float %26, %112
  %118 = fmul float %29, %112
  %119 = fmul float %114, %114
  %120 = tail call float @llvm.fmuladd.f32(float %113, float %113, float %119)
  %121 = tail call float @llvm.fmuladd.f32(float %115, float %115, float %120)
  %122 = fmul float %117, %117
  %123 = tail call float @llvm.fmuladd.f32(float %116, float %116, float %122)
  %124 = tail call float @llvm.fmuladd.f32(float %118, float %118, float %123)
  %125 = fadd float %121, %124
  %126 = fmul float %7, %7
  %127 = fcmp ogt float %125, %126
  br i1 %127, label %132, label %128

128:                                              ; preds = %110
  %129 = icmp eq ptr %6, null
  br i1 %129, label %132, label %130

130:                                              ; preds = %128
  store float %78, ptr %6, align 4, !tbaa !34
  %131 = getelementptr inbounds float, ptr %6, i64 1
  store float %85, ptr %131, align 4, !tbaa !34
  br label %132

132:                                              ; preds = %128, %130, %110, %50, %8
  %133 = phi i8 [ 0, %8 ], [ 0, %50 ], [ 0, %110 ], [ 1, %130 ], [ 1, %128 ]
  ret i8 %133
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @isect_point_planes_v3(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #10 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %30

5:                                                ; preds = %3
  %6 = load float, ptr %2, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %2, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %2, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = zext nneg i32 %1 to i64
  br label %15

12:                                               ; preds = %15
  %13 = add nuw nsw i64 %16, 1
  %14 = icmp eq i64 %13, %11
  br i1 %14, label %30, label %15, !llvm.loop !46

15:                                               ; preds = %5, %12
  %16 = phi i64 [ 0, %5 ], [ %13, %12 ]
  %17 = getelementptr inbounds [4 x float], ptr %0, i64 %16
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %17, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fmul float %8, %20
  %22 = tail call float @llvm.fmuladd.f32(float %6, float %18, float %21)
  %23 = getelementptr inbounds float, ptr %17, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = tail call float @llvm.fmuladd.f32(float %10, float %24, float %22)
  %26 = getelementptr inbounds float, ptr %17, i64 3
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = fadd float %25, %27
  %29 = fcmp ogt float %28, 0.000000e+00
  br i1 %29, label %30, label %12

30:                                               ; preds = %15, %12, %3
  %31 = phi i8 [ 1, %3 ], [ 0, %15 ], [ 1, %12 ]
  ret i8 %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @isect_line_plane_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = load float, ptr %2, align 4, !tbaa !34
  %7 = load float, ptr %1, align 4, !tbaa !34
  %8 = fsub float %6, %7
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fsub float %10, %12
  %14 = getelementptr inbounds float, ptr %2, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %1, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fsub float %15, %17
  %19 = load float, ptr %4, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %4, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fmul float %13, %21
  %23 = tail call float @llvm.fmuladd.f32(float %19, float %8, float %22)
  %24 = getelementptr inbounds float, ptr %4, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = tail call float @llvm.fmuladd.f32(float %25, float %18, float %23)
  %27 = tail call float @llvm.fabs.f32(float %26)
  %28 = fcmp ogt float %27, 0x3E80000000000000
  br i1 %28, label %29, label %50

29:                                               ; preds = %5
  %30 = getelementptr inbounds float, ptr %3, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = fsub float %17, %31
  %33 = getelementptr inbounds float, ptr %3, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = fsub float %12, %34
  %36 = load float, ptr %3, align 4, !tbaa !34
  %37 = fsub float %7, %36
  %38 = fmul float %21, %35
  %39 = tail call float @llvm.fmuladd.f32(float %19, float %37, float %38)
  %40 = tail call float @llvm.fmuladd.f32(float %25, float %32, float %39)
  %41 = fneg float %40
  %42 = fdiv float %41, %26
  %43 = tail call float @llvm.fmuladd.f32(float %8, float %42, float %7)
  store float %43, ptr %0, align 4, !tbaa !34
  %44 = load float, ptr %11, align 4, !tbaa !34
  %45 = tail call float @llvm.fmuladd.f32(float %13, float %42, float %44)
  %46 = getelementptr inbounds float, ptr %0, i64 1
  store float %45, ptr %46, align 4, !tbaa !34
  %47 = load float, ptr %16, align 4, !tbaa !34
  %48 = tail call float @llvm.fmuladd.f32(float %18, float %42, float %47)
  %49 = getelementptr inbounds float, ptr %0, i64 2
  store float %48, ptr %49, align 4, !tbaa !34
  br label %50

50:                                               ; preds = %5, %29
  %51 = phi i8 [ 1, %29 ], [ 0, %5 ]
  ret i8 %51
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @isect_plane_plane_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds float, ptr %3, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %5, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %3, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %5, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fneg float %12
  %16 = fmul float %14, %15
  %17 = tail call float @llvm.fmuladd.f32(float %8, float %10, float %16)
  store float %17, ptr %1, align 4, !tbaa !34
  %18 = load float, ptr %11, align 4, !tbaa !34
  %19 = load float, ptr %5, align 4, !tbaa !34
  %20 = load float, ptr %3, align 4, !tbaa !34
  %21 = load float, ptr %9, align 4, !tbaa !34
  %22 = fneg float %20
  %23 = fmul float %21, %22
  %24 = tail call float @llvm.fmuladd.f32(float %18, float %19, float %23)
  %25 = getelementptr inbounds float, ptr %1, i64 1
  store float %24, ptr %25, align 4, !tbaa !34
  %26 = load float, ptr %3, align 4, !tbaa !34
  %27 = load float, ptr %13, align 4, !tbaa !34
  %28 = load float, ptr %7, align 4, !tbaa !34
  %29 = load float, ptr %5, align 4, !tbaa !34
  %30 = fneg float %28
  %31 = fmul float %29, %30
  %32 = tail call float @llvm.fmuladd.f32(float %26, float %27, float %31)
  %33 = getelementptr inbounds float, ptr %1, i64 2
  store float %32, ptr %33, align 4, !tbaa !34
  %34 = load float, ptr %7, align 4, !tbaa !34
  %35 = load float, ptr %11, align 4, !tbaa !34
  %36 = fneg float %35
  %37 = fmul float %24, %36
  %38 = tail call float @llvm.fmuladd.f32(float %34, float %32, float %37)
  %39 = load float, ptr %3, align 4, !tbaa !34
  %40 = fneg float %39
  %41 = fmul float %32, %40
  %42 = tail call float @llvm.fmuladd.f32(float %35, float %17, float %41)
  %43 = fneg float %34
  %44 = fmul float %17, %43
  %45 = tail call float @llvm.fmuladd.f32(float %39, float %24, float %44)
  %46 = load float, ptr %2, align 4, !tbaa !34
  %47 = fadd float %38, %46
  %48 = getelementptr inbounds float, ptr %2, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !34
  %50 = fadd float %42, %49
  %51 = getelementptr inbounds float, ptr %2, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !34
  %53 = fadd float %45, %52
  %54 = fsub float %47, %46
  %55 = fsub float %50, %49
  %56 = fsub float %53, %52
  %57 = load float, ptr %5, align 4, !tbaa !34
  %58 = load float, ptr %13, align 4, !tbaa !34
  %59 = fmul float %55, %58
  %60 = tail call float @llvm.fmuladd.f32(float %57, float %54, float %59)
  %61 = load float, ptr %9, align 4, !tbaa !34
  %62 = tail call float @llvm.fmuladd.f32(float %61, float %56, float %60)
  %63 = tail call float @llvm.fabs.f32(float %62)
  %64 = fcmp ogt float %63, 0x3E80000000000000
  br i1 %64, label %65, label %86

65:                                               ; preds = %6
  %66 = getelementptr inbounds float, ptr %4, i64 2
  %67 = load float, ptr %66, align 4, !tbaa !34
  %68 = fsub float %52, %67
  %69 = getelementptr inbounds float, ptr %4, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !34
  %71 = fsub float %49, %70
  %72 = load float, ptr %4, align 4, !tbaa !34
  %73 = fsub float %46, %72
  %74 = fmul float %58, %71
  %75 = tail call float @llvm.fmuladd.f32(float %57, float %73, float %74)
  %76 = tail call float @llvm.fmuladd.f32(float %61, float %68, float %75)
  %77 = fneg float %76
  %78 = fdiv float %77, %62
  %79 = tail call float @llvm.fmuladd.f32(float %54, float %78, float %46)
  store float %79, ptr %0, align 4, !tbaa !34
  %80 = load float, ptr %48, align 4, !tbaa !34
  %81 = tail call float @llvm.fmuladd.f32(float %55, float %78, float %80)
  %82 = getelementptr inbounds float, ptr %0, i64 1
  store float %81, ptr %82, align 4, !tbaa !34
  %83 = load float, ptr %51, align 4, !tbaa !34
  %84 = tail call float @llvm.fmuladd.f32(float %56, float %78, float %83)
  %85 = getelementptr inbounds float, ptr %0, i64 2
  store float %84, ptr %85, align 4, !tbaa !34
  br label %86

86:                                               ; preds = %6, %65
  %87 = phi i8 [ 1, %65 ], [ 0, %6 ]
  ret i8 %87
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local zeroext i8 @isect_sweeping_sphere_tri_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef %6, ptr nocapture noundef writeonly %7) local_unnamed_addr #1 {
  %9 = fmul float %2, %2
  %10 = load float, ptr %4, align 4, !tbaa !34
  %11 = load float, ptr %3, align 4, !tbaa !34
  %12 = fsub float %10, %11
  %13 = getelementptr inbounds float, ptr %4, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %3, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %4, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %3, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fsub float %19, %21
  %23 = load float, ptr %5, align 4, !tbaa !34
  %24 = fsub float %23, %11
  %25 = getelementptr inbounds float, ptr %5, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = fsub float %26, %16
  %28 = getelementptr inbounds float, ptr %5, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = fsub float %29, %21
  %31 = load float, ptr %1, align 4, !tbaa !34
  %32 = load float, ptr %0, align 4, !tbaa !34
  %33 = fsub float %31, %32
  %34 = getelementptr inbounds float, ptr %1, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = getelementptr inbounds float, ptr %0, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !34
  %38 = fsub float %35, %37
  %39 = getelementptr inbounds float, ptr %1, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = getelementptr inbounds float, ptr %0, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !34
  %43 = fsub float %40, %42
  %44 = fneg float %22
  %45 = fmul float %27, %44
  %46 = tail call float @llvm.fmuladd.f32(float %17, float %30, float %45)
  %47 = fneg float %12
  %48 = fmul float %30, %47
  %49 = tail call float @llvm.fmuladd.f32(float %22, float %24, float %48)
  %50 = fneg float %17
  %51 = fmul float %24, %50
  %52 = tail call float @llvm.fmuladd.f32(float %12, float %27, float %51)
  %53 = fmul float %49, %49
  %54 = tail call float @llvm.fmuladd.f32(float %46, float %46, float %53)
  %55 = tail call float @llvm.fmuladd.f32(float %52, float %52, float %54)
  %56 = fcmp ogt float %55, 0x38AA95A5C0000000
  br i1 %56, label %57, label %63

57:                                               ; preds = %8
  %58 = tail call float @sqrtf(float noundef %55) #17
  %59 = fdiv float 1.000000e+00, %58
  %60 = fmul float %46, %59
  %61 = fmul float %49, %59
  %62 = fmul float %52, %59
  br label %63

63:                                               ; preds = %8, %57
  %64 = phi float [ %61, %57 ], [ 0.000000e+00, %8 ]
  %65 = phi float [ %60, %57 ], [ 0.000000e+00, %8 ]
  %66 = phi float [ %62, %57 ], [ 0.000000e+00, %8 ]
  %67 = fmul float %38, %64
  %68 = tail call float @llvm.fmuladd.f32(float %65, float %33, float %67)
  %69 = tail call float @llvm.fmuladd.f32(float %66, float %43, float %68)
  %70 = fcmp ogt float %69, 0.000000e+00
  %71 = fneg float %65
  %72 = fneg float %64
  %73 = fneg float %66
  %74 = select i1 %70, float %73, float %66
  %75 = select i1 %70, float %72, float %64
  %76 = select i1 %70, float %71, float %65
  %77 = load float, ptr %0, align 4, !tbaa !34
  %78 = load float, ptr %36, align 4, !tbaa !34
  %79 = fmul float %78, %75
  %80 = tail call float @llvm.fmuladd.f32(float %77, float %76, float %79)
  %81 = load float, ptr %41, align 4, !tbaa !34
  %82 = tail call float @llvm.fmuladd.f32(float %81, float %74, float %80)
  %83 = load float, ptr %3, align 4, !tbaa !34
  %84 = load float, ptr %15, align 4, !tbaa !34
  %85 = fmul float %75, %84
  %86 = tail call float @llvm.fmuladd.f32(float %83, float %76, float %85)
  %87 = load float, ptr %20, align 4, !tbaa !34
  %88 = tail call float @llvm.fmuladd.f32(float %87, float %74, float %86)
  %89 = fsub float %82, %88
  %90 = fmul float %38, %75
  %91 = tail call float @llvm.fmuladd.f32(float %76, float %33, float %90)
  %92 = tail call float @llvm.fmuladd.f32(float %74, float %43, float %91)
  %93 = tail call float @llvm.fabs.f32(float %92)
  %94 = fcmp olt float %93, 0x3EB0C6F7A0000000
  br i1 %94, label %95, label %98

95:                                               ; preds = %63
  %96 = tail call float @llvm.fabs.f32(float %89)
  %97 = fcmp ult float %96, %2
  br i1 %97, label %162, label %545

98:                                               ; preds = %63
  %99 = fneg float %89
  %100 = fsub float %2, %89
  %101 = fdiv float %100, %92
  %102 = fsub float %99, %2
  %103 = fdiv float %102, %92
  %104 = fcmp ogt float %101, %103
  %105 = select i1 %104, float %103, float %101
  %106 = select i1 %104, float %101, float %103
  %107 = fcmp ogt float %105, 1.000000e+00
  %108 = fcmp olt float %106, 0.000000e+00
  %109 = or i1 %107, %108
  br i1 %109, label %159, label %110

110:                                              ; preds = %98
  %111 = fcmp olt float %105, 0.000000e+00
  %112 = select i1 %111, float 0.000000e+00, float %105
  %113 = tail call float @llvm.fmuladd.f32(float %33, float %112, float %77)
  %114 = fneg float %76
  %115 = tail call float @llvm.fmuladd.f32(float %114, float %2, float %113)
  %116 = tail call float @llvm.fmuladd.f32(float %38, float %112, float %78)
  %117 = fneg float %75
  %118 = tail call float @llvm.fmuladd.f32(float %117, float %2, float %116)
  %119 = tail call float @llvm.fmuladd.f32(float %43, float %112, float %81)
  %120 = fneg float %74
  %121 = tail call float @llvm.fmuladd.f32(float %120, float %2, float %119)
  %122 = fmul float %17, %17
  %123 = tail call float @llvm.fmuladd.f32(float %12, float %12, float %122)
  %124 = tail call float @llvm.fmuladd.f32(float %22, float %22, float %123)
  %125 = fmul float %17, %27
  %126 = tail call float @llvm.fmuladd.f32(float %12, float %24, float %125)
  %127 = tail call float @llvm.fmuladd.f32(float %22, float %30, float %126)
  %128 = fmul float %27, %27
  %129 = tail call float @llvm.fmuladd.f32(float %24, float %24, float %128)
  %130 = tail call float @llvm.fmuladd.f32(float %30, float %30, float %129)
  %131 = fsub float %115, %83
  %132 = fsub float %118, %84
  %133 = fsub float %121, %87
  %134 = fmul float %17, %132
  %135 = tail call float @llvm.fmuladd.f32(float %131, float %12, float %134)
  %136 = tail call float @llvm.fmuladd.f32(float %133, float %22, float %135)
  %137 = fmul float %27, %132
  %138 = tail call float @llvm.fmuladd.f32(float %131, float %24, float %137)
  %139 = tail call float @llvm.fmuladd.f32(float %133, float %30, float %138)
  %140 = fneg float %139
  %141 = fmul float %127, %140
  %142 = tail call float @llvm.fmuladd.f32(float %136, float %130, float %141)
  %143 = fneg float %136
  %144 = fmul float %127, %143
  %145 = tail call float @llvm.fmuladd.f32(float %139, float %124, float %144)
  %146 = fadd float %142, %145
  %147 = fneg float %127
  %148 = fmul float %127, %147
  %149 = tail call float @llvm.fmuladd.f32(float %124, float %130, float %148)
  %150 = fsub float %146, %149
  %151 = fcmp ole float %150, 0.000000e+00
  %152 = fcmp oge float %142, 0.000000e+00
  %153 = and i1 %152, %151
  %154 = fcmp oge float %145, 0.000000e+00
  %155 = and i1 %154, %153
  br i1 %155, label %156, label %159

156:                                              ; preds = %110
  store float %112, ptr %6, align 4, !tbaa !34
  store float %115, ptr %7, align 4, !tbaa !34
  %157 = getelementptr inbounds float, ptr %7, i64 1
  store float %118, ptr %157, align 4, !tbaa !34
  %158 = getelementptr inbounds float, ptr %7, i64 2
  store float %121, ptr %158, align 4, !tbaa !34
  br label %159

159:                                              ; preds = %110, %98, %156
  %160 = phi i1 [ false, %156 ], [ false, %98 ], [ true, %110 ]
  %161 = phi i8 [ 1, %156 ], [ 0, %98 ], [ undef, %110 ]
  br i1 %160, label %162, label %545

162:                                              ; preds = %159, %95
  store float 1.000000e+00, ptr %6, align 4, !tbaa !34
  %163 = fmul float %38, %38
  %164 = tail call float @llvm.fmuladd.f32(float %33, float %33, float %163)
  %165 = tail call float @llvm.fmuladd.f32(float %43, float %43, float %164)
  %166 = load float, ptr %0, align 4, !tbaa !34
  %167 = load float, ptr %3, align 4, !tbaa !34
  %168 = fsub float %166, %167
  %169 = load float, ptr %36, align 4, !tbaa !34
  %170 = load float, ptr %15, align 4, !tbaa !34
  %171 = fsub float %169, %170
  %172 = load float, ptr %41, align 4, !tbaa !34
  %173 = load float, ptr %20, align 4, !tbaa !34
  %174 = fsub float %172, %173
  %175 = fmul float %38, %171
  %176 = tail call float @llvm.fmuladd.f32(float %33, float %168, float %175)
  %177 = tail call float @llvm.fmuladd.f32(float %43, float %174, float %176)
  %178 = fmul float %177, 2.000000e+00
  %179 = fmul float %171, %171
  %180 = tail call float @llvm.fmuladd.f32(float %168, float %168, float %179)
  %181 = tail call float @llvm.fmuladd.f32(float %174, float %174, float %180)
  %182 = fsub float %181, %9
  %183 = fmul float %165, -4.000000e+00
  %184 = fmul float %183, %182
  %185 = tail call float @llvm.fmuladd.f32(float %178, float %178, float %184)
  %186 = fcmp ult float %185, 0.000000e+00
  br i1 %186, label %212, label %187

187:                                              ; preds = %162
  %188 = tail call float @sqrtf(float noundef %185) #17
  %189 = fneg float %178
  %190 = fsub float %189, %188
  %191 = fmul float %165, 2.000000e+00
  %192 = fdiv float %190, %191
  %193 = fsub float %188, %178
  %194 = fdiv float %193, %191
  %195 = fcmp ogt float %192, %194
  %196 = select i1 %195, float %194, float %192
  %197 = fcmp ogt float %196, 0.000000e+00
  %198 = fcmp olt float %196, 1.000000e+00
  %199 = and i1 %197, %198
  br i1 %199, label %205, label %200

200:                                              ; preds = %187
  %201 = select i1 %195, float %192, float %194
  %202 = fcmp ogt float %201, 0.000000e+00
  %203 = fcmp olt float %201, 1.000000e+00
  %204 = and i1 %202, %203
  br i1 %204, label %205, label %212

205:                                              ; preds = %200, %187
  %206 = phi float [ %196, %187 ], [ %201, %200 ]
  store float %206, ptr %6, align 4, !tbaa !34
  %207 = load float, ptr %3, align 4, !tbaa !34
  store float %207, ptr %7, align 4, !tbaa !34
  %208 = load float, ptr %15, align 4, !tbaa !34
  %209 = getelementptr inbounds float, ptr %7, i64 1
  store float %208, ptr %209, align 4, !tbaa !34
  %210 = load float, ptr %20, align 4, !tbaa !34
  %211 = getelementptr inbounds float, ptr %7, i64 2
  store float %210, ptr %211, align 4, !tbaa !34
  br label %212

212:                                              ; preds = %200, %162, %205
  %213 = phi i8 [ 1, %205 ], [ 0, %162 ], [ 0, %200 ]
  %214 = load float, ptr %0, align 4, !tbaa !34
  %215 = load float, ptr %4, align 4, !tbaa !34
  %216 = fsub float %214, %215
  %217 = load float, ptr %36, align 4, !tbaa !34
  %218 = load float, ptr %13, align 4, !tbaa !34
  %219 = fsub float %217, %218
  %220 = load float, ptr %41, align 4, !tbaa !34
  %221 = load float, ptr %18, align 4, !tbaa !34
  %222 = fsub float %220, %221
  %223 = fmul float %38, %219
  %224 = tail call float @llvm.fmuladd.f32(float %33, float %216, float %223)
  %225 = tail call float @llvm.fmuladd.f32(float %43, float %222, float %224)
  %226 = fmul float %225, 2.000000e+00
  %227 = fmul float %219, %219
  %228 = tail call float @llvm.fmuladd.f32(float %216, float %216, float %227)
  %229 = tail call float @llvm.fmuladd.f32(float %222, float %222, float %228)
  %230 = fsub float %229, %9
  %231 = load float, ptr %6, align 4, !tbaa !34
  %232 = fmul float %183, %230
  %233 = tail call float @llvm.fmuladd.f32(float %226, float %226, float %232)
  %234 = fcmp ult float %233, 0.000000e+00
  br i1 %234, label %260, label %235

235:                                              ; preds = %212
  %236 = tail call float @sqrtf(float noundef %233) #17
  %237 = fneg float %226
  %238 = fsub float %237, %236
  %239 = fmul float %165, 2.000000e+00
  %240 = fdiv float %238, %239
  %241 = fsub float %236, %226
  %242 = fdiv float %241, %239
  %243 = fcmp ogt float %240, %242
  %244 = select i1 %243, float %242, float %240
  %245 = fcmp ogt float %244, 0.000000e+00
  %246 = fcmp olt float %244, %231
  %247 = and i1 %245, %246
  br i1 %247, label %253, label %248

248:                                              ; preds = %235
  %249 = select i1 %243, float %240, float %242
  %250 = fcmp ogt float %249, 0.000000e+00
  %251 = fcmp olt float %249, %231
  %252 = and i1 %250, %251
  br i1 %252, label %253, label %260

253:                                              ; preds = %248, %235
  %254 = phi float [ %244, %235 ], [ %249, %248 ]
  store float %254, ptr %6, align 4, !tbaa !34
  %255 = load float, ptr %4, align 4, !tbaa !34
  store float %255, ptr %7, align 4, !tbaa !34
  %256 = load float, ptr %13, align 4, !tbaa !34
  %257 = getelementptr inbounds float, ptr %7, i64 1
  store float %256, ptr %257, align 4, !tbaa !34
  %258 = load float, ptr %18, align 4, !tbaa !34
  %259 = getelementptr inbounds float, ptr %7, i64 2
  store float %258, ptr %259, align 4, !tbaa !34
  br label %260

260:                                              ; preds = %248, %212, %253
  %261 = phi i8 [ 1, %253 ], [ %213, %212 ], [ %213, %248 ]
  %262 = load float, ptr %0, align 4, !tbaa !34
  %263 = load float, ptr %5, align 4, !tbaa !34
  %264 = fsub float %262, %263
  %265 = load float, ptr %36, align 4, !tbaa !34
  %266 = load float, ptr %25, align 4, !tbaa !34
  %267 = fsub float %265, %266
  %268 = load float, ptr %41, align 4, !tbaa !34
  %269 = load float, ptr %28, align 4, !tbaa !34
  %270 = fsub float %268, %269
  %271 = fmul float %38, %267
  %272 = tail call float @llvm.fmuladd.f32(float %33, float %264, float %271)
  %273 = tail call float @llvm.fmuladd.f32(float %43, float %270, float %272)
  %274 = fmul float %273, 2.000000e+00
  %275 = fmul float %267, %267
  %276 = tail call float @llvm.fmuladd.f32(float %264, float %264, float %275)
  %277 = tail call float @llvm.fmuladd.f32(float %270, float %270, float %276)
  %278 = fsub float %277, %9
  %279 = load float, ptr %6, align 4, !tbaa !34
  %280 = fmul float %183, %278
  %281 = tail call float @llvm.fmuladd.f32(float %274, float %274, float %280)
  %282 = fcmp ult float %281, 0.000000e+00
  br i1 %282, label %308, label %283

283:                                              ; preds = %260
  %284 = tail call float @sqrtf(float noundef %281) #17
  %285 = fneg float %274
  %286 = fsub float %285, %284
  %287 = fmul float %165, 2.000000e+00
  %288 = fdiv float %286, %287
  %289 = fsub float %284, %274
  %290 = fdiv float %289, %287
  %291 = fcmp ogt float %288, %290
  %292 = select i1 %291, float %290, float %288
  %293 = fcmp ogt float %292, 0.000000e+00
  %294 = fcmp olt float %292, %279
  %295 = and i1 %293, %294
  br i1 %295, label %301, label %296

296:                                              ; preds = %283
  %297 = select i1 %291, float %288, float %290
  %298 = fcmp ogt float %297, 0.000000e+00
  %299 = fcmp olt float %297, %279
  %300 = and i1 %298, %299
  br i1 %300, label %301, label %308

301:                                              ; preds = %296, %283
  %302 = phi float [ %292, %283 ], [ %297, %296 ]
  store float %302, ptr %6, align 4, !tbaa !34
  %303 = load float, ptr %5, align 4, !tbaa !34
  store float %303, ptr %7, align 4, !tbaa !34
  %304 = load float, ptr %25, align 4, !tbaa !34
  %305 = getelementptr inbounds float, ptr %7, i64 1
  store float %304, ptr %305, align 4, !tbaa !34
  %306 = load float, ptr %28, align 4, !tbaa !34
  %307 = getelementptr inbounds float, ptr %7, i64 2
  store float %306, ptr %307, align 4, !tbaa !34
  br label %308

308:                                              ; preds = %296, %260, %301
  %309 = phi i8 [ 1, %301 ], [ %261, %260 ], [ %261, %296 ]
  %310 = load float, ptr %5, align 4, !tbaa !34
  %311 = load float, ptr %4, align 4, !tbaa !34
  %312 = fsub float %310, %311
  %313 = load float, ptr %25, align 4, !tbaa !34
  %314 = load float, ptr %13, align 4, !tbaa !34
  %315 = fsub float %313, %314
  %316 = load float, ptr %28, align 4, !tbaa !34
  %317 = load float, ptr %18, align 4, !tbaa !34
  %318 = fsub float %316, %317
  %319 = load float, ptr %3, align 4, !tbaa !34
  %320 = load float, ptr %0, align 4, !tbaa !34
  %321 = fsub float %319, %320
  %322 = load float, ptr %15, align 4, !tbaa !34
  %323 = load float, ptr %36, align 4, !tbaa !34
  %324 = fsub float %322, %323
  %325 = load float, ptr %20, align 4, !tbaa !34
  %326 = load float, ptr %41, align 4, !tbaa !34
  %327 = fsub float %325, %326
  %328 = fmul float %17, %17
  %329 = tail call float @llvm.fmuladd.f32(float %12, float %12, float %328)
  %330 = tail call float @llvm.fmuladd.f32(float %22, float %22, float %329)
  %331 = fmul float %17, %38
  %332 = tail call float @llvm.fmuladd.f32(float %12, float %33, float %331)
  %333 = tail call float @llvm.fmuladd.f32(float %22, float %43, float %332)
  %334 = fmul float %17, %324
  %335 = tail call float @llvm.fmuladd.f32(float %12, float %321, float %334)
  %336 = tail call float @llvm.fmuladd.f32(float %22, float %327, float %335)
  %337 = fneg float %165
  %338 = fmul float %333, %333
  %339 = tail call float @llvm.fmuladd.f32(float %330, float %337, float %338)
  %340 = fmul float %38, %324
  %341 = tail call float @llvm.fmuladd.f32(float %33, float %321, float %340)
  %342 = tail call float @llvm.fmuladd.f32(float %43, float %327, float %341)
  %343 = fneg float %333
  %344 = fmul float %336, %343
  %345 = tail call float @llvm.fmuladd.f32(float %330, float %342, float %344)
  %346 = fmul float %345, 2.000000e+00
  %347 = fmul float %324, %324
  %348 = tail call float @llvm.fmuladd.f32(float %321, float %321, float %347)
  %349 = tail call float @llvm.fmuladd.f32(float %327, float %327, float %348)
  %350 = fsub float %9, %349
  %351 = fmul float %336, %336
  %352 = tail call float @llvm.fmuladd.f32(float %330, float %350, float %351)
  %353 = load float, ptr %6, align 4, !tbaa !34
  %354 = fmul float %339, -4.000000e+00
  %355 = fmul float %354, %352
  %356 = tail call float @llvm.fmuladd.f32(float %346, float %346, float %355)
  %357 = fcmp ult float %356, 0.000000e+00
  br i1 %357, label %377, label %358

358:                                              ; preds = %308
  %359 = tail call float @sqrtf(float noundef %356) #17
  %360 = fneg float %346
  %361 = fsub float %360, %359
  %362 = fmul float %339, 2.000000e+00
  %363 = fdiv float %361, %362
  %364 = fsub float %359, %346
  %365 = fdiv float %364, %362
  %366 = fcmp ogt float %363, %365
  %367 = select i1 %366, float %365, float %363
  %368 = select i1 %366, float %363, float %365
  %369 = fcmp ogt float %367, 0.000000e+00
  %370 = fcmp olt float %367, %353
  %371 = and i1 %369, %370
  br i1 %371, label %377, label %372

372:                                              ; preds = %358
  %373 = fcmp ogt float %368, 0.000000e+00
  %374 = fcmp olt float %368, %353
  %375 = and i1 %373, %374
  br i1 %375, label %376, label %377

376:                                              ; preds = %372
  br label %377

377:                                              ; preds = %358, %308, %372, %376
  %378 = phi float [ undef, %308 ], [ %368, %376 ], [ undef, %372 ], [ %367, %358 ]
  %379 = phi i1 [ true, %308 ], [ false, %376 ], [ true, %372 ], [ false, %358 ]
  br i1 %379, label %399, label %380

380:                                              ; preds = %377
  %381 = fneg float %336
  %382 = tail call float @llvm.fmuladd.f32(float %333, float %378, float %381)
  %383 = fdiv float %382, %330
  %384 = fcmp oge float %383, 0.000000e+00
  %385 = fcmp ole float %383, 1.000000e+00
  %386 = and i1 %384, %385
  br i1 %386, label %387, label %399

387:                                              ; preds = %380
  store float %378, ptr %6, align 4, !tbaa !34
  store float %12, ptr %7, align 4, !tbaa !34
  %388 = getelementptr inbounds float, ptr %7, i64 1
  store float %17, ptr %388, align 4, !tbaa !34
  %389 = getelementptr inbounds float, ptr %7, i64 2
  store float %22, ptr %389, align 4, !tbaa !34
  %390 = fmul float %12, %383
  store float %390, ptr %7, align 4, !tbaa !34
  %391 = fmul float %17, %383
  store float %391, ptr %388, align 4, !tbaa !34
  %392 = fmul float %22, %383
  store float %392, ptr %389, align 4, !tbaa !34
  %393 = load float, ptr %3, align 4, !tbaa !34
  %394 = fadd float %390, %393
  store float %394, ptr %7, align 4, !tbaa !34
  %395 = load float, ptr %15, align 4, !tbaa !34
  %396 = fadd float %391, %395
  store float %396, ptr %388, align 4, !tbaa !34
  %397 = load float, ptr %20, align 4, !tbaa !34
  %398 = fadd float %392, %397
  store float %398, ptr %389, align 4, !tbaa !34
  br label %399

399:                                              ; preds = %380, %387, %377
  %400 = phi i8 [ 1, %387 ], [ %309, %380 ], [ %309, %377 ]
  %401 = fmul float %27, %27
  %402 = tail call float @llvm.fmuladd.f32(float %24, float %24, float %401)
  %403 = tail call float @llvm.fmuladd.f32(float %30, float %30, float %402)
  %404 = fmul float %27, %38
  %405 = tail call float @llvm.fmuladd.f32(float %24, float %33, float %404)
  %406 = tail call float @llvm.fmuladd.f32(float %30, float %43, float %405)
  %407 = fmul float %27, %324
  %408 = tail call float @llvm.fmuladd.f32(float %24, float %321, float %407)
  %409 = tail call float @llvm.fmuladd.f32(float %30, float %327, float %408)
  %410 = fmul float %406, %406
  %411 = tail call float @llvm.fmuladd.f32(float %403, float %337, float %410)
  %412 = fneg float %406
  %413 = fmul float %409, %412
  %414 = tail call float @llvm.fmuladd.f32(float %403, float %342, float %413)
  %415 = fmul float %414, 2.000000e+00
  %416 = fmul float %409, %409
  %417 = tail call float @llvm.fmuladd.f32(float %403, float %350, float %416)
  %418 = load float, ptr %6, align 4, !tbaa !34
  %419 = fmul float %411, -4.000000e+00
  %420 = fmul float %419, %417
  %421 = tail call float @llvm.fmuladd.f32(float %415, float %415, float %420)
  %422 = fcmp ult float %421, 0.000000e+00
  br i1 %422, label %442, label %423

423:                                              ; preds = %399
  %424 = tail call float @sqrtf(float noundef %421) #17
  %425 = fneg float %415
  %426 = fsub float %425, %424
  %427 = fmul float %411, 2.000000e+00
  %428 = fdiv float %426, %427
  %429 = fsub float %424, %415
  %430 = fdiv float %429, %427
  %431 = fcmp ogt float %428, %430
  %432 = select i1 %431, float %430, float %428
  %433 = select i1 %431, float %428, float %430
  %434 = fcmp ogt float %432, 0.000000e+00
  %435 = fcmp olt float %432, %418
  %436 = and i1 %434, %435
  br i1 %436, label %442, label %437

437:                                              ; preds = %423
  %438 = fcmp ogt float %433, 0.000000e+00
  %439 = fcmp olt float %433, %418
  %440 = and i1 %438, %439
  br i1 %440, label %441, label %442

441:                                              ; preds = %437
  br label %442

442:                                              ; preds = %423, %399, %437, %441
  %443 = phi float [ %378, %399 ], [ %433, %441 ], [ %378, %437 ], [ %432, %423 ]
  %444 = phi i1 [ true, %399 ], [ false, %441 ], [ true, %437 ], [ false, %423 ]
  br i1 %444, label %464, label %445

445:                                              ; preds = %442
  %446 = fneg float %409
  %447 = tail call float @llvm.fmuladd.f32(float %406, float %443, float %446)
  %448 = fdiv float %447, %403
  %449 = fcmp oge float %448, 0.000000e+00
  %450 = fcmp ole float %448, 1.000000e+00
  %451 = and i1 %449, %450
  br i1 %451, label %452, label %464

452:                                              ; preds = %445
  store float %443, ptr %6, align 4, !tbaa !34
  store float %24, ptr %7, align 4, !tbaa !34
  %453 = getelementptr inbounds float, ptr %7, i64 1
  store float %27, ptr %453, align 4, !tbaa !34
  %454 = getelementptr inbounds float, ptr %7, i64 2
  store float %30, ptr %454, align 4, !tbaa !34
  %455 = fmul float %24, %448
  store float %455, ptr %7, align 4, !tbaa !34
  %456 = fmul float %27, %448
  store float %456, ptr %453, align 4, !tbaa !34
  %457 = fmul float %30, %448
  store float %457, ptr %454, align 4, !tbaa !34
  %458 = load float, ptr %3, align 4, !tbaa !34
  %459 = fadd float %455, %458
  store float %459, ptr %7, align 4, !tbaa !34
  %460 = load float, ptr %15, align 4, !tbaa !34
  %461 = fadd float %456, %460
  store float %461, ptr %453, align 4, !tbaa !34
  %462 = load float, ptr %20, align 4, !tbaa !34
  %463 = fadd float %457, %462
  store float %463, ptr %454, align 4, !tbaa !34
  br label %464

464:                                              ; preds = %445, %452, %442
  %465 = phi i8 [ 1, %452 ], [ %400, %445 ], [ %400, %442 ]
  %466 = load float, ptr %4, align 4, !tbaa !34
  %467 = load float, ptr %0, align 4, !tbaa !34
  %468 = fsub float %466, %467
  %469 = load float, ptr %13, align 4, !tbaa !34
  %470 = load float, ptr %36, align 4, !tbaa !34
  %471 = fsub float %469, %470
  %472 = load float, ptr %18, align 4, !tbaa !34
  %473 = load float, ptr %41, align 4, !tbaa !34
  %474 = fsub float %472, %473
  %475 = fmul float %315, %315
  %476 = tail call float @llvm.fmuladd.f32(float %312, float %312, float %475)
  %477 = tail call float @llvm.fmuladd.f32(float %318, float %318, float %476)
  %478 = fmul float %38, %315
  %479 = tail call float @llvm.fmuladd.f32(float %312, float %33, float %478)
  %480 = tail call float @llvm.fmuladd.f32(float %318, float %43, float %479)
  %481 = fmul float %315, %471
  %482 = tail call float @llvm.fmuladd.f32(float %312, float %468, float %481)
  %483 = tail call float @llvm.fmuladd.f32(float %318, float %474, float %482)
  %484 = fmul float %480, %480
  %485 = tail call float @llvm.fmuladd.f32(float %477, float %337, float %484)
  %486 = fmul float %38, %471
  %487 = tail call float @llvm.fmuladd.f32(float %33, float %468, float %486)
  %488 = tail call float @llvm.fmuladd.f32(float %43, float %474, float %487)
  %489 = fneg float %480
  %490 = fmul float %483, %489
  %491 = tail call float @llvm.fmuladd.f32(float %477, float %488, float %490)
  %492 = fmul float %491, 2.000000e+00
  %493 = fmul float %471, %471
  %494 = tail call float @llvm.fmuladd.f32(float %468, float %468, float %493)
  %495 = tail call float @llvm.fmuladd.f32(float %474, float %474, float %494)
  %496 = fsub float %9, %495
  %497 = fmul float %483, %483
  %498 = tail call float @llvm.fmuladd.f32(float %477, float %496, float %497)
  %499 = load float, ptr %6, align 4, !tbaa !34
  %500 = fmul float %485, -4.000000e+00
  %501 = fmul float %500, %498
  %502 = tail call float @llvm.fmuladd.f32(float %492, float %492, float %501)
  %503 = fcmp ult float %502, 0.000000e+00
  br i1 %503, label %523, label %504

504:                                              ; preds = %464
  %505 = tail call float @sqrtf(float noundef %502) #17
  %506 = fneg float %492
  %507 = fsub float %506, %505
  %508 = fmul float %485, 2.000000e+00
  %509 = fdiv float %507, %508
  %510 = fsub float %505, %492
  %511 = fdiv float %510, %508
  %512 = fcmp ogt float %509, %511
  %513 = select i1 %512, float %511, float %509
  %514 = select i1 %512, float %509, float %511
  %515 = fcmp ogt float %513, 0.000000e+00
  %516 = fcmp olt float %513, %499
  %517 = and i1 %515, %516
  br i1 %517, label %523, label %518

518:                                              ; preds = %504
  %519 = fcmp ogt float %514, 0.000000e+00
  %520 = fcmp olt float %514, %499
  %521 = and i1 %519, %520
  br i1 %521, label %522, label %523

522:                                              ; preds = %518
  br label %523

523:                                              ; preds = %504, %464, %518, %522
  %524 = phi float [ %443, %464 ], [ %514, %522 ], [ %443, %518 ], [ %513, %504 ]
  %525 = phi i1 [ true, %464 ], [ false, %522 ], [ true, %518 ], [ false, %504 ]
  br i1 %525, label %545, label %526

526:                                              ; preds = %523
  %527 = fneg float %483
  %528 = tail call float @llvm.fmuladd.f32(float %480, float %524, float %527)
  %529 = fdiv float %528, %477
  %530 = fcmp oge float %529, 0.000000e+00
  %531 = fcmp ole float %529, 1.000000e+00
  %532 = and i1 %530, %531
  br i1 %532, label %533, label %545

533:                                              ; preds = %526
  store float %524, ptr %6, align 4, !tbaa !34
  store float %312, ptr %7, align 4, !tbaa !34
  %534 = getelementptr inbounds float, ptr %7, i64 1
  store float %315, ptr %534, align 4, !tbaa !34
  %535 = getelementptr inbounds float, ptr %7, i64 2
  store float %318, ptr %535, align 4, !tbaa !34
  %536 = fmul float %312, %529
  store float %536, ptr %7, align 4, !tbaa !34
  %537 = fmul float %315, %529
  store float %537, ptr %534, align 4, !tbaa !34
  %538 = fmul float %318, %529
  store float %538, ptr %535, align 4, !tbaa !34
  %539 = load float, ptr %4, align 4, !tbaa !34
  %540 = fadd float %536, %539
  store float %540, ptr %7, align 4, !tbaa !34
  %541 = load float, ptr %13, align 4, !tbaa !34
  %542 = fadd float %537, %541
  store float %542, ptr %534, align 4, !tbaa !34
  %543 = load float, ptr %18, align 4, !tbaa !34
  %544 = fadd float %538, %543
  store float %544, ptr %535, align 4, !tbaa !34
  br label %545

545:                                              ; preds = %523, %533, %526, %95, %159
  %546 = phi i8 [ %161, %159 ], [ 0, %95 ], [ 1, %533 ], [ %465, %526 ], [ %465, %523 ]
  ret i8 %546
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local zeroext i8 @isect_axial_line_tri_v3(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #17
  %11 = add nsw i32 %0, 1
  %12 = srem i32 %11, 3
  %13 = add nsw i32 %0, 2
  %14 = srem i32 %13, 3
  %15 = load float, ptr %4, align 4, !tbaa !34
  %16 = load float, ptr %3, align 4, !tbaa !34
  %17 = fsub float %15, %16
  store float %17, ptr %9, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %4, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %3, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fsub float %19, %21
  %23 = getelementptr inbounds float, ptr %9, i64 1
  store float %22, ptr %23, align 4, !tbaa !34
  %24 = getelementptr inbounds float, ptr %4, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = getelementptr inbounds float, ptr %3, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = fsub float %25, %27
  %29 = getelementptr inbounds float, ptr %9, i64 2
  store float %28, ptr %29, align 4, !tbaa !34
  %30 = load float, ptr %5, align 4, !tbaa !34
  %31 = fsub float %30, %16
  store float %31, ptr %10, align 4, !tbaa !34
  %32 = getelementptr inbounds float, ptr %5, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = fsub float %33, %21
  %35 = getelementptr inbounds float, ptr %10, i64 1
  store float %34, ptr %35, align 4, !tbaa !34
  %36 = getelementptr inbounds float, ptr %5, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !34
  %38 = fsub float %37, %27
  %39 = getelementptr inbounds float, ptr %10, i64 2
  store float %38, ptr %39, align 4, !tbaa !34
  %40 = load float, ptr %1, align 4, !tbaa !34
  %41 = fsub float %16, %40
  store float %41, ptr %8, align 4, !tbaa !34
  %42 = getelementptr inbounds float, ptr %1, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !34
  %44 = fsub float %21, %43
  %45 = getelementptr inbounds float, ptr %8, i64 1
  store float %44, ptr %45, align 4, !tbaa !34
  %46 = getelementptr inbounds float, ptr %1, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !34
  %48 = fsub float %27, %47
  %49 = getelementptr inbounds float, ptr %8, i64 2
  store float %48, ptr %49, align 4, !tbaa !34
  %50 = sext i32 %12 to i64
  %51 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 %50
  %52 = load float, ptr %51, align 4, !tbaa !34
  %53 = sext i32 %14 to i64
  %54 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 %53
  %55 = load float, ptr %54, align 4, !tbaa !34
  %56 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 %53
  %57 = load float, ptr %56, align 4, !tbaa !34
  %58 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 %50
  %59 = load float, ptr %58, align 4, !tbaa !34
  %60 = fneg float %57
  %61 = fmul float %59, %60
  %62 = tail call float @llvm.fmuladd.f32(float %52, float %55, float %61)
  %63 = fcmp ogt float %62, 0xBEB0C6F7A0000000
  %64 = fcmp olt float %62, 0x3EB0C6F7A0000000
  %65 = and i1 %63, %64
  br i1 %65, label %121, label %66

66:                                               ; preds = %7
  %67 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %53
  %68 = load float, ptr %67, align 4, !tbaa !34
  %69 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %50
  %70 = load float, ptr %69, align 4, !tbaa !34
  %71 = fneg float %70
  %72 = fmul float %55, %71
  %73 = tail call float @llvm.fmuladd.f32(float %68, float %59, float %72)
  %74 = fdiv float %73, %62
  %75 = fcmp olt float %74, 0.000000e+00
  %76 = fcmp ogt float %74, 1.000000e+00
  %77 = or i1 %75, %76
  br i1 %77, label %121, label %78

78:                                               ; preds = %66
  %79 = fcmp ogt float %59, 0xBEB0C6F7A0000000
  %80 = fcmp olt float %59, 0x3EB0C6F7A0000000
  %81 = and i1 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = fcmp ogt float %55, 0xBEB0C6F7A0000000
  %84 = fcmp olt float %55, 0x3EB0C6F7A0000000
  %85 = and i1 %83, %84
  br i1 %85, label %121, label %86

86:                                               ; preds = %82
  %87 = fneg float %68
  %88 = fneg float %74
  %89 = tail call float @llvm.fmuladd.f32(float %88, float %57, float %87)
  %90 = fdiv float %89, %55
  br label %95

91:                                               ; preds = %78
  %92 = fneg float %74
  %93 = tail call float @llvm.fmuladd.f32(float %92, float %52, float %71)
  %94 = fdiv float %93, %59
  br label %95

95:                                               ; preds = %91, %86
  %96 = phi float [ %90, %86 ], [ %94, %91 ]
  %97 = fcmp olt float %96, 0.000000e+00
  %98 = fadd float %74, %96
  %99 = fcmp ogt float %98, 1.000000e+00
  %100 = or i1 %97, %99
  br i1 %100, label %121, label %101

101:                                              ; preds = %95
  %102 = sext i32 %0 to i64
  %103 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %102
  %104 = load float, ptr %103, align 4, !tbaa !34
  %105 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 %102
  %106 = load float, ptr %105, align 4, !tbaa !34
  %107 = tail call float @llvm.fmuladd.f32(float %96, float %106, float %104)
  %108 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 %102
  %109 = load float, ptr %108, align 4, !tbaa !34
  %110 = tail call float @llvm.fmuladd.f32(float %74, float %109, float %107)
  %111 = getelementptr inbounds float, ptr %2, i64 %102
  %112 = load float, ptr %111, align 4, !tbaa !34
  %113 = getelementptr inbounds float, ptr %1, i64 %102
  %114 = load float, ptr %113, align 4, !tbaa !34
  %115 = fsub float %112, %114
  %116 = fdiv float %110, %115
  store float %116, ptr %6, align 4, !tbaa !34
  %117 = fcmp uge float %116, 0.000000e+00
  %118 = fcmp ule float %116, 1.000000e+00
  %119 = and i1 %117, %118
  %120 = zext i1 %119 to i8
  br label %121

121:                                              ; preds = %101, %95, %82, %66, %7
  %122 = phi i8 [ 0, %7 ], [ 0, %66 ], [ 0, %82 ], [ 0, %95 ], [ %120, %101 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #17
  ret i8 %122
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @isect_line_line_epsilon_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4, ptr nocapture noundef writeonly %5, float noundef %6) local_unnamed_addr #6 {
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = load float, ptr %2, align 4, !tbaa !34
  %11 = load float, ptr %0, align 4, !tbaa !34
  %12 = fsub float %10, %11
  %13 = getelementptr inbounds float, ptr %2, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %0, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %2, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %0, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fsub float %19, %21
  %23 = load float, ptr %1, align 4, !tbaa !34
  %24 = fsub float %23, %11
  %25 = getelementptr inbounds float, ptr %1, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = fsub float %26, %16
  %28 = getelementptr inbounds float, ptr %1, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = fsub float %29, %21
  %31 = load float, ptr %3, align 4, !tbaa !34
  %32 = fsub float %31, %10
  %33 = getelementptr inbounds float, ptr %3, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = fsub float %34, %14
  %36 = getelementptr inbounds float, ptr %3, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !34
  %38 = fsub float %37, %19
  %39 = fmul float %27, %27
  %40 = tail call float @llvm.fmuladd.f32(float %24, float %24, float %39)
  %41 = tail call float @llvm.fmuladd.f32(float %30, float %30, float %40)
  %42 = fcmp ogt float %41, 0x38AA95A5C0000000
  br i1 %42, label %43, label %49

43:                                               ; preds = %7
  %44 = tail call float @sqrtf(float noundef %41) #17
  %45 = fdiv float 1.000000e+00, %44
  %46 = fmul float %24, %45
  %47 = fmul float %27, %45
  %48 = fmul float %30, %45
  br label %49

49:                                               ; preds = %7, %43
  %50 = phi float [ %48, %43 ], [ 0.000000e+00, %7 ]
  %51 = phi float [ %47, %43 ], [ 0.000000e+00, %7 ]
  %52 = phi float [ %46, %43 ], [ 0.000000e+00, %7 ]
  %53 = fmul float %35, %35
  %54 = tail call float @llvm.fmuladd.f32(float %32, float %32, float %53)
  %55 = tail call float @llvm.fmuladd.f32(float %38, float %38, float %54)
  %56 = fcmp ogt float %55, 0x38AA95A5C0000000
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = tail call float @sqrtf(float noundef %55) #17
  %59 = fdiv float 1.000000e+00, %58
  %60 = fmul float %32, %59
  %61 = fmul float %35, %59
  %62 = fmul float %38, %59
  br label %63

63:                                               ; preds = %49, %57
  %64 = phi float [ %62, %57 ], [ 0.000000e+00, %49 ]
  %65 = phi float [ %61, %57 ], [ 0.000000e+00, %49 ]
  %66 = phi float [ %60, %57 ], [ 0.000000e+00, %49 ]
  %67 = fmul float %51, %65
  %68 = tail call float @llvm.fmuladd.f32(float %52, float %66, float %67)
  %69 = tail call float @llvm.fmuladd.f32(float %50, float %64, float %68)
  %70 = fcmp oeq float %69, 1.000000e+00
  %71 = fcmp oeq float %69, -1.000000e+00
  %72 = or i1 %70, %71
  br i1 %72, label %208, label %73

73:                                               ; preds = %63
  %74 = fneg float %30
  %75 = fmul float %35, %74
  %76 = tail call float @llvm.fmuladd.f32(float %27, float %38, float %75)
  %77 = fneg float %24
  %78 = fmul float %38, %77
  %79 = tail call float @llvm.fmuladd.f32(float %30, float %32, float %78)
  %80 = fneg float %27
  %81 = fmul float %32, %80
  %82 = tail call float @llvm.fmuladd.f32(float %24, float %35, float %81)
  %83 = fmul float %79, %79
  %84 = tail call float @llvm.fmuladd.f32(float %76, float %76, float %83)
  %85 = tail call float @llvm.fmuladd.f32(float %82, float %82, float %84)
  %86 = fcmp oeq float %85, 0.000000e+00
  br i1 %86, label %208, label %87

87:                                               ; preds = %73
  %88 = fmul float %17, %79
  %89 = tail call float @llvm.fmuladd.f32(float %12, float %76, float %88)
  %90 = tail call float @llvm.fmuladd.f32(float %22, float %82, float %89)
  %91 = tail call float @llvm.fabs.f32(float %90)
  %92 = fcmp ugt float %91, %6
  br i1 %92, label %122, label %93

93:                                               ; preds = %87
  %94 = fneg float %22
  %95 = fmul float %35, %94
  %96 = tail call float @llvm.fmuladd.f32(float %17, float %38, float %95)
  %97 = fneg float %12
  %98 = fmul float %38, %97
  %99 = tail call float @llvm.fmuladd.f32(float %22, float %32, float %98)
  %100 = fneg float %17
  %101 = fmul float %32, %100
  %102 = tail call float @llvm.fmuladd.f32(float %12, float %35, float %101)
  %103 = fmul float %99, %79
  %104 = tail call float @llvm.fmuladd.f32(float %96, float %76, float %103)
  %105 = tail call float @llvm.fmuladd.f32(float %102, float %82, float %104)
  %106 = fdiv float %105, %85
  %107 = fmul float %24, %106
  %108 = fmul float %27, %106
  %109 = fmul float %30, %106
  %110 = load float, ptr %0, align 4, !tbaa !34
  %111 = fadd float %107, %110
  store float %111, ptr %4, align 4, !tbaa !34
  %112 = load float, ptr %15, align 4, !tbaa !34
  %113 = fadd float %108, %112
  %114 = getelementptr inbounds float, ptr %4, i64 1
  store float %113, ptr %114, align 4, !tbaa !34
  %115 = load float, ptr %20, align 4, !tbaa !34
  %116 = fadd float %109, %115
  %117 = getelementptr inbounds float, ptr %4, i64 2
  store float %116, ptr %117, align 4, !tbaa !34
  store float %111, ptr %5, align 4, !tbaa !34
  %118 = load float, ptr %114, align 4, !tbaa !34
  %119 = getelementptr inbounds float, ptr %5, i64 1
  store float %118, ptr %119, align 4, !tbaa !34
  %120 = load float, ptr %117, align 4, !tbaa !34
  %121 = getelementptr inbounds float, ptr %5, i64 2
  store float %120, ptr %121, align 4, !tbaa !34
  br label %208

122:                                              ; preds = %87
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #17
  %123 = load float, ptr %0, align 4, !tbaa !34
  %124 = load float, ptr %2, align 4, !tbaa !34
  %125 = fsub float %123, %124
  store float %125, ptr %9, align 4, !tbaa !34
  %126 = load float, ptr %15, align 4, !tbaa !34
  %127 = load float, ptr %13, align 4, !tbaa !34
  %128 = fsub float %126, %127
  %129 = getelementptr inbounds float, ptr %9, i64 1
  store float %128, ptr %129, align 4, !tbaa !34
  %130 = load float, ptr %20, align 4, !tbaa !34
  %131 = load float, ptr %18, align 4, !tbaa !34
  %132 = fsub float %130, %131
  %133 = getelementptr inbounds float, ptr %9, i64 2
  store float %132, ptr %133, align 4, !tbaa !34
  store float %76, ptr %8, align 4, !tbaa !34
  %134 = getelementptr inbounds float, ptr %8, i64 1
  store float %79, ptr %134, align 4, !tbaa !34
  %135 = getelementptr inbounds float, ptr %8, i64 2
  store float %82, ptr %135, align 4, !tbaa !34
  call void @project_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull %8) #17
  %136 = load float, ptr %2, align 4, !tbaa !34
  %137 = load float, ptr %9, align 4, !tbaa !34
  %138 = fadd float %136, %137
  %139 = load float, ptr %13, align 4, !tbaa !34
  %140 = load float, ptr %129, align 4, !tbaa !34
  %141 = fadd float %139, %140
  %142 = load float, ptr %18, align 4, !tbaa !34
  %143 = load float, ptr %133, align 4, !tbaa !34
  %144 = fadd float %142, %143
  %145 = load float, ptr %3, align 4, !tbaa !34
  %146 = fadd float %137, %145
  %147 = load float, ptr %33, align 4, !tbaa !34
  %148 = fadd float %140, %147
  %149 = load float, ptr %36, align 4, !tbaa !34
  %150 = fadd float %143, %149
  %151 = load float, ptr %0, align 4, !tbaa !34
  %152 = fsub float %138, %151
  %153 = load float, ptr %15, align 4, !tbaa !34
  %154 = fsub float %141, %153
  %155 = load float, ptr %20, align 4, !tbaa !34
  %156 = fsub float %144, %155
  %157 = load float, ptr %1, align 4, !tbaa !34
  %158 = fsub float %157, %151
  %159 = load float, ptr %25, align 4, !tbaa !34
  %160 = fsub float %159, %153
  %161 = load float, ptr %28, align 4, !tbaa !34
  %162 = fsub float %161, %155
  %163 = fsub float %146, %138
  %164 = fsub float %148, %141
  %165 = fsub float %150, %144
  %166 = fneg float %162
  %167 = fmul float %164, %166
  %168 = call float @llvm.fmuladd.f32(float %160, float %165, float %167)
  %169 = fneg float %158
  %170 = fmul float %165, %169
  %171 = call float @llvm.fmuladd.f32(float %162, float %163, float %170)
  %172 = fneg float %160
  %173 = fmul float %163, %172
  %174 = call float @llvm.fmuladd.f32(float %158, float %164, float %173)
  %175 = fneg float %156
  %176 = fmul float %164, %175
  %177 = call float @llvm.fmuladd.f32(float %154, float %165, float %176)
  %178 = fneg float %152
  %179 = fmul float %165, %178
  %180 = call float @llvm.fmuladd.f32(float %156, float %163, float %179)
  %181 = fneg float %154
  %182 = fmul float %163, %181
  %183 = call float @llvm.fmuladd.f32(float %152, float %164, float %182)
  %184 = fmul float %180, %171
  %185 = call float @llvm.fmuladd.f32(float %177, float %168, float %184)
  %186 = call float @llvm.fmuladd.f32(float %183, float %174, float %185)
  %187 = fmul float %171, %171
  %188 = call float @llvm.fmuladd.f32(float %168, float %168, float %187)
  %189 = call float @llvm.fmuladd.f32(float %174, float %174, float %188)
  %190 = fdiv float %186, %189
  %191 = fmul float %158, %190
  %192 = fmul float %160, %190
  %193 = fmul float %162, %190
  %194 = fadd float %151, %191
  store float %194, ptr %4, align 4, !tbaa !34
  %195 = load float, ptr %15, align 4, !tbaa !34
  %196 = fadd float %195, %192
  %197 = getelementptr inbounds float, ptr %4, i64 1
  store float %196, ptr %197, align 4, !tbaa !34
  %198 = load float, ptr %20, align 4, !tbaa !34
  %199 = fadd float %198, %193
  %200 = getelementptr inbounds float, ptr %4, i64 2
  store float %199, ptr %200, align 4, !tbaa !34
  %201 = fsub float %194, %137
  store float %201, ptr %5, align 4, !tbaa !34
  %202 = load float, ptr %197, align 4, !tbaa !34
  %203 = fsub float %202, %140
  %204 = getelementptr inbounds float, ptr %5, i64 1
  store float %203, ptr %204, align 4, !tbaa !34
  %205 = load float, ptr %200, align 4, !tbaa !34
  %206 = fsub float %205, %143
  %207 = getelementptr inbounds float, ptr %5, i64 2
  store float %206, ptr %207, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #17
  br label %208

208:                                              ; preds = %73, %63, %122, %93
  %209 = phi i32 [ 1, %93 ], [ 2, %122 ], [ 0, %63 ], [ 0, %73 ]
  ret i32 %209
}

declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @isect_line_line_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #6 {
  %7 = tail call i32 @isect_line_line_epsilon_v3(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, float noundef 0x3EB0C6F7A0000000), !range !47
  ret i32 %7
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @isect_line_line_strict_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4, ptr noundef writeonly %5) local_unnamed_addr #1 {
  %7 = load float, ptr %2, align 4, !tbaa !34
  %8 = load float, ptr %0, align 4, !tbaa !34
  %9 = fsub float %7, %8
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fsub float %11, %13
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %0, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fsub float %16, %18
  %20 = load float, ptr %1, align 4, !tbaa !34
  %21 = fsub float %20, %8
  %22 = getelementptr inbounds float, ptr %1, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = fsub float %23, %13
  %25 = getelementptr inbounds float, ptr %1, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = fsub float %26, %18
  %28 = load float, ptr %3, align 4, !tbaa !34
  %29 = fsub float %28, %7
  %30 = getelementptr inbounds float, ptr %3, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = fsub float %31, %11
  %33 = getelementptr inbounds float, ptr %3, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = fsub float %34, %16
  %36 = fmul float %24, %24
  %37 = tail call float @llvm.fmuladd.f32(float %21, float %21, float %36)
  %38 = tail call float @llvm.fmuladd.f32(float %27, float %27, float %37)
  %39 = fcmp ogt float %38, 0x38AA95A5C0000000
  br i1 %39, label %40, label %46

40:                                               ; preds = %6
  %41 = tail call float @sqrtf(float noundef %38) #17
  %42 = fdiv float 1.000000e+00, %41
  %43 = fmul float %21, %42
  %44 = fmul float %24, %42
  %45 = fmul float %27, %42
  br label %46

46:                                               ; preds = %6, %40
  %47 = phi float [ %45, %40 ], [ 0.000000e+00, %6 ]
  %48 = phi float [ %44, %40 ], [ 0.000000e+00, %6 ]
  %49 = phi float [ %43, %40 ], [ 0.000000e+00, %6 ]
  %50 = fmul float %32, %32
  %51 = tail call float @llvm.fmuladd.f32(float %29, float %29, float %50)
  %52 = tail call float @llvm.fmuladd.f32(float %35, float %35, float %51)
  %53 = fcmp ogt float %52, 0x38AA95A5C0000000
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = tail call float @sqrtf(float noundef %52) #17
  %56 = fdiv float 1.000000e+00, %55
  %57 = fmul float %29, %56
  %58 = fmul float %32, %56
  %59 = fmul float %35, %56
  br label %60

60:                                               ; preds = %46, %54
  %61 = phi float [ %59, %54 ], [ 0.000000e+00, %46 ]
  %62 = phi float [ %58, %54 ], [ 0.000000e+00, %46 ]
  %63 = phi float [ %57, %54 ], [ 0.000000e+00, %46 ]
  %64 = fmul float %48, %62
  %65 = tail call float @llvm.fmuladd.f32(float %49, float %63, float %64)
  %66 = tail call float @llvm.fmuladd.f32(float %47, float %61, float %65)
  %67 = fcmp oeq float %66, 1.000000e+00
  %68 = fcmp oeq float %66, -1.000000e+00
  %69 = or i1 %67, %68
  %70 = fcmp oeq float %66, 0.000000e+00
  %71 = or i1 %70, %69
  br i1 %71, label %138, label %72

72:                                               ; preds = %60
  %73 = fneg float %27
  %74 = fmul float %32, %73
  %75 = tail call float @llvm.fmuladd.f32(float %24, float %35, float %74)
  %76 = fneg float %21
  %77 = fmul float %35, %76
  %78 = tail call float @llvm.fmuladd.f32(float %27, float %29, float %77)
  %79 = fneg float %24
  %80 = fmul float %29, %79
  %81 = tail call float @llvm.fmuladd.f32(float %21, float %32, float %80)
  %82 = fmul float %78, %78
  %83 = tail call float @llvm.fmuladd.f32(float %75, float %75, float %82)
  %84 = tail call float @llvm.fmuladd.f32(float %81, float %81, float %83)
  %85 = fcmp oeq float %84, 0.000000e+00
  br i1 %85, label %138, label %86

86:                                               ; preds = %72
  %87 = fmul float %14, %78
  %88 = tail call float @llvm.fmuladd.f32(float %9, float %75, float %87)
  %89 = tail call float @llvm.fmuladd.f32(float %19, float %81, float %88)
  %90 = fcmp ogt float %89, 0xBEB0C6F7A0000000
  %91 = fcmp olt float %89, 0x3EB0C6F7A0000000
  %92 = and i1 %90, %91
  br i1 %92, label %93, label %138

93:                                               ; preds = %86
  %94 = fneg float %19
  %95 = fmul float %32, %94
  %96 = tail call float @llvm.fmuladd.f32(float %14, float %35, float %95)
  %97 = fneg float %9
  %98 = fmul float %35, %97
  %99 = tail call float @llvm.fmuladd.f32(float %19, float %29, float %98)
  %100 = fneg float %14
  %101 = fmul float %29, %100
  %102 = tail call float @llvm.fmuladd.f32(float %9, float %32, float %101)
  %103 = fmul float %24, %94
  %104 = tail call float @llvm.fmuladd.f32(float %14, float %27, float %103)
  %105 = fmul float %27, %97
  %106 = tail call float @llvm.fmuladd.f32(float %19, float %21, float %105)
  %107 = fmul float %21, %100
  %108 = tail call float @llvm.fmuladd.f32(float %9, float %24, float %107)
  %109 = fmul float %99, %78
  %110 = tail call float @llvm.fmuladd.f32(float %96, float %75, float %109)
  %111 = tail call float @llvm.fmuladd.f32(float %102, float %81, float %110)
  %112 = fdiv float %111, %84
  %113 = fmul float %106, %78
  %114 = tail call float @llvm.fmuladd.f32(float %104, float %75, float %113)
  %115 = tail call float @llvm.fmuladd.f32(float %108, float %81, float %114)
  %116 = fdiv float %115, %84
  %117 = fcmp oge float %112, 0.000000e+00
  %118 = fcmp ole float %112, 1.000000e+00
  %119 = and i1 %117, %118
  %120 = fcmp oge float %116, 0.000000e+00
  %121 = select i1 %119, i1 %120, i1 false
  %122 = fcmp ole float %116, 1.000000e+00
  %123 = select i1 %121, i1 %122, i1 false
  br i1 %123, label %124, label %138

124:                                              ; preds = %93
  %125 = fmul float %21, %112
  %126 = fmul float %24, %112
  %127 = fmul float %27, %112
  %128 = load float, ptr %0, align 4, !tbaa !34
  %129 = fadd float %125, %128
  store float %129, ptr %4, align 4, !tbaa !34
  %130 = load float, ptr %12, align 4, !tbaa !34
  %131 = fadd float %126, %130
  %132 = getelementptr inbounds float, ptr %4, i64 1
  store float %131, ptr %132, align 4, !tbaa !34
  %133 = load float, ptr %17, align 4, !tbaa !34
  %134 = fadd float %127, %133
  %135 = getelementptr inbounds float, ptr %4, i64 2
  store float %134, ptr %135, align 4, !tbaa !34
  %136 = icmp eq ptr %5, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %124
  store float %112, ptr %5, align 4, !tbaa !34
  br label %138

138:                                              ; preds = %86, %137, %124, %93, %72, %60
  %139 = phi i8 [ 0, %60 ], [ 0, %72 ], [ 1, %137 ], [ 1, %124 ], [ 0, %93 ], [ 0, %86 ]
  ret i8 %139
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @isect_aabb_aabb_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #8 {
  %5 = load float, ptr %0, align 4, !tbaa !34
  %6 = load float, ptr %3, align 4, !tbaa !34
  %7 = fcmp olt float %5, %6
  br i1 %7, label %8, label %37

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %3, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fcmp olt float %10, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %8
  %15 = getelementptr inbounds float, ptr %0, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %3, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fcmp olt float %16, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %14
  %21 = load float, ptr %2, align 4, !tbaa !34
  %22 = load float, ptr %1, align 4, !tbaa !34
  %23 = fcmp olt float %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = getelementptr inbounds float, ptr %2, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = getelementptr inbounds float, ptr %1, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = fcmp olt float %26, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = getelementptr inbounds float, ptr %2, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = getelementptr inbounds float, ptr %1, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = fcmp olt float %32, %34
  %36 = zext i1 %35 to i8
  br label %37

37:                                               ; preds = %30, %24, %20, %14, %8, %4
  %38 = phi i8 [ 0, %24 ], [ 0, %20 ], [ 0, %14 ], [ 0, %8 ], [ 0, %4 ], [ %36, %30 ]
  ret i8 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @isect_ray_aabb_initialize(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  store float %4, ptr %0, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %0, i64 1
  store float %6, ptr %7, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %0, i64 2
  store float %9, ptr %10, align 4, !tbaa !34
  %11 = load float, ptr %2, align 4, !tbaa !34
  %12 = fdiv float 1.000000e+00, %11
  %13 = getelementptr inbounds %struct.IsectRayAABBData, ptr %0, i64 0, i32 1
  store float %12, ptr %13, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %2, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fdiv float 1.000000e+00, %15
  %17 = getelementptr inbounds %struct.IsectRayAABBData, ptr %0, i64 0, i32 1, i64 1
  store float %16, ptr %17, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %2, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fdiv float 1.000000e+00, %19
  %21 = getelementptr inbounds %struct.IsectRayAABBData, ptr %0, i64 0, i32 1, i64 2
  store float %20, ptr %21, align 4, !tbaa !34
  %22 = fcmp olt float %12, 0.000000e+00
  %23 = zext i1 %22 to i32
  %24 = getelementptr inbounds %struct.IsectRayAABBData, ptr %0, i64 0, i32 2
  store i32 %23, ptr %24, align 4, !tbaa !42
  %25 = fcmp olt float %16, 0.000000e+00
  %26 = zext i1 %25 to i32
  %27 = getelementptr inbounds %struct.IsectRayAABBData, ptr %0, i64 0, i32 2, i64 1
  store i32 %26, ptr %27, align 4, !tbaa !42
  %28 = fcmp olt float %20, 0.000000e+00
  %29 = zext i1 %28 to i32
  %30 = getelementptr inbounds %struct.IsectRayAABBData, ptr %0, i64 0, i32 2, i64 2
  store i32 %29, ptr %30, align 4, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @isect_ray_aabb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca [2 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
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
  %13 = getelementptr inbounds [2 x [3 x float]], ptr %5, i64 0, i64 1
  %14 = load float, ptr %2, align 4, !tbaa !34
  store float %14, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %2, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds [2 x [3 x float]], ptr %5, i64 0, i64 1, i64 1
  store float %16, ptr %17, align 16, !tbaa !34
  %18 = getelementptr inbounds float, ptr %2, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds [2 x [3 x float]], ptr %5, i64 0, i64 1, i64 2
  store float %19, ptr %20, align 4, !tbaa !34
  %21 = getelementptr inbounds %struct.IsectRayAABBData, ptr %0, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !42
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [2 x [3 x float]], ptr %5, i64 0, i64 %23
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = load float, ptr %0, align 4, !tbaa !34
  %27 = fsub float %25, %26
  %28 = getelementptr inbounds %struct.IsectRayAABBData, ptr %0, i64 0, i32 1
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = fmul float %27, %29
  %31 = sub nsw i32 1, %22
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [2 x [3 x float]], ptr %5, i64 0, i64 %32
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = fsub float %34, %26
  %36 = fmul float %29, %35
  %37 = getelementptr inbounds %struct.IsectRayAABBData, ptr %0, i64 0, i32 2, i64 1
  %38 = load i32, ptr %37, align 4, !tbaa !42
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [2 x [3 x float]], ptr %5, i64 0, i64 %39, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !34
  %42 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !34
  %44 = fsub float %41, %43
  %45 = getelementptr inbounds %struct.IsectRayAABBData, ptr %0, i64 0, i32 1, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !34
  %47 = fmul float %44, %46
  %48 = sub nsw i32 1, %38
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [2 x [3 x float]], ptr %5, i64 0, i64 %49, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !34
  %52 = fsub float %51, %43
  %53 = fmul float %46, %52
  %54 = fcmp ogt float %30, %53
  %55 = fcmp ogt float %47, %36
  %56 = select i1 %54, i1 true, i1 %55
  br i1 %56, label %87, label %57

57:                                               ; preds = %4
  %58 = fcmp ogt float %47, %30
  %59 = select i1 %58, float %47, float %30
  %60 = fcmp olt float %53, %36
  %61 = select i1 %60, float %53, float %36
  %62 = getelementptr inbounds %struct.IsectRayAABBData, ptr %0, i64 0, i32 2, i64 2
  %63 = load i32, ptr %62, align 4, !tbaa !42
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [2 x [3 x float]], ptr %5, i64 0, i64 %64, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !34
  %67 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  %68 = load float, ptr %67, align 4, !tbaa !34
  %69 = fsub float %66, %68
  %70 = getelementptr inbounds %struct.IsectRayAABBData, ptr %0, i64 0, i32 1, i64 2
  %71 = load float, ptr %70, align 4, !tbaa !34
  %72 = fmul float %69, %71
  %73 = sub nsw i32 1, %63
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [2 x [3 x float]], ptr %5, i64 0, i64 %74, i64 2
  %76 = load float, ptr %75, align 4, !tbaa !34
  %77 = fsub float %76, %68
  %78 = fmul float %71, %77
  %79 = fcmp ogt float %59, %78
  %80 = fcmp ogt float %72, %61
  %81 = select i1 %79, i1 true, i1 %80
  br i1 %81, label %87, label %82

82:                                               ; preds = %57
  %83 = icmp eq ptr %3, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %82
  %85 = fcmp ogt float %72, %59
  %86 = select i1 %85, float %72, float %59
  store float %86, ptr %3, align 4, !tbaa !34
  br label %87

87:                                               ; preds = %82, %84, %57, %4
  %88 = phi i8 [ 0, %4 ], [ 0, %57 ], [ 1, %84 ], [ 1, %82 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  ret i8 %88
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @line_point_factor_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #8 {
  %4 = load float, ptr %2, align 4, !tbaa !34
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = fsub float %4, %5
  %7 = getelementptr inbounds float, ptr %2, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %2, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fsub float %13, %15
  %17 = fmul float %11, %11
  %18 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %17)
  %19 = tail call float @llvm.fmuladd.f32(float %16, float %16, float %18)
  %20 = fcmp une float %19, 0.000000e+00
  br i1 %20, label %21, label %34

21:                                               ; preds = %3
  %22 = getelementptr inbounds float, ptr %0, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = fsub float %23, %15
  %25 = getelementptr inbounds float, ptr %0, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = fsub float %26, %10
  %28 = load float, ptr %0, align 4, !tbaa !34
  %29 = fsub float %28, %5
  %30 = fmul float %11, %27
  %31 = tail call float @llvm.fmuladd.f32(float %6, float %29, float %30)
  %32 = tail call float @llvm.fmuladd.f32(float %16, float %24, float %31)
  %33 = fdiv float %32, %19
  br label %34

34:                                               ; preds = %3, %21
  %35 = phi float [ %33, %21 ], [ 0.000000e+00, %3 ]
  ret float %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @line_point_factor_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #8 {
  %4 = load float, ptr %2, align 4, !tbaa !34
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = fsub float %4, %5
  %7 = getelementptr inbounds float, ptr %2, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fsub float %8, %10
  %12 = load float, ptr %0, align 4, !tbaa !34
  %13 = fsub float %12, %5
  %14 = getelementptr inbounds float, ptr %0, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fsub float %15, %10
  %17 = fmul float %11, %11
  %18 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %17)
  %19 = fcmp une float %18, 0.000000e+00
  %20 = fmul float %11, %16
  %21 = tail call float @llvm.fmuladd.f32(float %6, float %13, float %20)
  %22 = fdiv float %21, %18
  %23 = select i1 %19, float %22, float 0.000000e+00
  ret float %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @line_plane_factor_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #8 {
  %5 = load float, ptr %3, align 4, !tbaa !34
  %6 = load float, ptr %2, align 4, !tbaa !34
  %7 = fsub float %5, %6
  %8 = getelementptr inbounds float, ptr %3, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fsub float %9, %11
  %13 = getelementptr inbounds float, ptr %3, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fsub float %14, %16
  %18 = load float, ptr %1, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %1, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fmul float %12, %20
  %22 = tail call float @llvm.fmuladd.f32(float %18, float %7, float %21)
  %23 = getelementptr inbounds float, ptr %1, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = tail call float @llvm.fmuladd.f32(float %24, float %17, float %22)
  %26 = fcmp une float %25, 0.000000e+00
  br i1 %26, label %27, label %41

27:                                               ; preds = %4
  %28 = getelementptr inbounds float, ptr %0, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = fsub float %16, %29
  %31 = getelementptr inbounds float, ptr %0, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = fsub float %11, %32
  %34 = load float, ptr %0, align 4, !tbaa !34
  %35 = fsub float %6, %34
  %36 = fmul float %20, %33
  %37 = tail call float @llvm.fmuladd.f32(float %18, float %35, float %36)
  %38 = tail call float @llvm.fmuladd.f32(float %24, float %30, float %37)
  %39 = fneg float %38
  %40 = fdiv float %39, %25
  br label %41

41:                                               ; preds = %4, %27
  %42 = phi float [ %40, %27 ], [ 0.000000e+00, %4 ]
  ret float %42
}

; Function Attrs: nounwind uwtable
define dso_local void @limit_dist_v3(ptr noundef %0, ptr noundef %1, float noundef %2) local_unnamed_addr #6 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = load float, ptr %0, align 4, !tbaa !34
  %8 = fsub float %6, %7
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %0, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fsub float %10, %12
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %0, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fsub float %15, %17
  %19 = fmul float %13, %13
  %20 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %19)
  %21 = tail call float @llvm.fmuladd.f32(float %18, float %18, float %20)
  %22 = tail call float @sqrtf(float noundef %21) #17
  %23 = fcmp ogt float %22, %2
  br i1 %23, label %24, label %39

24:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  %25 = fdiv float %2, %22
  %26 = fmul float %25, 5.000000e-01
  %27 = load float, ptr %0, align 4, !tbaa !34
  store float %27, ptr %4, align 4, !tbaa !34
  %28 = load float, ptr %11, align 4, !tbaa !34
  %29 = getelementptr inbounds float, ptr %4, i64 1
  store float %28, ptr %29, align 4, !tbaa !34
  %30 = load float, ptr %16, align 4, !tbaa !34
  %31 = getelementptr inbounds float, ptr %4, i64 2
  store float %30, ptr %31, align 4, !tbaa !34
  %32 = load float, ptr %1, align 4, !tbaa !34
  store float %32, ptr %5, align 4, !tbaa !34
  %33 = load float, ptr %9, align 4, !tbaa !34
  %34 = getelementptr inbounds float, ptr %5, i64 1
  store float %33, ptr %34, align 4, !tbaa !34
  %35 = load float, ptr %14, align 4, !tbaa !34
  %36 = getelementptr inbounds float, ptr %5, i64 2
  store float %35, ptr %36, align 4, !tbaa !34
  %37 = fsub float 5.000000e-01, %26
  call void @interp_v3_v3v3(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %5, float noundef %37) #17
  %38 = fadd float %26, 5.000000e-01
  call void @interp_v3_v3v3(ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5, float noundef %38) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  br label %39

39:                                               ; preds = %24, %3
  ret void
}

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @isect_point_tri_v2_int(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #11 {
  %7 = sitofp i32 %0 to float
  %8 = sitofp i32 %1 to float
  %9 = sitofp i32 %3 to float
  %10 = sitofp i32 %2 to float
  %11 = sitofp i32 %4 to float
  %12 = sitofp i32 %5 to float
  %13 = fsub float %7, %11
  %14 = fsub float %9, %12
  %15 = fsub float %8, %12
  %16 = fneg float %13
  %17 = fmul float %15, %16
  %18 = tail call float @llvm.fmuladd.f32(float %13, float %14, float %17)
  %19 = fcmp ult float %18, 0.000000e+00
  %20 = fsub float %10, %11
  %21 = fneg float %20
  %22 = fmul float %14, %21
  %23 = tail call float @llvm.fmuladd.f32(float %13, float %15, float %22)
  %24 = fcmp ult float %23, 0.000000e+00
  %25 = tail call float @llvm.fmuladd.f32(float %20, float %15, float %17)
  %26 = fcmp ult float %25, 0.000000e+00
  br i1 %19, label %29, label %27

27:                                               ; preds = %6
  %28 = or i1 %24, %26
  br i1 %28, label %31, label %32

29:                                               ; preds = %6
  %30 = and i1 %24, %26
  br i1 %30, label %32, label %31

31:                                               ; preds = %29, %27
  br label %32

32:                                               ; preds = %29, %27, %31
  %33 = phi i32 [ 0, %31 ], [ 1, %27 ], [ -1, %29 ]
  ret i32 %33
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @isect_point_tri_prism_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #8 {
  %5 = load float, ptr %3, align 4, !tbaa !34
  %6 = load float, ptr %2, align 4, !tbaa !34
  %7 = fsub float %5, %6
  %8 = getelementptr inbounds float, ptr %3, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fsub float %9, %11
  %13 = getelementptr inbounds float, ptr %3, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fsub float %14, %16
  %18 = load float, ptr %1, align 4, !tbaa !34
  %19 = fsub float %18, %6
  %20 = getelementptr inbounds float, ptr %1, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fsub float %21, %11
  %23 = getelementptr inbounds float, ptr %1, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fsub float %24, %16
  %26 = fmul float %12, %22
  %27 = tail call float @llvm.fmuladd.f32(float %7, float %19, float %26)
  %28 = tail call float @llvm.fmuladd.f32(float %17, float %25, float %27)
  %29 = fmul float %12, %12
  %30 = tail call float @llvm.fmuladd.f32(float %7, float %7, float %29)
  %31 = tail call float @llvm.fmuladd.f32(float %17, float %17, float %30)
  %32 = fdiv float %28, %31
  %33 = tail call float @llvm.fmuladd.f32(float %7, float %32, float %6)
  %34 = tail call float @llvm.fmuladd.f32(float %12, float %32, float %11)
  %35 = tail call float @llvm.fmuladd.f32(float %17, float %32, float %16)
  %36 = fsub float %33, %18
  %37 = fsub float %34, %21
  %38 = fsub float %35, %24
  %39 = load float, ptr %0, align 4, !tbaa !34
  %40 = fsub float %39, %18
  %41 = getelementptr inbounds float, ptr %0, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !34
  %43 = fsub float %42, %21
  %44 = getelementptr inbounds float, ptr %0, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !34
  %46 = fsub float %45, %24
  %47 = fmul float %43, %37
  %48 = tail call float @llvm.fmuladd.f32(float %36, float %40, float %47)
  %49 = tail call float @llvm.fmuladd.f32(float %38, float %46, float %48)
  %50 = fmul float %37, %37
  %51 = tail call float @llvm.fmuladd.f32(float %36, float %36, float %50)
  %52 = tail call float @llvm.fmuladd.f32(float %38, float %38, float %51)
  %53 = fdiv float %49, %52
  %54 = fcmp olt float %53, 0.000000e+00
  %55 = fcmp ogt float %53, 1.000000e+00
  %56 = or i1 %54, %55
  br i1 %56, label %124, label %57

57:                                               ; preds = %4
  %58 = fsub float %18, %5
  %59 = fsub float %21, %9
  %60 = fsub float %24, %14
  %61 = fsub float %6, %5
  %62 = fsub float %11, %9
  %63 = fsub float %16, %14
  %64 = fmul float %62, %59
  %65 = tail call float @llvm.fmuladd.f32(float %58, float %61, float %64)
  %66 = tail call float @llvm.fmuladd.f32(float %60, float %63, float %65)
  %67 = fmul float %59, %59
  %68 = tail call float @llvm.fmuladd.f32(float %58, float %58, float %67)
  %69 = tail call float @llvm.fmuladd.f32(float %60, float %60, float %68)
  %70 = fdiv float %66, %69
  %71 = tail call float @llvm.fmuladd.f32(float %58, float %70, float %5)
  %72 = tail call float @llvm.fmuladd.f32(float %59, float %70, float %9)
  %73 = tail call float @llvm.fmuladd.f32(float %60, float %70, float %14)
  %74 = fsub float %71, %6
  %75 = fsub float %72, %11
  %76 = fsub float %73, %16
  %77 = fsub float %39, %6
  %78 = fsub float %42, %11
  %79 = fsub float %45, %16
  %80 = fmul float %78, %75
  %81 = tail call float @llvm.fmuladd.f32(float %74, float %77, float %80)
  %82 = tail call float @llvm.fmuladd.f32(float %76, float %79, float %81)
  %83 = fmul float %75, %75
  %84 = tail call float @llvm.fmuladd.f32(float %74, float %74, float %83)
  %85 = tail call float @llvm.fmuladd.f32(float %76, float %76, float %84)
  %86 = fdiv float %82, %85
  %87 = fcmp olt float %86, 0.000000e+00
  %88 = fcmp ogt float %86, 1.000000e+00
  %89 = or i1 %87, %88
  br i1 %89, label %124, label %90

90:                                               ; preds = %57
  %91 = fsub float %6, %18
  %92 = fsub float %11, %21
  %93 = fsub float %16, %24
  %94 = fsub float %5, %18
  %95 = fsub float %9, %21
  %96 = fsub float %14, %24
  %97 = fmul float %92, %95
  %98 = tail call float @llvm.fmuladd.f32(float %91, float %94, float %97)
  %99 = tail call float @llvm.fmuladd.f32(float %93, float %96, float %98)
  %100 = fmul float %92, %92
  %101 = tail call float @llvm.fmuladd.f32(float %91, float %91, float %100)
  %102 = tail call float @llvm.fmuladd.f32(float %93, float %93, float %101)
  %103 = fdiv float %99, %102
  %104 = tail call float @llvm.fmuladd.f32(float %91, float %103, float %18)
  %105 = tail call float @llvm.fmuladd.f32(float %92, float %103, float %21)
  %106 = tail call float @llvm.fmuladd.f32(float %93, float %103, float %24)
  %107 = fsub float %104, %5
  %108 = fsub float %105, %9
  %109 = fsub float %106, %14
  %110 = fsub float %39, %5
  %111 = fsub float %42, %9
  %112 = fsub float %45, %14
  %113 = fmul float %111, %108
  %114 = tail call float @llvm.fmuladd.f32(float %107, float %110, float %113)
  %115 = tail call float @llvm.fmuladd.f32(float %109, float %112, float %114)
  %116 = fmul float %108, %108
  %117 = tail call float @llvm.fmuladd.f32(float %107, float %107, float %116)
  %118 = tail call float @llvm.fmuladd.f32(float %109, float %109, float %117)
  %119 = fdiv float %115, %118
  %120 = fcmp uge float %119, 0.000000e+00
  %121 = fcmp ule float %119, 1.000000e+00
  %122 = and i1 %120, %121
  %123 = zext i1 %122 to i8
  br label %124

124:                                              ; preds = %90, %57, %4
  %125 = phi i8 [ 0, %4 ], [ 0, %57 ], [ %123, %90 ]
  ret i8 %125
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @isect_point_tri_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = tail call zeroext i8 @isect_point_tri_prism_v3(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3), !range !48
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %74, label %8

8:                                                ; preds = %5
  %9 = load float, ptr %1, align 4, !tbaa !34
  %10 = load float, ptr %2, align 4, !tbaa !34
  %11 = fsub float %9, %10
  %12 = getelementptr inbounds float, ptr %1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %2, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fsub float %13, %15
  %17 = getelementptr inbounds float, ptr %1, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %2, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fsub float %18, %20
  %22 = load float, ptr %3, align 4, !tbaa !34
  %23 = fsub float %10, %22
  %24 = getelementptr inbounds float, ptr %3, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = fsub float %15, %25
  %27 = getelementptr inbounds float, ptr %3, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = fsub float %20, %28
  %30 = fneg float %21
  %31 = fmul float %26, %30
  %32 = tail call float @llvm.fmuladd.f32(float %16, float %29, float %31)
  %33 = fneg float %11
  %34 = fmul float %29, %33
  %35 = tail call float @llvm.fmuladd.f32(float %21, float %23, float %34)
  %36 = fneg float %16
  %37 = fmul float %23, %36
  %38 = tail call float @llvm.fmuladd.f32(float %11, float %26, float %37)
  %39 = fmul float %35, %35
  %40 = tail call float @llvm.fmuladd.f32(float %32, float %32, float %39)
  %41 = tail call float @llvm.fmuladd.f32(float %38, float %38, float %40)
  %42 = fcmp une float %41, 0.000000e+00
  br i1 %42, label %43, label %64

43:                                               ; preds = %8
  %44 = fmul float %13, %35
  %45 = tail call float @llvm.fmuladd.f32(float %32, float %9, float %44)
  %46 = tail call float @llvm.fmuladd.f32(float %38, float %18, float %45)
  %47 = load float, ptr %0, align 4, !tbaa !34
  %48 = getelementptr inbounds float, ptr %0, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !34
  %50 = fmul float %35, %49
  %51 = tail call float @llvm.fmuladd.f32(float %47, float %32, float %50)
  %52 = getelementptr inbounds float, ptr %0, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !34
  %54 = tail call float @llvm.fmuladd.f32(float %53, float %38, float %51)
  %55 = fsub float %54, %46
  %56 = fneg float %55
  %57 = fdiv float %56, %41
  %58 = tail call float @llvm.fmuladd.f32(float %32, float %57, float %47)
  store float %58, ptr %4, align 4, !tbaa !34
  %59 = load float, ptr %48, align 4, !tbaa !34
  %60 = tail call float @llvm.fmuladd.f32(float %35, float %57, float %59)
  %61 = getelementptr inbounds float, ptr %4, i64 1
  store float %60, ptr %61, align 4, !tbaa !34
  %62 = load float, ptr %52, align 4, !tbaa !34
  %63 = tail call float @llvm.fmuladd.f32(float %38, float %57, float %62)
  br label %71

64:                                               ; preds = %8
  %65 = load float, ptr %0, align 4, !tbaa !34
  store float %65, ptr %4, align 4, !tbaa !34
  %66 = getelementptr inbounds float, ptr %0, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !34
  %68 = getelementptr inbounds float, ptr %4, i64 1
  store float %67, ptr %68, align 4, !tbaa !34
  %69 = getelementptr inbounds float, ptr %0, i64 2
  %70 = load float, ptr %69, align 4, !tbaa !34
  br label %71

71:                                               ; preds = %64, %43
  %72 = phi float [ %63, %43 ], [ %70, %64 ]
  %73 = getelementptr inbounds float, ptr %4, i64 2
  store float %72, ptr %73, align 4, !tbaa !34
  br label %74

74:                                               ; preds = %71, %5
  %75 = phi i8 [ 0, %5 ], [ 1, %71 ]
  ret i8 %75
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @clip_segment_v3_plane(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
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
  %18 = getelementptr inbounds float, ptr %2, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fmul float %11, %19
  %21 = tail call float @llvm.fmuladd.f32(float %6, float %17, float %20)
  %22 = getelementptr inbounds float, ptr %2, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = tail call float @llvm.fmuladd.f32(float %16, float %23, float %21)
  %25 = fcmp oeq float %24, 0.000000e+00
  br i1 %25, label %54, label %26

26:                                               ; preds = %3
  %27 = fmul float %10, %19
  %28 = tail call float @llvm.fmuladd.f32(float %5, float %17, float %27)
  %29 = tail call float @llvm.fmuladd.f32(float %15, float %23, float %28)
  %30 = getelementptr inbounds float, ptr %2, i64 3
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = fadd float %29, %31
  %33 = fneg float %32
  %34 = fdiv float %33, %24
  %35 = fcmp ogt float %24, 0.000000e+00
  br i1 %35, label %36, label %45

36:                                               ; preds = %26
  %37 = fcmp ult float %34, 1.000000e+00
  br i1 %37, label %39, label %38

38:                                               ; preds = %36
  store float 0.000000e+00, ptr %0, align 4, !tbaa !34
  store float 0.000000e+00, ptr %9, align 4, !tbaa !34
  store float 0.000000e+00, ptr %14, align 4, !tbaa !34
  store float 0.000000e+00, ptr %1, align 4, !tbaa !34
  store float 0.000000e+00, ptr %7, align 4, !tbaa !34
  store float 0.000000e+00, ptr %12, align 4, !tbaa !34
  br label %54

39:                                               ; preds = %36
  %40 = fcmp ogt float %34, 0.000000e+00
  br i1 %40, label %41, label %54

41:                                               ; preds = %39
  %42 = tail call float @llvm.fmuladd.f32(float %6, float %34, float %5)
  %43 = tail call float @llvm.fmuladd.f32(float %11, float %34, float %10)
  %44 = tail call float @llvm.fmuladd.f32(float %16, float %34, float %15)
  store float %42, ptr %0, align 4, !tbaa !34
  store float %43, ptr %9, align 4, !tbaa !34
  store float %44, ptr %14, align 4, !tbaa !34
  br label %54

45:                                               ; preds = %26
  %46 = fcmp ugt float %34, 0.000000e+00
  br i1 %46, label %48, label %47

47:                                               ; preds = %45
  store float 0.000000e+00, ptr %0, align 4, !tbaa !34
  store float 0.000000e+00, ptr %9, align 4, !tbaa !34
  store float 0.000000e+00, ptr %14, align 4, !tbaa !34
  store float 0.000000e+00, ptr %1, align 4, !tbaa !34
  store float 0.000000e+00, ptr %7, align 4, !tbaa !34
  store float 0.000000e+00, ptr %12, align 4, !tbaa !34
  br label %54

48:                                               ; preds = %45
  %49 = fcmp olt float %34, 1.000000e+00
  br i1 %49, label %50, label %54

50:                                               ; preds = %48
  %51 = tail call float @llvm.fmuladd.f32(float %6, float %34, float %5)
  %52 = tail call float @llvm.fmuladd.f32(float %11, float %34, float %10)
  %53 = tail call float @llvm.fmuladd.f32(float %16, float %34, float %15)
  store float %51, ptr %1, align 4, !tbaa !34
  store float %52, ptr %7, align 4, !tbaa !34
  store float %53, ptr %12, align 4, !tbaa !34
  br label %54

54:                                               ; preds = %48, %39, %3, %50, %47, %41, %38
  %55 = phi i8 [ 0, %38 ], [ 1, %41 ], [ 0, %47 ], [ 1, %50 ], [ 1, %3 ], [ 1, %39 ], [ 1, %48 ]
  ret i8 %55
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @clip_segment_v3_plane_n(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #12 {
  %5 = load float, ptr %0, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %0, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = load float, ptr %1, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fsub float %10, %5
  %16 = fsub float %12, %7
  %17 = fsub float %14, %9
  %18 = icmp sgt i32 %3, 0
  br i1 %18, label %19, label %96

19:                                               ; preds = %4
  %20 = zext nneg i32 %3 to i64
  br label %21

21:                                               ; preds = %19, %84
  %22 = phi i64 [ 0, %19 ], [ %94, %84 ]
  %23 = phi float [ %9, %19 ], [ %93, %84 ]
  %24 = phi float [ %7, %19 ], [ %92, %84 ]
  %25 = phi float [ %5, %19 ], [ %91, %84 ]
  %26 = phi float [ %15, %19 ], [ %90, %84 ]
  %27 = phi float [ %16, %19 ], [ %89, %84 ]
  %28 = phi float [ %17, %19 ], [ %88, %84 ]
  %29 = phi float [ %10, %19 ], [ %87, %84 ]
  %30 = phi float [ %12, %19 ], [ %86, %84 ]
  %31 = phi float [ %14, %19 ], [ %85, %84 ]
  %32 = getelementptr inbounds [4 x float], ptr %2, i64 %22
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = getelementptr inbounds float, ptr %32, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = fmul float %27, %35
  %37 = tail call float @llvm.fmuladd.f32(float %26, float %33, float %36)
  %38 = getelementptr inbounds float, ptr %32, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !34
  %40 = tail call float @llvm.fmuladd.f32(float %28, float %39, float %37)
  %41 = fcmp une float %40, 0.000000e+00
  br i1 %41, label %42, label %84

42:                                               ; preds = %21
  %43 = fmul float %24, %35
  %44 = tail call float @llvm.fmuladd.f32(float %25, float %33, float %43)
  %45 = tail call float @llvm.fmuladd.f32(float %23, float %39, float %44)
  %46 = getelementptr inbounds float, ptr %32, i64 3
  %47 = load float, ptr %46, align 4, !tbaa !34
  %48 = fadd float %45, %47
  %49 = fneg float %48
  %50 = fdiv float %49, %40
  %51 = fcmp ogt float %40, 0.000000e+00
  br i1 %51, label %52, label %67

52:                                               ; preds = %42
  %53 = fcmp ult float %50, 1.000000e+00
  br i1 %53, label %54, label %103

54:                                               ; preds = %52
  %55 = fcmp ogt float %50, 0.000000e+00
  br i1 %55, label %56, label %84

56:                                               ; preds = %54
  %57 = tail call float @llvm.fmuladd.f32(float %26, float %50, float %25)
  %58 = tail call float @llvm.fmuladd.f32(float %27, float %50, float %24)
  %59 = tail call float @llvm.fmuladd.f32(float %28, float %50, float %23)
  %60 = fsub float %29, %57
  %61 = fsub float %30, %58
  %62 = fsub float %31, %59
  %63 = fmul float %16, %61
  %64 = tail call float @llvm.fmuladd.f32(float %60, float %15, float %63)
  %65 = tail call float @llvm.fmuladd.f32(float %62, float %17, float %64)
  %66 = fcmp olt float %65, 0.000000e+00
  br i1 %66, label %103, label %84

67:                                               ; preds = %42
  %68 = fcmp olt float %40, 0.000000e+00
  br i1 %68, label %69, label %84

69:                                               ; preds = %67
  %70 = fcmp ugt float %50, 0.000000e+00
  br i1 %70, label %71, label %103

71:                                               ; preds = %69
  %72 = fcmp olt float %50, 1.000000e+00
  br i1 %72, label %73, label %84

73:                                               ; preds = %71
  %74 = tail call float @llvm.fmuladd.f32(float %26, float %50, float %25)
  %75 = tail call float @llvm.fmuladd.f32(float %27, float %50, float %24)
  %76 = tail call float @llvm.fmuladd.f32(float %28, float %50, float %23)
  %77 = fsub float %74, %25
  %78 = fsub float %75, %24
  %79 = fsub float %76, %23
  %80 = fmul float %16, %78
  %81 = tail call float @llvm.fmuladd.f32(float %77, float %15, float %80)
  %82 = tail call float @llvm.fmuladd.f32(float %79, float %17, float %81)
  %83 = fcmp olt float %82, 0.000000e+00
  br i1 %83, label %103, label %84

84:                                               ; preds = %56, %54, %71, %73, %67, %21
  %85 = phi float [ %31, %56 ], [ %31, %54 ], [ %76, %73 ], [ %31, %71 ], [ %31, %67 ], [ %31, %21 ]
  %86 = phi float [ %30, %56 ], [ %30, %54 ], [ %75, %73 ], [ %30, %71 ], [ %30, %67 ], [ %30, %21 ]
  %87 = phi float [ %29, %56 ], [ %29, %54 ], [ %74, %73 ], [ %29, %71 ], [ %29, %67 ], [ %29, %21 ]
  %88 = phi float [ %62, %56 ], [ %28, %54 ], [ %79, %73 ], [ %28, %71 ], [ %28, %67 ], [ %28, %21 ]
  %89 = phi float [ %61, %56 ], [ %27, %54 ], [ %78, %73 ], [ %27, %71 ], [ %27, %67 ], [ %27, %21 ]
  %90 = phi float [ %60, %56 ], [ %26, %54 ], [ %77, %73 ], [ %26, %71 ], [ %26, %67 ], [ %26, %21 ]
  %91 = phi float [ %57, %56 ], [ %25, %54 ], [ %25, %73 ], [ %25, %71 ], [ %25, %67 ], [ %25, %21 ]
  %92 = phi float [ %58, %56 ], [ %24, %54 ], [ %24, %73 ], [ %24, %71 ], [ %24, %67 ], [ %24, %21 ]
  %93 = phi float [ %59, %56 ], [ %23, %54 ], [ %23, %73 ], [ %23, %71 ], [ %23, %67 ], [ %23, %21 ]
  %94 = add nuw nsw i64 %22, 1
  %95 = icmp eq i64 %94, %20
  br i1 %95, label %96, label %21, !llvm.loop !49

96:                                               ; preds = %84, %4
  %97 = phi float [ %14, %4 ], [ %85, %84 ]
  %98 = phi float [ %12, %4 ], [ %86, %84 ]
  %99 = phi float [ %10, %4 ], [ %87, %84 ]
  %100 = phi float [ %5, %4 ], [ %91, %84 ]
  %101 = phi float [ %7, %4 ], [ %92, %84 ]
  %102 = phi float [ %9, %4 ], [ %93, %84 ]
  store float %100, ptr %0, align 4, !tbaa !34
  store float %101, ptr %6, align 4, !tbaa !34
  store float %102, ptr %8, align 4, !tbaa !34
  store float %99, ptr %1, align 4, !tbaa !34
  store float %98, ptr %11, align 4, !tbaa !34
  store float %97, ptr %13, align 4, !tbaa !34
  br label %103

103:                                              ; preds = %73, %69, %56, %52, %96
  %104 = phi i8 [ 1, %96 ], [ 0, %52 ], [ 0, %56 ], [ 0, %69 ], [ 0, %73 ]
  ret i8 %104
}

; Function Attrs: nounwind uwtable
define dso_local void @plot_line_v2v2i(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #6 {
  %5 = load i32, ptr %0, align 4, !tbaa !42
  %6 = getelementptr inbounds i32, ptr %0, i64 1
  %7 = load i32, ptr %6, align 4, !tbaa !42
  %8 = load i32, ptr %1, align 4, !tbaa !42
  %9 = getelementptr inbounds i32, ptr %1, i64 1
  %10 = load i32, ptr %9, align 4, !tbaa !42
  %11 = icmp sgt i32 %8, %5
  %12 = sub nsw i32 %8, %5
  %13 = select i1 %11, i32 1, i32 -1
  %14 = tail call i32 @llvm.abs.i32(i32 %12, i1 true)
  %15 = shl nuw i32 %14, 1
  %16 = icmp sgt i32 %10, %7
  %17 = sub nsw i32 %10, %7
  %18 = select i1 %16, i32 1, i32 -1
  %19 = tail call i32 @llvm.abs.i32(i32 %17, i1 true)
  %20 = shl nuw i32 %19, 1
  %21 = tail call zeroext i8 %2(i32 noundef %5, i32 noundef %7, ptr noundef %3) #17
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %71, label %23

23:                                               ; preds = %4
  %24 = icmp slt i32 %15, %20
  br i1 %24, label %48, label %25

25:                                               ; preds = %23
  %26 = ashr exact i32 %15, 1
  %27 = sub nsw i32 %20, %26
  br label %28

28:                                               ; preds = %41, %25
  %29 = phi i32 [ %7, %25 ], [ %42, %41 ]
  %30 = phi i32 [ %5, %25 ], [ %44, %41 ]
  %31 = phi i32 [ %27, %25 ], [ %45, %41 ]
  %32 = icmp eq i32 %30, %8
  br i1 %32, label %71, label %33

33:                                               ; preds = %28
  %34 = icmp sgt i32 %31, -1
  br i1 %34, label %35, label %41

35:                                               ; preds = %33
  %36 = icmp ne i32 %31, 0
  %37 = or i1 %11, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = add nsw i32 %29, %18
  %40 = sub nsw i32 %31, %15
  br label %41

41:                                               ; preds = %38, %35, %33
  %42 = phi i32 [ %39, %38 ], [ %29, %35 ], [ %29, %33 ]
  %43 = phi i32 [ %40, %38 ], [ 0, %35 ], [ %31, %33 ]
  %44 = add nsw i32 %30, %13
  %45 = add nsw i32 %43, %20
  %46 = tail call zeroext i8 %2(i32 noundef %44, i32 noundef %42, ptr noundef %3) #17
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %71, label %28, !llvm.loop !50

48:                                               ; preds = %23
  %49 = ashr exact i32 %20, 1
  %50 = sub nsw i32 %15, %49
  br label %51

51:                                               ; preds = %64, %48
  %52 = phi i32 [ %7, %48 ], [ %67, %64 ]
  %53 = phi i32 [ %5, %48 ], [ %65, %64 ]
  %54 = phi i32 [ %50, %48 ], [ %68, %64 ]
  %55 = icmp eq i32 %52, %10
  br i1 %55, label %71, label %56

56:                                               ; preds = %51
  %57 = icmp sgt i32 %54, -1
  br i1 %57, label %58, label %64

58:                                               ; preds = %56
  %59 = icmp ne i32 %54, 0
  %60 = or i1 %16, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = add nsw i32 %53, %13
  %63 = sub nsw i32 %54, %20
  br label %64

64:                                               ; preds = %61, %58, %56
  %65 = phi i32 [ %62, %61 ], [ %53, %58 ], [ %53, %56 ]
  %66 = phi i32 [ %63, %61 ], [ 0, %58 ], [ %54, %56 ]
  %67 = add nsw i32 %52, %18
  %68 = add nsw i32 %66, %15
  %69 = tail call zeroext i8 %2(i32 noundef %65, i32 noundef %67, ptr noundef %3) #17
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %51, !llvm.loop !51

71:                                               ; preds = %41, %28, %64, %51, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @fill_poly_v2i_n(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef readonly %6, ptr noundef %7) local_unnamed_addr #6 {
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !52
  %10 = add nsw i32 %5, 1
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 2
  %13 = tail call ptr %9(i64 noundef %12, ptr noundef nonnull @__func__.fill_poly_v2i_n) #17
  %14 = icmp slt i32 %1, %3
  br i1 %14, label %15, label %122

15:                                               ; preds = %8
  %16 = add nsw i32 %5, -1
  %17 = icmp sgt i32 %5, 0
  %18 = zext nneg i32 %5 to i64
  br label %19

19:                                               ; preds = %15, %119
  %20 = phi i32 [ %1, %15 ], [ %120, %119 ]
  br i1 %17, label %25, label %21

21:                                               ; preds = %64, %19
  %22 = phi i32 [ 0, %19 ], [ %65, %64 ]
  %23 = add nsw i32 %22, -1
  %24 = icmp sgt i32 %22, 1
  br i1 %24, label %73, label %69

25:                                               ; preds = %19, %64
  %26 = phi i64 [ %66, %64 ], [ 0, %19 ]
  %27 = phi i32 [ %65, %64 ], [ 0, %19 ]
  %28 = phi i32 [ %67, %64 ], [ %16, %19 ]
  %29 = getelementptr inbounds [2 x i32], ptr %4, i64 %26
  %30 = getelementptr inbounds [2 x i32], ptr %4, i64 %26, i64 1
  %31 = load i32, ptr %30, align 4, !tbaa !42
  %32 = icmp slt i32 %31, %20
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = sext i32 %28 to i64
  %35 = getelementptr inbounds [2 x i32], ptr %4, i64 %34, i64 1
  %36 = load i32, ptr %35, align 4, !tbaa !42
  %37 = icmp slt i32 %36, %20
  br i1 %37, label %38, label %44

38:                                               ; preds = %33, %25
  %39 = sext i32 %28 to i64
  %40 = getelementptr inbounds [2 x i32], ptr %4, i64 %39, i64 1
  %41 = load i32, ptr %40, align 4, !tbaa !42
  %42 = icmp sge i32 %41, %20
  %43 = or i1 %32, %42
  br i1 %43, label %64, label %44

44:                                               ; preds = %38, %33
  %45 = load i32, ptr %29, align 4, !tbaa !42
  %46 = sitofp i32 %45 to double
  %47 = sub nsw i32 %20, %31
  %48 = sitofp i32 %47 to double
  %49 = sext i32 %28 to i64
  %50 = getelementptr inbounds [2 x i32], ptr %4, i64 %49
  %51 = getelementptr inbounds [2 x i32], ptr %4, i64 %49, i64 1
  %52 = load i32, ptr %51, align 4, !tbaa !42
  %53 = sub nsw i32 %52, %31
  %54 = sitofp i32 %53 to double
  %55 = fdiv double %48, %54
  %56 = load i32, ptr %50, align 4, !tbaa !42
  %57 = sub nsw i32 %56, %45
  %58 = sitofp i32 %57 to double
  %59 = tail call double @llvm.fmuladd.f64(double %55, double %58, double %46)
  %60 = fptosi double %59 to i32
  %61 = add nsw i32 %27, 1
  %62 = sext i32 %27 to i64
  %63 = getelementptr inbounds i32, ptr %13, i64 %62
  store i32 %60, ptr %63, align 4, !tbaa !42
  br label %64

64:                                               ; preds = %38, %44
  %65 = phi i32 [ %61, %44 ], [ %27, %38 ]
  %66 = add nuw nsw i64 %26, 1
  %67 = trunc i64 %26 to i32
  %68 = icmp eq i64 %66, %18
  br i1 %68, label %21, label %25, !llvm.loop !54

69:                                               ; preds = %85, %21
  %70 = icmp sgt i32 %22, 0
  br i1 %70, label %71, label %119

71:                                               ; preds = %69
  %72 = sub nsw i32 %20, %1
  br label %88

73:                                               ; preds = %21, %85
  %74 = phi i32 [ %86, %85 ], [ 0, %21 ]
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, ptr %13, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !42
  %78 = add nsw i32 %74, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, ptr %13, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !42
  %82 = icmp sgt i32 %77, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %73
  store i32 %81, ptr %76, align 4, !tbaa !42
  store i32 %77, ptr %80, align 4, !tbaa !42
  %84 = tail call i32 @llvm.usub.sat.i32(i32 %74, i32 1)
  br label %85

85:                                               ; preds = %83, %73
  %86 = phi i32 [ %84, %83 ], [ %78, %73 ]
  %87 = icmp slt i32 %86, %23
  br i1 %87, label %73, label %69, !llvm.loop !55

88:                                               ; preds = %71, %115
  %89 = phi i64 [ 0, %71 ], [ %116, %115 ]
  %90 = getelementptr inbounds i32, ptr %13, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !42
  %92 = icmp slt i32 %91, %2
  br i1 %92, label %93, label %119

93:                                               ; preds = %88
  %94 = or disjoint i64 %89, 1
  %95 = getelementptr inbounds i32, ptr %13, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !42
  %97 = icmp sgt i32 %96, %0
  br i1 %97, label %98, label %115

98:                                               ; preds = %93
  %99 = icmp slt i32 %91, %0
  br i1 %99, label %100, label %101

100:                                              ; preds = %98
  store i32 %0, ptr %90, align 4, !tbaa !42
  br label %101

101:                                              ; preds = %100, %98
  %102 = load i32, ptr %95, align 4, !tbaa !42
  %103 = icmp sgt i32 %102, %2
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store i32 %2, ptr %95, align 4, !tbaa !42
  br label %105

105:                                              ; preds = %104, %101
  %106 = load i32, ptr %90, align 4, !tbaa !42
  %107 = load i32, ptr %95, align 4, !tbaa !42
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %105, %109
  %110 = phi i32 [ %112, %109 ], [ %106, %105 ]
  %111 = sub nsw i32 %110, %0
  tail call void %6(i32 noundef %111, i32 noundef %72, ptr noundef %7) #17
  %112 = add nsw i32 %110, 1
  %113 = load i32, ptr %95, align 4, !tbaa !42
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %109, label %115, !llvm.loop !56

115:                                              ; preds = %109, %105, %93
  %116 = add nuw i64 %89, 2
  %117 = trunc i64 %116 to i32
  %118 = icmp sgt i32 %22, %117
  br i1 %118, label %88, label %119, !llvm.loop !57

119:                                              ; preds = %88, %115, %69
  %120 = add i32 %20, 1
  %121 = icmp eq i32 %120, %3
  br i1 %121, label %122, label %19, !llvm.loop !58

122:                                              ; preds = %119, %8
  %123 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  tail call void %123(ptr noundef %13) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nounwind uwtable
define dso_local void @axis_dominant_v3_to_m3(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %4 = load float, ptr %1, align 4, !tbaa !34
  store float %4, ptr %3, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float %6, ptr %7, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %9, ptr %10, align 4, !tbaa !34
  %11 = getelementptr inbounds [3 x float], ptr %0, i64 1
  tail call void @ortho_basis_v3v3_v3(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %3) #17
  tail call void @transpose_m3(ptr noundef %0) #17
  ret void
}

declare void @ortho_basis_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @transpose_m3(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @interp_weights_face_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef readonly %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds float, ptr %0, i64 3
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = getelementptr inbounds float, ptr %0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %11 = load float, ptr %5, align 4, !tbaa !34
  %12 = load float, ptr %1, align 4, !tbaa !34
  %13 = fcmp oeq float %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %6
  %15 = getelementptr inbounds float, ptr %5, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %1, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fcmp oeq float %16, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = getelementptr inbounds float, ptr %5, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = getelementptr inbounds float, ptr %1, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fcmp une float %22, %24
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store float 1.000000e+00, ptr %0, align 4, !tbaa !34
  br label %201

27:                                               ; preds = %14, %6, %20
  %28 = load float, ptr %2, align 4, !tbaa !34
  %29 = fcmp oeq float %11, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = getelementptr inbounds float, ptr %5, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = getelementptr inbounds float, ptr %2, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = fcmp oeq float %32, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = getelementptr inbounds float, ptr %5, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !34
  %39 = getelementptr inbounds float, ptr %2, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = fcmp une float %38, %40
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  store float 1.000000e+00, ptr %10, align 4, !tbaa !34
  br label %201

43:                                               ; preds = %30, %27, %36
  %44 = load float, ptr %3, align 4, !tbaa !34
  %45 = fcmp oeq float %11, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = getelementptr inbounds float, ptr %5, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !34
  %49 = getelementptr inbounds float, ptr %3, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !34
  %51 = fcmp oeq float %48, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = getelementptr inbounds float, ptr %5, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !34
  %55 = getelementptr inbounds float, ptr %3, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !34
  %57 = fcmp une float %54, %56
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  store float 1.000000e+00, ptr %9, align 4, !tbaa !34
  br label %201

59:                                               ; preds = %46, %43, %52
  %60 = icmp eq ptr %4, null
  br i1 %60, label %95, label %61

61:                                               ; preds = %59
  %62 = load float, ptr %4, align 4, !tbaa !34
  %63 = fcmp oeq float %11, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = getelementptr inbounds float, ptr %5, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !34
  %67 = getelementptr inbounds float, ptr %4, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !34
  %69 = fcmp oeq float %66, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = getelementptr inbounds float, ptr %5, i64 2
  %72 = load float, ptr %71, align 4, !tbaa !34
  %73 = getelementptr inbounds float, ptr %4, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !34
  %75 = fcmp une float %72, %74
  br i1 %75, label %77, label %76

76:                                               ; preds = %70
  store float 1.000000e+00, ptr %8, align 4, !tbaa !34
  br label %201

77:                                               ; preds = %64, %61, %70
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  %78 = getelementptr inbounds float, ptr %1, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !34
  %80 = getelementptr inbounds float, ptr %3, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !34
  %82 = fsub float %79, %81
  %83 = getelementptr inbounds float, ptr %1, i64 2
  %84 = load float, ptr %83, align 4, !tbaa !34
  %85 = getelementptr inbounds float, ptr %3, i64 2
  %86 = load float, ptr %85, align 4, !tbaa !34
  %87 = fsub float %84, %86
  %88 = getelementptr inbounds float, ptr %2, i64 1
  %89 = load float, ptr %88, align 4, !tbaa !34
  %90 = getelementptr inbounds float, ptr %4, i64 1
  %91 = load float, ptr %90, align 4, !tbaa !34
  %92 = fsub float %89, %91
  %93 = getelementptr inbounds float, ptr %4, i64 2
  %94 = load float, ptr %93, align 4, !tbaa !34
  br label %109

95:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  %96 = getelementptr inbounds float, ptr %1, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !34
  %98 = getelementptr inbounds float, ptr %3, i64 1
  %99 = load float, ptr %98, align 4, !tbaa !34
  %100 = fsub float %97, %99
  %101 = getelementptr inbounds float, ptr %1, i64 2
  %102 = load float, ptr %101, align 4, !tbaa !34
  %103 = getelementptr inbounds float, ptr %3, i64 2
  %104 = load float, ptr %103, align 4, !tbaa !34
  %105 = fsub float %102, %104
  %106 = getelementptr inbounds float, ptr %2, i64 1
  %107 = load float, ptr %106, align 4, !tbaa !34
  %108 = fsub float %107, %99
  br label %109

109:                                              ; preds = %95, %77
  %110 = phi float [ %104, %95 ], [ %94, %77 ]
  %111 = phi float [ %105, %95 ], [ %87, %77 ]
  %112 = phi float [ %100, %95 ], [ %82, %77 ]
  %113 = phi float [ %108, %95 ], [ %92, %77 ]
  %114 = phi float [ %44, %95 ], [ %62, %77 ]
  %115 = getelementptr inbounds float, ptr %2, i64 2
  %116 = load float, ptr %115, align 4, !tbaa !34
  %117 = fsub float %116, %110
  %118 = fsub float %28, %114
  %119 = fsub float %12, %44
  %120 = fneg float %111
  %121 = fmul float %113, %120
  %122 = tail call float @llvm.fmuladd.f32(float %112, float %117, float %121)
  store float %122, ptr %7, align 4, !tbaa !34
  %123 = fneg float %119
  %124 = fmul float %117, %123
  %125 = tail call float @llvm.fmuladd.f32(float %111, float %118, float %124)
  %126 = getelementptr inbounds float, ptr %7, i64 1
  store float %125, ptr %126, align 4, !tbaa !34
  %127 = fneg float %112
  %128 = fmul float %118, %127
  %129 = tail call float @llvm.fmuladd.f32(float %119, float %113, float %128)
  %130 = getelementptr inbounds float, ptr %7, i64 2
  store float %129, ptr %130, align 4, !tbaa !34
  br i1 %60, label %198, label %131

131:                                              ; preds = %109
  %132 = call fastcc zeroext i8 @barycentric_weights(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %0), !range !48
  %133 = load float, ptr %9, align 4, !tbaa !34
  %134 = load float, ptr %8, align 4, !tbaa !34
  store float %134, ptr %9, align 4, !tbaa !34
  store float %133, ptr %8, align 4, !tbaa !34
  %135 = icmp eq i8 %132, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load float, ptr %0, align 4, !tbaa !34
  %138 = fcmp olt float %137, 0.000000e+00
  br i1 %138, label %139, label %200

139:                                              ; preds = %136, %131
  %140 = tail call float @llvm.fabs.f32(float %122)
  %141 = tail call float @llvm.fabs.f32(float %125)
  %142 = tail call float @llvm.fabs.f32(float %129)
  %143 = fcmp ult float %142, %140
  %144 = fcmp ult float %142, %141
  %145 = select i1 %143, i1 true, i1 %144
  %146 = fcmp ult float %141, %140
  %147 = fcmp ult float %141, %142
  %148 = or i1 %146, %147
  %149 = select i1 %145, i1 %148, i1 false
  %150 = zext i1 %149 to i64
  %151 = getelementptr inbounds float, ptr %3, i64 %150
  %152 = load float, ptr %151, align 4, !tbaa !34
  %153 = getelementptr inbounds float, ptr %4, i64 %150
  %154 = load float, ptr %153, align 4, !tbaa !34
  %155 = fsub float %152, %154
  %156 = select i1 %145, i64 2, i64 1
  %157 = getelementptr inbounds float, ptr %4, i64 %156
  %158 = load float, ptr %157, align 4, !tbaa !34
  %159 = getelementptr inbounds float, ptr %5, i64 %156
  %160 = load float, ptr %159, align 4, !tbaa !34
  %161 = fsub float %158, %160
  %162 = getelementptr inbounds float, ptr %3, i64 %156
  %163 = load float, ptr %162, align 4, !tbaa !34
  %164 = fsub float %163, %158
  %165 = getelementptr inbounds float, ptr %5, i64 %150
  %166 = load float, ptr %165, align 4, !tbaa !34
  %167 = fsub float %166, %154
  %168 = fmul float %164, %167
  %169 = tail call float @llvm.fmuladd.f32(float %155, float %161, float %168)
  %170 = fmul float %169, 5.000000e-01
  %171 = getelementptr inbounds float, ptr %2, i64 %150
  %172 = load float, ptr %171, align 4, !tbaa !34
  %173 = fsub float %154, %172
  %174 = getelementptr inbounds float, ptr %2, i64 %156
  %175 = load float, ptr %174, align 4, !tbaa !34
  %176 = fsub float %175, %160
  %177 = fsub float %158, %175
  %178 = fsub float %166, %172
  %179 = fmul float %178, %177
  %180 = tail call float @llvm.fmuladd.f32(float %173, float %176, float %179)
  %181 = fmul float %180, 5.000000e-01
  %182 = fsub float %172, %152
  %183 = fsub float %163, %160
  %184 = fsub float %175, %163
  %185 = fsub float %166, %152
  %186 = fmul float %185, %184
  %187 = tail call float @llvm.fmuladd.f32(float %182, float %183, float %186)
  %188 = fmul float %187, 5.000000e-01
  %189 = fadd float %170, %181
  %190 = fadd float %188, %189
  %191 = tail call float @llvm.fabs.f32(float %190)
  %192 = fcmp ogt float %191, 0x3E80000000000000
  br i1 %192, label %193, label %200

193:                                              ; preds = %139
  %194 = fdiv float 1.000000e+00, %190
  %195 = fmul float %188, %194
  %196 = fmul float %170, %194
  %197 = fmul float %181, %194
  store float 0.000000e+00, ptr %0, align 4, !tbaa !34
  store float %196, ptr %10, align 4, !tbaa !34
  store float %197, ptr %9, align 4, !tbaa !34
  store float %195, ptr %8, align 4, !tbaa !34
  br label %200

198:                                              ; preds = %109
  %199 = call fastcc zeroext i8 @barycentric_weights(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %0), !range !48
  br label %200

200:                                              ; preds = %136, %193, %139, %198
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  br label %201

201:                                              ; preds = %42, %76, %200, %58, %26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i8 @barycentric_weights(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 {
  %7 = load float, ptr %4, align 4, !tbaa !34
  %8 = tail call float @llvm.fabs.f32(float %7)
  %9 = getelementptr inbounds float, ptr %4, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = tail call float @llvm.fabs.f32(float %10)
  %12 = getelementptr inbounds float, ptr %4, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = tail call float @llvm.fabs.f32(float %13)
  %15 = fcmp ult float %14, %8
  %16 = fcmp ult float %14, %11
  %17 = select i1 %15, i1 true, i1 %16
  %18 = fcmp ult float %11, %8
  %19 = fcmp ult float %11, %14
  %20 = or i1 %18, %19
  %21 = select i1 %17, i1 %20, i1 false
  %22 = zext i1 %21 to i64
  %23 = getelementptr inbounds float, ptr %1, i64 %22
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = getelementptr inbounds float, ptr %2, i64 %22
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = fsub float %24, %26
  %28 = select i1 %17, i64 2, i64 1
  %29 = getelementptr inbounds float, ptr %2, i64 %28
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = getelementptr inbounds float, ptr %3, i64 %28
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = fsub float %30, %32
  %34 = getelementptr inbounds float, ptr %1, i64 %28
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = fsub float %35, %30
  %37 = getelementptr inbounds float, ptr %3, i64 %22
  %38 = load float, ptr %37, align 4, !tbaa !34
  %39 = fsub float %38, %26
  %40 = fmul float %36, %39
  %41 = tail call float @llvm.fmuladd.f32(float %27, float %33, float %40)
  %42 = fmul float %41, 5.000000e-01
  store float %42, ptr %5, align 4, !tbaa !34
  %43 = load float, ptr %25, align 4, !tbaa !34
  %44 = getelementptr inbounds float, ptr %0, i64 %22
  %45 = load float, ptr %44, align 4, !tbaa !34
  %46 = fsub float %43, %45
  %47 = getelementptr inbounds float, ptr %0, i64 %28
  %48 = load float, ptr %47, align 4, !tbaa !34
  %49 = load float, ptr %31, align 4, !tbaa !34
  %50 = fsub float %48, %49
  %51 = load float, ptr %29, align 4, !tbaa !34
  %52 = fsub float %51, %48
  %53 = load float, ptr %37, align 4, !tbaa !34
  %54 = fsub float %53, %45
  %55 = fmul float %52, %54
  %56 = tail call float @llvm.fmuladd.f32(float %46, float %50, float %55)
  %57 = fmul float %56, 5.000000e-01
  %58 = getelementptr inbounds float, ptr %5, i64 1
  store float %57, ptr %58, align 4, !tbaa !34
  %59 = load float, ptr %44, align 4, !tbaa !34
  %60 = load float, ptr %23, align 4, !tbaa !34
  %61 = fsub float %59, %60
  %62 = load float, ptr %34, align 4, !tbaa !34
  %63 = load float, ptr %31, align 4, !tbaa !34
  %64 = fsub float %62, %63
  %65 = load float, ptr %47, align 4, !tbaa !34
  %66 = fsub float %65, %62
  %67 = load float, ptr %37, align 4, !tbaa !34
  %68 = fsub float %67, %60
  %69 = fmul float %66, %68
  %70 = tail call float @llvm.fmuladd.f32(float %61, float %64, float %69)
  %71 = fmul float %70, 5.000000e-01
  %72 = getelementptr inbounds float, ptr %5, i64 2
  store float %71, ptr %72, align 4, !tbaa !34
  %73 = fadd float %42, %57
  %74 = fadd float %73, %71
  %75 = tail call float @llvm.fabs.f32(float %74)
  %76 = fcmp ogt float %75, 0x3E80000000000000
  br i1 %76, label %77, label %82

77:                                               ; preds = %6
  %78 = fdiv float 1.000000e+00, %74
  %79 = fmul float %42, %78
  store float %79, ptr %5, align 4, !tbaa !34
  %80 = fmul float %57, %78
  store float %80, ptr %58, align 4, !tbaa !34
  %81 = fmul float %71, %78
  br label %83

82:                                               ; preds = %6
  store float 0x3FD5555560000000, ptr %5, align 4, !tbaa !34
  store float 0x3FD5555560000000, ptr %58, align 4, !tbaa !34
  br label %83

83:                                               ; preds = %82, %77
  %84 = phi float [ 0x3FD5555560000000, %82 ], [ %81, %77 ]
  %85 = phi i8 [ 1, %82 ], [ 0, %77 ]
  store float %84, ptr %72, align 4, !tbaa !34
  ret i8 %85
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @barycentric_inside_triangle_v2(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = load float, ptr %0, align 4, !tbaa !34
  %3 = fcmp ogt float %2, 0.000000e+00
  %4 = fcmp olt float %2, 1.000000e+00
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fcmp ogt float %8, 0.000000e+00
  %10 = fcmp olt float %8, 1.000000e+00
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fcmp ogt float %14, 0.000000e+00
  %16 = fcmp olt float %14, 1.000000e+00
  %17 = and i1 %15, %16
  br i1 %17, label %35, label %18

18:                                               ; preds = %1, %6, %12
  %19 = fcmp ult float %2, 0.000000e+00
  %20 = fcmp ugt float %2, 1.000000e+00
  %21 = or i1 %19, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds float, ptr %0, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fcmp ult float %24, 0.000000e+00
  %26 = fcmp ugt float %24, 1.000000e+00
  %27 = or i1 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds float, ptr %0, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = fcmp ult float %30, 0.000000e+00
  %32 = fcmp ugt float %30, 1.000000e+00
  %33 = or i1 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %18, %22, %28
  br label %35

35:                                               ; preds = %28, %12, %34
  %36 = phi i32 [ 0, %34 ], [ 1, %12 ], [ 2, %28 ]
  ret i32 %36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @barycentric_coords_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load float, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = load float, ptr %1, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = load float, ptr %2, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %2, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fsub float %11, %14
  %16 = fsub float %6, %12
  %17 = fsub float %12, %9
  %18 = fsub float %8, %14
  %19 = fmul float %17, %18
  %20 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %19)
  %21 = tail call float @llvm.fabs.f32(float %20)
  %22 = fcmp ogt float %21, 0x3E80000000000000
  br i1 %22, label %23, label %40

23:                                               ; preds = %5
  %24 = getelementptr inbounds float, ptr %3, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = load float, ptr %3, align 4, !tbaa !34
  %27 = fsub float %26, %12
  %28 = fsub float %25, %14
  %29 = fmul float %17, %28
  %30 = tail call float @llvm.fmuladd.f32(float %15, float %27, float %29)
  %31 = fdiv float %30, %20
  store float %31, ptr %4, align 4, !tbaa !34
  %32 = fsub float %14, %8
  %33 = fmul float %16, %28
  %34 = tail call float @llvm.fmuladd.f32(float %32, float %27, float %33)
  %35 = fdiv float %34, %20
  %36 = getelementptr inbounds float, ptr %4, i64 1
  store float %35, ptr %36, align 4, !tbaa !34
  %37 = fsub float 1.000000e+00, %31
  %38 = fsub float %37, %35
  %39 = getelementptr inbounds float, ptr %4, i64 2
  store float %38, ptr %39, align 4, !tbaa !34
  br label %40

40:                                               ; preds = %5, %23
  %41 = phi i8 [ 1, %23 ], [ 0, %5 ]
  ret i8 %41
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @barycentric_weights_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = load float, ptr %2, align 4, !tbaa !34
  %8 = fsub float %6, %7
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %3, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fsub float %10, %12
  %14 = getelementptr inbounds float, ptr %1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fsub float %15, %10
  %17 = load float, ptr %3, align 4, !tbaa !34
  %18 = fsub float %17, %7
  %19 = fmul float %16, %18
  %20 = tail call float @llvm.fmuladd.f32(float %8, float %13, float %19)
  %21 = fmul float %20, 5.000000e-01
  store float %21, ptr %4, align 4, !tbaa !34
  %22 = load float, ptr %2, align 4, !tbaa !34
  %23 = load float, ptr %0, align 4, !tbaa !34
  %24 = fsub float %22, %23
  %25 = getelementptr inbounds float, ptr %0, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = load float, ptr %11, align 4, !tbaa !34
  %28 = fsub float %26, %27
  %29 = load float, ptr %9, align 4, !tbaa !34
  %30 = fsub float %29, %26
  %31 = load float, ptr %3, align 4, !tbaa !34
  %32 = fsub float %31, %23
  %33 = fmul float %30, %32
  %34 = tail call float @llvm.fmuladd.f32(float %24, float %28, float %33)
  %35 = fmul float %34, 5.000000e-01
  %36 = getelementptr inbounds float, ptr %4, i64 1
  store float %35, ptr %36, align 4, !tbaa !34
  %37 = load float, ptr %0, align 4, !tbaa !34
  %38 = load float, ptr %1, align 4, !tbaa !34
  %39 = fsub float %37, %38
  %40 = load float, ptr %14, align 4, !tbaa !34
  %41 = load float, ptr %11, align 4, !tbaa !34
  %42 = fsub float %40, %41
  %43 = load float, ptr %25, align 4, !tbaa !34
  %44 = fsub float %43, %40
  %45 = load float, ptr %3, align 4, !tbaa !34
  %46 = fsub float %45, %38
  %47 = fmul float %44, %46
  %48 = tail call float @llvm.fmuladd.f32(float %39, float %42, float %47)
  %49 = fmul float %48, 5.000000e-01
  %50 = getelementptr inbounds float, ptr %4, i64 2
  store float %49, ptr %50, align 4, !tbaa !34
  %51 = fadd float %21, %35
  %52 = fadd float %51, %49
  %53 = fcmp une float %52, 0.000000e+00
  br i1 %53, label %54, label %59

54:                                               ; preds = %5
  %55 = fdiv float 1.000000e+00, %52
  %56 = fmul float %21, %55
  store float %56, ptr %4, align 4, !tbaa !34
  %57 = fmul float %35, %55
  store float %57, ptr %36, align 4, !tbaa !34
  %58 = fmul float %49, %55
  br label %60

59:                                               ; preds = %5
  store float 0x3FD5555560000000, ptr %4, align 4, !tbaa !34
  store float 0x3FD5555560000000, ptr %36, align 4, !tbaa !34
  br label %60

60:                                               ; preds = %59, %54
  %61 = phi float [ 0x3FD5555560000000, %59 ], [ %58, %54 ]
  store float %61, ptr %50, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @barycentric_weights_v2_persp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = load float, ptr %2, align 4, !tbaa !34
  %8 = fsub float %6, %7
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %3, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fsub float %10, %12
  %14 = getelementptr inbounds float, ptr %1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fsub float %15, %10
  %17 = load float, ptr %3, align 4, !tbaa !34
  %18 = fsub float %17, %7
  %19 = fmul float %16, %18
  %20 = tail call float @llvm.fmuladd.f32(float %8, float %13, float %19)
  %21 = fmul float %20, 5.000000e-01
  %22 = getelementptr inbounds float, ptr %0, i64 3
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = fdiv float %21, %23
  store float %24, ptr %4, align 4, !tbaa !34
  %25 = load float, ptr %2, align 4, !tbaa !34
  %26 = load float, ptr %0, align 4, !tbaa !34
  %27 = fsub float %25, %26
  %28 = getelementptr inbounds float, ptr %0, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = load float, ptr %11, align 4, !tbaa !34
  %31 = fsub float %29, %30
  %32 = load float, ptr %9, align 4, !tbaa !34
  %33 = fsub float %32, %29
  %34 = load float, ptr %3, align 4, !tbaa !34
  %35 = fsub float %34, %26
  %36 = fmul float %33, %35
  %37 = tail call float @llvm.fmuladd.f32(float %27, float %31, float %36)
  %38 = fmul float %37, 5.000000e-01
  %39 = getelementptr inbounds float, ptr %1, i64 3
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = fdiv float %38, %40
  %42 = getelementptr inbounds float, ptr %4, i64 1
  store float %41, ptr %42, align 4, !tbaa !34
  %43 = load float, ptr %0, align 4, !tbaa !34
  %44 = load float, ptr %1, align 4, !tbaa !34
  %45 = fsub float %43, %44
  %46 = load float, ptr %14, align 4, !tbaa !34
  %47 = load float, ptr %11, align 4, !tbaa !34
  %48 = fsub float %46, %47
  %49 = load float, ptr %28, align 4, !tbaa !34
  %50 = fsub float %49, %46
  %51 = load float, ptr %3, align 4, !tbaa !34
  %52 = fsub float %51, %44
  %53 = fmul float %50, %52
  %54 = tail call float @llvm.fmuladd.f32(float %45, float %48, float %53)
  %55 = fmul float %54, 5.000000e-01
  %56 = getelementptr inbounds float, ptr %2, i64 3
  %57 = load float, ptr %56, align 4, !tbaa !34
  %58 = fdiv float %55, %57
  %59 = getelementptr inbounds float, ptr %4, i64 2
  store float %58, ptr %59, align 4, !tbaa !34
  %60 = fadd float %24, %41
  %61 = fadd float %60, %58
  %62 = fcmp une float %61, 0.000000e+00
  br i1 %62, label %63, label %68

63:                                               ; preds = %5
  %64 = fdiv float 1.000000e+00, %61
  %65 = fmul float %24, %64
  store float %65, ptr %4, align 4, !tbaa !34
  %66 = fmul float %41, %64
  store float %66, ptr %42, align 4, !tbaa !34
  %67 = fmul float %58, %64
  store float %67, ptr %59, align 4, !tbaa !34
  br label %69

68:                                               ; preds = %5
  store float 0x3FD5555560000000, ptr %59, align 4, !tbaa !34
  store float 0x3FD5555560000000, ptr %42, align 4, !tbaa !34
  store float 0x3FD5555560000000, ptr %4, align 4, !tbaa !34
  br label %69

69:                                               ; preds = %68, %63
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @barycentric_weights_v2_quad(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #1 {
  %7 = load float, ptr %0, align 4, !tbaa !34
  %8 = load float, ptr %4, align 4, !tbaa !34
  %9 = fsub float %7, %8
  %10 = getelementptr inbounds float, ptr %0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %4, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fsub float %11, %13
  %15 = load float, ptr %1, align 4, !tbaa !34
  %16 = fsub float %15, %8
  %17 = getelementptr inbounds float, ptr %1, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fsub float %18, %13
  %20 = load float, ptr %2, align 4, !tbaa !34
  %21 = fsub float %20, %8
  %22 = getelementptr inbounds float, ptr %2, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = fsub float %23, %13
  %25 = load float, ptr %3, align 4, !tbaa !34
  %26 = fsub float %25, %8
  %27 = getelementptr inbounds float, ptr %3, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = fsub float %28, %13
  %30 = fmul float %14, %14
  %31 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %30)
  %32 = tail call float @sqrtf(float noundef %31) #17
  %33 = fmul float %19, %19
  %34 = tail call float @llvm.fmuladd.f32(float %16, float %16, float %33)
  %35 = tail call float @sqrtf(float noundef %34) #17
  %36 = fmul float %24, %24
  %37 = tail call float @llvm.fmuladd.f32(float %21, float %21, float %36)
  %38 = tail call float @sqrtf(float noundef %37) #17
  %39 = fmul float %29, %29
  %40 = tail call float @llvm.fmuladd.f32(float %26, float %26, float %39)
  %41 = tail call float @sqrtf(float noundef %40) #17
  %42 = fcmp olt float %32, 0x3E80000000000000
  br i1 %42, label %43, label %47

43:                                               ; preds = %6
  store float 1.000000e+00, ptr %5, align 4, !tbaa !34
  %44 = getelementptr inbounds float, ptr %5, i64 3
  store float 0.000000e+00, ptr %44, align 4, !tbaa !34
  %45 = getelementptr inbounds float, ptr %5, i64 2
  store float 0.000000e+00, ptr %45, align 4, !tbaa !34
  %46 = getelementptr inbounds float, ptr %5, i64 1
  store float 0.000000e+00, ptr %46, align 4, !tbaa !34
  br label %140

47:                                               ; preds = %6
  %48 = fcmp olt float %35, 0x3E80000000000000
  br i1 %48, label %49, label %53

49:                                               ; preds = %47
  %50 = getelementptr inbounds float, ptr %5, i64 1
  store float 1.000000e+00, ptr %50, align 4, !tbaa !34
  %51 = getelementptr inbounds float, ptr %5, i64 3
  store float 0.000000e+00, ptr %51, align 4, !tbaa !34
  %52 = getelementptr inbounds float, ptr %5, i64 2
  store float 0.000000e+00, ptr %52, align 4, !tbaa !34
  store float 0.000000e+00, ptr %5, align 4, !tbaa !34
  br label %140

53:                                               ; preds = %47
  %54 = fcmp olt float %38, 0x3E80000000000000
  br i1 %54, label %55, label %59

55:                                               ; preds = %53
  %56 = getelementptr inbounds float, ptr %5, i64 2
  store float 1.000000e+00, ptr %56, align 4, !tbaa !34
  %57 = getelementptr inbounds float, ptr %5, i64 3
  store float 0.000000e+00, ptr %57, align 4, !tbaa !34
  %58 = getelementptr inbounds float, ptr %5, i64 1
  store float 0.000000e+00, ptr %58, align 4, !tbaa !34
  store float 0.000000e+00, ptr %5, align 4, !tbaa !34
  br label %140

59:                                               ; preds = %53
  %60 = fcmp olt float %41, 0x3E80000000000000
  br i1 %60, label %61, label %65

61:                                               ; preds = %59
  %62 = getelementptr inbounds float, ptr %5, i64 3
  store float 1.000000e+00, ptr %62, align 4, !tbaa !34
  %63 = getelementptr inbounds float, ptr %5, i64 2
  store float 0.000000e+00, ptr %63, align 4, !tbaa !34
  %64 = getelementptr inbounds float, ptr %5, i64 1
  store float 0.000000e+00, ptr %64, align 4, !tbaa !34
  store float 0.000000e+00, ptr %5, align 4, !tbaa !34
  br label %140

65:                                               ; preds = %59
  %66 = fneg float %14
  %67 = fmul float %16, %66
  %68 = tail call float @llvm.fmuladd.f32(float %9, float %19, float %67)
  %69 = fcmp une float %68, 0.000000e+00
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = fmul float %14, %19
  %72 = tail call float @llvm.fmuladd.f32(float %9, float %16, float %71)
  %73 = fneg float %72
  %74 = tail call float @llvm.fmuladd.f32(float %32, float %35, float %73)
  %75 = fdiv float %74, %68
  %76 = tail call float @llvm.fabs.f32(float %75)
  br label %77

77:                                               ; preds = %65, %70
  %78 = phi float [ %76, %70 ], [ 0.000000e+00, %65 ]
  %79 = fneg float %19
  %80 = fmul float %21, %79
  %81 = tail call float @llvm.fmuladd.f32(float %16, float %24, float %80)
  %82 = fcmp une float %81, 0.000000e+00
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  %84 = fmul float %19, %24
  %85 = tail call float @llvm.fmuladd.f32(float %16, float %21, float %84)
  %86 = fneg float %85
  %87 = tail call float @llvm.fmuladd.f32(float %35, float %38, float %86)
  %88 = fdiv float %87, %81
  %89 = tail call float @llvm.fabs.f32(float %88)
  br label %90

90:                                               ; preds = %77, %83
  %91 = phi float [ %89, %83 ], [ 0.000000e+00, %77 ]
  %92 = fneg float %24
  %93 = fmul float %26, %92
  %94 = tail call float @llvm.fmuladd.f32(float %21, float %29, float %93)
  %95 = fcmp une float %94, 0.000000e+00
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = fmul float %24, %29
  %98 = tail call float @llvm.fmuladd.f32(float %21, float %26, float %97)
  %99 = fneg float %98
  %100 = tail call float @llvm.fmuladd.f32(float %38, float %41, float %99)
  %101 = fdiv float %100, %94
  %102 = tail call float @llvm.fabs.f32(float %101)
  br label %103

103:                                              ; preds = %90, %96
  %104 = phi float [ %102, %96 ], [ 0.000000e+00, %90 ]
  %105 = fneg float %29
  %106 = fmul float %9, %105
  %107 = tail call float @llvm.fmuladd.f32(float %26, float %14, float %106)
  %108 = fcmp une float %107, 0.000000e+00
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = fmul float %14, %29
  %111 = tail call float @llvm.fmuladd.f32(float %26, float %9, float %110)
  %112 = fneg float %111
  %113 = tail call float @llvm.fmuladd.f32(float %41, float %32, float %112)
  %114 = fdiv float %113, %107
  %115 = tail call float @llvm.fabs.f32(float %114)
  br label %116

116:                                              ; preds = %103, %109
  %117 = phi float [ %115, %109 ], [ 0.000000e+00, %103 ]
  %118 = fadd float %78, %117
  %119 = fdiv float %118, %32
  store float %119, ptr %5, align 4, !tbaa !34
  %120 = fadd float %78, %91
  %121 = fdiv float %120, %35
  %122 = getelementptr inbounds float, ptr %5, i64 1
  store float %121, ptr %122, align 4, !tbaa !34
  %123 = fadd float %91, %104
  %124 = fdiv float %123, %38
  %125 = getelementptr inbounds float, ptr %5, i64 2
  store float %124, ptr %125, align 4, !tbaa !34
  %126 = fadd float %104, %117
  %127 = fdiv float %126, %41
  %128 = getelementptr inbounds float, ptr %5, i64 3
  store float %127, ptr %128, align 4, !tbaa !34
  %129 = fadd float %121, %119
  %130 = fadd float %124, %129
  %131 = fadd float %127, %130
  %132 = fcmp une float %131, 0.000000e+00
  br i1 %132, label %133, label %139

133:                                              ; preds = %116
  %134 = fdiv float 1.000000e+00, %131
  %135 = fmul float %119, %134
  store float %135, ptr %5, align 4, !tbaa !34
  %136 = fmul float %121, %134
  store float %136, ptr %122, align 4, !tbaa !34
  %137 = fmul float %124, %134
  store float %137, ptr %125, align 4, !tbaa !34
  %138 = fmul float %127, %134
  store float %138, ptr %128, align 4, !tbaa !34
  br label %140

139:                                              ; preds = %116
  store float 2.500000e-01, ptr %5, align 4, !tbaa !34
  store float 2.500000e-01, ptr %122, align 4, !tbaa !34
  store float 2.500000e-01, ptr %125, align 4, !tbaa !34
  store float 2.500000e-01, ptr %128, align 4, !tbaa !34
  br label %140

140:                                              ; preds = %133, %139, %49, %61, %55, %43
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @transform_point_by_tri_v3(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #6 {
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x [3 x float]], align 16
  %12 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #17
  %13 = load float, ptr %2, align 4, !tbaa !34
  %14 = load float, ptr %3, align 4, !tbaa !34
  %15 = fsub float %13, %14
  %16 = load float, ptr %4, align 4, !tbaa !34
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %2, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %3, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fsub float %19, %21
  %23 = getelementptr inbounds float, ptr %4, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fsub float %21, %24
  %26 = getelementptr inbounds float, ptr %2, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = getelementptr inbounds float, ptr %3, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = fsub float %27, %29
  %31 = getelementptr inbounds float, ptr %4, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = fsub float %29, %32
  %34 = fneg float %30
  %35 = fmul float %25, %34
  %36 = tail call float @llvm.fmuladd.f32(float %22, float %33, float %35)
  %37 = fneg float %15
  %38 = fmul float %33, %37
  %39 = tail call float @llvm.fmuladd.f32(float %30, float %17, float %38)
  %40 = fneg float %22
  %41 = fmul float %17, %40
  %42 = tail call float @llvm.fmuladd.f32(float %15, float %25, float %41)
  %43 = fmul float %39, %39
  %44 = tail call float @llvm.fmuladd.f32(float %36, float %36, float %43)
  %45 = tail call float @llvm.fmuladd.f32(float %42, float %42, float %44)
  %46 = fcmp ogt float %45, 0x38AA95A5C0000000
  br i1 %46, label %47, label %53

47:                                               ; preds = %8
  %48 = tail call float @sqrtf(float noundef %45) #17
  %49 = fdiv float 1.000000e+00, %48
  %50 = fmul float %36, %49
  %51 = fmul float %39, %49
  %52 = fmul float %42, %49
  br label %53

53:                                               ; preds = %8, %47
  %54 = phi float [ %51, %47 ], [ 0.000000e+00, %8 ]
  %55 = phi float [ %50, %47 ], [ 0.000000e+00, %8 ]
  %56 = phi float [ %52, %47 ], [ 0.000000e+00, %8 ]
  %57 = load float, ptr %5, align 4, !tbaa !34
  %58 = load float, ptr %6, align 4, !tbaa !34
  %59 = fsub float %57, %58
  %60 = load float, ptr %7, align 4, !tbaa !34
  %61 = fsub float %58, %60
  %62 = getelementptr inbounds float, ptr %5, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !34
  %64 = getelementptr inbounds float, ptr %6, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !34
  %66 = fsub float %63, %65
  %67 = getelementptr inbounds float, ptr %7, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !34
  %69 = fsub float %65, %68
  %70 = getelementptr inbounds float, ptr %5, i64 2
  %71 = load float, ptr %70, align 4, !tbaa !34
  %72 = getelementptr inbounds float, ptr %6, i64 2
  %73 = load float, ptr %72, align 4, !tbaa !34
  %74 = fsub float %71, %73
  %75 = getelementptr inbounds float, ptr %7, i64 2
  %76 = load float, ptr %75, align 4, !tbaa !34
  %77 = fsub float %73, %76
  %78 = fneg float %74
  %79 = fmul float %69, %78
  %80 = tail call float @llvm.fmuladd.f32(float %66, float %77, float %79)
  %81 = fneg float %59
  %82 = fmul float %77, %81
  %83 = tail call float @llvm.fmuladd.f32(float %74, float %61, float %82)
  %84 = fneg float %66
  %85 = fmul float %61, %84
  %86 = tail call float @llvm.fmuladd.f32(float %59, float %69, float %85)
  %87 = fmul float %83, %83
  %88 = tail call float @llvm.fmuladd.f32(float %80, float %80, float %87)
  %89 = tail call float @llvm.fmuladd.f32(float %86, float %86, float %88)
  %90 = fcmp ogt float %89, 0x38AA95A5C0000000
  br i1 %90, label %91, label %97

91:                                               ; preds = %53
  %92 = tail call float @sqrtf(float noundef %89) #17
  %93 = fdiv float 1.000000e+00, %92
  %94 = fmul float %80, %93
  %95 = fmul float %83, %93
  %96 = fmul float %86, %93
  br label %97

97:                                               ; preds = %53, %91
  %98 = phi float [ %95, %91 ], [ 0.000000e+00, %53 ]
  %99 = phi float [ %94, %91 ], [ 0.000000e+00, %53 ]
  %100 = phi float [ %96, %91 ], [ 0.000000e+00, %53 ]
  %101 = getelementptr inbounds [3 x float], ptr %9, i64 2
  store float %99, ptr %101, align 8, !tbaa !34
  %102 = getelementptr inbounds [3 x float], ptr %9, i64 2, i64 1
  store float %98, ptr %102, align 4, !tbaa !34
  %103 = getelementptr inbounds [3 x float], ptr %9, i64 2, i64 2
  store float %100, ptr %103, align 16, !tbaa !34
  %104 = getelementptr inbounds [3 x float], ptr %9, i64 1
  call void @ortho_basis_v3v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %104, ptr noundef nonnull %101) #17
  call void @transpose_m3(ptr noundef nonnull %9) #17
  call void @mul_v3_m3v3(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef %1) #17
  call void @mul_v3_m3v3(ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef nonnull %5) #17
  %105 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 1
  call void @mul_v3_m3v3(ptr noundef nonnull %105, ptr noundef nonnull %9, ptr noundef nonnull %6) #17
  %106 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 2
  call void @mul_v3_m3v3(ptr noundef nonnull %106, ptr noundef nonnull %9, ptr noundef nonnull %7) #17
  %107 = load float, ptr %105, align 4, !tbaa !34
  %108 = load float, ptr %106, align 8, !tbaa !34
  %109 = fsub float %107, %108
  %110 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 2, i64 1
  %111 = load float, ptr %110, align 4, !tbaa !34
  %112 = getelementptr inbounds float, ptr %10, i64 1
  %113 = load float, ptr %112, align 4, !tbaa !34
  %114 = fsub float %111, %113
  %115 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 1, i64 1
  %116 = load float, ptr %115, align 16, !tbaa !34
  %117 = fsub float %116, %111
  %118 = load float, ptr %10, align 4, !tbaa !34
  %119 = fsub float %118, %108
  %120 = fmul float %117, %119
  %121 = call float @llvm.fmuladd.f32(float %109, float %114, float %120)
  %122 = fmul float %121, 5.000000e-01
  store float %122, ptr %12, align 4, !tbaa !34
  %123 = load float, ptr %11, align 16, !tbaa !34
  %124 = fsub float %108, %123
  %125 = getelementptr inbounds float, ptr %11, i64 1
  %126 = load float, ptr %125, align 4, !tbaa !34
  %127 = fsub float %126, %113
  %128 = fsub float %111, %126
  %129 = fsub float %118, %123
  %130 = fmul float %129, %128
  %131 = call float @llvm.fmuladd.f32(float %124, float %127, float %130)
  %132 = fmul float %131, 5.000000e-01
  %133 = getelementptr inbounds float, ptr %12, i64 1
  store float %132, ptr %133, align 4, !tbaa !34
  %134 = fsub float %123, %107
  %135 = fsub float %116, %113
  %136 = fsub float %126, %116
  %137 = fsub float %118, %107
  %138 = fmul float %137, %136
  %139 = call float @llvm.fmuladd.f32(float %134, float %135, float %138)
  %140 = fmul float %139, 5.000000e-01
  %141 = getelementptr inbounds float, ptr %12, i64 2
  store float %140, ptr %141, align 4, !tbaa !34
  %142 = fadd float %122, %132
  %143 = fadd float %140, %142
  %144 = fcmp une float %143, 0.000000e+00
  br i1 %144, label %145, label %150

145:                                              ; preds = %97
  %146 = fdiv float 1.000000e+00, %143
  %147 = fmul float %122, %146
  store float %147, ptr %12, align 4, !tbaa !34
  %148 = fmul float %132, %146
  store float %148, ptr %133, align 4, !tbaa !34
  %149 = fmul float %140, %146
  br label %151

150:                                              ; preds = %97
  store float 0x3FD5555560000000, ptr %12, align 4, !tbaa !34
  store float 0x3FD5555560000000, ptr %133, align 4, !tbaa !34
  br label %151

151:                                              ; preds = %145, %150
  %152 = phi float [ 0x3FD5555560000000, %150 ], [ %149, %145 ]
  store float %152, ptr %141, align 4, !tbaa !34
  call void @interp_v3_v3v3v3(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %12) #17
  %153 = load float, ptr %4, align 4, !tbaa !34
  %154 = load float, ptr %3, align 4, !tbaa !34
  %155 = fsub float %153, %154
  %156 = load float, ptr %23, align 4, !tbaa !34
  %157 = load float, ptr %20, align 4, !tbaa !34
  %158 = fsub float %156, %157
  %159 = load float, ptr %31, align 4, !tbaa !34
  %160 = load float, ptr %28, align 4, !tbaa !34
  %161 = fsub float %159, %160
  %162 = load float, ptr %2, align 4, !tbaa !34
  %163 = fsub float %162, %154
  %164 = load float, ptr %18, align 4, !tbaa !34
  %165 = fsub float %164, %157
  %166 = load float, ptr %26, align 4, !tbaa !34
  %167 = fsub float %166, %160
  %168 = fneg float %161
  %169 = fmul float %165, %168
  %170 = call float @llvm.fmuladd.f32(float %158, float %167, float %169)
  %171 = fneg float %155
  %172 = fmul float %167, %171
  %173 = call float @llvm.fmuladd.f32(float %161, float %163, float %172)
  %174 = fneg float %158
  %175 = fmul float %163, %174
  %176 = call float @llvm.fmuladd.f32(float %155, float %165, float %175)
  %177 = fmul float %173, %173
  %178 = call float @llvm.fmuladd.f32(float %170, float %170, float %177)
  %179 = call float @llvm.fmuladd.f32(float %176, float %176, float %178)
  %180 = call float @sqrtf(float noundef %179) #17
  %181 = fmul float %180, 5.000000e-01
  %182 = call float @sqrtf(float noundef %181) #17
  %183 = load float, ptr %11, align 16, !tbaa !34
  %184 = load float, ptr %105, align 4, !tbaa !34
  %185 = fsub float %183, %184
  %186 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 1, i64 1
  %187 = load float, ptr %186, align 16, !tbaa !34
  %188 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 2, i64 1
  %189 = load float, ptr %188, align 4, !tbaa !34
  %190 = fsub float %187, %189
  %191 = load float, ptr %125, align 4, !tbaa !34
  %192 = fsub float %191, %187
  %193 = load float, ptr %106, align 8, !tbaa !34
  %194 = fsub float %193, %184
  %195 = fmul float %192, %194
  %196 = call float @llvm.fmuladd.f32(float %185, float %190, float %195)
  %197 = fmul float %196, 5.000000e-01
  %198 = call float @llvm.fabs.f32(float %197)
  %199 = call float @sqrtf(float noundef %198) #17
  %200 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %201 = load float, ptr %200, align 4, !tbaa !34
  %202 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %203 = load float, ptr %202, align 8, !tbaa !34
  %204 = fsub float %201, %203
  %205 = fdiv float %204, %199
  %206 = fmul float %182, %205
  %207 = load float, ptr %0, align 4, !tbaa !34
  %208 = call float @llvm.fmuladd.f32(float %55, float %206, float %207)
  store float %208, ptr %0, align 4, !tbaa !34
  %209 = getelementptr inbounds float, ptr %0, i64 1
  %210 = load float, ptr %209, align 4, !tbaa !34
  %211 = call float @llvm.fmuladd.f32(float %54, float %206, float %210)
  store float %211, ptr %209, align 4, !tbaa !34
  %212 = getelementptr inbounds float, ptr %0, i64 2
  %213 = load float, ptr %212, align 4, !tbaa !34
  %214 = call float @llvm.fmuladd.f32(float %56, float %206, float %213)
  store float %214, ptr %212, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #17
  ret void
}

declare void @mul_v3_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @interp_v3_v3v3v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @transform_point_by_seg_v3(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) local_unnamed_addr #6 {
  %7 = load float, ptr %5, align 4, !tbaa !34
  %8 = load float, ptr %4, align 4, !tbaa !34
  %9 = fsub float %7, %8
  %10 = getelementptr inbounds float, ptr %5, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %4, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fsub float %11, %13
  %15 = getelementptr inbounds float, ptr %5, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %4, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fsub float %16, %18
  %20 = fmul float %14, %14
  %21 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %20)
  %22 = tail call float @llvm.fmuladd.f32(float %19, float %19, float %21)
  %23 = fcmp une float %22, 0.000000e+00
  br i1 %23, label %24, label %37

24:                                               ; preds = %6
  %25 = getelementptr inbounds float, ptr %1, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = fsub float %26, %18
  %28 = getelementptr inbounds float, ptr %1, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = fsub float %29, %13
  %31 = load float, ptr %1, align 4, !tbaa !34
  %32 = fsub float %31, %8
  %33 = fmul float %14, %30
  %34 = tail call float @llvm.fmuladd.f32(float %9, float %32, float %33)
  %35 = tail call float @llvm.fmuladd.f32(float %19, float %27, float %34)
  %36 = fdiv float %35, %22
  br label %37

37:                                               ; preds = %6, %24
  %38 = phi float [ %36, %24 ], [ 0.000000e+00, %6 ]
  tail call void @interp_v3_v3v3(ptr noundef %0, ptr noundef %2, ptr noundef %3, float noundef %38) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @interp_sparse_array(ptr nocapture noundef %0, i32 noundef %1, float noundef %2) local_unnamed_addr #6 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %3
  %6 = zext nneg i32 %1 to i64
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %16, %7 ]
  %9 = phi i32 [ 0, %5 ], [ %15, %7 ]
  %10 = phi i32 [ 0, %5 ], [ %14, %7 ]
  %11 = getelementptr inbounds float, ptr %0, i64 %8
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fcmp oeq float %12, %2
  %14 = select i1 %13, i32 %10, i32 1
  %15 = select i1 %13, i32 1, i32 %9
  %16 = add nuw nsw i64 %8, 1
  %17 = icmp eq i64 %16, %6
  br i1 %17, label %18, label %7, !llvm.loop !59

18:                                               ; preds = %7
  %19 = icmp eq i32 %14, 0
  %20 = icmp eq i32 %15, 0
  br label %21

21:                                               ; preds = %18, %3
  %22 = phi i1 [ true, %3 ], [ %19, %18 ]
  %23 = phi i1 [ true, %3 ], [ %20, %18 ]
  %24 = select i1 %22, i1 true, i1 %23
  %25 = sext i1 %22 to i32
  br i1 %24, label %120, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %28 = sext i32 %1 to i64
  %29 = shl nsw i64 %28, 2
  %30 = tail call ptr %27(i64 noundef %29, ptr noundef nonnull @.str) #17
  %31 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %32 = tail call ptr %31(i64 noundef %29, ptr noundef nonnull @.str) #17
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %34 = tail call ptr %33(i64 noundef %29, ptr noundef nonnull @.str.1) #17
  %35 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %36 = tail call ptr %35(i64 noundef %29, ptr noundef nonnull @.str.2) #17
  %37 = icmp sgt i32 %1, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = zext nneg i32 %1 to i64
  br label %44

40:                                               ; preds = %55, %26
  %41 = icmp sgt i32 %1, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %40
  %43 = zext nneg i32 %1 to i64
  br label %64

44:                                               ; preds = %38, %55
  %45 = phi i64 [ 0, %38 ], [ %58, %55 ]
  %46 = phi i32 [ 0, %38 ], [ %57, %55 ]
  %47 = phi float [ %2, %38 ], [ %56, %55 ]
  %48 = getelementptr inbounds float, ptr %0, i64 %45
  %49 = load float, ptr %48, align 4, !tbaa !34
  %50 = fcmp oeq float %49, %2
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = getelementptr inbounds float, ptr %30, i64 %45
  store float %47, ptr %52, align 4, !tbaa !34
  %53 = add nsw i32 %46, 1
  %54 = getelementptr inbounds i32, ptr %34, i64 %45
  store i32 %53, ptr %54, align 4, !tbaa !42
  br label %55

55:                                               ; preds = %44, %51
  %56 = phi float [ %47, %51 ], [ %49, %44 ]
  %57 = phi i32 [ %53, %51 ], [ 0, %44 ]
  %58 = add nuw nsw i64 %45, 1
  %59 = icmp eq i64 %58, %39
  br i1 %59, label %40, label %44, !llvm.loop !60

60:                                               ; preds = %76, %40
  %61 = icmp sgt i32 %1, 0
  br i1 %61, label %62, label %115

62:                                               ; preds = %60
  %63 = zext nneg i32 %1 to i64
  br label %80

64:                                               ; preds = %42, %76
  %65 = phi i64 [ %43, %42 ], [ %68, %76 ]
  %66 = phi i32 [ 0, %42 ], [ %78, %76 ]
  %67 = phi float [ %2, %42 ], [ %77, %76 ]
  %68 = add nsw i64 %65, -1
  %69 = getelementptr inbounds float, ptr %0, i64 %68
  %70 = load float, ptr %69, align 4, !tbaa !34
  %71 = fcmp oeq float %70, %2
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = getelementptr inbounds float, ptr %32, i64 %68
  store float %67, ptr %73, align 4, !tbaa !34
  %74 = add nsw i32 %66, 1
  %75 = getelementptr inbounds i32, ptr %36, i64 %68
  store i32 %74, ptr %75, align 4, !tbaa !42
  br label %76

76:                                               ; preds = %64, %72
  %77 = phi float [ %67, %72 ], [ %70, %64 ]
  %78 = phi i32 [ %74, %72 ], [ 0, %64 ]
  %79 = icmp sgt i64 %65, 1
  br i1 %79, label %64, label %60, !llvm.loop !61

80:                                               ; preds = %62, %112
  %81 = phi i64 [ 0, %62 ], [ %113, %112 ]
  %82 = getelementptr inbounds float, ptr %0, i64 %81
  %83 = load float, ptr %82, align 4, !tbaa !34
  %84 = fcmp oeq float %83, %2
  br i1 %84, label %85, label %112

85:                                               ; preds = %80
  %86 = getelementptr inbounds float, ptr %30, i64 %81
  %87 = load float, ptr %86, align 4, !tbaa !34
  %88 = fcmp une float %87, %2
  br i1 %88, label %89, label %106

89:                                               ; preds = %85
  %90 = getelementptr inbounds float, ptr %32, i64 %81
  %91 = load float, ptr %90, align 4, !tbaa !34
  %92 = fcmp une float %91, %2
  br i1 %92, label %93, label %105

93:                                               ; preds = %89
  %94 = getelementptr inbounds i32, ptr %36, i64 %81
  %95 = load i32, ptr %94, align 4, !tbaa !42
  %96 = sitofp i32 %95 to float
  %97 = getelementptr inbounds i32, ptr %34, i64 %81
  %98 = load i32, ptr %97, align 4, !tbaa !42
  %99 = sitofp i32 %98 to float
  %100 = fmul float %91, %99
  %101 = tail call float @llvm.fmuladd.f32(float %87, float %96, float %100)
  %102 = add nsw i32 %98, %95
  %103 = sitofp i32 %102 to float
  %104 = fdiv float %101, %103
  br label %110

105:                                              ; preds = %89
  br i1 %88, label %110, label %106

106:                                              ; preds = %85, %105
  %107 = getelementptr inbounds float, ptr %32, i64 %81
  %108 = load float, ptr %107, align 4, !tbaa !34
  %109 = fcmp une float %108, %2
  br i1 %109, label %110, label %112

110:                                              ; preds = %106, %105, %93
  %111 = phi float [ %104, %93 ], [ %87, %105 ], [ %108, %106 ]
  store float %111, ptr %82, align 4, !tbaa !34
  br label %112

112:                                              ; preds = %110, %80, %106
  %113 = add nuw nsw i64 %81, 1
  %114 = icmp eq i64 %113, %63
  br i1 %114, label %115, label %80, !llvm.loop !62

115:                                              ; preds = %112, %60
  %116 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  tail call void %116(ptr noundef %30) #17
  %117 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  tail call void %117(ptr noundef %32) #17
  %118 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  tail call void %118(ptr noundef %34) #17
  %119 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  tail call void %119(ptr noundef %36) #17
  br label %120

120:                                              ; preds = %21, %115
  %121 = phi i32 [ 1, %115 ], [ %25, %21 ]
  ret i32 %121
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @interp_weights_poly_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #4 {
  %5 = getelementptr inbounds [3 x float], ptr %1, i64 1
  %6 = sext i32 %2 to i64
  %7 = getelementptr [3 x float], ptr %1, i64 %6
  %8 = getelementptr [3 x float], ptr %7, i64 -1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = load float, ptr %3, align 4, !tbaa !34
  %11 = fsub float %9, %10
  %12 = getelementptr [3 x float], ptr %7, i64 -1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %3, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fsub float %13, %15
  %17 = getelementptr [3 x float], ptr %7, i64 -1, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %3, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fsub float %18, %20
  %22 = load float, ptr %1, align 4, !tbaa !34
  %23 = fsub float %22, %10
  %24 = getelementptr inbounds float, ptr %1, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = fsub float %25, %15
  %27 = getelementptr inbounds float, ptr %1, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = fsub float %28, %20
  %30 = fneg float %21
  %31 = fmul float %26, %30
  %32 = tail call float @llvm.fmuladd.f32(float %16, float %29, float %31)
  %33 = fneg float %11
  %34 = fmul float %29, %33
  %35 = tail call float @llvm.fmuladd.f32(float %21, float %23, float %34)
  %36 = fneg float %16
  %37 = fmul float %23, %36
  %38 = tail call float @llvm.fmuladd.f32(float %11, float %26, float %37)
  %39 = fmul float %35, %35
  %40 = tail call float @llvm.fmuladd.f32(float %32, float %32, float %39)
  %41 = tail call float @llvm.fmuladd.f32(float %38, float %38, float %40)
  %42 = tail call float @sqrtf(float noundef %41) #17
  %43 = fcmp une float %42, 0.000000e+00
  br i1 %43, label %44, label %59

44:                                               ; preds = %4
  %45 = fmul float %16, %26
  %46 = tail call float @llvm.fmuladd.f32(float %11, float %23, float %45)
  %47 = tail call float @llvm.fmuladd.f32(float %21, float %29, float %46)
  %48 = fmul float %16, %16
  %49 = tail call float @llvm.fmuladd.f32(float %11, float %11, float %48)
  %50 = tail call float @llvm.fmuladd.f32(float %21, float %21, float %49)
  %51 = tail call float @sqrtf(float noundef %50) #17
  %52 = fmul float %26, %26
  %53 = tail call float @llvm.fmuladd.f32(float %23, float %23, float %52)
  %54 = tail call float @llvm.fmuladd.f32(float %29, float %29, float %53)
  %55 = tail call float @sqrtf(float noundef %54) #17
  %56 = fmul float %51, %55
  %57 = fsub float %56, %47
  %58 = fdiv float %57, %42
  br label %59

59:                                               ; preds = %4, %44
  %60 = phi float [ %58, %44 ], [ 0.000000e+00, %4 ]
  br label %61

61:                                               ; preds = %59, %168
  %62 = phi i8 [ %169, %168 ], [ 0, %59 ]
  %63 = phi i8 [ %170, %168 ], [ 0, %59 ]
  %64 = phi i32 [ %172, %168 ], [ 0, %59 ]
  %65 = phi float [ %173, %168 ], [ 0.000000e+00, %59 ]
  %66 = phi float [ %174, %168 ], [ %60, %59 ]
  %67 = phi ptr [ %175, %168 ], [ %5, %59 ]
  %68 = phi ptr [ %176, %168 ], [ %1, %59 ]
  %69 = icmp slt i32 %64, %2
  br i1 %69, label %70, label %177

70:                                               ; preds = %61
  %71 = load float, ptr %68, align 4, !tbaa !34
  %72 = load float, ptr %3, align 4, !tbaa !34
  %73 = fsub float %71, %72
  %74 = getelementptr inbounds float, ptr %68, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !34
  %76 = load float, ptr %14, align 4, !tbaa !34
  %77 = fsub float %75, %76
  %78 = getelementptr inbounds float, ptr %68, i64 2
  %79 = load float, ptr %78, align 4, !tbaa !34
  %80 = load float, ptr %19, align 4, !tbaa !34
  %81 = fsub float %79, %80
  %82 = fmul float %77, %77
  %83 = tail call float @llvm.fmuladd.f32(float %73, float %73, float %82)
  %84 = tail call float @llvm.fmuladd.f32(float %81, float %81, float %83)
  %85 = fcmp olt float %84, 0x3DDB7CDFC0000000
  br i1 %85, label %168, label %86

86:                                               ; preds = %70
  %87 = load float, ptr %67, align 4, !tbaa !34
  %88 = fsub float %87, %71
  %89 = getelementptr inbounds float, ptr %67, i64 1
  %90 = load float, ptr %89, align 4, !tbaa !34
  %91 = fsub float %90, %75
  %92 = getelementptr inbounds float, ptr %67, i64 2
  %93 = load float, ptr %92, align 4, !tbaa !34
  %94 = fsub float %93, %79
  %95 = fsub float %72, %71
  %96 = fsub float %76, %75
  %97 = fsub float %80, %79
  %98 = fmul float %96, %91
  %99 = tail call float @llvm.fmuladd.f32(float %88, float %95, float %98)
  %100 = tail call float @llvm.fmuladd.f32(float %94, float %97, float %99)
  %101 = fmul float %91, %91
  %102 = tail call float @llvm.fmuladd.f32(float %88, float %88, float %101)
  %103 = tail call float @llvm.fmuladd.f32(float %94, float %94, float %102)
  %104 = fdiv float %100, %103
  %105 = fcmp ugt float %104, 0.000000e+00
  br i1 %105, label %106, label %114

106:                                              ; preds = %86
  %107 = tail call float @llvm.fmuladd.f32(float %94, float %104, float %79)
  %108 = tail call float @llvm.fmuladd.f32(float %91, float %104, float %75)
  %109 = tail call float @llvm.fmuladd.f32(float %88, float %104, float %71)
  %110 = fcmp ult float %104, 1.000000e+00
  %111 = select i1 %110, float %107, float %93
  %112 = select i1 %110, float %108, float %90
  %113 = select i1 %110, float %109, float %87
  br label %114

114:                                              ; preds = %106, %86
  %115 = phi float [ %79, %86 ], [ %111, %106 ]
  %116 = phi float [ %75, %86 ], [ %112, %106 ]
  %117 = phi float [ %71, %86 ], [ %113, %106 ]
  %118 = fsub float %72, %117
  %119 = fsub float %76, %116
  %120 = fsub float %80, %115
  %121 = fmul float %119, %119
  %122 = tail call float @llvm.fmuladd.f32(float %118, float %118, float %121)
  %123 = tail call float @llvm.fmuladd.f32(float %120, float %120, float %122)
  %124 = fcmp olt float %123, 0x3DDB7CDFC0000000
  br i1 %124, label %168, label %125

125:                                              ; preds = %114
  %126 = fsub float %87, %72
  %127 = fsub float %90, %76
  %128 = fsub float %93, %80
  %129 = fneg float %81
  %130 = fmul float %127, %129
  %131 = tail call float @llvm.fmuladd.f32(float %77, float %128, float %130)
  %132 = fneg float %73
  %133 = fmul float %128, %132
  %134 = tail call float @llvm.fmuladd.f32(float %81, float %126, float %133)
  %135 = fneg float %77
  %136 = fmul float %126, %135
  %137 = tail call float @llvm.fmuladd.f32(float %73, float %127, float %136)
  %138 = fmul float %134, %134
  %139 = tail call float @llvm.fmuladd.f32(float %131, float %131, float %138)
  %140 = tail call float @llvm.fmuladd.f32(float %137, float %137, float %139)
  %141 = tail call float @sqrtf(float noundef %140) #17
  %142 = fcmp une float %141, 0.000000e+00
  br i1 %142, label %143, label %155

143:                                              ; preds = %125
  %144 = fmul float %77, %127
  %145 = tail call float @llvm.fmuladd.f32(float %73, float %126, float %144)
  %146 = tail call float @llvm.fmuladd.f32(float %81, float %128, float %145)
  %147 = tail call float @sqrtf(float noundef %84) #17
  %148 = fmul float %127, %127
  %149 = tail call float @llvm.fmuladd.f32(float %126, float %126, float %148)
  %150 = tail call float @llvm.fmuladd.f32(float %128, float %128, float %149)
  %151 = tail call float @sqrtf(float noundef %150) #17
  %152 = fmul float %147, %151
  %153 = fsub float %152, %146
  %154 = fdiv float %153, %141
  br label %155

155:                                              ; preds = %125, %143
  %156 = phi float [ %154, %143 ], [ 0.000000e+00, %125 ]
  %157 = fadd float %66, %156
  %158 = tail call float @sqrtf(float noundef %84) #17
  %159 = fdiv float %157, %158
  %160 = sext i32 %64 to i64
  %161 = getelementptr inbounds float, ptr %0, i64 %160
  store float %159, ptr %161, align 4, !tbaa !34
  %162 = fadd float %65, %159
  %163 = add nsw i32 %64, 1
  %164 = add nsw i32 %64, 2
  %165 = srem i32 %164, %2
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [3 x float], ptr %1, i64 %166
  br label %168

168:                                              ; preds = %114, %70, %155
  %169 = phi i8 [ %62, %155 ], [ %62, %70 ], [ 1, %114 ]
  %170 = phi i8 [ %63, %155 ], [ 1, %70 ], [ %63, %114 ]
  %171 = phi i1 [ true, %155 ], [ false, %70 ], [ false, %114 ]
  %172 = phi i32 [ %163, %155 ], [ %64, %70 ], [ %64, %114 ]
  %173 = phi float [ %162, %155 ], [ %65, %70 ], [ %65, %114 ]
  %174 = phi float [ %156, %155 ], [ %66, %70 ], [ %66, %114 ]
  %175 = phi ptr [ %167, %155 ], [ %67, %70 ], [ %67, %114 ]
  %176 = phi ptr [ %67, %155 ], [ %68, %70 ], [ %68, %114 ]
  br i1 %171, label %61, label %177

177:                                              ; preds = %168, %61
  %178 = phi i8 [ %169, %168 ], [ %62, %61 ]
  %179 = phi i8 [ %170, %168 ], [ %63, %61 ]
  %180 = phi i32 [ %172, %168 ], [ %64, %61 ]
  %181 = phi float [ %173, %168 ], [ %65, %61 ]
  %182 = phi ptr [ %175, %168 ], [ %67, %61 ]
  %183 = phi ptr [ %176, %168 ], [ %68, %61 ]
  %184 = icmp eq i8 %179, 0
  br i1 %184, label %190, label %185

185:                                              ; preds = %177
  %186 = icmp sgt i32 %2, 0
  br i1 %186, label %187, label %248

187:                                              ; preds = %185
  %188 = zext nneg i32 %2 to i64
  %189 = shl nuw nsw i64 %188, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %189, i1 false), !tbaa !34
  br label %248

190:                                              ; preds = %177
  %191 = icmp eq i8 %178, 0
  br i1 %191, label %235, label %192

192:                                              ; preds = %190
  %193 = load float, ptr %183, align 4, !tbaa !34
  %194 = load float, ptr %3, align 4, !tbaa !34
  %195 = fsub float %193, %194
  %196 = getelementptr inbounds float, ptr %183, i64 1
  %197 = load float, ptr %196, align 4, !tbaa !34
  %198 = load float, ptr %14, align 4, !tbaa !34
  %199 = fsub float %197, %198
  %200 = getelementptr inbounds float, ptr %183, i64 2
  %201 = load float, ptr %200, align 4, !tbaa !34
  %202 = load float, ptr %19, align 4, !tbaa !34
  %203 = fsub float %201, %202
  %204 = fmul float %199, %199
  %205 = tail call float @llvm.fmuladd.f32(float %195, float %195, float %204)
  %206 = tail call float @llvm.fmuladd.f32(float %203, float %203, float %205)
  %207 = tail call float @sqrtf(float noundef %206) #17
  %208 = load float, ptr %182, align 4, !tbaa !34
  %209 = load float, ptr %3, align 4, !tbaa !34
  %210 = fsub float %208, %209
  %211 = getelementptr inbounds float, ptr %182, i64 1
  %212 = load float, ptr %211, align 4, !tbaa !34
  %213 = load float, ptr %14, align 4, !tbaa !34
  %214 = fsub float %212, %213
  %215 = getelementptr inbounds float, ptr %182, i64 2
  %216 = load float, ptr %215, align 4, !tbaa !34
  %217 = load float, ptr %19, align 4, !tbaa !34
  %218 = fsub float %216, %217
  %219 = fmul float %214, %214
  %220 = tail call float @llvm.fmuladd.f32(float %210, float %210, float %219)
  %221 = tail call float @llvm.fmuladd.f32(float %218, float %218, float %220)
  %222 = tail call float @sqrtf(float noundef %221) #17
  %223 = fadd float %207, %222
  %224 = icmp sgt i32 %2, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %192
  %226 = zext nneg i32 %2 to i64
  %227 = shl nuw nsw i64 %226, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %227, i1 false), !tbaa !34
  br label %228

228:                                              ; preds = %225, %192
  %229 = fdiv float %222, %223
  %230 = sext i32 %180 to i64
  %231 = getelementptr inbounds float, ptr %0, i64 %230
  store float %229, ptr %231, align 4, !tbaa !34
  %232 = fdiv float %207, %223
  %233 = add nsw i32 %180, 1
  %234 = srem i32 %233, %2
  br label %248

235:                                              ; preds = %190
  %236 = fcmp une float %181, 0.000000e+00
  %237 = icmp sgt i32 %2, 0
  %238 = and i1 %236, %237
  br i1 %238, label %239, label %253

239:                                              ; preds = %235
  %240 = zext i32 %2 to i64
  br label %241

241:                                              ; preds = %239, %241
  %242 = phi i64 [ 0, %239 ], [ %246, %241 ]
  %243 = getelementptr inbounds float, ptr %0, i64 %242
  %244 = load float, ptr %243, align 4, !tbaa !34
  %245 = fdiv float %244, %181
  store float %245, ptr %243, align 4, !tbaa !34
  %246 = add nuw nsw i64 %242, 1
  %247 = icmp eq i64 %246, %240
  br i1 %247, label %253, label %241, !llvm.loop !63

248:                                              ; preds = %185, %187, %228
  %249 = phi i32 [ %234, %228 ], [ %180, %187 ], [ %180, %185 ]
  %250 = phi float [ %232, %228 ], [ 1.000000e+00, %187 ], [ 1.000000e+00, %185 ]
  %251 = sext i32 %249 to i64
  %252 = getelementptr inbounds float, ptr %0, i64 %251
  store float %250, ptr %252, align 4, !tbaa !34
  br label %253

253:                                              ; preds = %241, %248, %235
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @interp_weights_poly_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #4 {
  %5 = getelementptr inbounds [2 x float], ptr %1, i64 1
  %6 = sext i32 %2 to i64
  %7 = getelementptr [2 x float], ptr %1, i64 %6
  %8 = getelementptr [2 x float], ptr %7, i64 -1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = load float, ptr %3, align 4, !tbaa !34
  %11 = fsub float %9, %10
  %12 = getelementptr [2 x float], ptr %7, i64 -1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %3, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fsub float %13, %15
  %17 = load float, ptr %1, align 4, !tbaa !34
  %18 = fsub float %17, %10
  %19 = getelementptr inbounds float, ptr %1, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fsub float %20, %15
  %22 = fneg float %16
  %23 = fmul float %18, %22
  %24 = tail call float @llvm.fmuladd.f32(float %11, float %21, float %23)
  %25 = fcmp une float %24, 0.000000e+00
  br i1 %25, label %26, label %38

26:                                               ; preds = %4
  %27 = fmul float %16, %21
  %28 = tail call float @llvm.fmuladd.f32(float %11, float %18, float %27)
  %29 = fmul float %16, %16
  %30 = tail call float @llvm.fmuladd.f32(float %11, float %11, float %29)
  %31 = tail call float @sqrtf(float noundef %30) #17
  %32 = fmul float %21, %21
  %33 = tail call float @llvm.fmuladd.f32(float %18, float %18, float %32)
  %34 = tail call float @sqrtf(float noundef %33) #17
  %35 = fmul float %31, %34
  %36 = fsub float %35, %28
  %37 = fdiv float %36, %24
  br label %38

38:                                               ; preds = %4, %26
  %39 = phi float [ %37, %26 ], [ 0.000000e+00, %4 ]
  br label %40

40:                                               ; preds = %38, %124
  %41 = phi i8 [ %125, %124 ], [ 0, %38 ]
  %42 = phi i8 [ %126, %124 ], [ 0, %38 ]
  %43 = phi i32 [ %128, %124 ], [ 0, %38 ]
  %44 = phi float [ %129, %124 ], [ 0.000000e+00, %38 ]
  %45 = phi float [ %130, %124 ], [ %39, %38 ]
  %46 = phi ptr [ %131, %124 ], [ %5, %38 ]
  %47 = phi ptr [ %132, %124 ], [ %1, %38 ]
  %48 = icmp slt i32 %43, %2
  br i1 %48, label %49, label %133

49:                                               ; preds = %40
  %50 = load float, ptr %47, align 4, !tbaa !34
  %51 = load float, ptr %3, align 4, !tbaa !34
  %52 = fsub float %50, %51
  %53 = getelementptr inbounds float, ptr %47, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !34
  %55 = load float, ptr %14, align 4, !tbaa !34
  %56 = fsub float %54, %55
  %57 = fmul float %56, %56
  %58 = tail call float @llvm.fmuladd.f32(float %52, float %52, float %57)
  %59 = fcmp olt float %58, 0x3DDB7CDFC0000000
  br i1 %59, label %124, label %60

60:                                               ; preds = %49
  %61 = load float, ptr %46, align 4, !tbaa !34
  %62 = fsub float %61, %50
  %63 = getelementptr inbounds float, ptr %46, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !34
  %65 = fsub float %64, %54
  %66 = fmul float %65, %65
  %67 = tail call float @llvm.fmuladd.f32(float %62, float %62, float %66)
  %68 = fcmp oeq float %67, 0.000000e+00
  %69 = fsub float %51, %50
  %70 = fsub float %55, %54
  br i1 %68, label %71, label %74

71:                                               ; preds = %60
  %72 = fmul float %70, %70
  %73 = tail call float @llvm.fmuladd.f32(float %69, float %69, float %72)
  br label %91

74:                                               ; preds = %60
  %75 = fmul float %70, %65
  %76 = tail call float @llvm.fmuladd.f32(float %62, float %69, float %75)
  %77 = fdiv float %76, %67
  %78 = fcmp ugt float %77, 0.000000e+00
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = fcmp ult float %77, 1.000000e+00
  br i1 %80, label %81, label %84

81:                                               ; preds = %79
  %82 = tail call float @llvm.fmuladd.f32(float %77, float %62, float %50)
  %83 = tail call float @llvm.fmuladd.f32(float %77, float %65, float %54)
  br label %84

84:                                               ; preds = %81, %79, %74
  %85 = phi float [ %83, %81 ], [ %54, %74 ], [ %64, %79 ]
  %86 = phi float [ %82, %81 ], [ %50, %74 ], [ %61, %79 ]
  %87 = fsub float %86, %51
  %88 = fsub float %85, %55
  %89 = fmul float %88, %88
  %90 = tail call float @llvm.fmuladd.f32(float %87, float %87, float %89)
  br label %91

91:                                               ; preds = %71, %84
  %92 = phi float [ %73, %71 ], [ %90, %84 ]
  %93 = fcmp olt float %92, 0x3DDB7CDFC0000000
  br i1 %93, label %124, label %94

94:                                               ; preds = %91
  %95 = fsub float %61, %51
  %96 = fsub float %64, %55
  %97 = fneg float %56
  %98 = fmul float %95, %97
  %99 = tail call float @llvm.fmuladd.f32(float %52, float %96, float %98)
  %100 = fcmp une float %99, 0.000000e+00
  br i1 %100, label %101, label %111

101:                                              ; preds = %94
  %102 = fmul float %56, %96
  %103 = tail call float @llvm.fmuladd.f32(float %52, float %95, float %102)
  %104 = tail call float @sqrtf(float noundef %58) #17
  %105 = fmul float %96, %96
  %106 = tail call float @llvm.fmuladd.f32(float %95, float %95, float %105)
  %107 = tail call float @sqrtf(float noundef %106) #17
  %108 = fmul float %104, %107
  %109 = fsub float %108, %103
  %110 = fdiv float %109, %99
  br label %111

111:                                              ; preds = %94, %101
  %112 = phi float [ %110, %101 ], [ 0.000000e+00, %94 ]
  %113 = fadd float %45, %112
  %114 = tail call float @sqrtf(float noundef %58) #17
  %115 = fdiv float %113, %114
  %116 = sext i32 %43 to i64
  %117 = getelementptr inbounds float, ptr %0, i64 %116
  store float %115, ptr %117, align 4, !tbaa !34
  %118 = fadd float %44, %115
  %119 = add nsw i32 %43, 1
  %120 = add nsw i32 %43, 2
  %121 = srem i32 %120, %2
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [2 x float], ptr %1, i64 %122
  br label %124

124:                                              ; preds = %91, %49, %111
  %125 = phi i8 [ %41, %111 ], [ %41, %49 ], [ 1, %91 ]
  %126 = phi i8 [ %42, %111 ], [ 1, %49 ], [ %42, %91 ]
  %127 = phi i1 [ true, %111 ], [ false, %49 ], [ false, %91 ]
  %128 = phi i32 [ %119, %111 ], [ %43, %49 ], [ %43, %91 ]
  %129 = phi float [ %118, %111 ], [ %44, %49 ], [ %44, %91 ]
  %130 = phi float [ %112, %111 ], [ %45, %49 ], [ %45, %91 ]
  %131 = phi ptr [ %123, %111 ], [ %46, %49 ], [ %46, %91 ]
  %132 = phi ptr [ %46, %111 ], [ %47, %49 ], [ %47, %91 ]
  br i1 %127, label %40, label %133

133:                                              ; preds = %124, %40
  %134 = phi i8 [ %125, %124 ], [ %41, %40 ]
  %135 = phi i8 [ %126, %124 ], [ %42, %40 ]
  %136 = phi i32 [ %128, %124 ], [ %43, %40 ]
  %137 = phi float [ %129, %124 ], [ %44, %40 ]
  %138 = phi ptr [ %131, %124 ], [ %46, %40 ]
  %139 = phi ptr [ %132, %124 ], [ %47, %40 ]
  %140 = icmp eq i8 %135, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %133
  %142 = icmp sgt i32 %2, 0
  br i1 %142, label %143, label %194

143:                                              ; preds = %141
  %144 = zext nneg i32 %2 to i64
  %145 = shl nuw nsw i64 %144, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %145, i1 false), !tbaa !34
  br label %194

146:                                              ; preds = %133
  %147 = icmp eq i8 %134, 0
  br i1 %147, label %181, label %148

148:                                              ; preds = %146
  %149 = load float, ptr %3, align 4, !tbaa !34
  %150 = load float, ptr %139, align 4, !tbaa !34
  %151 = fsub float %149, %150
  %152 = load float, ptr %14, align 4, !tbaa !34
  %153 = getelementptr inbounds float, ptr %139, i64 1
  %154 = load float, ptr %153, align 4, !tbaa !34
  %155 = fsub float %152, %154
  %156 = fmul float %155, %155
  %157 = tail call float @llvm.fmuladd.f32(float %151, float %151, float %156)
  %158 = tail call float @sqrtf(float noundef %157) #17
  %159 = load float, ptr %3, align 4, !tbaa !34
  %160 = load float, ptr %138, align 4, !tbaa !34
  %161 = fsub float %159, %160
  %162 = load float, ptr %14, align 4, !tbaa !34
  %163 = getelementptr inbounds float, ptr %138, i64 1
  %164 = load float, ptr %163, align 4, !tbaa !34
  %165 = fsub float %162, %164
  %166 = fmul float %165, %165
  %167 = tail call float @llvm.fmuladd.f32(float %161, float %161, float %166)
  %168 = tail call float @sqrtf(float noundef %167) #17
  %169 = fadd float %158, %168
  %170 = icmp sgt i32 %2, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %148
  %172 = zext nneg i32 %2 to i64
  %173 = shl nuw nsw i64 %172, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %173, i1 false), !tbaa !34
  br label %174

174:                                              ; preds = %171, %148
  %175 = fdiv float %168, %169
  %176 = sext i32 %136 to i64
  %177 = getelementptr inbounds float, ptr %0, i64 %176
  store float %175, ptr %177, align 4, !tbaa !34
  %178 = fdiv float %158, %169
  %179 = add nsw i32 %136, 1
  %180 = srem i32 %179, %2
  br label %194

181:                                              ; preds = %146
  %182 = fcmp une float %137, 0.000000e+00
  %183 = icmp sgt i32 %2, 0
  %184 = and i1 %182, %183
  br i1 %184, label %185, label %199

185:                                              ; preds = %181
  %186 = zext i32 %2 to i64
  br label %187

187:                                              ; preds = %185, %187
  %188 = phi i64 [ 0, %185 ], [ %192, %187 ]
  %189 = getelementptr inbounds float, ptr %0, i64 %188
  %190 = load float, ptr %189, align 4, !tbaa !34
  %191 = fdiv float %190, %137
  store float %191, ptr %189, align 4, !tbaa !34
  %192 = add nuw nsw i64 %188, 1
  %193 = icmp eq i64 %192, %186
  br i1 %193, label %199, label %187, !llvm.loop !64

194:                                              ; preds = %141, %143, %174
  %195 = phi i32 [ %180, %174 ], [ %136, %143 ], [ %136, %141 ]
  %196 = phi float [ %178, %174 ], [ 1.000000e+00, %143 ], [ 1.000000e+00, %141 ]
  %197 = sext i32 %195 to i64
  %198 = getelementptr inbounds float, ptr %0, i64 %197
  store float %196, ptr %198, align 4, !tbaa !34
  br label %199

199:                                              ; preds = %187, %194, %181
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @interp_cubic_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, float noundef %6) local_unnamed_addr #0 {
  %8 = fmul float %6, %6
  %9 = fmul float %8, %6
  %10 = load float, ptr %3, align 4, !tbaa !34
  %11 = load float, ptr %5, align 4, !tbaa !34
  %12 = fadd float %10, %11
  %13 = load float, ptr %2, align 4, !tbaa !34
  %14 = load float, ptr %4, align 4, !tbaa !34
  %15 = fsub float %13, %14
  %16 = tail call float @llvm.fmuladd.f32(float %15, float 2.000000e+00, float %12)
  %17 = getelementptr inbounds float, ptr %3, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %5, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fadd float %18, %20
  %22 = getelementptr inbounds float, ptr %2, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds float, ptr %4, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = fsub float %23, %25
  %27 = tail call float @llvm.fmuladd.f32(float %26, float 2.000000e+00, float %21)
  %28 = getelementptr inbounds float, ptr %3, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = getelementptr inbounds float, ptr %5, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = fadd float %29, %31
  %33 = getelementptr inbounds float, ptr %2, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = getelementptr inbounds float, ptr %4, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = fsub float %34, %36
  %38 = tail call float @llvm.fmuladd.f32(float %37, float 2.000000e+00, float %32)
  %39 = fneg float %11
  %40 = tail call float @llvm.fmuladd.f32(float %10, float -2.000000e+00, float %39)
  %41 = tail call float @llvm.fmuladd.f32(float %15, float -3.000000e+00, float %40)
  %42 = fneg float %20
  %43 = tail call float @llvm.fmuladd.f32(float %18, float -2.000000e+00, float %42)
  %44 = tail call float @llvm.fmuladd.f32(float %26, float -3.000000e+00, float %43)
  %45 = fneg float %31
  %46 = tail call float @llvm.fmuladd.f32(float %29, float -2.000000e+00, float %45)
  %47 = tail call float @llvm.fmuladd.f32(float %37, float -3.000000e+00, float %46)
  %48 = fmul float %8, %41
  %49 = tail call float @llvm.fmuladd.f32(float %16, float %9, float %48)
  %50 = tail call float @llvm.fmuladd.f32(float %10, float %6, float %49)
  %51 = fadd float %13, %50
  store float %51, ptr %0, align 4, !tbaa !34
  %52 = fmul float %8, %44
  %53 = tail call float @llvm.fmuladd.f32(float %27, float %9, float %52)
  %54 = load float, ptr %17, align 4, !tbaa !34
  %55 = tail call float @llvm.fmuladd.f32(float %54, float %6, float %53)
  %56 = load float, ptr %22, align 4, !tbaa !34
  %57 = fadd float %55, %56
  %58 = getelementptr inbounds float, ptr %0, i64 1
  store float %57, ptr %58, align 4, !tbaa !34
  %59 = fmul float %8, %47
  %60 = tail call float @llvm.fmuladd.f32(float %38, float %9, float %59)
  %61 = load float, ptr %28, align 4, !tbaa !34
  %62 = tail call float @llvm.fmuladd.f32(float %61, float %6, float %60)
  %63 = load float, ptr %33, align 4, !tbaa !34
  %64 = fadd float %62, %63
  %65 = getelementptr inbounds float, ptr %0, i64 2
  store float %64, ptr %65, align 4, !tbaa !34
  %66 = fmul float %16, 3.000000e+00
  %67 = fmul float %41, 2.000000e+00
  %68 = fmul float %67, %6
  %69 = tail call float @llvm.fmuladd.f32(float %66, float %8, float %68)
  %70 = load float, ptr %3, align 4, !tbaa !34
  %71 = fadd float %69, %70
  store float %71, ptr %1, align 4, !tbaa !34
  %72 = fmul float %27, 3.000000e+00
  %73 = fmul float %44, 2.000000e+00
  %74 = fmul float %73, %6
  %75 = tail call float @llvm.fmuladd.f32(float %72, float %8, float %74)
  %76 = load float, ptr %17, align 4, !tbaa !34
  %77 = fadd float %75, %76
  %78 = getelementptr inbounds float, ptr %1, i64 1
  store float %77, ptr %78, align 4, !tbaa !34
  %79 = fmul float %38, 3.000000e+00
  %80 = fmul float %47, 2.000000e+00
  %81 = fmul float %80, %6
  %82 = tail call float @llvm.fmuladd.f32(float %79, float %8, float %81)
  %83 = load float, ptr %28, align 4, !tbaa !34
  %84 = fadd float %82, %83
  %85 = getelementptr inbounds float, ptr %1, i64 2
  store float %84, ptr %85, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @resolve_tri_uv_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = load float, ptr %2, align 4, !tbaa !34
  %7 = load float, ptr %4, align 4, !tbaa !34
  %8 = fsub float %6, %7
  %9 = fpext float %8 to double
  %10 = load float, ptr %3, align 4, !tbaa !34
  %11 = fsub float %10, %7
  %12 = fpext float %11 to double
  %13 = getelementptr inbounds float, ptr %2, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %4, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fsub float %14, %16
  %18 = fpext float %17 to double
  %19 = getelementptr inbounds float, ptr %3, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fsub float %20, %16
  %22 = fpext float %21 to double
  %23 = fneg double %18
  %24 = fmul double %12, %23
  %25 = tail call double @llvm.fmuladd.f64(double %9, double %22, double %24)
  %26 = fcmp ule double %25, 0xBCB0000000000000
  %27 = fcmp uge double %25, 0x3CB0000000000000
  %28 = or i1 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %5
  %30 = load float, ptr %1, align 4, !tbaa !34
  %31 = fsub float %30, %7
  %32 = fpext float %31 to double
  %33 = getelementptr inbounds float, ptr %1, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = fsub float %34, %16
  %36 = fpext float %35 to double
  %37 = fneg double %12
  %38 = fmul double %37, %36
  %39 = tail call double @llvm.fmuladd.f64(double %22, double %32, double %38)
  %40 = fdiv double %39, %25
  %41 = fptrunc double %40 to float
  store float %41, ptr %0, align 4, !tbaa !34
  %42 = fmul double %9, %36
  %43 = tail call double @llvm.fmuladd.f64(double %23, double %32, double %42)
  %44 = fdiv double %43, %25
  %45 = fptrunc double %44 to float
  br label %47

46:                                               ; preds = %5
  store float 0.000000e+00, ptr %0, align 4, !tbaa !34
  br label %47

47:                                               ; preds = %46, %29
  %48 = phi float [ 0.000000e+00, %46 ], [ %45, %29 ]
  %49 = getelementptr inbounds float, ptr %0, i64 1
  store float %48, ptr %49, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @resolve_tri_uv_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = load float, ptr %3, align 4, !tbaa !34
  %7 = load float, ptr %2, align 4, !tbaa !34
  %8 = fsub float %6, %7
  %9 = getelementptr inbounds float, ptr %3, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %2, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fsub float %10, %12
  %14 = getelementptr inbounds float, ptr %3, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fsub float %15, %17
  %19 = load float, ptr %4, align 4, !tbaa !34
  %20 = fsub float %19, %7
  %21 = getelementptr inbounds float, ptr %4, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = fsub float %22, %12
  %24 = getelementptr inbounds float, ptr %4, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = fsub float %25, %17
  %27 = fmul float %13, %13
  %28 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %27)
  %29 = tail call float @llvm.fmuladd.f32(float %18, float %18, float %28)
  %30 = fpext float %29 to double
  %31 = fmul float %13, %23
  %32 = tail call float @llvm.fmuladd.f32(float %8, float %20, float %31)
  %33 = tail call float @llvm.fmuladd.f32(float %18, float %26, float %32)
  %34 = fpext float %33 to double
  %35 = fmul float %23, %23
  %36 = tail call float @llvm.fmuladd.f32(float %20, float %20, float %35)
  %37 = tail call float @llvm.fmuladd.f32(float %26, float %26, float %36)
  %38 = fpext float %37 to double
  %39 = fneg double %34
  %40 = fmul double %39, %34
  %41 = tail call double @llvm.fmuladd.f64(double %30, double %38, double %40)
  %42 = fcmp ule double %41, 0xBCB0000000000000
  %43 = fcmp uge double %41, 0x3CB0000000000000
  %44 = or i1 %42, %43
  br i1 %44, label %45, label %73

45:                                               ; preds = %5
  %46 = getelementptr inbounds float, ptr %1, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !34
  %48 = fsub float %47, %17
  %49 = load float, ptr %1, align 4, !tbaa !34
  %50 = fsub float %49, %7
  %51 = getelementptr inbounds float, ptr %1, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !34
  %53 = fsub float %52, %12
  %54 = fmul float %23, %53
  %55 = tail call float @llvm.fmuladd.f32(float %50, float %20, float %54)
  %56 = tail call float @llvm.fmuladd.f32(float %48, float %26, float %55)
  %57 = fmul float %13, %53
  %58 = tail call float @llvm.fmuladd.f32(float %50, float %8, float %57)
  %59 = tail call float @llvm.fmuladd.f32(float %48, float %18, float %58)
  %60 = fpext float %56 to double
  %61 = fpext float %59 to double
  %62 = fmul double %39, %61
  %63 = tail call double @llvm.fmuladd.f64(double %30, double %60, double %62)
  %64 = fdiv double %63, %41
  %65 = fptrunc double %64 to float
  %66 = fmul double %39, %60
  %67 = tail call double @llvm.fmuladd.f64(double %38, double %61, double %66)
  %68 = fdiv double %67, %41
  %69 = fptrunc double %68 to float
  %70 = getelementptr inbounds float, ptr %0, i64 1
  store float %69, ptr %70, align 4, !tbaa !34
  %71 = fsub float 1.000000e+00, %69
  %72 = fsub float %71, %65
  store float %72, ptr %0, align 4, !tbaa !34
  br label %75

73:                                               ; preds = %5
  store float 0.000000e+00, ptr %0, align 4, !tbaa !34
  %74 = getelementptr inbounds float, ptr %0, i64 1
  store float 0.000000e+00, ptr %74, align 4, !tbaa !34
  br label %75

75:                                               ; preds = %73, %45
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @resolve_quad_uv_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) local_unnamed_addr #6 {
  tail call void @resolve_quad_uv_v2_deriv(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @resolve_quad_uv_v2_deriv(ptr nocapture noundef %0, ptr noundef writeonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6) local_unnamed_addr #6 {
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca [2 x float], align 4
  %11 = alloca [2 x float], align 4
  %12 = load float, ptr %3, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %4, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %3, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = load float, ptr %4, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %5, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = load float, ptr %5, align 4, !tbaa !34
  %21 = getelementptr inbounds float, ptr %6, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = load float, ptr %6, align 4, !tbaa !34
  %24 = load float, ptr %2, align 4, !tbaa !34
  %25 = fsub float %12, %24
  %26 = fsub float %16, %22
  %27 = getelementptr inbounds float, ptr %2, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = fsub float %16, %28
  %30 = fsub float %12, %23
  %31 = fneg float %29
  %32 = fmul float %30, %31
  %33 = tail call float @llvm.fmuladd.f32(float %25, float %26, float %32)
  %34 = fpext float %33 to double
  %35 = fsub float %14, %19
  %36 = fsub float %17, %20
  %37 = fmul float %36, %31
  %38 = tail call float @llvm.fmuladd.f32(float %25, float %35, float %37)
  %39 = fsub float %17, %24
  %40 = fsub float %14, %28
  %41 = fneg float %40
  %42 = fmul float %30, %41
  %43 = tail call float @llvm.fmuladd.f32(float %39, float %26, float %42)
  %44 = fadd float %38, %43
  %45 = fpext float %44 to double
  %46 = fmul double %45, 5.000000e-01
  %47 = fmul float %36, %41
  %48 = tail call float @llvm.fmuladd.f32(float %39, float %35, float %47)
  %49 = fpext float %48 to double
  %50 = tail call double @llvm.fmuladd.f64(double %46, double -2.000000e+00, double %34)
  %51 = fadd double %50, %49
  store float 0.000000e+00, ptr %0, align 4, !tbaa !34
  %52 = getelementptr inbounds float, ptr %0, i64 1
  store float 0.000000e+00, ptr %52, align 4, !tbaa !34
  %53 = fcmp ogt double %51, 0xBCB0000000000000
  %54 = fcmp olt double %51, 0x3CB0000000000000
  %55 = and i1 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %7
  %57 = fsub double %34, %49
  %58 = fcmp ule double %57, 0xBCB0000000000000
  %59 = fcmp uge double %57, 0x3CB0000000000000
  %60 = or i1 %58, %59
  br i1 %60, label %61, label %93

61:                                               ; preds = %56
  %62 = fdiv double %34, %57
  br label %90

63:                                               ; preds = %7
  %64 = fneg float %16
  %65 = fmul float %17, %64
  %66 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %65)
  %67 = fneg float %14
  %68 = fmul float %20, %67
  %69 = tail call float @llvm.fmuladd.f32(float %17, float %19, float %68)
  %70 = fadd float %66, %69
  %71 = fneg float %19
  %72 = fmul float %23, %71
  %73 = tail call float @llvm.fmuladd.f32(float %20, float %22, float %72)
  %74 = fadd float %70, %73
  %75 = fneg float %22
  %76 = fmul float %12, %75
  %77 = tail call float @llvm.fmuladd.f32(float %23, float %16, float %76)
  %78 = fadd float %77, %74
  %79 = fneg double %34
  %80 = fmul double %79, %49
  %81 = tail call double @llvm.fmuladd.f64(double %46, double %46, double %80)
  %82 = fcmp olt double %81, 0.000000e+00
  %83 = select i1 %82, double 0.000000e+00, double %81
  %84 = tail call double @sqrt(double noundef %83) #17
  %85 = fcmp ogt float %78, 0.000000e+00
  %86 = select i1 %85, double -1.000000e+00, double 1.000000e+00
  %87 = fsub double %34, %46
  %88 = tail call double @llvm.fmuladd.f64(double %86, double %84, double %87)
  %89 = fdiv double %88, %51
  br label %90

90:                                               ; preds = %63, %61
  %91 = phi double [ %62, %61 ], [ %89, %63 ]
  %92 = fptrunc double %91 to float
  store float %92, ptr %0, align 4, !tbaa !34
  br label %93

93:                                               ; preds = %90, %56
  %94 = load float, ptr %0, align 4, !tbaa !34
  %95 = fsub float 1.000000e+00, %94
  %96 = load float, ptr %3, align 4, !tbaa !34
  %97 = load float, ptr %6, align 4, !tbaa !34
  %98 = fsub float %96, %97
  %99 = load float, ptr %4, align 4, !tbaa !34
  %100 = load float, ptr %5, align 4, !tbaa !34
  %101 = fsub float %99, %100
  %102 = fmul float %94, %101
  %103 = tail call float @llvm.fmuladd.f32(float %95, float %98, float %102)
  %104 = fpext float %103 to double
  %105 = load float, ptr %15, align 4, !tbaa !34
  %106 = load float, ptr %21, align 4, !tbaa !34
  %107 = fsub float %105, %106
  %108 = load float, ptr %13, align 4, !tbaa !34
  %109 = load float, ptr %18, align 4, !tbaa !34
  %110 = fsub float %108, %109
  %111 = fmul float %94, %110
  %112 = tail call float @llvm.fmuladd.f32(float %95, float %107, float %111)
  %113 = fpext float %112 to double
  %114 = tail call double @llvm.fabs.f64(double %104)
  %115 = tail call double @llvm.fabs.f64(double %113)
  %116 = fcmp olt double %114, %115
  %117 = select i1 %116, double %113, double %104
  %118 = fcmp ule double %117, 0xBCB0000000000000
  %119 = fcmp uge double %117, 0x3CB0000000000000
  %120 = or i1 %118, %119
  br i1 %120, label %121, label %136

121:                                              ; preds = %93
  %122 = zext i1 %116 to i64
  %123 = getelementptr inbounds float, ptr %3, i64 %122
  %124 = load float, ptr %123, align 4, !tbaa !34
  %125 = getelementptr inbounds float, ptr %2, i64 %122
  %126 = load float, ptr %125, align 4, !tbaa !34
  %127 = fsub float %124, %126
  %128 = getelementptr inbounds float, ptr %4, i64 %122
  %129 = load float, ptr %128, align 4, !tbaa !34
  %130 = fsub float %129, %126
  %131 = fmul float %94, %130
  %132 = tail call float @llvm.fmuladd.f32(float %95, float %127, float %131)
  %133 = fpext float %132 to double
  %134 = fdiv double %133, %117
  %135 = fptrunc double %134 to float
  store float %135, ptr %52, align 4, !tbaa !34
  br label %136

136:                                              ; preds = %121, %93
  %137 = icmp eq ptr %1, null
  br i1 %137, label %199, label %138

138:                                              ; preds = %136
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %139 = load float, ptr %4, align 4, !tbaa !34
  %140 = load float, ptr %3, align 4, !tbaa !34
  %141 = fsub float %139, %140
  store float %141, ptr %8, align 4, !tbaa !34
  %142 = load float, ptr %13, align 4, !tbaa !34
  %143 = load float, ptr %15, align 4, !tbaa !34
  %144 = fsub float %142, %143
  %145 = getelementptr inbounds float, ptr %8, i64 1
  store float %144, ptr %145, align 4, !tbaa !34
  %146 = load float, ptr %5, align 4, !tbaa !34
  %147 = load float, ptr %6, align 4, !tbaa !34
  %148 = fsub float %146, %147
  store float %148, ptr %9, align 4, !tbaa !34
  %149 = load float, ptr %18, align 4, !tbaa !34
  %150 = load float, ptr %21, align 4, !tbaa !34
  %151 = fsub float %149, %150
  %152 = getelementptr inbounds float, ptr %9, i64 1
  store float %151, ptr %152, align 4, !tbaa !34
  %153 = load float, ptr %52, align 4, !tbaa !34
  call void @interp_v2_v2v2(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %9, float noundef %153) #17
  %154 = load float, ptr %6, align 4, !tbaa !34
  %155 = load float, ptr %3, align 4, !tbaa !34
  %156 = fsub float %154, %155
  store float %156, ptr %8, align 4, !tbaa !34
  %157 = load float, ptr %21, align 4, !tbaa !34
  %158 = load float, ptr %15, align 4, !tbaa !34
  %159 = fsub float %157, %158
  store float %159, ptr %145, align 4, !tbaa !34
  %160 = load float, ptr %5, align 4, !tbaa !34
  %161 = load float, ptr %4, align 4, !tbaa !34
  %162 = fsub float %160, %161
  store float %162, ptr %9, align 4, !tbaa !34
  %163 = load float, ptr %18, align 4, !tbaa !34
  %164 = load float, ptr %13, align 4, !tbaa !34
  %165 = fsub float %163, %164
  store float %165, ptr %152, align 4, !tbaa !34
  %166 = load float, ptr %0, align 4, !tbaa !34
  call void @interp_v2_v2v2(ptr noundef nonnull %11, ptr noundef nonnull %8, ptr noundef nonnull %9, float noundef %166) #17
  %167 = load float, ptr %11, align 4, !tbaa !34
  %168 = getelementptr inbounds [2 x float], ptr %10, i64 0, i64 1
  %169 = load float, ptr %168, align 4, !tbaa !34
  %170 = getelementptr inbounds [2 x float], ptr %11, i64 0, i64 1
  %171 = load float, ptr %170, align 4, !tbaa !34
  %172 = load float, ptr %10, align 4, !tbaa !34
  %173 = fneg float %171
  %174 = fmul float %172, %173
  %175 = call float @llvm.fmuladd.f32(float %167, float %169, float %174)
  %176 = fcmp ogt float %175, 0xBCB0000000000000
  %177 = fcmp olt float %175, 0x3CB0000000000000
  %178 = and i1 %176, %177
  br i1 %178, label %198, label %179

179:                                              ; preds = %138
  %180 = getelementptr inbounds [2 x float], ptr %1, i64 1, i64 1
  %181 = getelementptr inbounds [2 x float], ptr %1, i64 1
  %182 = getelementptr inbounds float, ptr %1, i64 1
  %183 = fpext float %175 to double
  %184 = fdiv double 1.000000e+00, %183
  %185 = fpext float %173 to double
  %186 = fmul double %184, %185
  %187 = fptrunc double %186 to float
  store float %187, ptr %1, align 4, !tbaa !34
  %188 = fpext float %167 to double
  %189 = fmul double %184, %188
  %190 = fptrunc double %189 to float
  store float %190, ptr %182, align 4, !tbaa !34
  %191 = fpext float %169 to double
  %192 = fmul double %184, %191
  %193 = fptrunc double %192 to float
  store float %193, ptr %181, align 4, !tbaa !34
  %194 = fneg float %172
  %195 = fpext float %194 to double
  %196 = fmul double %184, %195
  %197 = fptrunc double %196 to float
  store float %197, ptr %180, align 4, !tbaa !34
  br label %198

198:                                              ; preds = %138, %179
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  br label %199

199:                                              ; preds = %198, %136
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @interp_bilinear_quad_v3(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load float, ptr %0, align 4, !tbaa !34
  store float %5, ptr %3, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %3, i64 1
  store float %7, ptr %8, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %3, i64 2
  store float %10, ptr %11, align 4, !tbaa !34
  %12 = fsub float 1.000000e+00, %1
  %13 = fsub float 1.000000e+00, %2
  %14 = fmul float %12, %13
  %15 = fmul float %14, %5
  store float %15, ptr %3, align 4, !tbaa !34
  %16 = fmul float %14, %7
  store float %16, ptr %8, align 4, !tbaa !34
  %17 = fmul float %14, %10
  store float %17, ptr %11, align 4, !tbaa !34
  %18 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = fmul float %13, %1
  %25 = fmul float %24, %19
  %26 = fmul float %24, %21
  %27 = fmul float %24, %23
  %28 = fadd float %15, %25
  store float %28, ptr %3, align 4, !tbaa !34
  %29 = fadd float %16, %26
  store float %29, ptr %8, align 4, !tbaa !34
  %30 = fadd float %17, %27
  store float %30, ptr %11, align 4, !tbaa !34
  %31 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = fmul float %1, %2
  %38 = fmul float %37, %32
  %39 = fmul float %37, %34
  %40 = fmul float %37, %36
  %41 = fadd float %28, %38
  store float %41, ptr %3, align 4, !tbaa !34
  %42 = fadd float %29, %39
  store float %42, ptr %8, align 4, !tbaa !34
  %43 = fadd float %30, %40
  store float %43, ptr %11, align 4, !tbaa !34
  %44 = getelementptr inbounds [3 x float], ptr %0, i64 3
  %45 = load float, ptr %44, align 4, !tbaa !34
  %46 = getelementptr inbounds [3 x float], ptr %0, i64 3, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !34
  %48 = getelementptr inbounds [3 x float], ptr %0, i64 3, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !34
  %50 = fmul float %12, %2
  %51 = fmul float %50, %45
  %52 = fmul float %50, %47
  %53 = fmul float %50, %49
  %54 = fadd float %41, %51
  store float %54, ptr %3, align 4, !tbaa !34
  %55 = fadd float %42, %52
  store float %55, ptr %8, align 4, !tbaa !34
  %56 = fadd float %43, %53
  store float %56, ptr %11, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @interp_barycentric_tri_v3(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load float, ptr %0, align 4, !tbaa !34
  store float %5, ptr %3, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %3, i64 1
  store float %7, ptr %8, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %3, i64 2
  store float %10, ptr %11, align 4, !tbaa !34
  %12 = fmul float %5, %1
  store float %12, ptr %3, align 4, !tbaa !34
  %13 = fmul float %7, %1
  store float %13, ptr %8, align 4, !tbaa !34
  %14 = fmul float %10, %1
  store float %14, ptr %11, align 4, !tbaa !34
  %15 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fmul float %16, %2
  %22 = fmul float %18, %2
  %23 = fmul float %20, %2
  %24 = fadd float %12, %21
  store float %24, ptr %3, align 4, !tbaa !34
  %25 = fadd float %13, %22
  store float %25, ptr %8, align 4, !tbaa !34
  %26 = fadd float %14, %23
  store float %26, ptr %11, align 4, !tbaa !34
  %27 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = fsub float 1.000000e+00, %1
  %34 = fsub float %33, %2
  %35 = fmul float %34, %28
  %36 = fmul float %34, %30
  %37 = fmul float %34, %32
  %38 = fadd float %24, %35
  store float %38, ptr %3, align 4, !tbaa !34
  %39 = fadd float %25, %36
  store float %39, ptr %8, align 4, !tbaa !34
  %40 = fadd float %26, %37
  store float %40, ptr %11, align 4, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @orthographic_m4(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #6 {
  %8 = fsub float %2, %1
  %9 = fsub float %4, %3
  %10 = fsub float %6, %5
  %11 = fcmp oeq float %8, 0.000000e+00
  %12 = fcmp oeq float %9, 0.000000e+00
  %13 = or i1 %11, %12
  %14 = fcmp oeq float %10, 0.000000e+00
  %15 = or i1 %13, %14
  br i1 %15, label %34, label %16

16:                                               ; preds = %7
  tail call void @unit_m4(ptr noundef %0) #17
  %17 = fdiv float 2.000000e+00, %8
  store float %17, ptr %0, align 4, !tbaa !34
  %18 = fadd float %1, %2
  %19 = fneg float %18
  %20 = fdiv float %19, %8
  %21 = getelementptr inbounds [4 x float], ptr %0, i64 3
  store float %20, ptr %21, align 4, !tbaa !34
  %22 = fdiv float 2.000000e+00, %9
  %23 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  store float %22, ptr %23, align 4, !tbaa !34
  %24 = fadd float %3, %4
  %25 = fneg float %24
  %26 = fdiv float %25, %9
  %27 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 1
  store float %26, ptr %27, align 4, !tbaa !34
  %28 = fdiv float -2.000000e+00, %10
  %29 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  store float %28, ptr %29, align 4, !tbaa !34
  %30 = fadd float %5, %6
  %31 = fneg float %30
  %32 = fdiv float %31, %10
  %33 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 2
  store float %32, ptr %33, align 4, !tbaa !34
  br label %34

34:                                               ; preds = %7, %16
  ret void
}

declare void @unit_m4(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @perspective_m4(ptr nocapture noundef writeonly %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #13 {
  %8 = fsub float %2, %1
  %9 = fsub float %4, %3
  %10 = fsub float %6, %5
  %11 = fcmp oeq float %8, 0.000000e+00
  %12 = fcmp oeq float %9, 0.000000e+00
  %13 = or i1 %11, %12
  %14 = fcmp oeq float %10, 0.000000e+00
  %15 = or i1 %13, %14
  br i1 %15, label %42, label %16

16:                                               ; preds = %7
  %17 = fmul float %5, 2.000000e+00
  %18 = fdiv float %17, %8
  store float %18, ptr %0, align 4, !tbaa !34
  %19 = fdiv float %17, %9
  %20 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  store float %19, ptr %20, align 4, !tbaa !34
  %21 = fadd float %1, %2
  %22 = fdiv float %21, %8
  %23 = getelementptr inbounds [4 x float], ptr %0, i64 2
  store float %22, ptr %23, align 4, !tbaa !34
  %24 = fadd float %3, %4
  %25 = fdiv float %24, %9
  %26 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  store float %25, ptr %26, align 4, !tbaa !34
  %27 = fadd float %5, %6
  %28 = fneg float %27
  %29 = fdiv float %28, %10
  %30 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  store float %29, ptr %30, align 4, !tbaa !34
  %31 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  store float -1.000000e+00, ptr %31, align 4, !tbaa !34
  %32 = fmul float %5, -2.000000e+00
  %33 = fmul float %32, %6
  %34 = fdiv float %33, %10
  %35 = getelementptr inbounds [4 x float], ptr %0, i64 3
  %36 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 2
  store float %34, ptr %36, align 4, !tbaa !34
  %37 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 3
  store float 0.000000e+00, ptr %37, align 4, !tbaa !34
  %38 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 1
  store float 0.000000e+00, ptr %38, align 4, !tbaa !34
  store float 0.000000e+00, ptr %35, align 4, !tbaa !34
  %39 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 3
  store float 0.000000e+00, ptr %39, align 4, !tbaa !34
  %40 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  store float 0.000000e+00, ptr %40, align 4, !tbaa !34
  %41 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  br label %42

42:                                               ; preds = %7, %16
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @window_translate_m4(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fcmp oeq float %6, -1.000000e+00
  br i1 %7, label %8, label %41

8:                                                ; preds = %4
  %9 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %10 = load float, ptr %1, align 4, !tbaa !34
  %11 = getelementptr inbounds [4 x float], ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds [4 x float], ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fmul float %12, %12
  %22 = tail call float @llvm.fmuladd.f32(float %10, float %10, float %21)
  %23 = tail call float @llvm.fmuladd.f32(float %14, float %14, float %22)
  %24 = tail call float @sqrtf(float noundef %23) #17
  %25 = fdiv float 1.000000e+00, %24
  %26 = fmul float %18, %18
  %27 = tail call float @llvm.fmuladd.f32(float %16, float %16, float %26)
  %28 = tail call float @llvm.fmuladd.f32(float %20, float %20, float %27)
  %29 = tail call float @sqrtf(float noundef %28) #17
  %30 = fdiv float 1.000000e+00, %29
  %31 = load float, ptr %0, align 4, !tbaa !34
  %32 = fmul float %25, %31
  %33 = load float, ptr %9, align 4, !tbaa !34
  %34 = tail call float @llvm.fmuladd.f32(float %32, float %2, float %33)
  store float %34, ptr %9, align 4, !tbaa !34
  %35 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = fmul float %30, %36
  %38 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !34
  %40 = tail call float @llvm.fmuladd.f32(float %37, float %3, float %39)
  store float %40, ptr %38, align 4, !tbaa !34
  br label %48

41:                                               ; preds = %4
  %42 = getelementptr inbounds [4 x float], ptr %0, i64 3
  %43 = load float, ptr %42, align 4, !tbaa !34
  %44 = fadd float %43, %2
  store float %44, ptr %42, align 4, !tbaa !34
  %45 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !34
  %47 = fadd float %46, %3
  store float %47, ptr %45, align 4, !tbaa !34
  br label %48

48:                                               ; preds = %41, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @polarview_m4(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #6 {
  tail call void @unit_m4(ptr noundef %0) #17
  %6 = fneg float %1
  tail call void @translate_m4(ptr noundef %0, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %6) #17
  %7 = fneg float %4
  tail call void @rotate_m4(ptr noundef %0, i8 noundef zeroext 90, float noundef %7) #17
  %8 = fneg float %3
  tail call void @rotate_m4(ptr noundef %0, i8 noundef zeroext 88, float noundef %8) #17
  %9 = fneg float %2
  tail call void @rotate_m4(ptr noundef %0, i8 noundef zeroext 90, float noundef %9) #17
  ret void
}

declare void @translate_m4(ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #7

declare void @rotate_m4(ptr noundef, i8 noundef zeroext, float noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @lookat_m4(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7) local_unnamed_addr #6 {
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #17
  tail call void @unit_m4(ptr noundef %0) #17
  call void @unit_m4(ptr noundef nonnull %11) #17
  %12 = fneg float %7
  call void @rotate_m4(ptr noundef %0, i8 noundef zeroext 90, float noundef %12) #17
  %13 = fsub float %4, %1
  %14 = fsub float %5, %2
  %15 = fsub float %6, %3
  %16 = fmul float %15, %15
  %17 = call float @llvm.fmuladd.f32(float %13, float %13, float %16)
  %18 = call float @llvm.fmuladd.f32(float %14, float %14, float %17)
  %19 = call float @sqrtf(float noundef %18) #17
  %20 = call float @sqrtf(float noundef %17) #17
  %21 = fcmp une float %19, 0.000000e+00
  %22 = fneg float %14
  %23 = fdiv float %22, %19
  %24 = fdiv float %20, %19
  %25 = select i1 %21, float %24, float 1.000000e+00
  %26 = select i1 %21, float %23, float 0.000000e+00
  %27 = getelementptr inbounds [4 x [4 x float]], ptr %11, i64 0, i64 1, i64 1
  store float %25, ptr %27, align 4, !tbaa !34
  %28 = getelementptr inbounds [4 x [4 x float]], ptr %11, i64 0, i64 1, i64 2
  store float %26, ptr %28, align 8, !tbaa !34
  %29 = fneg float %26
  %30 = getelementptr inbounds [4 x [4 x float]], ptr %11, i64 0, i64 2, i64 1
  store float %29, ptr %30, align 4, !tbaa !34
  %31 = getelementptr inbounds [4 x [4 x float]], ptr %11, i64 0, i64 2, i64 2
  store float %25, ptr %31, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #17
  br label %32

32:                                               ; preds = %59, %8
  %33 = phi i64 [ 0, %8 ], [ %60, %59 ]
  %34 = getelementptr inbounds [4 x float], ptr %11, i64 %33
  %35 = load float, ptr %34, align 16, !tbaa !34
  %36 = getelementptr inbounds [4 x float], ptr %11, i64 %33, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !34
  %38 = getelementptr inbounds [4 x float], ptr %11, i64 %33, i64 2
  %39 = load float, ptr %38, align 8, !tbaa !34
  %40 = getelementptr inbounds [4 x float], ptr %11, i64 %33, i64 3
  %41 = load float, ptr %40, align 4, !tbaa !34
  br label %42

42:                                               ; preds = %42, %32
  %43 = phi i64 [ 0, %32 ], [ %57, %42 ]
  %44 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 %43
  %45 = load float, ptr %44, align 4, !tbaa !34
  %46 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 %43
  %47 = load float, ptr %46, align 4, !tbaa !34
  %48 = fmul float %37, %47
  %49 = call float @llvm.fmuladd.f32(float %35, float %45, float %48)
  %50 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 %43
  %51 = load float, ptr %50, align 4, !tbaa !34
  %52 = call float @llvm.fmuladd.f32(float %39, float %51, float %49)
  %53 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 %43
  %54 = load float, ptr %53, align 4, !tbaa !34
  %55 = call float @llvm.fmuladd.f32(float %41, float %54, float %52)
  %56 = getelementptr inbounds [4 x [4 x float]], ptr %10, i64 0, i64 %33, i64 %43
  store float %55, ptr %56, align 4, !tbaa !34
  %57 = add nuw nsw i64 %43, 1
  %58 = icmp eq i64 %57, 4
  br i1 %58, label %59, label %42, !llvm.loop !65

59:                                               ; preds = %42
  %60 = add nuw nsw i64 %33, 1
  %61 = icmp eq i64 %60, 4
  br i1 %61, label %62, label %32, !llvm.loop !66

62:                                               ; preds = %59
  call void @copy_m4_m4(ptr noundef %0, ptr noundef nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #17
  store float 1.000000e+00, ptr %31, align 8, !tbaa !34
  store float 1.000000e+00, ptr %27, align 4, !tbaa !34
  store float 0.000000e+00, ptr %30, align 4, !tbaa !34
  store float 0.000000e+00, ptr %28, align 8, !tbaa !34
  %63 = fcmp une float %20, 0.000000e+00
  %64 = fdiv float %13, %20
  %65 = fneg float %15
  %66 = fdiv float %65, %20
  %67 = select i1 %63, float %66, float 1.000000e+00
  %68 = select i1 %63, float %64, float 0.000000e+00
  %69 = getelementptr inbounds [4 x [4 x float]], ptr %11, i64 0, i64 2
  store float %67, ptr %11, align 16, !tbaa !34
  %70 = fneg float %68
  %71 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 2
  store float %70, ptr %71, align 8, !tbaa !34
  store float %68, ptr %69, align 16, !tbaa !34
  store float %67, ptr %31, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #17
  br label %72

72:                                               ; preds = %99, %62
  %73 = phi i64 [ 0, %62 ], [ %100, %99 ]
  %74 = getelementptr inbounds [4 x float], ptr %11, i64 %73
  %75 = load float, ptr %74, align 16, !tbaa !34
  %76 = getelementptr inbounds [4 x float], ptr %11, i64 %73, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !34
  %78 = getelementptr inbounds [4 x float], ptr %11, i64 %73, i64 2
  %79 = load float, ptr %78, align 8, !tbaa !34
  %80 = getelementptr inbounds [4 x float], ptr %11, i64 %73, i64 3
  %81 = load float, ptr %80, align 4, !tbaa !34
  br label %82

82:                                               ; preds = %82, %72
  %83 = phi i64 [ 0, %72 ], [ %97, %82 ]
  %84 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 %83
  %85 = load float, ptr %84, align 4, !tbaa !34
  %86 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 %83
  %87 = load float, ptr %86, align 4, !tbaa !34
  %88 = fmul float %77, %87
  %89 = call float @llvm.fmuladd.f32(float %75, float %85, float %88)
  %90 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 %83
  %91 = load float, ptr %90, align 4, !tbaa !34
  %92 = call float @llvm.fmuladd.f32(float %79, float %91, float %89)
  %93 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 %83
  %94 = load float, ptr %93, align 4, !tbaa !34
  %95 = call float @llvm.fmuladd.f32(float %81, float %94, float %92)
  %96 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 %73, i64 %83
  store float %95, ptr %96, align 4, !tbaa !34
  %97 = add nuw nsw i64 %83, 1
  %98 = icmp eq i64 %97, 4
  br i1 %98, label %99, label %82, !llvm.loop !65

99:                                               ; preds = %82
  %100 = add nuw nsw i64 %73, 1
  %101 = icmp eq i64 %100, 4
  br i1 %101, label %102, label %72, !llvm.loop !66

102:                                              ; preds = %99
  call void @copy_m4_m4(ptr noundef %0, ptr noundef nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #17
  %103 = fneg float %1
  %104 = fneg float %2
  %105 = fneg float %3
  call void @translate_m4(ptr noundef %0, float noundef %103, float noundef %104, float noundef %105) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @box_clip_bounds_m4(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #6 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef %2) #17
  %6 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  %7 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  %8 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 1
  %9 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  %10 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  %11 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  %12 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  %13 = icmp eq ptr %1, null
  %14 = getelementptr inbounds float, ptr %1, i64 1
  %15 = getelementptr inbounds float, ptr %1, i64 3
  %16 = getelementptr inbounds float, ptr %1, i64 2
  br label %20

17:                                               ; preds = %73
  %18 = add nuw nsw i32 %22, 1
  %19 = icmp eq i32 %18, 8
  br i1 %19, label %86, label %20, !llvm.loop !67

20:                                               ; preds = %3, %17
  %21 = phi i32 [ -1, %3 ], [ %84, %17 ]
  %22 = phi i32 [ 0, %3 ], [ %18, %17 ]
  %23 = and i32 %22, 1
  %24 = xor i32 %23, 1
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds [3 x float], ptr %0, i64 %25
  %27 = load float, ptr %26, align 4, !tbaa !34
  store float %27, ptr %5, align 16, !tbaa !34
  %28 = and i32 %22, 2
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, ptr %7, ptr %6
  %31 = load float, ptr %30, align 4, !tbaa !34
  store float %31, ptr %8, align 4, !tbaa !34
  %32 = icmp ult i32 %22, 4
  %33 = select i1 %32, ptr %10, ptr %9
  %34 = load float, ptr %33, align 4, !tbaa !34
  store float %34, ptr %11, align 8, !tbaa !34
  store float 1.000000e+00, ptr %12, align 4, !tbaa !34
  call void @mul_m4_v4(ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  %35 = load float, ptr %5, align 16, !tbaa !34
  br i1 %13, label %58, label %36

36:                                               ; preds = %20
  %37 = load float, ptr %14, align 4, !tbaa !34
  %38 = load float, ptr %12, align 4, !tbaa !34
  %39 = fmul float %37, %38
  %40 = fcmp ogt float %35, %39
  %41 = zext i1 %40 to i32
  %42 = load float, ptr %1, align 4, !tbaa !34
  %43 = fmul float %38, %42
  %44 = fcmp olt float %35, %43
  %45 = or disjoint i32 %41, 2
  %46 = select i1 %44, i32 %45, i32 %41
  %47 = load float, ptr %8, align 4, !tbaa !34
  %48 = load float, ptr %15, align 4, !tbaa !34
  %49 = fmul float %38, %48
  %50 = fcmp ogt float %47, %49
  %51 = or disjoint i32 %46, 4
  %52 = select i1 %50, i32 %51, i32 %46
  %53 = load float, ptr %16, align 4, !tbaa !34
  %54 = fmul float %38, %53
  %55 = fcmp olt float %47, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %36
  %57 = or disjoint i32 %52, 8
  br label %73

58:                                               ; preds = %20
  %59 = load float, ptr %12, align 4, !tbaa !34
  %60 = fneg float %59
  %61 = fcmp olt float %35, %60
  %62 = zext i1 %61 to i32
  %63 = fcmp ogt float %35, %59
  %64 = or disjoint i32 %62, 2
  %65 = select i1 %63, i32 %64, i32 %62
  %66 = load float, ptr %8, align 4, !tbaa !34
  %67 = fcmp olt float %66, %60
  %68 = or disjoint i32 %65, 4
  %69 = select i1 %67, i32 %68, i32 %65
  %70 = fcmp ogt float %66, %59
  br i1 %70, label %71, label %73

71:                                               ; preds = %58
  %72 = or disjoint i32 %69, 8
  br label %73

73:                                               ; preds = %58, %71, %36, %56
  %74 = phi i32 [ %57, %56 ], [ %52, %36 ], [ %72, %71 ], [ %69, %58 ]
  %75 = load float, ptr %11, align 8, !tbaa !34
  %76 = load float, ptr %12, align 4, !tbaa !34
  %77 = fneg float %76
  %78 = fcmp olt float %75, %77
  %79 = or i32 %74, 16
  %80 = select i1 %78, i32 %79, i32 %74
  %81 = fcmp ogt float %75, %76
  %82 = or i32 %80, 32
  %83 = select i1 %81, i32 %82, i32 %80
  %84 = and i32 %83, %21
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %17

86:                                               ; preds = %17, %73
  %87 = phi i32 [ 0, %73 ], [ %84, %17 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  ret i32 %87
}

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @mul_m4_v4(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @box_minmax_bounds_m4(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #6 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  %8 = load float, ptr %0, align 4, !tbaa !34
  store float %8, ptr %5, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %5, i64 1
  store float %10, ptr %11, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %0, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %5, i64 2
  store float %13, ptr %14, align 4, !tbaa !34
  %15 = load float, ptr %1, align 4, !tbaa !34
  store float %15, ptr %6, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %1, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %6, i64 1
  store float %17, ptr %18, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %1, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = getelementptr inbounds float, ptr %6, i64 2
  store float %20, ptr %21, align 4, !tbaa !34
  %22 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 1
  %23 = getelementptr inbounds [3 x float], ptr %2, i64 1, i64 1
  %24 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %25 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  %26 = getelementptr inbounds [3 x float], ptr %2, i64 1, i64 2
  %27 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  br label %28

28:                                               ; preds = %4, %28
  %29 = phi i32 [ 0, %4 ], [ %42, %28 ]
  %30 = and i32 %29, 1
  %31 = xor i32 %30, 1
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds [3 x float], ptr %2, i64 %32
  %34 = load float, ptr %33, align 4, !tbaa !34
  store float %34, ptr %7, align 4, !tbaa !34
  %35 = and i32 %29, 2
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, ptr %23, ptr %22
  %38 = load float, ptr %37, align 4, !tbaa !34
  store float %38, ptr %24, align 4, !tbaa !34
  %39 = icmp ult i32 %29, 4
  %40 = select i1 %39, ptr %26, ptr %25
  %41 = load float, ptr %40, align 4, !tbaa !34
  store float %41, ptr %27, align 4, !tbaa !34
  call void @mul_m4_v3(ptr noundef %3, ptr noundef nonnull %7) #17
  call void @minmax_v3v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #17
  %42 = add nuw nsw i32 %29, 1
  %43 = icmp eq i32 %42, 8
  br i1 %43, label %44, label %28, !llvm.loop !68

44:                                               ; preds = %28
  %45 = load float, ptr %5, align 4, !tbaa !34
  store float %45, ptr %0, align 4, !tbaa !34
  %46 = load float, ptr %11, align 4, !tbaa !34
  store float %46, ptr %9, align 4, !tbaa !34
  %47 = load float, ptr %14, align 4, !tbaa !34
  store float %47, ptr %12, align 4, !tbaa !34
  %48 = load float, ptr %6, align 4, !tbaa !34
  store float %48, ptr %1, align 4, !tbaa !34
  %49 = load float, ptr %18, align 4, !tbaa !34
  store float %49, ptr %16, align 4, !tbaa !34
  %50 = load float, ptr %21, align 4, !tbaa !34
  store float %50, ptr %19, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  ret void
}

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local void @map_to_tube(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #14 {
  %6 = fadd float %4, 1.000000e+00
  %7 = fmul float %6, 5.000000e-01
  store float %7, ptr %1, align 4, !tbaa !34
  %8 = fmul float %3, %3
  %9 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %8)
  %10 = tail call float @sqrtf(float noundef %9) #17
  %11 = fcmp ogt float %10, 0.000000e+00
  br i1 %11, label %12, label %19

12:                                               ; preds = %5
  %13 = fdiv float %2, %10
  %14 = fdiv float %3, %10
  %15 = tail call float @atan2f(float noundef %13, float noundef %14) #17
  %16 = fdiv float %15, 0x400921FB60000000
  %17 = fsub float 1.000000e+00, %16
  %18 = fmul float %17, 5.000000e-01
  store float %18, ptr %0, align 4, !tbaa !34
  br label %20

19:                                               ; preds = %5
  store float 0.000000e+00, ptr %0, align 4, !tbaa !34
  store float 0.000000e+00, ptr %1, align 4, !tbaa !34
  br label %20

20:                                               ; preds = %19, %12
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local void @map_to_sphere(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #14 {
  %6 = fmul float %3, %3
  %7 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %6)
  %8 = tail call float @llvm.fmuladd.f32(float %4, float %4, float %7)
  %9 = tail call float @sqrtf(float noundef %8) #17
  %10 = fcmp ogt float %9, 0.000000e+00
  br i1 %10, label %11, label %32

11:                                               ; preds = %5
  %12 = fcmp oeq float %2, 0.000000e+00
  %13 = fcmp oeq float %3, 0.000000e+00
  %14 = and i1 %12, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = tail call float @atan2f(float noundef %2, float noundef %3) #17
  %17 = fdiv float %16, 0x400921FB60000000
  %18 = fsub float 1.000000e+00, %17
  %19 = fmul float %18, 5.000000e-01
  br label %20

20:                                               ; preds = %11, %15
  %21 = phi float [ %19, %15 ], [ 0.000000e+00, %11 ]
  store float %21, ptr %0, align 4, !tbaa !34
  %22 = fdiv float %4, %9
  %23 = fcmp ugt float %22, -1.000000e+00
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = fcmp ult float %22, 1.000000e+00
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  %27 = tail call float @acosf(float noundef %22) #17
  br label %28

28:                                               ; preds = %20, %24, %26
  %29 = phi float [ %27, %26 ], [ 0x400921FB60000000, %20 ], [ 0.000000e+00, %24 ]
  %30 = fdiv float %29, 0x400921FB60000000
  %31 = fsub float 1.000000e+00, %30
  br label %33

32:                                               ; preds = %5
  store float 0.000000e+00, ptr %0, align 4, !tbaa !34
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi float [ 0.000000e+00, %32 ], [ %31, %28 ]
  store float %34, ptr %1, align 4, !tbaa !34
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @accumulate_vertex_normals(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, ptr noundef readonly %8) local_unnamed_addr #4 {
  %10 = alloca [4 x [3 x float]], align 16
  %11 = alloca [4 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #17
  %12 = icmp eq ptr %3, null
  %13 = icmp eq ptr %8, null
  %14 = or i1 %12, %13
  %15 = select i1 %14, i32 3, i32 4
  %16 = load float, ptr %6, align 4, !tbaa !34
  %17 = load float, ptr %5, align 4, !tbaa !34
  %18 = fsub float %16, %17
  store float %18, ptr %10, align 16, !tbaa !34
  %19 = getelementptr inbounds float, ptr %6, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = getelementptr inbounds float, ptr %5, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = fsub float %20, %22
  %24 = getelementptr inbounds float, ptr %10, i64 1
  store float %23, ptr %24, align 4, !tbaa !34
  %25 = getelementptr inbounds float, ptr %6, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = getelementptr inbounds float, ptr %5, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = fsub float %26, %28
  %30 = getelementptr inbounds float, ptr %10, i64 2
  store float %29, ptr %30, align 8, !tbaa !34
  %31 = getelementptr inbounds [4 x [3 x float]], ptr %10, i64 0, i64 1
  %32 = load float, ptr %7, align 4, !tbaa !34
  %33 = fsub float %32, %16
  store float %33, ptr %31, align 4, !tbaa !34
  %34 = getelementptr inbounds float, ptr %7, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = fsub float %35, %20
  %37 = getelementptr inbounds [4 x [3 x float]], ptr %10, i64 0, i64 1, i64 1
  store float %36, ptr %37, align 16, !tbaa !34
  %38 = getelementptr inbounds float, ptr %7, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !34
  %40 = fsub float %39, %26
  %41 = getelementptr inbounds [4 x [3 x float]], ptr %10, i64 0, i64 1, i64 2
  store float %40, ptr %41, align 4, !tbaa !34
  %42 = getelementptr inbounds [4 x [3 x float]], ptr %10, i64 0, i64 2
  br i1 %14, label %43, label %49

43:                                               ; preds = %9
  %44 = fsub float %17, %32
  store float %44, ptr %42, align 8, !tbaa !34
  %45 = fsub float %22, %35
  %46 = getelementptr inbounds [4 x [3 x float]], ptr %10, i64 0, i64 2, i64 1
  store float %45, ptr %46, align 4, !tbaa !34
  %47 = fsub float %28, %39
  %48 = getelementptr inbounds [4 x [3 x float]], ptr %10, i64 0, i64 2, i64 2
  store float %47, ptr %48, align 16, !tbaa !34
  br label %79

49:                                               ; preds = %9
  %50 = load float, ptr %8, align 4, !tbaa !34
  %51 = fsub float %50, %32
  store float %51, ptr %42, align 8, !tbaa !34
  %52 = getelementptr inbounds float, ptr %8, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !34
  %54 = fsub float %53, %35
  %55 = getelementptr inbounds [4 x [3 x float]], ptr %10, i64 0, i64 2, i64 1
  store float %54, ptr %55, align 4, !tbaa !34
  %56 = getelementptr inbounds float, ptr %8, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !34
  %58 = fsub float %57, %39
  %59 = getelementptr inbounds [4 x [3 x float]], ptr %10, i64 0, i64 2, i64 2
  store float %58, ptr %59, align 16, !tbaa !34
  %60 = getelementptr inbounds [4 x [3 x float]], ptr %10, i64 0, i64 3
  %61 = fsub float %17, %50
  store float %61, ptr %60, align 4, !tbaa !34
  %62 = fsub float %22, %53
  %63 = getelementptr inbounds [4 x [3 x float]], ptr %10, i64 0, i64 3, i64 1
  store float %62, ptr %63, align 8, !tbaa !34
  %64 = fsub float %28, %57
  %65 = getelementptr inbounds [4 x [3 x float]], ptr %10, i64 0, i64 3, i64 2
  store float %64, ptr %65, align 4, !tbaa !34
  %66 = fmul float %62, %62
  %67 = tail call float @llvm.fmuladd.f32(float %61, float %61, float %66)
  %68 = tail call float @llvm.fmuladd.f32(float %64, float %64, float %67)
  %69 = fcmp ogt float %68, 0x38AA95A5C0000000
  br i1 %69, label %70, label %76

70:                                               ; preds = %49
  %71 = tail call float @sqrtf(float noundef %68) #17
  %72 = fdiv float 1.000000e+00, %71
  %73 = fmul float %61, %72
  store float %73, ptr %60, align 4, !tbaa !34
  %74 = fmul float %62, %72
  store float %74, ptr %63, align 8, !tbaa !34
  %75 = fmul float %64, %72
  br label %77

76:                                               ; preds = %49
  store float 0.000000e+00, ptr %60, align 4, !tbaa !34
  store float 0.000000e+00, ptr %63, align 8, !tbaa !34
  br label %77

77:                                               ; preds = %70, %76
  %78 = phi float [ 0.000000e+00, %76 ], [ %75, %70 ]
  store float %78, ptr %65, align 4, !tbaa !34
  br label %79

79:                                               ; preds = %77, %43
  %80 = fmul float %23, %23
  %81 = tail call float @llvm.fmuladd.f32(float %18, float %18, float %80)
  %82 = tail call float @llvm.fmuladd.f32(float %29, float %29, float %81)
  %83 = fcmp ogt float %82, 0x38AA95A5C0000000
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = tail call float @sqrtf(float noundef %82) #17
  %86 = fdiv float 1.000000e+00, %85
  %87 = fmul float %18, %86
  store float %87, ptr %10, align 16, !tbaa !34
  %88 = fmul float %23, %86
  store float %88, ptr %24, align 4, !tbaa !34
  %89 = fmul float %29, %86
  br label %91

90:                                               ; preds = %79
  store float 0.000000e+00, ptr %10, align 16, !tbaa !34
  store float 0.000000e+00, ptr %24, align 4, !tbaa !34
  br label %91

91:                                               ; preds = %84, %90
  %92 = phi float [ 0.000000e+00, %90 ], [ %89, %84 ]
  store float %92, ptr %30, align 8, !tbaa !34
  %93 = fmul float %36, %36
  %94 = tail call float @llvm.fmuladd.f32(float %33, float %33, float %93)
  %95 = tail call float @llvm.fmuladd.f32(float %40, float %40, float %94)
  %96 = fcmp ogt float %95, 0x38AA95A5C0000000
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = tail call float @sqrtf(float noundef %95) #17
  %99 = fdiv float 1.000000e+00, %98
  %100 = fmul float %33, %99
  store float %100, ptr %31, align 4, !tbaa !34
  %101 = fmul float %36, %99
  store float %101, ptr %37, align 16, !tbaa !34
  %102 = fmul float %40, %99
  br label %104

103:                                              ; preds = %91
  store float 0.000000e+00, ptr %31, align 4, !tbaa !34
  store float 0.000000e+00, ptr %37, align 16, !tbaa !34
  br label %104

104:                                              ; preds = %97, %103
  %105 = phi float [ 0.000000e+00, %103 ], [ %102, %97 ]
  store float %105, ptr %41, align 4, !tbaa !34
  %106 = getelementptr inbounds [4 x [3 x float]], ptr %10, i64 0, i64 2
  %107 = load float, ptr %106, align 8, !tbaa !34
  %108 = getelementptr inbounds [4 x [3 x float]], ptr %10, i64 0, i64 2, i64 1
  %109 = load float, ptr %108, align 4, !tbaa !34
  %110 = fmul float %109, %109
  %111 = tail call float @llvm.fmuladd.f32(float %107, float %107, float %110)
  %112 = getelementptr inbounds [4 x [3 x float]], ptr %10, i64 0, i64 2, i64 2
  %113 = load float, ptr %112, align 16, !tbaa !34
  %114 = tail call float @llvm.fmuladd.f32(float %113, float %113, float %111)
  %115 = fcmp ogt float %114, 0x38AA95A5C0000000
  br i1 %115, label %116, label %122

116:                                              ; preds = %104
  %117 = tail call float @sqrtf(float noundef %114) #17
  %118 = fdiv float 1.000000e+00, %117
  %119 = fmul float %107, %118
  store float %119, ptr %106, align 8, !tbaa !34
  %120 = fmul float %109, %118
  store float %120, ptr %108, align 4, !tbaa !34
  %121 = fmul float %113, %118
  br label %123

122:                                              ; preds = %104
  store float 0.000000e+00, ptr %106, align 8, !tbaa !34
  store float 0.000000e+00, ptr %108, align 4, !tbaa !34
  br label %123

123:                                              ; preds = %116, %122
  %124 = phi float [ 0.000000e+00, %122 ], [ %121, %116 ]
  store float %124, ptr %112, align 16, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #17
  store ptr %0, ptr %11, align 16, !tbaa !52
  %125 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %1, ptr %125, align 8, !tbaa !52
  %126 = getelementptr inbounds ptr, ptr %11, i64 2
  store ptr %2, ptr %126, align 16, !tbaa !52
  %127 = getelementptr inbounds ptr, ptr %11, i64 3
  store ptr %3, ptr %127, align 8, !tbaa !52
  %128 = add nsw i32 %15, -1
  %129 = zext nneg i32 %128 to i64
  %130 = getelementptr inbounds [4 x [3 x float]], ptr %10, i64 0, i64 %129
  %131 = getelementptr inbounds float, ptr %4, i64 1
  %132 = getelementptr inbounds float, ptr %4, i64 2
  %133 = zext nneg i32 %15 to i64
  br label %134

134:                                              ; preds = %123, %157
  %135 = phi i64 [ 0, %123 ], [ %172, %157 ]
  %136 = phi ptr [ %130, %123 ], [ %137, %157 ]
  %137 = getelementptr inbounds [4 x [3 x float]], ptr %10, i64 0, i64 %135
  %138 = load float, ptr %137, align 4, !tbaa !34
  %139 = load float, ptr %136, align 4, !tbaa !34
  %140 = getelementptr inbounds float, ptr %137, i64 1
  %141 = load float, ptr %140, align 4, !tbaa !34
  %142 = getelementptr inbounds float, ptr %136, i64 1
  %143 = load float, ptr %142, align 4, !tbaa !34
  %144 = fmul float %141, %143
  %145 = tail call float @llvm.fmuladd.f32(float %138, float %139, float %144)
  %146 = getelementptr inbounds float, ptr %137, i64 2
  %147 = load float, ptr %146, align 4, !tbaa !34
  %148 = getelementptr inbounds float, ptr %136, i64 2
  %149 = load float, ptr %148, align 4, !tbaa !34
  %150 = tail call float @llvm.fmuladd.f32(float %147, float %149, float %145)
  %151 = fneg float %150
  %152 = fcmp ult float %150, 1.000000e+00
  br i1 %152, label %153, label %157

153:                                              ; preds = %134
  %154 = fcmp ugt float %150, -1.000000e+00
  br i1 %154, label %155, label %157

155:                                              ; preds = %153
  %156 = tail call float @acosf(float noundef %151) #17
  br label %157

157:                                              ; preds = %134, %153, %155
  %158 = phi float [ %156, %155 ], [ 0x400921FB60000000, %134 ], [ 0.000000e+00, %153 ]
  %159 = getelementptr inbounds [4 x ptr], ptr %11, i64 0, i64 %135
  %160 = load ptr, ptr %159, align 8, !tbaa !52
  %161 = load float, ptr %4, align 4, !tbaa !34
  %162 = load float, ptr %160, align 4, !tbaa !34
  %163 = tail call float @llvm.fmuladd.f32(float %161, float %158, float %162)
  store float %163, ptr %160, align 4, !tbaa !34
  %164 = load float, ptr %131, align 4, !tbaa !34
  %165 = getelementptr inbounds float, ptr %160, i64 1
  %166 = load float, ptr %165, align 4, !tbaa !34
  %167 = tail call float @llvm.fmuladd.f32(float %164, float %158, float %166)
  store float %167, ptr %165, align 4, !tbaa !34
  %168 = load float, ptr %132, align 4, !tbaa !34
  %169 = getelementptr inbounds float, ptr %160, i64 2
  %170 = load float, ptr %169, align 4, !tbaa !34
  %171 = tail call float @llvm.fmuladd.f32(float %168, float %158, float %170)
  store float %171, ptr %169, align 4, !tbaa !34
  %172 = add nuw nsw i64 %135, 1
  %173 = icmp eq i64 %172, %133
  br i1 %173, label %174, label %134, !llvm.loop !69

174:                                              ; preds = %157
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #17
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @accumulate_vertex_normals_poly(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, i32 noundef %4) local_unnamed_addr #4 {
  %6 = icmp sgt i32 %4, 0
  br i1 %6, label %7, label %53

7:                                                ; preds = %5
  %8 = zext nneg i32 %4 to i64
  %9 = zext nneg i32 %4 to i64
  br label %10

10:                                               ; preds = %7, %50
  %11 = phi i64 [ 0, %7 ], [ %13, %50 ]
  %12 = getelementptr inbounds [3 x float], ptr %3, i64 %11
  %13 = add nuw nsw i64 %11, 1
  %14 = icmp eq i64 %13, %8
  %15 = and i64 %13, 4294967295
  %16 = select i1 %14, i64 0, i64 %15
  %17 = getelementptr inbounds ptr, ptr %2, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !52
  %19 = getelementptr inbounds ptr, ptr %2, i64 %11
  %20 = load ptr, ptr %19, align 8, !tbaa !52
  %21 = load float, ptr %18, align 4, !tbaa !34
  %22 = load float, ptr %20, align 4, !tbaa !34
  %23 = fsub float %21, %22
  store float %23, ptr %12, align 4, !tbaa !34
  %24 = getelementptr inbounds float, ptr %18, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = getelementptr inbounds float, ptr %20, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = fsub float %25, %27
  %29 = getelementptr inbounds float, ptr %12, i64 1
  store float %28, ptr %29, align 4, !tbaa !34
  %30 = getelementptr inbounds float, ptr %18, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = getelementptr inbounds float, ptr %20, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = fsub float %31, %33
  %35 = getelementptr inbounds float, ptr %12, i64 2
  store float %34, ptr %35, align 4, !tbaa !34
  %36 = fmul float %28, %28
  %37 = tail call float @llvm.fmuladd.f32(float %23, float %23, float %36)
  %38 = tail call float @llvm.fmuladd.f32(float %34, float %34, float %37)
  %39 = fcmp ogt float %38, 0x38AA95A5C0000000
  br i1 %39, label %40, label %49

40:                                               ; preds = %10
  %41 = tail call float @sqrtf(float noundef %38) #17
  %42 = fdiv float 1.000000e+00, %41
  %43 = load float, ptr %12, align 4, !tbaa !34
  %44 = fmul float %43, %42
  store float %44, ptr %12, align 4, !tbaa !34
  %45 = load float, ptr %29, align 4, !tbaa !34
  %46 = fmul float %42, %45
  store float %46, ptr %29, align 4, !tbaa !34
  %47 = load float, ptr %35, align 4, !tbaa !34
  %48 = fmul float %42, %47
  br label %50

49:                                               ; preds = %10
  store float 0.000000e+00, ptr %12, align 4, !tbaa !34
  store float 0.000000e+00, ptr %29, align 4, !tbaa !34
  br label %50

50:                                               ; preds = %40, %49
  %51 = phi float [ 0.000000e+00, %49 ], [ %48, %40 ]
  store float %51, ptr %35, align 4, !tbaa !34
  %52 = icmp eq i64 %13, %9
  br i1 %52, label %53, label %10, !llvm.loop !70

53:                                               ; preds = %50, %5
  %54 = icmp sgt i32 %4, 0
  br i1 %54, label %55, label %102

55:                                               ; preds = %53
  %56 = zext nneg i32 %4 to i64
  %57 = getelementptr [3 x float], ptr %3, i64 %56
  %58 = getelementptr [3 x float], ptr %57, i64 -1
  %59 = getelementptr inbounds float, ptr %1, i64 1
  %60 = getelementptr inbounds float, ptr %1, i64 2
  %61 = zext nneg i32 %4 to i64
  br label %62

62:                                               ; preds = %55, %85
  %63 = phi i64 [ 0, %55 ], [ %100, %85 ]
  %64 = phi ptr [ %58, %55 ], [ %65, %85 ]
  %65 = getelementptr inbounds [3 x float], ptr %3, i64 %63
  %66 = load float, ptr %65, align 4, !tbaa !34
  %67 = load float, ptr %64, align 4, !tbaa !34
  %68 = getelementptr inbounds float, ptr %65, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !34
  %70 = getelementptr inbounds float, ptr %64, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !34
  %72 = fmul float %69, %71
  %73 = tail call float @llvm.fmuladd.f32(float %66, float %67, float %72)
  %74 = getelementptr inbounds float, ptr %65, i64 2
  %75 = load float, ptr %74, align 4, !tbaa !34
  %76 = getelementptr inbounds float, ptr %64, i64 2
  %77 = load float, ptr %76, align 4, !tbaa !34
  %78 = tail call float @llvm.fmuladd.f32(float %75, float %77, float %73)
  %79 = fneg float %78
  %80 = fcmp ult float %78, 1.000000e+00
  br i1 %80, label %81, label %85

81:                                               ; preds = %62
  %82 = fcmp ugt float %78, -1.000000e+00
  br i1 %82, label %83, label %85

83:                                               ; preds = %81
  %84 = tail call float @acosf(float noundef %79) #17
  br label %85

85:                                               ; preds = %62, %81, %83
  %86 = phi float [ %84, %83 ], [ 0x400921FB60000000, %62 ], [ 0.000000e+00, %81 ]
  %87 = getelementptr inbounds ptr, ptr %0, i64 %63
  %88 = load ptr, ptr %87, align 8, !tbaa !52
  %89 = load float, ptr %1, align 4, !tbaa !34
  %90 = load float, ptr %88, align 4, !tbaa !34
  %91 = tail call float @llvm.fmuladd.f32(float %89, float %86, float %90)
  store float %91, ptr %88, align 4, !tbaa !34
  %92 = load float, ptr %59, align 4, !tbaa !34
  %93 = getelementptr inbounds float, ptr %88, i64 1
  %94 = load float, ptr %93, align 4, !tbaa !34
  %95 = tail call float @llvm.fmuladd.f32(float %92, float %86, float %94)
  store float %95, ptr %93, align 4, !tbaa !34
  %96 = load float, ptr %60, align 4, !tbaa !34
  %97 = getelementptr inbounds float, ptr %88, i64 2
  %98 = load float, ptr %97, align 4, !tbaa !34
  %99 = tail call float @llvm.fmuladd.f32(float %96, float %86, float %98)
  store float %99, ptr %97, align 4, !tbaa !34
  %100 = add nuw nsw i64 %63, 1
  %101 = icmp eq i64 %100, %61
  br i1 %101, label %102, label %62, !llvm.loop !71

102:                                              ; preds = %85, %53
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @tangent_from_uv(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef writeonly %7) local_unnamed_addr #0 {
  %9 = load float, ptr %1, align 4, !tbaa !34
  %10 = load float, ptr %0, align 4, !tbaa !34
  %11 = fsub float %9, %10
  %12 = load float, ptr %2, align 4, !tbaa !34
  %13 = fsub float %12, %10
  %14 = getelementptr inbounds float, ptr %1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fsub float %15, %17
  %19 = getelementptr inbounds float, ptr %2, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fsub float %20, %17
  %22 = fneg float %13
  %23 = fmul float %18, %22
  %24 = tail call float @llvm.fmuladd.f32(float %11, float %21, float %23)
  %25 = fcmp une float %24, 0.000000e+00
  br i1 %25, label %26, label %89

26:                                               ; preds = %8
  %27 = fdiv float 1.000000e+00, %24
  %28 = load float, ptr %3, align 4, !tbaa !34
  %29 = load float, ptr %4, align 4, !tbaa !34
  %30 = fsub float %28, %29
  %31 = getelementptr inbounds float, ptr %3, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = getelementptr inbounds float, ptr %4, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = fsub float %32, %34
  %36 = getelementptr inbounds float, ptr %3, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !34
  %38 = getelementptr inbounds float, ptr %4, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !34
  %40 = fsub float %37, %39
  %41 = load float, ptr %5, align 4, !tbaa !34
  %42 = fsub float %28, %41
  %43 = getelementptr inbounds float, ptr %5, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !34
  %45 = fsub float %32, %44
  %46 = getelementptr inbounds float, ptr %5, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !34
  %48 = fsub float %37, %47
  %49 = fneg float %18
  %50 = fmul float %42, %49
  %51 = tail call float @llvm.fmuladd.f32(float %21, float %30, float %50)
  %52 = fmul float %27, %51
  store float %52, ptr %7, align 4, !tbaa !34
  %53 = fmul float %45, %49
  %54 = tail call float @llvm.fmuladd.f32(float %21, float %35, float %53)
  %55 = fmul float %27, %54
  %56 = getelementptr inbounds float, ptr %7, i64 1
  store float %55, ptr %56, align 4, !tbaa !34
  %57 = fmul float %48, %49
  %58 = tail call float @llvm.fmuladd.f32(float %21, float %40, float %57)
  %59 = fmul float %27, %58
  %60 = getelementptr inbounds float, ptr %7, i64 2
  store float %59, ptr %60, align 4, !tbaa !34
  %61 = fmul float %30, %22
  %62 = tail call float @llvm.fmuladd.f32(float %11, float %42, float %61)
  %63 = fmul float %27, %62
  %64 = fmul float %35, %22
  %65 = tail call float @llvm.fmuladd.f32(float %11, float %45, float %64)
  %66 = fmul float %27, %65
  %67 = fmul float %40, %22
  %68 = tail call float @llvm.fmuladd.f32(float %11, float %48, float %67)
  %69 = fmul float %27, %68
  %70 = fneg float %59
  %71 = fmul float %66, %70
  %72 = tail call float @llvm.fmuladd.f32(float %55, float %69, float %71)
  %73 = fneg float %52
  %74 = fmul float %69, %73
  %75 = tail call float @llvm.fmuladd.f32(float %59, float %63, float %74)
  %76 = fneg float %55
  %77 = fmul float %63, %76
  %78 = tail call float @llvm.fmuladd.f32(float %52, float %66, float %77)
  %79 = load float, ptr %6, align 4, !tbaa !34
  %80 = getelementptr inbounds float, ptr %6, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !34
  %82 = fmul float %75, %81
  %83 = tail call float @llvm.fmuladd.f32(float %72, float %79, float %82)
  %84 = getelementptr inbounds float, ptr %6, i64 2
  %85 = load float, ptr %84, align 4, !tbaa !34
  %86 = tail call float @llvm.fmuladd.f32(float %78, float %85, float %83)
  %87 = fcmp olt float %86, 0.000000e+00
  br i1 %87, label %88, label %92

88:                                               ; preds = %26
  store float %73, ptr %7, align 4, !tbaa !34
  store float %76, ptr %56, align 4, !tbaa !34
  store float %70, ptr %60, align 4, !tbaa !34
  br label %92

89:                                               ; preds = %8
  store float 0.000000e+00, ptr %7, align 4, !tbaa !34
  %90 = getelementptr inbounds float, ptr %7, i64 1
  store float 0.000000e+00, ptr %90, align 4, !tbaa !34
  %91 = getelementptr inbounds float, ptr %7, i64 2
  store float 0.000000e+00, ptr %91, align 4, !tbaa !34
  br label %92

92:                                               ; preds = %26, %88, %89
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @vcloud_estimate_transform(i32 noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef readonly %4, ptr noundef writeonly %5, ptr noundef writeonly %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #6 {
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [3 x [3 x float]], align 16
  %12 = alloca [3 x [3 x float]], align 16
  %13 = alloca [3 x [3 x float]], align 16
  %14 = alloca [3 x [3 x float]], align 16
  %15 = alloca [3 x [3 x float]], align 16
  %16 = icmp eq ptr %5, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %9
  store float 0.000000e+00, ptr %5, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %5, i64 1
  store float 0.000000e+00, ptr %18, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %5, i64 2
  store float 0.000000e+00, ptr %19, align 4, !tbaa !34
  br label %20

20:                                               ; preds = %17, %9
  %21 = icmp eq ptr %6, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %20
  store float 0.000000e+00, ptr %6, align 4, !tbaa !34
  %23 = getelementptr inbounds float, ptr %6, i64 1
  store float 0.000000e+00, ptr %23, align 4, !tbaa !34
  %24 = getelementptr inbounds float, ptr %6, i64 2
  store float 0.000000e+00, ptr %24, align 4, !tbaa !34
  br label %25

25:                                               ; preds = %22, %20
  %26 = icmp ne ptr %7, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  tail call void @unit_m3(ptr noundef nonnull %7) #17
  br label %28

28:                                               ; preds = %27, %25
  %29 = icmp ne ptr %8, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  tail call void @unit_m3(ptr noundef nonnull %8) #17
  br label %31

31:                                               ; preds = %30, %28
  %32 = icmp ne ptr %1, null
  %33 = icmp ne ptr %3, null
  %34 = and i1 %32, %33
  %35 = icmp sgt i32 %0, 0
  %36 = and i1 %35, %34
  br i1 %36, label %37, label %251

37:                                               ; preds = %31
  %38 = icmp eq ptr %2, null
  %39 = icmp eq ptr %4, null
  %40 = zext i32 %0 to i64
  br label %41

41:                                               ; preds = %37, %85
  %42 = phi i64 [ 0, %37 ], [ %93, %85 ]
  %43 = phi float [ 0.000000e+00, %37 ], [ %68, %85 ]
  %44 = phi float [ 0.000000e+00, %37 ], [ %89, %85 ]
  %45 = phi float [ 0.000000e+00, %37 ], [ %69, %85 ]
  %46 = phi float [ 0.000000e+00, %37 ], [ %70, %85 ]
  %47 = phi float [ 0.000000e+00, %37 ], [ %71, %85 ]
  %48 = phi float [ 0.000000e+00, %37 ], [ %90, %85 ]
  %49 = phi float [ 0.000000e+00, %37 ], [ %91, %85 ]
  %50 = phi float [ 0.000000e+00, %37 ], [ %92, %85 ]
  %51 = getelementptr inbounds [3 x float], ptr %1, i64 %42
  %52 = load float, ptr %51, align 4, !tbaa !34
  %53 = getelementptr inbounds float, ptr %51, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !34
  %55 = getelementptr inbounds float, ptr %51, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !34
  br i1 %38, label %64, label %57

57:                                               ; preds = %41
  %58 = getelementptr inbounds float, ptr %2, i64 %42
  %59 = load float, ptr %58, align 4, !tbaa !34
  %60 = fmul float %52, %59
  %61 = fmul float %54, %59
  %62 = fmul float %56, %59
  %63 = fadd float %43, %59
  br label %64

64:                                               ; preds = %41, %57
  %65 = phi float [ %62, %57 ], [ %56, %41 ]
  %66 = phi float [ %61, %57 ], [ %54, %41 ]
  %67 = phi float [ %60, %57 ], [ %52, %41 ]
  %68 = phi float [ %63, %57 ], [ %43, %41 ]
  %69 = fadd float %45, %67
  %70 = fadd float %46, %66
  %71 = fadd float %47, %65
  %72 = getelementptr inbounds [3 x float], ptr %3, i64 %42
  %73 = load float, ptr %72, align 4, !tbaa !34
  %74 = getelementptr inbounds float, ptr %72, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !34
  %76 = getelementptr inbounds float, ptr %72, i64 2
  %77 = load float, ptr %76, align 4, !tbaa !34
  br i1 %39, label %85, label %78

78:                                               ; preds = %64
  %79 = getelementptr inbounds float, ptr %4, i64 %42
  %80 = load float, ptr %79, align 4, !tbaa !34
  %81 = fmul float %73, %80
  %82 = fmul float %75, %80
  %83 = fmul float %77, %80
  %84 = fadd float %44, %80
  br label %85

85:                                               ; preds = %64, %78
  %86 = phi float [ %83, %78 ], [ %77, %64 ]
  %87 = phi float [ %82, %78 ], [ %75, %64 ]
  %88 = phi float [ %81, %78 ], [ %73, %64 ]
  %89 = phi float [ %84, %78 ], [ %44, %64 ]
  %90 = fadd float %48, %88
  %91 = fadd float %49, %87
  %92 = fadd float %50, %86
  %93 = add nuw nsw i64 %42, 1
  %94 = icmp eq i64 %93, %40
  br i1 %94, label %95, label %41, !llvm.loop !72

95:                                               ; preds = %85
  %96 = icmp ne ptr %2, null
  %97 = icmp ne ptr %4, null
  %98 = and i1 %96, %97
  %99 = sitofp i32 %0 to float
  %100 = select i1 %98, float %89, float %99
  %101 = select i1 %98, float %68, float %99
  %102 = fdiv float 1.000000e+00, %101
  %103 = fmul float %69, %102
  %104 = fmul float %70, %102
  %105 = fmul float %71, %102
  %106 = fdiv float 1.000000e+00, %100
  %107 = fmul float %90, %106
  %108 = fmul float %91, %106
  %109 = fmul float %92, %106
  br i1 %16, label %113, label %110

110:                                              ; preds = %95
  store float %103, ptr %5, align 4, !tbaa !34
  %111 = getelementptr inbounds float, ptr %5, i64 1
  store float %104, ptr %111, align 4, !tbaa !34
  %112 = getelementptr inbounds float, ptr %5, i64 2
  store float %105, ptr %112, align 4, !tbaa !34
  br label %113

113:                                              ; preds = %110, %95
  br i1 %21, label %117, label %114

114:                                              ; preds = %113
  store float %107, ptr %6, align 4, !tbaa !34
  %115 = getelementptr inbounds float, ptr %6, i64 1
  store float %108, ptr %115, align 4, !tbaa !34
  %116 = getelementptr inbounds float, ptr %6, i64 2
  store float %109, ptr %116, align 4, !tbaa !34
  br label %117

117:                                              ; preds = %114, %113
  %118 = or i1 %26, %29
  br i1 %118, label %119, label %251

119:                                              ; preds = %117
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %13) #17
  call void @zero_m3(ptr noundef nonnull %10) #17
  call void @zero_m3(ptr noundef nonnull %11) #17
  %120 = icmp sgt i32 %0, 0
  br i1 %120, label %121, label %216

121:                                              ; preds = %119
  %122 = load float, ptr %11, align 16, !tbaa !34
  %123 = load float, ptr %10, align 16, !tbaa !34
  %124 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %125 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %126 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 1
  %127 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 1, i64 1
  %128 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 1, i64 2
  %129 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 2
  %130 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 2, i64 1
  %131 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 2, i64 2
  %132 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  %133 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %134 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 1
  %135 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 1, i64 1
  %136 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 1, i64 2
  %137 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 2
  %138 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 2, i64 1
  %139 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 2, i64 2
  %140 = load float, ptr %124, align 4, !tbaa !34
  %141 = load float, ptr %125, align 8, !tbaa !34
  %142 = load float, ptr %126, align 4, !tbaa !34
  %143 = load float, ptr %127, align 16, !tbaa !34
  %144 = load float, ptr %128, align 4, !tbaa !34
  %145 = load float, ptr %129, align 8, !tbaa !34
  %146 = load float, ptr %130, align 4, !tbaa !34
  %147 = load float, ptr %131, align 16, !tbaa !34
  %148 = load float, ptr %132, align 4, !tbaa !34
  %149 = load float, ptr %133, align 8, !tbaa !34
  %150 = load float, ptr %134, align 4, !tbaa !34
  %151 = load float, ptr %135, align 16, !tbaa !34
  %152 = load float, ptr %136, align 4, !tbaa !34
  %153 = load float, ptr %137, align 8, !tbaa !34
  %154 = load float, ptr %138, align 4, !tbaa !34
  %155 = load float, ptr %139, align 16, !tbaa !34
  %156 = zext nneg i32 %0 to i64
  br label %157

157:                                              ; preds = %121, %157
  %158 = phi i64 [ 0, %121 ], [ %213, %157 ]
  %159 = phi float [ %155, %121 ], [ %212, %157 ]
  %160 = phi float [ %154, %121 ], [ %211, %157 ]
  %161 = phi float [ %153, %121 ], [ %210, %157 ]
  %162 = phi float [ %152, %121 ], [ %209, %157 ]
  %163 = phi float [ %151, %121 ], [ %208, %157 ]
  %164 = phi float [ %150, %121 ], [ %207, %157 ]
  %165 = phi float [ %149, %121 ], [ %206, %157 ]
  %166 = phi float [ %148, %121 ], [ %205, %157 ]
  %167 = phi float [ %147, %121 ], [ %203, %157 ]
  %168 = phi float [ %146, %121 ], [ %202, %157 ]
  %169 = phi float [ %145, %121 ], [ %201, %157 ]
  %170 = phi float [ %144, %121 ], [ %200, %157 ]
  %171 = phi float [ %143, %121 ], [ %199, %157 ]
  %172 = phi float [ %142, %121 ], [ %198, %157 ]
  %173 = phi float [ %141, %121 ], [ %197, %157 ]
  %174 = phi float [ %140, %121 ], [ %196, %157 ]
  %175 = phi float [ %123, %121 ], [ %195, %157 ]
  %176 = phi float [ %122, %121 ], [ %204, %157 ]
  %177 = getelementptr inbounds [3 x float], ptr %3, i64 %158
  %178 = load float, ptr %177, align 4, !tbaa !34
  %179 = fsub float %178, %107
  %180 = getelementptr inbounds float, ptr %177, i64 1
  %181 = load float, ptr %180, align 4, !tbaa !34
  %182 = fsub float %181, %108
  %183 = getelementptr inbounds float, ptr %177, i64 2
  %184 = load float, ptr %183, align 4, !tbaa !34
  %185 = fsub float %184, %109
  %186 = getelementptr inbounds [3 x float], ptr %1, i64 %158
  %187 = load float, ptr %186, align 4, !tbaa !34
  %188 = fsub float %187, %103
  %189 = getelementptr inbounds float, ptr %186, i64 1
  %190 = load float, ptr %189, align 4, !tbaa !34
  %191 = fsub float %190, %104
  %192 = getelementptr inbounds float, ptr %186, i64 2
  %193 = load float, ptr %192, align 4, !tbaa !34
  %194 = fsub float %193, %105
  %195 = call float @llvm.fmuladd.f32(float %179, float %188, float %175)
  %196 = call float @llvm.fmuladd.f32(float %179, float %191, float %174)
  %197 = call float @llvm.fmuladd.f32(float %179, float %194, float %173)
  %198 = call float @llvm.fmuladd.f32(float %182, float %188, float %172)
  %199 = call float @llvm.fmuladd.f32(float %182, float %191, float %171)
  %200 = call float @llvm.fmuladd.f32(float %182, float %194, float %170)
  %201 = call float @llvm.fmuladd.f32(float %185, float %188, float %169)
  %202 = call float @llvm.fmuladd.f32(float %185, float %191, float %168)
  %203 = call float @llvm.fmuladd.f32(float %185, float %194, float %167)
  %204 = call float @llvm.fmuladd.f32(float %179, float %179, float %176)
  %205 = call float @llvm.fmuladd.f32(float %179, float %182, float %166)
  %206 = call float @llvm.fmuladd.f32(float %179, float %185, float %165)
  %207 = call float @llvm.fmuladd.f32(float %182, float %179, float %164)
  %208 = call float @llvm.fmuladd.f32(float %182, float %182, float %163)
  %209 = call float @llvm.fmuladd.f32(float %182, float %185, float %162)
  %210 = call float @llvm.fmuladd.f32(float %185, float %179, float %161)
  %211 = call float @llvm.fmuladd.f32(float %185, float %182, float %160)
  %212 = call float @llvm.fmuladd.f32(float %185, float %185, float %159)
  %213 = add nuw nsw i64 %158, 1
  %214 = icmp eq i64 %213, %156
  br i1 %214, label %215, label %157, !llvm.loop !73

215:                                              ; preds = %157
  store float %195, ptr %10, align 16, !tbaa !34
  store float %196, ptr %124, align 4, !tbaa !34
  store float %197, ptr %125, align 8, !tbaa !34
  store float %198, ptr %126, align 4, !tbaa !34
  store float %199, ptr %127, align 16, !tbaa !34
  store float %200, ptr %128, align 4, !tbaa !34
  store float %201, ptr %129, align 8, !tbaa !34
  store float %202, ptr %130, align 4, !tbaa !34
  store float %203, ptr %131, align 16, !tbaa !34
  store float %204, ptr %11, align 16, !tbaa !34
  store float %205, ptr %132, align 4, !tbaa !34
  store float %206, ptr %133, align 8, !tbaa !34
  store float %207, ptr %134, align 4, !tbaa !34
  store float %208, ptr %135, align 16, !tbaa !34
  store float %209, ptr %136, align 4, !tbaa !34
  store float %210, ptr %137, align 8, !tbaa !34
  store float %211, ptr %138, align 4, !tbaa !34
  store float %212, ptr %139, align 16, !tbaa !34
  br label %216

216:                                              ; preds = %215, %119
  call void @copy_m3_m3(ptr noundef nonnull %12, ptr noundef nonnull %10) #17
  %217 = load float, ptr %12, align 16, !tbaa !34
  %218 = getelementptr inbounds [3 x [3 x float]], ptr %12, i64 0, i64 1, i64 1
  %219 = load float, ptr %218, align 16, !tbaa !34
  %220 = getelementptr inbounds [3 x [3 x float]], ptr %12, i64 0, i64 2, i64 2
  %221 = load float, ptr %220, align 16, !tbaa !34
  %222 = fmul float %219, %219
  %223 = call float @llvm.fmuladd.f32(float %217, float %217, float %222)
  %224 = call float @llvm.fmuladd.f32(float %221, float %221, float %223)
  %225 = call float @sqrtf(float noundef %224) #17
  %226 = fdiv float 1.000000e+00, %225
  call void @mul_m3_fl(ptr noundef nonnull %12, float noundef %226) #17
  %227 = call float @determinant_m3_array(ptr noundef nonnull %12) #17
  %228 = fsub float 0.000000e+00, %227
  %229 = fmul float %228, %228
  %230 = fcmp ule float %229, 0x3EB0C6F7A0000000
  br i1 %230, label %250, label %231

231:                                              ; preds = %216, %231
  %232 = phi i32 [ %236, %231 ], [ 0, %216 ]
  %233 = phi float [ %235, %231 ], [ %227, %216 ]
  %234 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %13, ptr noundef nonnull %12) #17
  call void @transpose_m3(ptr noundef nonnull %13) #17
  call void @add_m3_m3m3(ptr noundef nonnull %12, ptr noundef nonnull %12, ptr noundef nonnull %13) #17
  call void @mul_m3_fl(ptr noundef nonnull %12, float noundef 5.000000e-01) #17
  %235 = call float @determinant_m3_array(ptr noundef nonnull %12) #17
  %236 = add nuw nsw i32 %232, 1
  %237 = fsub float %233, %235
  %238 = fmul float %237, %237
  %239 = fcmp ogt float %238, 0x3EB0C6F7A0000000
  %240 = icmp ult i32 %232, 14
  %241 = select i1 %239, i1 %240, i1 false
  br i1 %241, label %231, label %242, !llvm.loop !74

242:                                              ; preds = %231
  br i1 %230, label %250, label %243

243:                                              ; preds = %242
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %15) #17
  br i1 %26, label %244, label %245

244:                                              ; preds = %243
  call void @copy_m3_m3(ptr noundef nonnull %7, ptr noundef nonnull %12) #17
  br label %245

245:                                              ; preds = %244, %243
  %246 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %15, ptr noundef nonnull %12) #17
  %247 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %13, ptr noundef nonnull %11) #17
  call void @mul_m3_m3m3(ptr noundef nonnull %12, ptr noundef nonnull %10, ptr noundef nonnull %13) #17
  call void @mul_m3_m3m3(ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %12) #17
  br i1 %29, label %248, label %249

248:                                              ; preds = %245
  call void @copy_m3_m3(ptr noundef nonnull %8, ptr noundef nonnull %14) #17
  br label %249

249:                                              ; preds = %248, %245
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %14) #17
  br label %250

250:                                              ; preds = %216, %249, %242
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #17
  br label %251

251:                                              ; preds = %250, %117, %31
  ret void
}

declare void @unit_m3(ptr noundef) local_unnamed_addr #7

declare void @zero_m3(ptr noundef) local_unnamed_addr #7

declare void @copy_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @mul_m3_fl(ptr noundef, float noundef) local_unnamed_addr #7

declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @add_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @form_factor_visible_quad(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr noundef %7, ptr nocapture noundef writeonly %8) local_unnamed_addr #0 {
  %10 = load float, ptr %1, align 4, !tbaa !34
  %11 = load float, ptr %0, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %0, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fmul float %13, %15
  %17 = tail call float @llvm.fmuladd.f32(float %10, float %11, float %16)
  %18 = getelementptr inbounds float, ptr %1, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %0, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = tail call float @llvm.fmuladd.f32(float %19, float %21, float %17)
  %23 = load float, ptr %2, align 4, !tbaa !34
  %24 = getelementptr inbounds float, ptr %2, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = fmul float %13, %25
  %27 = tail call float @llvm.fmuladd.f32(float %10, float %23, float %26)
  %28 = getelementptr inbounds float, ptr %2, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = tail call float @llvm.fmuladd.f32(float %19, float %29, float %27)
  %31 = fsub float %30, %22
  %32 = load float, ptr %3, align 4, !tbaa !34
  %33 = getelementptr inbounds float, ptr %3, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = fmul float %13, %34
  %36 = tail call float @llvm.fmuladd.f32(float %10, float %32, float %35)
  %37 = getelementptr inbounds float, ptr %3, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !34
  %39 = tail call float @llvm.fmuladd.f32(float %19, float %38, float %36)
  %40 = fsub float %39, %22
  %41 = load float, ptr %4, align 4, !tbaa !34
  %42 = getelementptr inbounds float, ptr %4, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !34
  %44 = fmul float %13, %43
  %45 = tail call float @llvm.fmuladd.f32(float %10, float %41, float %44)
  %46 = getelementptr inbounds float, ptr %4, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !34
  %48 = tail call float @llvm.fmuladd.f32(float %19, float %47, float %45)
  %49 = fsub float %48, %22
  %50 = tail call float @llvm.fabs.f32(float %31)
  %51 = fcmp olt float %50, 0x3EB0C6F7A0000000
  %52 = select i1 %51, float 0.000000e+00, float %31
  %53 = tail call float @llvm.fabs.f32(float %40)
  %54 = fcmp olt float %53, 0x3EB0C6F7A0000000
  %55 = select i1 %54, float 0.000000e+00, float %40
  %56 = tail call float @llvm.fabs.f32(float %49)
  %57 = fcmp olt float %56, 0x3EB0C6F7A0000000
  %58 = select i1 %57, float 0.000000e+00, float %49
  %59 = fcmp ogt float %52, 0.000000e+00
  br i1 %59, label %60, label %289

60:                                               ; preds = %9
  %61 = fcmp ogt float %55, 0.000000e+00
  br i1 %61, label %62, label %134

62:                                               ; preds = %60
  %63 = fcmp ogt float %58, 0.000000e+00
  br i1 %63, label %64, label %82

64:                                               ; preds = %62
  store float %23, ptr %5, align 4, !tbaa !34
  %65 = load float, ptr %24, align 4, !tbaa !34
  %66 = getelementptr inbounds float, ptr %5, i64 1
  store float %65, ptr %66, align 4, !tbaa !34
  %67 = load float, ptr %28, align 4, !tbaa !34
  %68 = getelementptr inbounds float, ptr %5, i64 2
  store float %67, ptr %68, align 4, !tbaa !34
  %69 = load float, ptr %3, align 4, !tbaa !34
  store float %69, ptr %6, align 4, !tbaa !34
  %70 = load float, ptr %33, align 4, !tbaa !34
  %71 = getelementptr inbounds float, ptr %6, i64 1
  store float %70, ptr %71, align 4, !tbaa !34
  %72 = load float, ptr %37, align 4, !tbaa !34
  %73 = getelementptr inbounds float, ptr %6, i64 2
  store float %72, ptr %73, align 4, !tbaa !34
  %74 = load float, ptr %4, align 4, !tbaa !34
  store float %74, ptr %7, align 4, !tbaa !34
  %75 = load float, ptr %42, align 4, !tbaa !34
  %76 = getelementptr inbounds float, ptr %7, i64 1
  store float %75, ptr %76, align 4, !tbaa !34
  %77 = load float, ptr %46, align 4, !tbaa !34
  %78 = getelementptr inbounds float, ptr %7, i64 2
  store float %77, ptr %78, align 4, !tbaa !34
  store float %74, ptr %8, align 4, !tbaa !34
  %79 = load float, ptr %76, align 4, !tbaa !34
  %80 = getelementptr inbounds float, ptr %8, i64 1
  store float %79, ptr %80, align 4, !tbaa !34
  %81 = load float, ptr %78, align 4, !tbaa !34
  br label %570

82:                                               ; preds = %62
  %83 = fcmp olt float %58, 0.000000e+00
  store float %23, ptr %5, align 4, !tbaa !34
  %84 = load float, ptr %24, align 4, !tbaa !34
  %85 = getelementptr inbounds float, ptr %5, i64 1
  store float %84, ptr %85, align 4, !tbaa !34
  %86 = load float, ptr %28, align 4, !tbaa !34
  %87 = getelementptr inbounds float, ptr %5, i64 2
  store float %86, ptr %87, align 4, !tbaa !34
  %88 = load float, ptr %3, align 4, !tbaa !34
  store float %88, ptr %6, align 4, !tbaa !34
  %89 = load float, ptr %33, align 4, !tbaa !34
  %90 = getelementptr inbounds float, ptr %6, i64 1
  store float %89, ptr %90, align 4, !tbaa !34
  %91 = load float, ptr %37, align 4, !tbaa !34
  %92 = getelementptr inbounds float, ptr %6, i64 2
  store float %91, ptr %92, align 4, !tbaa !34
  br i1 %83, label %93, label %125

93:                                               ; preds = %82
  %94 = fsub float %55, %58
  %95 = fdiv float %55, %94
  %96 = load float, ptr %3, align 4, !tbaa !34
  %97 = load float, ptr %4, align 4, !tbaa !34
  %98 = fsub float %97, %96
  %99 = tail call float @llvm.fmuladd.f32(float %95, float %98, float %96)
  store float %99, ptr %7, align 4, !tbaa !34
  %100 = load float, ptr %33, align 4, !tbaa !34
  %101 = load float, ptr %42, align 4, !tbaa !34
  %102 = fsub float %101, %100
  %103 = tail call float @llvm.fmuladd.f32(float %95, float %102, float %100)
  %104 = getelementptr inbounds float, ptr %7, i64 1
  store float %103, ptr %104, align 4, !tbaa !34
  %105 = load float, ptr %37, align 4, !tbaa !34
  %106 = load float, ptr %46, align 4, !tbaa !34
  %107 = fsub float %106, %105
  %108 = tail call float @llvm.fmuladd.f32(float %95, float %107, float %105)
  %109 = getelementptr inbounds float, ptr %7, i64 2
  store float %108, ptr %109, align 4, !tbaa !34
  %110 = fsub float %52, %58
  %111 = fdiv float %52, %110
  %112 = load float, ptr %2, align 4, !tbaa !34
  %113 = load float, ptr %4, align 4, !tbaa !34
  %114 = fsub float %113, %112
  %115 = tail call float @llvm.fmuladd.f32(float %111, float %114, float %112)
  store float %115, ptr %8, align 4, !tbaa !34
  %116 = load float, ptr %24, align 4, !tbaa !34
  %117 = load float, ptr %42, align 4, !tbaa !34
  %118 = fsub float %117, %116
  %119 = tail call float @llvm.fmuladd.f32(float %111, float %118, float %116)
  %120 = getelementptr inbounds float, ptr %8, i64 1
  store float %119, ptr %120, align 4, !tbaa !34
  %121 = load float, ptr %28, align 4, !tbaa !34
  %122 = load float, ptr %46, align 4, !tbaa !34
  %123 = fsub float %122, %121
  %124 = tail call float @llvm.fmuladd.f32(float %111, float %123, float %121)
  br label %570

125:                                              ; preds = %82
  %126 = load float, ptr %4, align 4, !tbaa !34
  store float %126, ptr %7, align 4, !tbaa !34
  %127 = load float, ptr %42, align 4, !tbaa !34
  %128 = getelementptr inbounds float, ptr %7, i64 1
  store float %127, ptr %128, align 4, !tbaa !34
  %129 = load float, ptr %46, align 4, !tbaa !34
  %130 = getelementptr inbounds float, ptr %7, i64 2
  store float %129, ptr %130, align 4, !tbaa !34
  store float %126, ptr %8, align 4, !tbaa !34
  %131 = load float, ptr %128, align 4, !tbaa !34
  %132 = getelementptr inbounds float, ptr %8, i64 1
  store float %131, ptr %132, align 4, !tbaa !34
  %133 = load float, ptr %130, align 4, !tbaa !34
  br label %570

134:                                              ; preds = %60
  %135 = fcmp olt float %55, 0.000000e+00
  %136 = fcmp ogt float %58, 0.000000e+00
  br i1 %135, label %137, label %230

137:                                              ; preds = %134
  br i1 %136, label %138, label %179

138:                                              ; preds = %137
  store float %23, ptr %5, align 4, !tbaa !34
  %139 = load float, ptr %24, align 4, !tbaa !34
  %140 = getelementptr inbounds float, ptr %5, i64 1
  store float %139, ptr %140, align 4, !tbaa !34
  %141 = load float, ptr %28, align 4, !tbaa !34
  %142 = getelementptr inbounds float, ptr %5, i64 2
  store float %141, ptr %142, align 4, !tbaa !34
  %143 = fsub float %52, %55
  %144 = fdiv float %52, %143
  %145 = load float, ptr %2, align 4, !tbaa !34
  %146 = load float, ptr %3, align 4, !tbaa !34
  %147 = fsub float %146, %145
  %148 = tail call float @llvm.fmuladd.f32(float %144, float %147, float %145)
  store float %148, ptr %6, align 4, !tbaa !34
  %149 = load float, ptr %24, align 4, !tbaa !34
  %150 = load float, ptr %33, align 4, !tbaa !34
  %151 = fsub float %150, %149
  %152 = tail call float @llvm.fmuladd.f32(float %144, float %151, float %149)
  %153 = getelementptr inbounds float, ptr %6, i64 1
  store float %152, ptr %153, align 4, !tbaa !34
  %154 = load float, ptr %28, align 4, !tbaa !34
  %155 = load float, ptr %37, align 4, !tbaa !34
  %156 = fsub float %155, %154
  %157 = tail call float @llvm.fmuladd.f32(float %144, float %156, float %154)
  %158 = getelementptr inbounds float, ptr %6, i64 2
  store float %157, ptr %158, align 4, !tbaa !34
  %159 = fsub float %55, %58
  %160 = fdiv float %55, %159
  %161 = load float, ptr %3, align 4, !tbaa !34
  %162 = load float, ptr %4, align 4, !tbaa !34
  %163 = fsub float %162, %161
  %164 = tail call float @llvm.fmuladd.f32(float %160, float %163, float %161)
  store float %164, ptr %7, align 4, !tbaa !34
  %165 = load float, ptr %33, align 4, !tbaa !34
  %166 = load float, ptr %42, align 4, !tbaa !34
  %167 = fsub float %166, %165
  %168 = tail call float @llvm.fmuladd.f32(float %160, float %167, float %165)
  %169 = getelementptr inbounds float, ptr %7, i64 1
  store float %168, ptr %169, align 4, !tbaa !34
  %170 = load float, ptr %37, align 4, !tbaa !34
  %171 = load float, ptr %46, align 4, !tbaa !34
  %172 = fsub float %171, %170
  %173 = tail call float @llvm.fmuladd.f32(float %160, float %172, float %170)
  %174 = getelementptr inbounds float, ptr %7, i64 2
  store float %173, ptr %174, align 4, !tbaa !34
  %175 = load float, ptr %4, align 4, !tbaa !34
  store float %175, ptr %8, align 4, !tbaa !34
  %176 = load float, ptr %42, align 4, !tbaa !34
  %177 = getelementptr inbounds float, ptr %8, i64 1
  store float %176, ptr %177, align 4, !tbaa !34
  %178 = load float, ptr %46, align 4, !tbaa !34
  br label %570

179:                                              ; preds = %137
  %180 = fcmp olt float %58, 0.000000e+00
  store float %23, ptr %5, align 4, !tbaa !34
  %181 = load float, ptr %24, align 4, !tbaa !34
  %182 = getelementptr inbounds float, ptr %5, i64 1
  store float %181, ptr %182, align 4, !tbaa !34
  %183 = load float, ptr %28, align 4, !tbaa !34
  %184 = getelementptr inbounds float, ptr %5, i64 2
  store float %183, ptr %184, align 4, !tbaa !34
  %185 = fsub float %52, %55
  %186 = fdiv float %52, %185
  %187 = load float, ptr %2, align 4, !tbaa !34
  %188 = load float, ptr %3, align 4, !tbaa !34
  %189 = fsub float %188, %187
  %190 = tail call float @llvm.fmuladd.f32(float %186, float %189, float %187)
  store float %190, ptr %6, align 4, !tbaa !34
  %191 = load float, ptr %24, align 4, !tbaa !34
  %192 = load float, ptr %33, align 4, !tbaa !34
  %193 = fsub float %192, %191
  %194 = tail call float @llvm.fmuladd.f32(float %186, float %193, float %191)
  %195 = getelementptr inbounds float, ptr %6, i64 1
  store float %194, ptr %195, align 4, !tbaa !34
  %196 = load float, ptr %28, align 4, !tbaa !34
  %197 = load float, ptr %37, align 4, !tbaa !34
  %198 = fsub float %197, %196
  %199 = tail call float @llvm.fmuladd.f32(float %186, float %198, float %196)
  %200 = getelementptr inbounds float, ptr %6, i64 2
  store float %199, ptr %200, align 4, !tbaa !34
  br i1 %180, label %201, label %221

201:                                              ; preds = %179
  %202 = fsub float %52, %58
  %203 = fdiv float %52, %202
  %204 = load float, ptr %2, align 4, !tbaa !34
  %205 = load float, ptr %4, align 4, !tbaa !34
  %206 = fsub float %205, %204
  %207 = tail call float @llvm.fmuladd.f32(float %203, float %206, float %204)
  store float %207, ptr %7, align 4, !tbaa !34
  %208 = load float, ptr %24, align 4, !tbaa !34
  %209 = load float, ptr %42, align 4, !tbaa !34
  %210 = fsub float %209, %208
  %211 = tail call float @llvm.fmuladd.f32(float %203, float %210, float %208)
  %212 = getelementptr inbounds float, ptr %7, i64 1
  store float %211, ptr %212, align 4, !tbaa !34
  %213 = load float, ptr %28, align 4, !tbaa !34
  %214 = load float, ptr %46, align 4, !tbaa !34
  %215 = fsub float %214, %213
  %216 = tail call float @llvm.fmuladd.f32(float %203, float %215, float %213)
  %217 = getelementptr inbounds float, ptr %7, i64 2
  store float %216, ptr %217, align 4, !tbaa !34
  store float %207, ptr %8, align 4, !tbaa !34
  %218 = load float, ptr %212, align 4, !tbaa !34
  %219 = getelementptr inbounds float, ptr %8, i64 1
  store float %218, ptr %219, align 4, !tbaa !34
  %220 = load float, ptr %217, align 4, !tbaa !34
  br label %570

221:                                              ; preds = %179
  %222 = load float, ptr %4, align 4, !tbaa !34
  store float %222, ptr %7, align 4, !tbaa !34
  %223 = load float, ptr %42, align 4, !tbaa !34
  %224 = getelementptr inbounds float, ptr %7, i64 1
  store float %223, ptr %224, align 4, !tbaa !34
  %225 = load float, ptr %46, align 4, !tbaa !34
  %226 = getelementptr inbounds float, ptr %7, i64 2
  store float %225, ptr %226, align 4, !tbaa !34
  store float %222, ptr %8, align 4, !tbaa !34
  %227 = load float, ptr %224, align 4, !tbaa !34
  %228 = getelementptr inbounds float, ptr %8, i64 1
  store float %227, ptr %228, align 4, !tbaa !34
  %229 = load float, ptr %226, align 4, !tbaa !34
  br label %570

230:                                              ; preds = %134
  br i1 %136, label %231, label %249

231:                                              ; preds = %230
  store float %23, ptr %5, align 4, !tbaa !34
  %232 = load float, ptr %24, align 4, !tbaa !34
  %233 = getelementptr inbounds float, ptr %5, i64 1
  store float %232, ptr %233, align 4, !tbaa !34
  %234 = load float, ptr %28, align 4, !tbaa !34
  %235 = getelementptr inbounds float, ptr %5, i64 2
  store float %234, ptr %235, align 4, !tbaa !34
  %236 = load float, ptr %3, align 4, !tbaa !34
  store float %236, ptr %6, align 4, !tbaa !34
  %237 = load float, ptr %33, align 4, !tbaa !34
  %238 = getelementptr inbounds float, ptr %6, i64 1
  store float %237, ptr %238, align 4, !tbaa !34
  %239 = load float, ptr %37, align 4, !tbaa !34
  %240 = getelementptr inbounds float, ptr %6, i64 2
  store float %239, ptr %240, align 4, !tbaa !34
  %241 = load float, ptr %4, align 4, !tbaa !34
  store float %241, ptr %7, align 4, !tbaa !34
  %242 = load float, ptr %42, align 4, !tbaa !34
  %243 = getelementptr inbounds float, ptr %7, i64 1
  store float %242, ptr %243, align 4, !tbaa !34
  %244 = load float, ptr %46, align 4, !tbaa !34
  %245 = getelementptr inbounds float, ptr %7, i64 2
  store float %244, ptr %245, align 4, !tbaa !34
  store float %241, ptr %8, align 4, !tbaa !34
  %246 = load float, ptr %243, align 4, !tbaa !34
  %247 = getelementptr inbounds float, ptr %8, i64 1
  store float %246, ptr %247, align 4, !tbaa !34
  %248 = load float, ptr %245, align 4, !tbaa !34
  br label %570

249:                                              ; preds = %230
  %250 = fcmp olt float %58, 0.000000e+00
  store float %23, ptr %5, align 4, !tbaa !34
  %251 = load float, ptr %24, align 4, !tbaa !34
  %252 = getelementptr inbounds float, ptr %5, i64 1
  store float %251, ptr %252, align 4, !tbaa !34
  %253 = load float, ptr %28, align 4, !tbaa !34
  %254 = getelementptr inbounds float, ptr %5, i64 2
  store float %253, ptr %254, align 4, !tbaa !34
  %255 = load float, ptr %3, align 4, !tbaa !34
  store float %255, ptr %6, align 4, !tbaa !34
  %256 = load float, ptr %33, align 4, !tbaa !34
  %257 = getelementptr inbounds float, ptr %6, i64 1
  store float %256, ptr %257, align 4, !tbaa !34
  %258 = load float, ptr %37, align 4, !tbaa !34
  %259 = getelementptr inbounds float, ptr %6, i64 2
  store float %258, ptr %259, align 4, !tbaa !34
  br i1 %250, label %260, label %280

260:                                              ; preds = %249
  %261 = fsub float %52, %58
  %262 = fdiv float %52, %261
  %263 = load float, ptr %2, align 4, !tbaa !34
  %264 = load float, ptr %4, align 4, !tbaa !34
  %265 = fsub float %264, %263
  %266 = tail call float @llvm.fmuladd.f32(float %262, float %265, float %263)
  store float %266, ptr %7, align 4, !tbaa !34
  %267 = load float, ptr %24, align 4, !tbaa !34
  %268 = load float, ptr %42, align 4, !tbaa !34
  %269 = fsub float %268, %267
  %270 = tail call float @llvm.fmuladd.f32(float %262, float %269, float %267)
  %271 = getelementptr inbounds float, ptr %7, i64 1
  store float %270, ptr %271, align 4, !tbaa !34
  %272 = load float, ptr %28, align 4, !tbaa !34
  %273 = load float, ptr %46, align 4, !tbaa !34
  %274 = fsub float %273, %272
  %275 = tail call float @llvm.fmuladd.f32(float %262, float %274, float %272)
  %276 = getelementptr inbounds float, ptr %7, i64 2
  store float %275, ptr %276, align 4, !tbaa !34
  store float %266, ptr %8, align 4, !tbaa !34
  %277 = load float, ptr %271, align 4, !tbaa !34
  %278 = getelementptr inbounds float, ptr %8, i64 1
  store float %277, ptr %278, align 4, !tbaa !34
  %279 = load float, ptr %276, align 4, !tbaa !34
  br label %570

280:                                              ; preds = %249
  %281 = load float, ptr %4, align 4, !tbaa !34
  store float %281, ptr %7, align 4, !tbaa !34
  %282 = load float, ptr %42, align 4, !tbaa !34
  %283 = getelementptr inbounds float, ptr %7, i64 1
  store float %282, ptr %283, align 4, !tbaa !34
  %284 = load float, ptr %46, align 4, !tbaa !34
  %285 = getelementptr inbounds float, ptr %7, i64 2
  store float %284, ptr %285, align 4, !tbaa !34
  store float %281, ptr %8, align 4, !tbaa !34
  %286 = load float, ptr %283, align 4, !tbaa !34
  %287 = getelementptr inbounds float, ptr %8, i64 1
  store float %286, ptr %287, align 4, !tbaa !34
  %288 = load float, ptr %285, align 4, !tbaa !34
  br label %570

289:                                              ; preds = %9
  %290 = fcmp olt float %52, 0.000000e+00
  %291 = fcmp ogt float %55, 0.000000e+00
  br i1 %290, label %292, label %457

292:                                              ; preds = %289
  br i1 %291, label %293, label %385

293:                                              ; preds = %292
  %294 = fcmp ogt float %58, 0.000000e+00
  br i1 %294, label %295, label %335

295:                                              ; preds = %293
  %296 = fsub float %52, %55
  %297 = fdiv float %52, %296
  %298 = fsub float %32, %23
  %299 = tail call float @llvm.fmuladd.f32(float %297, float %298, float %23)
  store float %299, ptr %5, align 4, !tbaa !34
  %300 = load float, ptr %24, align 4, !tbaa !34
  %301 = load float, ptr %33, align 4, !tbaa !34
  %302 = fsub float %301, %300
  %303 = tail call float @llvm.fmuladd.f32(float %297, float %302, float %300)
  %304 = getelementptr inbounds float, ptr %5, i64 1
  store float %303, ptr %304, align 4, !tbaa !34
  %305 = load float, ptr %28, align 4, !tbaa !34
  %306 = load float, ptr %37, align 4, !tbaa !34
  %307 = fsub float %306, %305
  %308 = tail call float @llvm.fmuladd.f32(float %297, float %307, float %305)
  %309 = getelementptr inbounds float, ptr %5, i64 2
  store float %308, ptr %309, align 4, !tbaa !34
  %310 = load float, ptr %3, align 4, !tbaa !34
  store float %310, ptr %6, align 4, !tbaa !34
  %311 = load float, ptr %33, align 4, !tbaa !34
  %312 = getelementptr inbounds float, ptr %6, i64 1
  store float %311, ptr %312, align 4, !tbaa !34
  %313 = load float, ptr %37, align 4, !tbaa !34
  %314 = getelementptr inbounds float, ptr %6, i64 2
  store float %313, ptr %314, align 4, !tbaa !34
  %315 = load float, ptr %4, align 4, !tbaa !34
  store float %315, ptr %7, align 4, !tbaa !34
  %316 = load float, ptr %42, align 4, !tbaa !34
  %317 = getelementptr inbounds float, ptr %7, i64 1
  store float %316, ptr %317, align 4, !tbaa !34
  %318 = load float, ptr %46, align 4, !tbaa !34
  %319 = getelementptr inbounds float, ptr %7, i64 2
  store float %318, ptr %319, align 4, !tbaa !34
  %320 = fsub float %52, %58
  %321 = fdiv float %52, %320
  %322 = load float, ptr %2, align 4, !tbaa !34
  %323 = load float, ptr %4, align 4, !tbaa !34
  %324 = fsub float %323, %322
  %325 = tail call float @llvm.fmuladd.f32(float %321, float %324, float %322)
  store float %325, ptr %8, align 4, !tbaa !34
  %326 = load float, ptr %24, align 4, !tbaa !34
  %327 = load float, ptr %42, align 4, !tbaa !34
  %328 = fsub float %327, %326
  %329 = tail call float @llvm.fmuladd.f32(float %321, float %328, float %326)
  %330 = getelementptr inbounds float, ptr %8, i64 1
  store float %329, ptr %330, align 4, !tbaa !34
  %331 = load float, ptr %28, align 4, !tbaa !34
  %332 = load float, ptr %46, align 4, !tbaa !34
  %333 = fsub float %332, %331
  %334 = tail call float @llvm.fmuladd.f32(float %321, float %333, float %331)
  br label %570

335:                                              ; preds = %293
  %336 = fcmp olt float %58, 0.000000e+00
  %337 = fsub float %52, %55
  %338 = fdiv float %52, %337
  %339 = fsub float %32, %23
  %340 = tail call float @llvm.fmuladd.f32(float %338, float %339, float %23)
  store float %340, ptr %5, align 4, !tbaa !34
  %341 = load float, ptr %24, align 4, !tbaa !34
  %342 = load float, ptr %33, align 4, !tbaa !34
  %343 = fsub float %342, %341
  %344 = tail call float @llvm.fmuladd.f32(float %338, float %343, float %341)
  %345 = getelementptr inbounds float, ptr %5, i64 1
  store float %344, ptr %345, align 4, !tbaa !34
  %346 = load float, ptr %28, align 4, !tbaa !34
  %347 = load float, ptr %37, align 4, !tbaa !34
  %348 = fsub float %347, %346
  %349 = tail call float @llvm.fmuladd.f32(float %338, float %348, float %346)
  %350 = getelementptr inbounds float, ptr %5, i64 2
  store float %349, ptr %350, align 4, !tbaa !34
  %351 = load float, ptr %3, align 4, !tbaa !34
  store float %351, ptr %6, align 4, !tbaa !34
  %352 = load float, ptr %33, align 4, !tbaa !34
  %353 = getelementptr inbounds float, ptr %6, i64 1
  store float %352, ptr %353, align 4, !tbaa !34
  %354 = load float, ptr %37, align 4, !tbaa !34
  %355 = getelementptr inbounds float, ptr %6, i64 2
  store float %354, ptr %355, align 4, !tbaa !34
  br i1 %336, label %356, label %376

356:                                              ; preds = %335
  %357 = fsub float %55, %58
  %358 = fdiv float %55, %357
  %359 = load float, ptr %3, align 4, !tbaa !34
  %360 = load float, ptr %4, align 4, !tbaa !34
  %361 = fsub float %360, %359
  %362 = tail call float @llvm.fmuladd.f32(float %358, float %361, float %359)
  store float %362, ptr %7, align 4, !tbaa !34
  %363 = load float, ptr %33, align 4, !tbaa !34
  %364 = load float, ptr %42, align 4, !tbaa !34
  %365 = fsub float %364, %363
  %366 = tail call float @llvm.fmuladd.f32(float %358, float %365, float %363)
  %367 = getelementptr inbounds float, ptr %7, i64 1
  store float %366, ptr %367, align 4, !tbaa !34
  %368 = load float, ptr %37, align 4, !tbaa !34
  %369 = load float, ptr %46, align 4, !tbaa !34
  %370 = fsub float %369, %368
  %371 = tail call float @llvm.fmuladd.f32(float %358, float %370, float %368)
  %372 = getelementptr inbounds float, ptr %7, i64 2
  store float %371, ptr %372, align 4, !tbaa !34
  store float %362, ptr %8, align 4, !tbaa !34
  %373 = load float, ptr %367, align 4, !tbaa !34
  %374 = getelementptr inbounds float, ptr %8, i64 1
  store float %373, ptr %374, align 4, !tbaa !34
  %375 = load float, ptr %372, align 4, !tbaa !34
  br label %570

376:                                              ; preds = %335
  %377 = load float, ptr %4, align 4, !tbaa !34
  store float %377, ptr %7, align 4, !tbaa !34
  %378 = load float, ptr %42, align 4, !tbaa !34
  %379 = getelementptr inbounds float, ptr %7, i64 1
  store float %378, ptr %379, align 4, !tbaa !34
  %380 = load float, ptr %46, align 4, !tbaa !34
  %381 = getelementptr inbounds float, ptr %7, i64 2
  store float %380, ptr %381, align 4, !tbaa !34
  store float %377, ptr %8, align 4, !tbaa !34
  %382 = load float, ptr %379, align 4, !tbaa !34
  %383 = getelementptr inbounds float, ptr %8, i64 1
  store float %382, ptr %383, align 4, !tbaa !34
  %384 = load float, ptr %381, align 4, !tbaa !34
  br label %570

385:                                              ; preds = %292
  %386 = fcmp olt float %55, 0.000000e+00
  %387 = fcmp ogt float %58, 0.000000e+00
  br i1 %386, label %388, label %428

388:                                              ; preds = %385
  br i1 %387, label %389, label %573

389:                                              ; preds = %388
  %390 = fsub float %52, %58
  %391 = fdiv float %52, %390
  %392 = fsub float %41, %23
  %393 = tail call float @llvm.fmuladd.f32(float %391, float %392, float %23)
  store float %393, ptr %5, align 4, !tbaa !34
  %394 = load float, ptr %24, align 4, !tbaa !34
  %395 = load float, ptr %42, align 4, !tbaa !34
  %396 = fsub float %395, %394
  %397 = tail call float @llvm.fmuladd.f32(float %391, float %396, float %394)
  %398 = getelementptr inbounds float, ptr %5, i64 1
  store float %397, ptr %398, align 4, !tbaa !34
  %399 = load float, ptr %28, align 4, !tbaa !34
  %400 = load float, ptr %46, align 4, !tbaa !34
  %401 = fsub float %400, %399
  %402 = tail call float @llvm.fmuladd.f32(float %391, float %401, float %399)
  %403 = getelementptr inbounds float, ptr %5, i64 2
  store float %402, ptr %403, align 4, !tbaa !34
  %404 = fsub float %55, %58
  %405 = fdiv float %55, %404
  %406 = load float, ptr %3, align 4, !tbaa !34
  %407 = load float, ptr %4, align 4, !tbaa !34
  %408 = fsub float %407, %406
  %409 = tail call float @llvm.fmuladd.f32(float %405, float %408, float %406)
  store float %409, ptr %6, align 4, !tbaa !34
  %410 = load float, ptr %33, align 4, !tbaa !34
  %411 = load float, ptr %42, align 4, !tbaa !34
  %412 = fsub float %411, %410
  %413 = tail call float @llvm.fmuladd.f32(float %405, float %412, float %410)
  %414 = getelementptr inbounds float, ptr %6, i64 1
  store float %413, ptr %414, align 4, !tbaa !34
  %415 = load float, ptr %37, align 4, !tbaa !34
  %416 = load float, ptr %46, align 4, !tbaa !34
  %417 = fsub float %416, %415
  %418 = tail call float @llvm.fmuladd.f32(float %405, float %417, float %415)
  %419 = getelementptr inbounds float, ptr %6, i64 2
  store float %418, ptr %419, align 4, !tbaa !34
  %420 = load float, ptr %4, align 4, !tbaa !34
  store float %420, ptr %7, align 4, !tbaa !34
  %421 = load float, ptr %42, align 4, !tbaa !34
  %422 = getelementptr inbounds float, ptr %7, i64 1
  store float %421, ptr %422, align 4, !tbaa !34
  %423 = load float, ptr %46, align 4, !tbaa !34
  %424 = getelementptr inbounds float, ptr %7, i64 2
  store float %423, ptr %424, align 4, !tbaa !34
  store float %420, ptr %8, align 4, !tbaa !34
  %425 = load float, ptr %422, align 4, !tbaa !34
  %426 = getelementptr inbounds float, ptr %8, i64 1
  store float %425, ptr %426, align 4, !tbaa !34
  %427 = load float, ptr %424, align 4, !tbaa !34
  br label %570

428:                                              ; preds = %385
  br i1 %387, label %429, label %573

429:                                              ; preds = %428
  %430 = fsub float %52, %58
  %431 = fdiv float %52, %430
  %432 = fsub float %41, %23
  %433 = tail call float @llvm.fmuladd.f32(float %431, float %432, float %23)
  store float %433, ptr %5, align 4, !tbaa !34
  %434 = load float, ptr %24, align 4, !tbaa !34
  %435 = load float, ptr %42, align 4, !tbaa !34
  %436 = fsub float %435, %434
  %437 = tail call float @llvm.fmuladd.f32(float %431, float %436, float %434)
  %438 = getelementptr inbounds float, ptr %5, i64 1
  store float %437, ptr %438, align 4, !tbaa !34
  %439 = load float, ptr %28, align 4, !tbaa !34
  %440 = load float, ptr %46, align 4, !tbaa !34
  %441 = fsub float %440, %439
  %442 = tail call float @llvm.fmuladd.f32(float %431, float %441, float %439)
  %443 = getelementptr inbounds float, ptr %5, i64 2
  store float %442, ptr %443, align 4, !tbaa !34
  %444 = load float, ptr %3, align 4, !tbaa !34
  store float %444, ptr %6, align 4, !tbaa !34
  %445 = load float, ptr %33, align 4, !tbaa !34
  %446 = getelementptr inbounds float, ptr %6, i64 1
  store float %445, ptr %446, align 4, !tbaa !34
  %447 = load float, ptr %37, align 4, !tbaa !34
  %448 = getelementptr inbounds float, ptr %6, i64 2
  store float %447, ptr %448, align 4, !tbaa !34
  %449 = load float, ptr %4, align 4, !tbaa !34
  store float %449, ptr %7, align 4, !tbaa !34
  %450 = load float, ptr %42, align 4, !tbaa !34
  %451 = getelementptr inbounds float, ptr %7, i64 1
  store float %450, ptr %451, align 4, !tbaa !34
  %452 = load float, ptr %46, align 4, !tbaa !34
  %453 = getelementptr inbounds float, ptr %7, i64 2
  store float %452, ptr %453, align 4, !tbaa !34
  store float %449, ptr %8, align 4, !tbaa !34
  %454 = load float, ptr %451, align 4, !tbaa !34
  %455 = getelementptr inbounds float, ptr %8, i64 1
  store float %454, ptr %455, align 4, !tbaa !34
  %456 = load float, ptr %453, align 4, !tbaa !34
  br label %570

457:                                              ; preds = %289
  br i1 %291, label %458, label %518

458:                                              ; preds = %457
  %459 = fcmp ogt float %58, 0.000000e+00
  br i1 %459, label %460, label %478

460:                                              ; preds = %458
  store float %23, ptr %5, align 4, !tbaa !34
  %461 = load float, ptr %24, align 4, !tbaa !34
  %462 = getelementptr inbounds float, ptr %5, i64 1
  store float %461, ptr %462, align 4, !tbaa !34
  %463 = load float, ptr %28, align 4, !tbaa !34
  %464 = getelementptr inbounds float, ptr %5, i64 2
  store float %463, ptr %464, align 4, !tbaa !34
  %465 = load float, ptr %3, align 4, !tbaa !34
  store float %465, ptr %6, align 4, !tbaa !34
  %466 = load float, ptr %33, align 4, !tbaa !34
  %467 = getelementptr inbounds float, ptr %6, i64 1
  store float %466, ptr %467, align 4, !tbaa !34
  %468 = load float, ptr %37, align 4, !tbaa !34
  %469 = getelementptr inbounds float, ptr %6, i64 2
  store float %468, ptr %469, align 4, !tbaa !34
  %470 = load float, ptr %4, align 4, !tbaa !34
  store float %470, ptr %7, align 4, !tbaa !34
  %471 = load float, ptr %42, align 4, !tbaa !34
  %472 = getelementptr inbounds float, ptr %7, i64 1
  store float %471, ptr %472, align 4, !tbaa !34
  %473 = load float, ptr %46, align 4, !tbaa !34
  %474 = getelementptr inbounds float, ptr %7, i64 2
  store float %473, ptr %474, align 4, !tbaa !34
  store float %470, ptr %8, align 4, !tbaa !34
  %475 = load float, ptr %472, align 4, !tbaa !34
  %476 = getelementptr inbounds float, ptr %8, i64 1
  store float %475, ptr %476, align 4, !tbaa !34
  %477 = load float, ptr %474, align 4, !tbaa !34
  br label %570

478:                                              ; preds = %458
  %479 = fcmp olt float %58, 0.000000e+00
  store float %23, ptr %5, align 4, !tbaa !34
  %480 = load float, ptr %24, align 4, !tbaa !34
  %481 = getelementptr inbounds float, ptr %5, i64 1
  store float %480, ptr %481, align 4, !tbaa !34
  %482 = load float, ptr %28, align 4, !tbaa !34
  %483 = getelementptr inbounds float, ptr %5, i64 2
  store float %482, ptr %483, align 4, !tbaa !34
  %484 = load float, ptr %3, align 4, !tbaa !34
  store float %484, ptr %6, align 4, !tbaa !34
  %485 = load float, ptr %33, align 4, !tbaa !34
  %486 = getelementptr inbounds float, ptr %6, i64 1
  store float %485, ptr %486, align 4, !tbaa !34
  %487 = load float, ptr %37, align 4, !tbaa !34
  %488 = getelementptr inbounds float, ptr %6, i64 2
  store float %487, ptr %488, align 4, !tbaa !34
  br i1 %479, label %489, label %509

489:                                              ; preds = %478
  %490 = fsub float %55, %58
  %491 = fdiv float %55, %490
  %492 = load float, ptr %3, align 4, !tbaa !34
  %493 = load float, ptr %4, align 4, !tbaa !34
  %494 = fsub float %493, %492
  %495 = tail call float @llvm.fmuladd.f32(float %491, float %494, float %492)
  store float %495, ptr %7, align 4, !tbaa !34
  %496 = load float, ptr %33, align 4, !tbaa !34
  %497 = load float, ptr %42, align 4, !tbaa !34
  %498 = fsub float %497, %496
  %499 = tail call float @llvm.fmuladd.f32(float %491, float %498, float %496)
  %500 = getelementptr inbounds float, ptr %7, i64 1
  store float %499, ptr %500, align 4, !tbaa !34
  %501 = load float, ptr %37, align 4, !tbaa !34
  %502 = load float, ptr %46, align 4, !tbaa !34
  %503 = fsub float %502, %501
  %504 = tail call float @llvm.fmuladd.f32(float %491, float %503, float %501)
  %505 = getelementptr inbounds float, ptr %7, i64 2
  store float %504, ptr %505, align 4, !tbaa !34
  store float %495, ptr %8, align 4, !tbaa !34
  %506 = load float, ptr %500, align 4, !tbaa !34
  %507 = getelementptr inbounds float, ptr %8, i64 1
  store float %506, ptr %507, align 4, !tbaa !34
  %508 = load float, ptr %505, align 4, !tbaa !34
  br label %570

509:                                              ; preds = %478
  %510 = load float, ptr %4, align 4, !tbaa !34
  store float %510, ptr %7, align 4, !tbaa !34
  %511 = load float, ptr %42, align 4, !tbaa !34
  %512 = getelementptr inbounds float, ptr %7, i64 1
  store float %511, ptr %512, align 4, !tbaa !34
  %513 = load float, ptr %46, align 4, !tbaa !34
  %514 = getelementptr inbounds float, ptr %7, i64 2
  store float %513, ptr %514, align 4, !tbaa !34
  store float %510, ptr %8, align 4, !tbaa !34
  %515 = load float, ptr %512, align 4, !tbaa !34
  %516 = getelementptr inbounds float, ptr %8, i64 1
  store float %515, ptr %516, align 4, !tbaa !34
  %517 = load float, ptr %514, align 4, !tbaa !34
  br label %570

518:                                              ; preds = %457
  %519 = fcmp olt float %55, 0.000000e+00
  %520 = fcmp ogt float %58, 0.000000e+00
  br i1 %519, label %521, label %551

521:                                              ; preds = %518
  br i1 %520, label %522, label %573

522:                                              ; preds = %521
  store float %23, ptr %5, align 4, !tbaa !34
  %523 = load float, ptr %24, align 4, !tbaa !34
  %524 = getelementptr inbounds float, ptr %5, i64 1
  store float %523, ptr %524, align 4, !tbaa !34
  %525 = load float, ptr %28, align 4, !tbaa !34
  %526 = getelementptr inbounds float, ptr %5, i64 2
  store float %525, ptr %526, align 4, !tbaa !34
  %527 = fsub float %55, %58
  %528 = fdiv float %55, %527
  %529 = load float, ptr %3, align 4, !tbaa !34
  %530 = load float, ptr %4, align 4, !tbaa !34
  %531 = fsub float %530, %529
  %532 = tail call float @llvm.fmuladd.f32(float %528, float %531, float %529)
  store float %532, ptr %6, align 4, !tbaa !34
  %533 = load float, ptr %33, align 4, !tbaa !34
  %534 = load float, ptr %42, align 4, !tbaa !34
  %535 = fsub float %534, %533
  %536 = tail call float @llvm.fmuladd.f32(float %528, float %535, float %533)
  %537 = getelementptr inbounds float, ptr %6, i64 1
  store float %536, ptr %537, align 4, !tbaa !34
  %538 = load float, ptr %37, align 4, !tbaa !34
  %539 = load float, ptr %46, align 4, !tbaa !34
  %540 = fsub float %539, %538
  %541 = tail call float @llvm.fmuladd.f32(float %528, float %540, float %538)
  %542 = getelementptr inbounds float, ptr %6, i64 2
  store float %541, ptr %542, align 4, !tbaa !34
  %543 = load float, ptr %4, align 4, !tbaa !34
  store float %543, ptr %7, align 4, !tbaa !34
  %544 = load float, ptr %42, align 4, !tbaa !34
  %545 = getelementptr inbounds float, ptr %7, i64 1
  store float %544, ptr %545, align 4, !tbaa !34
  %546 = load float, ptr %46, align 4, !tbaa !34
  %547 = getelementptr inbounds float, ptr %7, i64 2
  store float %546, ptr %547, align 4, !tbaa !34
  store float %543, ptr %8, align 4, !tbaa !34
  %548 = load float, ptr %545, align 4, !tbaa !34
  %549 = getelementptr inbounds float, ptr %8, i64 1
  store float %548, ptr %549, align 4, !tbaa !34
  %550 = load float, ptr %547, align 4, !tbaa !34
  br label %570

551:                                              ; preds = %518
  br i1 %520, label %552, label %573

552:                                              ; preds = %551
  store float %23, ptr %5, align 4, !tbaa !34
  %553 = load float, ptr %24, align 4, !tbaa !34
  %554 = getelementptr inbounds float, ptr %5, i64 1
  store float %553, ptr %554, align 4, !tbaa !34
  %555 = load float, ptr %28, align 4, !tbaa !34
  %556 = getelementptr inbounds float, ptr %5, i64 2
  store float %555, ptr %556, align 4, !tbaa !34
  %557 = load float, ptr %3, align 4, !tbaa !34
  store float %557, ptr %6, align 4, !tbaa !34
  %558 = load float, ptr %33, align 4, !tbaa !34
  %559 = getelementptr inbounds float, ptr %6, i64 1
  store float %558, ptr %559, align 4, !tbaa !34
  %560 = load float, ptr %37, align 4, !tbaa !34
  %561 = getelementptr inbounds float, ptr %6, i64 2
  store float %560, ptr %561, align 4, !tbaa !34
  %562 = load float, ptr %4, align 4, !tbaa !34
  store float %562, ptr %7, align 4, !tbaa !34
  %563 = load float, ptr %42, align 4, !tbaa !34
  %564 = getelementptr inbounds float, ptr %7, i64 1
  store float %563, ptr %564, align 4, !tbaa !34
  %565 = load float, ptr %46, align 4, !tbaa !34
  %566 = getelementptr inbounds float, ptr %7, i64 2
  store float %565, ptr %566, align 4, !tbaa !34
  store float %562, ptr %8, align 4, !tbaa !34
  %567 = load float, ptr %564, align 4, !tbaa !34
  %568 = getelementptr inbounds float, ptr %8, i64 1
  store float %567, ptr %568, align 4, !tbaa !34
  %569 = load float, ptr %566, align 4, !tbaa !34
  br label %570

570:                                              ; preds = %389, %429, %295, %376, %356, %522, %552, %460, %509, %489, %93, %125, %64, %231, %280, %260, %138, %221, %201
  %571 = phi float [ %220, %201 ], [ %229, %221 ], [ %178, %138 ], [ %279, %260 ], [ %288, %280 ], [ %248, %231 ], [ %81, %64 ], [ %133, %125 ], [ %124, %93 ], [ %508, %489 ], [ %517, %509 ], [ %477, %460 ], [ %569, %552 ], [ %550, %522 ], [ %375, %356 ], [ %384, %376 ], [ %334, %295 ], [ %456, %429 ], [ %427, %389 ]
  %572 = getelementptr inbounds float, ptr %8, i64 2
  store float %571, ptr %572, align 4, !tbaa !34
  br label %573

573:                                              ; preds = %570, %551, %521, %428, %388
  %574 = phi i8 [ 0, %388 ], [ 0, %428 ], [ 0, %521 ], [ 0, %551 ], [ 1, %570 ]
  ret i8 %574
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @form_factor_quad(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) local_unnamed_addr #1 {
  %7 = load float, ptr %2, align 4, !tbaa !34
  %8 = load float, ptr %0, align 4, !tbaa !34
  %9 = fsub float %7, %8
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fsub float %11, %13
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %0, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fsub float %16, %18
  %20 = load float, ptr %3, align 4, !tbaa !34
  %21 = fsub float %20, %8
  %22 = getelementptr inbounds float, ptr %3, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = fsub float %23, %13
  %25 = getelementptr inbounds float, ptr %3, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = fsub float %26, %18
  %28 = load float, ptr %4, align 4, !tbaa !34
  %29 = fsub float %28, %8
  %30 = getelementptr inbounds float, ptr %4, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = fsub float %31, %13
  %33 = getelementptr inbounds float, ptr %4, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = fsub float %34, %18
  %36 = load float, ptr %5, align 4, !tbaa !34
  %37 = fsub float %36, %8
  %38 = getelementptr inbounds float, ptr %5, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !34
  %40 = fsub float %39, %13
  %41 = getelementptr inbounds float, ptr %5, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !34
  %43 = fsub float %42, %18
  %44 = fmul float %14, %14
  %45 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %44)
  %46 = tail call float @llvm.fmuladd.f32(float %19, float %19, float %45)
  %47 = fcmp ogt float %46, 0x38AA95A5C0000000
  br i1 %47, label %48, label %54

48:                                               ; preds = %6
  %49 = tail call float @sqrtf(float noundef %46) #17
  %50 = fdiv float 1.000000e+00, %49
  %51 = fmul float %9, %50
  %52 = fmul float %14, %50
  %53 = fmul float %19, %50
  br label %54

54:                                               ; preds = %6, %48
  %55 = phi float [ %53, %48 ], [ %19, %6 ]
  %56 = phi float [ %52, %48 ], [ %14, %6 ]
  %57 = phi float [ %51, %48 ], [ %9, %6 ]
  %58 = fmul float %24, %24
  %59 = tail call float @llvm.fmuladd.f32(float %21, float %21, float %58)
  %60 = tail call float @llvm.fmuladd.f32(float %27, float %27, float %59)
  %61 = fcmp ogt float %60, 0x38AA95A5C0000000
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = tail call float @sqrtf(float noundef %60) #17
  %64 = fdiv float 1.000000e+00, %63
  %65 = fmul float %21, %64
  %66 = fmul float %24, %64
  %67 = fmul float %27, %64
  br label %68

68:                                               ; preds = %54, %62
  %69 = phi float [ %67, %62 ], [ %27, %54 ]
  %70 = phi float [ %66, %62 ], [ %24, %54 ]
  %71 = phi float [ %65, %62 ], [ %21, %54 ]
  %72 = fmul float %32, %32
  %73 = tail call float @llvm.fmuladd.f32(float %29, float %29, float %72)
  %74 = tail call float @llvm.fmuladd.f32(float %35, float %35, float %73)
  %75 = fcmp ogt float %74, 0x38AA95A5C0000000
  br i1 %75, label %76, label %82

76:                                               ; preds = %68
  %77 = tail call float @sqrtf(float noundef %74) #17
  %78 = fdiv float 1.000000e+00, %77
  %79 = fmul float %29, %78
  %80 = fmul float %32, %78
  %81 = fmul float %35, %78
  br label %82

82:                                               ; preds = %68, %76
  %83 = phi float [ %81, %76 ], [ %35, %68 ]
  %84 = phi float [ %80, %76 ], [ %32, %68 ]
  %85 = phi float [ %79, %76 ], [ %29, %68 ]
  %86 = fmul float %40, %40
  %87 = tail call float @llvm.fmuladd.f32(float %37, float %37, float %86)
  %88 = tail call float @llvm.fmuladd.f32(float %43, float %43, float %87)
  %89 = fcmp ogt float %88, 0x38AA95A5C0000000
  br i1 %89, label %90, label %96

90:                                               ; preds = %82
  %91 = tail call float @sqrtf(float noundef %88) #17
  %92 = fdiv float 1.000000e+00, %91
  %93 = fmul float %37, %92
  %94 = fmul float %40, %92
  %95 = fmul float %43, %92
  br label %96

96:                                               ; preds = %82, %90
  %97 = phi float [ %95, %90 ], [ %43, %82 ]
  %98 = phi float [ %94, %90 ], [ %40, %82 ]
  %99 = phi float [ %93, %90 ], [ %37, %82 ]
  %100 = fneg float %69
  %101 = fmul float %56, %100
  %102 = tail call float @llvm.fmuladd.f32(float %70, float %55, float %101)
  %103 = fneg float %71
  %104 = fmul float %55, %103
  %105 = tail call float @llvm.fmuladd.f32(float %69, float %57, float %104)
  %106 = fneg float %70
  %107 = fmul float %57, %106
  %108 = tail call float @llvm.fmuladd.f32(float %71, float %56, float %107)
  %109 = fmul float %105, %105
  %110 = tail call float @llvm.fmuladd.f32(float %102, float %102, float %109)
  %111 = tail call float @llvm.fmuladd.f32(float %108, float %108, float %110)
  %112 = fcmp ogt float %111, 0x38AA95A5C0000000
  br i1 %112, label %113, label %119

113:                                              ; preds = %96
  %114 = tail call float @sqrtf(float noundef %111) #17
  %115 = fdiv float 1.000000e+00, %114
  %116 = fmul float %102, %115
  %117 = fmul float %105, %115
  %118 = fmul float %108, %115
  br label %119

119:                                              ; preds = %96, %113
  %120 = phi float [ %118, %113 ], [ %108, %96 ]
  %121 = phi float [ %117, %113 ], [ %105, %96 ]
  %122 = phi float [ %116, %113 ], [ %102, %96 ]
  %123 = fneg float %83
  %124 = fmul float %70, %123
  %125 = tail call float @llvm.fmuladd.f32(float %84, float %69, float %124)
  %126 = fneg float %85
  %127 = fmul float %69, %126
  %128 = tail call float @llvm.fmuladd.f32(float %83, float %71, float %127)
  %129 = fneg float %84
  %130 = fmul float %71, %129
  %131 = tail call float @llvm.fmuladd.f32(float %85, float %70, float %130)
  %132 = fmul float %128, %128
  %133 = tail call float @llvm.fmuladd.f32(float %125, float %125, float %132)
  %134 = tail call float @llvm.fmuladd.f32(float %131, float %131, float %133)
  %135 = fcmp ogt float %134, 0x38AA95A5C0000000
  br i1 %135, label %136, label %142

136:                                              ; preds = %119
  %137 = tail call float @sqrtf(float noundef %134) #17
  %138 = fdiv float 1.000000e+00, %137
  %139 = fmul float %125, %138
  %140 = fmul float %128, %138
  %141 = fmul float %131, %138
  br label %142

142:                                              ; preds = %119, %136
  %143 = phi float [ %141, %136 ], [ %131, %119 ]
  %144 = phi float [ %140, %136 ], [ %128, %119 ]
  %145 = phi float [ %139, %136 ], [ %125, %119 ]
  %146 = fneg float %97
  %147 = fmul float %84, %146
  %148 = tail call float @llvm.fmuladd.f32(float %98, float %83, float %147)
  %149 = fneg float %99
  %150 = fmul float %83, %149
  %151 = tail call float @llvm.fmuladd.f32(float %97, float %85, float %150)
  %152 = fneg float %98
  %153 = fmul float %85, %152
  %154 = tail call float @llvm.fmuladd.f32(float %99, float %84, float %153)
  %155 = fmul float %151, %151
  %156 = tail call float @llvm.fmuladd.f32(float %148, float %148, float %155)
  %157 = tail call float @llvm.fmuladd.f32(float %154, float %154, float %156)
  %158 = fcmp ogt float %157, 0x38AA95A5C0000000
  br i1 %158, label %159, label %165

159:                                              ; preds = %142
  %160 = tail call float @sqrtf(float noundef %157) #17
  %161 = fdiv float 1.000000e+00, %160
  %162 = fmul float %148, %161
  %163 = fmul float %151, %161
  %164 = fmul float %154, %161
  br label %165

165:                                              ; preds = %142, %159
  %166 = phi float [ %164, %159 ], [ %154, %142 ]
  %167 = phi float [ %163, %159 ], [ %151, %142 ]
  %168 = phi float [ %162, %159 ], [ %148, %142 ]
  %169 = fneg float %55
  %170 = fmul float %98, %169
  %171 = tail call float @llvm.fmuladd.f32(float %56, float %97, float %170)
  %172 = fneg float %57
  %173 = fmul float %97, %172
  %174 = tail call float @llvm.fmuladd.f32(float %55, float %99, float %173)
  %175 = fneg float %56
  %176 = fmul float %99, %175
  %177 = tail call float @llvm.fmuladd.f32(float %57, float %98, float %176)
  %178 = fmul float %174, %174
  %179 = tail call float @llvm.fmuladd.f32(float %171, float %171, float %178)
  %180 = tail call float @llvm.fmuladd.f32(float %177, float %177, float %179)
  %181 = fcmp ogt float %180, 0x38AA95A5C0000000
  br i1 %181, label %182, label %188

182:                                              ; preds = %165
  %183 = tail call float @sqrtf(float noundef %180) #17
  %184 = fdiv float 1.000000e+00, %183
  %185 = fmul float %171, %184
  %186 = fmul float %174, %184
  %187 = fmul float %177, %184
  br label %188

188:                                              ; preds = %165, %182
  %189 = phi float [ %187, %182 ], [ %177, %165 ]
  %190 = phi float [ %186, %182 ], [ %174, %165 ]
  %191 = phi float [ %185, %182 ], [ %171, %165 ]
  %192 = fmul float %56, %70
  %193 = tail call float @llvm.fmuladd.f32(float %57, float %71, float %192)
  %194 = tail call float @llvm.fmuladd.f32(float %55, float %69, float %193)
  %195 = fcmp ugt float %194, -1.000000e+00
  br i1 %195, label %196, label %200

196:                                              ; preds = %188
  %197 = fcmp ult float %194, 1.000000e+00
  br i1 %197, label %198, label %200

198:                                              ; preds = %196
  %199 = tail call float @acosf(float noundef %194) #17
  br label %200

200:                                              ; preds = %188, %196, %198
  %201 = phi float [ %199, %198 ], [ 0x400921FB60000000, %188 ], [ 0.000000e+00, %196 ]
  %202 = fmul float %70, %84
  %203 = tail call float @llvm.fmuladd.f32(float %71, float %85, float %202)
  %204 = tail call float @llvm.fmuladd.f32(float %69, float %83, float %203)
  %205 = fcmp ugt float %204, -1.000000e+00
  br i1 %205, label %206, label %210

206:                                              ; preds = %200
  %207 = fcmp ult float %204, 1.000000e+00
  br i1 %207, label %208, label %210

208:                                              ; preds = %206
  %209 = tail call float @acosf(float noundef %204) #17
  br label %210

210:                                              ; preds = %200, %206, %208
  %211 = phi float [ %209, %208 ], [ 0x400921FB60000000, %200 ], [ 0.000000e+00, %206 ]
  %212 = fmul float %84, %98
  %213 = tail call float @llvm.fmuladd.f32(float %85, float %99, float %212)
  %214 = tail call float @llvm.fmuladd.f32(float %83, float %97, float %213)
  %215 = fcmp ugt float %214, -1.000000e+00
  br i1 %215, label %216, label %220

216:                                              ; preds = %210
  %217 = fcmp ult float %214, 1.000000e+00
  br i1 %217, label %218, label %220

218:                                              ; preds = %216
  %219 = tail call float @acosf(float noundef %214) #17
  br label %220

220:                                              ; preds = %210, %216, %218
  %221 = phi float [ %219, %218 ], [ 0x400921FB60000000, %210 ], [ 0.000000e+00, %216 ]
  %222 = fmul float %56, %98
  %223 = tail call float @llvm.fmuladd.f32(float %99, float %57, float %222)
  %224 = tail call float @llvm.fmuladd.f32(float %97, float %55, float %223)
  %225 = fcmp ugt float %224, -1.000000e+00
  br i1 %225, label %226, label %230

226:                                              ; preds = %220
  %227 = fcmp ult float %224, 1.000000e+00
  br i1 %227, label %228, label %230

228:                                              ; preds = %226
  %229 = tail call float @acosf(float noundef %224) #17
  br label %230

230:                                              ; preds = %220, %226, %228
  %231 = phi float [ %229, %228 ], [ 0x400921FB60000000, %220 ], [ 0.000000e+00, %226 ]
  %232 = load float, ptr %1, align 4, !tbaa !34
  %233 = getelementptr inbounds float, ptr %1, i64 1
  %234 = load float, ptr %233, align 4, !tbaa !34
  %235 = fmul float %121, %234
  %236 = tail call float @llvm.fmuladd.f32(float %232, float %122, float %235)
  %237 = getelementptr inbounds float, ptr %1, i64 2
  %238 = load float, ptr %237, align 4, !tbaa !34
  %239 = tail call float @llvm.fmuladd.f32(float %238, float %120, float %236)
  %240 = fmul float %144, %234
  %241 = tail call float @llvm.fmuladd.f32(float %232, float %145, float %240)
  %242 = tail call float @llvm.fmuladd.f32(float %238, float %143, float %241)
  %243 = fmul float %167, %234
  %244 = tail call float @llvm.fmuladd.f32(float %232, float %168, float %243)
  %245 = tail call float @llvm.fmuladd.f32(float %238, float %166, float %244)
  %246 = fmul float %190, %234
  %247 = tail call float @llvm.fmuladd.f32(float %232, float %191, float %246)
  %248 = tail call float @llvm.fmuladd.f32(float %238, float %189, float %247)
  %249 = fmul float %211, %242
  %250 = tail call float @llvm.fmuladd.f32(float %201, float %239, float %249)
  %251 = tail call float @llvm.fmuladd.f32(float %221, float %245, float %250)
  %252 = tail call float @llvm.fmuladd.f32(float %231, float %248, float %251)
  %253 = fmul float %252, 5.000000e-01
  %254 = fdiv float %253, 0x400921FB60000000
  %255 = fcmp ogt float %254, 0.000000e+00
  %256 = select i1 %255, float %254, float 0.000000e+00
  ret float %256
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @form_factor_hemi_poly(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr noundef readonly %5) local_unnamed_addr #1 {
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #17
  %11 = call zeroext i8 @form_factor_visible_quad(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10), !range !48
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = call float @form_factor_quad(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10)
  %15 = fadd float %14, 0.000000e+00
  br label %16

16:                                               ; preds = %13, %6
  %17 = phi float [ %15, %13 ], [ 0.000000e+00, %6 ]
  %18 = icmp eq ptr %5, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = call zeroext i8 @form_factor_visible_quad(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10), !range !48
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = call float @form_factor_quad(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10)
  %24 = fadd float %17, %23
  br label %25

25:                                               ; preds = %22, %19, %16
  %26 = phi float [ %24, %22 ], [ %17, %19 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  ret float %26
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @is_quad_convex_v3(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 {
  %5 = alloca [4 x [2 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #17
  %7 = load float, ptr %0, align 4, !tbaa !34
  %8 = load float, ptr %1, align 4, !tbaa !34
  %9 = fsub float %7, %8
  %10 = load float, ptr %2, align 4, !tbaa !34
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fsub float %13, %15
  %17 = getelementptr inbounds float, ptr %2, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fsub float %15, %18
  %20 = getelementptr inbounds float, ptr %0, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = getelementptr inbounds float, ptr %1, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = fsub float %21, %23
  %25 = getelementptr inbounds float, ptr %2, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = fsub float %23, %26
  %28 = fneg float %24
  %29 = fmul float %19, %28
  %30 = tail call float @llvm.fmuladd.f32(float %16, float %27, float %29)
  %31 = fneg float %9
  %32 = fmul float %27, %31
  %33 = tail call float @llvm.fmuladd.f32(float %24, float %11, float %32)
  %34 = fneg float %16
  %35 = fmul float %11, %34
  %36 = tail call float @llvm.fmuladd.f32(float %9, float %19, float %35)
  %37 = fmul float %33, %33
  %38 = tail call float @llvm.fmuladd.f32(float %30, float %30, float %37)
  %39 = tail call float @llvm.fmuladd.f32(float %36, float %36, float %38)
  %40 = fcmp ogt float %39, 0x38AA95A5C0000000
  br i1 %40, label %41, label %48

41:                                               ; preds = %4
  %42 = tail call float @sqrtf(float noundef %39) #17
  %43 = fdiv float 1.000000e+00, %42
  %44 = fmul float %30, %43
  %45 = fmul float %33, %43
  %46 = fmul float %36, %43
  %47 = fcmp ogt float %42, 0x3E80000000000000
  br label %48

48:                                               ; preds = %4, %41
  %49 = phi float [ %45, %41 ], [ 0.000000e+00, %4 ]
  %50 = phi float [ %44, %41 ], [ 0.000000e+00, %4 ]
  %51 = phi float [ %46, %41 ], [ 0.000000e+00, %4 ]
  %52 = phi i1 [ %47, %41 ], [ false, %4 ]
  %53 = load float, ptr %0, align 4, !tbaa !34
  %54 = load float, ptr %2, align 4, !tbaa !34
  %55 = fsub float %53, %54
  %56 = load float, ptr %3, align 4, !tbaa !34
  %57 = fsub float %54, %56
  %58 = load float, ptr %12, align 4, !tbaa !34
  %59 = load float, ptr %17, align 4, !tbaa !34
  %60 = fsub float %58, %59
  %61 = getelementptr inbounds float, ptr %3, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !34
  %63 = fsub float %59, %62
  %64 = load float, ptr %20, align 4, !tbaa !34
  %65 = load float, ptr %25, align 4, !tbaa !34
  %66 = fsub float %64, %65
  %67 = getelementptr inbounds float, ptr %3, i64 2
  %68 = load float, ptr %67, align 4, !tbaa !34
  %69 = fsub float %65, %68
  %70 = fneg float %66
  %71 = fmul float %63, %70
  %72 = tail call float @llvm.fmuladd.f32(float %60, float %69, float %71)
  %73 = fneg float %55
  %74 = fmul float %69, %73
  %75 = tail call float @llvm.fmuladd.f32(float %66, float %57, float %74)
  %76 = fneg float %60
  %77 = fmul float %57, %76
  %78 = tail call float @llvm.fmuladd.f32(float %55, float %63, float %77)
  %79 = fmul float %75, %75
  %80 = tail call float @llvm.fmuladd.f32(float %72, float %72, float %79)
  %81 = tail call float @llvm.fmuladd.f32(float %78, float %78, float %80)
  %82 = fcmp ogt float %81, 0x38AA95A5C0000000
  br i1 %82, label %83, label %90

83:                                               ; preds = %48
  %84 = tail call float @sqrtf(float noundef %81) #17
  %85 = fdiv float 1.000000e+00, %84
  %86 = fmul float %72, %85
  %87 = fmul float %75, %85
  %88 = fmul float %78, %85
  %89 = fcmp ogt float %84, 0x3E80000000000000
  br label %90

90:                                               ; preds = %48, %83
  %91 = phi float [ %87, %83 ], [ 0.000000e+00, %48 ]
  %92 = phi float [ %86, %83 ], [ 0.000000e+00, %48 ]
  %93 = phi float [ %88, %83 ], [ 0.000000e+00, %48 ]
  %94 = phi i1 [ %89, %83 ], [ false, %48 ]
  br i1 %52, label %95, label %120

95:                                               ; preds = %90
  br i1 %94, label %96, label %121

96:                                               ; preds = %95
  %97 = fmul float %49, %91
  %98 = tail call float @llvm.fmuladd.f32(float %50, float %92, float %97)
  %99 = tail call float @llvm.fmuladd.f32(float %51, float %93, float %98)
  %100 = fcmp olt float %99, 0.000000e+00
  %101 = fneg float %92
  %102 = fneg float %91
  %103 = fneg float %93
  %104 = select i1 %100, float %103, float %93
  %105 = select i1 %100, float %102, float %91
  %106 = select i1 %100, float %101, float %92
  %107 = fadd float %50, %106
  %108 = fadd float %49, %105
  %109 = fadd float %51, %104
  %110 = fmul float %108, %108
  %111 = tail call float @llvm.fmuladd.f32(float %107, float %107, float %110)
  %112 = tail call float @llvm.fmuladd.f32(float %109, float %109, float %111)
  %113 = fcmp ogt float %112, 0x38AA95A5C0000000
  br i1 %113, label %114, label %121

114:                                              ; preds = %96
  %115 = tail call float @sqrtf(float noundef %112) #17
  %116 = fdiv float 1.000000e+00, %115
  %117 = fmul float %107, %116
  %118 = fmul float %108, %116
  %119 = fmul float %109, %116
  br label %121

120:                                              ; preds = %90
  br i1 %94, label %121, label %170

121:                                              ; preds = %120, %95, %114, %96
  %122 = phi float [ %119, %114 ], [ 0.000000e+00, %96 ], [ %51, %95 ], [ %93, %120 ]
  %123 = phi float [ %118, %114 ], [ 0.000000e+00, %96 ], [ %49, %95 ], [ %91, %120 ]
  %124 = phi float [ %117, %114 ], [ 0.000000e+00, %96 ], [ %50, %95 ], [ %92, %120 ]
  %125 = getelementptr inbounds [3 x float], ptr %6, i64 2
  store float %124, ptr %125, align 8, !tbaa !34
  %126 = getelementptr inbounds [3 x float], ptr %6, i64 2, i64 1
  store float %123, ptr %126, align 4, !tbaa !34
  %127 = getelementptr inbounds [3 x float], ptr %6, i64 2, i64 2
  store float %122, ptr %127, align 16, !tbaa !34
  %128 = getelementptr inbounds [3 x float], ptr %6, i64 1
  call void @ortho_basis_v3v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %128, ptr noundef nonnull %125) #17
  call void @transpose_m3(ptr noundef nonnull %6) #17
  call void @mul_v2_m3v3(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %0) #17
  %129 = getelementptr inbounds [4 x [2 x float]], ptr %5, i64 0, i64 1
  call void @mul_v2_m3v3(ptr noundef nonnull %129, ptr noundef nonnull %6, ptr noundef nonnull %1) #17
  %130 = getelementptr inbounds [4 x [2 x float]], ptr %5, i64 0, i64 2
  call void @mul_v2_m3v3(ptr noundef nonnull %130, ptr noundef nonnull %6, ptr noundef nonnull %2) #17
  %131 = getelementptr inbounds [4 x [2 x float]], ptr %5, i64 0, i64 3
  call void @mul_v2_m3v3(ptr noundef nonnull %131, ptr noundef nonnull %6, ptr noundef nonnull %3) #17
  %132 = load float, ptr %130, align 16, !tbaa !34
  %133 = load float, ptr %5, align 16, !tbaa !34
  %134 = fsub float %132, %133
  %135 = getelementptr inbounds [4 x [2 x float]], ptr %5, i64 0, i64 3, i64 1
  %136 = load float, ptr %135, align 4, !tbaa !34
  %137 = getelementptr inbounds [4 x [2 x float]], ptr %5, i64 0, i64 1, i64 1
  %138 = load float, ptr %137, align 4, !tbaa !34
  %139 = fsub float %136, %138
  %140 = getelementptr inbounds [4 x [2 x float]], ptr %5, i64 0, i64 2, i64 1
  %141 = load float, ptr %140, align 4, !tbaa !34
  %142 = getelementptr inbounds float, ptr %5, i64 1
  %143 = load float, ptr %142, align 4, !tbaa !34
  %144 = fsub float %141, %143
  %145 = load float, ptr %131, align 8, !tbaa !34
  %146 = load float, ptr %129, align 8, !tbaa !34
  %147 = fsub float %145, %146
  %148 = fneg float %144
  %149 = fmul float %147, %148
  %150 = call float @llvm.fmuladd.f32(float %134, float %139, float %149)
  %151 = fcmp oeq float %150, 0.000000e+00
  br i1 %151, label %170, label %152

152:                                              ; preds = %121
  %153 = fsub float %143, %138
  %154 = fsub float %133, %146
  %155 = fneg float %154
  %156 = fmul float %139, %155
  %157 = call float @llvm.fmuladd.f32(float %153, float %147, float %156)
  %158 = fdiv float %157, %150
  %159 = fmul float %144, %155
  %160 = call float @llvm.fmuladd.f32(float %153, float %134, float %159)
  %161 = fdiv float %160, %150
  %162 = fcmp oge float %158, 0.000000e+00
  %163 = fcmp ole float %158, 1.000000e+00
  %164 = and i1 %162, %163
  %165 = fcmp oge float %161, 0.000000e+00
  %166 = select i1 %164, i1 %165, i1 false
  %167 = fcmp ole float %161, 1.000000e+00
  %168 = select i1 %166, i1 %167, i1 false
  %169 = zext i1 %168 to i8
  br label %170

170:                                              ; preds = %152, %121, %120
  %171 = phi i8 [ 0, %120 ], [ 0, %121 ], [ %169, %152 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  ret i8 %171
}

declare void @mul_v2_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @is_quad_convex_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #8 {
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = load float, ptr %0, align 4, !tbaa !34
  %7 = fsub float %5, %6
  %8 = getelementptr inbounds float, ptr %3, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fsub float %9, %11
  %13 = getelementptr inbounds float, ptr %2, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %0, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fsub float %14, %16
  %18 = load float, ptr %3, align 4, !tbaa !34
  %19 = load float, ptr %1, align 4, !tbaa !34
  %20 = fsub float %18, %19
  %21 = fneg float %17
  %22 = fmul float %20, %21
  %23 = tail call float @llvm.fmuladd.f32(float %7, float %12, float %22)
  %24 = fcmp oeq float %23, 0.000000e+00
  br i1 %24, label %43, label %25

25:                                               ; preds = %4
  %26 = fsub float %16, %11
  %27 = fsub float %6, %19
  %28 = fneg float %27
  %29 = fmul float %12, %28
  %30 = tail call float @llvm.fmuladd.f32(float %26, float %20, float %29)
  %31 = fdiv float %30, %23
  %32 = fmul float %17, %28
  %33 = tail call float @llvm.fmuladd.f32(float %26, float %7, float %32)
  %34 = fdiv float %33, %23
  %35 = fcmp oge float %31, 0.000000e+00
  %36 = fcmp ole float %31, 1.000000e+00
  %37 = and i1 %35, %36
  %38 = fcmp oge float %34, 0.000000e+00
  %39 = select i1 %37, i1 %38, i1 false
  %40 = fcmp ole float %34, 1.000000e+00
  %41 = select i1 %39, i1 %40, i1 false
  %42 = zext i1 %41 to i8
  br label %43

43:                                               ; preds = %25, %4
  %44 = phi i8 [ 0, %4 ], [ %42, %25 ]
  ret i8 %44
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @is_poly_convex_v2(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %57, label %4

4:                                                ; preds = %2
  %5 = add i32 %1, -2
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds [2 x float], ptr %0, i64 %6
  %8 = getelementptr inbounds float, ptr %7, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = add i32 %1, -1
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [2 x float], ptr %0, i64 %11
  %13 = getelementptr inbounds float, ptr %12, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fsub float %9, %14
  %16 = load float, ptr %7, align 4, !tbaa !34
  %17 = load float, ptr %12, align 4, !tbaa !34
  %18 = fsub float %16, %17
  br label %22

19:                                               ; preds = %52
  %20 = add nuw i32 %25, 1
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %57, label %22, !llvm.loop !75

22:                                               ; preds = %4, %19
  %23 = phi ptr [ %56, %19 ], [ %12, %4 ]
  %24 = phi ptr [ %55, %19 ], [ %0, %4 ]
  %25 = phi i32 [ %20, %19 ], [ 0, %4 ]
  %26 = phi i32 [ %48, %19 ], [ 0, %4 ]
  %27 = phi float [ %54, %19 ], [ %18, %4 ]
  %28 = phi float [ %53, %19 ], [ %15, %4 ]
  %29 = load float, ptr %23, align 4, !tbaa !34
  %30 = load float, ptr %24, align 4, !tbaa !34
  %31 = fsub float %29, %30
  %32 = getelementptr inbounds float, ptr %23, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = getelementptr inbounds float, ptr %24, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = fsub float %33, %35
  %37 = fneg float %28
  %38 = fmul float %31, %37
  %39 = tail call float @llvm.fmuladd.f32(float %27, float %36, float %38)
  %40 = fcmp olt float %39, 0.000000e+00
  br i1 %40, label %41, label %43

41:                                               ; preds = %22
  %42 = or i32 %26, 1
  br label %47

43:                                               ; preds = %22
  %44 = fcmp ogt float %39, 0.000000e+00
  br i1 %44, label %45, label %47

45:                                               ; preds = %43
  %46 = or i32 %26, 2
  br label %47

47:                                               ; preds = %43, %45, %41
  %48 = phi i32 [ %42, %41 ], [ %46, %45 ], [ %26, %43 ]
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds float, ptr %24, i64 2
  br label %52

52:                                               ; preds = %47, %50
  %53 = phi float [ %28, %47 ], [ %36, %50 ]
  %54 = phi float [ %27, %47 ], [ %31, %50 ]
  %55 = phi ptr [ %24, %47 ], [ %51, %50 ]
  %56 = phi ptr [ %23, %47 ], [ %24, %50 ]
  br i1 %49, label %57, label %19

57:                                               ; preds = %52, %19, %2
  %58 = phi i8 [ 1, %2 ], [ 0, %52 ], [ 1, %19 ]
  ret i8 %58
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }

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
!38 = distinct !{!38, !39, !40}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = distinct !{!41, !39, !40}
!42 = !{!43, !43, i64 0}
!43 = !{!"int", !36, i64 0}
!44 = distinct !{!44, !39, !40}
!45 = distinct !{!45, !39, !40}
!46 = distinct !{!46, !39, !40}
!47 = !{i32 0, i32 3}
!48 = !{i8 0, i8 2}
!49 = distinct !{!49, !39, !40}
!50 = distinct !{!50, !39, !40}
!51 = distinct !{!51, !39, !40}
!52 = !{!53, !53, i64 0}
!53 = !{!"any pointer", !36, i64 0}
!54 = distinct !{!54, !39, !40}
!55 = distinct !{!55, !39, !40}
!56 = distinct !{!56, !39, !40}
!57 = distinct !{!57, !39, !40}
!58 = distinct !{!58, !39, !40}
!59 = distinct !{!59, !39, !40}
!60 = distinct !{!60, !39, !40}
!61 = distinct !{!61, !39, !40}
!62 = distinct !{!62, !39, !40}
!63 = distinct !{!63, !39, !40}
!64 = distinct !{!64, !39, !40}
!65 = distinct !{!65, !39, !40}
!66 = distinct !{!66, !39, !40}
!67 = distinct !{!67, !39, !40}
!68 = distinct !{!68, !39, !40}
!69 = distinct !{!69, !39, !40}
!70 = distinct !{!70, !39, !40}
!71 = distinct !{!71, !39, !40}
!72 = distinct !{!72, !39, !40}
!73 = distinct !{!73, !39, !40}
!74 = distinct !{!74, !39, !40}
!75 = distinct !{!75, !39, !40}
