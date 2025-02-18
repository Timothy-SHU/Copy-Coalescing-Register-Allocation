; ModuleID = 'blender/source/blender/render/intern/source/shadeoutput.c'
source_filename = "blender/source/blender/render/intern/source/shadeoutput.c"
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
%struct.ShadeInput = type { ptr, ptr, ptr, ptr, ptr, i32, [3 x float], i16, ptr, ptr, ptr, i16, i16, i16, i16, i16, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], float, [3 x float], [3 x float], [4 x float], float, [4 x float], [3 x float], [3 x float], [8 x %struct.ShadeInputUV], [8 x %struct.ShadeInputCol], i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], i32, i32, i32, [3 x float], i32, i32, i32, [3 x float], float, i8, i8, i16, i16, i16, i32, i32, i32, i32, ptr, ptr }
%struct.ShadeInputUV = type { [3 x float], [3 x float], [3 x float], ptr }
%struct.ShadeInputCol = type { [4 x float], ptr }
%struct.Group = type { %struct.ID, %struct.ListBase, i32, [3 x float] }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }
%struct.LampRen = type { ptr, ptr, float, float, float, [3 x float], i16, i32, float, float, float, float, float, float, float, float, float, i32, float, float, [3 x float], float, float, float, float, float, float, i16, float, float, ptr, i16, i16, float, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, [1 x i16], [1 x i16], float, float, float, float, ptr, ptr, ptr, [3 x [3 x float]], float, [3 x float], float, [4 x [4 x float]], [3 x [3 x float]], [8 x [3 x float]], float, ptr, [1 x ptr], [18 x ptr], i32, i32 }
%struct.ObjectInstanceRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], [4 x [4 x float]], [3 x [3 x float]], i16, [3 x float], [2 x float], ptr, ptr, ptr, i32, ptr, i32 }
%struct.ShadBuf = type { i16, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], ptr, ptr, float, float, float, float, float, [3 x i32], i32, i32, %struct.ListBase, [1 x ptr] }
%struct.VlakRen = type { ptr, ptr, ptr, ptr, [3 x float], ptr, i8, i8, i8, i32 }
%struct.ShadeResult = type { [4 x float], [4 x float], float, float, float, [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float] }
%struct.ObjectRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [2 x [3 x float]], i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], ptr, ptr, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.LampShadowSample = type { [16 x %struct.LampShadowSubSample] }
%struct.LampShadowSubSample = type { i32, [4 x float] }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }

@R = external global %struct.Render, align 8
@.str = private unnamed_addr constant [9 x i8] c"Lamp.002\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local nonnull ptr @get_lights(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !34
  %3 = and i32 %2, 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 121
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Group, ptr %7, i64 0, i32 1
  br label %20

11:                                               ; preds = %5
  %12 = load ptr, ptr %0, align 8, !tbaa !58
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.Material, ptr %12, i64 0, i32 105
  %16 = load ptr, ptr %15, align 8, !tbaa !59
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Group, ptr %16, i64 0, i32 1
  br label %20

20:                                               ; preds = %11, %14, %1, %18, %9
  %21 = phi ptr [ %10, %9 ], [ %19, %18 ], [ getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 66), %1 ], [ getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 66), %14 ], [ getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 66), %11 ]
  ret ptr %21
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local float @mistfactor(float noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 31), align 4, !tbaa !63
  %4 = fsub float %0, %3
  %5 = fcmp ogt float %4, 0.000000e+00
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 32), align 8, !tbaa !64
  %8 = fcmp olt float %4, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = fdiv float %4, %7
  %11 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 5), align 2, !tbaa !65
  switch i16 %11, label %14 [
    i16 0, label %12
    i16 1, label %16
  ]

12:                                               ; preds = %9
  %13 = fmul float %10, %10
  br label %16

14:                                               ; preds = %9
  %15 = tail call float @sqrtf(float noundef %10) #12
  br label %16

16:                                               ; preds = %2, %6, %9, %14, %12
  %17 = phi float [ %13, %12 ], [ %15, %14 ], [ %10, %9 ], [ 1.000000e+00, %6 ], [ 0.000000e+00, %2 ]
  %18 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 33), align 4, !tbaa !66
  %19 = fcmp une float %18, 0.000000e+00
  %20 = fcmp une float %17, 0.000000e+00
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %44

22:                                               ; preds = %16
  %23 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33, i64 0, i64 2), align 8, !tbaa !67
  %24 = load float, ptr %1, align 4, !tbaa !67
  %25 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33, i64 1, i64 2), align 8, !tbaa !67
  %26 = getelementptr inbounds float, ptr %1, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !67
  %28 = fmul float %25, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33, i64 2, i64 2), align 8, !tbaa !67
  %31 = getelementptr inbounds float, ptr %1, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !67
  %33 = tail call float @llvm.fmuladd.f32(float %30, float %32, float %29)
  %34 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33, i64 3, i64 2), align 8, !tbaa !67
  %35 = fadd float %33, %34
  %36 = fcmp ogt float %35, %18
  br i1 %36, label %44, label %37

37:                                               ; preds = %22
  %38 = fcmp ogt float %35, 0.000000e+00
  br i1 %38, label %39, label %44

39:                                               ; preds = %37
  %40 = fsub float %18, %35
  %41 = fdiv float %40, %18
  %42 = fmul float %41, %41
  %43 = fmul float %17, %42
  br label %44

44:                                               ; preds = %22, %39, %37, %16
  %45 = phi float [ %43, %39 ], [ %17, %37 ], [ %17, %16 ], [ 0.000000e+00, %22 ]
  %46 = fsub float 1.000000e+00, %45
  %47 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 30), align 8, !tbaa !68
  %48 = fsub float 1.000000e+00, %47
  %49 = fmul float %46, %48
  ret float %49
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @renderspothalo(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, float noundef %2) local_unnamed_addr #5 {
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = fcmp oeq float %2, 0.000000e+00
  br i1 %7, label %443, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !34
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 121
  %14 = load ptr, ptr %13, align 8, !tbaa !56
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Group, ptr %14, i64 0, i32 1
  br label %27

18:                                               ; preds = %12
  %19 = load ptr, ptr %0, align 8, !tbaa !58
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.Material, ptr %19, i64 0, i32 105
  %23 = load ptr, ptr %22, align 8, !tbaa !59
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.Group, ptr %23, i64 0, i32 1
  br label %27

27:                                               ; preds = %8, %16, %18, %21, %25
  %28 = phi ptr [ %17, %16 ], [ %26, %25 ], [ getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 66), %8 ], [ getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 66), %21 ], [ getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 66), %18 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !69
  %30 = icmp eq ptr %29, null
  br i1 %30, label %438, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %33 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %34 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 117
  %35 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  %36 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 1
  %37 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %38 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %39 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30
  %40 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 1
  %41 = getelementptr inbounds double, ptr %4, i64 1
  %42 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 2
  %43 = getelementptr inbounds double, ptr %4, i64 2
  %44 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 2
  %45 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  %46 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 1
  %47 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %48 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %49 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %50 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %51 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %52 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %53 = getelementptr inbounds float, ptr %1, i64 1
  %54 = getelementptr inbounds float, ptr %1, i64 2
  %55 = getelementptr inbounds float, ptr %1, i64 3
  br label %56

56:                                               ; preds = %31, %435
  %57 = phi ptr [ %29, %31 ], [ %436, %435 ]
  %58 = getelementptr inbounds %struct.GroupObject, ptr %57, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !70
  %60 = icmp eq ptr %59, null
  br i1 %60, label %435, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 6
  %63 = load i16, ptr %62, align 8, !tbaa !72
  %64 = icmp eq i16 %63, 2
  br i1 %64, label %65, label %435

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 7
  %67 = load i32, ptr %66, align 4, !tbaa !74
  %68 = and i32 %67, 2
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %435, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 36
  %72 = load i16, ptr %71, align 4, !tbaa !75
  %73 = icmp eq i16 %72, 3
  br i1 %73, label %435, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 16
  %76 = load float, ptr %75, align 8, !tbaa !76
  %77 = fcmp ogt float %76, 0.000000e+00
  br i1 %77, label %78, label %435

78:                                               ; preds = %74
  %79 = and i32 %67, 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %32, align 8, !tbaa !77
  %83 = icmp eq ptr %82, null
  br i1 %83, label %92, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 17
  %86 = load i32, ptr %85, align 4, !tbaa !78
  %87 = load ptr, ptr %33, align 8, !tbaa !79
  %88 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %87, i64 0, i32 7
  %89 = load i32, ptr %88, align 8, !tbaa !80
  %90 = and i32 %89, %86
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %435, label %92

92:                                               ; preds = %81, %84, %78
  %93 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 17
  %94 = load i32, ptr %93, align 4, !tbaa !78
  %95 = load i32, ptr %34, align 8, !tbaa !82
  %96 = and i32 %95, %94
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %435, label %98

98:                                               ; preds = %92
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  %99 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !83
  %100 = and i32 %99, 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %122, label %102

102:                                              ; preds = %98
  %103 = load float, ptr %35, align 8, !tbaa !67
  %104 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 5
  %105 = load float, ptr %104, align 4, !tbaa !67
  %106 = fsub float %103, %105
  store float %106, ptr %5, align 4, !tbaa !67
  %107 = load float, ptr %36, align 4, !tbaa !67
  %108 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 5, i64 1
  %109 = load float, ptr %108, align 4, !tbaa !67
  %110 = fsub float %107, %109
  store float %110, ptr %37, align 4, !tbaa !67
  %111 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 5, i64 2
  %112 = load float, ptr %111, align 4, !tbaa !67
  %113 = fneg float %112
  store float %113, ptr %38, align 4, !tbaa !67
  %114 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 59
  call void @mul_m3_v3(ptr noundef nonnull %114, ptr noundef nonnull %5) #12
  %115 = load float, ptr %37, align 4, !tbaa !67
  %116 = load float, ptr %38, align 4, !tbaa !67
  %117 = fpext float %116 to double
  %118 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 62
  %119 = load float, ptr %118, align 4, !tbaa !84
  %120 = fpext float %119 to double
  %121 = fmul double %117, %120
  br label %129

122:                                              ; preds = %98
  %123 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 61
  %124 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 61, i64 1
  %125 = load float, ptr %124, align 4, !tbaa !67
  %126 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 61, i64 2
  %127 = load float, ptr %126, align 4, !tbaa !67
  %128 = fpext float %127 to double
  br label %129

129:                                              ; preds = %122, %102
  %130 = phi double [ %128, %122 ], [ %121, %102 ]
  %131 = phi float [ %125, %122 ], [ %115, %102 ]
  %132 = phi ptr [ %123, %122 ], [ %5, %102 ]
  %133 = load float, ptr %132, align 4, !tbaa !67
  %134 = fpext float %133 to double
  %135 = fpext float %131 to double
  %136 = load float, ptr %39, align 4, !tbaa !67
  %137 = fpext float %136 to double
  store double %137, ptr %4, align 16, !tbaa !85
  %138 = load float, ptr %40, align 4, !tbaa !67
  %139 = fpext float %138 to double
  store double %139, ptr %41, align 8, !tbaa !85
  %140 = load float, ptr %42, align 4, !tbaa !67
  %141 = fpext float %140 to double
  store double %141, ptr %43, align 16, !tbaa !85
  %142 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 59
  call void @mul_m3_v3_double(ptr noundef nonnull %142, ptr noundef nonnull %4) #12
  %143 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 23), align 2, !tbaa !86
  %144 = and i16 %143, 1
  %145 = icmp eq i16 %144, 0
  br i1 %145, label %200, label %146

146:                                              ; preds = %129
  %147 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 5
  %148 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 5, i64 2
  %149 = load float, ptr %148, align 4, !tbaa !67
  %150 = fneg float %149
  %151 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 31), align 4, !tbaa !63
  %152 = fsub float %150, %151
  %153 = fcmp ogt float %152, 0.000000e+00
  br i1 %153, label %154, label %164

154:                                              ; preds = %146
  %155 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 32), align 8, !tbaa !64
  %156 = fcmp olt float %152, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %154
  %158 = fdiv float %152, %155
  %159 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 5), align 2, !tbaa !65
  switch i16 %159, label %162 [
    i16 0, label %160
    i16 1, label %164
  ]

160:                                              ; preds = %157
  %161 = fmul float %158, %158
  br label %164

162:                                              ; preds = %157
  %163 = call float @sqrtf(float noundef %158) #12
  br label %164

164:                                              ; preds = %162, %160, %157, %154, %146
  %165 = phi float [ %161, %160 ], [ %163, %162 ], [ %158, %157 ], [ 1.000000e+00, %154 ], [ 0.000000e+00, %146 ]
  %166 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 33), align 4, !tbaa !66
  %167 = fcmp une float %166, 0.000000e+00
  %168 = fcmp une float %165, 0.000000e+00
  %169 = select i1 %167, i1 %168, i1 false
  br i1 %169, label %170, label %192

170:                                              ; preds = %164
  %171 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33, i64 0, i64 2), align 8, !tbaa !67
  %172 = load float, ptr %147, align 4, !tbaa !67
  %173 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33, i64 1, i64 2), align 8, !tbaa !67
  %174 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 5, i64 1
  %175 = load float, ptr %174, align 4, !tbaa !67
  %176 = fmul float %173, %175
  %177 = call float @llvm.fmuladd.f32(float %171, float %172, float %176)
  %178 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33, i64 2, i64 2), align 8, !tbaa !67
  %179 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 5, i64 2
  %180 = load float, ptr %179, align 4, !tbaa !67
  %181 = call float @llvm.fmuladd.f32(float %178, float %180, float %177)
  %182 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33, i64 3, i64 2), align 8, !tbaa !67
  %183 = fadd float %181, %182
  %184 = fcmp ogt float %183, %166
  br i1 %184, label %192, label %185

185:                                              ; preds = %170
  %186 = fcmp ogt float %183, 0.000000e+00
  br i1 %186, label %187, label %192

187:                                              ; preds = %185
  %188 = fsub float %166, %183
  %189 = fdiv float %188, %166
  %190 = fmul float %189, %189
  %191 = fmul float %165, %190
  br label %192

192:                                              ; preds = %164, %170, %185, %187
  %193 = phi float [ %191, %187 ], [ %165, %185 ], [ %165, %164 ], [ 0.000000e+00, %170 ]
  %194 = fsub float 1.000000e+00, %193
  %195 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 30), align 8, !tbaa !68
  %196 = fsub float 1.000000e+00, %195
  %197 = fmul float %194, %196
  %198 = fmul float %76, %197
  %199 = fcmp oeq float %198, 0.000000e+00
  br i1 %199, label %416, label %200

200:                                              ; preds = %192, %129
  %201 = phi float [ %198, %192 ], [ %76, %129 ]
  %202 = load float, ptr %44, align 8, !tbaa !67
  %203 = fcmp oeq float %202, 0.000000e+00
  br i1 %203, label %241, label %204

204:                                              ; preds = %200
  %205 = load float, ptr %45, align 8, !tbaa !67
  %206 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 5
  %207 = load float, ptr %206, align 4, !tbaa !67
  %208 = fsub float %205, %207
  store float %208, ptr %5, align 4, !tbaa !67
  %209 = load float, ptr %46, align 4, !tbaa !67
  %210 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 5, i64 1
  %211 = load float, ptr %210, align 4, !tbaa !67
  %212 = fsub float %209, %211
  store float %212, ptr %47, align 4, !tbaa !67
  %213 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 5, i64 2
  %214 = load float, ptr %213, align 4, !tbaa !67
  %215 = fsub float %202, %214
  store float %215, ptr %48, align 4, !tbaa !67
  %216 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 59, i64 0, i64 2
  %217 = load float, ptr %216, align 8, !tbaa !67
  %218 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 59, i64 1, i64 2
  %219 = load float, ptr %218, align 4, !tbaa !67
  %220 = fmul float %212, %219
  %221 = call float @llvm.fmuladd.f32(float %217, float %208, float %220)
  %222 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 59, i64 2, i64 2
  %223 = load float, ptr %222, align 8, !tbaa !67
  %224 = call float @llvm.fmuladd.f32(float %223, float %215, float %221)
  %225 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 62
  %226 = load float, ptr %225, align 4, !tbaa !84
  %227 = fmul float %226, %224
  %228 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 59, i64 0, i64 1
  %229 = load float, ptr %228, align 4, !tbaa !67
  %230 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 59, i64 1, i64 1
  %231 = load float, ptr %230, align 4, !tbaa !67
  %232 = fmul float %212, %231
  %233 = call float @llvm.fmuladd.f32(float %229, float %208, float %232)
  %234 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 59, i64 2, i64 1
  %235 = load float, ptr %234, align 4, !tbaa !67
  %236 = call float @llvm.fmuladd.f32(float %235, float %215, float %233)
  %237 = load double, ptr %43, align 16, !tbaa !85
  %238 = call double @llvm.fabs.f64(double %237)
  %239 = fcmp olt double %238, 0x3E80000000000000
  br i1 %239, label %240, label %241

240:                                              ; preds = %204
  br label %241

241:                                              ; preds = %240, %204, %200
  %242 = phi float [ %227, %240 ], [ %227, %204 ], [ 0.000000e+00, %200 ]
  %243 = phi float [ %236, %240 ], [ %236, %204 ], [ 0.000000e+00, %200 ]
  %244 = phi i1 [ false, %240 ], [ true, %204 ], [ true, %200 ]
  %245 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 62
  %246 = load float, ptr %245, align 4, !tbaa !84
  %247 = fpext float %246 to double
  %248 = load double, ptr %43, align 16, !tbaa !85
  %249 = fmul double %248, %247
  store double %249, ptr %43, align 16, !tbaa !85
  %250 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 4
  %251 = load float, ptr %250, align 8, !tbaa !87
  %252 = fmul float %246, %251
  %253 = load double, ptr %4, align 16, !tbaa !85
  %254 = load double, ptr %41, align 8, !tbaa !85
  %255 = fmul double %254, %254
  %256 = call double @llvm.fmuladd.f64(double %253, double %253, double %255)
  %257 = fneg double %249
  %258 = call double @llvm.fmuladd.f64(double %257, double %249, double %256)
  %259 = fmul double %254, %135
  %260 = call double @llvm.fmuladd.f64(double %253, double %134, double %259)
  %261 = call double @llvm.fmuladd.f64(double %257, double %130, double %260)
  %262 = call double @llvm.fabs.f64(double %258)
  %263 = fcmp olt double %262, 0x3CB0000000000000
  br i1 %263, label %416, label %264

264:                                              ; preds = %241
  %265 = fneg double %130
  %266 = fmul double %135, %135
  %267 = call double @llvm.fmuladd.f64(double %134, double %134, double %266)
  %268 = call double @llvm.fmuladd.f64(double %265, double %130, double %267)
  %269 = fneg double %258
  %270 = fmul double %268, %269
  %271 = call double @llvm.fmuladd.f64(double %261, double %261, double %270)
  %272 = fcmp oeq double %271, 0.000000e+00
  br i1 %272, label %273, label %276

273:                                              ; preds = %264
  %274 = fneg double %261
  %275 = fdiv double %274, %258
  br label %285

276:                                              ; preds = %264
  %277 = fcmp ogt double %271, 0.000000e+00
  br i1 %277, label %278, label %285

278:                                              ; preds = %276
  %279 = call double @sqrt(double noundef %271) #12
  %280 = fneg double %261
  %281 = fsub double %279, %261
  %282 = fdiv double %281, %258
  %283 = fsub double %280, %279
  %284 = fdiv double %283, %258
  br label %285

285:                                              ; preds = %278, %276, %273
  %286 = phi double [ %275, %273 ], [ %282, %278 ], [ 0.000000e+00, %276 ]
  %287 = phi double [ %275, %273 ], [ %284, %278 ], [ 0.000000e+00, %276 ]
  %288 = phi i1 [ true, %273 ], [ true, %278 ], [ false, %276 ]
  br i1 %288, label %289, label %416

289:                                              ; preds = %285
  %290 = fcmp ogt double %286, %287
  %291 = select i1 %290, double %287, double %286
  %292 = select i1 %290, double %286, double %287
  %293 = load double, ptr %43, align 16, !tbaa !85
  %294 = call double @llvm.fmuladd.f64(double %291, double %293, double %130)
  %295 = fptrunc double %294 to float
  store float %295, ptr %49, align 4, !tbaa !67
  %296 = call double @llvm.fmuladd.f64(double %292, double %293, double %130)
  %297 = fptrunc double %296 to float
  store float %297, ptr %50, align 4, !tbaa !67
  %298 = fcmp ugt float %295, 0.000000e+00
  %299 = fcmp ugt float %297, 0.000000e+00
  %300 = fcmp oeq double %291, %292
  %301 = select i1 %299, i1 true, i1 %300
  %302 = and i1 %298, %301
  br i1 %302, label %416, label %303

303:                                              ; preds = %289
  br i1 %244, label %304, label %317

304:                                              ; preds = %303
  %305 = fneg float %252
  %306 = fpext float %305 to double
  %307 = fsub double %306, %130
  %308 = fdiv double %307, %293
  br i1 %298, label %312, label %309

309:                                              ; preds = %304
  %310 = fcmp olt float %295, %305
  br i1 %310, label %311, label %312

311:                                              ; preds = %309
  br label %312

312:                                              ; preds = %311, %309, %304
  %313 = phi double [ %308, %311 ], [ %291, %309 ], [ %308, %304 ]
  br i1 %301, label %319, label %314

314:                                              ; preds = %312
  %315 = fcmp olt float %297, %305
  br i1 %315, label %316, label %319

316:                                              ; preds = %314
  br label %319

317:                                              ; preds = %303
  %318 = or i1 %298, %301
  br i1 %318, label %416, label %319

319:                                              ; preds = %317, %316, %314, %312
  %320 = phi double [ %313, %316 ], [ %313, %314 ], [ %291, %317 ], [ %313, %312 ]
  %321 = phi double [ %308, %316 ], [ %292, %314 ], [ %292, %317 ], [ %308, %312 ]
  %322 = fcmp olt double %320, 0.000000e+00
  %323 = fcmp olt double %321, 0.000000e+00
  %324 = select i1 %322, i1 %323, i1 false
  br i1 %324, label %416, label %325

325:                                              ; preds = %319
  %326 = select i1 %322, double 0.000000e+00, double %320
  %327 = select i1 %323, double 0.000000e+00, double %321
  %328 = fcmp oeq double %326, %327
  br i1 %328, label %416, label %329

329:                                              ; preds = %325
  %330 = fcmp ogt double %326, %327
  %331 = select i1 %330, double %327, double %326
  %332 = select i1 %330, double %326, double %327
  br i1 %203, label %349, label %333

333:                                              ; preds = %329
  br i1 %244, label %334, label %338

334:                                              ; preds = %333
  %335 = fpext float %242 to double
  %336 = fsub double %335, %130
  %337 = fdiv double %336, %293
  br label %343

338:                                              ; preds = %333
  %339 = fpext float %243 to double
  %340 = fsub double %339, %135
  %341 = load double, ptr %41, align 8, !tbaa !85
  %342 = fdiv double %340, %341
  br label %343

343:                                              ; preds = %338, %334
  %344 = phi double [ %337, %334 ], [ %342, %338 ]
  %345 = fcmp olt double %344, %331
  br i1 %345, label %416, label %346

346:                                              ; preds = %343
  %347 = fcmp olt double %344, %332
  br i1 %347, label %348, label %349

348:                                              ; preds = %346
  br label %349

349:                                              ; preds = %348, %346, %329
  %350 = phi double [ %344, %348 ], [ %332, %346 ], [ %332, %329 ]
  %351 = load double, ptr %4, align 16, !tbaa !85
  %352 = call double @llvm.fmuladd.f64(double %331, double %351, double %134)
  %353 = fptrunc double %352 to float
  store float %353, ptr %5, align 4, !tbaa !67
  %354 = load double, ptr %41, align 8, !tbaa !85
  %355 = call double @llvm.fmuladd.f64(double %331, double %354, double %135)
  %356 = fptrunc double %355 to float
  store float %356, ptr %51, align 4, !tbaa !67
  %357 = call double @llvm.fmuladd.f64(double %331, double %293, double %130)
  %358 = fptrunc double %357 to float
  store float %358, ptr %49, align 4, !tbaa !67
  %359 = call double @llvm.fmuladd.f64(double %350, double %351, double %134)
  %360 = fptrunc double %359 to float
  store float %360, ptr %6, align 4, !tbaa !67
  %361 = call double @llvm.fmuladd.f64(double %350, double %354, double %135)
  %362 = fptrunc double %361 to float
  store float %362, ptr %52, align 4, !tbaa !67
  %363 = call double @llvm.fmuladd.f64(double %350, double %293, double %130)
  %364 = fptrunc double %363 to float
  store float %364, ptr %50, align 4, !tbaa !67
  %365 = fmul float %356, %356
  %366 = call float @llvm.fmuladd.f32(float %353, float %353, float %365)
  %367 = call float @llvm.fmuladd.f32(float %358, float %358, float %366)
  %368 = call float @sqrtf(float noundef %367) #12
  %369 = fpext float %368 to double
  %370 = load float, ptr %6, align 4, !tbaa !67
  %371 = load float, ptr %52, align 4, !tbaa !67
  %372 = fmul float %371, %371
  %373 = call float @llvm.fmuladd.f32(float %370, float %370, float %372)
  %374 = load float, ptr %50, align 4, !tbaa !67
  %375 = call float @llvm.fmuladd.f32(float %374, float %374, float %373)
  %376 = call float @sqrtf(float noundef %375) #12
  %377 = fpext float %376 to double
  %378 = load float, ptr %6, align 4, !tbaa !67
  %379 = load float, ptr %5, align 4, !tbaa !67
  %380 = fsub float %378, %379
  %381 = load float, ptr %52, align 4, !tbaa !67
  %382 = load float, ptr %51, align 4, !tbaa !67
  %383 = fsub float %381, %382
  %384 = load float, ptr %50, align 4, !tbaa !67
  %385 = load float, ptr %49, align 4, !tbaa !67
  %386 = fsub float %384, %385
  %387 = fmul float %383, %383
  %388 = call float @llvm.fmuladd.f32(float %380, float %380, float %387)
  %389 = call float @llvm.fmuladd.f32(float %386, float %386, float %388)
  %390 = call float @sqrtf(float noundef %389) #12
  %391 = fpext float %390 to double
  %392 = fpext float %252 to double
  %393 = fdiv double %369, %392
  %394 = call double @sqrt(double noundef %393) #12
  %395 = fdiv double %377, %392
  %396 = call double @sqrt(double noundef %395) #12
  %397 = fdiv double %391, %392
  %398 = fsub double 1.000000e+00, %394
  %399 = fsub double 1.000000e+00, %396
  %400 = fadd double %398, %399
  %401 = fmul double %397, %400
  %402 = fptrunc double %401 to float
  %403 = fcmp ugt float %402, 0.000000e+00
  br i1 %403, label %404, label %416

404:                                              ; preds = %349
  %405 = fmul float %201, %402
  %406 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 57
  %407 = load ptr, ptr %406, align 8, !tbaa !88
  %408 = icmp eq ptr %407, null
  br i1 %408, label %416, label %409

409:                                              ; preds = %404
  %410 = getelementptr inbounds %struct.ShadBuf, ptr %407, i64 0, i32 1
  %411 = load i16, ptr %410, align 2, !tbaa !89
  %412 = icmp eq i16 %411, 0
  br i1 %412, label %416, label %413

413:                                              ; preds = %409
  %414 = call float @shadow_halo(ptr noundef %59, ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  %415 = fmul float %405, %414
  br label %416

416:                                              ; preds = %192, %241, %285, %289, %317, %319, %325, %343, %349, %404, %409, %413
  %417 = phi float [ 0.000000e+00, %241 ], [ 0.000000e+00, %289 ], [ 0.000000e+00, %319 ], [ 0.000000e+00, %325 ], [ %405, %404 ], [ %405, %409 ], [ %415, %413 ], [ %402, %349 ], [ 0.000000e+00, %343 ], [ 0.000000e+00, %317 ], [ 0.000000e+00, %285 ], [ 0.000000e+00, %192 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  %418 = fcmp ogt float %417, 0.000000e+00
  br i1 %418, label %419, label %435

419:                                              ; preds = %416
  %420 = fmul float %417, %2
  %421 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 8
  %422 = load float, ptr %421, align 8, !tbaa !91
  %423 = load float, ptr %1, align 4, !tbaa !67
  %424 = call float @llvm.fmuladd.f32(float %420, float %422, float %423)
  store float %424, ptr %1, align 4, !tbaa !67
  %425 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 9
  %426 = load float, ptr %425, align 4, !tbaa !92
  %427 = load float, ptr %53, align 4, !tbaa !67
  %428 = call float @llvm.fmuladd.f32(float %420, float %426, float %427)
  store float %428, ptr %53, align 4, !tbaa !67
  %429 = getelementptr inbounds %struct.LampRen, ptr %59, i64 0, i32 10
  %430 = load float, ptr %429, align 8, !tbaa !93
  %431 = load float, ptr %54, align 4, !tbaa !67
  %432 = call float @llvm.fmuladd.f32(float %420, float %430, float %431)
  store float %432, ptr %54, align 4, !tbaa !67
  %433 = load float, ptr %55, align 4, !tbaa !67
  %434 = fadd float %420, %433
  store float %434, ptr %55, align 4, !tbaa !67
  br label %435

435:                                              ; preds = %61, %65, %70, %74, %419, %416, %92, %84, %56
  %436 = load ptr, ptr %57, align 8, !tbaa !69
  %437 = icmp eq ptr %436, null
  br i1 %437, label %438, label %56, !llvm.loop !94

438:                                              ; preds = %435, %27
  %439 = getelementptr inbounds float, ptr %1, i64 3
  %440 = load float, ptr %439, align 4, !tbaa !67
  %441 = fcmp ogt float %440, 1.000000e+00
  br i1 %441, label %442, label %443

442:                                              ; preds = %438
  store float 1.000000e+00, ptr %439, align 4, !tbaa !67
  br label %443

443:                                              ; preds = %438, %442, %3
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @fresnel_fac(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3) local_unnamed_addr #6 {
  %5 = fcmp oeq float %3, 0.000000e+00
  br i1 %5, label %31, label %6

6:                                                ; preds = %4
  %7 = load float, ptr %0, align 4, !tbaa !67
  %8 = load float, ptr %1, align 4, !tbaa !67
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !67
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !67
  %13 = fmul float %10, %12
  %14 = tail call float @llvm.fmuladd.f32(float %7, float %8, float %13)
  %15 = getelementptr inbounds float, ptr %0, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !67
  %17 = getelementptr inbounds float, ptr %1, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !67
  %19 = tail call float @llvm.fmuladd.f32(float %16, float %18, float %14)
  %20 = fcmp ogt float %19, 0.000000e+00
  %21 = fneg float %19
  %22 = select i1 %20, float %19, float %21
  %23 = fadd float %22, 1.000000e+00
  %24 = fsub float 1.000000e+00, %2
  %25 = tail call float @powf(float noundef %23, float noundef %3) #12
  %26 = tail call float @llvm.fmuladd.f32(float %24, float %25, float %2)
  %27 = fcmp olt float %26, 0.000000e+00
  br i1 %27, label %31, label %28

28:                                               ; preds = %6
  %29 = fcmp ogt float %26, 1.000000e+00
  %30 = select i1 %29, float 1.000000e+00, float %26
  br label %31

31:                                               ; preds = %28, %6, %4
  %32 = phi float [ 1.000000e+00, %4 ], [ 0.000000e+00, %6 ], [ %30, %28 ]
  ret float %32
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @calc_R_ref(ptr nocapture noundef %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %3 = load float, ptr %2, align 4, !tbaa !67
  %4 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30
  %5 = load float, ptr %4, align 4, !tbaa !67
  %6 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !67
  %8 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !67
  %10 = fmul float %7, %9
  %11 = tail call float @llvm.fmuladd.f32(float %3, float %5, float %10)
  %12 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !67
  %14 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !67
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %15, float %11)
  %17 = fmul float %16, -2.000000e+00
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %3, float %5)
  %19 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 58
  store float %18, ptr %19, align 4, !tbaa !67
  %20 = tail call float @llvm.fmuladd.f32(float %17, float %7, float %9)
  %21 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 58, i64 1
  store float %20, ptr %21, align 4, !tbaa !67
  %22 = tail call float @llvm.fmuladd.f32(float %17, float %13, float %15)
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 58, i64 2
  store float %22, ptr %23, align 4, !tbaa !67
  %24 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %25 = load i16, ptr %24, align 8, !tbaa !97
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %117, label %27

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !77
  %30 = getelementptr inbounds %struct.VlakRen, ptr %29, i64 0, i32 7
  %31 = load i8, ptr %30, align 1, !tbaa !98
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %83, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 88
  %36 = load float, ptr %35, align 8, !tbaa !67
  %37 = fadd float %3, %36
  %38 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 90
  %39 = load float, ptr %38, align 8, !tbaa !100
  %40 = fadd float %5, %39
  %41 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 88, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !67
  %43 = fadd float %7, %42
  %44 = fmul float %9, %43
  %45 = tail call float @llvm.fmuladd.f32(float %37, float %40, float %44)
  %46 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 88, i64 2
  %47 = load float, ptr %46, align 8, !tbaa !67
  %48 = fadd float %13, %47
  %49 = tail call float @llvm.fmuladd.f32(float %48, float %15, float %45)
  %50 = fmul float %49, -2.000000e+00
  %51 = tail call float @llvm.fmuladd.f32(float %50, float %37, float %40)
  %52 = fsub float %18, %51
  %53 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 84
  store float %52, ptr %53, align 8, !tbaa !67
  %54 = tail call float @llvm.fmuladd.f32(float %50, float %43, float %9)
  %55 = fsub float %20, %54
  %56 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 84, i64 1
  store float %55, ptr %56, align 4, !tbaa !67
  %57 = tail call float @llvm.fmuladd.f32(float %50, float %48, float %15)
  %58 = fsub float %22, %57
  %59 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 84, i64 2
  store float %58, ptr %59, align 8, !tbaa !67
  %60 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 89
  %61 = load float, ptr %60, align 4, !tbaa !67
  %62 = fadd float %3, %61
  %63 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 89, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !67
  %65 = fadd float %7, %64
  %66 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 91
  %67 = load float, ptr %66, align 4, !tbaa !101
  %68 = fadd float %9, %67
  %69 = fmul float %65, %68
  %70 = tail call float @llvm.fmuladd.f32(float %62, float %5, float %69)
  %71 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 89, i64 2
  %72 = load float, ptr %71, align 4, !tbaa !67
  %73 = fadd float %13, %72
  %74 = tail call float @llvm.fmuladd.f32(float %73, float %15, float %70)
  %75 = fmul float %74, -2.000000e+00
  %76 = tail call float @llvm.fmuladd.f32(float %75, float %62, float %5)
  %77 = fsub float %18, %76
  %78 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 85
  store float %77, ptr %78, align 4, !tbaa !67
  %79 = tail call float @llvm.fmuladd.f32(float %75, float %65, float %68)
  %80 = fsub float %20, %79
  %81 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 85, i64 1
  store float %80, ptr %81, align 4, !tbaa !67
  %82 = tail call float @llvm.fmuladd.f32(float %75, float %73, float %15)
  br label %113

83:                                               ; preds = %27
  %84 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 90
  %85 = load float, ptr %84, align 8, !tbaa !100
  %86 = fadd float %5, %85
  %87 = tail call float @llvm.fmuladd.f32(float %3, float %86, float %10)
  %88 = tail call float @llvm.fmuladd.f32(float %13, float %15, float %87)
  %89 = fmul float %88, -2.000000e+00
  %90 = tail call float @llvm.fmuladd.f32(float %89, float %3, float %86)
  %91 = fsub float %18, %90
  %92 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 84
  store float %91, ptr %92, align 8, !tbaa !67
  %93 = tail call float @llvm.fmuladd.f32(float %89, float %7, float %9)
  %94 = fsub float %20, %93
  %95 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 84, i64 1
  store float %94, ptr %95, align 4, !tbaa !67
  %96 = tail call float @llvm.fmuladd.f32(float %89, float %13, float %15)
  %97 = fsub float %22, %96
  %98 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 84, i64 2
  store float %97, ptr %98, align 8, !tbaa !67
  %99 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 91
  %100 = load float, ptr %99, align 4, !tbaa !101
  %101 = fadd float %9, %100
  %102 = fmul float %7, %101
  %103 = tail call float @llvm.fmuladd.f32(float %3, float %5, float %102)
  %104 = tail call float @llvm.fmuladd.f32(float %13, float %15, float %103)
  %105 = fmul float %104, -2.000000e+00
  %106 = tail call float @llvm.fmuladd.f32(float %105, float %3, float %5)
  %107 = fsub float %18, %106
  %108 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 85
  store float %107, ptr %108, align 4, !tbaa !67
  %109 = tail call float @llvm.fmuladd.f32(float %105, float %7, float %101)
  %110 = fsub float %20, %109
  %111 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 85, i64 1
  store float %110, ptr %111, align 4, !tbaa !67
  %112 = tail call float @llvm.fmuladd.f32(float %105, float %13, float %15)
  br label %113

113:                                              ; preds = %83, %34
  %114 = phi float [ %82, %34 ], [ %112, %83 ]
  %115 = fsub float %22, %114
  %116 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 85, i64 2
  store float %115, ptr %116, align 4, !tbaa !67
  br label %117

117:                                              ; preds = %113, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @shade_color(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 4, !tbaa !102
  %6 = and i32 %5, 2048
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61
  %10 = load float, ptr %9, align 8, !tbaa !67
  %11 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 32
  store float %10, ptr %11, align 4, !tbaa !103
  %12 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !67
  %14 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 33
  store float %13, ptr %14, align 8, !tbaa !104
  %15 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 2
  %16 = load float, ptr %15, align 8, !tbaa !67
  %17 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 34
  store float %16, ptr %17, align 4, !tbaa !105
  %18 = and i32 %5, 536870912
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %49, label %20

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 3
  %22 = load float, ptr %21, align 4, !tbaa !67
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 49
  store float %22, ptr %23, align 8, !tbaa !106
  br label %49

24:                                               ; preds = %2
  %25 = and i32 %5, 128
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %49, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61
  %29 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 3
  %30 = load float, ptr %29, align 4, !tbaa !67
  %31 = fsub float 1.000000e+00, %30
  %32 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 32
  %33 = load float, ptr %32, align 4, !tbaa !103
  %34 = load float, ptr %28, align 8, !tbaa !67
  %35 = fmul float %30, %34
  %36 = tail call float @llvm.fmuladd.f32(float %33, float %31, float %35)
  store float %36, ptr %32, align 4, !tbaa !103
  %37 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 33
  %38 = load float, ptr %37, align 8, !tbaa !104
  %39 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !67
  %41 = fmul float %30, %40
  %42 = tail call float @llvm.fmuladd.f32(float %38, float %31, float %41)
  store float %42, ptr %37, align 8, !tbaa !104
  %43 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 34
  %44 = load float, ptr %43, align 4, !tbaa !105
  %45 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 2
  %46 = load float, ptr %45, align 8, !tbaa !67
  %47 = fmul float %30, %46
  %48 = tail call float @llvm.fmuladd.f32(float %44, float %31, float %47)
  store float %48, ptr %43, align 4, !tbaa !105
  br label %49

49:                                               ; preds = %24, %27, %8, %20
  %50 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 90
  %51 = load i16, ptr %50, align 4, !tbaa !107
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  tail call void @do_material_tex(ptr noundef nonnull %0, ptr noundef nonnull @R) #12
  br label %54

54:                                               ; preds = %53, %49
  %55 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 31
  %56 = load float, ptr %55, align 8, !tbaa !108
  %57 = fcmp une float %56, 0.000000e+00
  br i1 %57, label %58, label %94

58:                                               ; preds = %54
  %59 = fcmp oeq float %56, 0.000000e+00
  br i1 %59, label %89, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 32
  %62 = load float, ptr %61, align 4, !tbaa !109
  %63 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %64 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30
  %65 = load float, ptr %64, align 4, !tbaa !67
  %66 = load float, ptr %63, align 4, !tbaa !67
  %67 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !67
  %69 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !67
  %71 = fmul float %68, %70
  %72 = tail call float @llvm.fmuladd.f32(float %65, float %66, float %71)
  %73 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !67
  %75 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %76 = load float, ptr %75, align 4, !tbaa !67
  %77 = tail call float @llvm.fmuladd.f32(float %74, float %76, float %72)
  %78 = fcmp ogt float %77, 0.000000e+00
  %79 = fneg float %77
  %80 = select i1 %78, float %77, float %79
  %81 = fadd float %80, 1.000000e+00
  %82 = fsub float 1.000000e+00, %62
  %83 = tail call float @powf(float noundef %81, float noundef %56) #12
  %84 = tail call float @llvm.fmuladd.f32(float %82, float %83, float %62)
  %85 = fcmp olt float %84, 0.000000e+00
  br i1 %85, label %89, label %86

86:                                               ; preds = %60
  %87 = fcmp ogt float %84, 1.000000e+00
  %88 = select i1 %87, float 1.000000e+00, float %84
  br label %89

89:                                               ; preds = %58, %60, %86
  %90 = phi float [ 1.000000e+00, %58 ], [ 0.000000e+00, %60 ], [ %88, %86 ]
  %91 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 49
  %92 = load float, ptr %91, align 8, !tbaa !106
  %93 = fmul float %90, %92
  store float %93, ptr %91, align 8, !tbaa !106
  br label %94

94:                                               ; preds = %89, %54
  %95 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 21
  %96 = load i32, ptr %95, align 8, !tbaa !110
  %97 = and i32 %96, 65536
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 49
  store float 1.000000e+00, ptr %100, align 8, !tbaa !106
  br label %101

101:                                              ; preds = %99, %94
  %102 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 32
  %103 = load float, ptr %102, align 4, !tbaa !103
  %104 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6
  store float %103, ptr %104, align 4, !tbaa !67
  %105 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 33
  %106 = load float, ptr %105, align 8, !tbaa !104
  %107 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6, i64 1
  store float %106, ptr %107, align 4, !tbaa !67
  %108 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 34
  %109 = load float, ptr %108, align 4, !tbaa !105
  %110 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6, i64 2
  store float %109, ptr %110, align 4, !tbaa !67
  %111 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 49
  %112 = load float, ptr %111, align 8, !tbaa !106
  %113 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  store float %112, ptr %113, align 4, !tbaa !111
  %114 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 50
  %115 = load i16, ptr %114, align 2, !tbaa !113
  %116 = and i16 %115, 2
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %144, label %118

118:                                              ; preds = %101
  %119 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 4
  %120 = load ptr, ptr %119, align 8, !tbaa !114
  %121 = getelementptr inbounds %struct.ObjectRen, ptr %120, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !115
  %123 = icmp eq ptr %122, null
  br i1 %123, label %144, label %124

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.Object, ptr %122, i64 0, i32 98
  %126 = load float, ptr %125, align 4, !tbaa !67
  %127 = getelementptr inbounds %struct.Object, ptr %122, i64 0, i32 98, i64 1
  %128 = load float, ptr %127, align 4, !tbaa !67
  %129 = getelementptr inbounds %struct.Object, ptr %122, i64 0, i32 98, i64 2
  %130 = load float, ptr %129, align 4, !tbaa !67
  %131 = getelementptr inbounds %struct.Object, ptr %122, i64 0, i32 98, i64 3
  %132 = load float, ptr %131, align 4, !tbaa !67
  %133 = fcmp olt float %132, 0.000000e+00
  br i1 %133, label %137, label %134

134:                                              ; preds = %124
  %135 = fcmp ogt float %132, 1.000000e+00
  br i1 %135, label %136, label %137

136:                                              ; preds = %134
  br label %137

137:                                              ; preds = %124, %134, %136
  %138 = phi float [ 1.000000e+00, %136 ], [ %132, %134 ], [ 0.000000e+00, %124 ]
  %139 = fmul float %103, %126
  store float %139, ptr %104, align 4, !tbaa !67
  %140 = fmul float %106, %128
  store float %140, ptr %107, align 4, !tbaa !67
  %141 = fmul float %109, %130
  store float %141, ptr %110, align 4, !tbaa !67
  br i1 %98, label %144, label %142

142:                                              ; preds = %137
  %143 = fmul float %112, %138
  store float %143, ptr %113, align 4, !tbaa !111
  br label %144

144:                                              ; preds = %137, %142, %118, %101
  %145 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 7
  %146 = load float, ptr %104, align 4, !tbaa !67
  store float %146, ptr %145, align 4, !tbaa !67
  %147 = load float, ptr %107, align 4, !tbaa !67
  %148 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 7, i64 1
  store float %147, ptr %148, align 4, !tbaa !67
  %149 = load float, ptr %110, align 4, !tbaa !67
  %150 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 7, i64 2
  store float %149, ptr %150, align 4, !tbaa !67
  ret void
}

declare void @do_material_tex(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @ambient_occlusion(ptr noundef %0) local_unnamed_addr #5 {
  %2 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 64), align 2, !tbaa !117
  %3 = icmp eq i16 %2, 1
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.Material, ptr %5, i64 0, i32 16
  %7 = load float, ptr %6, align 4, !tbaa !118
  %8 = fcmp une float %7, 0.000000e+00
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @sample_occ(ptr noundef nonnull @R, ptr noundef nonnull %0) #12
  br label %27

10:                                               ; preds = %4, %1
  %11 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !83
  %12 = and i32 %11, 65536
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %0, align 8, !tbaa !58
  %16 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 16
  %17 = load float, ptr %16, align 4, !tbaa !118
  %18 = fcmp une float %17, 0.000000e+00
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 100
  %21 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 102
  tail call void @ray_ao(ptr noundef nonnull %0, ptr noundef nonnull %20, ptr noundef nonnull %21) #12
  br label %27

22:                                               ; preds = %14, %10
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 100
  %24 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 100, i64 2
  store float 1.000000e+00, ptr %24, align 8, !tbaa !67
  %25 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 100, i64 1
  store float 1.000000e+00, ptr %25, align 4, !tbaa !67
  store float 1.000000e+00, ptr %23, align 8, !tbaa !67
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 101
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %26, i8 0, i64 24, i1 false)
  br label %27

27:                                               ; preds = %19, %22, %9
  ret void
}

declare void @sample_occ(ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @ray_ao(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @environment_lighting_apply(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #7 {
  %3 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 59), align 4, !tbaa !119
  %4 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 44
  %5 = load float, ptr %4, align 4, !tbaa !120
  %6 = fmul float %3, %5
  %7 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !83
  %8 = and i32 %7, 65536
  %9 = icmp eq i32 %8, 0
  %10 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 64), align 2
  %11 = icmp ne i16 %10, 1
  %12 = select i1 %9, i1 %11, i1 false
  %13 = fcmp oeq float %6, 0.000000e+00
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %46, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 102
  %17 = load float, ptr %16, align 8, !tbaa !67
  %18 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 32
  %19 = load float, ptr %18, align 4, !tbaa !103
  %20 = fmul float %17, %19
  %21 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 50
  %22 = load float, ptr %21, align 4, !tbaa !121
  %23 = fmul float %20, %22
  %24 = load float, ptr %1, align 4, !tbaa !67
  %25 = tail call float @llvm.fmuladd.f32(float %23, float %6, float %24)
  store float %25, ptr %1, align 4, !tbaa !67
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 102, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !67
  %28 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 33
  %29 = load float, ptr %28, align 8, !tbaa !104
  %30 = fmul float %27, %29
  %31 = load float, ptr %21, align 4, !tbaa !121
  %32 = fmul float %30, %31
  %33 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !67
  %35 = tail call float @llvm.fmuladd.f32(float %32, float %6, float %34)
  store float %35, ptr %33, align 4, !tbaa !67
  %36 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 102, i64 2
  %37 = load float, ptr %36, align 8, !tbaa !67
  %38 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 34
  %39 = load float, ptr %38, align 4, !tbaa !105
  %40 = fmul float %37, %39
  %41 = load float, ptr %21, align 4, !tbaa !121
  %42 = fmul float %40, %41
  %43 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !67
  %45 = tail call float @llvm.fmuladd.f32(float %42, float %6, float %44)
  store float %45, ptr %43, align 4, !tbaa !67
  br label %46

46:                                               ; preds = %2, %15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @lamp_get_shadow(ptr noundef %0, ptr noundef %1, float noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #5 {
  %6 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 67
  %7 = load ptr, ptr %6, align 8, !tbaa !122
  %8 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 114
  %9 = load i16, ptr %8, align 2, !tbaa !123
  %10 = sext i16 %9 to i64
  %11 = getelementptr inbounds %struct.LampShadowSample, ptr %7, i64 %10
  %12 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 115
  %13 = load i16, ptr %12, align 4, !tbaa !124
  %14 = sext i16 %13 to i64
  %15 = getelementptr inbounds [16 x %struct.LampShadowSubSample], ptr %11, i64 0, i64 %14
  %16 = icmp eq i32 %4, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %5
  %18 = load i32, ptr %15, align 4, !tbaa !125
  %19 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 107
  %20 = load i32, ptr %19, align 4, !tbaa !127
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %64, label %22

22:                                               ; preds = %17, %5
  %23 = getelementptr inbounds float, ptr %3, i64 3
  store float 1.000000e+00, ptr %23, align 4, !tbaa !67
  %24 = getelementptr inbounds float, ptr %3, i64 2
  store float 1.000000e+00, ptr %24, align 4, !tbaa !67
  %25 = getelementptr inbounds float, ptr %3, i64 1
  store float 1.000000e+00, ptr %25, align 4, !tbaa !67
  store float 1.000000e+00, ptr %3, align 4, !tbaa !67
  %26 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 57
  %27 = load ptr, ptr %26, align 8, !tbaa !88
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 36
  %31 = load i16, ptr %30, align 4, !tbaa !75
  %32 = icmp eq i16 %31, 1
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = tail call float @ISB_getshadow(ptr noundef %1, ptr noundef nonnull %27) #12
  store float %34, ptr %23, align 4, !tbaa !67
  br label %49

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 29
  %37 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 78
  %38 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 79
  %39 = load ptr, ptr %1, align 8, !tbaa !58
  %40 = getelementptr inbounds %struct.Material, ptr %39, i64 0, i32 71
  %41 = load float, ptr %40, align 8, !tbaa !128
  %42 = tail call float @testshadowbuf(ptr noundef nonnull @R, ptr noundef nonnull %27, ptr noundef nonnull %36, ptr noundef nonnull %37, ptr noundef nonnull %38, float noundef %2, float noundef %41) #12
  store float %42, ptr %23, align 4, !tbaa !67
  br label %49

43:                                               ; preds = %22
  %44 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 7
  %45 = load i32, ptr %44, align 4, !tbaa !74
  %46 = and i32 %45, 8192
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  tail call void @ray_shadow(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %3) #12
  br label %49

49:                                               ; preds = %43, %48, %33, %35
  %50 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 108
  %51 = load i32, ptr %50, align 8, !tbaa !129
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %49
  %54 = getelementptr inbounds [16 x %struct.LampShadowSubSample], ptr %11, i64 0, i64 %14, i32 1
  %55 = load float, ptr %3, align 4, !tbaa !67
  store float %55, ptr %54, align 4, !tbaa !67
  %56 = load float, ptr %25, align 4, !tbaa !67
  %57 = getelementptr inbounds float, ptr %54, i64 1
  store float %56, ptr %57, align 4, !tbaa !67
  %58 = load float, ptr %24, align 4, !tbaa !67
  %59 = getelementptr inbounds float, ptr %54, i64 2
  store float %58, ptr %59, align 4, !tbaa !67
  %60 = load float, ptr %23, align 4, !tbaa !67
  %61 = getelementptr inbounds float, ptr %54, i64 3
  store float %60, ptr %61, align 4, !tbaa !67
  %62 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 107
  %63 = load i32, ptr %62, align 4, !tbaa !127
  store i32 %63, ptr %15, align 4, !tbaa !125
  br label %76

64:                                               ; preds = %17
  %65 = getelementptr inbounds [16 x %struct.LampShadowSubSample], ptr %11, i64 0, i64 %14, i32 1
  %66 = load float, ptr %65, align 4, !tbaa !67
  store float %66, ptr %3, align 4, !tbaa !67
  %67 = getelementptr inbounds float, ptr %65, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !67
  %69 = getelementptr inbounds float, ptr %3, i64 1
  store float %68, ptr %69, align 4, !tbaa !67
  %70 = getelementptr inbounds float, ptr %65, i64 2
  %71 = load float, ptr %70, align 4, !tbaa !67
  %72 = getelementptr inbounds float, ptr %3, i64 2
  store float %71, ptr %72, align 4, !tbaa !67
  %73 = getelementptr inbounds float, ptr %65, i64 3
  %74 = load float, ptr %73, align 4, !tbaa !67
  %75 = getelementptr inbounds float, ptr %3, i64 3
  store float %74, ptr %75, align 4, !tbaa !67
  br label %76

76:                                               ; preds = %49, %53, %64
  ret void
}

declare float @ISB_getshadow(ptr noundef, ptr noundef) local_unnamed_addr #8

declare float @testshadowbuf(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #8

declare void @ray_shadow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local float @lamp_get_visibility(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #5 {
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 6
  %7 = load i16, ptr %6, align 8, !tbaa !72
  switch i16 %7, label %17 [
    i16 1, label %8
    i16 3, label %8
  ]

8:                                                ; preds = %4, %4
  store float 1.000000e+00, ptr %3, align 4, !tbaa !67
  %9 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 20
  %10 = load float, ptr %9, align 4, !tbaa !67
  store float %10, ptr %2, align 4, !tbaa !67
  %11 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 20, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !67
  %13 = getelementptr inbounds float, ptr %2, i64 1
  store float %12, ptr %13, align 4, !tbaa !67
  %14 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 20, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !67
  %16 = getelementptr inbounds float, ptr %2, i64 2
  store float %15, ptr %16, align 4, !tbaa !67
  br label %180

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 5
  %19 = load float, ptr %1, align 4, !tbaa !67
  %20 = load float, ptr %18, align 4, !tbaa !67
  %21 = fsub float %19, %20
  store float %21, ptr %2, align 4, !tbaa !67
  %22 = getelementptr inbounds float, ptr %1, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !67
  %24 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 5, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !67
  %26 = fsub float %23, %25
  %27 = getelementptr inbounds float, ptr %2, i64 1
  store float %26, ptr %27, align 4, !tbaa !67
  %28 = getelementptr inbounds float, ptr %1, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !67
  %30 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 5, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !67
  %32 = fsub float %29, %31
  %33 = getelementptr inbounds float, ptr %2, i64 2
  store float %32, ptr %33, align 4, !tbaa !67
  %34 = fmul float %26, %26
  %35 = tail call float @llvm.fmuladd.f32(float %21, float %21, float %34)
  %36 = tail call float @llvm.fmuladd.f32(float %32, float %32, float %35)
  %37 = tail call float @sqrtf(float noundef %36) #12
  store float %37, ptr %3, align 4, !tbaa !67
  %38 = fdiv float 1.000000e+00, %37
  %39 = load float, ptr %2, align 4, !tbaa !67
  %40 = fmul float %38, %39
  store float %40, ptr %2, align 4, !tbaa !67
  %41 = load float, ptr %27, align 4, !tbaa !67
  %42 = fmul float %38, %41
  store float %42, ptr %27, align 4, !tbaa !67
  %43 = load float, ptr %33, align 4, !tbaa !67
  %44 = fmul float %38, %43
  store float %44, ptr %33, align 4, !tbaa !67
  %45 = load i16, ptr %6, align 8, !tbaa !72
  %46 = icmp eq i16 %45, 4
  br i1 %46, label %176, label %47

47:                                               ; preds = %17
  %48 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 27
  %49 = load i16, ptr %48, align 4, !tbaa !130
  switch i16 %49, label %93 [
    i16 3, label %85
    i16 1, label %50
    i16 2, label %56
    i16 4, label %62
  ]

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 4
  %52 = load float, ptr %51, align 8, !tbaa !87
  %53 = load float, ptr %3, align 4, !tbaa !67
  %54 = fadd float %52, %53
  %55 = fdiv float %52, %54
  br label %93

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 4
  %58 = load float, ptr %57, align 8, !tbaa !87
  %59 = load float, ptr %3, align 4, !tbaa !67
  %60 = tail call float @llvm.fmuladd.f32(float %59, float %59, float %58)
  %61 = fdiv float %58, %60
  br label %93

62:                                               ; preds = %47
  %63 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 28
  %64 = load float, ptr %63, align 8, !tbaa !131
  %65 = fcmp ogt float %64, 0.000000e+00
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 4
  %68 = load float, ptr %67, align 8, !tbaa !87
  %69 = load float, ptr %3, align 4, !tbaa !67
  %70 = tail call float @llvm.fmuladd.f32(float %64, float %69, float %68)
  %71 = fdiv float %68, %70
  br label %72

72:                                               ; preds = %66, %62
  %73 = phi float [ %71, %66 ], [ 1.000000e+00, %62 ]
  %74 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 29
  %75 = load float, ptr %74, align 4, !tbaa !132
  %76 = fcmp ogt float %75, 0.000000e+00
  br i1 %76, label %77, label %93

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 23
  %79 = load float, ptr %78, align 4, !tbaa !133
  %80 = load float, ptr %3, align 4, !tbaa !67
  %81 = fmul float %75, %80
  %82 = tail call float @llvm.fmuladd.f32(float %81, float %80, float %79)
  %83 = fdiv float %79, %82
  %84 = fmul float %73, %83
  br label %93

85:                                               ; preds = %47
  %86 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 30
  %87 = load ptr, ptr %86, align 8, !tbaa !134
  %88 = load float, ptr %3, align 4, !tbaa !67
  %89 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 4
  %90 = load float, ptr %89, align 8, !tbaa !87
  %91 = fdiv float %88, %90
  %92 = tail call float @curvemapping_evaluateF(ptr noundef %87, i32 noundef 0, float noundef %91) #12
  br label %93

93:                                               ; preds = %72, %77, %47, %85, %56, %50
  %94 = phi float [ %92, %85 ], [ %84, %77 ], [ %73, %72 ], [ %61, %56 ], [ %55, %50 ], [ 1.000000e+00, %47 ]
  %95 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 7
  %96 = load i32, ptr %95, align 4, !tbaa !74
  %97 = and i32 %96, 64
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 4
  %101 = load float, ptr %100, align 8, !tbaa !87
  %102 = load float, ptr %3, align 4, !tbaa !67
  %103 = fsub float %101, %102
  %104 = fcmp ugt float %103, 0.000000e+00
  %105 = fdiv float %103, %101
  %106 = fmul float %94, %105
  %107 = select i1 %104, float %106, float 0.000000e+00
  br label %108

108:                                              ; preds = %99, %93
  %109 = phi float [ %107, %99 ], [ %94, %93 ]
  %110 = fcmp ogt float %109, 0.000000e+00
  br i1 %110, label %111, label %176

111:                                              ; preds = %108
  %112 = load i16, ptr %6, align 8, !tbaa !72
  %113 = icmp eq i16 %112, 2
  br i1 %113, label %114, label %176

114:                                              ; preds = %111
  %115 = and i32 %96, 128
  %116 = icmp eq i32 %115, 0
  %117 = load float, ptr %27, align 4, !tbaa !67
  %118 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 20, i64 1
  %119 = load float, ptr %118, align 4, !tbaa !67
  %120 = fmul float %117, %119
  %121 = load float, ptr %33, align 4, !tbaa !67
  %122 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 20, i64 2
  br i1 %116, label %147, label %123

123:                                              ; preds = %114
  %124 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 20
  %125 = load float, ptr %2, align 4, !tbaa !67
  %126 = load float, ptr %124, align 4, !tbaa !67
  %127 = tail call float @llvm.fmuladd.f32(float %125, float %126, float %120)
  %128 = load float, ptr %122, align 4, !tbaa !67
  %129 = tail call float @llvm.fmuladd.f32(float %121, float %128, float %127)
  %130 = fcmp ogt float %129, 0.000000e+00
  br i1 %130, label %131, label %154

131:                                              ; preds = %123
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  store float %125, ptr %5, align 4, !tbaa !67
  %132 = getelementptr inbounds float, ptr %5, i64 1
  store float %117, ptr %132, align 4, !tbaa !67
  %133 = getelementptr inbounds float, ptr %5, i64 2
  store float %121, ptr %133, align 4, !tbaa !67
  %134 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 59
  call void @mul_m3_v3(ptr noundef nonnull %134, ptr noundef nonnull %5) #12
  %135 = load float, ptr %5, align 4, !tbaa !67
  %136 = load float, ptr %133, align 4, !tbaa !67
  %137 = fdiv float %135, %136
  %138 = call float @llvm.fabs.f32(float %137)
  %139 = load float, ptr %132, align 4, !tbaa !67
  %140 = fdiv float %139, %136
  %141 = call float @llvm.fabs.f32(float %140)
  %142 = fcmp ogt float %138, %141
  %143 = select i1 %142, float %138, float %141
  %144 = call float @llvm.fmuladd.f32(float %143, float %143, float 1.000000e+00)
  %145 = call float @sqrtf(float noundef %144) #12
  %146 = fdiv float 1.000000e+00, %145
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  br label %154

147:                                              ; preds = %114
  %148 = load float, ptr %2, align 4, !tbaa !67
  %149 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 20
  %150 = load float, ptr %149, align 8, !tbaa !67
  %151 = tail call float @llvm.fmuladd.f32(float %148, float %150, float %120)
  %152 = load float, ptr %122, align 8, !tbaa !67
  %153 = tail call float @llvm.fmuladd.f32(float %121, float %152, float %151)
  br label %154

154:                                              ; preds = %123, %131, %147
  %155 = phi float [ %146, %131 ], [ %153, %147 ], [ 0.000000e+00, %123 ]
  %156 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 18
  %157 = load float, ptr %156, align 8, !tbaa !135
  %158 = fcmp ugt float %155, %157
  br i1 %158, label %159, label %176

159:                                              ; preds = %154
  %160 = fsub float %155, %157
  %161 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 19
  %162 = load float, ptr %161, align 4, !tbaa !136
  %163 = fcmp olt float %160, %162
  %164 = fcmp une float %162, 0.000000e+00
  %165 = and i1 %163, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %159
  %167 = fdiv float %160, %162
  %168 = fmul float %167, %167
  %169 = fmul float %168, -2.000000e+00
  %170 = fmul float %167, %169
  %171 = call float @llvm.fmuladd.f32(float %168, float 3.000000e+00, float %170)
  %172 = fmul float %155, %171
  br label %173

173:                                              ; preds = %166, %159
  %174 = phi float [ %172, %166 ], [ %155, %159 ]
  %175 = fmul float %109, %174
  br label %176

176:                                              ; preds = %173, %154, %108, %111, %17
  %177 = phi float [ 1.000000e+00, %17 ], [ %109, %111 ], [ %109, %108 ], [ %175, %173 ], [ 0.000000e+00, %154 ]
  %178 = fcmp ugt float %177, 0x3F50624DE0000000
  %179 = select i1 %178, float %177, float 0.000000e+00
  br label %180

180:                                              ; preds = %176, %8
  %181 = phi float [ 1.000000e+00, %8 ], [ %179, %176 ]
  ret float %181
}

declare float @curvemapping_evaluateF(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #8

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: nounwind uwtable
define dso_local void @shade_lamp_loop(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = alloca [4 x float], align 16
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x float], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca float, align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [4 x float], align 16
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [4 x float], align 16
  %19 = alloca float, align 4
  %20 = alloca [3 x float], align 4
  %21 = load ptr, ptr %0, align 8, !tbaa !58
  %22 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 119
  %23 = load i32, ptr %22, align 8, !tbaa !137
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %1, i8 0, i64 212, i1 false)
  %24 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 21
  %25 = load i32, ptr %24, align 8, !tbaa !110
  %26 = and i32 %25, 65536
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 49
  store float 1.000000e+00, ptr %29, align 8, !tbaa !106
  br label %30

30:                                               ; preds = %28, %2
  %31 = getelementptr inbounds %struct.Material, ptr %21, i64 0, i32 51
  %32 = load i32, ptr %31, align 4, !tbaa !102
  %33 = and i32 %32, 1024
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %321, label %35

35:                                               ; preds = %30
  %36 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !83
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %224, label %39

39:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #12
  %40 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !34
  %41 = and i32 %40, 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 121
  %45 = load ptr, ptr %44, align 8, !tbaa !56
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.Group, ptr %45, i64 0, i32 1
  br label %58

49:                                               ; preds = %43
  %50 = load ptr, ptr %0, align 8, !tbaa !58
  %51 = icmp eq ptr %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.Material, ptr %50, i64 0, i32 105
  %54 = load ptr, ptr %53, align 8, !tbaa !59
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.Group, ptr %54, i64 0, i32 1
  br label %58

58:                                               ; preds = %56, %52, %49, %47, %39
  %59 = phi ptr [ %48, %47 ], [ %57, %56 ], [ getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 66), %39 ], [ getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 66), %52 ], [ getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 66), %49 ]
  %60 = load ptr, ptr %59, align 8, !tbaa !69
  %61 = icmp eq ptr %60, null
  br i1 %61, label %187, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %64 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 117
  %65 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  %66 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %67 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %68 = getelementptr inbounds float, ptr %17, i64 1
  %69 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %70 = getelementptr inbounds float, ptr %17, i64 2
  %71 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 108
  %72 = getelementptr inbounds float, ptr %18, i64 1
  %73 = getelementptr inbounds float, ptr %18, i64 2
  %74 = getelementptr inbounds [4 x float], ptr %18, i64 0, i64 3
  %75 = getelementptr inbounds float, ptr %18, i64 1
  %76 = getelementptr inbounds float, ptr %18, i64 2
  %77 = getelementptr inbounds [4 x float], ptr %18, i64 0, i64 3
  br label %78

78:                                               ; preds = %62, %180
  %79 = phi ptr [ %60, %62 ], [ %185, %180 ]
  %80 = phi float [ 0.000000e+00, %62 ], [ %184, %180 ]
  %81 = phi float [ 0.000000e+00, %62 ], [ %183, %180 ]
  %82 = phi float [ 0.000000e+00, %62 ], [ %182, %180 ]
  %83 = phi float [ 0.000000e+00, %62 ], [ %181, %180 ]
  %84 = getelementptr inbounds %struct.GroupObject, ptr %79, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !70
  %86 = icmp eq ptr %85, null
  br i1 %86, label %180, label %87

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.LampRen, ptr %85, i64 0, i32 6
  %89 = load i16, ptr %88, align 8, !tbaa !72
  %90 = icmp eq i16 %89, 5
  br i1 %90, label %180, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.LampRen, ptr %85, i64 0, i32 7
  %93 = load i32, ptr %92, align 4, !tbaa !74
  %94 = and i32 %93, 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.LampRen, ptr %85, i64 0, i32 17
  %98 = load i32, ptr %97, align 4, !tbaa !78
  %99 = load ptr, ptr %63, align 8, !tbaa !79
  %100 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %99, i64 0, i32 7
  %101 = load i32, ptr %100, align 8, !tbaa !80
  %102 = and i32 %101, %98
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %180, label %104

104:                                              ; preds = %96, %91
  %105 = getelementptr inbounds %struct.LampRen, ptr %85, i64 0, i32 17
  %106 = load i32, ptr %105, align 4, !tbaa !78
  %107 = load i32, ptr %64, align 8, !tbaa !82
  %108 = and i32 %107, %106
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %180, label %110

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.LampRen, ptr %85, i64 0, i32 57
  %112 = load ptr, ptr %111, align 8, !tbaa !88
  %113 = icmp eq ptr %112, null
  %114 = and i32 %93, 8192
  %115 = icmp eq i32 %114, 0
  %116 = and i1 %115, %113
  br i1 %116, label %180, label %117

117:                                              ; preds = %110
  %118 = call float @lamp_get_visibility(ptr noundef nonnull %85, ptr noundef nonnull %65, ptr noundef nonnull %17, ptr noundef nonnull %19)
  %119 = fadd float %83, 1.000000e+00
  %120 = fcmp ugt float %118, 0.000000e+00
  br i1 %120, label %128, label %121

121:                                              ; preds = %117
  %122 = load ptr, ptr %0, align 8, !tbaa !58
  %123 = getelementptr inbounds %struct.Material, ptr %122, i64 0, i32 126
  %124 = load i16, ptr %123, align 4, !tbaa !138
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %126, label %180

126:                                              ; preds = %121
  %127 = fadd float %82, 1.000000e+00
  br label %180

128:                                              ; preds = %117
  %129 = load float, ptr %66, align 4, !tbaa !67
  %130 = load float, ptr %17, align 4, !tbaa !67
  %131 = load float, ptr %67, align 4, !tbaa !67
  %132 = load float, ptr %68, align 4, !tbaa !67
  %133 = fmul float %131, %132
  %134 = call float @llvm.fmuladd.f32(float %129, float %130, float %133)
  %135 = load float, ptr %69, align 4, !tbaa !67
  %136 = load float, ptr %70, align 4, !tbaa !67
  %137 = call float @llvm.fmuladd.f32(float %135, float %136, float %134)
  %138 = fcmp ugt float %137, 0.000000e+00
  br i1 %138, label %146, label %139

139:                                              ; preds = %128
  %140 = load ptr, ptr %0, align 8, !tbaa !58
  %141 = getelementptr inbounds %struct.Material, ptr %140, i64 0, i32 126
  %142 = load i16, ptr %141, align 4, !tbaa !138
  %143 = icmp eq i16 %142, 0
  br i1 %143, label %144, label %180

144:                                              ; preds = %139
  %145 = fadd float %82, 1.000000e+00
  br label %180

146:                                              ; preds = %128
  %147 = load i32, ptr %71, align 8, !tbaa !129
  call void @lamp_get_shadow(ptr noundef nonnull %85, ptr noundef %0, float noundef %137, ptr noundef nonnull %18, i32 noundef %147)
  %148 = load ptr, ptr %0, align 8, !tbaa !58
  %149 = getelementptr inbounds %struct.Material, ptr %148, i64 0, i32 126
  %150 = load i16, ptr %149, align 4, !tbaa !138
  %151 = icmp eq i16 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %146
  %153 = fsub float 1.000000e+00, %118
  %154 = load float, ptr %18, align 16, !tbaa !67
  %155 = load float, ptr %75, align 4, !tbaa !67
  %156 = fmul float %155, 0x3FE28F5C20000000
  %157 = call float @llvm.fmuladd.f32(float %154, float 0x3FD3333340000000, float %156)
  %158 = load float, ptr %76, align 8, !tbaa !67
  %159 = call float @llvm.fmuladd.f32(float %158, float 0x3FBEB851E0000000, float %157)
  %160 = fmul float %118, %159
  %161 = load float, ptr %77, align 4, !tbaa !67
  %162 = call float @llvm.fmuladd.f32(float %160, float %161, float %153)
  %163 = fadd float %82, %162
  br label %180

164:                                              ; preds = %146
  %165 = load float, ptr %18, align 16, !tbaa !67
  %166 = load float, ptr %72, align 4, !tbaa !67
  %167 = fmul float %166, 0x3FE28F5C20000000
  %168 = call float @llvm.fmuladd.f32(float %165, float 0x3FD3333340000000, float %167)
  %169 = load float, ptr %73, align 8, !tbaa !67
  %170 = call float @llvm.fmuladd.f32(float %169, float 0x3FBEB851E0000000, float %168)
  %171 = load float, ptr %74, align 4, !tbaa !67
  %172 = fmul float %171, %170
  %173 = fmul float %118, %172
  %174 = getelementptr inbounds %struct.LampRen, ptr %85, i64 0, i32 15
  %175 = load float, ptr %174, align 4, !tbaa !139
  %176 = call float @llvm.fmuladd.f32(float %173, float %175, float %81)
  %177 = icmp eq i16 %150, 1
  br i1 %177, label %178, label %180

178:                                              ; preds = %164
  %179 = call float @llvm.fmuladd.f32(float %118, float %175, float %80)
  br label %180

180:                                              ; preds = %110, %178, %164, %152, %144, %139, %126, %121, %104, %96, %87, %78
  %181 = phi float [ %83, %78 ], [ %83, %87 ], [ %83, %96 ], [ %83, %104 ], [ %119, %126 ], [ %119, %121 ], [ %119, %144 ], [ %119, %139 ], [ %119, %152 ], [ %119, %178 ], [ %119, %164 ], [ %83, %110 ]
  %182 = phi float [ %82, %78 ], [ %82, %87 ], [ %82, %96 ], [ %82, %104 ], [ %127, %126 ], [ %82, %121 ], [ %145, %144 ], [ %82, %139 ], [ %163, %152 ], [ %82, %178 ], [ %82, %164 ], [ %82, %110 ]
  %183 = phi float [ %81, %78 ], [ %81, %87 ], [ %81, %96 ], [ %81, %104 ], [ %81, %126 ], [ %81, %121 ], [ %81, %144 ], [ %81, %139 ], [ %81, %152 ], [ %176, %178 ], [ %176, %164 ], [ %81, %110 ]
  %184 = phi float [ %80, %78 ], [ %80, %87 ], [ %80, %96 ], [ %80, %104 ], [ %80, %126 ], [ %80, %121 ], [ %80, %144 ], [ %80, %139 ], [ %80, %152 ], [ %179, %178 ], [ %80, %164 ], [ %80, %110 ]
  %185 = load ptr, ptr %79, align 8, !tbaa !69
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %78, !llvm.loop !140

187:                                              ; preds = %180, %58
  %188 = phi float [ 0.000000e+00, %58 ], [ %181, %180 ]
  %189 = phi float [ 0.000000e+00, %58 ], [ %182, %180 ]
  %190 = phi float [ 0.000000e+00, %58 ], [ %183, %180 ]
  %191 = phi float [ 0.000000e+00, %58 ], [ %184, %180 ]
  %192 = fcmp ogt float %188, 0.000000e+00
  %193 = load ptr, ptr %0, align 8, !tbaa !58
  %194 = getelementptr inbounds %struct.Material, ptr %193, i64 0, i32 126
  %195 = load i16, ptr %194, align 4, !tbaa !138
  br i1 %192, label %196, label %215

196:                                              ; preds = %187
  switch i16 %195, label %205 [
    i16 0, label %197
    i16 1, label %200
  ]

197:                                              ; preds = %196
  %198 = fdiv float %189, %188
  %199 = fsub float 1.000000e+00, %198
  br label %207

200:                                              ; preds = %196
  %201 = fcmp ogt float %191, 0.000000e+00
  br i1 %201, label %202, label %207

202:                                              ; preds = %200
  %203 = fsub float %191, %190
  %204 = fdiv float %203, %191
  br label %207

205:                                              ; preds = %196
  %206 = fsub float 1.000000e+00, %190
  br label %207

207:                                              ; preds = %205, %202, %200, %197
  %208 = phi float [ %199, %197 ], [ %204, %202 ], [ %206, %205 ], [ 0.000000e+00, %200 ]
  %209 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 49
  %210 = load float, ptr %209, align 8, !tbaa !106
  %211 = fmul float %208, %210
  %212 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  store float %211, ptr %212, align 4, !tbaa !111
  %213 = fcmp olt float %211, 0.000000e+00
  br i1 %213, label %214, label %223

214:                                              ; preds = %207
  store float 0.000000e+00, ptr %212, align 4, !tbaa !111
  br label %223

215:                                              ; preds = %187
  %216 = icmp eq i16 %195, 2
  br i1 %216, label %217, label %221

217:                                              ; preds = %215
  %218 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 49
  %219 = load float, ptr %218, align 8, !tbaa !106
  %220 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  store float %219, ptr %220, align 4, !tbaa !111
  br label %223

221:                                              ; preds = %215
  %222 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  store float 0.000000e+00, ptr %222, align 4, !tbaa !111
  br label %223

223:                                              ; preds = %221, %217, %214, %207
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #12
  br label %224

224:                                              ; preds = %223, %35
  %225 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 23), align 2, !tbaa !86
  %226 = zext i16 %225 to i32
  %227 = and i32 %226, 80
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %3288, label %229

229:                                              ; preds = %224
  %230 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 44
  %231 = load float, ptr %230, align 4, !tbaa !120
  %232 = fcmp une float %231, 0.000000e+00
  br i1 %232, label %233, label %3288

233:                                              ; preds = %229
  %234 = and i32 %226, 64
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %278, label %236

236:                                              ; preds = %233
  %237 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 48), align 8, !tbaa !141
  %238 = fmul float %231, %237
  %239 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 52), align 4, !tbaa !142
  %240 = icmp eq i16 %239, 0
  %241 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 100
  %242 = load float, ptr %241, align 4, !tbaa !67
  %243 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 100, i64 1
  %244 = load float, ptr %243, align 4, !tbaa !67
  %245 = fmul float %244, 0x3FE28F5C20000000
  %246 = call float @llvm.fmuladd.f32(float %242, float 0x3FD3333340000000, float %245)
  %247 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 100, i64 2
  %248 = load float, ptr %247, align 4, !tbaa !67
  %249 = call float @llvm.fmuladd.f32(float %248, float 0x3FBEB851E0000000, float %246)
  br i1 %240, label %250, label %269

250:                                              ; preds = %236
  %251 = load ptr, ptr %0, align 8, !tbaa !58
  %252 = getelementptr inbounds %struct.Material, ptr %251, i64 0, i32 126
  %253 = load i16, ptr %252, align 4, !tbaa !138
  %254 = icmp eq i16 %253, 0
  br i1 %254, label %255, label %262

255:                                              ; preds = %250
  %256 = fsub float 1.000000e+00, %249
  %257 = fmul float %238, %256
  %258 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  %259 = load float, ptr %258, align 4, !tbaa !111
  %260 = fadd float %259, %257
  %261 = fmul float %257, %260
  store float %261, ptr %258, align 4, !tbaa !111
  br label %278

262:                                              ; preds = %250
  %263 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  %264 = load float, ptr %263, align 4, !tbaa !111
  %265 = fneg float %238
  %266 = call float @llvm.fmuladd.f32(float %265, float %249, float %264)
  store float %266, ptr %263, align 4, !tbaa !111
  %267 = fcmp olt float %266, 0.000000e+00
  br i1 %267, label %268, label %278

268:                                              ; preds = %262
  store float 0.000000e+00, ptr %263, align 4, !tbaa !111
  br label %278

269:                                              ; preds = %236
  %270 = fsub float 1.000000e+00, %238
  %271 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  %272 = load float, ptr %271, align 4, !tbaa !111
  %273 = fsub float 1.000000e+00, %272
  %274 = fneg float %273
  %275 = call float @llvm.fmuladd.f32(float %274, float %249, float 1.000000e+00)
  %276 = fmul float %238, %275
  %277 = call float @llvm.fmuladd.f32(float %270, float %272, float %276)
  store float %277, ptr %271, align 4, !tbaa !111
  br label %278

278:                                              ; preds = %269, %268, %262, %255, %233
  %279 = and i16 %225, 16
  %280 = icmp eq i16 %279, 0
  br i1 %280, label %3288, label %281

281:                                              ; preds = %278
  %282 = load ptr, ptr %0, align 8, !tbaa !58
  %283 = getelementptr inbounds %struct.Material, ptr %282, i64 0, i32 126
  %284 = load i16, ptr %283, align 4, !tbaa !138
  %285 = icmp eq i16 %284, 0
  %286 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 59), align 4, !tbaa !119
  br i1 %285, label %287, label %304

287:                                              ; preds = %281
  %288 = fmul float %231, %286
  %289 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 102
  %290 = load float, ptr %289, align 4, !tbaa !67
  %291 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 102, i64 1
  %292 = load float, ptr %291, align 4, !tbaa !67
  %293 = fmul float %292, 0x3FE28F5C20000000
  %294 = call float @llvm.fmuladd.f32(float %290, float 0x3FD3333340000000, float %293)
  %295 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 102, i64 2
  %296 = load float, ptr %295, align 4, !tbaa !67
  %297 = call float @llvm.fmuladd.f32(float %296, float 0x3FBEB851E0000000, float %294)
  %298 = fsub float 1.000000e+00, %297
  %299 = fmul float %288, %298
  %300 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  %301 = load float, ptr %300, align 4, !tbaa !111
  %302 = fadd float %301, %299
  %303 = fmul float %299, %302
  store float %303, ptr %300, align 4, !tbaa !111
  br label %3288

304:                                              ; preds = %281
  %305 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 102
  %306 = load float, ptr %305, align 4, !tbaa !67
  %307 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 102, i64 1
  %308 = load float, ptr %307, align 4, !tbaa !67
  %309 = fmul float %308, 0x3FE28F5C20000000
  %310 = call float @llvm.fmuladd.f32(float %306, float 0x3FD3333340000000, float %309)
  %311 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 102, i64 2
  %312 = load float, ptr %311, align 4, !tbaa !67
  %313 = call float @llvm.fmuladd.f32(float %312, float 0x3FBEB851E0000000, float %310)
  %314 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  %315 = load float, ptr %314, align 4, !tbaa !111
  %316 = fneg float %286
  %317 = fmul float %231, %316
  %318 = call float @llvm.fmuladd.f32(float %317, float %313, float %315)
  store float %318, ptr %314, align 4, !tbaa !111
  %319 = fcmp olt float %318, 0.000000e+00
  br i1 %319, label %320, label %3288

320:                                              ; preds = %304
  store float 0.000000e+00, ptr %314, align 4, !tbaa !111
  br label %3288

321:                                              ; preds = %30
  %322 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 62
  %323 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 62, i64 3
  %324 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 62, i64 2
  %325 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 62, i64 1
  %326 = and i32 %23, 67005
  %327 = icmp eq i32 %326, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %322, i8 0, i64 16, i1 false)
  br i1 %327, label %477, label %328

328:                                              ; preds = %321
  %329 = and i32 %32, 2048
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %347, label %331

331:                                              ; preds = %328
  %332 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61
  %333 = load float, ptr %332, align 8, !tbaa !67
  %334 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 32
  store float %333, ptr %334, align 4, !tbaa !103
  %335 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 1
  %336 = load float, ptr %335, align 4, !tbaa !67
  %337 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 33
  store float %336, ptr %337, align 8, !tbaa !104
  %338 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 2
  %339 = load float, ptr %338, align 8, !tbaa !67
  %340 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 34
  store float %339, ptr %340, align 4, !tbaa !105
  %341 = and i32 %32, 536870912
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %372, label %343

343:                                              ; preds = %331
  %344 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 3
  %345 = load float, ptr %344, align 4, !tbaa !67
  %346 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 49
  store float %345, ptr %346, align 8, !tbaa !106
  br label %372

347:                                              ; preds = %328
  %348 = and i32 %32, 128
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %372, label %350

350:                                              ; preds = %347
  %351 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61
  %352 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 3
  %353 = load float, ptr %352, align 4, !tbaa !67
  %354 = fsub float 1.000000e+00, %353
  %355 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 32
  %356 = load float, ptr %355, align 4, !tbaa !103
  %357 = load float, ptr %351, align 8, !tbaa !67
  %358 = fmul float %353, %357
  %359 = tail call float @llvm.fmuladd.f32(float %356, float %354, float %358)
  store float %359, ptr %355, align 4, !tbaa !103
  %360 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 33
  %361 = load float, ptr %360, align 8, !tbaa !104
  %362 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 1
  %363 = load float, ptr %362, align 4, !tbaa !67
  %364 = fmul float %353, %363
  %365 = tail call float @llvm.fmuladd.f32(float %361, float %354, float %364)
  store float %365, ptr %360, align 8, !tbaa !104
  %366 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 34
  %367 = load float, ptr %366, align 4, !tbaa !105
  %368 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 2
  %369 = load float, ptr %368, align 8, !tbaa !67
  %370 = fmul float %353, %369
  %371 = tail call float @llvm.fmuladd.f32(float %367, float %354, float %370)
  store float %371, ptr %366, align 4, !tbaa !105
  br label %372

372:                                              ; preds = %347, %350, %331, %343
  %373 = getelementptr inbounds %struct.Material, ptr %21, i64 0, i32 90
  %374 = load i16, ptr %373, align 4, !tbaa !107
  %375 = icmp eq i16 %374, 0
  br i1 %375, label %382, label %376

376:                                              ; preds = %372
  tail call void @do_material_tex(ptr noundef nonnull %0, ptr noundef nonnull @R) #12
  %377 = load i32, ptr %24, align 8, !tbaa !110
  %378 = and i32 %377, 65536
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %382

380:                                              ; preds = %376
  %381 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 49
  store float 1.000000e+00, ptr %381, align 8, !tbaa !106
  br label %382

382:                                              ; preds = %376, %380, %372
  %383 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 32
  %384 = load float, ptr %383, align 4, !tbaa !103
  %385 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 49
  %386 = load float, ptr %385, align 8, !tbaa !106
  %387 = fmul float %384, %386
  %388 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 1
  store float %387, ptr %388, align 4, !tbaa !67
  %389 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 33
  %390 = load float, ptr %389, align 8, !tbaa !104
  %391 = load float, ptr %385, align 8, !tbaa !106
  %392 = fmul float %390, %391
  %393 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 1, i64 1
  store float %392, ptr %393, align 4, !tbaa !67
  %394 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 34
  %395 = load float, ptr %394, align 4, !tbaa !105
  %396 = load float, ptr %385, align 8, !tbaa !106
  %397 = fmul float %395, %396
  %398 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 1, i64 2
  store float %397, ptr %398, align 4, !tbaa !67
  %399 = load float, ptr %385, align 8, !tbaa !106
  %400 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 1, i64 3
  store float %399, ptr %400, align 4, !tbaa !67
  %401 = getelementptr inbounds %struct.Material, ptr %21, i64 0, i32 123
  %402 = load i16, ptr %401, align 4, !tbaa !143
  %403 = and i16 %402, 1
  %404 = icmp eq i16 %403, 0
  br i1 %404, label %477, label %405

405:                                              ; preds = %382
  %406 = tail call i32 @sss_pass_done(ptr noundef nonnull @R, ptr noundef %21) #12
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %408, label %477

408:                                              ; preds = %405
  %409 = getelementptr inbounds %struct.Material, ptr %21, i64 0, i32 120
  %410 = load float, ptr %409, align 8, !tbaa !144
  %411 = fcmp oeq float %410, 0.000000e+00
  br i1 %411, label %412, label %413

412:                                              ; preds = %408
  store float 1.000000e+00, ptr %385, align 8, !tbaa !106
  store float 1.000000e+00, ptr %394, align 4, !tbaa !105
  store float 1.000000e+00, ptr %389, align 8, !tbaa !104
  store float 1.000000e+00, ptr %383, align 4, !tbaa !103
  store float 1.000000e+00, ptr %400, align 4, !tbaa !67
  store float 1.000000e+00, ptr %398, align 4, !tbaa !67
  store float 1.000000e+00, ptr %393, align 4, !tbaa !67
  store float 1.000000e+00, ptr %388, align 4, !tbaa !67
  br label %477

413:                                              ; preds = %408
  %414 = load float, ptr %383, align 4, !tbaa !103
  %415 = fcmp ogt float %414, 0.000000e+00
  %416 = select i1 %415, float %414, float 0.000000e+00
  %417 = fpext float %416 to double
  %418 = fpext float %410 to double
  %419 = tail call double @pow(double noundef %417, double noundef %418) #12
  %420 = fptrunc double %419 to float
  store float %420, ptr %383, align 4, !tbaa !103
  %421 = load float, ptr %389, align 8, !tbaa !104
  %422 = fcmp ogt float %421, 0.000000e+00
  %423 = select i1 %422, float %421, float 0.000000e+00
  %424 = fpext float %423 to double
  %425 = load float, ptr %409, align 8, !tbaa !144
  %426 = fpext float %425 to double
  %427 = tail call double @pow(double noundef %424, double noundef %426) #12
  %428 = fptrunc double %427 to float
  store float %428, ptr %389, align 8, !tbaa !104
  %429 = load float, ptr %394, align 4, !tbaa !105
  %430 = fcmp ogt float %429, 0.000000e+00
  %431 = select i1 %430, float %429, float 0.000000e+00
  %432 = fpext float %431 to double
  %433 = load float, ptr %409, align 8, !tbaa !144
  %434 = fpext float %433 to double
  %435 = tail call double @pow(double noundef %432, double noundef %434) #12
  %436 = fptrunc double %435 to float
  store float %436, ptr %394, align 4, !tbaa !105
  %437 = load float, ptr %385, align 8, !tbaa !106
  %438 = fcmp ogt float %437, 0.000000e+00
  %439 = select i1 %438, float %437, float 0.000000e+00
  %440 = fpext float %439 to double
  %441 = load float, ptr %409, align 8, !tbaa !144
  %442 = fpext float %441 to double
  %443 = tail call double @pow(double noundef %440, double noundef %442) #12
  %444 = fptrunc double %443 to float
  store float %444, ptr %385, align 8, !tbaa !106
  %445 = load float, ptr %388, align 4, !tbaa !67
  %446 = fcmp ogt float %445, 0.000000e+00
  %447 = select i1 %446, float %445, float 0.000000e+00
  %448 = fpext float %447 to double
  %449 = load float, ptr %409, align 8, !tbaa !144
  %450 = fpext float %449 to double
  %451 = tail call double @pow(double noundef %448, double noundef %450) #12
  %452 = fptrunc double %451 to float
  store float %452, ptr %388, align 4, !tbaa !67
  %453 = load float, ptr %393, align 4, !tbaa !67
  %454 = fcmp ogt float %453, 0.000000e+00
  %455 = select i1 %454, float %453, float 0.000000e+00
  %456 = fpext float %455 to double
  %457 = load float, ptr %409, align 8, !tbaa !144
  %458 = fpext float %457 to double
  %459 = tail call double @pow(double noundef %456, double noundef %458) #12
  %460 = fptrunc double %459 to float
  store float %460, ptr %393, align 4, !tbaa !67
  %461 = load float, ptr %398, align 4, !tbaa !67
  %462 = fcmp ogt float %461, 0.000000e+00
  %463 = select i1 %462, float %461, float 0.000000e+00
  %464 = fpext float %463 to double
  %465 = load float, ptr %409, align 8, !tbaa !144
  %466 = fpext float %465 to double
  %467 = tail call double @pow(double noundef %464, double noundef %466) #12
  %468 = fptrunc double %467 to float
  store float %468, ptr %398, align 4, !tbaa !67
  %469 = load float, ptr %400, align 4, !tbaa !67
  %470 = fcmp ogt float %469, 0.000000e+00
  %471 = select i1 %470, float %469, float 0.000000e+00
  %472 = fpext float %471 to double
  %473 = load float, ptr %409, align 8, !tbaa !144
  %474 = fpext float %473 to double
  %475 = tail call double @pow(double noundef %472, double noundef %474) #12
  %476 = fptrunc double %475 to float
  store float %476, ptr %400, align 4, !tbaa !67
  br label %477

477:                                              ; preds = %382, %405, %413, %412, %321
  %478 = load i32, ptr %31, align 4, !tbaa !102
  %479 = and i32 %478, 4
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %493, label %481

481:                                              ; preds = %477
  %482 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 32
  %483 = load float, ptr %482, align 4, !tbaa !103
  store float %483, ptr %1, align 4, !tbaa !67
  %484 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 33
  %485 = load float, ptr %484, align 8, !tbaa !104
  %486 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  store float %485, ptr %486, align 4, !tbaa !67
  %487 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 34
  %488 = load float, ptr %487, align 4, !tbaa !105
  %489 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 2
  store float %488, ptr %489, align 4, !tbaa !67
  %490 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 49
  %491 = load float, ptr %490, align 8, !tbaa !106
  %492 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  store float %491, ptr %492, align 4, !tbaa !111
  br label %3288

493:                                              ; preds = %477
  %494 = and i32 %478, 144
  %495 = icmp eq i32 %494, 16
  %496 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 32
  %497 = load float, ptr %496, align 4, !tbaa !103
  %498 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 45
  %499 = load float, ptr %498, align 8, !tbaa !145
  br i1 %495, label %500, label %525

500:                                              ; preds = %493
  %501 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61
  %502 = load float, ptr %501, align 8, !tbaa !67
  %503 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 3
  %504 = load float, ptr %503, align 4, !tbaa !67
  %505 = tail call float @llvm.fmuladd.f32(float %502, float %504, float %499)
  %506 = fmul float %497, %505
  %507 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 5
  store float %506, ptr %507, align 4, !tbaa !67
  %508 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 33
  %509 = load float, ptr %508, align 8, !tbaa !104
  %510 = load float, ptr %498, align 8, !tbaa !145
  %511 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 1
  %512 = load float, ptr %511, align 4, !tbaa !67
  %513 = load float, ptr %503, align 4, !tbaa !67
  %514 = tail call float @llvm.fmuladd.f32(float %512, float %513, float %510)
  %515 = fmul float %509, %514
  %516 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 5, i64 1
  store float %515, ptr %516, align 4, !tbaa !67
  %517 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 34
  %518 = load float, ptr %517, align 4, !tbaa !105
  %519 = load float, ptr %498, align 8, !tbaa !145
  %520 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 2
  %521 = load float, ptr %520, align 8, !tbaa !67
  %522 = load float, ptr %503, align 4, !tbaa !67
  %523 = tail call float @llvm.fmuladd.f32(float %521, float %522, float %519)
  %524 = fmul float %518, %523
  br label %537

525:                                              ; preds = %493
  %526 = fmul float %497, %499
  %527 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 5
  store float %526, ptr %527, align 4, !tbaa !67
  %528 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 33
  %529 = load float, ptr %528, align 8, !tbaa !104
  %530 = load float, ptr %498, align 8, !tbaa !145
  %531 = fmul float %529, %530
  %532 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 5, i64 1
  store float %531, ptr %532, align 4, !tbaa !67
  %533 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 34
  %534 = load float, ptr %533, align 4, !tbaa !105
  %535 = load float, ptr %498, align 8, !tbaa !145
  %536 = fmul float %534, %535
  br label %537

537:                                              ; preds = %525, %500
  %538 = phi float [ %536, %525 ], [ %524, %500 ]
  %539 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 5, i64 2
  store float %538, ptr %539, align 4, !tbaa !67
  %540 = and i32 %23, 1
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %550, label %542

542:                                              ; preds = %537
  %543 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 120
  %544 = load i32, ptr %543, align 4, !tbaa !146
  %545 = and i32 %544, 139328
  %546 = icmp eq i32 %545, 0
  %547 = and i32 %23, 139328
  %548 = icmp eq i32 %547, 0
  %549 = select i1 %546, i1 %548, i1 false
  br i1 %549, label %627, label %553

550:                                              ; preds = %537
  %551 = and i32 %23, 139328
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %627, label %553

553:                                              ; preds = %550, %542
  %554 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 23), align 2, !tbaa !86
  %555 = and i16 %554, 208
  %556 = icmp eq i16 %555, 0
  br i1 %556, label %622, label %557

557:                                              ; preds = %553
  %558 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !83
  %559 = and i32 %558, 2
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %622, label %561

561:                                              ; preds = %557
  %562 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 108
  %563 = load i32, ptr %562, align 8, !tbaa !129
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %565, label %569

565:                                              ; preds = %561
  %566 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 109
  %567 = load i32, ptr %566, align 4, !tbaa !147
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %594, label %569

569:                                              ; preds = %565, %561
  %570 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 64), align 2, !tbaa !117
  %571 = icmp eq i16 %570, 1
  br i1 %571, label %572, label %578

572:                                              ; preds = %569
  %573 = load ptr, ptr %0, align 8, !tbaa !58
  %574 = getelementptr inbounds %struct.Material, ptr %573, i64 0, i32 16
  %575 = load float, ptr %574, align 4, !tbaa !118
  %576 = fcmp une float %575, 0.000000e+00
  br i1 %576, label %577, label %578

577:                                              ; preds = %572
  tail call void @sample_occ(ptr noundef nonnull @R, ptr noundef nonnull %0) #12
  br label %594

578:                                              ; preds = %572, %569
  %579 = and i32 %558, 65536
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %589, label %581

581:                                              ; preds = %578
  %582 = load ptr, ptr %0, align 8, !tbaa !58
  %583 = getelementptr inbounds %struct.Material, ptr %582, i64 0, i32 16
  %584 = load float, ptr %583, align 4, !tbaa !118
  %585 = fcmp une float %584, 0.000000e+00
  br i1 %585, label %586, label %589

586:                                              ; preds = %581
  %587 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 100
  %588 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 102
  tail call void @ray_ao(ptr noundef nonnull %0, ptr noundef nonnull %587, ptr noundef nonnull %588) #12
  br label %594

589:                                              ; preds = %581, %578
  %590 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 100
  %591 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 100, i64 2
  store float 1.000000e+00, ptr %591, align 8, !tbaa !67
  %592 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 100, i64 1
  store float 1.000000e+00, ptr %592, align 4, !tbaa !67
  store float 1.000000e+00, ptr %590, align 8, !tbaa !67
  %593 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 101
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %593, i8 0, i64 24, i1 false)
  br label %594

594:                                              ; preds = %589, %586, %577, %565
  %595 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 10
  %596 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 100
  %597 = load float, ptr %596, align 4, !tbaa !67
  store float %597, ptr %595, align 4, !tbaa !67
  %598 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 100, i64 1
  %599 = load float, ptr %598, align 4, !tbaa !67
  %600 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 10, i64 1
  store float %599, ptr %600, align 4, !tbaa !67
  %601 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 100, i64 2
  %602 = load float, ptr %601, align 4, !tbaa !67
  %603 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 10, i64 2
  store float %602, ptr %603, align 4, !tbaa !67
  %604 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 11
  %605 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 102
  %606 = load float, ptr %605, align 4, !tbaa !67
  store float %606, ptr %604, align 4, !tbaa !67
  %607 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 102, i64 1
  %608 = load float, ptr %607, align 4, !tbaa !67
  %609 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 11, i64 1
  store float %608, ptr %609, align 4, !tbaa !67
  %610 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 102, i64 2
  %611 = load float, ptr %610, align 4, !tbaa !67
  %612 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 11, i64 2
  store float %611, ptr %612, align 4, !tbaa !67
  %613 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 12
  %614 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 101
  %615 = load float, ptr %614, align 4, !tbaa !67
  store float %615, ptr %613, align 4, !tbaa !67
  %616 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 101, i64 1
  %617 = load float, ptr %616, align 4, !tbaa !67
  %618 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 12, i64 1
  store float %617, ptr %618, align 4, !tbaa !67
  %619 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 101, i64 2
  %620 = load float, ptr %619, align 4, !tbaa !67
  %621 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 12, i64 2
  store float %620, ptr %621, align 4, !tbaa !67
  br label %627

622:                                              ; preds = %557, %553
  %623 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 10
  %624 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 10, i64 2
  store float 1.000000e+00, ptr %624, align 4, !tbaa !67
  %625 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 10, i64 1
  store float 1.000000e+00, ptr %625, align 4, !tbaa !67
  store float 1.000000e+00, ptr %623, align 4, !tbaa !67
  %626 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %626, i8 0, i64 24, i1 false)
  br label %627

627:                                              ; preds = %542, %594, %622, %550
  %628 = and i32 %23, 57
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %2805, label %630

630:                                              ; preds = %627
  %631 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !34
  %632 = and i32 %631, 8
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %634, label %649

634:                                              ; preds = %630
  %635 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 121
  %636 = load ptr, ptr %635, align 8, !tbaa !56
  %637 = icmp eq ptr %636, null
  br i1 %637, label %640, label %638

638:                                              ; preds = %634
  %639 = getelementptr inbounds %struct.Group, ptr %636, i64 0, i32 1
  br label %649

640:                                              ; preds = %634
  %641 = load ptr, ptr %0, align 8, !tbaa !58
  %642 = icmp eq ptr %641, null
  br i1 %642, label %649, label %643

643:                                              ; preds = %640
  %644 = getelementptr inbounds %struct.Material, ptr %641, i64 0, i32 105
  %645 = load ptr, ptr %644, align 8, !tbaa !59
  %646 = icmp eq ptr %645, null
  br i1 %646, label %649, label %647

647:                                              ; preds = %643
  %648 = getelementptr inbounds %struct.Group, ptr %645, i64 0, i32 1
  br label %649

649:                                              ; preds = %630, %638, %640, %643, %647
  %650 = phi ptr [ %639, %638 ], [ %648, %647 ], [ getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 66), %630 ], [ getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 66), %643 ], [ getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 66), %640 ]
  %651 = load ptr, ptr %650, align 8, !tbaa !69
  %652 = icmp eq ptr %651, null
  br i1 %652, label %2562, label %653

653:                                              ; preds = %649
  %654 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %655 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 117
  %656 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %657 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %658 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30
  %659 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  %660 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %661 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78
  %662 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 92
  %663 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %664 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 1
  %665 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78, i64 1
  %666 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 92, i64 1
  %667 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %668 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 2
  %669 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78, i64 2
  %670 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 92, i64 2
  %671 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79
  %672 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 93
  %673 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79, i64 1
  %674 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 93, i64 1
  %675 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79, i64 2
  %676 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 93, i64 2
  %677 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  %678 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %679 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 1
  %680 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 2
  %681 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 110
  %682 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 110, i64 1
  %683 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %684 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 110, i64 2
  %685 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %686 = getelementptr inbounds float, ptr %15, i64 1
  %687 = getelementptr inbounds float, ptr %15, i64 2
  %688 = getelementptr inbounds float, ptr %14, i64 1
  %689 = getelementptr inbounds float, ptr %14, i64 2
  %690 = getelementptr inbounds float, ptr %9, i64 1
  %691 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %692 = getelementptr inbounds float, ptr %9, i64 2
  %693 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %694 = getelementptr inbounds float, ptr %14, i64 1
  %695 = getelementptr inbounds float, ptr %14, i64 2
  %696 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 111
  %697 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 110
  %698 = getelementptr inbounds float, ptr %14, i64 1
  %699 = getelementptr inbounds float, ptr %14, i64 2
  %700 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 1
  %701 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  %702 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65
  %703 = getelementptr inbounds float, ptr %9, i64 1
  %704 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65, i64 2
  %705 = getelementptr inbounds float, ptr %9, i64 2
  %706 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65, i64 1
  %707 = getelementptr inbounds float, ptr %14, i64 1
  %708 = getelementptr inbounds float, ptr %14, i64 2
  %709 = getelementptr inbounds float, ptr %9, i64 1
  %710 = getelementptr inbounds float, ptr %9, i64 2
  %711 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 4
  %712 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 1
  %713 = getelementptr inbounds float, ptr %4, i64 1
  %714 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 2
  %715 = getelementptr inbounds float, ptr %4, i64 2
  %716 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 1
  %717 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 2
  %718 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 1
  %719 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 2
  %720 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 50
  %721 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65
  %722 = getelementptr inbounds [4 x float], ptr %12, i64 0, i64 3
  %723 = getelementptr inbounds [4 x float], ptr %12, i64 0, i64 2
  %724 = getelementptr inbounds [4 x float], ptr %12, i64 0, i64 1
  %725 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %726 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %727 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 9, i64 3
  %728 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 32
  %729 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 9
  %730 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 33
  %731 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 9, i64 1
  %732 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 34
  %733 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 9, i64 2
  %734 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 35
  %735 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8
  %736 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 36
  %737 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8, i64 1
  %738 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 37
  %739 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8, i64 2
  %740 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 9
  %741 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 9
  %742 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 9
  %743 = and i32 %23, 40
  %744 = icmp eq i32 %743, 0
  %745 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 120
  %746 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6
  %747 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6
  %748 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 9
  %749 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 9, i64 1
  %750 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6, i64 1
  %751 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 9, i64 2
  %752 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6, i64 2
  %753 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 51
  %754 = and i32 %23, 17
  %755 = icmp eq i32 %754, 0
  %756 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 1
  %757 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 2
  %758 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 55
  %759 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 1
  %760 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 2
  %761 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 55
  %762 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 1
  %763 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 2
  %764 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 55
  %765 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 1
  %766 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 2
  %767 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 1
  %768 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 2
  %769 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 35
  %770 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 36
  %771 = getelementptr inbounds float, ptr %16, i64 1
  %772 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 37
  %773 = getelementptr inbounds float, ptr %16, i64 2
  %774 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 1
  %775 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %776 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 2
  %777 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %778 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 3
  %779 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8
  %780 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8, i64 1
  %781 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8, i64 2
  %782 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 35
  %783 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8
  %784 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 36
  %785 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8, i64 1
  %786 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 37
  %787 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8, i64 2
  %788 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 1
  %789 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 2
  %790 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 55
  %791 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 35
  %792 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8
  %793 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 36
  %794 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8, i64 1
  %795 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 37
  %796 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8, i64 2
  %797 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 108
  br label %798

798:                                              ; preds = %653, %2559
  %799 = phi ptr [ %651, %653 ], [ %2560, %2559 ]
  %800 = getelementptr inbounds %struct.GroupObject, ptr %799, i64 0, i32 3
  %801 = load ptr, ptr %800, align 8, !tbaa !70
  %802 = icmp eq ptr %801, null
  br i1 %802, label %2559, label %803

803:                                              ; preds = %798
  %804 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 6
  %805 = load i16, ptr %804, align 8, !tbaa !72
  %806 = icmp eq i16 %805, 5
  br i1 %806, label %2559, label %807

807:                                              ; preds = %803
  %808 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 7
  %809 = load i32, ptr %808, align 4, !tbaa !74
  %810 = and i32 %809, 4
  %811 = icmp eq i32 %810, 0
  br i1 %811, label %820, label %812

812:                                              ; preds = %807
  %813 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 17
  %814 = load i32, ptr %813, align 4, !tbaa !78
  %815 = load ptr, ptr %654, align 8, !tbaa !79
  %816 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %815, i64 0, i32 7
  %817 = load i32, ptr %816, align 8, !tbaa !80
  %818 = and i32 %817, %814
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %2559, label %820

820:                                              ; preds = %812, %807
  %821 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 17
  %822 = load i32, ptr %821, align 4, !tbaa !78
  %823 = load i32, ptr %655, align 8, !tbaa !82
  %824 = and i32 %823, %822
  %825 = icmp eq i32 %824, 0
  br i1 %825, label %2559, label %826

826:                                              ; preds = %820
  %827 = load ptr, ptr %0, align 8, !tbaa !58
  %828 = load ptr, ptr %656, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #12
  %829 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 15
  %830 = load float, ptr %829, align 4, !tbaa !139
  %831 = fcmp oeq float %830, 0.000000e+00
  br i1 %831, label %2558, label %832

832:                                              ; preds = %826
  %833 = and i32 %809, 32
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %844, label %835

835:                                              ; preds = %832
  %836 = getelementptr inbounds %struct.Material, ptr %827, i64 0, i32 51
  %837 = load i32, ptr %836, align 4, !tbaa !102
  %838 = and i32 %837, 2
  %839 = icmp eq i32 %838, 0
  br i1 %839, label %2558, label %840

840:                                              ; preds = %835
  %841 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !83
  %842 = and i32 %841, 2
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %2558, label %844

844:                                              ; preds = %840, %832
  %845 = and i32 %809, 256
  %846 = icmp eq i32 %845, 0
  br i1 %846, label %847, label %857

847:                                              ; preds = %844
  %848 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 8
  %849 = load float, ptr %848, align 8, !tbaa !91
  %850 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 9
  %851 = load float, ptr %850, align 4, !tbaa !92
  %852 = fadd float %849, %851
  %853 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 10
  %854 = load float, ptr %853, align 8, !tbaa !93
  %855 = fadd float %852, %854
  %856 = fcmp oeq float %855, 0.000000e+00
  br i1 %856, label %2558, label %857

857:                                              ; preds = %847, %844
  %858 = call float @lamp_get_visibility(ptr noundef %801, ptr noundef nonnull %659, ptr noundef nonnull %9, ptr noundef nonnull %10)
  %859 = fcmp oeq float %858, 0.000000e+00
  br i1 %859, label %2558, label %860

860:                                              ; preds = %857
  %861 = load i16, ptr %804, align 8, !tbaa !72
  %862 = icmp eq i16 %861, 2
  br i1 %862, label %863, label %914

863:                                              ; preds = %860
  %864 = load i32, ptr %808, align 4, !tbaa !74
  %865 = and i32 %864, 512
  %866 = icmp eq i32 %865, 0
  br i1 %866, label %914, label %867

867:                                              ; preds = %863
  store i16 1, ptr %660, align 8, !tbaa !97
  %868 = load float, ptr %9, align 4, !tbaa !67
  %869 = load float, ptr %659, align 8, !tbaa !67
  %870 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 5
  %871 = load float, ptr %870, align 4, !tbaa !67
  %872 = fsub float %869, %871
  %873 = load float, ptr %661, align 8, !tbaa !67
  %874 = fadd float %872, %873
  %875 = load float, ptr %10, align 4, !tbaa !67
  %876 = fdiv float %874, %875
  %877 = fsub float %868, %876
  store float %877, ptr %662, align 8, !tbaa !67
  %878 = load float, ptr %663, align 4, !tbaa !67
  %879 = load float, ptr %664, align 4, !tbaa !67
  %880 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 5, i64 1
  %881 = load float, ptr %880, align 4, !tbaa !67
  %882 = fsub float %879, %881
  %883 = load float, ptr %665, align 4, !tbaa !67
  %884 = fadd float %882, %883
  %885 = fdiv float %884, %875
  %886 = fsub float %878, %885
  store float %886, ptr %666, align 4, !tbaa !67
  %887 = load float, ptr %667, align 4, !tbaa !67
  %888 = load float, ptr %668, align 8, !tbaa !67
  %889 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 5, i64 2
  %890 = load float, ptr %889, align 4, !tbaa !67
  %891 = fsub float %888, %890
  %892 = load float, ptr %669, align 8, !tbaa !67
  %893 = fadd float %891, %892
  %894 = fdiv float %893, %875
  %895 = fsub float %887, %894
  store float %895, ptr %670, align 8, !tbaa !67
  %896 = load float, ptr %870, align 4, !tbaa !67
  %897 = fsub float %869, %896
  %898 = load float, ptr %671, align 4, !tbaa !67
  %899 = fadd float %897, %898
  %900 = fdiv float %899, %875
  %901 = fsub float %868, %900
  store float %901, ptr %672, align 4, !tbaa !67
  %902 = load float, ptr %880, align 4, !tbaa !67
  %903 = fsub float %879, %902
  %904 = load float, ptr %673, align 4, !tbaa !67
  %905 = fadd float %903, %904
  %906 = fdiv float %905, %875
  %907 = fsub float %878, %906
  store float %907, ptr %674, align 4, !tbaa !67
  %908 = load float, ptr %889, align 4, !tbaa !67
  %909 = fsub float %888, %908
  %910 = load float, ptr %675, align 4, !tbaa !67
  %911 = fadd float %909, %910
  %912 = fdiv float %911, %875
  %913 = fsub float %887, %912
  store float %913, ptr %676, align 4, !tbaa !67
  br label %914

914:                                              ; preds = %867, %863, %860
  %915 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 8
  %916 = load float, ptr %915, align 8, !tbaa !91
  store float %916, ptr %11, align 4, !tbaa !67
  %917 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 9
  %918 = load float, ptr %917, align 4, !tbaa !92
  store float %918, ptr %677, align 4, !tbaa !67
  %919 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 10
  %920 = load float, ptr %919, align 8, !tbaa !93
  store float %920, ptr %678, align 4, !tbaa !67
  %921 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 12
  %922 = load float, ptr %921, align 8, !tbaa !148
  store float %922, ptr %13, align 4, !tbaa !67
  %923 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 13
  %924 = load float, ptr %923, align 4, !tbaa !149
  store float %924, ptr %679, align 4, !tbaa !67
  %925 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 14
  %926 = load float, ptr %925, align 8, !tbaa !150
  store float %926, ptr %680, align 4, !tbaa !67
  %927 = load i32, ptr %808, align 4, !tbaa !74
  %928 = and i32 %927, 256
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %931, label %930

930:                                              ; preds = %914
  call void @do_lamp_tex(ptr noundef %801, ptr noundef nonnull %9, ptr noundef nonnull %0, ptr noundef nonnull %11, i32 noundef 256) #12
  br label %931

931:                                              ; preds = %930, %914
  %932 = load i32, ptr %808, align 4, !tbaa !74
  %933 = and i32 %932, 65536
  %934 = icmp eq i32 %933, 0
  br i1 %934, label %936, label %935

935:                                              ; preds = %931
  call void @do_lamp_tex(ptr noundef %801, ptr noundef nonnull %9, ptr noundef nonnull %0, ptr noundef nonnull %13, i32 noundef 65536) #12
  br label %936

936:                                              ; preds = %935, %931
  %937 = getelementptr inbounds %struct.VlakRen, ptr %828, i64 0, i32 7
  %938 = load i8, ptr %937, align 1, !tbaa !98
  %939 = and i8 %938, 64
  %940 = icmp eq i8 %939, 0
  br i1 %940, label %1075, label %941

941:                                              ; preds = %936
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #12
  %942 = getelementptr inbounds %struct.Material, ptr %827, i64 0, i32 51
  %943 = load i32, ptr %942, align 4, !tbaa !102
  %944 = icmp sgt i32 %943, -1
  %945 = load float, ptr %657, align 4, !tbaa !67
  br i1 %944, label %999, label %946

946:                                              ; preds = %941
  %947 = load float, ptr %682, align 4, !tbaa !67
  %948 = load float, ptr %683, align 4, !tbaa !67
  %949 = load float, ptr %684, align 4, !tbaa !67
  %950 = load float, ptr %685, align 4, !tbaa !67
  %951 = fneg float %949
  %952 = fmul float %950, %951
  %953 = call float @llvm.fmuladd.f32(float %947, float %948, float %952)
  %954 = load float, ptr %681, align 4, !tbaa !67
  %955 = fneg float %954
  %956 = fmul float %948, %955
  %957 = call float @llvm.fmuladd.f32(float %949, float %945, float %956)
  %958 = fneg float %947
  %959 = fmul float %945, %958
  %960 = call float @llvm.fmuladd.f32(float %954, float %950, float %959)
  %961 = fneg float %948
  %962 = fmul float %957, %961
  %963 = call float @llvm.fmuladd.f32(float %950, float %960, float %962)
  store float %963, ptr %15, align 4, !tbaa !67
  %964 = fneg float %945
  %965 = fmul float %960, %964
  %966 = call float @llvm.fmuladd.f32(float %948, float %953, float %965)
  store float %966, ptr %686, align 4, !tbaa !67
  %967 = fneg float %950
  %968 = fmul float %953, %967
  %969 = call float @llvm.fmuladd.f32(float %945, float %957, float %968)
  store float %969, ptr %687, align 4, !tbaa !67
  %970 = fmul float %947, %966
  %971 = call float @llvm.fmuladd.f32(float %963, float %954, float %970)
  %972 = call float @llvm.fmuladd.f32(float %969, float %949, float %971)
  %973 = fsub float 1.000000e+00, %972
  %974 = fcmp olt float %973, 0.000000e+00
  br i1 %974, label %978, label %975

975:                                              ; preds = %946
  %976 = fcmp ogt float %973, 1.000000e+00
  br i1 %976, label %977, label %978

977:                                              ; preds = %975
  br label %978

978:                                              ; preds = %977, %975, %946
  %979 = phi float [ 1.000000e+00, %977 ], [ %973, %975 ], [ 0.000000e+00, %946 ]
  call void @interp_v3_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %681, float noundef %979) #12
  %980 = load float, ptr %14, align 4, !tbaa !67
  %981 = load float, ptr %688, align 4, !tbaa !67
  %982 = fmul float %981, %981
  %983 = call float @llvm.fmuladd.f32(float %980, float %980, float %982)
  %984 = load float, ptr %689, align 4, !tbaa !67
  %985 = call float @llvm.fmuladd.f32(float %984, float %984, float %983)
  %986 = fcmp ogt float %985, 0x38AA95A5C0000000
  br i1 %986, label %987, label %996

987:                                              ; preds = %978
  %988 = call float @sqrtf(float noundef %985) #12
  %989 = fdiv float 1.000000e+00, %988
  %990 = load float, ptr %14, align 4, !tbaa !67
  %991 = fmul float %990, %989
  store float %991, ptr %14, align 4, !tbaa !67
  %992 = load float, ptr %688, align 4, !tbaa !67
  %993 = fmul float %989, %992
  store float %993, ptr %688, align 4, !tbaa !67
  %994 = load float, ptr %689, align 4, !tbaa !67
  %995 = fmul float %989, %994
  br label %997

996:                                              ; preds = %978
  store float 0.000000e+00, ptr %14, align 4, !tbaa !67
  store float 0.000000e+00, ptr %688, align 4, !tbaa !67
  br label %997

997:                                              ; preds = %996, %987
  %998 = phi float [ 0.000000e+00, %996 ], [ %995, %987 ]
  store float %998, ptr %689, align 4, !tbaa !67
  br label %1039

999:                                              ; preds = %941
  %1000 = load float, ptr %690, align 4, !tbaa !67
  %1001 = load float, ptr %691, align 4, !tbaa !67
  %1002 = load float, ptr %692, align 4, !tbaa !67
  %1003 = load float, ptr %693, align 4, !tbaa !67
  %1004 = fneg float %1002
  %1005 = fmul float %1003, %1004
  %1006 = call float @llvm.fmuladd.f32(float %1000, float %1001, float %1005)
  %1007 = load float, ptr %9, align 4, !tbaa !67
  %1008 = fneg float %1007
  %1009 = fmul float %1001, %1008
  %1010 = call float @llvm.fmuladd.f32(float %1002, float %945, float %1009)
  %1011 = fneg float %1000
  %1012 = fmul float %945, %1011
  %1013 = call float @llvm.fmuladd.f32(float %1007, float %1003, float %1012)
  %1014 = fneg float %1013
  %1015 = fmul float %1003, %1014
  %1016 = call float @llvm.fmuladd.f32(float %1010, float %1001, float %1015)
  store float %1016, ptr %14, align 4, !tbaa !67
  %1017 = fneg float %1006
  %1018 = fmul float %1001, %1017
  %1019 = call float @llvm.fmuladd.f32(float %1013, float %945, float %1018)
  store float %1019, ptr %694, align 4, !tbaa !67
  %1020 = fneg float %1010
  %1021 = fmul float %945, %1020
  %1022 = call float @llvm.fmuladd.f32(float %1006, float %1003, float %1021)
  store float %1022, ptr %695, align 4, !tbaa !67
  %1023 = fmul float %1019, %1019
  %1024 = call float @llvm.fmuladd.f32(float %1016, float %1016, float %1023)
  %1025 = call float @llvm.fmuladd.f32(float %1022, float %1022, float %1024)
  %1026 = fcmp ogt float %1025, 0x38AA95A5C0000000
  br i1 %1026, label %1027, label %1036

1027:                                             ; preds = %999
  %1028 = call float @sqrtf(float noundef %1025) #12
  %1029 = fdiv float 1.000000e+00, %1028
  %1030 = load float, ptr %14, align 4, !tbaa !67
  %1031 = fmul float %1030, %1029
  store float %1031, ptr %14, align 4, !tbaa !67
  %1032 = load float, ptr %694, align 4, !tbaa !67
  %1033 = fmul float %1029, %1032
  store float %1033, ptr %694, align 4, !tbaa !67
  %1034 = load float, ptr %695, align 4, !tbaa !67
  %1035 = fmul float %1029, %1034
  br label %1037

1036:                                             ; preds = %999
  store float 0.000000e+00, ptr %14, align 4, !tbaa !67
  store float 0.000000e+00, ptr %694, align 4, !tbaa !67
  br label %1037

1037:                                             ; preds = %1036, %1027
  %1038 = phi float [ 0.000000e+00, %1036 ], [ %1035, %1027 ]
  store float %1038, ptr %695, align 4, !tbaa !67
  br label %1039

1039:                                             ; preds = %1037, %997
  %1040 = getelementptr inbounds %struct.Material, ptr %827, i64 0, i32 66
  %1041 = load float, ptr %1040, align 8, !tbaa !151
  %1042 = fcmp ogt float %1041, 0.000000e+00
  br i1 %1042, label %1043, label %1068

1043:                                             ; preds = %1039
  %1044 = load float, ptr %696, align 4, !tbaa !152
  %1045 = fcmp ogt float %1041, %1044
  br i1 %1045, label %1046, label %1068

1046:                                             ; preds = %1043
  %1047 = fsub float %1041, %1044
  %1048 = fdiv float %1047, %1041
  call void @interp_v3_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %14, ptr noundef nonnull %697, float noundef %1048) #12
  %1049 = load float, ptr %14, align 4, !tbaa !67
  %1050 = load float, ptr %698, align 4, !tbaa !67
  %1051 = fmul float %1050, %1050
  %1052 = call float @llvm.fmuladd.f32(float %1049, float %1049, float %1051)
  %1053 = load float, ptr %699, align 4, !tbaa !67
  %1054 = call float @llvm.fmuladd.f32(float %1053, float %1053, float %1052)
  %1055 = fcmp ogt float %1054, 0x38AA95A5C0000000
  br i1 %1055, label %1056, label %1065

1056:                                             ; preds = %1046
  %1057 = call float @sqrtf(float noundef %1054) #12
  %1058 = fdiv float 1.000000e+00, %1057
  %1059 = load float, ptr %14, align 4, !tbaa !67
  %1060 = fmul float %1059, %1058
  store float %1060, ptr %14, align 4, !tbaa !67
  %1061 = load float, ptr %698, align 4, !tbaa !67
  %1062 = fmul float %1058, %1061
  store float %1062, ptr %698, align 4, !tbaa !67
  %1063 = load float, ptr %699, align 4, !tbaa !67
  %1064 = fmul float %1058, %1063
  br label %1066

1065:                                             ; preds = %1046
  store float 0.000000e+00, ptr %14, align 4, !tbaa !67
  store float 0.000000e+00, ptr %698, align 4, !tbaa !67
  br label %1066

1066:                                             ; preds = %1065, %1056
  %1067 = phi float [ 0.000000e+00, %1065 ], [ %1064, %1056 ]
  store float %1067, ptr %699, align 4, !tbaa !67
  br label %1068

1068:                                             ; preds = %1066, %1043, %1039
  %1069 = load float, ptr %14, align 4, !tbaa !67
  %1070 = fneg float %1069
  store float %1070, ptr %14, align 4, !tbaa !67
  %1071 = load float, ptr %700, align 4, !tbaa !67
  %1072 = fneg float %1071
  store float %1072, ptr %700, align 4, !tbaa !67
  %1073 = load float, ptr %701, align 4, !tbaa !67
  %1074 = fneg float %1073
  store float %1074, ptr %701, align 4, !tbaa !67
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #12
  br label %1126

1075:                                             ; preds = %936
  %1076 = getelementptr inbounds %struct.Material, ptr %827, i64 0, i32 51
  %1077 = load i32, ptr %1076, align 4, !tbaa !102
  %1078 = and i32 %1077, 67108864
  %1079 = icmp eq i32 %1078, 0
  br i1 %1079, label %1126, label %1080

1080:                                             ; preds = %1075
  %1081 = load float, ptr %703, align 4, !tbaa !67
  %1082 = load float, ptr %704, align 4, !tbaa !67
  %1083 = load float, ptr %705, align 4, !tbaa !67
  %1084 = load float, ptr %706, align 4, !tbaa !67
  %1085 = fneg float %1083
  %1086 = fmul float %1084, %1085
  %1087 = call float @llvm.fmuladd.f32(float %1081, float %1082, float %1086)
  %1088 = load float, ptr %702, align 4, !tbaa !67
  %1089 = load float, ptr %9, align 4, !tbaa !67
  %1090 = fneg float %1089
  %1091 = fmul float %1082, %1090
  %1092 = call float @llvm.fmuladd.f32(float %1083, float %1088, float %1091)
  %1093 = fneg float %1081
  %1094 = fmul float %1088, %1093
  %1095 = call float @llvm.fmuladd.f32(float %1089, float %1084, float %1094)
  %1096 = fneg float %1095
  %1097 = fmul float %1084, %1096
  %1098 = call float @llvm.fmuladd.f32(float %1092, float %1082, float %1097)
  store float %1098, ptr %14, align 4, !tbaa !67
  %1099 = fneg float %1087
  %1100 = fmul float %1082, %1099
  %1101 = call float @llvm.fmuladd.f32(float %1095, float %1088, float %1100)
  store float %1101, ptr %707, align 4, !tbaa !67
  %1102 = fneg float %1092
  %1103 = fmul float %1088, %1102
  %1104 = call float @llvm.fmuladd.f32(float %1087, float %1084, float %1103)
  store float %1104, ptr %708, align 4, !tbaa !67
  %1105 = fmul float %1101, %1101
  %1106 = call float @llvm.fmuladd.f32(float %1098, float %1098, float %1105)
  %1107 = call float @llvm.fmuladd.f32(float %1104, float %1104, float %1106)
  %1108 = fcmp ogt float %1107, 0x38AA95A5C0000000
  br i1 %1108, label %1109, label %1118

1109:                                             ; preds = %1080
  %1110 = call float @sqrtf(float noundef %1107) #12
  %1111 = fdiv float 1.000000e+00, %1110
  %1112 = load float, ptr %14, align 4, !tbaa !67
  %1113 = fmul float %1112, %1111
  store float %1113, ptr %14, align 4, !tbaa !67
  %1114 = load float, ptr %707, align 4, !tbaa !67
  %1115 = fmul float %1111, %1114
  store float %1115, ptr %707, align 4, !tbaa !67
  %1116 = load float, ptr %708, align 4, !tbaa !67
  %1117 = fmul float %1111, %1116
  br label %1119

1118:                                             ; preds = %1080
  store float 0.000000e+00, ptr %14, align 4, !tbaa !67
  store float 0.000000e+00, ptr %707, align 4, !tbaa !67
  br label %1119

1119:                                             ; preds = %1118, %1109
  %1120 = phi float [ 0.000000e+00, %1118 ], [ %1117, %1109 ]
  store float %1120, ptr %708, align 4, !tbaa !67
  %1121 = load float, ptr %14, align 4, !tbaa !67
  %1122 = fneg float %1121
  store float %1122, ptr %14, align 4, !tbaa !67
  %1123 = load float, ptr %707, align 4, !tbaa !67
  %1124 = fneg float %1123
  store float %1124, ptr %707, align 4, !tbaa !67
  %1125 = fneg float %1120
  store float %1125, ptr %708, align 4, !tbaa !67
  br label %1126

1126:                                             ; preds = %1119, %1075, %1068
  %1127 = phi ptr [ %14, %1068 ], [ %14, %1119 ], [ %657, %1075 ]
  %1128 = load float, ptr %1127, align 4, !tbaa !67
  %1129 = load float, ptr %9, align 4, !tbaa !67
  %1130 = getelementptr inbounds float, ptr %1127, i64 1
  %1131 = load float, ptr %1130, align 4, !tbaa !67
  %1132 = load float, ptr %709, align 4, !tbaa !67
  %1133 = fmul float %1131, %1132
  %1134 = call float @llvm.fmuladd.f32(float %1128, float %1129, float %1133)
  %1135 = getelementptr inbounds float, ptr %1127, i64 2
  %1136 = load float, ptr %1135, align 4, !tbaa !67
  %1137 = load float, ptr %710, align 4, !tbaa !67
  %1138 = call float @llvm.fmuladd.f32(float %1136, float %1137, float %1134)
  %1139 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !83
  %1140 = and i32 %1139, 2
  %1141 = icmp eq i32 %1140, 0
  br i1 %1141, label %1193, label %1142

1142:                                             ; preds = %1126
  %1143 = getelementptr inbounds %struct.Material, ptr %827, i64 0, i32 51
  %1144 = load i32, ptr %1143, align 4, !tbaa !102
  %1145 = and i32 %1144, 2
  %1146 = icmp eq i32 %1145, 0
  br i1 %1146, label %1193, label %1147

1147:                                             ; preds = %1142
  %1148 = load i16, ptr %804, align 8, !tbaa !72
  %1149 = add i16 %1148, -3
  %1150 = icmp ult i16 %1149, 2
  br i1 %1150, label %1193, label %1151

1151:                                             ; preds = %1147
  %1152 = and i32 %1144, 4194304
  %1153 = icmp eq i32 %1152, 0
  br i1 %1153, label %1174, label %1154

1154:                                             ; preds = %1151
  %1155 = load i32, ptr %808, align 4, !tbaa !74
  %1156 = and i32 %1155, 8192
  %1157 = icmp eq i32 %1156, 0
  br i1 %1157, label %1174, label %1158

1158:                                             ; preds = %1154
  %1159 = load i8, ptr %937, align 1, !tbaa !98
  %1160 = and i8 %1159, 1
  %1161 = icmp eq i8 %1160, 0
  br i1 %1161, label %1174, label %1162

1162:                                             ; preds = %1158
  %1163 = load ptr, ptr %711, align 8, !tbaa !114
  %1164 = getelementptr inbounds %struct.ObjectRen, ptr %1163, i64 0, i32 2
  %1165 = load ptr, ptr %1164, align 8, !tbaa !115
  %1166 = getelementptr inbounds %struct.Object, ptr %1165, i64 0, i32 116
  %1167 = load float, ptr %1166, align 4, !tbaa !153
  %1168 = fcmp ogt float %1138, %1167
  %1169 = fsub float %1138, %1167
  %1170 = fsub float 1.000000e+00, %1167
  %1171 = fmul float %1138, %1170
  %1172 = fdiv float %1169, %1171
  %1173 = select i1 %1168, float %1172, float 0.000000e+00
  br label %1193

1174:                                             ; preds = %1158, %1154, %1151
  %1175 = getelementptr inbounds %struct.Material, ptr %827, i64 0, i32 70
  %1176 = load float, ptr %1175, align 4, !tbaa !157
  %1177 = fcmp une float %1176, 0.000000e+00
  br i1 %1177, label %1178, label %1193

1178:                                             ; preds = %1174
  %1179 = load i32, ptr %808, align 4, !tbaa !74
  %1180 = and i32 %1179, 8192
  %1181 = icmp eq i32 %1180, 0
  br i1 %1181, label %1182, label %1186

1182:                                             ; preds = %1178
  %1183 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 57
  %1184 = load ptr, ptr %1183, align 8, !tbaa !88
  %1185 = icmp eq ptr %1184, null
  br i1 %1185, label %1193, label %1186

1186:                                             ; preds = %1182, %1178
  %1187 = fcmp ogt float %1138, %1176
  br i1 %1187, label %1188, label %1193

1188:                                             ; preds = %1186
  %1189 = fsub float %1138, %1176
  %1190 = fsub float 1.000000e+00, %1176
  %1191 = fmul float %1138, %1190
  %1192 = fdiv float %1189, %1191
  br label %1193

1193:                                             ; preds = %1188, %1186, %1182, %1174, %1162, %1147, %1142, %1126
  %1194 = phi float [ %1173, %1162 ], [ %1192, %1188 ], [ 1.000000e+00, %1182 ], [ 1.000000e+00, %1174 ], [ 1.000000e+00, %1142 ], [ 1.000000e+00, %1126 ], [ 1.000000e+00, %1147 ], [ 0.000000e+00, %1186 ]
  %1195 = load i32, ptr %808, align 4, !tbaa !74
  %1196 = and i32 %1195, 2048
  %1197 = icmp eq i32 %1196, 0
  br i1 %1197, label %1198, label %1732

1198:                                             ; preds = %1193
  %1199 = load i16, ptr %804, align 8, !tbaa !72
  switch i16 %1199, label %1532 [
    i16 3, label %1200
    i16 4, label %1202
  ]

1200:                                             ; preds = %1198
  %1201 = call float @llvm.fmuladd.f32(float %1138, float 5.000000e-01, float 5.000000e-01)
  br label %1732

1202:                                             ; preds = %1198
  %1203 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 58
  %1204 = load ptr, ptr %1203, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %1205 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 49
  %1206 = load i16, ptr %1205, align 8, !tbaa !159
  %1207 = sext i16 %1206 to i32
  %1208 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 5
  %1209 = load float, ptr %659, align 4, !tbaa !67
  %1210 = load float, ptr %1208, align 4, !tbaa !67
  %1211 = fsub float %1209, %1210
  store float %1211, ptr %4, align 4, !tbaa !67
  %1212 = load float, ptr %712, align 4, !tbaa !67
  %1213 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 5, i64 1
  %1214 = load float, ptr %1213, align 4, !tbaa !67
  %1215 = fsub float %1212, %1214
  store float %1215, ptr %713, align 4, !tbaa !67
  %1216 = load float, ptr %714, align 4, !tbaa !67
  %1217 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 5, i64 2
  %1218 = load float, ptr %1217, align 4, !tbaa !67
  %1219 = fsub float %1216, %1218
  store float %1219, ptr %715, align 4, !tbaa !67
  %1220 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 20
  %1221 = load float, ptr %1220, align 4, !tbaa !67
  %1222 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 20, i64 1
  %1223 = load float, ptr %1222, align 4, !tbaa !67
  %1224 = fmul float %1215, %1223
  %1225 = call float @llvm.fmuladd.f32(float %1211, float %1221, float %1224)
  %1226 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 20, i64 2
  %1227 = load float, ptr %1226, align 4, !tbaa !67
  %1228 = call float @llvm.fmuladd.f32(float %1219, float %1227, float %1225)
  %1229 = fcmp olt float %1228, 0.000000e+00
  br i1 %1229, label %1530, label %1230

1230:                                             ; preds = %1202
  %1231 = icmp eq i16 %1206, 0
  br i1 %1231, label %1516, label %1232

1232:                                             ; preds = %1230
  %1233 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 64
  %1234 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 65
  %1235 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 65, i64 0, i64 1
  %1236 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 65, i64 0, i64 2
  %1237 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 65, i64 1
  %1238 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 65, i64 1, i64 1
  %1239 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 65, i64 1, i64 2
  %1240 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 65, i64 2
  %1241 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 65, i64 2, i64 1
  %1242 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 65, i64 2, i64 2
  %1243 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 65, i64 3
  %1244 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 65, i64 3, i64 1
  %1245 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 65, i64 3, i64 2
  br label %1246

1246:                                             ; preds = %1486, %1232
  %1247 = phi i32 [ %1207, %1232 ], [ %1250, %1486 ]
  %1248 = phi float [ 0.000000e+00, %1232 ], [ %1513, %1486 ]
  %1249 = phi ptr [ %1204, %1232 ], [ %1514, %1486 ]
  %1250 = add nsw i32 %1247, -1
  %1251 = load float, ptr %1249, align 4, !tbaa !67
  store float %1251, ptr %4, align 4, !tbaa !67
  %1252 = getelementptr inbounds float, ptr %1249, i64 1
  %1253 = load float, ptr %1252, align 4, !tbaa !67
  store float %1253, ptr %713, align 4, !tbaa !67
  store float 0.000000e+00, ptr %715, align 4, !tbaa !67
  call void @mul_m3_v3(ptr noundef nonnull %1233, ptr noundef nonnull %4) #12
  %1254 = load float, ptr %1234, align 4, !tbaa !67
  %1255 = load float, ptr %4, align 4, !tbaa !67
  %1256 = fadd float %1254, %1255
  %1257 = load float, ptr %1235, align 4, !tbaa !67
  %1258 = load float, ptr %713, align 4, !tbaa !67
  %1259 = fadd float %1257, %1258
  %1260 = load float, ptr %1236, align 4, !tbaa !67
  %1261 = load float, ptr %715, align 4, !tbaa !67
  %1262 = fadd float %1260, %1261
  %1263 = load float, ptr %1237, align 4, !tbaa !67
  %1264 = fadd float %1255, %1263
  %1265 = load float, ptr %1238, align 4, !tbaa !67
  %1266 = fadd float %1258, %1265
  %1267 = load float, ptr %1239, align 4, !tbaa !67
  %1268 = fadd float %1261, %1267
  %1269 = load float, ptr %1240, align 4, !tbaa !67
  %1270 = fadd float %1255, %1269
  %1271 = load float, ptr %1241, align 4, !tbaa !67
  %1272 = fadd float %1258, %1271
  %1273 = load float, ptr %1242, align 4, !tbaa !67
  %1274 = fadd float %1261, %1273
  %1275 = load float, ptr %1243, align 4, !tbaa !67
  %1276 = fadd float %1255, %1275
  %1277 = load float, ptr %1244, align 4, !tbaa !67
  %1278 = fadd float %1258, %1277
  %1279 = load float, ptr %1245, align 4, !tbaa !67
  %1280 = fadd float %1261, %1279
  %1281 = load float, ptr %659, align 4, !tbaa !67
  %1282 = fsub float %1281, %1256
  %1283 = fpext float %1282 to double
  %1284 = load float, ptr %712, align 4, !tbaa !67
  %1285 = fsub float %1284, %1259
  %1286 = fpext float %1285 to double
  %1287 = load float, ptr %714, align 4, !tbaa !67
  %1288 = fsub float %1287, %1262
  %1289 = fpext float %1288 to double
  %1290 = fsub float %1281, %1264
  %1291 = fpext float %1290 to double
  %1292 = fsub float %1284, %1266
  %1293 = fpext float %1292 to double
  %1294 = fsub float %1287, %1268
  %1295 = fpext float %1294 to double
  %1296 = fsub float %1281, %1270
  %1297 = fpext float %1296 to double
  %1298 = fsub float %1284, %1272
  %1299 = fpext float %1298 to double
  %1300 = fsub float %1287, %1274
  %1301 = fpext float %1300 to double
  %1302 = fsub float %1281, %1276
  %1303 = fpext float %1302 to double
  %1304 = fsub float %1284, %1278
  %1305 = fpext float %1304 to double
  %1306 = fsub float %1287, %1280
  %1307 = fpext float %1306 to double
  %1308 = fmul double %1286, %1286
  %1309 = call double @llvm.fmuladd.f64(double %1283, double %1283, double %1308)
  %1310 = call double @llvm.fmuladd.f64(double %1289, double %1289, double %1309)
  %1311 = fcmp ogt double %1310, 1.000000e-17
  br i1 %1311, label %1312, label %1317

1312:                                             ; preds = %1246
  %1313 = call double @sqrt(double noundef %1310) #12
  %1314 = fdiv double %1283, %1313
  %1315 = fdiv double %1286, %1313
  %1316 = fdiv double %1289, %1313
  br label %1317

1317:                                             ; preds = %1312, %1246
  %1318 = phi double [ %1316, %1312 ], [ 0.000000e+00, %1246 ]
  %1319 = phi double [ %1315, %1312 ], [ 0.000000e+00, %1246 ]
  %1320 = phi double [ %1314, %1312 ], [ 0.000000e+00, %1246 ]
  %1321 = fmul double %1293, %1293
  %1322 = call double @llvm.fmuladd.f64(double %1291, double %1291, double %1321)
  %1323 = call double @llvm.fmuladd.f64(double %1295, double %1295, double %1322)
  %1324 = fcmp ogt double %1323, 1.000000e-17
  br i1 %1324, label %1325, label %1330

1325:                                             ; preds = %1317
  %1326 = call double @sqrt(double noundef %1323) #12
  %1327 = fdiv double %1291, %1326
  %1328 = fdiv double %1293, %1326
  %1329 = fdiv double %1295, %1326
  br label %1330

1330:                                             ; preds = %1325, %1317
  %1331 = phi double [ %1329, %1325 ], [ 0.000000e+00, %1317 ]
  %1332 = phi double [ %1328, %1325 ], [ 0.000000e+00, %1317 ]
  %1333 = phi double [ %1327, %1325 ], [ 0.000000e+00, %1317 ]
  %1334 = fmul double %1299, %1299
  %1335 = call double @llvm.fmuladd.f64(double %1297, double %1297, double %1334)
  %1336 = call double @llvm.fmuladd.f64(double %1301, double %1301, double %1335)
  %1337 = fcmp ogt double %1336, 1.000000e-17
  br i1 %1337, label %1338, label %1343

1338:                                             ; preds = %1330
  %1339 = call double @sqrt(double noundef %1336) #12
  %1340 = fdiv double %1297, %1339
  %1341 = fdiv double %1299, %1339
  %1342 = fdiv double %1301, %1339
  br label %1343

1343:                                             ; preds = %1338, %1330
  %1344 = phi double [ %1342, %1338 ], [ 0.000000e+00, %1330 ]
  %1345 = phi double [ %1341, %1338 ], [ 0.000000e+00, %1330 ]
  %1346 = phi double [ %1340, %1338 ], [ 0.000000e+00, %1330 ]
  %1347 = fmul double %1305, %1305
  %1348 = call double @llvm.fmuladd.f64(double %1303, double %1303, double %1347)
  %1349 = call double @llvm.fmuladd.f64(double %1307, double %1307, double %1348)
  %1350 = fcmp ogt double %1349, 1.000000e-17
  br i1 %1350, label %1351, label %1356

1351:                                             ; preds = %1343
  %1352 = call double @sqrt(double noundef %1349) #12
  %1353 = fdiv double %1303, %1352
  %1354 = fdiv double %1305, %1352
  %1355 = fdiv double %1307, %1352
  br label %1356

1356:                                             ; preds = %1351, %1343
  %1357 = phi double [ %1355, %1351 ], [ 0.000000e+00, %1343 ]
  %1358 = phi double [ %1354, %1351 ], [ 0.000000e+00, %1343 ]
  %1359 = phi double [ %1353, %1351 ], [ 0.000000e+00, %1343 ]
  %1360 = fneg double %1318
  %1361 = fmul double %1332, %1360
  %1362 = call double @llvm.fmuladd.f64(double %1319, double %1331, double %1361)
  %1363 = fneg double %1320
  %1364 = fmul double %1331, %1363
  %1365 = call double @llvm.fmuladd.f64(double %1318, double %1333, double %1364)
  %1366 = fneg double %1319
  %1367 = fmul double %1333, %1366
  %1368 = call double @llvm.fmuladd.f64(double %1320, double %1332, double %1367)
  %1369 = fneg double %1331
  %1370 = fmul double %1345, %1369
  %1371 = call double @llvm.fmuladd.f64(double %1332, double %1344, double %1370)
  %1372 = fneg double %1333
  %1373 = fmul double %1344, %1372
  %1374 = call double @llvm.fmuladd.f64(double %1331, double %1346, double %1373)
  %1375 = fneg double %1332
  %1376 = fmul double %1346, %1375
  %1377 = call double @llvm.fmuladd.f64(double %1333, double %1345, double %1376)
  %1378 = fneg double %1344
  %1379 = fmul double %1358, %1378
  %1380 = call double @llvm.fmuladd.f64(double %1345, double %1357, double %1379)
  %1381 = fneg double %1346
  %1382 = fmul double %1357, %1381
  %1383 = call double @llvm.fmuladd.f64(double %1344, double %1359, double %1382)
  %1384 = fneg double %1345
  %1385 = fmul double %1359, %1384
  %1386 = call double @llvm.fmuladd.f64(double %1346, double %1358, double %1385)
  %1387 = fneg double %1357
  %1388 = fmul double %1319, %1387
  %1389 = call double @llvm.fmuladd.f64(double %1358, double %1318, double %1388)
  %1390 = fneg double %1359
  %1391 = fmul double %1318, %1390
  %1392 = call double @llvm.fmuladd.f64(double %1357, double %1320, double %1391)
  %1393 = fneg double %1358
  %1394 = fmul double %1320, %1393
  %1395 = call double @llvm.fmuladd.f64(double %1359, double %1319, double %1394)
  %1396 = fmul double %1365, %1365
  %1397 = call double @llvm.fmuladd.f64(double %1362, double %1362, double %1396)
  %1398 = call double @llvm.fmuladd.f64(double %1368, double %1368, double %1397)
  %1399 = fcmp ogt double %1398, 1.000000e-17
  br i1 %1399, label %1400, label %1405

1400:                                             ; preds = %1356
  %1401 = call double @sqrt(double noundef %1398) #12
  %1402 = fdiv double %1362, %1401
  %1403 = fdiv double %1365, %1401
  %1404 = fdiv double %1368, %1401
  br label %1405

1405:                                             ; preds = %1400, %1356
  %1406 = phi double [ %1404, %1400 ], [ 0.000000e+00, %1356 ]
  %1407 = phi double [ %1403, %1400 ], [ 0.000000e+00, %1356 ]
  %1408 = phi double [ %1402, %1400 ], [ 0.000000e+00, %1356 ]
  %1409 = fmul double %1374, %1374
  %1410 = call double @llvm.fmuladd.f64(double %1371, double %1371, double %1409)
  %1411 = call double @llvm.fmuladd.f64(double %1377, double %1377, double %1410)
  %1412 = fcmp ogt double %1411, 1.000000e-17
  br i1 %1412, label %1413, label %1418

1413:                                             ; preds = %1405
  %1414 = call double @sqrt(double noundef %1411) #12
  %1415 = fdiv double %1371, %1414
  %1416 = fdiv double %1374, %1414
  %1417 = fdiv double %1377, %1414
  br label %1418

1418:                                             ; preds = %1413, %1405
  %1419 = phi double [ %1417, %1413 ], [ 0.000000e+00, %1405 ]
  %1420 = phi double [ %1416, %1413 ], [ 0.000000e+00, %1405 ]
  %1421 = phi double [ %1415, %1413 ], [ 0.000000e+00, %1405 ]
  %1422 = fmul double %1383, %1383
  %1423 = call double @llvm.fmuladd.f64(double %1380, double %1380, double %1422)
  %1424 = call double @llvm.fmuladd.f64(double %1386, double %1386, double %1423)
  %1425 = fcmp ogt double %1424, 1.000000e-17
  br i1 %1425, label %1426, label %1431

1426:                                             ; preds = %1418
  %1427 = call double @sqrt(double noundef %1424) #12
  %1428 = fdiv double %1380, %1427
  %1429 = fdiv double %1383, %1427
  %1430 = fdiv double %1386, %1427
  br label %1431

1431:                                             ; preds = %1426, %1418
  %1432 = phi double [ %1430, %1426 ], [ 0.000000e+00, %1418 ]
  %1433 = phi double [ %1429, %1426 ], [ 0.000000e+00, %1418 ]
  %1434 = phi double [ %1428, %1426 ], [ 0.000000e+00, %1418 ]
  %1435 = fmul double %1392, %1392
  %1436 = call double @llvm.fmuladd.f64(double %1389, double %1389, double %1435)
  %1437 = call double @llvm.fmuladd.f64(double %1395, double %1395, double %1436)
  %1438 = fcmp ogt double %1437, 1.000000e-17
  br i1 %1438, label %1439, label %1444

1439:                                             ; preds = %1431
  %1440 = call double @sqrt(double noundef %1437) #12
  %1441 = fdiv double %1389, %1440
  %1442 = fdiv double %1392, %1440
  %1443 = fdiv double %1395, %1440
  br label %1444

1444:                                             ; preds = %1439, %1431
  %1445 = phi double [ %1443, %1439 ], [ 0.000000e+00, %1431 ]
  %1446 = phi double [ %1442, %1439 ], [ 0.000000e+00, %1431 ]
  %1447 = phi double [ %1441, %1439 ], [ 0.000000e+00, %1431 ]
  %1448 = fmul double %1319, %1332
  %1449 = call double @llvm.fmuladd.f64(double %1320, double %1333, double %1448)
  %1450 = call double @llvm.fmuladd.f64(double %1318, double %1331, double %1449)
  %1451 = fmul double %1332, %1345
  %1452 = call double @llvm.fmuladd.f64(double %1333, double %1346, double %1451)
  %1453 = call double @llvm.fmuladd.f64(double %1331, double %1344, double %1452)
  %1454 = fmul double %1345, %1358
  %1455 = call double @llvm.fmuladd.f64(double %1346, double %1359, double %1454)
  %1456 = call double @llvm.fmuladd.f64(double %1344, double %1357, double %1455)
  %1457 = fmul double %1319, %1358
  %1458 = call double @llvm.fmuladd.f64(double %1359, double %1320, double %1457)
  %1459 = call double @llvm.fmuladd.f64(double %1357, double %1318, double %1458)
  %1460 = fcmp ugt double %1450, -1.000000e+00
  br i1 %1460, label %1461, label %1465

1461:                                             ; preds = %1444
  %1462 = fcmp ult double %1450, 1.000000e+00
  br i1 %1462, label %1463, label %1465

1463:                                             ; preds = %1461
  %1464 = call double @acos(double noundef %1450) #12
  br label %1465

1465:                                             ; preds = %1463, %1461, %1444
  %1466 = phi double [ %1464, %1463 ], [ 0x400921FB54442D18, %1444 ], [ 0.000000e+00, %1461 ]
  %1467 = fcmp ugt double %1453, -1.000000e+00
  br i1 %1467, label %1468, label %1472

1468:                                             ; preds = %1465
  %1469 = fcmp ult double %1453, 1.000000e+00
  br i1 %1469, label %1470, label %1472

1470:                                             ; preds = %1468
  %1471 = call double @acos(double noundef %1453) #12
  br label %1472

1472:                                             ; preds = %1470, %1468, %1465
  %1473 = phi double [ %1471, %1470 ], [ 0x400921FB54442D18, %1465 ], [ 0.000000e+00, %1468 ]
  %1474 = fcmp ugt double %1456, -1.000000e+00
  br i1 %1474, label %1475, label %1479

1475:                                             ; preds = %1472
  %1476 = fcmp ult double %1456, 1.000000e+00
  br i1 %1476, label %1477, label %1479

1477:                                             ; preds = %1475
  %1478 = call double @acos(double noundef %1456) #12
  br label %1479

1479:                                             ; preds = %1477, %1475, %1472
  %1480 = phi double [ %1478, %1477 ], [ 0x400921FB54442D18, %1472 ], [ 0.000000e+00, %1475 ]
  %1481 = fcmp ugt double %1459, -1.000000e+00
  br i1 %1481, label %1482, label %1486

1482:                                             ; preds = %1479
  %1483 = fcmp ult double %1459, 1.000000e+00
  br i1 %1483, label %1484, label %1486

1484:                                             ; preds = %1482
  %1485 = call double @acos(double noundef %1459) #12
  br label %1486

1486:                                             ; preds = %1484, %1482, %1479
  %1487 = phi double [ %1485, %1484 ], [ 0x400921FB54442D18, %1479 ], [ 0.000000e+00, %1482 ]
  %1488 = load float, ptr %1127, align 4, !tbaa !67
  %1489 = fpext float %1488 to double
  %1490 = load float, ptr %1130, align 4, !tbaa !67
  %1491 = fpext float %1490 to double
  %1492 = fmul double %1407, %1491
  %1493 = call double @llvm.fmuladd.f64(double %1489, double %1408, double %1492)
  %1494 = load float, ptr %1135, align 4, !tbaa !67
  %1495 = fpext float %1494 to double
  %1496 = call double @llvm.fmuladd.f64(double %1495, double %1406, double %1493)
  %1497 = fmul double %1466, %1496
  %1498 = fmul double %1420, %1491
  %1499 = call double @llvm.fmuladd.f64(double %1489, double %1421, double %1498)
  %1500 = call double @llvm.fmuladd.f64(double %1495, double %1419, double %1499)
  %1501 = call double @llvm.fmuladd.f64(double %1473, double %1500, double %1497)
  %1502 = fmul double %1433, %1491
  %1503 = call double @llvm.fmuladd.f64(double %1489, double %1434, double %1502)
  %1504 = call double @llvm.fmuladd.f64(double %1495, double %1432, double %1503)
  %1505 = call double @llvm.fmuladd.f64(double %1480, double %1504, double %1501)
  %1506 = fmul double %1446, %1491
  %1507 = call double @llvm.fmuladd.f64(double %1489, double %1447, double %1506)
  %1508 = call double @llvm.fmuladd.f64(double %1495, double %1445, double %1507)
  %1509 = call double @llvm.fmuladd.f64(double %1487, double %1508, double %1505)
  %1510 = fcmp ole double %1509, 0.000000e+00
  %1511 = select i1 %1510, double 0.000000e+00, double %1509
  %1512 = fptrunc double %1511 to float
  %1513 = fadd float %1248, %1512
  %1514 = getelementptr inbounds float, ptr %1249, i64 2
  %1515 = icmp eq i32 %1250, 0
  br i1 %1515, label %1516, label %1246, !llvm.loop !160

1516:                                             ; preds = %1486, %1230
  %1517 = phi float [ 0.000000e+00, %1230 ], [ %1513, %1486 ]
  %1518 = load i16, ptr %1205, align 8, !tbaa !159
  %1519 = sitofp i16 %1518 to float
  %1520 = fdiv float %1517, %1519
  %1521 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 66
  %1522 = load float, ptr %1521, align 4, !tbaa !161
  %1523 = fmul float %1522, %1520
  %1524 = fpext float %1523 to double
  %1525 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 11
  %1526 = load float, ptr %1525, align 4, !tbaa !162
  %1527 = fpext float %1526 to double
  %1528 = call double @pow(double noundef %1524, double noundef %1527) #12
  %1529 = fptrunc double %1528 to float
  br label %1530

1530:                                             ; preds = %1202, %1516
  %1531 = phi float [ %1529, %1516 ], [ 0.000000e+00, %1202 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  br label %1532

1532:                                             ; preds = %1530, %1198
  %1533 = phi float [ %1531, %1530 ], [ %1138, %1198 ]
  %1534 = getelementptr inbounds %struct.Material, ptr %827, i64 0, i32 83
  %1535 = load i16, ptr %1534, align 8, !tbaa !163
  switch i16 %1535, label %1732 [
    i16 1, label %1536
    i16 2, label %1642
    i16 3, label %1673
    i16 4, label %1705
  ]

1536:                                             ; preds = %1532
  %1537 = getelementptr inbounds %struct.Material, ptr %827, i64 0, i32 85
  %1538 = load float, ptr %1537, align 4, !tbaa !164
  %1539 = load float, ptr %1127, align 4, !tbaa !67
  %1540 = load float, ptr %658, align 4, !tbaa !67
  %1541 = load float, ptr %1130, align 4, !tbaa !67
  %1542 = load float, ptr %718, align 4, !tbaa !67
  %1543 = fmul float %1541, %1542
  %1544 = call float @llvm.fmuladd.f32(float %1539, float %1540, float %1543)
  %1545 = load float, ptr %1135, align 4, !tbaa !67
  %1546 = load float, ptr %719, align 4, !tbaa !67
  %1547 = call float @llvm.fmuladd.f32(float %1545, float %1546, float %1544)
  %1548 = fcmp ole float %1547, 0.000000e+00
  %1549 = select i1 %1548, float 0.000000e+00, float %1547
  %1550 = load float, ptr %9, align 4, !tbaa !67
  %1551 = load float, ptr %709, align 4, !tbaa !67
  %1552 = fmul float %1541, %1551
  %1553 = call float @llvm.fmuladd.f32(float %1539, float %1550, float %1552)
  %1554 = load float, ptr %710, align 4, !tbaa !67
  %1555 = call float @llvm.fmuladd.f32(float %1545, float %1554, float %1553)
  %1556 = fcmp ole float %1555, 0.000000e+00
  %1557 = fcmp olt float %1533, 0.000000e+00
  %1558 = or i1 %1557, %1556
  br i1 %1558, label %1732, label %1559

1559:                                             ; preds = %1536
  %1560 = fcmp ugt float %1555, -1.000000e+00
  br i1 %1560, label %1561, label %1565

1561:                                             ; preds = %1559
  %1562 = fcmp ult float %1555, 1.000000e+00
  br i1 %1562, label %1563, label %1565

1563:                                             ; preds = %1561
  %1564 = call float @acosf(float noundef %1555) #12
  br label %1565

1565:                                             ; preds = %1563, %1561, %1559
  %1566 = phi float [ %1564, %1563 ], [ 0x400921FB60000000, %1559 ], [ 0.000000e+00, %1561 ]
  %1567 = fcmp ult float %1549, 1.000000e+00
  br i1 %1567, label %1568, label %1570

1568:                                             ; preds = %1565
  %1569 = call float @acosf(float noundef %1549) #12
  br label %1570

1570:                                             ; preds = %1568, %1565
  %1571 = phi float [ %1569, %1568 ], [ 0.000000e+00, %1565 ]
  %1572 = load float, ptr %9, align 4, !tbaa !67
  %1573 = load float, ptr %1127, align 4, !tbaa !67
  %1574 = fneg float %1555
  %1575 = call float @llvm.fmuladd.f32(float %1574, float %1573, float %1572)
  %1576 = load float, ptr %709, align 4, !tbaa !67
  %1577 = load float, ptr %1130, align 4, !tbaa !67
  %1578 = call float @llvm.fmuladd.f32(float %1574, float %1577, float %1576)
  %1579 = load float, ptr %710, align 4, !tbaa !67
  %1580 = load float, ptr %1135, align 4, !tbaa !67
  %1581 = call float @llvm.fmuladd.f32(float %1574, float %1580, float %1579)
  %1582 = fmul float %1578, %1578
  %1583 = call float @llvm.fmuladd.f32(float %1575, float %1575, float %1582)
  %1584 = call float @llvm.fmuladd.f32(float %1581, float %1581, float %1583)
  %1585 = fcmp ogt float %1584, 0x38AA95A5C0000000
  br i1 %1585, label %1586, label %1592

1586:                                             ; preds = %1570
  %1587 = call float @sqrtf(float noundef %1584) #12
  %1588 = fdiv float 1.000000e+00, %1587
  %1589 = fmul float %1575, %1588
  %1590 = fmul float %1578, %1588
  %1591 = fmul float %1581, %1588
  br label %1592

1592:                                             ; preds = %1586, %1570
  %1593 = phi float [ %1590, %1586 ], [ 0.000000e+00, %1570 ]
  %1594 = phi float [ %1589, %1586 ], [ 0.000000e+00, %1570 ]
  %1595 = phi float [ %1591, %1586 ], [ 0.000000e+00, %1570 ]
  %1596 = load float, ptr %658, align 4, !tbaa !67
  %1597 = load float, ptr %1127, align 4, !tbaa !67
  %1598 = fneg float %1549
  %1599 = call float @llvm.fmuladd.f32(float %1598, float %1597, float %1596)
  %1600 = load float, ptr %718, align 4, !tbaa !67
  %1601 = load float, ptr %1130, align 4, !tbaa !67
  %1602 = call float @llvm.fmuladd.f32(float %1598, float %1601, float %1600)
  %1603 = load float, ptr %719, align 4, !tbaa !67
  %1604 = load float, ptr %1135, align 4, !tbaa !67
  %1605 = call float @llvm.fmuladd.f32(float %1598, float %1604, float %1603)
  %1606 = fmul float %1602, %1602
  %1607 = call float @llvm.fmuladd.f32(float %1599, float %1599, float %1606)
  %1608 = call float @llvm.fmuladd.f32(float %1605, float %1605, float %1607)
  %1609 = fcmp ogt float %1608, 0x38AA95A5C0000000
  br i1 %1609, label %1610, label %1616

1610:                                             ; preds = %1592
  %1611 = call float @sqrtf(float noundef %1608) #12
  %1612 = fdiv float 1.000000e+00, %1611
  %1613 = fmul float %1599, %1612
  %1614 = fmul float %1602, %1612
  %1615 = fmul float %1605, %1612
  br label %1616

1616:                                             ; preds = %1610, %1592
  %1617 = phi float [ %1614, %1610 ], [ 0.000000e+00, %1592 ]
  %1618 = phi float [ %1613, %1610 ], [ 0.000000e+00, %1592 ]
  %1619 = phi float [ %1615, %1610 ], [ 0.000000e+00, %1592 ]
  %1620 = fmul float %1593, %1617
  %1621 = call float @llvm.fmuladd.f32(float %1594, float %1618, float %1620)
  %1622 = call float @llvm.fmuladd.f32(float %1595, float %1619, float %1621)
  %1623 = fcmp olt float %1622, 0.000000e+00
  %1624 = select i1 %1623, float 0.000000e+00, float %1622
  %1625 = fcmp ogt float %1566, %1571
  %1626 = select i1 %1625, float %1571, float %1566
  %1627 = select i1 %1625, float %1566, float %1571
  %1628 = fmul float %1538, %1538
  %1629 = call float @llvm.fmuladd.f32(float %1538, float %1538, float 0x3FD51EB860000000)
  %1630 = fdiv float %1628, %1629
  %1631 = call float @llvm.fmuladd.f32(float %1630, float -5.000000e-01, float 1.000000e+00)
  %1632 = call float @llvm.fmuladd.f32(float %1538, float %1538, float 0x3FB70A3D80000000)
  %1633 = fdiv float %1628, %1632
  %1634 = fmul float %1633, 0x3FDCCCCCC0000000
  %1635 = fmul float %1626, 0x3FEE666660000000
  %1636 = fmul float %1634, %1624
  %1637 = call float @sinf(float noundef %1627) #12
  %1638 = fmul float %1637, %1636
  %1639 = call float @tanf(float noundef %1635) #12
  %1640 = call float @llvm.fmuladd.f32(float %1638, float %1639, float %1631)
  %1641 = fmul float %1533, %1640
  br label %1732

1642:                                             ; preds = %1532
  %1643 = getelementptr inbounds %struct.Material, ptr %827, i64 0, i32 87
  %1644 = load float, ptr %1643, align 4, !tbaa !67
  %1645 = getelementptr inbounds %struct.Material, ptr %827, i64 0, i32 87, i64 1
  %1646 = load float, ptr %1645, align 4, !tbaa !67
  %1647 = load float, ptr %1127, align 4, !tbaa !67
  %1648 = load float, ptr %9, align 4, !tbaa !67
  %1649 = load float, ptr %1130, align 4, !tbaa !67
  %1650 = load float, ptr %709, align 4, !tbaa !67
  %1651 = fmul float %1649, %1650
  %1652 = call float @llvm.fmuladd.f32(float %1647, float %1648, float %1651)
  %1653 = load float, ptr %1135, align 4, !tbaa !67
  %1654 = load float, ptr %710, align 4, !tbaa !67
  %1655 = call float @llvm.fmuladd.f32(float %1653, float %1654, float %1652)
  %1656 = fcmp ugt float %1655, -1.000000e+00
  br i1 %1656, label %1657, label %1661

1657:                                             ; preds = %1642
  %1658 = fcmp ult float %1655, 1.000000e+00
  br i1 %1658, label %1659, label %1661

1659:                                             ; preds = %1657
  %1660 = call float @acosf(float noundef %1655) #12
  br label %1661

1661:                                             ; preds = %1659, %1657, %1642
  %1662 = phi float [ %1660, %1659 ], [ 0x400921FB60000000, %1642 ], [ 0.000000e+00, %1657 ]
  %1663 = fcmp olt float %1662, %1644
  br i1 %1663, label %1732, label %1664

1664:                                             ; preds = %1661
  %1665 = fadd float %1644, %1646
  %1666 = fcmp oge float %1662, %1665
  %1667 = fcmp oeq float %1646, 0.000000e+00
  %1668 = or i1 %1667, %1666
  br i1 %1668, label %1732, label %1669

1669:                                             ; preds = %1664
  %1670 = fsub float %1662, %1644
  %1671 = fdiv float %1670, %1646
  %1672 = fsub float 1.000000e+00, %1671
  br label %1732

1673:                                             ; preds = %1532
  %1674 = getelementptr inbounds %struct.Material, ptr %827, i64 0, i32 89
  %1675 = load float, ptr %1674, align 8, !tbaa !165
  %1676 = fcmp ugt float %1533, 0.000000e+00
  br i1 %1676, label %1677, label %1732

1677:                                             ; preds = %1673
  %1678 = load float, ptr %1127, align 4, !tbaa !67
  %1679 = load float, ptr %658, align 4, !tbaa !67
  %1680 = load float, ptr %1130, align 4, !tbaa !67
  %1681 = load float, ptr %716, align 4, !tbaa !67
  %1682 = fmul float %1680, %1681
  %1683 = call float @llvm.fmuladd.f32(float %1678, float %1679, float %1682)
  %1684 = load float, ptr %1135, align 4, !tbaa !67
  %1685 = load float, ptr %717, align 4, !tbaa !67
  %1686 = call float @llvm.fmuladd.f32(float %1684, float %1685, float %1683)
  %1687 = fcmp olt float %1686, 0.000000e+00
  %1688 = select i1 %1687, float 0.000000e+00, float %1686
  %1689 = fcmp ugt float %1675, 1.000000e+00
  %1690 = fpext float %1533 to double
  br i1 %1689, label %1695, label %1691

1691:                                             ; preds = %1677
  %1692 = fmul float %1533, %1688
  %1693 = fcmp ogt float %1692, 0x3FB99999A0000000
  %1694 = select i1 %1693, float %1692, float 0x3FB99999A0000000
  br label %1697

1695:                                             ; preds = %1677
  %1696 = fsub float 0x3FF00418A0000000, %1688
  br label %1697

1697:                                             ; preds = %1695, %1691
  %1698 = phi float [ %1696, %1695 ], [ %1694, %1691 ]
  %1699 = fpext float %1698 to double
  %1700 = fadd float %1675, -1.000000e+00
  %1701 = fpext float %1700 to double
  %1702 = call double @pow(double noundef %1699, double noundef %1701) #12
  %1703 = fmul double %1702, %1690
  %1704 = fptrunc double %1703 to float
  br label %1732

1705:                                             ; preds = %1532
  %1706 = getelementptr inbounds %struct.Material, ptr %827, i64 0, i32 87, i64 1
  %1707 = load float, ptr %1706, align 4, !tbaa !67
  %1708 = fcmp oeq float %1707, 0.000000e+00
  br i1 %1708, label %1732, label %1709

1709:                                             ; preds = %1705
  %1710 = getelementptr inbounds %struct.Material, ptr %827, i64 0, i32 87
  %1711 = load float, ptr %1710, align 4, !tbaa !67
  %1712 = load float, ptr %9, align 4, !tbaa !67
  %1713 = load float, ptr %1127, align 4, !tbaa !67
  %1714 = load float, ptr %709, align 4, !tbaa !67
  %1715 = load float, ptr %1130, align 4, !tbaa !67
  %1716 = fmul float %1714, %1715
  %1717 = call float @llvm.fmuladd.f32(float %1712, float %1713, float %1716)
  %1718 = load float, ptr %710, align 4, !tbaa !67
  %1719 = load float, ptr %1135, align 4, !tbaa !67
  %1720 = call float @llvm.fmuladd.f32(float %1718, float %1719, float %1717)
  %1721 = fcmp ogt float %1720, 0.000000e+00
  %1722 = fneg float %1720
  %1723 = select i1 %1721, float %1720, float %1722
  %1724 = fadd float %1723, 1.000000e+00
  %1725 = fsub float 1.000000e+00, %1711
  %1726 = call float @powf(float noundef %1724, float noundef %1707) #12
  %1727 = call float @llvm.fmuladd.f32(float %1725, float %1726, float %1711)
  %1728 = fcmp olt float %1727, 0.000000e+00
  br i1 %1728, label %1732, label %1729

1729:                                             ; preds = %1709
  %1730 = fcmp ogt float %1727, 1.000000e+00
  %1731 = select i1 %1730, float 1.000000e+00, float %1727
  br label %1732

1732:                                             ; preds = %1697, %1673, %1669, %1664, %1661, %1616, %1536, %1729, %1709, %1705, %1532, %1200, %1193
  %1733 = phi float [ %1138, %1200 ], [ %1138, %1193 ], [ %1533, %1532 ], [ %1533, %1705 ], [ %1533, %1709 ], [ %1533, %1729 ], [ %1533, %1536 ], [ %1533, %1616 ], [ %1533, %1661 ], [ %1533, %1664 ], [ %1533, %1669 ], [ %1533, %1673 ], [ %1533, %1697 ]
  %1734 = phi float [ %1201, %1200 ], [ 0.000000e+00, %1193 ], [ %1533, %1532 ], [ 1.000000e+00, %1705 ], [ 0.000000e+00, %1709 ], [ %1731, %1729 ], [ 0.000000e+00, %1536 ], [ %1641, %1616 ], [ 1.000000e+00, %1661 ], [ 0.000000e+00, %1664 ], [ %1672, %1669 ], [ 0.000000e+00, %1673 ], [ %1704, %1697 ]
  %1735 = getelementptr inbounds %struct.Material, ptr %827, i64 0, i32 50
  %1736 = load i16, ptr %1735, align 2, !tbaa !113
  %1737 = and i16 %1736, 1
  %1738 = icmp ne i16 %1737, 0
  %1739 = fcmp ogt float %1734, 0.000000e+00
  %1740 = select i1 %1738, i1 %1739, i1 false
  %1741 = fcmp olt float %1734, 1.000000e+00
  %1742 = select i1 %1740, i1 %1741, i1 false
  br i1 %1742, label %1743, label %1749

1743:                                             ; preds = %1732
  %1744 = fmul float %1734, 3.000000e+00
  %1745 = fmul float %1734, -2.000000e+00
  %1746 = fmul float %1734, %1745
  %1747 = fmul float %1734, %1746
  %1748 = call float @llvm.fmuladd.f32(float %1744, float %1734, float %1747)
  br label %1749

1749:                                             ; preds = %1743, %1732
  %1750 = phi float [ %1748, %1743 ], [ %1734, %1732 ]
  %1751 = fmul float %1194, %1750
  %1752 = fcmp ogt float %1751, 0.000000e+00
  br i1 %1752, label %1753, label %1757

1753:                                             ; preds = %1749
  %1754 = load float, ptr %720, align 4, !tbaa !121
  %1755 = fmul float %858, %1754
  %1756 = fmul float %1751, %1755
  br label %1757

1757:                                             ; preds = %1753, %1749
  %1758 = phi float [ %1756, %1753 ], [ %1751, %1749 ]
  %1759 = getelementptr inbounds %struct.Material, ptr %827, i64 0, i32 51
  %1760 = load i32, ptr %1759, align 4, !tbaa !102
  %1761 = and i32 %1760, 67108864
  %1762 = icmp eq i32 %1761, 0
  %1763 = select i1 %1762, ptr %657, ptr %721
  store float 1.000000e+00, ptr %722, align 4, !tbaa !67
  store float 1.000000e+00, ptr %723, align 8, !tbaa !67
  store float 1.000000e+00, ptr %724, align 4, !tbaa !67
  store float 1.000000e+00, ptr %12, align 16, !tbaa !67
  %1764 = fcmp ogt float %858, 0.000000e+00
  br i1 %1764, label %1765, label %2558

1765:                                             ; preds = %1757
  %1766 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !83
  %1767 = and i32 %1766, 2
  %1768 = icmp eq i32 %1767, 0
  %1769 = and i32 %1760, 2
  %1770 = icmp eq i32 %1769, 0
  %1771 = select i1 %1768, i1 true, i1 %1770
  br i1 %1771, label %1843, label %1772

1772:                                             ; preds = %1765
  %1773 = getelementptr inbounds %struct.LampRen, ptr %801, i64 0, i32 57
  %1774 = load ptr, ptr %1773, align 8, !tbaa !88
  %1775 = icmp eq ptr %1774, null
  br i1 %1775, label %1776, label %1780

1776:                                             ; preds = %1772
  %1777 = load i32, ptr %808, align 4, !tbaa !74
  %1778 = and i32 %1777, 8192
  %1779 = icmp eq i32 %1778, 0
  br i1 %1779, label %1843, label %1780

1780:                                             ; preds = %1776, %1772
  %1781 = icmp eq ptr %1763, %14
  br i1 %1781, label %1782, label %1792

1782:                                             ; preds = %1780
  %1783 = load float, ptr %657, align 4, !tbaa !67
  %1784 = load float, ptr %9, align 4, !tbaa !67
  %1785 = load float, ptr %725, align 4, !tbaa !67
  %1786 = load float, ptr %709, align 4, !tbaa !67
  %1787 = fmul float %1785, %1786
  %1788 = call float @llvm.fmuladd.f32(float %1783, float %1784, float %1787)
  %1789 = load float, ptr %726, align 4, !tbaa !67
  %1790 = load float, ptr %710, align 4, !tbaa !67
  %1791 = call float @llvm.fmuladd.f32(float %1789, float %1790, float %1788)
  br label %1792

1792:                                             ; preds = %1780, %1782
  %1793 = phi float [ %1791, %1782 ], [ %1733, %1780 ]
  %1794 = load i32, ptr %797, align 8, !tbaa !129
  call void @lamp_get_shadow(ptr noundef %801, ptr noundef nonnull %0, float noundef %1793, ptr noundef nonnull %12, i32 noundef %1794)
  %1795 = load i32, ptr %808, align 4, !tbaa !74
  %1796 = and i32 %1795, 32
  %1797 = icmp ne i32 %1796, 0
  %1798 = fcmp ogt float %1758, 0.000000e+00
  %1799 = select i1 %1797, i1 %1798, i1 false
  br i1 %1799, label %1800, label %1840

1800:                                             ; preds = %1792
  %1801 = load float, ptr %829, align 4, !tbaa !139
  %1802 = fmul float %1758, %1801
  %1803 = load float, ptr %722, align 4, !tbaa !67
  %1804 = fsub float 1.000000e+00, %1803
  %1805 = fmul float %1802, %1804
  store float %1805, ptr %722, align 4, !tbaa !67
  %1806 = load float, ptr %728, align 4, !tbaa !103
  %1807 = load float, ptr %13, align 4, !tbaa !67
  %1808 = fsub float 1.000000e+00, %1807
  %1809 = load float, ptr %729, align 4, !tbaa !67
  %1810 = fneg float %1805
  %1811 = fmul float %1806, %1810
  %1812 = call float @llvm.fmuladd.f32(float %1811, float %1808, float %1809)
  store float %1812, ptr %729, align 4, !tbaa !67
  %1813 = load float, ptr %730, align 8, !tbaa !104
  %1814 = load float, ptr %679, align 4, !tbaa !67
  %1815 = fsub float 1.000000e+00, %1814
  %1816 = load float, ptr %731, align 4, !tbaa !67
  %1817 = fmul float %1813, %1810
  %1818 = call float @llvm.fmuladd.f32(float %1817, float %1815, float %1816)
  store float %1818, ptr %731, align 4, !tbaa !67
  %1819 = load float, ptr %732, align 4, !tbaa !105
  %1820 = load float, ptr %680, align 4, !tbaa !67
  %1821 = fsub float 1.000000e+00, %1820
  %1822 = load float, ptr %733, align 4, !tbaa !67
  %1823 = fmul float %1819, %1810
  %1824 = call float @llvm.fmuladd.f32(float %1823, float %1821, float %1822)
  store float %1824, ptr %733, align 4, !tbaa !67
  %1825 = and i32 %1795, 4096
  %1826 = icmp eq i32 %1825, 0
  br i1 %1826, label %1827, label %2558

1827:                                             ; preds = %1800
  %1828 = load float, ptr %734, align 8, !tbaa !166
  %1829 = load float, ptr %735, align 4, !tbaa !67
  %1830 = fmul float %1828, %1810
  %1831 = call float @llvm.fmuladd.f32(float %1830, float %1808, float %1829)
  store float %1831, ptr %735, align 4, !tbaa !67
  %1832 = load float, ptr %736, align 4, !tbaa !167
  %1833 = load float, ptr %737, align 4, !tbaa !67
  %1834 = fmul float %1832, %1810
  %1835 = call float @llvm.fmuladd.f32(float %1834, float %1815, float %1833)
  store float %1835, ptr %737, align 4, !tbaa !67
  %1836 = load float, ptr %738, align 8, !tbaa !168
  %1837 = load float, ptr %739, align 4, !tbaa !67
  %1838 = fmul float %1836, %1810
  %1839 = call float @llvm.fmuladd.f32(float %1838, float %1821, float %1837)
  store float %1839, ptr %739, align 4, !tbaa !67
  br label %2558

1840:                                             ; preds = %1792
  %1841 = load float, ptr %722, align 4, !tbaa !67
  %1842 = fmul float %1758, %1841
  store float %1841, ptr %727, align 4, !tbaa !67
  br label %1843

1843:                                             ; preds = %1840, %1776, %1765
  %1844 = phi float [ %1842, %1840 ], [ %1758, %1776 ], [ %1758, %1765 ]
  %1845 = load i32, ptr %808, align 4, !tbaa !74
  %1846 = and i32 %1845, 2048
  %1847 = icmp eq i32 %1846, 0
  br i1 %1847, label %1848, label %1915

1848:                                             ; preds = %1843
  %1849 = fcmp ogt float %1844, 0.000000e+00
  br i1 %1849, label %1850, label %1874

1850:                                             ; preds = %1848
  %1851 = load i32, ptr %1759, align 4, !tbaa !102
  %1852 = and i32 %1851, 524288
  %1853 = icmp eq i32 %1852, 0
  br i1 %1853, label %1867, label %1854

1854:                                             ; preds = %1850
  %1855 = load float, ptr %12, align 16, !tbaa !67
  %1856 = fmul float %1844, %1855
  %1857 = load float, ptr %11, align 4, !tbaa !67
  %1858 = fmul float %1856, %1857
  %1859 = load float, ptr %724, align 4, !tbaa !67
  %1860 = fmul float %1844, %1859
  %1861 = load float, ptr %677, align 4, !tbaa !67
  %1862 = fmul float %1860, %1861
  %1863 = load float, ptr %723, align 8, !tbaa !67
  %1864 = fmul float %1844, %1863
  %1865 = load float, ptr %678, align 4, !tbaa !67
  %1866 = fmul float %1864, %1865
  call fastcc void @add_to_diffuse(ptr noundef nonnull %740, ptr noundef nonnull %0, float noundef %1750, float noundef %1858, float noundef %1862, float noundef %1866)
  br label %1874

1867:                                             ; preds = %1850
  %1868 = load float, ptr %11, align 4, !tbaa !67
  %1869 = fmul float %1844, %1868
  %1870 = load float, ptr %677, align 4, !tbaa !67
  %1871 = fmul float %1844, %1870
  %1872 = load float, ptr %678, align 4, !tbaa !67
  %1873 = fmul float %1844, %1872
  call fastcc void @add_to_diffuse(ptr noundef nonnull %741, ptr noundef nonnull %0, float noundef %1750, float noundef %1869, float noundef %1871, float noundef %1873)
  br label %1874

1874:                                             ; preds = %1867, %1854, %1848
  %1875 = fcmp ogt float %1758, %1844
  br i1 %1875, label %1876, label %1896

1876:                                             ; preds = %1874
  %1877 = load float, ptr %13, align 4, !tbaa !67
  %1878 = fcmp oeq float %1877, 0.000000e+00
  %1879 = load float, ptr %679, align 4
  %1880 = fcmp oeq float %1879, 0.000000e+00
  %1881 = select i1 %1878, i1 %1880, i1 false
  %1882 = load float, ptr %680, align 4
  %1883 = fcmp oeq float %1882, 0.000000e+00
  %1884 = select i1 %1881, i1 %1883, i1 false
  br i1 %1884, label %1896, label %1885

1885:                                             ; preds = %1876
  %1886 = fsub float %1758, %1844
  %1887 = fmul float %1886, %1877
  %1888 = load float, ptr %11, align 4, !tbaa !67
  %1889 = fmul float %1887, %1888
  %1890 = fmul float %1886, %1879
  %1891 = load float, ptr %677, align 4, !tbaa !67
  %1892 = fmul float %1890, %1891
  %1893 = fmul float %1886, %1882
  %1894 = load float, ptr %678, align 4, !tbaa !67
  %1895 = fmul float %1893, %1894
  call fastcc void @add_to_diffuse(ptr noundef nonnull %742, ptr noundef nonnull %0, float noundef %1750, float noundef %1889, float noundef %1892, float noundef %1895)
  br label %1896

1896:                                             ; preds = %1885, %1876, %1874
  %1897 = fcmp ogt float %1758, 0.000000e+00
  br i1 %1897, label %1898, label %1915

1898:                                             ; preds = %1896
  br i1 %744, label %1899, label %1904

1899:                                             ; preds = %1898
  br i1 %541, label %1911, label %1900

1900:                                             ; preds = %1899
  %1901 = load i32, ptr %745, align 4, !tbaa !146
  %1902 = and i32 %1901, 32
  %1903 = icmp eq i32 %1902, 0
  br i1 %1903, label %1904, label %1911

1904:                                             ; preds = %1900, %1898
  %1905 = load float, ptr %11, align 4, !tbaa !67
  %1906 = fmul float %1758, %1905
  %1907 = load float, ptr %677, align 4, !tbaa !67
  %1908 = fmul float %1758, %1907
  %1909 = load float, ptr %678, align 4, !tbaa !67
  %1910 = fmul float %1758, %1909
  call fastcc void @add_to_diffuse(ptr noundef nonnull %746, ptr noundef nonnull %0, float noundef %1750, float noundef %1906, float noundef %1908, float noundef %1910)
  br label %1915

1911:                                             ; preds = %1900, %1899
  %1912 = load float, ptr %748, align 4, !tbaa !67
  store float %1912, ptr %747, align 4, !tbaa !67
  %1913 = load float, ptr %749, align 4, !tbaa !67
  store float %1913, ptr %750, align 4, !tbaa !67
  %1914 = load float, ptr %751, align 4, !tbaa !67
  store float %1914, ptr %752, align 4, !tbaa !67
  br label %1915

1915:                                             ; preds = %1911, %1904, %1896, %1843
  %1916 = load float, ptr %722, align 4, !tbaa !67
  %1917 = fmul float %1194, %1916
  store float %1917, ptr %722, align 4, !tbaa !67
  %1918 = fcmp ogt float %1917, 0.000000e+00
  br i1 %1918, label %1919, label %2558

1919:                                             ; preds = %1915
  %1920 = load float, ptr %753, align 8, !tbaa !169
  %1921 = fcmp une float %1920, 0.000000e+00
  br i1 %1921, label %1922, label %2558

1922:                                             ; preds = %1919
  %1923 = load i32, ptr %808, align 4, !tbaa !74
  %1924 = and i32 %1923, 4128
  %1925 = icmp ne i32 %1924, 0
  %1926 = or i1 %755, %1925
  br i1 %1926, label %2558, label %1927

1927:                                             ; preds = %1922
  %1928 = load i16, ptr %804, align 8, !tbaa !72
  %1929 = icmp eq i16 %1928, 3
  br i1 %1929, label %1930, label %1991

1930:                                             ; preds = %1927
  %1931 = load float, ptr %658, align 4, !tbaa !67
  %1932 = load float, ptr %9, align 4, !tbaa !67
  %1933 = fadd float %1931, %1932
  store float %1933, ptr %9, align 4, !tbaa !67
  %1934 = load float, ptr %788, align 4, !tbaa !67
  %1935 = load float, ptr %709, align 4, !tbaa !67
  %1936 = fadd float %1934, %1935
  store float %1936, ptr %709, align 4, !tbaa !67
  %1937 = load float, ptr %789, align 4, !tbaa !67
  %1938 = load float, ptr %710, align 4, !tbaa !67
  %1939 = fadd float %1937, %1938
  store float %1939, ptr %710, align 4, !tbaa !67
  %1940 = fmul float %1936, %1936
  %1941 = call float @llvm.fmuladd.f32(float %1933, float %1933, float %1940)
  %1942 = call float @llvm.fmuladd.f32(float %1939, float %1939, float %1941)
  %1943 = fcmp ogt float %1942, 0x38AA95A5C0000000
  br i1 %1943, label %1944, label %1953

1944:                                             ; preds = %1930
  %1945 = call float @sqrtf(float noundef %1942) #12
  %1946 = fdiv float 1.000000e+00, %1945
  %1947 = load float, ptr %9, align 4, !tbaa !67
  %1948 = fmul float %1947, %1946
  store float %1948, ptr %9, align 4, !tbaa !67
  %1949 = load float, ptr %709, align 4, !tbaa !67
  %1950 = fmul float %1946, %1949
  store float %1950, ptr %709, align 4, !tbaa !67
  %1951 = load float, ptr %710, align 4, !tbaa !67
  %1952 = fmul float %1946, %1951
  br label %1954

1953:                                             ; preds = %1930
  store float 0.000000e+00, ptr %9, align 4, !tbaa !67
  store float 0.000000e+00, ptr %709, align 4, !tbaa !67
  br label %1954

1954:                                             ; preds = %1953, %1944
  %1955 = phi float [ 0.000000e+00, %1953 ], [ %1952, %1944 ]
  store float %1955, ptr %710, align 4, !tbaa !67
  %1956 = load float, ptr %1763, align 4, !tbaa !67
  %1957 = load float, ptr %9, align 4, !tbaa !67
  %1958 = getelementptr inbounds float, ptr %1763, i64 1
  %1959 = load float, ptr %1958, align 4, !tbaa !67
  %1960 = load float, ptr %709, align 4, !tbaa !67
  %1961 = fmul float %1959, %1960
  %1962 = call float @llvm.fmuladd.f32(float %1956, float %1957, float %1961)
  %1963 = getelementptr inbounds float, ptr %1763, i64 2
  %1964 = load float, ptr %1963, align 4, !tbaa !67
  %1965 = call float @llvm.fmuladd.f32(float %1964, float %1955, float %1962)
  %1966 = load i16, ptr %804, align 8, !tbaa !72
  %1967 = icmp eq i16 %1966, 3
  %1968 = call float @llvm.fmuladd.f32(float %1965, float 5.000000e-01, float 5.000000e-01)
  %1969 = select i1 %1967, float %1968, float %1965
  %1970 = load float, ptr %722, align 4, !tbaa !67
  %1971 = load float, ptr %753, align 8, !tbaa !169
  %1972 = fmul float %1970, %1971
  %1973 = load i32, ptr %790, align 8, !tbaa !170
  %1974 = call fastcc float @spec(float noundef %1969, i32 noundef %1973)
  %1975 = fmul float %1972, %1974
  %1976 = load float, ptr %11, align 4, !tbaa !67
  %1977 = load float, ptr %791, align 8, !tbaa !166
  %1978 = fmul float %1976, %1977
  %1979 = load float, ptr %792, align 4, !tbaa !67
  %1980 = call float @llvm.fmuladd.f32(float %1975, float %1978, float %1979)
  store float %1980, ptr %792, align 4, !tbaa !67
  %1981 = load float, ptr %677, align 4, !tbaa !67
  %1982 = load float, ptr %793, align 4, !tbaa !167
  %1983 = fmul float %1981, %1982
  %1984 = load float, ptr %794, align 4, !tbaa !67
  %1985 = call float @llvm.fmuladd.f32(float %1975, float %1983, float %1984)
  store float %1985, ptr %794, align 4, !tbaa !67
  %1986 = load float, ptr %678, align 4, !tbaa !67
  %1987 = load float, ptr %795, align 8, !tbaa !168
  %1988 = fmul float %1986, %1987
  %1989 = load float, ptr %796, align 4, !tbaa !67
  %1990 = call float @llvm.fmuladd.f32(float %1975, float %1988, float %1989)
  store float %1990, ptr %796, align 4, !tbaa !67
  br label %2558

1991:                                             ; preds = %1927
  %1992 = getelementptr inbounds %struct.Material, ptr %827, i64 0, i32 84
  %1993 = load i16, ptr %1992, align 2, !tbaa !171
  switch i16 %1993, label %2406 [
    i16 1, label %1994
    i16 0, label %2048
    i16 2, label %2124
    i16 4, label %2293
  ]

1994:                                             ; preds = %1991
  %1995 = load i32, ptr %764, align 8, !tbaa !170
  %1996 = load i8, ptr %937, align 1, !tbaa !98
  %1997 = and i8 %1996, 64
  %1998 = icmp eq i8 %1997, 0
  br i1 %1998, label %1999, label %2003

1999:                                             ; preds = %1994
  %2000 = load i32, ptr %1759, align 4, !tbaa !102
  %2001 = lshr i32 %2000, 26
  %2002 = and i32 %2001, 1
  br label %2003

2003:                                             ; preds = %1999, %1994
  %2004 = phi i32 [ 1, %1994 ], [ %2002, %1999 ]
  %2005 = load float, ptr %9, align 4, !tbaa !67
  %2006 = load float, ptr %658, align 4, !tbaa !67
  %2007 = fadd float %2005, %2006
  %2008 = load float, ptr %709, align 4, !tbaa !67
  %2009 = load float, ptr %765, align 4, !tbaa !67
  %2010 = fadd float %2008, %2009
  %2011 = load float, ptr %710, align 4, !tbaa !67
  %2012 = load float, ptr %766, align 4, !tbaa !67
  %2013 = fadd float %2011, %2012
  %2014 = fmul float %2010, %2010
  %2015 = call float @llvm.fmuladd.f32(float %2007, float %2007, float %2014)
  %2016 = call float @llvm.fmuladd.f32(float %2013, float %2013, float %2015)
  %2017 = fcmp ogt float %2016, 0x38AA95A5C0000000
  br i1 %2017, label %2018, label %2024

2018:                                             ; preds = %2003
  %2019 = call float @sqrtf(float noundef %2016) #12
  %2020 = fdiv float 1.000000e+00, %2019
  %2021 = fmul float %2007, %2020
  %2022 = fmul float %2010, %2020
  %2023 = fmul float %2013, %2020
  br label %2024

2024:                                             ; preds = %2018, %2003
  %2025 = phi float [ %2022, %2018 ], [ 0.000000e+00, %2003 ]
  %2026 = phi float [ %2021, %2018 ], [ 0.000000e+00, %2003 ]
  %2027 = phi float [ %2023, %2018 ], [ 0.000000e+00, %2003 ]
  %2028 = load float, ptr %1763, align 4, !tbaa !67
  %2029 = getelementptr inbounds float, ptr %1763, i64 1
  %2030 = load float, ptr %2029, align 4, !tbaa !67
  %2031 = fmul float %2025, %2030
  %2032 = call float @llvm.fmuladd.f32(float %2026, float %2028, float %2031)
  %2033 = getelementptr inbounds float, ptr %1763, i64 2
  %2034 = load float, ptr %2033, align 4, !tbaa !67
  %2035 = call float @llvm.fmuladd.f32(float %2027, float %2034, float %2032)
  %2036 = icmp eq i32 %2004, 0
  br i1 %2036, label %2043, label %2037

2037:                                             ; preds = %2024
  %2038 = fneg float %2035
  %2039 = call float @llvm.fmuladd.f32(float %2038, float %2035, float 1.000000e+00)
  %2040 = fcmp ugt float %2039, 0.000000e+00
  br i1 %2040, label %2041, label %2043

2041:                                             ; preds = %2037
  %2042 = call float @sqrtf(float noundef %2039) #12
  br label %2043

2043:                                             ; preds = %2041, %2037, %2024
  %2044 = phi float [ %2035, %2024 ], [ %2042, %2041 ], [ 0.000000e+00, %2037 ]
  %2045 = fcmp ogt float %2044, 0.000000e+00
  br i1 %2045, label %2046, label %2477

2046:                                             ; preds = %2043
  %2047 = call fastcc float @spec(float noundef %2044, i32 noundef %1995)
  br label %2477

2048:                                             ; preds = %1991
  %2049 = load i32, ptr %761, align 8, !tbaa !170
  %2050 = load i8, ptr %937, align 1, !tbaa !98
  %2051 = and i8 %2050, 64
  %2052 = icmp eq i8 %2051, 0
  br i1 %2052, label %2053, label %2057

2053:                                             ; preds = %2048
  %2054 = load i32, ptr %1759, align 4, !tbaa !102
  %2055 = lshr i32 %2054, 26
  %2056 = and i32 %2055, 1
  br label %2057

2057:                                             ; preds = %2053, %2048
  %2058 = phi i32 [ 1, %2048 ], [ %2056, %2053 ]
  %2059 = load float, ptr %658, align 4, !tbaa !67
  %2060 = load float, ptr %9, align 4, !tbaa !67
  %2061 = fadd float %2059, %2060
  %2062 = load float, ptr %762, align 4, !tbaa !67
  %2063 = load float, ptr %709, align 4, !tbaa !67
  %2064 = fadd float %2062, %2063
  %2065 = load float, ptr %763, align 4, !tbaa !67
  %2066 = load float, ptr %710, align 4, !tbaa !67
  %2067 = fadd float %2065, %2066
  %2068 = fmul float %2064, %2064
  %2069 = call float @llvm.fmuladd.f32(float %2061, float %2061, float %2068)
  %2070 = call float @llvm.fmuladd.f32(float %2067, float %2067, float %2069)
  %2071 = fcmp ogt float %2070, 0x38AA95A5C0000000
  br i1 %2071, label %2072, label %2078

2072:                                             ; preds = %2057
  %2073 = call float @sqrtf(float noundef %2070) #12
  %2074 = fdiv float 1.000000e+00, %2073
  %2075 = fmul float %2061, %2074
  %2076 = fmul float %2064, %2074
  %2077 = fmul float %2067, %2074
  br label %2078

2078:                                             ; preds = %2072, %2057
  %2079 = phi float [ %2076, %2072 ], [ 0.000000e+00, %2057 ]
  %2080 = phi float [ %2075, %2072 ], [ 0.000000e+00, %2057 ]
  %2081 = phi float [ %2077, %2072 ], [ 0.000000e+00, %2057 ]
  %2082 = load float, ptr %1763, align 4, !tbaa !67
  %2083 = getelementptr inbounds float, ptr %1763, i64 1
  %2084 = load float, ptr %2083, align 4, !tbaa !67
  %2085 = fmul float %2079, %2084
  %2086 = call float @llvm.fmuladd.f32(float %2082, float %2080, float %2085)
  %2087 = getelementptr inbounds float, ptr %1763, i64 2
  %2088 = load float, ptr %2087, align 4, !tbaa !67
  %2089 = call float @llvm.fmuladd.f32(float %2088, float %2081, float %2086)
  %2090 = icmp eq i32 %2058, 0
  br i1 %2090, label %2097, label %2091

2091:                                             ; preds = %2078
  %2092 = fneg float %2089
  %2093 = call float @llvm.fmuladd.f32(float %2092, float %2089, float 1.000000e+00)
  %2094 = fcmp ugt float %2093, 0.000000e+00
  br i1 %2094, label %2095, label %2099

2095:                                             ; preds = %2091
  %2096 = call float @sqrtf(float noundef %2093) #12
  br label %2099

2097:                                             ; preds = %2078
  %2098 = fcmp olt float %2089, 0.000000e+00
  br i1 %2098, label %2477, label %2099

2099:                                             ; preds = %2097, %2095, %2091
  %2100 = phi float [ %2089, %2097 ], [ %2096, %2095 ], [ 0.000000e+00, %2091 ]
  %2101 = load float, ptr %1763, align 4, !tbaa !67
  %2102 = load float, ptr %658, align 4, !tbaa !67
  %2103 = load float, ptr %2083, align 4, !tbaa !67
  %2104 = load float, ptr %762, align 4, !tbaa !67
  %2105 = fmul float %2103, %2104
  %2106 = call float @llvm.fmuladd.f32(float %2101, float %2102, float %2105)
  %2107 = load float, ptr %2087, align 4, !tbaa !67
  %2108 = load float, ptr %763, align 4, !tbaa !67
  %2109 = call float @llvm.fmuladd.f32(float %2107, float %2108, float %2106)
  br i1 %2090, label %2116, label %2110

2110:                                             ; preds = %2099
  %2111 = fneg float %2109
  %2112 = call float @llvm.fmuladd.f32(float %2111, float %2109, float 1.000000e+00)
  %2113 = fcmp ugt float %2112, 0.000000e+00
  br i1 %2113, label %2114, label %2119

2114:                                             ; preds = %2110
  %2115 = call float @sqrtf(float noundef %2112) #12
  br label %2119

2116:                                             ; preds = %2099
  %2117 = fcmp olt float %2109, 0.000000e+00
  br i1 %2117, label %2118, label %2119

2118:                                             ; preds = %2116
  br label %2119

2119:                                             ; preds = %2118, %2116, %2114, %2110
  %2120 = phi float [ 0.000000e+00, %2118 ], [ %2109, %2116 ], [ %2115, %2114 ], [ 0.000000e+00, %2110 ]
  %2121 = call fastcc float @spec(float noundef %2100, i32 noundef %2049)
  %2122 = fadd float %2120, 0x3FB99999A0000000
  %2123 = fdiv float %2121, %2122
  br label %2477

2124:                                             ; preds = %1991
  %2125 = getelementptr inbounds %struct.Material, ptr %827, i64 0, i32 86
  %2126 = load float, ptr %2125, align 8, !tbaa !172
  %2127 = load i32, ptr %758, align 8, !tbaa !170
  %2128 = sitofp i32 %2127 to float
  %2129 = load i8, ptr %937, align 1, !tbaa !98
  %2130 = and i8 %2129, 64
  %2131 = icmp eq i8 %2130, 0
  br i1 %2131, label %2132, label %2136

2132:                                             ; preds = %2124
  %2133 = load i32, ptr %1759, align 4, !tbaa !102
  %2134 = lshr i32 %2133, 26
  %2135 = and i32 %2134, 1
  br label %2136

2136:                                             ; preds = %2132, %2124
  %2137 = phi i32 [ 1, %2124 ], [ %2135, %2132 ]
  %2138 = fcmp olt float %2126, 1.000000e+00
  %2139 = icmp eq i32 %2127, 0
  %2140 = or i1 %2138, %2139
  br i1 %2140, label %2477, label %2141

2141:                                             ; preds = %2136
  %2142 = icmp slt i32 %2127, 100
  br i1 %2142, label %2143, label %2146

2143:                                             ; preds = %2141
  %2144 = fdiv float 1.000000e+00, %2128
  %2145 = call float @sqrtf(float noundef %2144) #12
  br label %2148

2146:                                             ; preds = %2141
  %2147 = fdiv float 1.000000e+01, %2128
  br label %2148

2148:                                             ; preds = %2146, %2143
  %2149 = phi float [ %2145, %2143 ], [ %2147, %2146 ]
  %2150 = load float, ptr %658, align 4, !tbaa !67
  %2151 = load float, ptr %9, align 4, !tbaa !67
  %2152 = fadd float %2150, %2151
  %2153 = load float, ptr %759, align 4, !tbaa !67
  %2154 = load float, ptr %709, align 4, !tbaa !67
  %2155 = fadd float %2153, %2154
  %2156 = load float, ptr %760, align 4, !tbaa !67
  %2157 = load float, ptr %710, align 4, !tbaa !67
  %2158 = fadd float %2156, %2157
  %2159 = fmul float %2155, %2155
  %2160 = call float @llvm.fmuladd.f32(float %2152, float %2152, float %2159)
  %2161 = call float @llvm.fmuladd.f32(float %2158, float %2158, float %2160)
  %2162 = fcmp ogt float %2161, 0x38AA95A5C0000000
  br i1 %2162, label %2163, label %2169

2163:                                             ; preds = %2148
  %2164 = call float @sqrtf(float noundef %2161) #12
  %2165 = fdiv float 1.000000e+00, %2164
  %2166 = fmul float %2152, %2165
  %2167 = fmul float %2155, %2165
  %2168 = fmul float %2158, %2165
  br label %2169

2169:                                             ; preds = %2163, %2148
  %2170 = phi float [ %2167, %2163 ], [ 0.000000e+00, %2148 ]
  %2171 = phi float [ %2166, %2163 ], [ 0.000000e+00, %2148 ]
  %2172 = phi float [ %2168, %2163 ], [ 0.000000e+00, %2148 ]
  %2173 = load float, ptr %1763, align 4, !tbaa !67
  %2174 = getelementptr inbounds float, ptr %1763, i64 1
  %2175 = load float, ptr %2174, align 4, !tbaa !67
  %2176 = fmul float %2170, %2175
  %2177 = call float @llvm.fmuladd.f32(float %2173, float %2171, float %2176)
  %2178 = getelementptr inbounds float, ptr %1763, i64 2
  %2179 = load float, ptr %2178, align 4, !tbaa !67
  %2180 = call float @llvm.fmuladd.f32(float %2179, float %2172, float %2177)
  %2181 = icmp eq i32 %2137, 0
  br i1 %2181, label %2188, label %2182

2182:                                             ; preds = %2169
  %2183 = fneg float %2180
  %2184 = call float @llvm.fmuladd.f32(float %2183, float %2180, float 1.000000e+00)
  %2185 = fcmp ugt float %2184, 0.000000e+00
  br i1 %2185, label %2186, label %2190

2186:                                             ; preds = %2182
  %2187 = call float @sqrtf(float noundef %2184) #12
  br label %2190

2188:                                             ; preds = %2169
  %2189 = fcmp olt float %2180, 0.000000e+00
  br i1 %2189, label %2477, label %2190

2190:                                             ; preds = %2188, %2186, %2182
  %2191 = phi float [ %2180, %2188 ], [ %2187, %2186 ], [ 0.000000e+00, %2182 ]
  %2192 = load float, ptr %1763, align 4, !tbaa !67
  %2193 = load float, ptr %658, align 4, !tbaa !67
  %2194 = load float, ptr %2174, align 4, !tbaa !67
  %2195 = load float, ptr %759, align 4, !tbaa !67
  %2196 = fmul float %2194, %2195
  %2197 = call float @llvm.fmuladd.f32(float %2192, float %2193, float %2196)
  %2198 = load float, ptr %2178, align 4, !tbaa !67
  %2199 = load float, ptr %760, align 4, !tbaa !67
  %2200 = call float @llvm.fmuladd.f32(float %2198, float %2199, float %2197)
  br i1 %2181, label %2207, label %2201

2201:                                             ; preds = %2190
  %2202 = fneg float %2200
  %2203 = call float @llvm.fmuladd.f32(float %2202, float %2200, float 1.000000e+00)
  %2204 = fcmp ugt float %2203, 0.000000e+00
  br i1 %2204, label %2205, label %2207

2205:                                             ; preds = %2201
  %2206 = call float @sqrtf(float noundef %2203) #12
  br label %2207

2207:                                             ; preds = %2205, %2201, %2190
  %2208 = phi float [ %2200, %2190 ], [ %2206, %2205 ], [ 0.000000e+00, %2201 ]
  %2209 = fcmp ole float %2208, 0x3F847AE140000000
  %2210 = select i1 %2209, float 0x3F847AE140000000, float %2208
  %2211 = load float, ptr %1763, align 4, !tbaa !67
  %2212 = load float, ptr %9, align 4, !tbaa !67
  %2213 = load float, ptr %2174, align 4, !tbaa !67
  %2214 = load float, ptr %709, align 4, !tbaa !67
  %2215 = fmul float %2213, %2214
  %2216 = call float @llvm.fmuladd.f32(float %2211, float %2212, float %2215)
  %2217 = load float, ptr %2178, align 4, !tbaa !67
  %2218 = load float, ptr %710, align 4, !tbaa !67
  %2219 = call float @llvm.fmuladd.f32(float %2217, float %2218, float %2216)
  br i1 %2181, label %2226, label %2220

2220:                                             ; preds = %2207
  %2221 = fneg float %2219
  %2222 = call float @llvm.fmuladd.f32(float %2221, float %2219, float 1.000000e+00)
  %2223 = fcmp ugt float %2222, 0.000000e+00
  br i1 %2223, label %2224, label %2226

2224:                                             ; preds = %2220
  %2225 = call float @sqrtf(float noundef %2222) #12
  br label %2226

2226:                                             ; preds = %2224, %2220, %2207
  %2227 = phi float [ %2219, %2207 ], [ %2225, %2224 ], [ 0.000000e+00, %2220 ]
  %2228 = fcmp ugt float %2227, 0x3F847AE140000000
  br i1 %2228, label %2229, label %2477

2229:                                             ; preds = %2226
  %2230 = load float, ptr %658, align 4, !tbaa !67
  %2231 = load float, ptr %759, align 4, !tbaa !67
  %2232 = fmul float %2170, %2231
  %2233 = call float @llvm.fmuladd.f32(float %2230, float %2171, float %2232)
  %2234 = load float, ptr %760, align 4, !tbaa !67
  %2235 = call float @llvm.fmuladd.f32(float %2234, float %2172, float %2233)
  %2236 = fcmp ugt float %2235, 0.000000e+00
  %2237 = select i1 %2236, float %2235, float 0x3F847AE140000000
  %2238 = fmul float %2191, 2.000000e+00
  %2239 = fmul float %2238, %2210
  %2240 = fdiv float %2239, %2237
  %2241 = fmul float %2238, %2227
  %2242 = fdiv float %2241, %2237
  %2243 = fcmp ogt float %2240, 1.000000e+00
  %2244 = fcmp ogt float %2242, 1.000000e+00
  %2245 = and i1 %2243, %2244
  br i1 %2245, label %2255, label %2246

2246:                                             ; preds = %2229
  %2247 = fcmp olt float %2240, 1.000000e+00
  %2248 = fcmp olt float %2240, %2242
  %2249 = and i1 %2247, %2248
  br i1 %2249, label %2255, label %2250

2250:                                             ; preds = %2246
  %2251 = fcmp olt float %2242, 1.000000e+00
  %2252 = fcmp olt float %2242, %2240
  %2253 = and i1 %2251, %2252
  br i1 %2253, label %2254, label %2255

2254:                                             ; preds = %2250
  br label %2255

2255:                                             ; preds = %2254, %2250, %2246, %2229
  %2256 = phi float [ %2242, %2254 ], [ 0.000000e+00, %2250 ], [ 1.000000e+00, %2229 ], [ %2240, %2246 ]
  %2257 = fmul float %2237, %2237
  %2258 = call float @llvm.fmuladd.f32(float %2126, float %2126, float %2257)
  %2259 = fadd float %2258, -1.000000e+00
  %2260 = call float @sqrtf(float noundef %2259) #3
  %2261 = fsub float %2260, %2237
  %2262 = fmul float %2261, %2261
  %2263 = fadd float %2237, %2260
  %2264 = fmul float %2263, %2263
  %2265 = fdiv float %2262, %2264
  %2266 = call float @llvm.fmuladd.f32(float %2237, float %2263, float -1.000000e+00)
  %2267 = fmul float %2266, %2266
  %2268 = call float @llvm.fmuladd.f32(float %2237, float %2261, float 1.000000e+00)
  %2269 = fmul float %2268, %2268
  %2270 = fdiv float %2267, %2269
  %2271 = fadd float %2270, 1.000000e+00
  %2272 = fmul float %2265, %2271
  %2273 = fcmp ugt float %2191, -1.000000e+00
  br i1 %2273, label %2274, label %2278

2274:                                             ; preds = %2255
  %2275 = fcmp ult float %2191, 1.000000e+00
  br i1 %2275, label %2276, label %2278

2276:                                             ; preds = %2274
  %2277 = call float @acosf(float noundef %2191) #12
  br label %2278

2278:                                             ; preds = %2276, %2274, %2255
  %2279 = phi float [ %2277, %2276 ], [ 0x400921FB60000000, %2255 ], [ 0.000000e+00, %2274 ]
  %2280 = fmul float %2256, %2272
  %2281 = fpext float %2280 to double
  %2282 = fneg float %2279
  %2283 = fmul float %2279, %2282
  %2284 = fmul float %2149, 2.000000e+00
  %2285 = fmul float %2149, %2284
  %2286 = fdiv float %2283, %2285
  %2287 = fpext float %2286 to double
  %2288 = call double @exp(double noundef %2287) #12
  %2289 = fmul double %2288, %2281
  %2290 = fptrunc double %2289 to float
  %2291 = fcmp olt float %2290, 0.000000e+00
  %2292 = select i1 %2291, float 0.000000e+00, float %2290
  br label %2477

2293:                                             ; preds = %1991
  %2294 = getelementptr inbounds %struct.Material, ptr %827, i64 0, i32 88
  %2295 = load float, ptr %2294, align 4, !tbaa !173
  %2296 = load i8, ptr %937, align 1, !tbaa !98
  %2297 = and i8 %2296, 64
  %2298 = icmp eq i8 %2297, 0
  br i1 %2298, label %2299, label %2303

2299:                                             ; preds = %2293
  %2300 = load i32, ptr %1759, align 4, !tbaa !102
  %2301 = lshr i32 %2300, 26
  %2302 = and i32 %2301, 1
  br label %2303

2303:                                             ; preds = %2299, %2293
  %2304 = phi i32 [ 1, %2293 ], [ %2302, %2299 ]
  %2305 = load float, ptr %9, align 4, !tbaa !67
  %2306 = load float, ptr %658, align 4, !tbaa !67
  %2307 = fadd float %2305, %2306
  %2308 = load float, ptr %709, align 4, !tbaa !67
  %2309 = load float, ptr %756, align 4, !tbaa !67
  %2310 = fadd float %2308, %2309
  %2311 = load float, ptr %710, align 4, !tbaa !67
  %2312 = load float, ptr %757, align 4, !tbaa !67
  %2313 = fadd float %2311, %2312
  %2314 = fmul float %2310, %2310
  %2315 = call float @llvm.fmuladd.f32(float %2307, float %2307, float %2314)
  %2316 = call float @llvm.fmuladd.f32(float %2313, float %2313, float %2315)
  %2317 = fcmp ogt float %2316, 0x38AA95A5C0000000
  br i1 %2317, label %2318, label %2324

2318:                                             ; preds = %2303
  %2319 = call float @sqrtf(float noundef %2316) #12
  %2320 = fdiv float 1.000000e+00, %2319
  %2321 = fmul float %2307, %2320
  %2322 = fmul float %2310, %2320
  %2323 = fmul float %2313, %2320
  br label %2324

2324:                                             ; preds = %2318, %2303
  %2325 = phi float [ %2322, %2318 ], [ 0.000000e+00, %2303 ]
  %2326 = phi float [ %2321, %2318 ], [ 0.000000e+00, %2303 ]
  %2327 = phi float [ %2323, %2318 ], [ 0.000000e+00, %2303 ]
  %2328 = load float, ptr %1763, align 4, !tbaa !67
  %2329 = getelementptr inbounds float, ptr %1763, i64 1
  %2330 = load float, ptr %2329, align 4, !tbaa !67
  %2331 = fmul float %2325, %2330
  %2332 = call float @llvm.fmuladd.f32(float %2328, float %2326, float %2331)
  %2333 = getelementptr inbounds float, ptr %1763, i64 2
  %2334 = load float, ptr %2333, align 4, !tbaa !67
  %2335 = call float @llvm.fmuladd.f32(float %2334, float %2327, float %2332)
  %2336 = icmp eq i32 %2304, 0
  br i1 %2336, label %2343, label %2337

2337:                                             ; preds = %2324
  %2338 = fneg float %2335
  %2339 = call float @llvm.fmuladd.f32(float %2338, float %2335, float 1.000000e+00)
  %2340 = fcmp ugt float %2339, 0.000000e+00
  br i1 %2340, label %2341, label %2343

2341:                                             ; preds = %2337
  %2342 = call float @sqrtf(float noundef %2339) #12
  br label %2343

2343:                                             ; preds = %2341, %2337, %2324
  %2344 = phi float [ %2335, %2324 ], [ %2342, %2341 ], [ 0.000000e+00, %2337 ]
  %2345 = fcmp ugt float %2344, 0.000000e+00
  %2346 = select i1 %2345, float %2344, float 0x3F50624DE0000000
  %2347 = load float, ptr %1763, align 4, !tbaa !67
  %2348 = load float, ptr %658, align 4, !tbaa !67
  %2349 = load float, ptr %2329, align 4, !tbaa !67
  %2350 = load float, ptr %756, align 4, !tbaa !67
  %2351 = fmul float %2349, %2350
  %2352 = call float @llvm.fmuladd.f32(float %2347, float %2348, float %2351)
  %2353 = load float, ptr %2333, align 4, !tbaa !67
  %2354 = load float, ptr %757, align 4, !tbaa !67
  %2355 = call float @llvm.fmuladd.f32(float %2353, float %2354, float %2352)
  br i1 %2336, label %2362, label %2356

2356:                                             ; preds = %2343
  %2357 = fneg float %2355
  %2358 = call float @llvm.fmuladd.f32(float %2357, float %2355, float 1.000000e+00)
  %2359 = fcmp ugt float %2358, 0.000000e+00
  br i1 %2359, label %2360, label %2362

2360:                                             ; preds = %2356
  %2361 = call float @sqrtf(float noundef %2358) #12
  br label %2362

2362:                                             ; preds = %2360, %2356, %2343
  %2363 = phi float [ %2355, %2343 ], [ %2361, %2360 ], [ 0.000000e+00, %2356 ]
  %2364 = load float, ptr %1763, align 4, !tbaa !67
  %2365 = load float, ptr %9, align 4, !tbaa !67
  %2366 = load float, ptr %2329, align 4, !tbaa !67
  %2367 = load float, ptr %709, align 4, !tbaa !67
  %2368 = fmul float %2366, %2367
  %2369 = call float @llvm.fmuladd.f32(float %2364, float %2365, float %2368)
  %2370 = load float, ptr %2333, align 4, !tbaa !67
  %2371 = load float, ptr %710, align 4, !tbaa !67
  %2372 = call float @llvm.fmuladd.f32(float %2370, float %2371, float %2369)
  br i1 %2336, label %2379, label %2373

2373:                                             ; preds = %2362
  %2374 = fneg float %2372
  %2375 = call float @llvm.fmuladd.f32(float %2374, float %2372, float 1.000000e+00)
  %2376 = fcmp ugt float %2375, 0.000000e+00
  br i1 %2376, label %2377, label %2379

2377:                                             ; preds = %2373
  %2378 = call float @sqrtf(float noundef %2375) #12
  br label %2379

2379:                                             ; preds = %2377, %2373, %2362
  %2380 = phi float [ %2372, %2362 ], [ %2378, %2377 ], [ 0.000000e+00, %2373 ]
  %2381 = fcmp ult float %2346, 1.000000e+00
  br i1 %2381, label %2382, label %2384

2382:                                             ; preds = %2379
  %2383 = call float @acosf(float noundef %2346) #12
  br label %2384

2384:                                             ; preds = %2379, %2382
  %2385 = phi float [ %2383, %2382 ], [ 0.000000e+00, %2379 ]
  %2386 = fcmp ugt float %2380, 0.000000e+00
  %2387 = select i1 %2386, float %2380, float 0x3F50624DE0000000
  %2388 = fcmp ugt float %2363, 0.000000e+00
  %2389 = select i1 %2388, float %2363, float 0x3F50624DE0000000
  %2390 = call float @tanf(float noundef %2385) #12
  %2391 = fcmp ogt float %2295, 0x3F50624DE0000000
  %2392 = select i1 %2391, float %2295, float 0x3F50624DE0000000
  %2393 = fmul float %2392, 0x402921FB60000000
  %2394 = fmul float %2392, %2393
  %2395 = fdiv float 1.000000e+00, %2394
  %2396 = fmul float %2395, %2387
  %2397 = fneg float %2390
  %2398 = fmul float %2390, %2397
  %2399 = fmul float %2392, %2392
  %2400 = fdiv float %2398, %2399
  %2401 = call float @expf(float noundef %2400) #12
  %2402 = fmul float %2389, %2387
  %2403 = call float @sqrtf(float noundef %2402) #12
  %2404 = fdiv float %2401, %2403
  %2405 = fmul float %2396, %2404
  br label %2477

2406:                                             ; preds = %1991
  %2407 = getelementptr inbounds %struct.Material, ptr %827, i64 0, i32 87, i64 2
  %2408 = load float, ptr %2407, align 4, !tbaa !67
  %2409 = getelementptr inbounds %struct.Material, ptr %827, i64 0, i32 87, i64 3
  %2410 = load float, ptr %2409, align 4, !tbaa !67
  %2411 = load i8, ptr %937, align 1, !tbaa !98
  %2412 = and i8 %2411, 64
  %2413 = icmp eq i8 %2412, 0
  br i1 %2413, label %2414, label %2418

2414:                                             ; preds = %2406
  %2415 = load i32, ptr %1759, align 4, !tbaa !102
  %2416 = lshr i32 %2415, 26
  %2417 = and i32 %2416, 1
  br label %2418

2418:                                             ; preds = %2414, %2406
  %2419 = phi i32 [ 1, %2406 ], [ %2417, %2414 ]
  %2420 = load float, ptr %9, align 4, !tbaa !67
  %2421 = load float, ptr %658, align 4, !tbaa !67
  %2422 = fadd float %2420, %2421
  %2423 = load float, ptr %709, align 4, !tbaa !67
  %2424 = load float, ptr %767, align 4, !tbaa !67
  %2425 = fadd float %2423, %2424
  %2426 = load float, ptr %710, align 4, !tbaa !67
  %2427 = load float, ptr %768, align 4, !tbaa !67
  %2428 = fadd float %2426, %2427
  %2429 = fmul float %2425, %2425
  %2430 = call float @llvm.fmuladd.f32(float %2422, float %2422, float %2429)
  %2431 = call float @llvm.fmuladd.f32(float %2428, float %2428, float %2430)
  %2432 = fcmp ogt float %2431, 0x38AA95A5C0000000
  br i1 %2432, label %2433, label %2439

2433:                                             ; preds = %2418
  %2434 = call float @sqrtf(float noundef %2431) #12
  %2435 = fdiv float 1.000000e+00, %2434
  %2436 = fmul float %2422, %2435
  %2437 = fmul float %2425, %2435
  %2438 = fmul float %2428, %2435
  br label %2439

2439:                                             ; preds = %2433, %2418
  %2440 = phi float [ %2437, %2433 ], [ 0.000000e+00, %2418 ]
  %2441 = phi float [ %2436, %2433 ], [ 0.000000e+00, %2418 ]
  %2442 = phi float [ %2438, %2433 ], [ 0.000000e+00, %2418 ]
  %2443 = load float, ptr %1763, align 4, !tbaa !67
  %2444 = getelementptr inbounds float, ptr %1763, i64 1
  %2445 = load float, ptr %2444, align 4, !tbaa !67
  %2446 = fmul float %2440, %2445
  %2447 = call float @llvm.fmuladd.f32(float %2441, float %2443, float %2446)
  %2448 = getelementptr inbounds float, ptr %1763, i64 2
  %2449 = load float, ptr %2448, align 4, !tbaa !67
  %2450 = call float @llvm.fmuladd.f32(float %2442, float %2449, float %2447)
  %2451 = icmp eq i32 %2419, 0
  br i1 %2451, label %2458, label %2452

2452:                                             ; preds = %2439
  %2453 = fneg float %2450
  %2454 = call float @llvm.fmuladd.f32(float %2453, float %2450, float 1.000000e+00)
  %2455 = fcmp ugt float %2454, 0.000000e+00
  br i1 %2455, label %2456, label %2458

2456:                                             ; preds = %2452
  %2457 = call float @sqrtf(float noundef %2454) #12
  br label %2458

2458:                                             ; preds = %2456, %2452, %2439
  %2459 = phi float [ %2450, %2439 ], [ %2457, %2456 ], [ 0.000000e+00, %2452 ]
  %2460 = fcmp ugt float %2459, -1.000000e+00
  br i1 %2460, label %2461, label %2465

2461:                                             ; preds = %2458
  %2462 = fcmp ult float %2459, 1.000000e+00
  br i1 %2462, label %2463, label %2465

2463:                                             ; preds = %2461
  %2464 = call float @acosf(float noundef %2459) #12
  br label %2465

2465:                                             ; preds = %2463, %2461, %2458
  %2466 = phi float [ %2464, %2463 ], [ 0x400921FB60000000, %2458 ], [ 0.000000e+00, %2461 ]
  %2467 = fcmp olt float %2466, %2408
  br i1 %2467, label %2477, label %2468

2468:                                             ; preds = %2465
  %2469 = fadd float %2408, %2410
  %2470 = fcmp oge float %2466, %2469
  %2471 = fcmp oeq float %2410, 0.000000e+00
  %2472 = or i1 %2471, %2470
  br i1 %2472, label %2477, label %2473

2473:                                             ; preds = %2468
  %2474 = fsub float %2466, %2408
  %2475 = fdiv float %2474, %2410
  %2476 = fsub float 1.000000e+00, %2475
  br label %2477

2477:                                             ; preds = %2473, %2468, %2465, %2278, %2226, %2188, %2136, %2119, %2097, %2046, %2043, %2384
  %2478 = phi float [ %2405, %2384 ], [ %2047, %2046 ], [ 0.000000e+00, %2043 ], [ %2123, %2119 ], [ 0.000000e+00, %2097 ], [ %2292, %2278 ], [ 0.000000e+00, %2136 ], [ 0.000000e+00, %2188 ], [ 0.000000e+00, %2226 ], [ %2476, %2473 ], [ 1.000000e+00, %2465 ], [ 0.000000e+00, %2468 ]
  %2479 = load i16, ptr %804, align 8, !tbaa !72
  %2480 = icmp eq i16 %2479, 4
  %2481 = select i1 %2480, float %1733, float 1.000000e+00
  %2482 = fmul float %2478, %2481
  %2483 = load float, ptr %722, align 4, !tbaa !67
  %2484 = load float, ptr %753, align 8, !tbaa !169
  %2485 = fmul float %2483, %2484
  %2486 = fmul float %858, %2485
  %2487 = fmul float %2482, %2486
  %2488 = load i32, ptr %1759, align 4, !tbaa !102
  %2489 = and i32 %2488, 2097152
  %2490 = icmp eq i32 %2489, 0
  br i1 %2490, label %2542, label %2491

2491:                                             ; preds = %2477
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #12
  %2492 = load ptr, ptr %0, align 8, !tbaa !58
  %2493 = load float, ptr %769, align 8, !tbaa !166
  store float %2493, ptr %16, align 4, !tbaa !67
  %2494 = load float, ptr %770, align 4, !tbaa !167
  store float %2494, ptr %771, align 4, !tbaa !67
  %2495 = load float, ptr %772, align 8, !tbaa !168
  store float %2495, ptr %773, align 4, !tbaa !67
  %2496 = getelementptr inbounds %struct.Material, ptr %2492, i64 0, i32 93
  %2497 = load ptr, ptr %2496, align 8, !tbaa !174
  %2498 = icmp eq ptr %2497, null
  br i1 %2498, label %2526, label %2499

2499:                                             ; preds = %2491
  %2500 = getelementptr inbounds %struct.Material, ptr %2492, i64 0, i32 95
  %2501 = load i8, ptr %2500, align 1, !tbaa !175
  %2502 = icmp eq i8 %2501, 3
  br i1 %2502, label %2526, label %2503

2503:                                             ; preds = %2499
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  switch i8 %2501, label %2515 [
    i8 1, label %2516
    i8 0, label %2504
    i8 2, label %2505
  ]

2504:                                             ; preds = %2503
  br label %2516

2505:                                             ; preds = %2503
  %2506 = load float, ptr %658, align 4, !tbaa !67
  %2507 = load float, ptr %657, align 4, !tbaa !67
  %2508 = load float, ptr %774, align 4, !tbaa !67
  %2509 = load float, ptr %775, align 4, !tbaa !67
  %2510 = fmul float %2508, %2509
  %2511 = call float @llvm.fmuladd.f32(float %2506, float %2507, float %2510)
  %2512 = load float, ptr %776, align 4, !tbaa !67
  %2513 = load float, ptr %777, align 4, !tbaa !67
  %2514 = call float @llvm.fmuladd.f32(float %2512, float %2513, float %2511)
  br label %2516

2515:                                             ; preds = %2503
  br label %2516

2516:                                             ; preds = %2515, %2505, %2504, %2503
  %2517 = phi float [ 0.000000e+00, %2515 ], [ %2514, %2505 ], [ %2482, %2504 ], [ %2487, %2503 ]
  %2518 = call zeroext i8 @do_colorband(ptr noundef nonnull %2497, float noundef %2517, ptr noundef nonnull %3) #12
  %2519 = load float, ptr %778, align 4, !tbaa !67
  %2520 = getelementptr inbounds %struct.Material, ptr %2492, i64 0, i32 101
  %2521 = load float, ptr %2520, align 4, !tbaa !176
  %2522 = fmul float %2519, %2521
  %2523 = getelementptr inbounds %struct.Material, ptr %2492, i64 0, i32 97
  %2524 = load i8, ptr %2523, align 1, !tbaa !177
  %2525 = zext i8 %2524 to i32
  call void @ramp_blend(i32 noundef %2525, ptr noundef nonnull %16, float noundef %2522, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  br label %2526

2526:                                             ; preds = %2491, %2499, %2516
  %2527 = load float, ptr %11, align 4, !tbaa !67
  %2528 = load float, ptr %16, align 4, !tbaa !67
  %2529 = fmul float %2527, %2528
  %2530 = load float, ptr %779, align 4, !tbaa !67
  %2531 = call float @llvm.fmuladd.f32(float %2487, float %2529, float %2530)
  store float %2531, ptr %779, align 4, !tbaa !67
  %2532 = load float, ptr %677, align 4, !tbaa !67
  %2533 = load float, ptr %771, align 4, !tbaa !67
  %2534 = fmul float %2532, %2533
  %2535 = load float, ptr %780, align 4, !tbaa !67
  %2536 = call float @llvm.fmuladd.f32(float %2487, float %2534, float %2535)
  store float %2536, ptr %780, align 4, !tbaa !67
  %2537 = load float, ptr %678, align 4, !tbaa !67
  %2538 = load float, ptr %773, align 4, !tbaa !67
  %2539 = fmul float %2537, %2538
  %2540 = load float, ptr %781, align 4, !tbaa !67
  %2541 = call float @llvm.fmuladd.f32(float %2487, float %2539, float %2540)
  store float %2541, ptr %781, align 4, !tbaa !67
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #12
  br label %2558

2542:                                             ; preds = %2477
  %2543 = load float, ptr %11, align 4, !tbaa !67
  %2544 = load float, ptr %782, align 8, !tbaa !166
  %2545 = fmul float %2543, %2544
  %2546 = load float, ptr %783, align 4, !tbaa !67
  %2547 = call float @llvm.fmuladd.f32(float %2487, float %2545, float %2546)
  store float %2547, ptr %783, align 4, !tbaa !67
  %2548 = load float, ptr %677, align 4, !tbaa !67
  %2549 = load float, ptr %784, align 4, !tbaa !167
  %2550 = fmul float %2548, %2549
  %2551 = load float, ptr %785, align 4, !tbaa !67
  %2552 = call float @llvm.fmuladd.f32(float %2487, float %2550, float %2551)
  store float %2552, ptr %785, align 4, !tbaa !67
  %2553 = load float, ptr %678, align 4, !tbaa !67
  %2554 = load float, ptr %786, align 8, !tbaa !168
  %2555 = fmul float %2553, %2554
  %2556 = load float, ptr %787, align 4, !tbaa !67
  %2557 = call float @llvm.fmuladd.f32(float %2487, float %2555, float %2556)
  store float %2557, ptr %787, align 4, !tbaa !67
  br label %2558

2558:                                             ; preds = %826, %835, %840, %847, %857, %1757, %1800, %1827, %1915, %1919, %1922, %1954, %2526, %2542
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  br label %2559

2559:                                             ; preds = %820, %812, %803, %798, %2558
  %2560 = load ptr, ptr %799, align 8, !tbaa !69
  %2561 = icmp eq ptr %2560, null
  br i1 %2561, label %2562, label %798, !llvm.loop !178

2562:                                             ; preds = %2559, %649
  %2563 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8
  %2564 = load float, ptr %2563, align 4, !tbaa !67
  %2565 = fcmp olt float %2564, 0.000000e+00
  br i1 %2565, label %2566, label %2567

2566:                                             ; preds = %2562
  store float 0.000000e+00, ptr %2563, align 4, !tbaa !67
  br label %2567

2567:                                             ; preds = %2566, %2562
  %2568 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8, i64 1
  %2569 = load float, ptr %2568, align 4, !tbaa !67
  %2570 = fcmp olt float %2569, 0.000000e+00
  br i1 %2570, label %2571, label %2572

2571:                                             ; preds = %2567
  store float 0.000000e+00, ptr %2568, align 4, !tbaa !67
  br label %2572

2572:                                             ; preds = %2571, %2567
  %2573 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8, i64 2
  %2574 = load float, ptr %2573, align 4, !tbaa !67
  %2575 = fcmp olt float %2574, 0.000000e+00
  br i1 %2575, label %2576, label %2577

2576:                                             ; preds = %2572
  store float 0.000000e+00, ptr %2573, align 4, !tbaa !67
  br label %2577

2577:                                             ; preds = %2576, %2572
  %2578 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 9
  %2579 = load float, ptr %2578, align 4, !tbaa !67
  %2580 = fcmp olt float %2579, 0.000000e+00
  br i1 %2580, label %2581, label %2582

2581:                                             ; preds = %2577
  store float 0.000000e+00, ptr %2578, align 4, !tbaa !67
  br label %2582

2582:                                             ; preds = %2581, %2577
  %2583 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 9, i64 1
  %2584 = load float, ptr %2583, align 4, !tbaa !67
  %2585 = fcmp olt float %2584, 0.000000e+00
  br i1 %2585, label %2586, label %2587

2586:                                             ; preds = %2582
  store float 0.000000e+00, ptr %2583, align 4, !tbaa !67
  br label %2587

2587:                                             ; preds = %2586, %2582
  %2588 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 9, i64 2
  %2589 = load float, ptr %2588, align 4, !tbaa !67
  %2590 = fcmp olt float %2589, 0.000000e+00
  br i1 %2590, label %2591, label %2592

2591:                                             ; preds = %2587
  store float 0.000000e+00, ptr %2588, align 4, !tbaa !67
  br label %2592

2592:                                             ; preds = %2591, %2587
  %2593 = getelementptr inbounds %struct.Material, ptr %21, i64 0, i32 123
  %2594 = load i16, ptr %2593, align 4, !tbaa !143
  %2595 = and i16 %2594, 1
  %2596 = icmp eq i16 %2595, 0
  br i1 %2596, label %2669, label %2597

2597:                                             ; preds = %2592
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #12
  %2598 = getelementptr inbounds %struct.Material, ptr %21, i64 0, i32 120
  %2599 = load float, ptr %2598, align 8, !tbaa !144
  %2600 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  %2601 = call i32 @sample_sss(ptr noundef nonnull @R, ptr noundef %21, ptr noundef nonnull %2600, ptr noundef nonnull %20) #12
  %2602 = icmp eq i32 %2601, 0
  br i1 %2602, label %2668, label %2603

2603:                                             ; preds = %2597
  %2604 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 1
  %2605 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 1, i64 3
  %2606 = load float, ptr %2605, align 4, !tbaa !67
  %2607 = fcmp ogt float %2606, 0x3E80000000000000
  %2608 = fdiv float 1.000000e+00, %2606
  %2609 = select i1 %2607, float %2608, float 1.000000e+00
  %2610 = fcmp oeq float %2599, 0.000000e+00
  br i1 %2610, label %2611, label %2620

2611:                                             ; preds = %2603
  %2612 = load float, ptr %2604, align 4, !tbaa !67
  %2613 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 1, i64 1
  %2614 = load float, ptr %2613, align 4, !tbaa !67
  %2615 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 1, i64 2
  %2616 = load float, ptr %2615, align 4, !tbaa !67
  %2617 = fmul float %2609, %2612
  %2618 = fmul float %2609, %2614
  %2619 = fmul float %2609, %2616
  br label %2648

2620:                                             ; preds = %2603
  %2621 = fcmp oeq float %2599, 1.000000e+00
  br i1 %2621, label %2648, label %2622

2622:                                             ; preds = %2620
  %2623 = load float, ptr %2604, align 4, !tbaa !67
  %2624 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 1, i64 1
  %2625 = load float, ptr %2624, align 4, !tbaa !67
  %2626 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 1, i64 2
  %2627 = load float, ptr %2626, align 4, !tbaa !67
  %2628 = fmul float %2609, %2623
  %2629 = fmul float %2609, %2625
  %2630 = fmul float %2609, %2627
  %2631 = fcmp ogt float %2628, 0.000000e+00
  %2632 = select i1 %2631, float %2628, float 0.000000e+00
  %2633 = fpext float %2632 to double
  %2634 = fsub float 1.000000e+00, %2599
  %2635 = fpext float %2634 to double
  %2636 = call double @pow(double noundef %2633, double noundef %2635) #12
  %2637 = fptrunc double %2636 to float
  %2638 = fcmp ogt float %2629, 0.000000e+00
  %2639 = select i1 %2638, float %2629, float 0.000000e+00
  %2640 = fpext float %2639 to double
  %2641 = call double @pow(double noundef %2640, double noundef %2635) #12
  %2642 = fptrunc double %2641 to float
  %2643 = fcmp ogt float %2630, 0.000000e+00
  %2644 = select i1 %2643, float %2630, float 0.000000e+00
  %2645 = fpext float %2644 to double
  %2646 = call double @pow(double noundef %2645, double noundef %2635) #12
  %2647 = fptrunc double %2646 to float
  br label %2648

2648:                                             ; preds = %2620, %2622, %2611
  %2649 = phi float [ %2617, %2611 ], [ %2637, %2622 ], [ %2609, %2620 ]
  %2650 = phi float [ %2618, %2611 ], [ %2642, %2622 ], [ %2609, %2620 ]
  %2651 = phi float [ %2619, %2611 ], [ %2647, %2622 ], [ %2609, %2620 ]
  %2652 = load float, ptr %20, align 4, !tbaa !67
  %2653 = fmul float %2649, %2652
  %2654 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6
  store float %2653, ptr %2654, align 4, !tbaa !67
  %2655 = getelementptr inbounds [3 x float], ptr %20, i64 0, i64 1
  %2656 = load float, ptr %2655, align 4, !tbaa !67
  %2657 = fmul float %2650, %2656
  %2658 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6, i64 1
  store float %2657, ptr %2658, align 4, !tbaa !67
  %2659 = getelementptr inbounds [3 x float], ptr %20, i64 0, i64 2
  %2660 = load float, ptr %2659, align 4, !tbaa !67
  %2661 = fmul float %2651, %2660
  %2662 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6, i64 2
  store float %2661, ptr %2662, align 4, !tbaa !67
  %2663 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 120
  %2664 = load i32, ptr %2663, align 4, !tbaa !146
  %2665 = and i32 %2664, 32
  %2666 = icmp eq i32 %2665, 0
  br i1 %2666, label %2668, label %2667

2667:                                             ; preds = %2648
  store float %2653, ptr %2578, align 4, !tbaa !67
  store float %2657, ptr %2583, align 4, !tbaa !67
  store float %2661, ptr %2588, align 4, !tbaa !67
  br label %2668

2668:                                             ; preds = %2648, %2667, %2597
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #12
  br label %2669

2669:                                             ; preds = %2668, %2592
  %2670 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 120
  %2671 = load i32, ptr %2670, align 4, !tbaa !146
  %2672 = and i32 %2671, 32
  %2673 = icmp eq i32 %2672, 0
  %2674 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 7
  br i1 %2673, label %2679, label %2675

2675:                                             ; preds = %2669
  %2676 = load float, ptr %2578, align 4, !tbaa !67
  store float %2676, ptr %2674, align 4, !tbaa !67
  %2677 = load float, ptr %2583, align 4, !tbaa !67
  %2678 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 7, i64 1
  store float %2677, ptr %2678, align 4, !tbaa !67
  br label %2686

2679:                                             ; preds = %2669
  %2680 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6
  %2681 = load float, ptr %2680, align 4, !tbaa !67
  store float %2681, ptr %2674, align 4, !tbaa !67
  %2682 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6, i64 1
  %2683 = load float, ptr %2682, align 4, !tbaa !67
  %2684 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 7, i64 1
  store float %2683, ptr %2684, align 4, !tbaa !67
  %2685 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6, i64 2
  br label %2686

2686:                                             ; preds = %2679, %2675
  %2687 = phi ptr [ %2685, %2679 ], [ %2588, %2675 ]
  %2688 = load float, ptr %2687, align 4, !tbaa !67
  %2689 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 7, i64 2
  store float %2688, ptr %2689, align 4, !tbaa !67
  %2690 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 7
  %2691 = load float, ptr %2690, align 4, !tbaa !67
  store float %2691, ptr %1, align 4, !tbaa !67
  %2692 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 7, i64 1
  %2693 = load float, ptr %2692, align 4, !tbaa !67
  %2694 = getelementptr inbounds float, ptr %1, i64 1
  store float %2693, ptr %2694, align 4, !tbaa !67
  %2695 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 7, i64 2
  %2696 = load float, ptr %2695, align 4, !tbaa !67
  %2697 = getelementptr inbounds float, ptr %1, i64 2
  store float %2696, ptr %2697, align 4, !tbaa !67
  %2698 = and i32 %23, 32
  %2699 = icmp eq i32 %2698, 0
  br i1 %2699, label %2752, label %2700

2700:                                             ; preds = %2686
  %2701 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6
  %2702 = load float, ptr %2701, align 4, !tbaa !67
  %2703 = fcmp oeq float %2702, 0.000000e+00
  br i1 %2703, label %2704, label %2712

2704:                                             ; preds = %2700
  %2705 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6, i64 1
  %2706 = load float, ptr %2705, align 4, !tbaa !67
  %2707 = fcmp oeq float %2706, 0.000000e+00
  br i1 %2707, label %2708, label %2712

2708:                                             ; preds = %2704
  %2709 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6, i64 2
  %2710 = load float, ptr %2709, align 4, !tbaa !67
  %2711 = fcmp oeq float %2710, 0.000000e+00
  br i1 %2711, label %2752, label %2712

2712:                                             ; preds = %2708, %2704, %2700
  %2713 = fcmp une float %2702, 0.000000e+00
  %2714 = load float, ptr %2578, align 4, !tbaa !67
  br i1 %2713, label %2715, label %2717

2715:                                             ; preds = %2712
  %2716 = fdiv float %2714, %2702
  br label %2722

2717:                                             ; preds = %2712
  %2718 = fcmp oeq float %2714, 0.000000e+00
  br i1 %2718, label %2719, label %2724

2719:                                             ; preds = %2717
  %2720 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 9, i64 3
  %2721 = load float, ptr %2720, align 4, !tbaa !67
  br label %2722

2722:                                             ; preds = %2715, %2719
  %2723 = phi float [ %2721, %2719 ], [ %2716, %2715 ]
  store float %2723, ptr %2578, align 4, !tbaa !67
  br label %2724

2724:                                             ; preds = %2722, %2717
  %2725 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6, i64 1
  %2726 = load float, ptr %2725, align 4, !tbaa !67
  %2727 = fcmp une float %2726, 0.000000e+00
  %2728 = load float, ptr %2583, align 4, !tbaa !67
  br i1 %2727, label %2729, label %2731

2729:                                             ; preds = %2724
  %2730 = fdiv float %2728, %2726
  br label %2736

2731:                                             ; preds = %2724
  %2732 = fcmp oeq float %2728, 0.000000e+00
  br i1 %2732, label %2733, label %2738

2733:                                             ; preds = %2731
  %2734 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 9, i64 3
  %2735 = load float, ptr %2734, align 4, !tbaa !67
  br label %2736

2736:                                             ; preds = %2729, %2733
  %2737 = phi float [ %2735, %2733 ], [ %2730, %2729 ]
  store float %2737, ptr %2583, align 4, !tbaa !67
  br label %2738

2738:                                             ; preds = %2736, %2731
  %2739 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6, i64 2
  %2740 = load float, ptr %2739, align 4, !tbaa !67
  %2741 = fcmp une float %2740, 0.000000e+00
  %2742 = load float, ptr %2588, align 4, !tbaa !67
  br i1 %2741, label %2743, label %2745

2743:                                             ; preds = %2738
  %2744 = fdiv float %2742, %2740
  br label %2750

2745:                                             ; preds = %2738
  %2746 = fcmp oeq float %2742, 0.000000e+00
  br i1 %2746, label %2747, label %2752

2747:                                             ; preds = %2745
  %2748 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 9, i64 3
  %2749 = load float, ptr %2748, align 4, !tbaa !67
  br label %2750

2750:                                             ; preds = %2747, %2743
  %2751 = phi float [ %2744, %2743 ], [ %2749, %2747 ]
  store float %2751, ptr %2588, align 4, !tbaa !67
  br label %2752

2752:                                             ; preds = %2750, %2745, %2708, %2686
  %2753 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 16), align 8, !tbaa !179
  %2754 = fcmp oeq float %2753, 0.000000e+00
  %2755 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 17), align 4
  %2756 = fcmp oeq float %2755, 1.000000e+00
  %2757 = select i1 %2754, i1 %2756, i1 false
  %2758 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 75), align 8
  %2759 = icmp ne ptr %2758, null
  %2760 = select i1 %2757, i1 true, i1 %2759
  br i1 %2760, label %2805, label %2761

2761:                                             ; preds = %2752
  %2762 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 18), align 8, !tbaa !180
  %2763 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 19), align 4, !tbaa !181
  %2764 = fmul float %2691, %2763
  %2765 = call float @expf(float noundef %2764) #12
  %2766 = fsub float 1.000000e+00, %2765
  %2767 = fmul float %2762, %2766
  store float %2767, ptr %1, align 4, !tbaa !67
  %2768 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 18), align 8, !tbaa !180
  %2769 = load float, ptr %2694, align 4, !tbaa !67
  %2770 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 19), align 4, !tbaa !181
  %2771 = fmul float %2769, %2770
  %2772 = call float @expf(float noundef %2771) #12
  %2773 = fsub float 1.000000e+00, %2772
  %2774 = fmul float %2768, %2773
  store float %2774, ptr %2694, align 4, !tbaa !67
  %2775 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 18), align 8, !tbaa !180
  %2776 = load float, ptr %2697, align 4, !tbaa !67
  %2777 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 19), align 4, !tbaa !181
  %2778 = fmul float %2776, %2777
  %2779 = call float @expf(float noundef %2778) #12
  %2780 = fsub float 1.000000e+00, %2779
  %2781 = fmul float %2775, %2780
  store float %2781, ptr %2697, align 4, !tbaa !67
  %2782 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 18), align 8, !tbaa !180
  %2783 = load float, ptr %2563, align 4, !tbaa !67
  %2784 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 19), align 4, !tbaa !181
  %2785 = fmul float %2783, %2784
  %2786 = call float @expf(float noundef %2785) #12
  %2787 = fsub float 1.000000e+00, %2786
  %2788 = fmul float %2782, %2787
  store float %2788, ptr %2563, align 4, !tbaa !67
  %2789 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 18), align 8, !tbaa !180
  %2790 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8, i64 1
  %2791 = load float, ptr %2790, align 4, !tbaa !67
  %2792 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 19), align 4, !tbaa !181
  %2793 = fmul float %2791, %2792
  %2794 = call float @expf(float noundef %2793) #12
  %2795 = fsub float 1.000000e+00, %2794
  %2796 = fmul float %2789, %2795
  store float %2796, ptr %2790, align 4, !tbaa !67
  %2797 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 18), align 8, !tbaa !180
  %2798 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8, i64 2
  %2799 = load float, ptr %2798, align 4, !tbaa !67
  %2800 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 19), align 4, !tbaa !181
  %2801 = fmul float %2799, %2800
  %2802 = call float @expf(float noundef %2801) #12
  %2803 = fsub float 1.000000e+00, %2802
  %2804 = fmul float %2797, %2803
  store float %2804, ptr %2798, align 4, !tbaa !67
  br label %2805

2805:                                             ; preds = %2761, %2752, %627
  br i1 %541, label %2879, label %2806

2806:                                             ; preds = %2805
  %2807 = getelementptr inbounds %struct.Material, ptr %21, i64 0, i32 31
  %2808 = load float, ptr %2807, align 8, !tbaa !108
  %2809 = fcmp une float %2808, 0.000000e+00
  br i1 %2809, label %2810, label %2850

2810:                                             ; preds = %2806
  %2811 = load i32, ptr %24, align 8, !tbaa !110
  %2812 = and i32 %2811, 65536
  %2813 = icmp eq i32 %2812, 0
  br i1 %2813, label %2850, label %2814

2814:                                             ; preds = %2810
  %2815 = fcmp oeq float %2808, 0.000000e+00
  br i1 %2815, label %2845, label %2816

2816:                                             ; preds = %2814
  %2817 = getelementptr inbounds %struct.Material, ptr %21, i64 0, i32 32
  %2818 = load float, ptr %2817, align 4, !tbaa !109
  %2819 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %2820 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30
  %2821 = load float, ptr %2820, align 4, !tbaa !67
  %2822 = load float, ptr %2819, align 4, !tbaa !67
  %2823 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 1
  %2824 = load float, ptr %2823, align 4, !tbaa !67
  %2825 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %2826 = load float, ptr %2825, align 4, !tbaa !67
  %2827 = fmul float %2824, %2826
  %2828 = call float @llvm.fmuladd.f32(float %2821, float %2822, float %2827)
  %2829 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 2
  %2830 = load float, ptr %2829, align 4, !tbaa !67
  %2831 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %2832 = load float, ptr %2831, align 4, !tbaa !67
  %2833 = call float @llvm.fmuladd.f32(float %2830, float %2832, float %2828)
  %2834 = fcmp ogt float %2833, 0.000000e+00
  %2835 = fneg float %2833
  %2836 = select i1 %2834, float %2833, float %2835
  %2837 = fadd float %2836, 1.000000e+00
  %2838 = fsub float 1.000000e+00, %2818
  %2839 = call float @powf(float noundef %2837, float noundef %2808) #12
  %2840 = call float @llvm.fmuladd.f32(float %2838, float %2839, float %2818)
  %2841 = fcmp olt float %2840, 0.000000e+00
  br i1 %2841, label %2845, label %2842

2842:                                             ; preds = %2816
  %2843 = fcmp ogt float %2840, 1.000000e+00
  %2844 = select i1 %2843, float 1.000000e+00, float %2840
  br label %2845

2845:                                             ; preds = %2814, %2816, %2842
  %2846 = phi float [ 1.000000e+00, %2814 ], [ 0.000000e+00, %2816 ], [ %2844, %2842 ]
  %2847 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 49
  %2848 = load float, ptr %2847, align 8, !tbaa !106
  %2849 = fmul float %2846, %2848
  store float %2849, ptr %2847, align 8, !tbaa !106
  br label %2850

2850:                                             ; preds = %2845, %2810, %2806
  %2851 = load i32, ptr %24, align 8, !tbaa !110
  %2852 = and i32 %2851, 65536
  %2853 = icmp eq i32 %2852, 0
  %2854 = and i32 %2851, 131136
  %2855 = icmp eq i32 %2854, 0
  %2856 = or i1 %2853, %2855
  br i1 %2856, label %2879, label %2857

2857:                                             ; preds = %2850
  %2858 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 47
  %2859 = load float, ptr %2858, align 8, !tbaa !182
  %2860 = fcmp une float %2859, 0.000000e+00
  br i1 %2860, label %2861, label %2879

2861:                                             ; preds = %2857
  %2862 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8
  %2863 = load float, ptr %2862, align 4, !tbaa !67
  %2864 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8, i64 1
  %2865 = load float, ptr %2864, align 4, !tbaa !67
  %2866 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8, i64 2
  %2867 = load float, ptr %2866, align 4, !tbaa !67
  %2868 = fcmp ogt float %2863, %2865
  %2869 = select i1 %2868, float %2863, float %2865
  %2870 = fcmp ogt float %2869, %2867
  %2871 = select i1 %2870, float %2869, float %2867
  %2872 = fmul float %2859, %2871
  %2873 = fcmp ogt float %2872, 1.000000e+00
  %2874 = select i1 %2873, float 1.000000e+00, float %2872
  %2875 = fsub float 1.000000e+00, %2874
  %2876 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 49
  %2877 = load float, ptr %2876, align 8, !tbaa !106
  %2878 = call float @llvm.fmuladd.f32(float %2875, float %2877, float %2874)
  store float %2878, ptr %2876, align 8, !tbaa !106
  br label %2879

2879:                                             ; preds = %2850, %2861, %2857, %2805
  %2880 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 49
  %2881 = load float, ptr %2880, align 8, !tbaa !106
  %2882 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  store float %2881, ptr %2882, align 4, !tbaa !111
  %2883 = getelementptr inbounds %struct.Material, ptr %21, i64 0, i32 123
  %2884 = load i16, ptr %2883, align 4, !tbaa !143
  %2885 = and i16 %2884, 1
  %2886 = icmp eq i16 %2885, 0
  br i1 %2886, label %2890, label %2887

2887:                                             ; preds = %2879
  %2888 = call i32 @sss_pass_done(ptr noundef nonnull @R, ptr noundef %21) #12
  %2889 = icmp eq i32 %2888, 0
  br i1 %2889, label %2890, label %3120

2890:                                             ; preds = %2887, %2879
  %2891 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !83
  %2892 = and i32 %2891, 2
  %2893 = icmp eq i32 %2892, 0
  br i1 %2893, label %3079, label %2894

2894:                                             ; preds = %2890
  %2895 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 23), align 2, !tbaa !86
  %2896 = and i16 %2895, 64
  %2897 = icmp eq i16 %2896, 0
  br i1 %2897, label %2977, label %2898

2898:                                             ; preds = %2894
  %2899 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 120
  %2900 = load i32, ptr %2899, align 4, !tbaa !146
  %2901 = and i32 %2900, 64
  %2902 = icmp eq i32 %2901, 0
  br i1 %2902, label %2977, label %2903

2903:                                             ; preds = %2898
  %2904 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 48), align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #12
  %2905 = and i32 %2891, 65536
  %2906 = icmp eq i32 %2905, 0
  %2907 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 64), align 2
  %2908 = icmp ne i16 %2907, 1
  %2909 = select i1 %2906, i1 %2908, i1 false
  %2910 = fcmp oeq float %2904, 0.000000e+00
  %2911 = select i1 %2909, i1 true, i1 %2910
  br i1 %2911, label %2976, label %2912

2912:                                             ; preds = %2903
  %2913 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 52), align 4, !tbaa !142
  switch i16 %2913, label %2976 [
    i16 0, label %2914
    i16 3, label %2945
  ]

2914:                                             ; preds = %2912
  %2915 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 100
  %2916 = load float, ptr %2915, align 8, !tbaa !67
  %2917 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 32
  %2918 = load float, ptr %2917, align 4, !tbaa !103
  %2919 = fmul float %2916, %2918
  %2920 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 50
  %2921 = load float, ptr %2920, align 4, !tbaa !121
  %2922 = fmul float %2919, %2921
  %2923 = load float, ptr %1, align 4, !tbaa !67
  %2924 = call float @llvm.fmuladd.f32(float %2922, float %2904, float %2923)
  store float %2924, ptr %1, align 4, !tbaa !67
  %2925 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 100, i64 1
  %2926 = load float, ptr %2925, align 4, !tbaa !67
  %2927 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 33
  %2928 = load float, ptr %2927, align 8, !tbaa !104
  %2929 = fmul float %2926, %2928
  %2930 = load float, ptr %2920, align 4, !tbaa !121
  %2931 = fmul float %2929, %2930
  %2932 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  %2933 = load float, ptr %2932, align 4, !tbaa !67
  %2934 = call float @llvm.fmuladd.f32(float %2931, float %2904, float %2933)
  store float %2934, ptr %2932, align 4, !tbaa !67
  %2935 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 100, i64 2
  %2936 = load float, ptr %2935, align 8, !tbaa !67
  %2937 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 34
  %2938 = load float, ptr %2937, align 4, !tbaa !105
  %2939 = fmul float %2936, %2938
  %2940 = load float, ptr %2920, align 4, !tbaa !121
  %2941 = fmul float %2939, %2940
  %2942 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 2
  %2943 = load float, ptr %2942, align 4, !tbaa !67
  %2944 = call float @llvm.fmuladd.f32(float %2941, float %2904, float %2943)
  store float %2944, ptr %2942, align 4, !tbaa !67
  br label %2976

2945:                                             ; preds = %2912
  %2946 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 100
  %2947 = load float, ptr %1, align 4, !tbaa !67
  %2948 = load float, ptr %2946, align 4, !tbaa !67
  %2949 = fmul float %2947, %2948
  store float %2949, ptr %7, align 4, !tbaa !67
  %2950 = getelementptr inbounds float, ptr %1, i64 1
  %2951 = load float, ptr %2950, align 4, !tbaa !67
  %2952 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 100, i64 1
  %2953 = load float, ptr %2952, align 4, !tbaa !67
  %2954 = fmul float %2951, %2953
  %2955 = getelementptr inbounds float, ptr %7, i64 1
  store float %2954, ptr %2955, align 4, !tbaa !67
  %2956 = getelementptr inbounds float, ptr %1, i64 2
  %2957 = load float, ptr %2956, align 4, !tbaa !67
  %2958 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 100, i64 2
  %2959 = load float, ptr %2958, align 4, !tbaa !67
  %2960 = fmul float %2957, %2959
  %2961 = getelementptr inbounds float, ptr %7, i64 2
  store float %2960, ptr %2961, align 4, !tbaa !67
  %2962 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8
  %2963 = load float, ptr %2962, align 4, !tbaa !67
  %2964 = fmul float %2948, %2963
  store float %2964, ptr %8, align 4, !tbaa !67
  %2965 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8, i64 1
  %2966 = load float, ptr %2965, align 4, !tbaa !67
  %2967 = fmul float %2953, %2966
  %2968 = getelementptr inbounds float, ptr %8, i64 1
  store float %2967, ptr %2968, align 4, !tbaa !67
  %2969 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8, i64 2
  %2970 = load float, ptr %2969, align 4, !tbaa !67
  %2971 = fmul float %2959, %2970
  %2972 = getelementptr inbounds float, ptr %8, i64 2
  store float %2971, ptr %2972, align 4, !tbaa !67
  %2973 = fcmp oeq float %2904, 1.000000e+00
  br i1 %2973, label %2974, label %2975

2974:                                             ; preds = %2945
  store float %2949, ptr %1, align 4, !tbaa !67
  store float %2954, ptr %2950, align 4, !tbaa !67
  store float %2960, ptr %2956, align 4, !tbaa !67
  store float %2964, ptr %2962, align 4, !tbaa !67
  store float %2967, ptr %2965, align 4, !tbaa !67
  store float %2971, ptr %2969, align 4, !tbaa !67
  br label %2976

2975:                                             ; preds = %2945
  call void @interp_v3_v3v3(ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef nonnull %7, float noundef %2904) #12
  call void @interp_v3_v3v3(ptr noundef nonnull %2962, ptr noundef nonnull %2962, ptr noundef nonnull %8, float noundef %2904) #12
  br label %2976

2976:                                             ; preds = %2903, %2912, %2914, %2974, %2975
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #12
  br label %2977

2977:                                             ; preds = %2898, %2976, %2894
  %2978 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 23), align 2, !tbaa !86
  %2979 = and i16 %2978, 16
  %2980 = icmp eq i16 %2979, 0
  br i1 %2980, label %3030, label %2981

2981:                                             ; preds = %2977
  %2982 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 120
  %2983 = load i32, ptr %2982, align 4, !tbaa !146
  %2984 = and i32 %2983, 131072
  %2985 = icmp eq i32 %2984, 0
  br i1 %2985, label %3030, label %2986

2986:                                             ; preds = %2981
  %2987 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 59), align 4, !tbaa !119
  %2988 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 44
  %2989 = load float, ptr %2988, align 4, !tbaa !120
  %2990 = fmul float %2987, %2989
  %2991 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !83
  %2992 = and i32 %2991, 65536
  %2993 = icmp eq i32 %2992, 0
  %2994 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 64), align 2
  %2995 = icmp ne i16 %2994, 1
  %2996 = select i1 %2993, i1 %2995, i1 false
  %2997 = fcmp oeq float %2990, 0.000000e+00
  %2998 = select i1 %2996, i1 true, i1 %2997
  br i1 %2998, label %3030, label %2999

2999:                                             ; preds = %2986
  %3000 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 102
  %3001 = load float, ptr %3000, align 8, !tbaa !67
  %3002 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 32
  %3003 = load float, ptr %3002, align 4, !tbaa !103
  %3004 = fmul float %3001, %3003
  %3005 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 50
  %3006 = load float, ptr %3005, align 4, !tbaa !121
  %3007 = fmul float %3004, %3006
  %3008 = load float, ptr %1, align 4, !tbaa !67
  %3009 = call float @llvm.fmuladd.f32(float %3007, float %2990, float %3008)
  store float %3009, ptr %1, align 4, !tbaa !67
  %3010 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 102, i64 1
  %3011 = load float, ptr %3010, align 4, !tbaa !67
  %3012 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 33
  %3013 = load float, ptr %3012, align 8, !tbaa !104
  %3014 = fmul float %3011, %3013
  %3015 = load float, ptr %3005, align 4, !tbaa !121
  %3016 = fmul float %3014, %3015
  %3017 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  %3018 = load float, ptr %3017, align 4, !tbaa !67
  %3019 = call float @llvm.fmuladd.f32(float %3016, float %2990, float %3018)
  store float %3019, ptr %3017, align 4, !tbaa !67
  %3020 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 102, i64 2
  %3021 = load float, ptr %3020, align 8, !tbaa !67
  %3022 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 34
  %3023 = load float, ptr %3022, align 4, !tbaa !105
  %3024 = fmul float %3021, %3023
  %3025 = load float, ptr %3005, align 4, !tbaa !121
  %3026 = fmul float %3024, %3025
  %3027 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 2
  %3028 = load float, ptr %3027, align 4, !tbaa !67
  %3029 = call float @llvm.fmuladd.f32(float %3026, float %2990, float %3028)
  store float %3029, ptr %3027, align 4, !tbaa !67
  br label %3030

3030:                                             ; preds = %2999, %2986, %2981, %2977
  %3031 = and i16 %2978, 128
  %3032 = icmp eq i16 %3031, 0
  br i1 %3032, label %3079, label %3033

3033:                                             ; preds = %3030
  %3034 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 120
  %3035 = load i32, ptr %3034, align 4, !tbaa !146
  %3036 = and i32 %3035, 8192
  %3037 = icmp eq i32 %3036, 0
  br i1 %3037, label %3079, label %3038

3038:                                             ; preds = %3033
  %3039 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 58), align 8, !tbaa !183
  %3040 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !83
  %3041 = and i32 %3040, 65536
  %3042 = icmp eq i32 %3041, 0
  %3043 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 64), align 2
  %3044 = icmp ne i16 %3043, 1
  %3045 = select i1 %3042, i1 %3044, i1 false
  %3046 = fcmp oeq float %3039, 0.000000e+00
  %3047 = select i1 %3045, i1 true, i1 %3046
  br i1 %3047, label %3079, label %3048

3048:                                             ; preds = %3038
  %3049 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 101
  %3050 = load float, ptr %3049, align 4, !tbaa !67
  %3051 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 32
  %3052 = load float, ptr %3051, align 4, !tbaa !103
  %3053 = fmul float %3050, %3052
  %3054 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 50
  %3055 = load float, ptr %3054, align 4, !tbaa !121
  %3056 = fmul float %3053, %3055
  %3057 = load float, ptr %1, align 4, !tbaa !67
  %3058 = call float @llvm.fmuladd.f32(float %3056, float %3039, float %3057)
  store float %3058, ptr %1, align 4, !tbaa !67
  %3059 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 101, i64 1
  %3060 = load float, ptr %3059, align 4, !tbaa !67
  %3061 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 33
  %3062 = load float, ptr %3061, align 8, !tbaa !104
  %3063 = fmul float %3060, %3062
  %3064 = load float, ptr %3054, align 4, !tbaa !121
  %3065 = fmul float %3063, %3064
  %3066 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  %3067 = load float, ptr %3066, align 4, !tbaa !67
  %3068 = call float @llvm.fmuladd.f32(float %3065, float %3039, float %3067)
  store float %3068, ptr %3066, align 4, !tbaa !67
  %3069 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 101, i64 2
  %3070 = load float, ptr %3069, align 4, !tbaa !67
  %3071 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 34
  %3072 = load float, ptr %3071, align 4, !tbaa !105
  %3073 = fmul float %3070, %3072
  %3074 = load float, ptr %3054, align 4, !tbaa !121
  %3075 = fmul float %3073, %3074
  %3076 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 2
  %3077 = load float, ptr %3076, align 4, !tbaa !67
  %3078 = call float @llvm.fmuladd.f32(float %3075, float %3039, float %3077)
  store float %3078, ptr %3076, align 4, !tbaa !67
  br label %3079

3079:                                             ; preds = %3048, %3038, %3030, %3033, %2890
  %3080 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 41
  %3081 = load float, ptr %3080, align 8, !tbaa !184
  %3082 = load float, ptr %1, align 4, !tbaa !67
  %3083 = fadd float %3081, %3082
  store float %3083, ptr %1, align 4, !tbaa !67
  %3084 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 43
  %3085 = load float, ptr %3084, align 8, !tbaa !185
  %3086 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  %3087 = load float, ptr %3086, align 4, !tbaa !67
  %3088 = fadd float %3085, %3087
  store float %3088, ptr %3086, align 4, !tbaa !67
  %3089 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 42
  %3090 = load float, ptr %3089, align 4, !tbaa !186
  %3091 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 2
  %3092 = load float, ptr %3091, align 4, !tbaa !67
  %3093 = fadd float %3090, %3092
  store float %3093, ptr %3091, align 4, !tbaa !67
  %3094 = load i32, ptr %31, align 4, !tbaa !102
  %3095 = and i32 %3094, 1048576
  %3096 = icmp eq i32 %3095, 0
  br i1 %3096, label %3120, label %3097

3097:                                             ; preds = %3079
  %3098 = load ptr, ptr %0, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  %3099 = getelementptr inbounds %struct.Material, ptr %3098, i64 0, i32 92
  %3100 = load ptr, ptr %3099, align 8, !tbaa !187
  %3101 = icmp eq ptr %3100, null
  br i1 %3101, label %3119, label %3102

3102:                                             ; preds = %3097
  %3103 = getelementptr inbounds %struct.Material, ptr %3098, i64 0, i32 94
  %3104 = load i8, ptr %3103, align 8, !tbaa !188
  %3105 = icmp eq i8 %3104, 3
  br i1 %3105, label %3106, label %3119

3106:                                             ; preds = %3102
  %3107 = fmul float %3088, 0x3FE28F5C20000000
  %3108 = call float @llvm.fmuladd.f32(float %3083, float 0x3FD3333340000000, float %3107)
  %3109 = call float @llvm.fmuladd.f32(float %3093, float 0x3FBEB851E0000000, float %3108)
  %3110 = call zeroext i8 @do_colorband(ptr noundef nonnull %3100, float noundef %3109, ptr noundef nonnull %6) #12
  %3111 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  %3112 = load float, ptr %3111, align 4, !tbaa !67
  %3113 = getelementptr inbounds %struct.Material, ptr %3098, i64 0, i32 100
  %3114 = load float, ptr %3113, align 8, !tbaa !189
  %3115 = fmul float %3112, %3114
  %3116 = getelementptr inbounds %struct.Material, ptr %3098, i64 0, i32 96
  %3117 = load i8, ptr %3116, align 2, !tbaa !190
  %3118 = zext i8 %3117 to i32
  call void @ramp_blend(i32 noundef %3118, ptr noundef nonnull %1, float noundef %3115, ptr noundef nonnull %6) #12
  br label %3119

3119:                                             ; preds = %3097, %3102, %3106
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  br label %3120

3120:                                             ; preds = %3079, %3119, %2887
  %3121 = load i32, ptr %31, align 4, !tbaa !102
  %3122 = and i32 %3121, 2097152
  %3123 = icmp eq i32 %3122, 0
  br i1 %3123, label %3152, label %3124

3124:                                             ; preds = %3120
  %3125 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8
  %3126 = load ptr, ptr %0, align 8, !tbaa !58
  %3127 = getelementptr inbounds %struct.Material, ptr %3126, i64 0, i32 93
  %3128 = load ptr, ptr %3127, align 8, !tbaa !174
  %3129 = icmp eq ptr %3128, null
  br i1 %3129, label %3152, label %3130

3130:                                             ; preds = %3124
  %3131 = getelementptr inbounds %struct.Material, ptr %3126, i64 0, i32 95
  %3132 = load i8, ptr %3131, align 1, !tbaa !175
  %3133 = icmp eq i8 %3132, 3
  br i1 %3133, label %3134, label %3152

3134:                                             ; preds = %3130
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  %3135 = load float, ptr %3125, align 4, !tbaa !67
  %3136 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8, i64 1
  %3137 = load float, ptr %3136, align 4, !tbaa !67
  %3138 = fmul float %3137, 0x3FE28F5C20000000
  %3139 = call float @llvm.fmuladd.f32(float %3135, float 0x3FD3333340000000, float %3138)
  %3140 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8, i64 2
  %3141 = load float, ptr %3140, align 4, !tbaa !67
  %3142 = call float @llvm.fmuladd.f32(float %3141, float 0x3FBEB851E0000000, float %3139)
  %3143 = call zeroext i8 @do_colorband(ptr noundef nonnull %3128, float noundef %3142, ptr noundef nonnull %5) #12
  %3144 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  %3145 = load float, ptr %3144, align 4, !tbaa !67
  %3146 = getelementptr inbounds %struct.Material, ptr %3126, i64 0, i32 101
  %3147 = load float, ptr %3146, align 4, !tbaa !176
  %3148 = fmul float %3145, %3147
  %3149 = getelementptr inbounds %struct.Material, ptr %3126, i64 0, i32 97
  %3150 = load i8, ptr %3149, align 1, !tbaa !177
  %3151 = zext i8 %3150 to i32
  call void @ramp_blend(i32 noundef %3151, ptr noundef nonnull %3125, float noundef %3148, ptr noundef nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  br label %3152

3152:                                             ; preds = %3134, %3130, %3124, %3120
  %3153 = load float, ptr %322, align 8, !tbaa !67
  %3154 = fcmp une float %3153, 0.000000e+00
  br i1 %3154, label %3155, label %3197

3155:                                             ; preds = %3152
  %3156 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 38
  %3157 = load float, ptr %3156, align 4, !tbaa !191
  %3158 = load float, ptr %325, align 4, !tbaa !67
  %3159 = fneg float %3157
  %3160 = call float @llvm.fmuladd.f32(float %3159, float %3153, float 1.000000e+00)
  %3161 = load float, ptr %1, align 4, !tbaa !67
  %3162 = fmul float %3160, %3161
  %3163 = call float @llvm.fmuladd.f32(float %3157, float %3158, float %3162)
  %3164 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 39
  %3165 = load float, ptr %3164, align 8, !tbaa !192
  %3166 = load float, ptr %324, align 8, !tbaa !67
  %3167 = fneg float %3165
  %3168 = call float @llvm.fmuladd.f32(float %3167, float %3153, float 1.000000e+00)
  %3169 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  %3170 = load float, ptr %3169, align 4, !tbaa !67
  %3171 = fmul float %3168, %3170
  %3172 = call float @llvm.fmuladd.f32(float %3165, float %3166, float %3171)
  %3173 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 40
  %3174 = load float, ptr %3173, align 4, !tbaa !193
  %3175 = load float, ptr %323, align 4, !tbaa !67
  %3176 = fneg float %3174
  %3177 = call float @llvm.fmuladd.f32(float %3176, float %3153, float 1.000000e+00)
  %3178 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 2
  %3179 = load float, ptr %3178, align 4, !tbaa !67
  %3180 = fmul float %3177, %3179
  %3181 = call float @llvm.fmuladd.f32(float %3174, float %3175, float %3180)
  %3182 = and i32 %23, 128
  %3183 = icmp eq i32 %3182, 0
  br i1 %3183, label %3191, label %3184

3184:                                             ; preds = %3155
  %3185 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 13
  %3186 = fsub float %3163, %3161
  store float %3186, ptr %3185, align 4, !tbaa !67
  %3187 = fsub float %3172, %3170
  %3188 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 13, i64 1
  store float %3187, ptr %3188, align 4, !tbaa !67
  %3189 = fsub float %3181, %3179
  %3190 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 13, i64 2
  store float %3189, ptr %3190, align 4, !tbaa !67
  br label %3191

3191:                                             ; preds = %3184, %3155
  %3192 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 120
  %3193 = load i32, ptr %3192, align 4, !tbaa !146
  %3194 = and i32 %3193, 128
  %3195 = icmp eq i32 %3194, 0
  br i1 %3195, label %3197, label %3196

3196:                                             ; preds = %3191
  store float %3163, ptr %1, align 4, !tbaa !67
  store float %3172, ptr %3169, align 4, !tbaa !67
  store float %3181, ptr %3178, align 4, !tbaa !67
  br label %3197

3197:                                             ; preds = %3191, %3196, %3152
  %3198 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 120
  %3199 = load i32, ptr %3198, align 4, !tbaa !146
  %3200 = and i32 %3199, 65536
  %3201 = icmp eq i32 %3200, 0
  br i1 %3201, label %3217, label %3202

3202:                                             ; preds = %3197
  %3203 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 5
  %3204 = load float, ptr %3203, align 4, !tbaa !67
  %3205 = load float, ptr %1, align 4, !tbaa !67
  %3206 = fadd float %3204, %3205
  store float %3206, ptr %1, align 4, !tbaa !67
  %3207 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 5, i64 1
  %3208 = load float, ptr %3207, align 4, !tbaa !67
  %3209 = getelementptr inbounds float, ptr %1, i64 1
  %3210 = load float, ptr %3209, align 4, !tbaa !67
  %3211 = fadd float %3208, %3210
  store float %3211, ptr %3209, align 4, !tbaa !67
  %3212 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 5, i64 2
  %3213 = load float, ptr %3212, align 4, !tbaa !67
  %3214 = getelementptr inbounds float, ptr %1, i64 2
  %3215 = load float, ptr %3214, align 4, !tbaa !67
  %3216 = fadd float %3213, %3215
  store float %3216, ptr %3214, align 4, !tbaa !67
  br label %3217

3217:                                             ; preds = %3202, %3197
  %3218 = and i32 %3199, 16
  %3219 = icmp eq i32 %3218, 0
  br i1 %3219, label %3235, label %3220

3220:                                             ; preds = %3217
  %3221 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8
  %3222 = load float, ptr %3221, align 4, !tbaa !67
  %3223 = load float, ptr %1, align 4, !tbaa !67
  %3224 = fadd float %3222, %3223
  store float %3224, ptr %1, align 4, !tbaa !67
  %3225 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8, i64 1
  %3226 = load float, ptr %3225, align 4, !tbaa !67
  %3227 = getelementptr inbounds float, ptr %1, i64 1
  %3228 = load float, ptr %3227, align 4, !tbaa !67
  %3229 = fadd float %3226, %3228
  store float %3229, ptr %3227, align 4, !tbaa !67
  %3230 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8, i64 2
  %3231 = load float, ptr %3230, align 4, !tbaa !67
  %3232 = getelementptr inbounds float, ptr %1, i64 2
  %3233 = load float, ptr %3232, align 4, !tbaa !67
  %3234 = fadd float %3231, %3233
  store float %3234, ptr %3232, align 4, !tbaa !67
  br label %3235

3235:                                             ; preds = %3220, %3217
  %3236 = getelementptr inbounds %struct.Material, ptr %21, i64 0, i32 50
  %3237 = load i16, ptr %3236, align 2, !tbaa !113
  %3238 = and i16 %3237, 2
  %3239 = icmp eq i16 %3238, 0
  br i1 %3239, label %3285, label %3240

3240:                                             ; preds = %3235
  %3241 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 4
  %3242 = load ptr, ptr %3241, align 8, !tbaa !114
  %3243 = getelementptr inbounds %struct.ObjectRen, ptr %3242, i64 0, i32 2
  %3244 = load ptr, ptr %3243, align 8, !tbaa !115
  %3245 = icmp eq ptr %3244, null
  br i1 %3245, label %3285, label %3246

3246:                                             ; preds = %3240
  %3247 = load i16, ptr %2883, align 4, !tbaa !143
  %3248 = and i16 %3247, 1
  %3249 = icmp eq i16 %3248, 0
  br i1 %3249, label %3253, label %3250

3250:                                             ; preds = %3246
  %3251 = call i32 @sss_pass_done(ptr noundef nonnull @R, ptr noundef %21) #12
  %3252 = icmp eq i32 %3251, 0
  br i1 %3252, label %3253, label %3285

3253:                                             ; preds = %3250, %3246
  %3254 = load ptr, ptr %3241, align 8, !tbaa !114
  %3255 = getelementptr inbounds %struct.ObjectRen, ptr %3254, i64 0, i32 2
  %3256 = load ptr, ptr %3255, align 8, !tbaa !115
  %3257 = getelementptr inbounds %struct.Object, ptr %3256, i64 0, i32 98
  %3258 = load float, ptr %3257, align 4, !tbaa !67
  %3259 = getelementptr inbounds %struct.Object, ptr %3256, i64 0, i32 98, i64 1
  %3260 = load float, ptr %3259, align 4, !tbaa !67
  %3261 = getelementptr inbounds %struct.Object, ptr %3256, i64 0, i32 98, i64 2
  %3262 = load float, ptr %3261, align 4, !tbaa !67
  %3263 = getelementptr inbounds %struct.Object, ptr %3256, i64 0, i32 98, i64 3
  %3264 = load float, ptr %3263, align 4, !tbaa !67
  %3265 = fcmp olt float %3264, 0.000000e+00
  br i1 %3265, label %3269, label %3266

3266:                                             ; preds = %3253
  %3267 = fcmp ogt float %3264, 1.000000e+00
  br i1 %3267, label %3268, label %3269

3268:                                             ; preds = %3266
  br label %3269

3269:                                             ; preds = %3253, %3266, %3268
  %3270 = phi float [ 1.000000e+00, %3268 ], [ %3264, %3266 ], [ 0.000000e+00, %3253 ]
  %3271 = load float, ptr %1, align 4, !tbaa !67
  %3272 = fmul float %3258, %3271
  store float %3272, ptr %1, align 4, !tbaa !67
  %3273 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  %3274 = load float, ptr %3273, align 4, !tbaa !67
  %3275 = fmul float %3260, %3274
  store float %3275, ptr %3273, align 4, !tbaa !67
  %3276 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 2
  %3277 = load float, ptr %3276, align 4, !tbaa !67
  %3278 = fmul float %3262, %3277
  store float %3278, ptr %3276, align 4, !tbaa !67
  %3279 = load i32, ptr %24, align 8, !tbaa !110
  %3280 = and i32 %3279, 65536
  %3281 = icmp eq i32 %3280, 0
  br i1 %3281, label %3285, label %3282

3282:                                             ; preds = %3269
  %3283 = load float, ptr %2882, align 4, !tbaa !111
  %3284 = fmul float %3270, %3283
  store float %3284, ptr %2882, align 4, !tbaa !111
  br label %3285

3285:                                             ; preds = %3269, %3282, %3250, %3240, %3235
  %3286 = load float, ptr %2882, align 4, !tbaa !111
  %3287 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 3
  store float %3286, ptr %3287, align 4, !tbaa !67
  br label %3288

3288:                                             ; preds = %320, %304, %287, %278, %229, %224, %3285, %481
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

declare i32 @sss_pass_done(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #3

declare i32 @sample_sss(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local float @RE_lamp_get_data(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr noundef %5) local_unnamed_addr #5 {
  %7 = getelementptr inbounds float, ptr %2, i64 2
  store float 0.000000e+00, ptr %7, align 4, !tbaa !67
  %8 = getelementptr inbounds float, ptr %2, i64 1
  store float 0.000000e+00, ptr %8, align 4, !tbaa !67
  store float 0.000000e+00, ptr %2, align 4, !tbaa !67
  %9 = getelementptr inbounds float, ptr %2, i64 3
  store float 1.000000e+00, ptr %9, align 4, !tbaa !67
  %10 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %11 = load float, ptr %10, align 4, !tbaa !67
  store float %11, ptr %3, align 4, !tbaa !67
  %12 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !67
  %14 = getelementptr inbounds float, ptr %3, i64 1
  store float %13, ptr %14, align 4, !tbaa !67
  %15 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !67
  %17 = getelementptr inbounds float, ptr %3, i64 2
  store float %16, ptr %17, align 4, !tbaa !67
  store float 1.000000e+00, ptr %4, align 4, !tbaa !67
  %18 = getelementptr inbounds float, ptr %5, i64 3
  store float 1.000000e+00, ptr %18, align 4, !tbaa !67
  %19 = getelementptr inbounds float, ptr %5, i64 2
  store float 1.000000e+00, ptr %19, align 4, !tbaa !67
  %20 = getelementptr inbounds float, ptr %5, i64 1
  store float 1.000000e+00, ptr %20, align 4, !tbaa !67
  store float 1.000000e+00, ptr %5, align 4, !tbaa !67
  %21 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %22 = load i16, ptr %21, align 8, !tbaa !194
  %23 = icmp eq i16 %22, 10
  br i1 %23, label %24, label %104

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %26 = load ptr, ptr %25, align 8, !tbaa !195
  %27 = getelementptr inbounds %struct.Lamp, ptr %26, i64 0, i32 7
  %28 = load float, ptr %27, align 4, !tbaa !196
  %29 = getelementptr inbounds %struct.Lamp, ptr %26, i64 0, i32 15
  %30 = load float, ptr %29, align 4, !tbaa !198
  %31 = fmul float %28, %30
  store float %31, ptr %2, align 4, !tbaa !67
  %32 = getelementptr inbounds %struct.Lamp, ptr %26, i64 0, i32 8
  %33 = load float, ptr %32, align 8, !tbaa !199
  %34 = load float, ptr %29, align 4, !tbaa !198
  %35 = fmul float %33, %34
  store float %35, ptr %8, align 4, !tbaa !67
  %36 = getelementptr inbounds %struct.Lamp, ptr %26, i64 0, i32 9
  %37 = load float, ptr %36, align 4, !tbaa !200
  %38 = load float, ptr %29, align 4, !tbaa !198
  %39 = fmul float %37, %38
  store float %39, ptr %7, align 4, !tbaa !67
  %40 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !34
  %41 = and i32 %40, 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %24, %47
  %44 = phi ptr [ %45, %47 ], [ getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 66), %24 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !69
  %46 = icmp eq ptr %45, null
  br i1 %46, label %101, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.GroupObject, ptr %45, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !201
  %50 = getelementptr inbounds %struct.ID, ptr %49, i64 0, i32 4, i64 2
  %51 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %50, ptr noundef nonnull dereferenceable(9) @.str) #13
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %43, !llvm.loop !202

53:                                               ; preds = %47
  %54 = tail call fastcc float @lamp_get_data_internal(ptr noundef %0, ptr noundef nonnull %45, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %101

55:                                               ; preds = %24
  %56 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 121
  %57 = load ptr, ptr %56, align 8, !tbaa !56
  %58 = icmp eq ptr %57, null
  br i1 %58, label %71, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.Group, ptr %57, i64 0, i32 1
  br label %61

61:                                               ; preds = %65, %59
  %62 = phi ptr [ %60, %59 ], [ %63, %65 ]
  %63 = load ptr, ptr %62, align 8, !tbaa !69
  %64 = icmp eq ptr %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.GroupObject, ptr %63, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !201
  %68 = icmp eq ptr %67, %1
  br i1 %68, label %69, label %61, !llvm.loop !203

69:                                               ; preds = %65
  %70 = tail call fastcc float @lamp_get_data_internal(ptr noundef %0, ptr noundef nonnull %63, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %101

71:                                               ; preds = %61, %55
  %72 = load ptr, ptr %0, align 8, !tbaa !58
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %81, %75, %71
  br label %91

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.Material, ptr %72, i64 0, i32 105
  %77 = load ptr, ptr %76, align 8, !tbaa !59
  %78 = icmp eq ptr %77, null
  br i1 %78, label %74, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.Group, ptr %77, i64 0, i32 1
  br label %81

81:                                               ; preds = %85, %79
  %82 = phi ptr [ %80, %79 ], [ %83, %85 ]
  %83 = load ptr, ptr %82, align 8, !tbaa !69
  %84 = icmp eq ptr %83, null
  br i1 %84, label %74, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.GroupObject, ptr %83, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !201
  %88 = icmp eq ptr %87, %1
  br i1 %88, label %89, label %81, !llvm.loop !204

89:                                               ; preds = %85
  %90 = tail call fastcc float @lamp_get_data_internal(ptr noundef nonnull %0, ptr noundef nonnull %83, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %101

91:                                               ; preds = %74, %95
  %92 = phi ptr [ %93, %95 ], [ getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 66), %74 ]
  %93 = load ptr, ptr %92, align 8, !tbaa !69
  %94 = icmp eq ptr %93, null
  br i1 %94, label %101, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.GroupObject, ptr %93, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !201
  %98 = icmp eq ptr %97, %1
  br i1 %98, label %99, label %91, !llvm.loop !205

99:                                               ; preds = %95
  %100 = tail call fastcc float @lamp_get_data_internal(ptr noundef nonnull %0, ptr noundef nonnull %93, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %101

101:                                              ; preds = %43, %91, %99, %89, %69, %53
  %102 = phi float [ %54, %53 ], [ %70, %69 ], [ %90, %89 ], [ %100, %99 ], [ undef, %91 ], [ 0.000000e+00, %43 ]
  %103 = phi i1 [ false, %53 ], [ false, %69 ], [ false, %89 ], [ false, %99 ], [ true, %91 ], [ false, %43 ]
  br i1 %103, label %104, label %105

104:                                              ; preds = %101, %6
  br label %105

105:                                              ; preds = %101, %104
  %106 = phi float [ %102, %101 ], [ 0.000000e+00, %104 ]
  ret float %106
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc float @lamp_get_data_internal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr noundef %5) unnamed_addr #5 {
  %7 = alloca [4 x float], align 16
  %8 = getelementptr inbounds %struct.GroupObject, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  %10 = icmp eq ptr %9, null
  br i1 %10, label %111, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.LampRen, ptr %9, i64 0, i32 6
  %13 = load i16, ptr %12, align 8, !tbaa !72
  %14 = icmp eq i16 %13, 5
  br i1 %14, label %111, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.LampRen, ptr %9, i64 0, i32 7
  %17 = load i32, ptr %16, align 4, !tbaa !74
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.LampRen, ptr %9, i64 0, i32 17
  %22 = load i32, ptr %21, align 4, !tbaa !78
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !79
  %25 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %24, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !80
  %27 = and i32 %26, %22
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %111, label %29

29:                                               ; preds = %20, %15
  %30 = getelementptr inbounds %struct.LampRen, ptr %9, i64 0, i32 17
  %31 = load i32, ptr %30, align 4, !tbaa !78
  %32 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 117
  %33 = load i32, ptr %32, align 8, !tbaa !82
  %34 = and i32 %33, %31
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %111, label %36

36:                                               ; preds = %29
  %37 = and i32 %17, 256
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  tail call void @do_lamp_tex(ptr noundef nonnull %9, ptr noundef %3, ptr noundef %0, ptr noundef %2, i32 noundef 256) #12
  br label %40

40:                                               ; preds = %39, %36
  %41 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  %42 = tail call float @lamp_get_visibility(ptr noundef nonnull %9, ptr noundef nonnull %41, ptr noundef %3, ptr noundef %4)
  %43 = fcmp oeq float %42, 0.000000e+00
  br i1 %43, label %111, label %44

44:                                               ; preds = %40
  %45 = load i16, ptr %12, align 8, !tbaa !72
  switch i16 %45, label %46 [
    i16 3, label %111
    i16 2, label %50
  ]

46:                                               ; preds = %44
  %47 = load i32, ptr %16, align 4, !tbaa !74
  %48 = and i32 %47, 8192
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %111, label %50

50:                                               ; preds = %44, %46
  %51 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !34
  %52 = and i32 %51, 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %111

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %56 = load float, ptr %55, align 4, !tbaa !67
  %57 = load float, ptr %3, align 4, !tbaa !67
  %58 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %59 = load float, ptr %58, align 4, !tbaa !67
  %60 = getelementptr inbounds float, ptr %3, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !67
  %62 = fmul float %59, %61
  %63 = tail call float @llvm.fmuladd.f32(float %56, float %57, float %62)
  %64 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %65 = load float, ptr %64, align 4, !tbaa !67
  %66 = getelementptr inbounds float, ptr %3, i64 2
  %67 = load float, ptr %66, align 4, !tbaa !67
  %68 = tail call float @llvm.fmuladd.f32(float %65, float %67, float %63)
  %69 = fcmp ogt float %68, 0.000000e+00
  br i1 %69, label %70, label %111

70:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #12
  %71 = getelementptr inbounds %struct.LampRen, ptr %9, i64 0, i32 12
  %72 = load float, ptr %71, align 8, !tbaa !148
  store float %72, ptr %5, align 4, !tbaa !67
  %73 = getelementptr inbounds %struct.LampRen, ptr %9, i64 0, i32 13
  %74 = load float, ptr %73, align 4, !tbaa !149
  %75 = getelementptr inbounds float, ptr %5, i64 1
  store float %74, ptr %75, align 4, !tbaa !67
  %76 = getelementptr inbounds %struct.LampRen, ptr %9, i64 0, i32 14
  %77 = load float, ptr %76, align 8, !tbaa !150
  %78 = getelementptr inbounds float, ptr %5, i64 2
  store float %77, ptr %78, align 4, !tbaa !67
  %79 = load i32, ptr %16, align 4, !tbaa !74
  %80 = and i32 %79, 65536
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %70
  tail call void @do_lamp_tex(ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef %0, ptr noundef nonnull %5, i32 noundef 65536) #12
  br label %83

83:                                               ; preds = %82, %70
  %84 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 108
  %85 = load i32, ptr %84, align 8, !tbaa !129
  call void @lamp_get_shadow(ptr noundef nonnull %9, ptr noundef %0, float noundef %68, ptr noundef nonnull %7, i32 noundef %85)
  %86 = load float, ptr %7, align 16, !tbaa !67
  %87 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  %88 = load float, ptr %87, align 4, !tbaa !67
  %89 = fneg float %86
  %90 = call float @llvm.fmuladd.f32(float %89, float %88, float 1.000000e+00)
  %91 = load float, ptr %5, align 4, !tbaa !67
  %92 = fsub float 1.000000e+00, %91
  %93 = fneg float %90
  %94 = call float @llvm.fmuladd.f32(float %93, float %92, float 1.000000e+00)
  store float %94, ptr %5, align 4, !tbaa !67
  %95 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  %96 = load float, ptr %95, align 4, !tbaa !67
  %97 = fneg float %96
  %98 = call float @llvm.fmuladd.f32(float %97, float %88, float 1.000000e+00)
  %99 = load float, ptr %75, align 4, !tbaa !67
  %100 = fsub float 1.000000e+00, %99
  %101 = fneg float %98
  %102 = call float @llvm.fmuladd.f32(float %101, float %100, float 1.000000e+00)
  store float %102, ptr %75, align 4, !tbaa !67
  %103 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  %104 = load float, ptr %103, align 8, !tbaa !67
  %105 = fneg float %104
  %106 = call float @llvm.fmuladd.f32(float %105, float %88, float 1.000000e+00)
  %107 = load float, ptr %78, align 4, !tbaa !67
  %108 = fsub float 1.000000e+00, %107
  %109 = fneg float %106
  %110 = call float @llvm.fmuladd.f32(float %109, float %108, float 1.000000e+00)
  store float %110, ptr %78, align 4, !tbaa !67
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12
  br label %111

111:                                              ; preds = %54, %83, %40, %46, %50, %44, %6, %11, %20, %29
  %112 = phi float [ 0.000000e+00, %29 ], [ 0.000000e+00, %20 ], [ 0.000000e+00, %11 ], [ 0.000000e+00, %6 ], [ %42, %44 ], [ %42, %50 ], [ %42, %46 ], [ %42, %40 ], [ %42, %83 ], [ %42, %54 ]
  ret float %112
}

declare void @mul_m3_v3_double(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #3

declare float @shadow_halo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @do_lamp_tex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc void @add_to_diffuse(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) unnamed_addr #5 {
  %7 = alloca [3 x float], align 4
  %8 = alloca [4 x float], align 16
  %9 = load ptr, ptr %1, align 8, !tbaa !58
  %10 = getelementptr inbounds %struct.Material, ptr %9, i64 0, i32 92
  %11 = load ptr, ptr %10, align 8, !tbaa !187
  %12 = icmp eq ptr %11, null
  br i1 %12, label %89, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.Material, ptr %9, i64 0, i32 51
  %15 = load i32, ptr %14, align 4, !tbaa !102
  %16 = and i32 %15, 1048576
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %89, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.Material, ptr %9, i64 0, i32 94
  %20 = load i8, ptr %19, align 8, !tbaa !188
  %21 = icmp eq i8 %20, 3
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 32
  %24 = load float, ptr %23, align 4, !tbaa !103
  %25 = load float, ptr %0, align 4, !tbaa !67
  %26 = tail call float @llvm.fmuladd.f32(float %3, float %24, float %25)
  store float %26, ptr %0, align 4, !tbaa !67
  %27 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 33
  %28 = load float, ptr %27, align 8, !tbaa !104
  %29 = getelementptr inbounds float, ptr %0, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !67
  %31 = tail call float @llvm.fmuladd.f32(float %4, float %28, float %30)
  store float %31, ptr %29, align 4, !tbaa !67
  %32 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 34
  %33 = load float, ptr %32, align 4, !tbaa !105
  %34 = getelementptr inbounds float, ptr %0, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !67
  %36 = tail call float @llvm.fmuladd.f32(float %5, float %33, float %35)
  store float %36, ptr %34, align 4, !tbaa !67
  br label %104

37:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #12
  switch i8 %20, label %58 [
    i8 1, label %38
    i8 0, label %59
    i8 2, label %42
  ]

38:                                               ; preds = %37
  %39 = fmul float %4, 0x3FE28F5C20000000
  %40 = tail call float @llvm.fmuladd.f32(float %3, float 0x3FD3333340000000, float %39)
  %41 = tail call float @llvm.fmuladd.f32(float %5, float 0x3FBEB851E0000000, float %40)
  br label %59

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 30
  %44 = load float, ptr %43, align 4, !tbaa !67
  %45 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 16
  %46 = load float, ptr %45, align 4, !tbaa !67
  %47 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 30, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !67
  %49 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 16, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !67
  %51 = fmul float %48, %50
  %52 = tail call float @llvm.fmuladd.f32(float %44, float %46, float %51)
  %53 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 30, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !67
  %55 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 16, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !67
  %57 = tail call float @llvm.fmuladd.f32(float %54, float %56, float %52)
  br label %59

58:                                               ; preds = %37
  br label %59

59:                                               ; preds = %37, %58, %42, %38
  %60 = phi float [ 0.000000e+00, %58 ], [ %57, %42 ], [ %41, %38 ], [ %2, %37 ]
  %61 = call zeroext i8 @do_colorband(ptr noundef nonnull %11, float noundef %60, ptr noundef nonnull %8) #12
  %62 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  %63 = load float, ptr %62, align 4, !tbaa !67
  %64 = getelementptr inbounds %struct.Material, ptr %9, i64 0, i32 100
  %65 = load float, ptr %64, align 8, !tbaa !189
  %66 = fmul float %63, %65
  %67 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 32
  %68 = load float, ptr %67, align 4, !tbaa !103
  store float %68, ptr %7, align 4, !tbaa !67
  %69 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 33
  %70 = load float, ptr %69, align 8, !tbaa !104
  %71 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  store float %70, ptr %71, align 4, !tbaa !67
  %72 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 34
  %73 = load float, ptr %72, align 4, !tbaa !105
  %74 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float %73, ptr %74, align 4, !tbaa !67
  %75 = getelementptr inbounds %struct.Material, ptr %9, i64 0, i32 96
  %76 = load i8, ptr %75, align 2, !tbaa !190
  %77 = zext i8 %76 to i32
  call void @ramp_blend(i32 noundef %77, ptr noundef nonnull %7, float noundef %66, ptr noundef nonnull %8) #12
  %78 = load float, ptr %7, align 4, !tbaa !67
  %79 = load float, ptr %0, align 4, !tbaa !67
  %80 = call float @llvm.fmuladd.f32(float %3, float %78, float %79)
  store float %80, ptr %0, align 4, !tbaa !67
  %81 = load float, ptr %71, align 4, !tbaa !67
  %82 = getelementptr inbounds float, ptr %0, i64 1
  %83 = load float, ptr %82, align 4, !tbaa !67
  %84 = call float @llvm.fmuladd.f32(float %4, float %81, float %83)
  store float %84, ptr %82, align 4, !tbaa !67
  %85 = load float, ptr %74, align 4, !tbaa !67
  %86 = getelementptr inbounds float, ptr %0, i64 2
  %87 = load float, ptr %86, align 4, !tbaa !67
  %88 = call float @llvm.fmuladd.f32(float %5, float %85, float %87)
  store float %88, ptr %86, align 4, !tbaa !67
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #12
  br label %104

89:                                               ; preds = %13, %6
  %90 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 32
  %91 = load float, ptr %90, align 4, !tbaa !103
  %92 = load float, ptr %0, align 4, !tbaa !67
  %93 = tail call float @llvm.fmuladd.f32(float %3, float %91, float %92)
  store float %93, ptr %0, align 4, !tbaa !67
  %94 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 33
  %95 = load float, ptr %94, align 8, !tbaa !104
  %96 = getelementptr inbounds float, ptr %0, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !67
  %98 = tail call float @llvm.fmuladd.f32(float %4, float %95, float %97)
  store float %98, ptr %96, align 4, !tbaa !67
  %99 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 34
  %100 = load float, ptr %99, align 4, !tbaa !105
  %101 = getelementptr inbounds float, ptr %0, i64 2
  %102 = load float, ptr %101, align 4, !tbaa !67
  %103 = tail call float @llvm.fmuladd.f32(float %5, float %100, float %102)
  store float %103, ptr %101, align 4, !tbaa !67
  br label %104

104:                                              ; preds = %22, %59, %89
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc float @spec(float noundef %0, i32 noundef %1) unnamed_addr #11 {
  %3 = fcmp ult float %0, 1.000000e+00
  br i1 %3, label %4, label %56

4:                                                ; preds = %2
  %5 = fcmp ugt float %0, 0.000000e+00
  br i1 %5, label %6, label %56

6:                                                ; preds = %4
  %7 = fmul float %0, %0
  %8 = fcmp olt float %7, 0x3F847AE140000000
  %9 = select i1 %8, float 0x3F847AE140000000, float %7
  %10 = and i32 %1, 1
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, float 1.000000e+00, float %0
  %13 = and i32 %1, 2
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, float 1.000000e+00, float %9
  %16 = fmul float %12, %15
  %17 = fmul float %9, %9
  %18 = and i32 %1, 4
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, float 1.000000e+00, float %17
  %21 = fmul float %16, %20
  %22 = fmul float %17, %17
  %23 = and i32 %1, 8
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, float 1.000000e+00, float %22
  %26 = fmul float %21, %25
  %27 = fmul float %22, %22
  %28 = and i32 %1, 16
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, float 1.000000e+00, float %27
  %31 = fmul float %26, %30
  %32 = fmul float %27, %27
  %33 = fcmp olt float %32, 0x3F50624DE0000000
  %34 = select i1 %33, float 0.000000e+00, float %32
  %35 = and i32 %1, 32
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, float 1.000000e+00, float %34
  %38 = fmul float %31, %37
  %39 = fmul float %34, %34
  %40 = and i32 %1, 64
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, float 1.000000e+00, float %39
  %43 = fmul float %38, %42
  %44 = fmul float %39, %39
  %45 = and i32 %1, 128
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, float 1.000000e+00, float %44
  %48 = fmul float %43, %47
  %49 = fcmp olt float %44, 0x3F50624DE0000000
  %50 = select i1 %49, float 0.000000e+00, float %44
  %51 = and i32 %1, 256
  %52 = icmp eq i32 %51, 0
  %53 = fmul float %50, %50
  %54 = select i1 %52, float 1.000000e+00, float %53
  %55 = fmul float %48, %54
  br label %56

56:                                               ; preds = %4, %2, %6
  %57 = phi float [ %55, %6 ], [ 1.000000e+00, %2 ], [ 0.000000e+00, %4 ]
  ret float %57
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @acos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @tanf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #3

declare zeroext i8 @do_colorband(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #8

declare void @ramp_blend(i32 noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @expf(float noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !39, i64 1620}
!35 = !{!"Render", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 92, !40, i64 96, !40, i64 98, !40, i64 100, !40, i64 102, !37, i64 104, !36, i64 112, !36, i64 120, !41, i64 128, !39, i64 144, !39, i64 148, !39, i64 152, !42, i64 156, !43, i64 172, !44, i64 188, !44, i64 192, !44, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !44, i64 216, !44, i64 220, !44, i64 224, !44, i64 228, !44, i64 232, !44, i64 236, !37, i64 240, !37, i64 252, !37, i64 288, !37, i64 352, !37, i64 416, !37, i64 480, !44, i64 544, !44, i64 548, !36, i64 552, !37, i64 560, !37, i64 816, !36, i64 1072, !37, i64 1080, !36, i64 1088, !36, i64 1096, !45, i64 1104, !52, i64 5088, !36, i64 5616, !39, i64 5624, !39, i64 5628, !41, i64 5632, !36, i64 5648, !36, i64 5656, !36, i64 5664, !36, i64 5672, !44, i64 5680, !36, i64 5688, !41, i64 5696, !44, i64 5712, !44, i64 5716, !39, i64 5720, !39, i64 5724, !39, i64 5728, !39, i64 5732, !39, i64 5736, !36, i64 5744, !41, i64 5752, !41, i64 5768, !41, i64 5784, !36, i64 5800, !41, i64 5808, !39, i64 5824, !36, i64 5832, !36, i64 5840, !36, i64 5848, !36, i64 5856, !36, i64 5864, !41, i64 5872, !36, i64 5888, !41, i64 5896, !41, i64 5912, !36, i64 5928, !36, i64 5936, !36, i64 5944, !36, i64 5952, !36, i64 5960, !36, i64 5968, !36, i64 5976, !36, i64 5984, !36, i64 5992, !36, i64 6000, !36, i64 6008, !36, i64 6016, !36, i64 6024, !36, i64 6032, !36, i64 6040, !36, i64 6048, !36, i64 6056, !54, i64 6064, !36, i64 6216, !36, i64 6224, !36, i64 6232}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!"ListBase", !36, i64 0, !36, i64 8}
!42 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!43 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!44 = !{!"float", !37, i64 0}
!45 = !{!"RenderData", !46, i64 0, !36, i64 248, !36, i64 256, !49, i64 264, !50, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !44, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !40, i64 432, !40, i64 434, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !39, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !39, i64 484, !39, i64 488, !40, i64 492, !40, i64 494, !39, i64 496, !39, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !43, i64 544, !43, i64 560, !42, i64 576, !41, i64 592, !40, i64 608, !40, i64 610, !44, i64 612, !44, i64 616, !44, i64 620, !44, i64 624, !39, i64 628, !44, i64 632, !44, i64 636, !44, i64 640, !44, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !44, i64 660, !44, i64 664, !40, i64 668, !40, i64 670, !44, i64 672, !44, i64 676, !37, i64 680, !39, i64 1704, !40, i64 1708, !40, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !40, i64 2524, !40, i64 2526, !44, i64 2528, !44, i64 2532, !40, i64 2536, !40, i64 2538, !44, i64 2540, !40, i64 2544, !40, i64 2546, !39, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !44, i64 2560, !44, i64 2564, !36, i64 2568, !39, i64 2576, !44, i64 2580, !37, i64 2584, !51, i64 2616, !39, i64 3976, !39, i64 3980}
!46 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !40, i64 8, !40, i64 10, !44, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !47, i64 24, !48, i64 184}
!47 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !44, i64 136, !44, i64 140, !36, i64 144, !36, i64 152}
!48 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!49 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !40, i64 48, !40, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!50 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !44, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!51 = !{!"BakeData", !46, i64 0, !37, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !44, i64 1280, !44, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!52 = !{!"World", !53, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !44, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !44, i64 216, !44, i64 220, !44, i64 224, !44, i64 228, !44, i64 232, !44, i64 236, !44, i64 240, !44, i64 244, !44, i64 248, !44, i64 252, !44, i64 256, !44, i64 260, !40, i64 264, !40, i64 266, !40, i64 268, !40, i64 270, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !44, i64 296, !44, i64 300, !44, i64 304, !44, i64 308, !44, i64 312, !44, i64 316, !44, i64 320, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !40, i64 504, !40, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!53 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!54 = !{!"RenderStats", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !37, i64 40, !55, i64 48, !55, i64 56, !36, i64 64, !36, i64 72, !37, i64 80, !44, i64 144, !44, i64 148}
!55 = !{!"double", !37, i64 0}
!56 = !{!57, !36, i64 1456}
!57 = !{!"ShadeInput", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !37, i64 44, !40, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !40, i64 88, !40, i64 90, !40, i64 92, !40, i64 94, !40, i64 96, !37, i64 100, !37, i64 112, !37, i64 124, !37, i64 136, !37, i64 148, !39, i64 160, !39, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !37, i64 192, !37, i64 204, !37, i64 216, !44, i64 228, !44, i64 232, !44, i64 236, !44, i64 240, !44, i64 244, !44, i64 248, !44, i64 252, !44, i64 256, !44, i64 260, !44, i64 264, !44, i64 268, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !44, i64 308, !44, i64 312, !44, i64 316, !39, i64 320, !37, i64 324, !37, i64 336, !37, i64 348, !37, i64 360, !37, i64 372, !37, i64 384, !37, i64 400, !37, i64 416, !44, i64 428, !37, i64 432, !37, i64 444, !37, i64 456, !44, i64 472, !37, i64 476, !37, i64 492, !37, i64 504, !37, i64 520, !37, i64 904, !39, i64 1096, !39, i64 1100, !39, i64 1104, !39, i64 1108, !37, i64 1112, !37, i64 1124, !37, i64 1136, !37, i64 1148, !37, i64 1160, !37, i64 1172, !37, i64 1184, !37, i64 1196, !37, i64 1208, !37, i64 1220, !37, i64 1232, !37, i64 1244, !44, i64 1256, !44, i64 1260, !37, i64 1264, !37, i64 1276, !37, i64 1288, !37, i64 1300, !37, i64 1312, !37, i64 1324, !44, i64 1336, !44, i64 1340, !37, i64 1344, !37, i64 1356, !37, i64 1368, !39, i64 1380, !39, i64 1384, !39, i64 1388, !37, i64 1392, !39, i64 1404, !39, i64 1408, !39, i64 1412, !37, i64 1416, !44, i64 1428, !37, i64 1432, !37, i64 1433, !40, i64 1434, !40, i64 1436, !40, i64 1438, !39, i64 1440, !39, i64 1444, !39, i64 1448, !39, i64 1452, !36, i64 1456, !36, i64 1464}
!58 = !{!57, !36, i64 0}
!59 = !{!60, !36, i64 784}
!60 = !{!"Material", !53, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !44, i64 132, !44, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !44, i64 200, !44, i64 204, !44, i64 208, !44, i64 212, !44, i64 216, !44, i64 220, !61, i64 224, !62, i64 312, !44, i64 328, !44, i64 332, !44, i64 336, !44, i64 340, !44, i64 344, !44, i64 348, !44, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !37, i64 362, !37, i64 363, !44, i64 364, !44, i64 368, !40, i64 372, !40, i64 374, !44, i64 376, !44, i64 380, !44, i64 384, !44, i64 388, !40, i64 392, !40, i64 394, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !44, i64 420, !44, i64 424, !44, i64 428, !44, i64 432, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !44, i64 456, !37, i64 460, !44, i64 524, !44, i64 528, !44, i64 532, !39, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !37, i64 550, !37, i64 551, !40, i64 552, !40, i64 554, !44, i64 556, !44, i64 560, !37, i64 564, !44, i64 580, !44, i64 584, !40, i64 588, !40, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !40, i64 612, !40, i64 614, !44, i64 616, !44, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !44, i64 800, !44, i64 804, !44, i64 808, !44, i64 812, !44, i64 816, !40, i64 820, !40, i64 822, !37, i64 824, !37, i64 836, !44, i64 848, !44, i64 852, !44, i64 856, !44, i64 860, !44, i64 864, !44, i64 868, !44, i64 872, !40, i64 876, !40, i64 878, !39, i64 880, !40, i64 884, !40, i64 886, !37, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !37, i64 914, !36, i64 920, !41, i64 928}
!61 = !{!"VolumeSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !44, i64 52, !44, i64 56, !44, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !44, i64 72, !44, i64 76, !44, i64 80, !44, i64 84}
!62 = !{!"GameSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!63 = !{!35, !44, i64 5308}
!64 = !{!35, !44, i64 5312}
!65 = !{!35, !40, i64 5222}
!66 = !{!35, !44, i64 5316}
!67 = !{!44, !44, i64 0}
!68 = !{!35, !44, i64 5304}
!69 = !{!36, !36, i64 0}
!70 = !{!71, !36, i64 24}
!71 = !{!"GroupObject", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32, !37, i64 34}
!72 = !{!73, !40, i64 40}
!73 = !{!"LampRen", !36, i64 0, !36, i64 8, !44, i64 16, !44, i64 20, !44, i64 24, !37, i64 28, !40, i64 40, !39, i64 44, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !44, i64 64, !44, i64 68, !44, i64 72, !44, i64 76, !44, i64 80, !39, i64 84, !44, i64 88, !44, i64 92, !37, i64 96, !44, i64 108, !44, i64 112, !44, i64 116, !44, i64 120, !44, i64 124, !44, i64 128, !40, i64 132, !44, i64 136, !44, i64 140, !36, i64 144, !40, i64 152, !40, i64 154, !44, i64 156, !40, i64 160, !40, i64 162, !40, i64 164, !40, i64 166, !40, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !40, i64 188, !40, i64 190, !40, i64 192, !40, i64 194, !40, i64 196, !40, i64 198, !40, i64 200, !37, i64 202, !37, i64 204, !44, i64 208, !44, i64 212, !44, i64 216, !44, i64 220, !36, i64 224, !36, i64 232, !36, i64 240, !37, i64 248, !44, i64 284, !37, i64 288, !44, i64 300, !37, i64 304, !37, i64 368, !37, i64 404, !44, i64 500, !36, i64 504, !37, i64 512, !37, i64 520, !39, i64 664, !39, i64 668}
!74 = !{!73, !39, i64 44}
!75 = !{!73, !40, i64 164}
!76 = !{!73, !44, i64 80}
!77 = !{!57, !36, i64 8}
!78 = !{!73, !39, i64 84}
!79 = !{!57, !36, i64 24}
!80 = !{!81, !39, i64 48}
!81 = !{!"ObjectInstanceRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !39, i64 44, !39, i64 48, !37, i64 52, !37, i64 116, !37, i64 180, !40, i64 216, !37, i64 220, !37, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !39, i64 264, !36, i64 272, !39, i64 280}
!82 = !{!57, !39, i64 1440}
!83 = !{!35, !39, i64 1624}
!84 = !{!73, !44, i64 300}
!85 = !{!55, !55, i64 0}
!86 = !{!35, !40, i64 5290}
!87 = !{!73, !44, i64 24}
!88 = !{!73, !36, i64 232}
!89 = !{!90, !40, i64 2}
!90 = !{!"ShadBuf", !40, i64 0, !40, i64 2, !40, i64 4, !37, i64 8, !37, i64 72, !37, i64 136, !36, i64 200, !36, i64 208, !44, i64 216, !44, i64 220, !44, i64 224, !44, i64 228, !44, i64 232, !37, i64 236, !39, i64 248, !39, i64 252, !41, i64 256, !37, i64 272}
!91 = !{!73, !44, i64 48}
!92 = !{!73, !44, i64 52}
!93 = !{!73, !44, i64 56}
!94 = distinct !{!94, !95, !96}
!95 = !{!"llvm.loop.mustprogress"}
!96 = !{!"llvm.loop.unroll.disable"}
!97 = !{!57, !40, i64 96}
!98 = !{!99, !37, i64 57}
!99 = !{!"VlakRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !37, i64 56, !37, i64 57, !37, i64 58, !39, i64 60}
!100 = !{!57, !44, i64 1256}
!101 = !{!57, !44, i64 1260}
!102 = !{!60, !39, i64 396}
!103 = !{!57, !44, i64 228}
!104 = !{!57, !44, i64 232}
!105 = !{!57, !44, i64 236}
!106 = !{!57, !44, i64 296}
!107 = !{!60, !40, i64 588}
!108 = !{!60, !44, i64 336}
!109 = !{!60, !44, i64 340}
!110 = !{!57, !39, i64 160}
!111 = !{!112, !44, i64 32}
!112 = !{!"ShadeResult", !37, i64 0, !37, i64 16, !44, i64 32, !44, i64 36, !44, i64 40, !37, i64 44, !37, i64 56, !37, i64 68, !37, i64 80, !37, i64 92, !37, i64 108, !37, i64 120, !37, i64 132, !37, i64 144, !37, i64 156, !37, i64 168, !37, i64 180, !37, i64 196}
!113 = !{!60, !40, i64 394}
!114 = !{!57, !36, i64 32}
!115 = !{!116, !36, i64 16}
!116 = !{!"ObjectRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !37, i64 56, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !39, i64 168, !39, i64 172, !39, i64 176, !37, i64 180, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272}
!117 = !{!35, !40, i64 5418}
!118 = !{!60, !44, i64 180}
!119 = !{!35, !44, i64 5404}
!120 = !{!57, !44, i64 276}
!121 = !{!57, !44, i64 300}
!122 = !{!73, !36, i64 504}
!123 = !{!57, !40, i64 1434}
!124 = !{!57, !40, i64 1436}
!125 = !{!126, !39, i64 0}
!126 = !{!"LampShadowSubSample", !39, i64 0, !37, i64 4}
!127 = !{!57, !39, i64 1404}
!128 = !{!60, !44, i64 528}
!129 = !{!57, !39, i64 1408}
!130 = !{!73, !40, i64 132}
!131 = !{!73, !44, i64 136}
!132 = !{!73, !44, i64 140}
!133 = !{!73, !44, i64 116}
!134 = !{!73, !36, i64 144}
!135 = !{!73, !44, i64 88}
!136 = !{!73, !44, i64 92}
!137 = !{!57, !39, i64 1448}
!138 = !{!60, !40, i64 884}
!139 = !{!73, !44, i64 76}
!140 = distinct !{!140, !95, !96}
!141 = !{!35, !44, i64 5368}
!142 = !{!35, !40, i64 5380}
!143 = !{!60, !40, i64 876}
!144 = !{!60, !44, i64 864}
!145 = !{!57, !44, i64 280}
!146 = !{!57, !39, i64 1452}
!147 = !{!57, !39, i64 1412}
!148 = !{!73, !44, i64 64}
!149 = !{!73, !44, i64 68}
!150 = !{!73, !44, i64 72}
!151 = !{!60, !44, i64 448}
!152 = !{!57, !44, i64 1428}
!153 = !{!154, !44, i64 1268}
!154 = !{!"Object", !53, i64 0, !36, i64 120, !36, i64 128, !40, i64 136, !40, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !155, i64 312, !36, i64 360, !41, i64 368, !41, i64 384, !41, i64 400, !41, i64 416, !39, i64 432, !39, i64 436, !36, i64 440, !36, i64 448, !39, i64 456, !39, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !44, i64 616, !44, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !39, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !37, i64 966, !37, i64 967, !39, i64 968, !39, i64 972, !39, i64 976, !39, i64 980, !39, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !37, i64 1042, !37, i64 1043, !40, i64 1044, !37, i64 1046, !37, i64 1047, !44, i64 1048, !44, i64 1052, !41, i64 1056, !41, i64 1072, !41, i64 1088, !41, i64 1104, !44, i64 1120, !40, i64 1124, !40, i64 1126, !37, i64 1128, !39, i64 1144, !39, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !40, i64 1162, !37, i64 1164, !41, i64 1176, !41, i64 1192, !41, i64 1208, !41, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !40, i64 1266, !44, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !156, i64 1304, !156, i64 1312, !39, i64 1320, !39, i64 1324, !41, i64 1328, !41, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !41, i64 1400, !36, i64 1416}
!155 = !{!"bAnimVizSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!156 = !{!"long", !37, i64 0}
!157 = !{!60, !44, i64 524}
!158 = !{!73, !36, i64 240}
!159 = !{!73, !40, i64 200}
!160 = distinct !{!160, !95, !96}
!161 = !{!73, !44, i64 500}
!162 = !{!73, !44, i64 60}
!163 = !{!60, !40, i64 552}
!164 = !{!60, !44, i64 556}
!165 = !{!60, !44, i64 584}
!166 = !{!57, !44, i64 240}
!167 = !{!57, !44, i64 244}
!168 = !{!57, !44, i64 248}
!169 = !{!57, !44, i64 304}
!170 = !{!57, !39, i64 320}
!171 = !{!60, !40, i64 554}
!172 = !{!60, !44, i64 560}
!173 = !{!60, !44, i64 580}
!174 = !{!60, !36, i64 600}
!175 = !{!60, !37, i64 609}
!176 = !{!60, !44, i64 620}
!177 = !{!60, !37, i64 611}
!178 = distinct !{!178, !95, !96}
!179 = !{!35, !44, i64 5264}
!180 = !{!35, !44, i64 5272}
!181 = !{!35, !44, i64 5276}
!182 = !{!57, !44, i64 288}
!183 = !{!35, !44, i64 5400}
!184 = !{!57, !44, i64 264}
!185 = !{!57, !44, i64 272}
!186 = !{!57, !44, i64 268}
!187 = !{!60, !36, i64 592}
!188 = !{!60, !37, i64 608}
!189 = !{!60, !44, i64 616}
!190 = !{!60, !37, i64 610}
!191 = !{!57, !44, i64 252}
!192 = !{!57, !44, i64 256}
!193 = !{!57, !44, i64 260}
!194 = !{!154, !40, i64 136}
!195 = !{!154, !36, i64 296}
!196 = !{!197, !44, i64 140}
!197 = !{!"Lamp", !53, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !39, i64 132, !40, i64 136, !40, i64 138, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !36, i64 200, !40, i64 208, !40, i64 210, !44, i64 212, !44, i64 216, !44, i64 220, !44, i64 224, !44, i64 228, !44, i64 232, !44, i64 236, !40, i64 240, !40, i64 242, !40, i64 244, !40, i64 246, !37, i64 248, !37, i64 249, !40, i64 250, !40, i64 252, !40, i64 254, !40, i64 256, !40, i64 258, !44, i64 260, !44, i64 264, !44, i64 268, !44, i64 272, !40, i64 276, !40, i64 278, !40, i64 280, !40, i64 282, !40, i64 284, !40, i64 286, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !44, i64 308, !44, i64 312, !44, i64 316, !44, i64 320, !44, i64 324, !44, i64 328, !44, i64 332, !44, i64 336, !40, i64 340, !37, i64 342, !36, i64 344, !37, i64 352, !40, i64 496, !40, i64 498, !37, i64 500, !36, i64 504, !36, i64 512}
!198 = !{!197, !44, i64 172}
!199 = !{!197, !44, i64 144}
!200 = !{!197, !44, i64 148}
!201 = !{!71, !36, i64 16}
!202 = distinct !{!202, !95, !96}
!203 = distinct !{!203, !95, !96}
!204 = distinct !{!204, !95, !96}
!205 = distinct !{!205, !95, !96}
