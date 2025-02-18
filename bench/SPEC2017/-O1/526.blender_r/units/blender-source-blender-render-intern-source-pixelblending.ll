; ModuleID = 'blender/source/blender/render/intern/source/pixelblending.c'
source_filename = "blender/source/blender/render/intern/source/pixelblending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Render = type { ptr, ptr, [74 x i8], i32, i16, i16, i16, i16, i8, ptr, ptr, %struct.ListBase, i32, i32, i32, %struct.rcti, %struct.rctf, float, float, float, i32, i32, i32, i32, float, float, float, float, float, float, [3 x float], [3 x [3 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], float, float, ptr, [32 x [2 x float]], [32 x [2 x float]], ptr, [1 x i32], ptr, ptr, %struct.RenderData, %struct.World, ptr, i32, i32, %struct.ListBase, ptr, ptr, ptr, ptr, float, ptr, %struct.ListBase, float, float, i32, i32, i32, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, %struct.ListBase, i32, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.RenderStats, ptr, ptr, ptr }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.rctf = type { float, float, float, float }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.RenderStats = type { i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, double, double, ptr, ptr, [64 x i8], float, float }
%struct.SampleTables = type { [16 x float], [9 x ptr], [9 x ptr], [256 x i8], ptr }

@R = external local_unnamed_addr global %struct.Render, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @addAlphaOverFloat(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds float, ptr %1, i64 3
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = fsub float 1.000000e+00, %4
  %6 = load float, ptr %0, align 4, !tbaa !34
  %7 = load float, ptr %1, align 4, !tbaa !34
  %8 = tail call float @llvm.fmuladd.f32(float %5, float %6, float %7)
  store float %8, ptr %0, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = tail call float @llvm.fmuladd.f32(float %5, float %10, float %12)
  store float %13, ptr %9, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %1, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = tail call float @llvm.fmuladd.f32(float %5, float %15, float %17)
  store float %18, ptr %14, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %0, i64 3
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = load float, ptr %3, align 4, !tbaa !34
  %22 = tail call float @llvm.fmuladd.f32(float %5, float %20, float %21)
  store float %22, ptr %19, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @addAlphaUnderFloat(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds float, ptr %0, i64 3
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = fsub float 1.000000e+00, %4
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = load float, ptr %0, align 4, !tbaa !34
  %8 = tail call float @llvm.fmuladd.f32(float %5, float %6, float %7)
  store float %8, ptr %0, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %0, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = tail call float @llvm.fmuladd.f32(float %5, float %10, float %12)
  store float %13, ptr %11, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %0, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = tail call float @llvm.fmuladd.f32(float %5, float %15, float %17)
  store float %18, ptr %16, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %1, i64 3
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = tail call float @llvm.fmuladd.f32(float %5, float %20, float %4)
  store float %21, ptr %3, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @addalphaAddfacFloat(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds float, ptr %1, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = xor i8 %2, -1
  %7 = uitofp i8 %6 to float
  %8 = fdiv float %7, 2.550000e+02
  %9 = fneg float %5
  %10 = tail call float @llvm.fmuladd.f32(float %9, float %8, float 1.000000e+00)
  %11 = load float, ptr %0, align 4, !tbaa !34
  %12 = load float, ptr %1, align 4, !tbaa !34
  %13 = tail call float @llvm.fmuladd.f32(float %10, float %11, float %12)
  store float %13, ptr %0, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %0, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %1, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = tail call float @llvm.fmuladd.f32(float %10, float %15, float %17)
  store float %18, ptr %14, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %0, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = getelementptr inbounds float, ptr %1, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = tail call float @llvm.fmuladd.f32(float %10, float %20, float %22)
  store float %23, ptr %19, align 4, !tbaa !34
  %24 = getelementptr inbounds float, ptr %0, i64 3
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = load float, ptr %4, align 4, !tbaa !34
  %27 = tail call float @llvm.fmuladd.f32(float %10, float %25, float %26)
  %28 = fcmp oge float %27, 0x3FEFFE5CA0000000
  %29 = select i1 %28, float 0x3FEFFE5CA0000000, float %27
  store float %29, ptr %24, align 4, !tbaa !34
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @add_filt_fmask(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 38), align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.SampleTables, ptr %5, i64 0, i32 1
  %7 = getelementptr inbounds %struct.SampleTables, ptr %5, i64 0, i32 2
  %8 = load float, ptr %1, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 3
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %2, i64 -4
  %16 = shl nsw i32 %3, 2
  %17 = sext i32 %16 to i64
  %18 = sub nsw i64 0, %17
  %19 = getelementptr inbounds float, ptr %15, i64 %18
  %20 = getelementptr inbounds float, ptr %15, i64 %17
  %21 = and i32 %0, 255
  %22 = lshr i32 %0, 8
  %23 = zext nneg i32 %21 to i64
  %24 = zext nneg i32 %22 to i64
  br label %25

25:                                               ; preds = %4, %100
  %26 = phi i64 [ 2, %4 ], [ %104, %100 ]
  %27 = phi ptr [ %20, %4 ], [ %101, %100 ]
  %28 = phi ptr [ %15, %4 ], [ %102, %100 ]
  %29 = phi ptr [ %19, %4 ], [ %103, %100 ]
  %30 = getelementptr inbounds ptr, ptr %6, i64 %26
  %31 = load ptr, ptr %30, align 8, !tbaa !57
  %32 = getelementptr inbounds float, ptr %31, i64 %23
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = getelementptr inbounds ptr, ptr %7, i64 %26
  %35 = load ptr, ptr %34, align 8, !tbaa !57
  %36 = getelementptr inbounds float, ptr %35, i64 %24
  %37 = load float, ptr %36, align 4, !tbaa !34
  %38 = fadd float %33, %37
  %39 = fcmp une float %38, 0.000000e+00
  br i1 %39, label %40, label %52

40:                                               ; preds = %25
  %41 = load float, ptr %27, align 4, !tbaa !34
  %42 = tail call float @llvm.fmuladd.f32(float %38, float %8, float %41)
  store float %42, ptr %27, align 4, !tbaa !34
  %43 = getelementptr inbounds float, ptr %27, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !34
  %45 = tail call float @llvm.fmuladd.f32(float %38, float %10, float %44)
  store float %45, ptr %43, align 4, !tbaa !34
  %46 = getelementptr inbounds float, ptr %27, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !34
  %48 = tail call float @llvm.fmuladd.f32(float %38, float %12, float %47)
  store float %48, ptr %46, align 4, !tbaa !34
  %49 = getelementptr inbounds float, ptr %27, i64 3
  %50 = load float, ptr %49, align 4, !tbaa !34
  %51 = tail call float @llvm.fmuladd.f32(float %38, float %14, float %50)
  store float %51, ptr %49, align 4, !tbaa !34
  br label %52

52:                                               ; preds = %40, %25
  %53 = add nuw nsw i64 %26, 3
  %54 = getelementptr inbounds ptr, ptr %6, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !57
  %56 = getelementptr inbounds float, ptr %55, i64 %23
  %57 = load float, ptr %56, align 4, !tbaa !34
  %58 = getelementptr inbounds ptr, ptr %7, i64 %53
  %59 = load ptr, ptr %58, align 8, !tbaa !57
  %60 = getelementptr inbounds float, ptr %59, i64 %24
  %61 = load float, ptr %60, align 4, !tbaa !34
  %62 = fadd float %57, %61
  %63 = fcmp une float %62, 0.000000e+00
  br i1 %63, label %64, label %76

64:                                               ; preds = %52
  %65 = load float, ptr %28, align 4, !tbaa !34
  %66 = tail call float @llvm.fmuladd.f32(float %62, float %8, float %65)
  store float %66, ptr %28, align 4, !tbaa !34
  %67 = getelementptr inbounds float, ptr %28, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !34
  %69 = tail call float @llvm.fmuladd.f32(float %62, float %10, float %68)
  store float %69, ptr %67, align 4, !tbaa !34
  %70 = getelementptr inbounds float, ptr %28, i64 2
  %71 = load float, ptr %70, align 4, !tbaa !34
  %72 = tail call float @llvm.fmuladd.f32(float %62, float %12, float %71)
  store float %72, ptr %70, align 4, !tbaa !34
  %73 = getelementptr inbounds float, ptr %28, i64 3
  %74 = load float, ptr %73, align 4, !tbaa !34
  %75 = tail call float @llvm.fmuladd.f32(float %62, float %14, float %74)
  store float %75, ptr %73, align 4, !tbaa !34
  br label %76

76:                                               ; preds = %64, %52
  %77 = add nuw nsw i64 %26, 6
  %78 = getelementptr inbounds ptr, ptr %6, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !57
  %80 = getelementptr inbounds float, ptr %79, i64 %23
  %81 = load float, ptr %80, align 4, !tbaa !34
  %82 = getelementptr inbounds ptr, ptr %7, i64 %77
  %83 = load ptr, ptr %82, align 8, !tbaa !57
  %84 = getelementptr inbounds float, ptr %83, i64 %24
  %85 = load float, ptr %84, align 4, !tbaa !34
  %86 = fadd float %81, %85
  %87 = fcmp une float %86, 0.000000e+00
  br i1 %87, label %88, label %100

88:                                               ; preds = %76
  %89 = load float, ptr %29, align 4, !tbaa !34
  %90 = tail call float @llvm.fmuladd.f32(float %86, float %8, float %89)
  store float %90, ptr %29, align 4, !tbaa !34
  %91 = getelementptr inbounds float, ptr %29, i64 1
  %92 = load float, ptr %91, align 4, !tbaa !34
  %93 = tail call float @llvm.fmuladd.f32(float %86, float %10, float %92)
  store float %93, ptr %91, align 4, !tbaa !34
  %94 = getelementptr inbounds float, ptr %29, i64 2
  %95 = load float, ptr %94, align 4, !tbaa !34
  %96 = tail call float @llvm.fmuladd.f32(float %86, float %12, float %95)
  store float %96, ptr %94, align 4, !tbaa !34
  %97 = getelementptr inbounds float, ptr %29, i64 3
  %98 = load float, ptr %97, align 4, !tbaa !34
  %99 = tail call float @llvm.fmuladd.f32(float %86, float %14, float %98)
  store float %99, ptr %97, align 4, !tbaa !34
  br label %100

100:                                              ; preds = %88, %76
  %101 = getelementptr inbounds float, ptr %27, i64 4
  %102 = getelementptr inbounds float, ptr %28, i64 4
  %103 = getelementptr inbounds float, ptr %29, i64 4
  %104 = add nsw i64 %26, -1
  %105 = icmp eq i64 %26, 0
  br i1 %105, label %106, label %25, !llvm.loop !58

106:                                              ; preds = %100
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @mask_array(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 38), align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.SampleTables, ptr %3, i64 0, i32 1
  %5 = getelementptr inbounds %struct.SampleTables, ptr %3, i64 0, i32 2
  %6 = and i32 %0, 255
  %7 = lshr i32 %0, 8
  %8 = zext nneg i32 %6 to i64
  %9 = zext nneg i32 %7 to i64
  br label %10

10:                                               ; preds = %2, %10
  %11 = phi i64 [ 2, %2 ], [ %45, %10 ]
  %12 = getelementptr inbounds ptr, ptr %4, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = getelementptr inbounds float, ptr %13, i64 %8
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds ptr, ptr %5, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !57
  %18 = getelementptr inbounds float, ptr %17, i64 %9
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fadd float %15, %19
  %21 = sub nuw nsw i64 2, %11
  %22 = getelementptr inbounds [3 x float], ptr %1, i64 2, i64 %21
  store float %20, ptr %22, align 4, !tbaa !34
  %23 = add nuw nsw i64 %11, 3
  %24 = getelementptr inbounds ptr, ptr %4, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !57
  %26 = getelementptr inbounds float, ptr %25, i64 %8
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = getelementptr inbounds ptr, ptr %5, i64 %23
  %29 = load ptr, ptr %28, align 8, !tbaa !57
  %30 = getelementptr inbounds float, ptr %29, i64 %9
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = fadd float %27, %31
  %33 = getelementptr inbounds [3 x float], ptr %1, i64 1, i64 %21
  store float %32, ptr %33, align 4, !tbaa !34
  %34 = add nuw nsw i64 %11, 6
  %35 = getelementptr inbounds ptr, ptr %4, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !57
  %37 = getelementptr inbounds float, ptr %36, i64 %8
  %38 = load float, ptr %37, align 4, !tbaa !34
  %39 = getelementptr inbounds ptr, ptr %5, i64 %34
  %40 = load ptr, ptr %39, align 8, !tbaa !57
  %41 = getelementptr inbounds float, ptr %40, i64 %9
  %42 = load float, ptr %41, align 4, !tbaa !34
  %43 = fadd float %38, %42
  %44 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 %21
  store float %43, ptr %44, align 4, !tbaa !34
  %45 = add nsw i64 %11, -1
  %46 = icmp eq i64 %11, 0
  br i1 %46, label %47, label %10, !llvm.loop !61

47:                                               ; preds = %10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @add_filt_fmask_coord(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #4 {
  %8 = load float, ptr %1, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 3
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = load float, ptr %0, align 4
  %16 = getelementptr inbounds i8, ptr %0, i64 4
  %17 = load float, ptr %16, align 4
  %18 = getelementptr inbounds i8, ptr %0, i64 8
  %19 = load float, ptr %18, align 4
  %20 = getelementptr inbounds i8, ptr %0, i64 12
  %21 = load float, ptr %20, align 4
  %22 = getelementptr inbounds i8, ptr %0, i64 16
  %23 = load float, ptr %22, align 4
  %24 = getelementptr inbounds i8, ptr %0, i64 20
  %25 = load float, ptr %24, align 4
  %26 = getelementptr inbounds i8, ptr %0, i64 24
  %27 = load float, ptr %26, align 4
  %28 = getelementptr inbounds i8, ptr %0, i64 28
  %29 = load float, ptr %28, align 4
  %30 = getelementptr inbounds i8, ptr %0, i64 32
  %31 = load float, ptr %30, align 4
  %32 = shl nsw i32 %3, 2
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 0, %33
  %35 = getelementptr inbounds float, ptr %2, i64 %34
  %36 = getelementptr inbounds float, ptr %2, i64 %33
  %37 = getelementptr inbounds float, ptr %35, i64 -4
  %38 = getelementptr inbounds float, ptr %2, i64 -4
  %39 = getelementptr inbounds float, ptr %36, i64 -4
  %40 = getelementptr inbounds float, ptr %35, i64 4
  %41 = getelementptr inbounds float, ptr %2, i64 4
  %42 = getelementptr inbounds float, ptr %36, i64 4
  %43 = icmp eq i32 %6, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %7
  %45 = add nsw i32 %4, -1
  %46 = icmp eq i32 %45, %6
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %48

48:                                               ; preds = %7, %44, %47
  %49 = phi float [ %17, %47 ], [ %29, %44 ], [ %29, %7 ]
  %50 = phi float [ %15, %47 ], [ %27, %44 ], [ %27, %7 ]
  %51 = phi float [ %19, %47 ], [ %31, %44 ], [ %31, %7 ]
  %52 = phi float [ %19, %47 ], [ %19, %44 ], [ %31, %7 ]
  %53 = phi float [ %17, %47 ], [ %17, %44 ], [ %29, %7 ]
  %54 = phi float [ %15, %47 ], [ %15, %44 ], [ %27, %7 ]
  %55 = phi ptr [ %37, %47 ], [ %37, %44 ], [ %38, %7 ]
  %56 = phi ptr [ %35, %47 ], [ %35, %44 ], [ %2, %7 ]
  %57 = phi ptr [ %40, %47 ], [ %40, %44 ], [ %41, %7 ]
  %58 = phi ptr [ %38, %47 ], [ %39, %44 ], [ %39, %7 ]
  %59 = phi ptr [ %2, %47 ], [ %36, %44 ], [ %36, %7 ]
  %60 = phi ptr [ %41, %47 ], [ %42, %44 ], [ %42, %7 ]
  %61 = icmp eq i32 %5, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %48
  %63 = add nsw i32 %3, -1
  %64 = icmp eq i32 %63, %5
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %66

66:                                               ; preds = %48, %62, %65
  %67 = phi float [ %50, %65 ], [ %50, %62 ], [ %31, %48 ]
  %68 = phi float [ %21, %65 ], [ %25, %62 ], [ %25, %48 ]
  %69 = phi float [ %27, %65 ], [ %51, %62 ], [ %51, %48 ]
  %70 = phi float [ %21, %65 ], [ %21, %62 ], [ %25, %48 ]
  %71 = phi float [ %15, %65 ], [ %52, %62 ], [ %52, %48 ]
  %72 = phi float [ %54, %65 ], [ %54, %62 ], [ %19, %48 ]
  %73 = phi ptr [ %55, %65 ], [ %55, %62 ], [ %56, %48 ]
  %74 = phi ptr [ %56, %65 ], [ %57, %62 ], [ %57, %48 ]
  %75 = phi ptr [ %38, %65 ], [ %38, %62 ], [ %2, %48 ]
  %76 = phi ptr [ %2, %65 ], [ %41, %62 ], [ %41, %48 ]
  %77 = phi ptr [ %58, %65 ], [ %58, %62 ], [ %59, %48 ]
  %78 = phi ptr [ %59, %65 ], [ %60, %62 ], [ %60, %48 ]
  %79 = fcmp une float %72, 0.000000e+00
  br i1 %79, label %80, label %92

80:                                               ; preds = %66
  %81 = load float, ptr %73, align 4, !tbaa !34
  %82 = tail call float @llvm.fmuladd.f32(float %72, float %8, float %81)
  store float %82, ptr %73, align 4, !tbaa !34
  %83 = getelementptr inbounds float, ptr %73, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !34
  %85 = tail call float @llvm.fmuladd.f32(float %72, float %10, float %84)
  store float %85, ptr %83, align 4, !tbaa !34
  %86 = getelementptr inbounds float, ptr %73, i64 2
  %87 = load float, ptr %86, align 4, !tbaa !34
  %88 = tail call float @llvm.fmuladd.f32(float %72, float %12, float %87)
  store float %88, ptr %86, align 4, !tbaa !34
  %89 = getelementptr inbounds float, ptr %73, i64 3
  %90 = load float, ptr %89, align 4, !tbaa !34
  %91 = tail call float @llvm.fmuladd.f32(float %72, float %14, float %90)
  store float %91, ptr %89, align 4, !tbaa !34
  br label %92

92:                                               ; preds = %80, %66
  %93 = fcmp une float %53, 0.000000e+00
  br i1 %93, label %94, label %106

94:                                               ; preds = %92
  %95 = load float, ptr %56, align 4, !tbaa !34
  %96 = tail call float @llvm.fmuladd.f32(float %53, float %8, float %95)
  store float %96, ptr %56, align 4, !tbaa !34
  %97 = getelementptr inbounds float, ptr %56, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !34
  %99 = tail call float @llvm.fmuladd.f32(float %53, float %10, float %98)
  store float %99, ptr %97, align 4, !tbaa !34
  %100 = getelementptr inbounds float, ptr %56, i64 2
  %101 = load float, ptr %100, align 4, !tbaa !34
  %102 = tail call float @llvm.fmuladd.f32(float %53, float %12, float %101)
  store float %102, ptr %100, align 4, !tbaa !34
  %103 = getelementptr inbounds float, ptr %56, i64 3
  %104 = load float, ptr %103, align 4, !tbaa !34
  %105 = tail call float @llvm.fmuladd.f32(float %53, float %14, float %104)
  store float %105, ptr %103, align 4, !tbaa !34
  br label %106

106:                                              ; preds = %94, %92
  %107 = fcmp une float %71, 0.000000e+00
  br i1 %107, label %108, label %120

108:                                              ; preds = %106
  %109 = load float, ptr %74, align 4, !tbaa !34
  %110 = tail call float @llvm.fmuladd.f32(float %71, float %8, float %109)
  store float %110, ptr %74, align 4, !tbaa !34
  %111 = getelementptr inbounds float, ptr %74, i64 1
  %112 = load float, ptr %111, align 4, !tbaa !34
  %113 = tail call float @llvm.fmuladd.f32(float %71, float %10, float %112)
  store float %113, ptr %111, align 4, !tbaa !34
  %114 = getelementptr inbounds float, ptr %74, i64 2
  %115 = load float, ptr %114, align 4, !tbaa !34
  %116 = tail call float @llvm.fmuladd.f32(float %71, float %12, float %115)
  store float %116, ptr %114, align 4, !tbaa !34
  %117 = getelementptr inbounds float, ptr %74, i64 3
  %118 = load float, ptr %117, align 4, !tbaa !34
  %119 = tail call float @llvm.fmuladd.f32(float %71, float %14, float %118)
  store float %119, ptr %117, align 4, !tbaa !34
  br label %120

120:                                              ; preds = %108, %106
  %121 = fcmp une float %70, 0.000000e+00
  br i1 %121, label %122, label %134

122:                                              ; preds = %120
  %123 = load float, ptr %75, align 4, !tbaa !34
  %124 = tail call float @llvm.fmuladd.f32(float %70, float %8, float %123)
  store float %124, ptr %75, align 4, !tbaa !34
  %125 = getelementptr inbounds float, ptr %75, i64 1
  %126 = load float, ptr %125, align 4, !tbaa !34
  %127 = tail call float @llvm.fmuladd.f32(float %70, float %10, float %126)
  store float %127, ptr %125, align 4, !tbaa !34
  %128 = getelementptr inbounds float, ptr %75, i64 2
  %129 = load float, ptr %128, align 4, !tbaa !34
  %130 = tail call float @llvm.fmuladd.f32(float %70, float %12, float %129)
  store float %130, ptr %128, align 4, !tbaa !34
  %131 = getelementptr inbounds float, ptr %75, i64 3
  %132 = load float, ptr %131, align 4, !tbaa !34
  %133 = tail call float @llvm.fmuladd.f32(float %70, float %14, float %132)
  store float %133, ptr %131, align 4, !tbaa !34
  br label %134

134:                                              ; preds = %122, %120
  %135 = fcmp une float %23, 0.000000e+00
  br i1 %135, label %136, label %148

136:                                              ; preds = %134
  %137 = load float, ptr %2, align 4, !tbaa !34
  %138 = tail call float @llvm.fmuladd.f32(float %23, float %8, float %137)
  store float %138, ptr %2, align 4, !tbaa !34
  %139 = getelementptr inbounds float, ptr %2, i64 1
  %140 = load float, ptr %139, align 4, !tbaa !34
  %141 = tail call float @llvm.fmuladd.f32(float %23, float %10, float %140)
  store float %141, ptr %139, align 4, !tbaa !34
  %142 = getelementptr inbounds float, ptr %2, i64 2
  %143 = load float, ptr %142, align 4, !tbaa !34
  %144 = tail call float @llvm.fmuladd.f32(float %23, float %12, float %143)
  store float %144, ptr %142, align 4, !tbaa !34
  %145 = getelementptr inbounds float, ptr %2, i64 3
  %146 = load float, ptr %145, align 4, !tbaa !34
  %147 = tail call float @llvm.fmuladd.f32(float %23, float %14, float %146)
  store float %147, ptr %145, align 4, !tbaa !34
  br label %148

148:                                              ; preds = %136, %134
  %149 = fcmp une float %68, 0.000000e+00
  br i1 %149, label %150, label %162

150:                                              ; preds = %148
  %151 = load float, ptr %76, align 4, !tbaa !34
  %152 = tail call float @llvm.fmuladd.f32(float %68, float %8, float %151)
  store float %152, ptr %76, align 4, !tbaa !34
  %153 = getelementptr inbounds float, ptr %76, i64 1
  %154 = load float, ptr %153, align 4, !tbaa !34
  %155 = tail call float @llvm.fmuladd.f32(float %68, float %10, float %154)
  store float %155, ptr %153, align 4, !tbaa !34
  %156 = getelementptr inbounds float, ptr %76, i64 2
  %157 = load float, ptr %156, align 4, !tbaa !34
  %158 = tail call float @llvm.fmuladd.f32(float %68, float %12, float %157)
  store float %158, ptr %156, align 4, !tbaa !34
  %159 = getelementptr inbounds float, ptr %76, i64 3
  %160 = load float, ptr %159, align 4, !tbaa !34
  %161 = tail call float @llvm.fmuladd.f32(float %68, float %14, float %160)
  store float %161, ptr %159, align 4, !tbaa !34
  br label %162

162:                                              ; preds = %150, %148
  %163 = fcmp une float %67, 0.000000e+00
  br i1 %163, label %164, label %176

164:                                              ; preds = %162
  %165 = load float, ptr %77, align 4, !tbaa !34
  %166 = tail call float @llvm.fmuladd.f32(float %67, float %8, float %165)
  store float %166, ptr %77, align 4, !tbaa !34
  %167 = getelementptr inbounds float, ptr %77, i64 1
  %168 = load float, ptr %167, align 4, !tbaa !34
  %169 = tail call float @llvm.fmuladd.f32(float %67, float %10, float %168)
  store float %169, ptr %167, align 4, !tbaa !34
  %170 = getelementptr inbounds float, ptr %77, i64 2
  %171 = load float, ptr %170, align 4, !tbaa !34
  %172 = tail call float @llvm.fmuladd.f32(float %67, float %12, float %171)
  store float %172, ptr %170, align 4, !tbaa !34
  %173 = getelementptr inbounds float, ptr %77, i64 3
  %174 = load float, ptr %173, align 4, !tbaa !34
  %175 = tail call float @llvm.fmuladd.f32(float %67, float %14, float %174)
  store float %175, ptr %173, align 4, !tbaa !34
  br label %176

176:                                              ; preds = %164, %162
  %177 = fcmp une float %49, 0.000000e+00
  br i1 %177, label %178, label %190

178:                                              ; preds = %176
  %179 = load float, ptr %59, align 4, !tbaa !34
  %180 = tail call float @llvm.fmuladd.f32(float %49, float %8, float %179)
  store float %180, ptr %59, align 4, !tbaa !34
  %181 = getelementptr inbounds float, ptr %59, i64 1
  %182 = load float, ptr %181, align 4, !tbaa !34
  %183 = tail call float @llvm.fmuladd.f32(float %49, float %10, float %182)
  store float %183, ptr %181, align 4, !tbaa !34
  %184 = getelementptr inbounds float, ptr %59, i64 2
  %185 = load float, ptr %184, align 4, !tbaa !34
  %186 = tail call float @llvm.fmuladd.f32(float %49, float %12, float %185)
  store float %186, ptr %184, align 4, !tbaa !34
  %187 = getelementptr inbounds float, ptr %59, i64 3
  %188 = load float, ptr %187, align 4, !tbaa !34
  %189 = tail call float @llvm.fmuladd.f32(float %49, float %14, float %188)
  store float %189, ptr %187, align 4, !tbaa !34
  br label %190

190:                                              ; preds = %178, %176
  %191 = fcmp une float %69, 0.000000e+00
  br i1 %191, label %192, label %204

192:                                              ; preds = %190
  %193 = load float, ptr %78, align 4, !tbaa !34
  %194 = tail call float @llvm.fmuladd.f32(float %69, float %8, float %193)
  store float %194, ptr %78, align 4, !tbaa !34
  %195 = getelementptr inbounds float, ptr %78, i64 1
  %196 = load float, ptr %195, align 4, !tbaa !34
  %197 = tail call float @llvm.fmuladd.f32(float %69, float %10, float %196)
  store float %197, ptr %195, align 4, !tbaa !34
  %198 = getelementptr inbounds float, ptr %78, i64 2
  %199 = load float, ptr %198, align 4, !tbaa !34
  %200 = tail call float @llvm.fmuladd.f32(float %69, float %12, float %199)
  store float %200, ptr %198, align 4, !tbaa !34
  %201 = getelementptr inbounds float, ptr %78, i64 3
  %202 = load float, ptr %201, align 4, !tbaa !34
  %203 = tail call float @llvm.fmuladd.f32(float %69, float %14, float %202)
  store float %203, ptr %201, align 4, !tbaa !34
  br label %204

204:                                              ; preds = %192, %190
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @add_filt_fmask_pixsize(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 38), align 8, !tbaa !38
  %7 = getelementptr inbounds %struct.SampleTables, ptr %6, i64 0, i32 1
  %8 = getelementptr inbounds %struct.SampleTables, ptr %6, i64 0, i32 2
  %9 = sext i32 %4 to i64
  %10 = sub nsw i64 0, %9
  %11 = getelementptr inbounds float, ptr %2, i64 %10
  %12 = mul nsw i32 %4, %3
  %13 = sext i32 %12 to i64
  %14 = sub nsw i64 0, %13
  %15 = getelementptr inbounds float, ptr %11, i64 %14
  %16 = getelementptr inbounds float, ptr %11, i64 %13
  %17 = and i32 %0, 255
  %18 = lshr i32 %0, 8
  %19 = zext nneg i32 %17 to i64
  %20 = zext nneg i32 %18 to i64
  %21 = icmp slt i32 %4, 1
  %22 = icmp slt i32 %4, 1
  %23 = icmp slt i32 %4, 1
  %24 = zext i32 %4 to i64
  %25 = zext i32 %4 to i64
  %26 = zext i32 %4 to i64
  br label %27

27:                                               ; preds = %5, %96
  %28 = phi i64 [ 2, %5 ], [ %100, %96 ]
  %29 = phi ptr [ %16, %5 ], [ %97, %96 ]
  %30 = phi ptr [ %11, %5 ], [ %98, %96 ]
  %31 = phi ptr [ %15, %5 ], [ %99, %96 ]
  %32 = getelementptr inbounds ptr, ptr %7, i64 %28
  %33 = load ptr, ptr %32, align 8, !tbaa !57
  %34 = getelementptr inbounds float, ptr %33, i64 %19
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = getelementptr inbounds ptr, ptr %8, i64 %28
  %37 = load ptr, ptr %36, align 8, !tbaa !57
  %38 = getelementptr inbounds float, ptr %37, i64 %20
  %39 = load float, ptr %38, align 4, !tbaa !34
  %40 = fadd float %35, %39
  %41 = fcmp oeq float %40, 0.000000e+00
  %42 = or i1 %41, %21
  br i1 %42, label %52, label %43

43:                                               ; preds = %27, %43
  %44 = phi i64 [ %50, %43 ], [ 0, %27 ]
  %45 = getelementptr inbounds float, ptr %1, i64 %44
  %46 = load float, ptr %45, align 4, !tbaa !34
  %47 = getelementptr inbounds float, ptr %29, i64 %44
  %48 = load float, ptr %47, align 4, !tbaa !34
  %49 = tail call float @llvm.fmuladd.f32(float %40, float %46, float %48)
  store float %49, ptr %47, align 4, !tbaa !34
  %50 = add nuw nsw i64 %44, 1
  %51 = icmp eq i64 %50, %24
  br i1 %51, label %52, label %43, !llvm.loop !62

52:                                               ; preds = %43, %27
  %53 = add nuw nsw i64 %28, 3
  %54 = getelementptr inbounds ptr, ptr %7, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !57
  %56 = getelementptr inbounds float, ptr %55, i64 %19
  %57 = load float, ptr %56, align 4, !tbaa !34
  %58 = getelementptr inbounds ptr, ptr %8, i64 %53
  %59 = load ptr, ptr %58, align 8, !tbaa !57
  %60 = getelementptr inbounds float, ptr %59, i64 %20
  %61 = load float, ptr %60, align 4, !tbaa !34
  %62 = fadd float %57, %61
  %63 = fcmp oeq float %62, 0.000000e+00
  %64 = or i1 %63, %22
  br i1 %64, label %74, label %65

65:                                               ; preds = %52, %65
  %66 = phi i64 [ %72, %65 ], [ 0, %52 ]
  %67 = getelementptr inbounds float, ptr %1, i64 %66
  %68 = load float, ptr %67, align 4, !tbaa !34
  %69 = getelementptr inbounds float, ptr %30, i64 %66
  %70 = load float, ptr %69, align 4, !tbaa !34
  %71 = tail call float @llvm.fmuladd.f32(float %62, float %68, float %70)
  store float %71, ptr %69, align 4, !tbaa !34
  %72 = add nuw nsw i64 %66, 1
  %73 = icmp eq i64 %72, %25
  br i1 %73, label %74, label %65, !llvm.loop !63

74:                                               ; preds = %65, %52
  %75 = add nuw nsw i64 %28, 6
  %76 = getelementptr inbounds ptr, ptr %7, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !57
  %78 = getelementptr inbounds float, ptr %77, i64 %19
  %79 = load float, ptr %78, align 4, !tbaa !34
  %80 = getelementptr inbounds ptr, ptr %8, i64 %75
  %81 = load ptr, ptr %80, align 8, !tbaa !57
  %82 = getelementptr inbounds float, ptr %81, i64 %20
  %83 = load float, ptr %82, align 4, !tbaa !34
  %84 = fadd float %79, %83
  %85 = fcmp oeq float %84, 0.000000e+00
  %86 = or i1 %85, %23
  br i1 %86, label %96, label %87

87:                                               ; preds = %74, %87
  %88 = phi i64 [ %94, %87 ], [ 0, %74 ]
  %89 = getelementptr inbounds float, ptr %1, i64 %88
  %90 = load float, ptr %89, align 4, !tbaa !34
  %91 = getelementptr inbounds float, ptr %31, i64 %88
  %92 = load float, ptr %91, align 4, !tbaa !34
  %93 = tail call float @llvm.fmuladd.f32(float %84, float %90, float %92)
  store float %93, ptr %91, align 4, !tbaa !34
  %94 = add nuw nsw i64 %88, 1
  %95 = icmp eq i64 %94, %26
  br i1 %95, label %96, label %87, !llvm.loop !64

96:                                               ; preds = %87, %74
  %97 = getelementptr inbounds float, ptr %29, i64 %9
  %98 = getelementptr inbounds float, ptr %30, i64 %9
  %99 = getelementptr inbounds float, ptr %31, i64 %9
  %100 = add nsw i64 %28, -1
  %101 = icmp eq i64 %28, 0
  br i1 %101, label %102, label %27, !llvm.loop !65

102:                                              ; preds = %96
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @addalphaAddFloat(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds float, ptr %0, i64 3
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = fcmp olt float %4, 0x3F2A36E2E0000000
  %6 = getelementptr inbounds float, ptr %0, i64 1
  br i1 %5, label %7, label %16

7:                                                ; preds = %2
  %8 = load float, ptr %1, align 4, !tbaa !34
  store float %8, ptr %0, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  store float %10, ptr %6, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %1, i64 3
  %15 = load float, ptr %14, align 4, !tbaa !34
  br label %32

16:                                               ; preds = %2
  %17 = load float, ptr %0, align 4, !tbaa !34
  %18 = load float, ptr %1, align 4, !tbaa !34
  %19 = fadd float %17, %18
  store float %19, ptr %0, align 4, !tbaa !34
  %20 = load float, ptr %6, align 4, !tbaa !34
  %21 = getelementptr inbounds float, ptr %1, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = fadd float %20, %22
  store float %23, ptr %6, align 4, !tbaa !34
  %24 = getelementptr inbounds float, ptr %0, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = getelementptr inbounds float, ptr %1, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = fadd float %25, %27
  store float %28, ptr %24, align 4, !tbaa !34
  %29 = getelementptr inbounds float, ptr %1, i64 3
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = fadd float %4, %30
  br label %32

32:                                               ; preds = %16, %7
  %33 = phi float [ %31, %16 ], [ %15, %7 ]
  store float %33, ptr %3, align 4, !tbaa !34
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!38 = !{!39, !40, i64 552}
!39 = !{!"Render", !40, i64 0, !40, i64 8, !36, i64 16, !41, i64 92, !42, i64 96, !42, i64 98, !42, i64 100, !42, i64 102, !36, i64 104, !40, i64 112, !40, i64 120, !43, i64 128, !41, i64 144, !41, i64 148, !41, i64 152, !44, i64 156, !45, i64 172, !35, i64 188, !35, i64 192, !35, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !35, i64 216, !35, i64 220, !35, i64 224, !35, i64 228, !35, i64 232, !35, i64 236, !36, i64 240, !36, i64 252, !36, i64 288, !36, i64 352, !36, i64 416, !36, i64 480, !35, i64 544, !35, i64 548, !40, i64 552, !36, i64 560, !36, i64 816, !40, i64 1072, !36, i64 1080, !40, i64 1088, !40, i64 1096, !46, i64 1104, !53, i64 5088, !40, i64 5616, !41, i64 5624, !41, i64 5628, !43, i64 5632, !40, i64 5648, !40, i64 5656, !40, i64 5664, !40, i64 5672, !35, i64 5680, !40, i64 5688, !43, i64 5696, !35, i64 5712, !35, i64 5716, !41, i64 5720, !41, i64 5724, !41, i64 5728, !41, i64 5732, !41, i64 5736, !40, i64 5744, !43, i64 5752, !43, i64 5768, !43, i64 5784, !40, i64 5800, !43, i64 5808, !41, i64 5824, !40, i64 5832, !40, i64 5840, !40, i64 5848, !40, i64 5856, !40, i64 5864, !43, i64 5872, !40, i64 5888, !43, i64 5896, !43, i64 5912, !40, i64 5928, !40, i64 5936, !40, i64 5944, !40, i64 5952, !40, i64 5960, !40, i64 5968, !40, i64 5976, !40, i64 5984, !40, i64 5992, !40, i64 6000, !40, i64 6008, !40, i64 6016, !40, i64 6024, !40, i64 6032, !40, i64 6040, !40, i64 6048, !40, i64 6056, !55, i64 6064, !40, i64 6216, !40, i64 6224, !40, i64 6232}
!40 = !{!"any pointer", !36, i64 0}
!41 = !{!"int", !36, i64 0}
!42 = !{!"short", !36, i64 0}
!43 = !{!"ListBase", !40, i64 0, !40, i64 8}
!44 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!45 = !{!"rctf", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!46 = !{!"RenderData", !47, i64 0, !40, i64 248, !40, i64 256, !50, i64 264, !51, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !35, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !42, i64 432, !42, i64 434, !35, i64 436, !35, i64 440, !35, i64 444, !35, i64 448, !35, i64 452, !42, i64 456, !42, i64 458, !42, i64 460, !42, i64 462, !42, i64 464, !42, i64 466, !41, i64 468, !42, i64 472, !42, i64 474, !42, i64 476, !42, i64 478, !42, i64 480, !42, i64 482, !41, i64 484, !41, i64 488, !42, i64 492, !42, i64 494, !41, i64 496, !41, i64 500, !42, i64 504, !42, i64 506, !42, i64 508, !42, i64 510, !42, i64 512, !36, i64 514, !36, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !42, i64 528, !42, i64 530, !42, i64 532, !42, i64 534, !42, i64 536, !42, i64 538, !42, i64 540, !42, i64 542, !45, i64 544, !45, i64 560, !44, i64 576, !43, i64 592, !42, i64 608, !42, i64 610, !35, i64 612, !35, i64 616, !35, i64 620, !35, i64 624, !41, i64 628, !35, i64 632, !35, i64 636, !35, i64 640, !35, i64 644, !42, i64 648, !42, i64 650, !42, i64 652, !42, i64 654, !42, i64 656, !42, i64 658, !35, i64 660, !35, i64 664, !42, i64 668, !42, i64 670, !35, i64 672, !35, i64 676, !36, i64 680, !41, i64 1704, !42, i64 1708, !42, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !41, i64 2520, !42, i64 2524, !42, i64 2526, !35, i64 2528, !35, i64 2532, !42, i64 2536, !42, i64 2538, !35, i64 2540, !42, i64 2544, !42, i64 2546, !41, i64 2548, !42, i64 2552, !42, i64 2554, !42, i64 2556, !42, i64 2558, !35, i64 2560, !35, i64 2564, !40, i64 2568, !41, i64 2576, !35, i64 2580, !36, i64 2584, !52, i64 2616, !41, i64 3976, !41, i64 3980}
!47 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !42, i64 8, !42, i64 10, !35, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !48, i64 24, !49, i64 184}
!48 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 72, !35, i64 136, !35, i64 140, !40, i64 144, !40, i64 152}
!49 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!50 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !42, i64 48, !42, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!51 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !35, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !40, i64 64}
!52 = !{!"BakeData", !47, i64 0, !36, i64 248, !42, i64 1272, !42, i64 1274, !42, i64 1276, !42, i64 1278, !35, i64 1280, !35, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!53 = !{!"World", !54, i64 0, !40, i64 120, !42, i64 128, !42, i64 130, !42, i64 132, !42, i64 134, !35, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !42, i64 200, !42, i64 202, !42, i64 204, !42, i64 206, !42, i64 208, !42, i64 210, !42, i64 212, !42, i64 214, !35, i64 216, !35, i64 220, !35, i64 224, !35, i64 228, !35, i64 232, !35, i64 236, !35, i64 240, !35, i64 244, !35, i64 248, !35, i64 252, !35, i64 256, !35, i64 260, !42, i64 264, !42, i64 266, !42, i64 268, !42, i64 270, !35, i64 272, !35, i64 276, !35, i64 280, !35, i64 284, !42, i64 288, !42, i64 290, !42, i64 292, !42, i64 294, !35, i64 296, !35, i64 300, !35, i64 304, !35, i64 308, !35, i64 312, !35, i64 316, !35, i64 320, !42, i64 324, !42, i64 326, !42, i64 328, !42, i64 330, !42, i64 332, !42, i64 334, !40, i64 336, !40, i64 344, !40, i64 352, !36, i64 360, !42, i64 504, !42, i64 506, !36, i64 508, !40, i64 512, !40, i64 520}
!54 = !{!"ID", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !36, i64 32, !42, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !40, i64 112}
!55 = !{!"RenderStats", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !42, i64 28, !42, i64 30, !42, i64 32, !42, i64 34, !42, i64 36, !42, i64 38, !36, i64 40, !56, i64 48, !56, i64 56, !40, i64 64, !40, i64 72, !36, i64 80, !35, i64 144, !35, i64 148}
!56 = !{!"double", !36, i64 0}
!57 = !{!40, !40, i64 0}
!58 = distinct !{!58, !59, !60}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = distinct !{!61, !59, !60}
!62 = distinct !{!62, !59, !60}
!63 = distinct !{!63, !59, !60}
!64 = distinct !{!64, !59, !60}
!65 = distinct !{!65, !59, !60}
