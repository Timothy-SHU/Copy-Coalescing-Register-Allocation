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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @add_filt_fmask(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 38), align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.SampleTables, ptr %5, i64 0, i32 1
  %7 = getelementptr inbounds %struct.SampleTables, ptr %5, i64 0, i32 2
  %8 = load <4 x float>, ptr %1, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %2, i64 -4
  %10 = shl nsw i32 %3, 2
  %11 = sext i32 %10 to i64
  %12 = sub nsw i64 0, %11
  %13 = getelementptr inbounds float, ptr %9, i64 %12
  %14 = getelementptr inbounds float, ptr %9, i64 %11
  %15 = and i32 %0, 255
  %16 = lshr i32 %0, 8
  %17 = zext nneg i32 %15 to i64
  %18 = zext nneg i32 %16 to i64
  br label %19

19:                                               ; preds = %4, %73
  %20 = phi i64 [ 2, %4 ], [ %77, %73 ]
  %21 = phi ptr [ %14, %4 ], [ %74, %73 ]
  %22 = phi ptr [ %9, %4 ], [ %75, %73 ]
  %23 = phi ptr [ %13, %4 ], [ %76, %73 ]
  %24 = getelementptr inbounds ptr, ptr %6, i64 %20
  %25 = load ptr, ptr %24, align 8, !tbaa !57
  %26 = getelementptr inbounds float, ptr %25, i64 %17
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = getelementptr inbounds ptr, ptr %7, i64 %20
  %29 = load ptr, ptr %28, align 8, !tbaa !57
  %30 = getelementptr inbounds float, ptr %29, i64 %18
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = fadd float %27, %31
  %33 = fcmp une float %32, 0.000000e+00
  br i1 %33, label %34, label %39

34:                                               ; preds = %19
  %35 = load <4 x float>, ptr %21, align 4, !tbaa !34
  %36 = insertelement <4 x float> poison, float %32, i64 0
  %37 = shufflevector <4 x float> %36, <4 x float> poison, <4 x i32> zeroinitializer
  %38 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %37, <4 x float> %8, <4 x float> %35)
  store <4 x float> %38, ptr %21, align 4, !tbaa !34
  br label %39

39:                                               ; preds = %34, %19
  %40 = add nuw nsw i64 %20, 3
  %41 = getelementptr inbounds ptr, ptr %6, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !57
  %43 = getelementptr inbounds float, ptr %42, i64 %17
  %44 = load float, ptr %43, align 4, !tbaa !34
  %45 = getelementptr inbounds ptr, ptr %7, i64 %40
  %46 = load ptr, ptr %45, align 8, !tbaa !57
  %47 = getelementptr inbounds float, ptr %46, i64 %18
  %48 = load float, ptr %47, align 4, !tbaa !34
  %49 = fadd float %44, %48
  %50 = fcmp une float %49, 0.000000e+00
  br i1 %50, label %51, label %56

51:                                               ; preds = %39
  %52 = load <4 x float>, ptr %22, align 4, !tbaa !34
  %53 = insertelement <4 x float> poison, float %49, i64 0
  %54 = shufflevector <4 x float> %53, <4 x float> poison, <4 x i32> zeroinitializer
  %55 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %54, <4 x float> %8, <4 x float> %52)
  store <4 x float> %55, ptr %22, align 4, !tbaa !34
  br label %56

56:                                               ; preds = %51, %39
  %57 = add nuw nsw i64 %20, 6
  %58 = getelementptr inbounds ptr, ptr %6, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !57
  %60 = getelementptr inbounds float, ptr %59, i64 %17
  %61 = load float, ptr %60, align 4, !tbaa !34
  %62 = getelementptr inbounds ptr, ptr %7, i64 %57
  %63 = load ptr, ptr %62, align 8, !tbaa !57
  %64 = getelementptr inbounds float, ptr %63, i64 %18
  %65 = load float, ptr %64, align 4, !tbaa !34
  %66 = fadd float %61, %65
  %67 = fcmp une float %66, 0.000000e+00
  br i1 %67, label %68, label %73

68:                                               ; preds = %56
  %69 = load <4 x float>, ptr %23, align 4, !tbaa !34
  %70 = insertelement <4 x float> poison, float %66, i64 0
  %71 = shufflevector <4 x float> %70, <4 x float> poison, <4 x i32> zeroinitializer
  %72 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %71, <4 x float> %8, <4 x float> %69)
  store <4 x float> %72, ptr %23, align 4, !tbaa !34
  br label %73

73:                                               ; preds = %68, %56
  %74 = getelementptr inbounds float, ptr %21, i64 4
  %75 = getelementptr inbounds float, ptr %22, i64 4
  %76 = getelementptr inbounds float, ptr %23, i64 4
  %77 = add nsw i64 %20, -1
  %78 = icmp eq i64 %20, 0
  br i1 %78, label %79, label %19, !llvm.loop !58

79:                                               ; preds = %73
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
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
  br i1 %46, label %47, label %10, !llvm.loop !60

47:                                               ; preds = %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @add_filt_fmask_coord(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #4 {
  %8 = load <4 x float>, ptr %1, align 4, !tbaa !34
  %9 = load float, ptr %0, align 4
  %10 = getelementptr inbounds i8, ptr %0, i64 4
  %11 = load float, ptr %10, align 4
  %12 = getelementptr inbounds i8, ptr %0, i64 8
  %13 = load float, ptr %12, align 4
  %14 = getelementptr inbounds i8, ptr %0, i64 12
  %15 = load float, ptr %14, align 4
  %16 = getelementptr inbounds i8, ptr %0, i64 16
  %17 = load float, ptr %16, align 4
  %18 = getelementptr inbounds i8, ptr %0, i64 20
  %19 = load float, ptr %18, align 4
  %20 = getelementptr inbounds i8, ptr %0, i64 24
  %21 = load float, ptr %20, align 4
  %22 = getelementptr inbounds i8, ptr %0, i64 28
  %23 = load float, ptr %22, align 4
  %24 = getelementptr inbounds i8, ptr %0, i64 32
  %25 = load float, ptr %24, align 4
  %26 = shl nsw i32 %3, 2
  %27 = sext i32 %26 to i64
  %28 = sub nsw i64 0, %27
  %29 = getelementptr inbounds float, ptr %2, i64 %28
  %30 = getelementptr inbounds float, ptr %2, i64 %27
  %31 = getelementptr inbounds float, ptr %29, i64 -4
  %32 = getelementptr inbounds float, ptr %2, i64 -4
  %33 = getelementptr inbounds float, ptr %30, i64 -4
  %34 = getelementptr inbounds float, ptr %29, i64 4
  %35 = getelementptr inbounds float, ptr %2, i64 4
  %36 = getelementptr inbounds float, ptr %30, i64 4
  %37 = icmp eq i32 %6, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %7
  %39 = add nsw i32 %4, -1
  %40 = icmp eq i32 %39, %6
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %7, %38, %41
  %43 = phi float [ %11, %41 ], [ %23, %38 ], [ %23, %7 ]
  %44 = phi float [ %9, %41 ], [ %21, %38 ], [ %21, %7 ]
  %45 = phi float [ %13, %41 ], [ %25, %38 ], [ %25, %7 ]
  %46 = phi float [ %13, %41 ], [ %13, %38 ], [ %25, %7 ]
  %47 = phi float [ %11, %41 ], [ %11, %38 ], [ %23, %7 ]
  %48 = phi float [ %9, %41 ], [ %9, %38 ], [ %21, %7 ]
  %49 = phi ptr [ %31, %41 ], [ %31, %38 ], [ %32, %7 ]
  %50 = phi ptr [ %29, %41 ], [ %29, %38 ], [ %2, %7 ]
  %51 = phi ptr [ %34, %41 ], [ %34, %38 ], [ %35, %7 ]
  %52 = phi ptr [ %32, %41 ], [ %33, %38 ], [ %33, %7 ]
  %53 = phi ptr [ %2, %41 ], [ %30, %38 ], [ %30, %7 ]
  %54 = phi ptr [ %35, %41 ], [ %36, %38 ], [ %36, %7 ]
  %55 = icmp eq i32 %5, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %42
  %57 = add nsw i32 %3, -1
  %58 = icmp eq i32 %57, %5
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %60

60:                                               ; preds = %42, %56, %59
  %61 = phi float [ %44, %59 ], [ %44, %56 ], [ %25, %42 ]
  %62 = phi float [ %15, %59 ], [ %19, %56 ], [ %19, %42 ]
  %63 = phi float [ %21, %59 ], [ %45, %56 ], [ %45, %42 ]
  %64 = phi float [ %15, %59 ], [ %15, %56 ], [ %19, %42 ]
  %65 = phi float [ %9, %59 ], [ %46, %56 ], [ %46, %42 ]
  %66 = phi float [ %48, %59 ], [ %48, %56 ], [ %13, %42 ]
  %67 = phi ptr [ %49, %59 ], [ %49, %56 ], [ %50, %42 ]
  %68 = phi ptr [ %50, %59 ], [ %51, %56 ], [ %51, %42 ]
  %69 = phi ptr [ %32, %59 ], [ %32, %56 ], [ %2, %42 ]
  %70 = phi ptr [ %2, %59 ], [ %35, %56 ], [ %35, %42 ]
  %71 = phi ptr [ %52, %59 ], [ %52, %56 ], [ %53, %42 ]
  %72 = phi ptr [ %53, %59 ], [ %54, %56 ], [ %54, %42 ]
  %73 = fcmp une float %66, 0.000000e+00
  br i1 %73, label %74, label %79

74:                                               ; preds = %60
  %75 = load <4 x float>, ptr %67, align 4, !tbaa !34
  %76 = insertelement <4 x float> poison, float %66, i64 0
  %77 = shufflevector <4 x float> %76, <4 x float> poison, <4 x i32> zeroinitializer
  %78 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %77, <4 x float> %8, <4 x float> %75)
  store <4 x float> %78, ptr %67, align 4, !tbaa !34
  br label %79

79:                                               ; preds = %74, %60
  %80 = fcmp une float %47, 0.000000e+00
  br i1 %80, label %81, label %86

81:                                               ; preds = %79
  %82 = load <4 x float>, ptr %50, align 4, !tbaa !34
  %83 = insertelement <4 x float> poison, float %47, i64 0
  %84 = shufflevector <4 x float> %83, <4 x float> poison, <4 x i32> zeroinitializer
  %85 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %84, <4 x float> %8, <4 x float> %82)
  store <4 x float> %85, ptr %50, align 4, !tbaa !34
  br label %86

86:                                               ; preds = %81, %79
  %87 = fcmp une float %65, 0.000000e+00
  br i1 %87, label %88, label %93

88:                                               ; preds = %86
  %89 = load <4 x float>, ptr %68, align 4, !tbaa !34
  %90 = insertelement <4 x float> poison, float %65, i64 0
  %91 = shufflevector <4 x float> %90, <4 x float> poison, <4 x i32> zeroinitializer
  %92 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %91, <4 x float> %8, <4 x float> %89)
  store <4 x float> %92, ptr %68, align 4, !tbaa !34
  br label %93

93:                                               ; preds = %88, %86
  %94 = fcmp une float %64, 0.000000e+00
  br i1 %94, label %95, label %100

95:                                               ; preds = %93
  %96 = load <4 x float>, ptr %69, align 4, !tbaa !34
  %97 = insertelement <4 x float> poison, float %64, i64 0
  %98 = shufflevector <4 x float> %97, <4 x float> poison, <4 x i32> zeroinitializer
  %99 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %98, <4 x float> %8, <4 x float> %96)
  store <4 x float> %99, ptr %69, align 4, !tbaa !34
  br label %100

100:                                              ; preds = %95, %93
  %101 = fcmp une float %17, 0.000000e+00
  br i1 %101, label %102, label %107

102:                                              ; preds = %100
  %103 = load <4 x float>, ptr %2, align 4, !tbaa !34
  %104 = insertelement <4 x float> poison, float %17, i64 0
  %105 = shufflevector <4 x float> %104, <4 x float> poison, <4 x i32> zeroinitializer
  %106 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %105, <4 x float> %8, <4 x float> %103)
  store <4 x float> %106, ptr %2, align 4, !tbaa !34
  br label %107

107:                                              ; preds = %102, %100
  %108 = fcmp une float %62, 0.000000e+00
  br i1 %108, label %109, label %114

109:                                              ; preds = %107
  %110 = load <4 x float>, ptr %70, align 4, !tbaa !34
  %111 = insertelement <4 x float> poison, float %62, i64 0
  %112 = shufflevector <4 x float> %111, <4 x float> poison, <4 x i32> zeroinitializer
  %113 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %112, <4 x float> %8, <4 x float> %110)
  store <4 x float> %113, ptr %70, align 4, !tbaa !34
  br label %114

114:                                              ; preds = %109, %107
  %115 = fcmp une float %61, 0.000000e+00
  br i1 %115, label %116, label %121

116:                                              ; preds = %114
  %117 = load <4 x float>, ptr %71, align 4, !tbaa !34
  %118 = insertelement <4 x float> poison, float %61, i64 0
  %119 = shufflevector <4 x float> %118, <4 x float> poison, <4 x i32> zeroinitializer
  %120 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %119, <4 x float> %8, <4 x float> %117)
  store <4 x float> %120, ptr %71, align 4, !tbaa !34
  br label %121

121:                                              ; preds = %116, %114
  %122 = fcmp une float %43, 0.000000e+00
  br i1 %122, label %123, label %128

123:                                              ; preds = %121
  %124 = load <4 x float>, ptr %53, align 4, !tbaa !34
  %125 = insertelement <4 x float> poison, float %43, i64 0
  %126 = shufflevector <4 x float> %125, <4 x float> poison, <4 x i32> zeroinitializer
  %127 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %126, <4 x float> %8, <4 x float> %124)
  store <4 x float> %127, ptr %53, align 4, !tbaa !34
  br label %128

128:                                              ; preds = %123, %121
  %129 = fcmp une float %63, 0.000000e+00
  br i1 %129, label %130, label %135

130:                                              ; preds = %128
  %131 = load <4 x float>, ptr %72, align 4, !tbaa !34
  %132 = insertelement <4 x float> poison, float %63, i64 0
  %133 = shufflevector <4 x float> %132, <4 x float> poison, <4 x i32> zeroinitializer
  %134 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %133, <4 x float> %8, <4 x float> %131)
  store <4 x float> %134, ptr %72, align 4, !tbaa !34
  br label %135

135:                                              ; preds = %130, %128
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
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
  %22 = zext nneg i32 %4 to i64
  %23 = zext nneg i32 %4 to i64
  %24 = zext nneg i32 %4 to i64
  br label %25

25:                                               ; preds = %5, %94
  %26 = phi i64 [ 2, %5 ], [ %98, %94 ]
  %27 = phi ptr [ %16, %5 ], [ %95, %94 ]
  %28 = phi ptr [ %11, %5 ], [ %96, %94 ]
  %29 = phi ptr [ %15, %5 ], [ %97, %94 ]
  %30 = getelementptr inbounds ptr, ptr %7, i64 %26
  %31 = load ptr, ptr %30, align 8, !tbaa !57
  %32 = getelementptr inbounds float, ptr %31, i64 %19
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = getelementptr inbounds ptr, ptr %8, i64 %26
  %35 = load ptr, ptr %34, align 8, !tbaa !57
  %36 = getelementptr inbounds float, ptr %35, i64 %20
  %37 = load float, ptr %36, align 4, !tbaa !34
  %38 = fadd float %33, %37
  %39 = fcmp oeq float %38, 0.000000e+00
  %40 = or i1 %39, %21
  br i1 %40, label %50, label %41

41:                                               ; preds = %25, %41
  %42 = phi i64 [ %48, %41 ], [ 0, %25 ]
  %43 = getelementptr inbounds float, ptr %1, i64 %42
  %44 = load float, ptr %43, align 4, !tbaa !34
  %45 = getelementptr inbounds float, ptr %27, i64 %42
  %46 = load float, ptr %45, align 4, !tbaa !34
  %47 = tail call float @llvm.fmuladd.f32(float %38, float %44, float %46)
  store float %47, ptr %45, align 4, !tbaa !34
  %48 = add nuw nsw i64 %42, 1
  %49 = icmp eq i64 %48, %22
  br i1 %49, label %50, label %41, !llvm.loop !61

50:                                               ; preds = %41, %25
  %51 = add nuw nsw i64 %26, 3
  %52 = getelementptr inbounds ptr, ptr %7, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !57
  %54 = getelementptr inbounds float, ptr %53, i64 %19
  %55 = load float, ptr %54, align 4, !tbaa !34
  %56 = getelementptr inbounds ptr, ptr %8, i64 %51
  %57 = load ptr, ptr %56, align 8, !tbaa !57
  %58 = getelementptr inbounds float, ptr %57, i64 %20
  %59 = load float, ptr %58, align 4, !tbaa !34
  %60 = fadd float %55, %59
  %61 = fcmp oeq float %60, 0.000000e+00
  %62 = or i1 %61, %21
  br i1 %62, label %72, label %63

63:                                               ; preds = %50, %63
  %64 = phi i64 [ %70, %63 ], [ 0, %50 ]
  %65 = getelementptr inbounds float, ptr %1, i64 %64
  %66 = load float, ptr %65, align 4, !tbaa !34
  %67 = getelementptr inbounds float, ptr %28, i64 %64
  %68 = load float, ptr %67, align 4, !tbaa !34
  %69 = tail call float @llvm.fmuladd.f32(float %60, float %66, float %68)
  store float %69, ptr %67, align 4, !tbaa !34
  %70 = add nuw nsw i64 %64, 1
  %71 = icmp eq i64 %70, %23
  br i1 %71, label %72, label %63, !llvm.loop !62

72:                                               ; preds = %63, %50
  %73 = add nuw nsw i64 %26, 6
  %74 = getelementptr inbounds ptr, ptr %7, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !57
  %76 = getelementptr inbounds float, ptr %75, i64 %19
  %77 = load float, ptr %76, align 4, !tbaa !34
  %78 = getelementptr inbounds ptr, ptr %8, i64 %73
  %79 = load ptr, ptr %78, align 8, !tbaa !57
  %80 = getelementptr inbounds float, ptr %79, i64 %20
  %81 = load float, ptr %80, align 4, !tbaa !34
  %82 = fadd float %77, %81
  %83 = fcmp oeq float %82, 0.000000e+00
  %84 = or i1 %83, %21
  br i1 %84, label %94, label %85

85:                                               ; preds = %72, %85
  %86 = phi i64 [ %92, %85 ], [ 0, %72 ]
  %87 = getelementptr inbounds float, ptr %1, i64 %86
  %88 = load float, ptr %87, align 4, !tbaa !34
  %89 = getelementptr inbounds float, ptr %29, i64 %86
  %90 = load float, ptr %89, align 4, !tbaa !34
  %91 = tail call float @llvm.fmuladd.f32(float %82, float %88, float %90)
  store float %91, ptr %89, align 4, !tbaa !34
  %92 = add nuw nsw i64 %86, 1
  %93 = icmp eq i64 %92, %24
  br i1 %93, label %94, label %85, !llvm.loop !63

94:                                               ; preds = %85, %72
  %95 = getelementptr inbounds float, ptr %27, i64 %9
  %96 = getelementptr inbounds float, ptr %28, i64 %9
  %97 = getelementptr inbounds float, ptr %29, i64 %9
  %98 = add nsw i64 %26, -1
  %99 = icmp eq i64 %26, 0
  br i1 %99, label %100, label %25, !llvm.loop !64

100:                                              ; preds = %94
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = distinct !{!60, !59}
!61 = distinct !{!61, !59}
!62 = distinct !{!62, !59}
!63 = distinct !{!63, !59}
!64 = distinct !{!64, !59}
