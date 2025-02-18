; ModuleID = 'blender/source/blender/editors/armature/editarmature_generate.c'
source_filename = "blender/source/blender/editors/armature/editarmature_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.BArcIterator = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, i32, i32 }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }

@nextFixedSubdivision.stroke_length = internal unnamed_addr global float 0.000000e+00, align 4
@nextFixedSubdivision.current_length = internal unnamed_addr global float 0.000000e+00, align 4
@nextFixedSubdivision.n = internal unnamed_addr global i8 0, align 1
@.str = private unnamed_addr constant [5 x i8] c"Bone\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @setBoneRollFromNormal(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readnone %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = icmp eq ptr %1, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %4
  %8 = load float, ptr %1, align 4, !tbaa !34
  %9 = fcmp oeq float %8, 0.000000e+00
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fcmp oeq float %12, 0.000000e+00
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds float, ptr %1, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fcmp une float %16, 0.000000e+00
  br i1 %17, label %18, label %27

18:                                               ; preds = %10, %7, %14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #5
  store float %8, ptr %5, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %1, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = getelementptr inbounds float, ptr %5, i64 1
  store float %20, ptr %21, align 4, !tbaa !34
  %22 = getelementptr inbounds float, ptr %1, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds float, ptr %5, i64 2
  store float %23, ptr %24, align 4, !tbaa !34
  call void @mul_m3_v3(ptr noundef %3, ptr noundef nonnull %5) #5
  %25 = call float @ED_rollBoneToVector(ptr noundef %0, ptr noundef nonnull %5, i8 noundef zeroext 0) #5
  %26 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 6
  store float %25, ptr %26, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #5
  br label %27

27:                                               ; preds = %18, %14, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @ED_rollBoneToVector(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local float @calcArcCorrelation(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = sub nsw i32 %2, %1
  %9 = tail call i32 @llvm.abs.i32(i32 %8, i1 true)
  %10 = add nuw nsw i32 %9, 2
  %11 = icmp eq i32 %2, %1
  br i1 %11, label %118, label %12

12:                                               ; preds = %5
  %13 = icmp sgt i32 %1, %2
  br i1 %13, label %45, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.BArcIterator, ptr %0, i64 0, i32 7
  %16 = getelementptr inbounds float, ptr %3, i64 1
  %17 = getelementptr inbounds float, ptr %3, i64 2
  %18 = getelementptr inbounds float, ptr %4, i64 1
  %19 = getelementptr inbounds float, ptr %4, i64 2
  br label %20

20:                                               ; preds = %14, %20
  %21 = phi i32 [ %1, %14 ], [ %43, %20 ]
  %22 = phi float [ 0.000000e+00, %14 ], [ %42, %20 ]
  %23 = tail call ptr @IT_peek(ptr noundef %0, i32 noundef %21) #5
  %24 = load ptr, ptr %15, align 8, !tbaa !43
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = load float, ptr %3, align 4, !tbaa !34
  %27 = fsub float %25, %26
  %28 = getelementptr inbounds float, ptr %24, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = load float, ptr %16, align 4, !tbaa !34
  %31 = fsub float %29, %30
  %32 = getelementptr inbounds float, ptr %24, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = load float, ptr %17, align 4, !tbaa !34
  %35 = fsub float %33, %34
  %36 = load float, ptr %4, align 4, !tbaa !34
  %37 = load float, ptr %18, align 4, !tbaa !34
  %38 = fmul float %31, %37
  %39 = tail call float @llvm.fmuladd.f32(float %27, float %36, float %38)
  %40 = load float, ptr %19, align 4, !tbaa !34
  %41 = tail call float @llvm.fmuladd.f32(float %35, float %40, float %39)
  %42 = fadd float %22, %41
  %43 = add i32 %21, 1
  %44 = icmp eq i32 %21, %2
  br i1 %44, label %45, label %20, !llvm.loop !45

45:                                               ; preds = %20, %12
  %46 = phi float [ 0.000000e+00, %12 ], [ %42, %20 ]
  %47 = load float, ptr %4, align 4, !tbaa !34
  %48 = getelementptr inbounds float, ptr %4, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !34
  %50 = fmul float %49, %49
  %51 = tail call float @llvm.fmuladd.f32(float %47, float %47, float %50)
  %52 = getelementptr inbounds float, ptr %4, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !34
  %54 = tail call float @llvm.fmuladd.f32(float %53, float %53, float %51)
  %55 = fdiv float %46, %54
  %56 = fadd float %55, 1.000000e+00
  %57 = sitofp i32 %10 to float
  %58 = fdiv float %56, %57
  %59 = icmp sgt i32 %1, %2
  br i1 %59, label %109, label %60

60:                                               ; preds = %45
  %61 = getelementptr inbounds %struct.BArcIterator, ptr %0, i64 0, i32 7
  %62 = getelementptr inbounds float, ptr %3, i64 1
  %63 = getelementptr inbounds float, ptr %6, i64 1
  %64 = getelementptr inbounds float, ptr %3, i64 2
  %65 = getelementptr inbounds float, ptr %6, i64 2
  %66 = getelementptr inbounds float, ptr %7, i64 1
  %67 = getelementptr inbounds float, ptr %7, i64 2
  br label %68

68:                                               ; preds = %60, %68
  %69 = phi i32 [ %1, %60 ], [ %107, %68 ]
  %70 = phi float [ 0.000000e+00, %60 ], [ %106, %68 ]
  %71 = phi float [ 0.000000e+00, %60 ], [ %99, %68 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #5
  %72 = call ptr @IT_peek(ptr noundef %0, i32 noundef %69) #5
  %73 = load ptr, ptr %61, align 8, !tbaa !43
  %74 = load float, ptr %73, align 4, !tbaa !34
  %75 = load float, ptr %3, align 4, !tbaa !34
  %76 = fsub float %74, %75
  store float %76, ptr %6, align 4, !tbaa !34
  %77 = getelementptr inbounds float, ptr %73, i64 1
  %78 = load float, ptr %77, align 4, !tbaa !34
  %79 = load float, ptr %62, align 4, !tbaa !34
  %80 = fsub float %78, %79
  store float %80, ptr %63, align 4, !tbaa !34
  %81 = getelementptr inbounds float, ptr %73, i64 2
  %82 = load float, ptr %81, align 4, !tbaa !34
  %83 = load float, ptr %64, align 4, !tbaa !34
  %84 = fsub float %82, %83
  store float %84, ptr %65, align 4, !tbaa !34
  call void @project_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %4) #5
  %85 = load float, ptr %7, align 4, !tbaa !34
  %86 = load float, ptr %6, align 4, !tbaa !34
  %87 = fsub float %86, %85
  store float %87, ptr %6, align 4, !tbaa !34
  %88 = load float, ptr %66, align 4, !tbaa !34
  %89 = load float, ptr %63, align 4, !tbaa !34
  %90 = fsub float %89, %88
  store float %90, ptr %63, align 4, !tbaa !34
  %91 = load float, ptr %67, align 4, !tbaa !34
  %92 = load float, ptr %65, align 4, !tbaa !34
  %93 = fsub float %92, %91
  store float %93, ptr %65, align 4, !tbaa !34
  %94 = fmul float %88, %88
  %95 = call float @llvm.fmuladd.f32(float %85, float %85, float %94)
  %96 = call float @llvm.fmuladd.f32(float %91, float %91, float %95)
  %97 = call float @sqrtf(float noundef %96) #5
  %98 = fsub float %97, %58
  %99 = call float @llvm.fmuladd.f32(float %98, float %98, float %71)
  %100 = load float, ptr %6, align 4, !tbaa !34
  %101 = load float, ptr %63, align 4, !tbaa !34
  %102 = fmul float %101, %101
  %103 = call float @llvm.fmuladd.f32(float %100, float %100, float %102)
  %104 = load float, ptr %65, align 4, !tbaa !34
  %105 = call float @llvm.fmuladd.f32(float %104, float %104, float %103)
  %106 = fadd float %70, %105
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #5
  %107 = add i32 %69, 1
  %108 = icmp eq i32 %69, %2
  br i1 %108, label %109, label %68, !llvm.loop !48

109:                                              ; preds = %68, %45
  %110 = phi float [ 0.000000e+00, %45 ], [ %99, %68 ]
  %111 = phi float [ 0.000000e+00, %45 ], [ %106, %68 ]
  %112 = fsub float 1.000000e+00, %58
  %113 = fmul float %112, %112
  %114 = call float @llvm.fmuladd.f32(float %58, float %58, float %113)
  %115 = fadd float %114, %110
  %116 = fdiv float %111, %115
  %117 = fsub float 1.000000e+00, %116
  br label %118

118:                                              ; preds = %5, %109
  %119 = phi float [ %117, %109 ], [ 1.000000e+00, %5 ]
  ret float %119
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

declare ptr @IT_peek(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @nextFixedSubdivision(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readnone %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = load float, ptr @nextFixedSubdivision.stroke_length, align 4, !tbaa !34
  %8 = fcmp oeq float %7, 0.000000e+00
  br i1 %8, label %9, label %42

9:                                                ; preds = %6
  store float 0.000000e+00, ptr @nextFixedSubdivision.current_length, align 4, !tbaa !34
  %10 = tail call ptr @IT_peek(ptr noundef %1, i32 noundef %2) #5
  %11 = getelementptr inbounds %struct.BArcIterator, ptr %1, i64 0, i32 7
  %12 = icmp slt i32 %2, %3
  br i1 %12, label %13, label %41

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !43
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi i32 [ %18, %15 ], [ %2, %13 ]
  %17 = phi ptr [ %20, %15 ], [ %14, %13 ]
  %18 = add nsw i32 %16, 1
  %19 = tail call ptr @IT_peek(ptr noundef %1, i32 noundef %18) #5
  %20 = load ptr, ptr %11, align 8, !tbaa !43
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = load float, ptr %17, align 4, !tbaa !34
  %23 = fsub float %21, %22
  %24 = getelementptr inbounds float, ptr %20, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = getelementptr inbounds float, ptr %17, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = fsub float %25, %27
  %29 = getelementptr inbounds float, ptr %20, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = getelementptr inbounds float, ptr %17, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = fsub float %30, %32
  %34 = fmul float %28, %28
  %35 = tail call float @llvm.fmuladd.f32(float %23, float %23, float %34)
  %36 = tail call float @llvm.fmuladd.f32(float %33, float %33, float %35)
  %37 = tail call float @sqrtf(float noundef %36) #5
  %38 = load float, ptr @nextFixedSubdivision.stroke_length, align 4, !tbaa !34
  %39 = fadd float %37, %38
  store float %39, ptr @nextFixedSubdivision.stroke_length, align 4, !tbaa !34
  %40 = icmp eq i32 %18, %3
  br i1 %40, label %41, label %15, !llvm.loop !49

41:                                               ; preds = %15, %9
  store i8 0, ptr @nextFixedSubdivision.n, align 1, !tbaa !50
  store float 0.000000e+00, ptr @nextFixedSubdivision.current_length, align 4, !tbaa !34
  br label %42

42:                                               ; preds = %41, %6
  %43 = load i8, ptr @nextFixedSubdivision.n, align 1, !tbaa !50
  %44 = add i8 %43, 1
  store i8 %44, ptr @nextFixedSubdivision.n, align 1, !tbaa !50
  %45 = uitofp i8 %44 to float
  %46 = load float, ptr @nextFixedSubdivision.stroke_length, align 4, !tbaa !34
  %47 = fmul float %46, %45
  %48 = getelementptr inbounds %struct.ToolSettings, ptr %0, i64 0, i32 44
  %49 = load i8, ptr %48, align 2, !tbaa !51
  %50 = uitofp i8 %49 to float
  %51 = fdiv float %47, %50
  %52 = tail call ptr @IT_peek(ptr noundef %1, i32 noundef %2) #5
  %53 = getelementptr inbounds %struct.BArcIterator, ptr %1, i64 0, i32 7
  %54 = load ptr, ptr %53, align 8, !tbaa !43
  br label %55

55:                                               ; preds = %60, %42
  %56 = phi ptr [ %54, %42 ], [ %62, %60 ]
  %57 = phi i32 [ %2, %42 ], [ %58, %60 ]
  %58 = add nsw i32 %57, 1
  %59 = icmp slt i32 %58, %3
  br i1 %59, label %60, label %91

60:                                               ; preds = %55
  %61 = tail call ptr @IT_peek(ptr noundef %1, i32 noundef %58) #5
  %62 = load ptr, ptr %53, align 8, !tbaa !43
  %63 = load float, ptr %62, align 4, !tbaa !34
  %64 = load float, ptr %56, align 4, !tbaa !34
  %65 = fsub float %63, %64
  %66 = getelementptr inbounds float, ptr %62, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !34
  %68 = getelementptr inbounds float, ptr %56, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !34
  %70 = fsub float %67, %69
  %71 = getelementptr inbounds float, ptr %62, i64 2
  %72 = load float, ptr %71, align 4, !tbaa !34
  %73 = getelementptr inbounds float, ptr %56, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !34
  %75 = fsub float %72, %74
  %76 = fmul float %70, %70
  %77 = tail call float @llvm.fmuladd.f32(float %65, float %65, float %76)
  %78 = tail call float @llvm.fmuladd.f32(float %75, float %75, float %77)
  %79 = tail call float @sqrtf(float noundef %78) #5
  %80 = load float, ptr @nextFixedSubdivision.current_length, align 4, !tbaa !34
  %81 = fadd float %79, %80
  store float %81, ptr @nextFixedSubdivision.current_length, align 4, !tbaa !34
  %82 = fcmp ult float %81, %51
  br i1 %82, label %55, label %83, !llvm.loop !58

83:                                               ; preds = %60
  %84 = getelementptr inbounds float, ptr %62, i64 1
  %85 = getelementptr inbounds float, ptr %62, i64 2
  %86 = load float, ptr %62, align 4, !tbaa !34
  store float %86, ptr %5, align 4, !tbaa !34
  %87 = load float, ptr %84, align 4, !tbaa !34
  %88 = getelementptr inbounds float, ptr %5, i64 1
  store float %87, ptr %88, align 4, !tbaa !34
  %89 = load float, ptr %85, align 4, !tbaa !34
  %90 = getelementptr inbounds float, ptr %5, i64 2
  store float %89, ptr %90, align 4, !tbaa !34
  br label %92

91:                                               ; preds = %55
  store float 0.000000e+00, ptr @nextFixedSubdivision.stroke_length, align 4, !tbaa !34
  br label %92

92:                                               ; preds = %91, %83
  %93 = phi i32 [ %58, %83 ], [ -1, %91 ]
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @nextAdaptativeSubdivision(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %0, i64 0, i32 31
  %9 = load float, ptr %8, align 4, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #5
  %10 = tail call ptr @IT_peek(ptr noundef %1, i32 noundef %2) #5
  %11 = getelementptr inbounds %struct.BArcIterator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = add nsw i32 %2, 2
  %14 = icmp sgt i32 %13, %3
  br i1 %14, label %51, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds float, ptr %4, i64 1
  %17 = getelementptr inbounds float, ptr %7, i64 1
  %18 = getelementptr inbounds float, ptr %4, i64 2
  %19 = getelementptr inbounds float, ptr %7, i64 2
  br label %20

20:                                               ; preds = %15, %48
  %21 = phi i32 [ %13, %15 ], [ %49, %48 ]
  %22 = call ptr @IT_peek(ptr noundef %1, i32 noundef %21) #5
  %23 = load ptr, ptr %11, align 8, !tbaa !43
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = load float, ptr %4, align 4, !tbaa !34
  %26 = fsub float %24, %25
  store float %26, ptr %7, align 4, !tbaa !34
  %27 = getelementptr inbounds float, ptr %23, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = load float, ptr %16, align 4, !tbaa !34
  %30 = fsub float %28, %29
  store float %30, ptr %17, align 4, !tbaa !34
  %31 = getelementptr inbounds float, ptr %23, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = load float, ptr %18, align 4, !tbaa !34
  %34 = fsub float %32, %33
  store float %34, ptr %19, align 4, !tbaa !34
  %35 = call float @calcArcCorrelation(ptr noundef %1, i32 noundef %2, i32 noundef %21, ptr noundef %12, ptr noundef nonnull %7)
  %36 = fcmp olt float %35, %9
  br i1 %36, label %37, label %48

37:                                               ; preds = %20
  %38 = add nsw i32 %21, -1
  %39 = call ptr @IT_peek(ptr noundef %1, i32 noundef %38) #5
  %40 = load ptr, ptr %11, align 8, !tbaa !43
  %41 = load float, ptr %40, align 4, !tbaa !34
  store float %41, ptr %5, align 4, !tbaa !34
  %42 = getelementptr inbounds float, ptr %40, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !34
  %44 = getelementptr inbounds float, ptr %5, i64 1
  store float %43, ptr %44, align 4, !tbaa !34
  %45 = getelementptr inbounds float, ptr %40, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !34
  %47 = getelementptr inbounds float, ptr %5, i64 2
  store float %46, ptr %47, align 4, !tbaa !34
  br label %51

48:                                               ; preds = %20
  %49 = add i32 %21, 1
  %50 = icmp eq i32 %21, %3
  br i1 %50, label %51, label %20, !llvm.loop !60

51:                                               ; preds = %48, %6, %37
  %52 = phi i32 [ %38, %37 ], [ -1, %6 ], [ -1, %48 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #5
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define dso_local i32 @nextLengthSubdivision(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.ToolSettings, ptr %0, i64 0, i32 29
  %8 = load float, ptr %7, align 4, !tbaa !61
  %9 = add nsw i32 %2, 1
  %10 = getelementptr inbounds %struct.BArcIterator, ptr %1, i64 0, i32 7
  %11 = getelementptr inbounds float, ptr %4, i64 1
  %12 = getelementptr inbounds float, ptr %4, i64 2
  %13 = getelementptr inbounds float, ptr %5, i64 1
  %14 = getelementptr inbounds float, ptr %5, i64 2
  %15 = fneg float %8
  %16 = getelementptr inbounds float, ptr %5, i64 1
  %17 = getelementptr inbounds float, ptr %5, i64 2
  %18 = getelementptr inbounds float, ptr %5, i64 1
  %19 = getelementptr inbounds float, ptr %5, i64 2
  br label %20

20:                                               ; preds = %125, %6
  %21 = phi i32 [ %9, %6 ], [ %126, %125 ]
  %22 = phi i32 [ 1, %6 ], [ %127, %125 ]
  %23 = phi i32 [ undef, %6 ], [ %128, %125 ]
  %24 = icmp sgt i32 %21, %3
  br i1 %24, label %129, label %25

25:                                               ; preds = %20
  %26 = add nsw i32 %21, -1
  %27 = tail call ptr @IT_peek(ptr noundef %1, i32 noundef %26) #5
  %28 = load ptr, ptr %10, align 8, !tbaa !43
  %29 = tail call ptr @IT_peek(ptr noundef %1, i32 noundef %21) #5
  %30 = load ptr, ptr %10, align 8, !tbaa !43
  %31 = load float, ptr %4, align 4, !tbaa !34
  %32 = load float, ptr %30, align 4, !tbaa !34
  %33 = fsub float %31, %32
  %34 = load float, ptr %11, align 4, !tbaa !34
  %35 = getelementptr inbounds float, ptr %30, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = fsub float %34, %36
  %38 = load float, ptr %12, align 4, !tbaa !34
  %39 = getelementptr inbounds float, ptr %30, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = fsub float %38, %40
  %42 = fmul float %37, %37
  %43 = tail call float @llvm.fmuladd.f32(float %33, float %33, float %42)
  %44 = tail call float @llvm.fmuladd.f32(float %41, float %41, float %43)
  %45 = tail call float @sqrtf(float noundef %44) #5
  %46 = fcmp ule float %45, %8
  br i1 %46, label %123, label %47

47:                                               ; preds = %25
  %48 = icmp eq i32 %22, 0
  %49 = load float, ptr %30, align 4, !tbaa !34
  %50 = load float, ptr %28, align 4, !tbaa !34
  %51 = fsub float %49, %50
  %52 = load float, ptr %35, align 4, !tbaa !34
  %53 = getelementptr inbounds float, ptr %28, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !34
  %55 = fsub float %52, %54
  %56 = load float, ptr %39, align 4, !tbaa !34
  %57 = getelementptr inbounds float, ptr %28, i64 2
  %58 = load float, ptr %57, align 4, !tbaa !34
  %59 = fsub float %56, %58
  %60 = fmul float %55, %55
  %61 = tail call float @llvm.fmuladd.f32(float %51, float %51, float %60)
  %62 = tail call float @llvm.fmuladd.f32(float %59, float %59, float %61)
  br i1 %48, label %63, label %102

63:                                               ; preds = %47
  %64 = load float, ptr %4, align 4, !tbaa !34
  %65 = fsub float %50, %64
  %66 = load float, ptr %11, align 4, !tbaa !34
  %67 = fsub float %54, %66
  %68 = load float, ptr %12, align 4, !tbaa !34
  %69 = fsub float %58, %68
  %70 = fmul float %55, %67
  %71 = tail call float @llvm.fmuladd.f32(float %51, float %65, float %70)
  %72 = tail call float @llvm.fmuladd.f32(float %59, float %69, float %71)
  %73 = fmul float %72, 2.000000e+00
  %74 = fmul float %67, %67
  %75 = tail call float @llvm.fmuladd.f32(float %65, float %65, float %74)
  %76 = tail call float @llvm.fmuladd.f32(float %69, float %69, float %75)
  %77 = tail call float @llvm.fmuladd.f32(float %15, float %8, float %76)
  %78 = fmul float %62, -4.000000e+00
  %79 = fmul float %78, %77
  %80 = tail call float @llvm.fmuladd.f32(float %73, float %73, float %79)
  %81 = tail call float @sqrtf(float noundef %80) #5
  %82 = fsub float %81, %73
  %83 = fmul float %62, 2.000000e+00
  %84 = fdiv float %82, %83
  %85 = fcmp ord float %84, 0.000000e+00
  %86 = fcmp olt float %84, 1.000000e+00
  %87 = and i1 %85, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %63
  store float %51, ptr %5, align 4, !tbaa !34
  store float %55, ptr %18, align 4, !tbaa !34
  store float %59, ptr %19, align 4, !tbaa !34
  %89 = fmul float %51, %84
  store float %89, ptr %5, align 4, !tbaa !34
  %90 = fmul float %55, %84
  store float %90, ptr %18, align 4, !tbaa !34
  %91 = fmul float %59, %84
  store float %91, ptr %19, align 4, !tbaa !34
  %92 = load float, ptr %28, align 4, !tbaa !34
  %93 = fadd float %89, %92
  store float %93, ptr %5, align 4, !tbaa !34
  %94 = load float, ptr %53, align 4, !tbaa !34
  %95 = fadd float %90, %94
  store float %95, ptr %18, align 4, !tbaa !34
  %96 = load float, ptr %57, align 4, !tbaa !34
  %97 = fadd float %91, %96
  store float %97, ptr %19, align 4, !tbaa !34
  br label %125

98:                                               ; preds = %63
  %99 = load float, ptr %30, align 4, !tbaa !34
  store float %99, ptr %5, align 4, !tbaa !34
  %100 = load float, ptr %35, align 4, !tbaa !34
  store float %100, ptr %16, align 4, !tbaa !34
  %101 = load float, ptr %39, align 4, !tbaa !34
  store float %101, ptr %17, align 4, !tbaa !34
  br label %125

102:                                              ; preds = %47
  %103 = fcmp ogt float %62, 0x38AA95A5C0000000
  br i1 %103, label %104, label %110

104:                                              ; preds = %102
  %105 = tail call float @sqrtf(float noundef %62) #5
  %106 = fdiv float 1.000000e+00, %105
  %107 = fmul float %51, %106
  %108 = fmul float %55, %106
  %109 = fmul float %59, %106
  br label %110

110:                                              ; preds = %102, %104
  %111 = phi float [ %108, %104 ], [ 0.000000e+00, %102 ]
  %112 = phi float [ %107, %104 ], [ 0.000000e+00, %102 ]
  %113 = phi float [ %109, %104 ], [ 0.000000e+00, %102 ]
  store float %112, ptr %5, align 4, !tbaa !34
  store float %111, ptr %13, align 4, !tbaa !34
  store float %113, ptr %14, align 4, !tbaa !34
  %114 = fmul float %8, %112
  store float %114, ptr %5, align 4, !tbaa !34
  %115 = fmul float %8, %111
  store float %115, ptr %13, align 4, !tbaa !34
  %116 = fmul float %8, %113
  store float %116, ptr %14, align 4, !tbaa !34
  %117 = load float, ptr %4, align 4, !tbaa !34
  %118 = fadd float %114, %117
  store float %118, ptr %5, align 4, !tbaa !34
  %119 = load float, ptr %11, align 4, !tbaa !34
  %120 = fadd float %115, %119
  store float %120, ptr %13, align 4, !tbaa !34
  %121 = load float, ptr %12, align 4, !tbaa !34
  %122 = fadd float %116, %121
  store float %122, ptr %14, align 4, !tbaa !34
  br label %125

123:                                              ; preds = %25
  %124 = add nsw i32 %21, 1
  br label %125

125:                                              ; preds = %88, %98, %110, %123
  %126 = phi i32 [ %124, %123 ], [ %21, %110 ], [ %21, %98 ], [ %21, %88 ]
  %127 = phi i32 [ 0, %123 ], [ %22, %110 ], [ %22, %98 ], [ %22, %88 ]
  %128 = phi i32 [ %23, %123 ], [ %26, %110 ], [ %26, %98 ], [ %26, %88 ]
  br i1 %46, label %20, label %129, !llvm.loop !62

129:                                              ; preds = %20, %125
  %130 = phi i32 [ %128, %125 ], [ -1, %20 ]
  ret i32 %130
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @subdivideArcBy(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6) local_unnamed_addr #0 {
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = getelementptr inbounds %struct.BArcIterator, ptr %3, i64 0, i32 10
  %11 = load i32, ptr %10, align 4, !tbaa !63
  %12 = tail call ptr @IT_head(ptr noundef %3) #5
  %13 = tail call ptr @ED_armature_edit_bone_add(ptr noundef %1, ptr noundef nonnull @.str) #5
  %14 = getelementptr inbounds %struct.EditBone, ptr %13, i64 0, i32 7
  %15 = getelementptr inbounds %struct.BArcIterator, ptr %3, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = load float, ptr %16, align 4, !tbaa !34
  store float %17, ptr %14, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %16, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds %struct.EditBone, ptr %13, i64 0, i32 7, i64 1
  store float %19, ptr %20, align 4, !tbaa !34
  %21 = getelementptr inbounds float, ptr %16, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = getelementptr inbounds %struct.EditBone, ptr %13, i64 0, i32 7, i64 2
  store float %22, ptr %23, align 4, !tbaa !34
  %24 = getelementptr inbounds %struct.BArcIterator, ptr %3, i64 0, i32 9
  %25 = load float, ptr %24, align 8, !tbaa !64
  %26 = fcmp ogt float %25, 0x3E80000000000000
  br i1 %26, label %27, label %30

27:                                               ; preds = %7
  %28 = fmul float %25, 0x3FF3333340000000
  %29 = getelementptr inbounds %struct.EditBone, ptr %13, i64 0, i32 18
  store float %28, ptr %29, align 8, !tbaa !65
  br label %30

30:                                               ; preds = %27, %7
  %31 = getelementptr inbounds %struct.BArcIterator, ptr %3, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !66
  %33 = getelementptr inbounds %struct.EditBone, ptr %13, i64 0, i32 8
  %34 = tail call i32 %6(ptr noundef %0, ptr noundef %3, i32 noundef 0, i32 noundef %11, ptr noundef nonnull %14, ptr noundef nonnull %33) #5
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %90, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds float, ptr %9, i64 1
  %38 = getelementptr inbounds float, ptr %9, i64 2
  br label %39

39:                                               ; preds = %36, %85
  %40 = phi i32 [ %34, %36 ], [ %88, %85 ]
  %41 = phi ptr [ %32, %36 ], [ %86, %85 ]
  %42 = phi ptr [ %13, %36 ], [ %44, %85 ]
  %43 = call ptr @IT_peek(ptr noundef %3, i32 noundef %40) #5
  %44 = call ptr @ED_armature_edit_bone_add(ptr noundef %1, ptr noundef nonnull @.str) #5
  %45 = getelementptr inbounds %struct.EditBone, ptr %44, i64 0, i32 7
  %46 = getelementptr inbounds %struct.EditBone, ptr %42, i64 0, i32 8
  %47 = load float, ptr %46, align 4, !tbaa !34
  store float %47, ptr %45, align 4, !tbaa !34
  %48 = getelementptr inbounds %struct.EditBone, ptr %42, i64 0, i32 8, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !34
  %50 = getelementptr inbounds %struct.EditBone, ptr %44, i64 0, i32 7, i64 1
  store float %49, ptr %50, align 4, !tbaa !34
  %51 = getelementptr inbounds %struct.EditBone, ptr %42, i64 0, i32 8, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !34
  %53 = getelementptr inbounds %struct.EditBone, ptr %44, i64 0, i32 7, i64 2
  store float %52, ptr %53, align 4, !tbaa !34
  %54 = getelementptr inbounds %struct.EditBone, ptr %44, i64 0, i32 3
  store ptr %42, ptr %54, align 8, !tbaa !67
  %55 = getelementptr inbounds %struct.EditBone, ptr %44, i64 0, i32 9
  %56 = load i32, ptr %55, align 4, !tbaa !68
  %57 = or i32 %56, 16
  store i32 %57, ptr %55, align 4, !tbaa !68
  %58 = load float, ptr %24, align 8, !tbaa !64
  %59 = fcmp ogt float %58, 0x3E80000000000000
  br i1 %59, label %60, label %64

60:                                               ; preds = %39
  %61 = fmul float %58, 0x3FF3333340000000
  %62 = getelementptr inbounds %struct.EditBone, ptr %44, i64 0, i32 18
  store float %61, ptr %62, align 8, !tbaa !65
  %63 = getelementptr inbounds %struct.EditBone, ptr %42, i64 0, i32 19
  store float %61, ptr %63, align 4, !tbaa !69
  br label %64

64:                                               ; preds = %60, %39
  call void @mul_m4_v3(ptr noundef %4, ptr noundef nonnull %46) #5
  %65 = getelementptr inbounds %struct.EditBone, ptr %42, i64 0, i32 7
  call void @mul_m4_v3(ptr noundef %4, ptr noundef nonnull %65) #5
  %66 = icmp eq ptr %41, null
  br i1 %66, label %85, label %67

67:                                               ; preds = %64
  %68 = load float, ptr %41, align 4, !tbaa !34
  %69 = fcmp oeq float %68, 0.000000e+00
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = getelementptr inbounds float, ptr %41, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !34
  %73 = fcmp oeq float %72, 0.000000e+00
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = getelementptr inbounds float, ptr %41, i64 2
  %76 = load float, ptr %75, align 4, !tbaa !34
  %77 = fcmp une float %76, 0.000000e+00
  br i1 %77, label %78, label %85

78:                                               ; preds = %74, %70, %67
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #5
  store float %68, ptr %9, align 4, !tbaa !34
  %79 = getelementptr inbounds float, ptr %41, i64 1
  %80 = load float, ptr %79, align 4, !tbaa !34
  store float %80, ptr %37, align 4, !tbaa !34
  %81 = getelementptr inbounds float, ptr %41, i64 2
  %82 = load float, ptr %81, align 4, !tbaa !34
  store float %82, ptr %38, align 4, !tbaa !34
  call void @mul_m3_v3(ptr noundef %5, ptr noundef nonnull %9) #5
  %83 = call float @ED_rollBoneToVector(ptr noundef %42, ptr noundef nonnull %9, i8 noundef zeroext 0) #5
  %84 = getelementptr inbounds %struct.EditBone, ptr %42, i64 0, i32 6
  store float %83, ptr %84, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #5
  br label %85

85:                                               ; preds = %64, %74, %78
  %86 = load ptr, ptr %31, align 8, !tbaa !66
  %87 = getelementptr inbounds %struct.EditBone, ptr %44, i64 0, i32 8
  %88 = call i32 %6(ptr noundef %0, ptr noundef %3, i32 noundef %40, i32 noundef %11, ptr noundef nonnull %45, ptr noundef nonnull %87) #5
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %39, !llvm.loop !70

90:                                               ; preds = %85, %30
  %91 = phi ptr [ %13, %30 ], [ %44, %85 ]
  %92 = getelementptr inbounds %struct.BArcIterator, ptr %3, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !71
  %94 = call ptr %93(ptr noundef %3) #5
  %95 = getelementptr inbounds %struct.EditBone, ptr %91, i64 0, i32 8
  %96 = load ptr, ptr %15, align 8, !tbaa !43
  %97 = load float, ptr %96, align 4, !tbaa !34
  store float %97, ptr %95, align 4, !tbaa !34
  %98 = getelementptr inbounds float, ptr %96, i64 1
  %99 = load float, ptr %98, align 4, !tbaa !34
  %100 = getelementptr inbounds %struct.EditBone, ptr %91, i64 0, i32 8, i64 1
  store float %99, ptr %100, align 4, !tbaa !34
  %101 = getelementptr inbounds float, ptr %96, i64 2
  %102 = load float, ptr %101, align 4, !tbaa !34
  %103 = getelementptr inbounds %struct.EditBone, ptr %91, i64 0, i32 8, i64 2
  store float %102, ptr %103, align 4, !tbaa !34
  %104 = load float, ptr %24, align 8, !tbaa !64
  %105 = fcmp ogt float %104, 0x3E80000000000000
  br i1 %105, label %106, label %109

106:                                              ; preds = %90
  %107 = fmul float %104, 0x3FF3333340000000
  %108 = getelementptr inbounds %struct.EditBone, ptr %91, i64 0, i32 19
  store float %107, ptr %108, align 4, !tbaa !69
  br label %109

109:                                              ; preds = %106, %90
  call void @mul_m4_v3(ptr noundef %4, ptr noundef nonnull %95) #5
  %110 = getelementptr inbounds %struct.EditBone, ptr %91, i64 0, i32 7
  call void @mul_m4_v3(ptr noundef %4, ptr noundef nonnull %110) #5
  %111 = load ptr, ptr %31, align 8, !tbaa !66
  %112 = icmp eq ptr %111, null
  br i1 %112, label %133, label %113

113:                                              ; preds = %109
  %114 = load float, ptr %111, align 4, !tbaa !34
  %115 = fcmp oeq float %114, 0.000000e+00
  br i1 %115, label %116, label %124

116:                                              ; preds = %113
  %117 = getelementptr inbounds float, ptr %111, i64 1
  %118 = load float, ptr %117, align 4, !tbaa !34
  %119 = fcmp oeq float %118, 0.000000e+00
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = getelementptr inbounds float, ptr %111, i64 2
  %122 = load float, ptr %121, align 4, !tbaa !34
  %123 = fcmp une float %122, 0.000000e+00
  br i1 %123, label %124, label %133

124:                                              ; preds = %120, %116, %113
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #5
  store float %114, ptr %8, align 4, !tbaa !34
  %125 = getelementptr inbounds float, ptr %111, i64 1
  %126 = load float, ptr %125, align 4, !tbaa !34
  %127 = getelementptr inbounds float, ptr %8, i64 1
  store float %126, ptr %127, align 4, !tbaa !34
  %128 = getelementptr inbounds float, ptr %111, i64 2
  %129 = load float, ptr %128, align 4, !tbaa !34
  %130 = getelementptr inbounds float, ptr %8, i64 2
  store float %129, ptr %130, align 4, !tbaa !34
  call void @mul_m3_v3(ptr noundef %5, ptr noundef nonnull %8) #5
  %131 = call float @ED_rollBoneToVector(ptr noundef %91, ptr noundef nonnull %8, i8 noundef zeroext 0) #5
  %132 = getelementptr inbounds %struct.EditBone, ptr %91, i64 0, i32 6
  store float %131, ptr %132, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #5
  br label %133

133:                                              ; preds = %109, %120, %124
  ret ptr %91
}

declare ptr @IT_head(ptr noundef) local_unnamed_addr #2

declare ptr @ED_armature_edit_bone_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!38 = !{!39, !35, i64 104}
!39 = !{!"EditBone", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !36, i64 40, !35, i64 104, !36, i64 108, !36, i64 120, !41, i64 132, !41, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !42, i64 180}
!40 = !{!"any pointer", !36, i64 0}
!41 = !{!"int", !36, i64 0}
!42 = !{!"short", !36, i64 0}
!43 = !{!44, !40, i64 56}
!44 = !{!"BArcIterator", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !35, i64 72, !41, i64 76, !41, i64 80}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = distinct !{!48, !46, !47}
!49 = distinct !{!49, !46, !47}
!50 = !{!36, !36, i64 0}
!51 = !{!52, !36, i64 410}
!52 = !{!"ToolSettings", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !35, i64 32, !35, i64 36, !35, i64 40, !42, i64 44, !42, i64 46, !36, i64 48, !36, i64 49, !36, i64 50, !36, i64 51, !35, i64 52, !42, i64 56, !36, i64 58, !36, i64 59, !53, i64 64, !55, i64 168, !35, i64 336, !35, i64 340, !42, i64 344, !42, i64 346, !36, i64 348, !36, i64 349, !42, i64 350, !35, i64 352, !35, i64 356, !35, i64 360, !35, i64 364, !35, i64 368, !35, i64 372, !35, i64 376, !35, i64 380, !35, i64 384, !35, i64 388, !42, i64 392, !36, i64 394, !36, i64 395, !36, i64 396, !36, i64 399, !40, i64 400, !36, i64 408, !36, i64 409, !36, i64 410, !36, i64 411, !36, i64 412, !36, i64 413, !36, i64 421, !36, i64 429, !36, i64 430, !36, i64 431, !36, i64 432, !36, i64 433, !42, i64 434, !42, i64 436, !42, i64 438, !42, i64 440, !36, i64 442, !36, i64 443, !36, i64 444, !36, i64 445, !36, i64 446, !36, i64 447, !41, i64 448, !41, i64 452, !41, i64 456, !41, i64 460, !42, i64 464, !42, i64 466, !41, i64 468, !35, i64 472, !35, i64 476, !56, i64 480, !57, i64 608}
!53 = !{!"ImagePaintSettings", !54, i64 0, !42, i64 40, !42, i64 42, !42, i64 44, !42, i64 46, !36, i64 48, !41, i64 52, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !36, i64 88, !35, i64 100}
!54 = !{!"Paint", !40, i64 0, !40, i64 8, !40, i64 16, !36, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!55 = !{!"ParticleEditSettings", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !36, i64 8, !40, i64 120, !35, i64 128, !35, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !40, i64 152, !40, i64 160}
!56 = !{!"UnifiedPaintSettings", !41, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !36, i64 16, !36, i64 28, !41, i64 40, !36, i64 44, !35, i64 52, !41, i64 56, !41, i64 60, !36, i64 64, !36, i64 65, !35, i64 72, !36, i64 76, !41, i64 84, !35, i64 88, !36, i64 92, !36, i64 100, !41, i64 108, !40, i64 112, !35, i64 120, !41, i64 124}
!57 = !{!"MeshStatVis", !36, i64 0, !36, i64 1, !36, i64 3, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !36, i64 20, !36, i64 21, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36}
!58 = distinct !{!58, !46, !47}
!59 = !{!52, !35, i64 372}
!60 = distinct !{!60, !46, !47}
!61 = !{!52, !35, i64 364}
!62 = distinct !{!62, !46, !47}
!63 = !{!44, !41, i64 76}
!64 = !{!44, !35, i64 72}
!65 = !{!39, !35, i64 168}
!66 = !{!44, !40, i64 64}
!67 = !{!39, !40, i64 24}
!68 = !{!39, !41, i64 132}
!69 = !{!39, !35, i64 172}
!70 = distinct !{!70, !46, !47}
!71 = !{!44, !40, i64 8}
