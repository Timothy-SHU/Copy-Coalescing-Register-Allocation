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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
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

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local float @mistfactor(float noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 31), align 4, !tbaa !63
  %4 = fsub float %0, %3
  %5 = fcmp ogt float %4, 0.000000e+00
  br i1 %5, label %6, label %44

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
  %15 = tail call float @sqrtf(float noundef %10) #17
  br label %16

16:                                               ; preds = %6, %9, %14, %12
  %17 = phi float [ %13, %12 ], [ %15, %14 ], [ %10, %9 ], [ 1.000000e+00, %6 ]
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

44:                                               ; preds = %2, %22, %39, %37, %16
  %45 = phi float [ %43, %39 ], [ %17, %37 ], [ %17, %16 ], [ 0.000000e+00, %22 ], [ 0.000000e+00, %2 ]
  %46 = fsub float 1.000000e+00, %45
  %47 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 30), align 8, !tbaa !68
  %48 = fsub float 1.000000e+00, %47
  %49 = fmul float %46, %48
  ret float %49
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @renderspothalo(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, float noundef %2) local_unnamed_addr #5 {
  %4 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  %5 = fcmp oeq float %2, 0.000000e+00
  br i1 %5, label %86, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @get_lights(ptr noundef %0) #19
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  %9 = icmp eq ptr %8, null
  br i1 %9, label %81, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %12 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %13 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 117
  %14 = getelementptr inbounds float, ptr %1, i64 1
  %15 = getelementptr inbounds float, ptr %1, i64 2
  %16 = getelementptr inbounds float, ptr %1, i64 3
  br label %17

17:                                               ; preds = %10, %78
  %18 = phi ptr [ %8, %10 ], [ %79, %78 ]
  %19 = getelementptr inbounds %struct.GroupObject, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !70
  %21 = icmp eq ptr %20, null
  br i1 %21, label %78, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.LampRen, ptr %20, i64 0, i32 6
  %24 = load i16, ptr %23, align 8, !tbaa !72
  %25 = icmp eq i16 %24, 2
  br i1 %25, label %26, label %78

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.LampRen, ptr %20, i64 0, i32 7
  %28 = load i32, ptr %27, align 4, !tbaa !74
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %78, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.LampRen, ptr %20, i64 0, i32 36
  %33 = load i16, ptr %32, align 4, !tbaa !75
  %34 = icmp eq i16 %33, 3
  br i1 %34, label %78, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.LampRen, ptr %20, i64 0, i32 16
  %37 = load float, ptr %36, align 8, !tbaa !76
  %38 = fcmp ogt float %37, 0.000000e+00
  br i1 %38, label %39, label %78

39:                                               ; preds = %35
  %40 = and i32 %28, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %11, align 8, !tbaa !77
  %44 = icmp eq ptr %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.LampRen, ptr %20, i64 0, i32 17
  %47 = load i32, ptr %46, align 4, !tbaa !78
  %48 = load ptr, ptr %12, align 8, !tbaa !79
  %49 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %48, i64 0, i32 7
  %50 = load i32, ptr %49, align 8, !tbaa !80
  %51 = and i32 %50, %47
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %78, label %53

53:                                               ; preds = %42, %45, %39
  %54 = getelementptr inbounds %struct.LampRen, ptr %20, i64 0, i32 17
  %55 = load i32, ptr %54, align 4, !tbaa !78
  %56 = load i32, ptr %13, align 8, !tbaa !82
  %57 = and i32 %56, %55
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %78, label %59

59:                                               ; preds = %53
  call fastcc void @spothalo(ptr noundef nonnull %20, ptr noundef nonnull %0, ptr noundef nonnull %4) #19
  %60 = load float, ptr %4, align 4, !tbaa !67
  %61 = fcmp ogt float %60, 0.000000e+00
  br i1 %61, label %62, label %78

62:                                               ; preds = %59
  %63 = fmul float %60, %2
  %64 = getelementptr inbounds %struct.LampRen, ptr %20, i64 0, i32 8
  %65 = load float, ptr %64, align 8, !tbaa !83
  %66 = load float, ptr %1, align 4, !tbaa !67
  %67 = tail call float @llvm.fmuladd.f32(float %63, float %65, float %66)
  store float %67, ptr %1, align 4, !tbaa !67
  %68 = getelementptr inbounds %struct.LampRen, ptr %20, i64 0, i32 9
  %69 = load float, ptr %68, align 4, !tbaa !84
  %70 = load float, ptr %14, align 4, !tbaa !67
  %71 = tail call float @llvm.fmuladd.f32(float %63, float %69, float %70)
  store float %71, ptr %14, align 4, !tbaa !67
  %72 = getelementptr inbounds %struct.LampRen, ptr %20, i64 0, i32 10
  %73 = load float, ptr %72, align 8, !tbaa !85
  %74 = load float, ptr %15, align 4, !tbaa !67
  %75 = tail call float @llvm.fmuladd.f32(float %63, float %73, float %74)
  store float %75, ptr %15, align 4, !tbaa !67
  %76 = load float, ptr %16, align 4, !tbaa !67
  %77 = fadd float %63, %76
  store float %77, ptr %16, align 4, !tbaa !67
  br label %78

78:                                               ; preds = %22, %26, %31, %35, %62, %59, %53, %45, %17
  %79 = load ptr, ptr %18, align 8, !tbaa !69
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %17, !llvm.loop !86

81:                                               ; preds = %78, %6
  %82 = getelementptr inbounds float, ptr %1, i64 3
  %83 = load float, ptr %82, align 4, !tbaa !67
  %84 = fcmp ogt float %83, 1.000000e+00
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store float 1.000000e+00, ptr %82, align 4, !tbaa !67
  br label %86

86:                                               ; preds = %81, %85, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @spothalo(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #5 !PGOFuncName !88 {
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x float], align 8
  %7 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  store float 0.000000e+00, ptr %2, align 4, !tbaa !67
  %8 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 16
  %9 = load float, ptr %8, align 8, !tbaa !76
  %10 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !89
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 29
  %15 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 5
  %16 = load <2 x float>, ptr %14, align 8, !tbaa !67
  %17 = load <2 x float>, ptr %15, align 4, !tbaa !67
  %18 = fsub <2 x float> %16, %17
  store <2 x float> %18, ptr %6, align 8, !tbaa !67
  %19 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 5, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !67
  %21 = fneg float %20
  %22 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float %21, ptr %22, align 8, !tbaa !67
  %23 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 59
  call void @mul_m3_v3(ptr noundef nonnull %23, ptr noundef nonnull %6) #17
  call fastcc void @copy_v3db_v3fl(ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  %24 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 62
  %25 = load float, ptr %24, align 4, !tbaa !90
  %26 = fpext float %25 to double
  %27 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  %28 = load double, ptr %27, align 16, !tbaa !91
  %29 = fmul double %28, %26
  store double %29, ptr %27, align 16, !tbaa !91
  br label %32

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 61
  call fastcc void @copy_v3db_v3fl(ptr noundef nonnull %5, ptr noundef nonnull %31) #19
  br label %32

32:                                               ; preds = %30, %13
  %33 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 30
  call fastcc void @copy_v3db_v3fl(ptr noundef nonnull %4, ptr noundef nonnull %33) #19
  %34 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 59
  call void @mul_m3_v3_double(ptr noundef nonnull %34, ptr noundef nonnull %4) #17
  %35 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 23), align 2, !tbaa !92
  %36 = and i16 %35, 1
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 5
  %40 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 5, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !67
  %42 = fneg float %41
  %43 = call float @mistfactor(float noundef %42, ptr noundef nonnull %39) #19
  %44 = fmul float %9, %43
  %45 = fcmp oeq float %44, 0.000000e+00
  br i1 %45, label %264, label %46

46:                                               ; preds = %38, %32
  %47 = phi float [ %44, %38 ], [ %9, %32 ]
  %48 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 29, i64 2
  %49 = load float, ptr %48, align 8, !tbaa !67
  %50 = fcmp oeq float %49, 0.000000e+00
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 62
  %53 = load float, ptr %52, align 4, !tbaa !90
  %54 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  %55 = load double, ptr %54, align 16, !tbaa !91
  br label %96

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 29
  %58 = load float, ptr %57, align 8, !tbaa !67
  %59 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 5
  %60 = load float, ptr %59, align 4, !tbaa !67
  %61 = fsub float %58, %60
  %62 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 29, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !67
  %64 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 5, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !67
  %66 = fsub float %63, %65
  %67 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 5, i64 2
  %68 = load float, ptr %67, align 4, !tbaa !67
  %69 = fsub float %49, %68
  %70 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 59, i64 0, i64 2
  %71 = load float, ptr %70, align 8, !tbaa !67
  %72 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 59, i64 1, i64 2
  %73 = load float, ptr %72, align 4, !tbaa !67
  %74 = fmul float %66, %73
  %75 = call float @llvm.fmuladd.f32(float %71, float %61, float %74)
  %76 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 59, i64 2, i64 2
  %77 = load float, ptr %76, align 8, !tbaa !67
  %78 = call float @llvm.fmuladd.f32(float %77, float %69, float %75)
  %79 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 62
  %80 = load float, ptr %79, align 4, !tbaa !90
  %81 = fmul float %80, %78
  %82 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 59, i64 0, i64 1
  %83 = load float, ptr %82, align 4, !tbaa !67
  %84 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 59, i64 1, i64 1
  %85 = load float, ptr %84, align 4, !tbaa !67
  %86 = fmul float %66, %85
  %87 = call float @llvm.fmuladd.f32(float %83, float %61, float %86)
  %88 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 59, i64 2, i64 1
  %89 = load float, ptr %88, align 4, !tbaa !67
  %90 = call float @llvm.fmuladd.f32(float %89, float %69, float %87)
  %91 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  %92 = load double, ptr %91, align 16, !tbaa !91
  %93 = call double @llvm.fabs.f64(double %92)
  %94 = fcmp olt double %93, 0x3E80000000000000
  br i1 %94, label %95, label %96

95:                                               ; preds = %56
  br label %96

96:                                               ; preds = %51, %56, %95
  %97 = phi double [ %92, %95 ], [ %92, %56 ], [ %55, %51 ]
  %98 = phi float [ %80, %95 ], [ %80, %56 ], [ %53, %51 ]
  %99 = phi float [ %81, %95 ], [ %81, %56 ], [ 0.000000e+00, %51 ]
  %100 = phi float [ %90, %95 ], [ %90, %56 ], [ 0.000000e+00, %51 ]
  %101 = phi i1 [ false, %95 ], [ true, %56 ], [ true, %51 ]
  %102 = fpext float %98 to double
  %103 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  %104 = fmul double %97, %102
  store double %104, ptr %103, align 16, !tbaa !91
  %105 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 4
  %106 = load float, ptr %105, align 8, !tbaa !93
  %107 = fmul float %98, %106
  %108 = load double, ptr %4, align 16, !tbaa !91
  %109 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 1
  %110 = load double, ptr %109, align 8, !tbaa !91
  %111 = fmul double %110, %110
  %112 = call double @llvm.fmuladd.f64(double %108, double %108, double %111)
  %113 = fneg double %104
  %114 = call double @llvm.fmuladd.f64(double %113, double %104, double %112)
  %115 = load <2 x double>, ptr %5, align 16, !tbaa !91
  %116 = extractelement <2 x double> %115, i64 1
  %117 = fmul double %110, %116
  %118 = extractelement <2 x double> %115, i64 0
  %119 = call double @llvm.fmuladd.f64(double %108, double %118, double %117)
  %120 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  %121 = load double, ptr %120, align 16, !tbaa !91
  %122 = call double @llvm.fmuladd.f64(double %113, double %121, double %119)
  %123 = call double @llvm.fabs.f64(double %114)
  %124 = fcmp olt double %123, 0x3CB0000000000000
  br i1 %124, label %264, label %125

125:                                              ; preds = %96
  %126 = fneg double %121
  %127 = fmul double %116, %116
  %128 = call double @llvm.fmuladd.f64(double %118, double %118, double %127)
  %129 = call double @llvm.fmuladd.f64(double %126, double %121, double %128)
  %130 = fneg double %114
  %131 = fmul double %129, %130
  %132 = call double @llvm.fmuladd.f64(double %122, double %122, double %131)
  %133 = fcmp oeq double %132, 0.000000e+00
  br i1 %133, label %134, label %139

134:                                              ; preds = %125
  %135 = fneg double %122
  %136 = fdiv double %135, %114
  %137 = insertelement <2 x double> poison, double %136, i64 0
  %138 = shufflevector <2 x double> %137, <2 x double> poison, <2 x i32> zeroinitializer
  br label %153

139:                                              ; preds = %125
  %140 = fcmp ogt double %132, 0.000000e+00
  br i1 %140, label %141, label %264

141:                                              ; preds = %139
  %142 = call double @sqrt(double noundef %132) #17
  %143 = fneg double %122
  %144 = insertelement <2 x double> poison, double %142, i64 0
  %145 = insertelement <2 x double> %144, double %143, i64 1
  %146 = insertelement <2 x double> poison, double %122, i64 0
  %147 = insertelement <2 x double> %146, double %142, i64 1
  %148 = fsub <2 x double> %145, %147
  %149 = insertelement <2 x double> poison, double %114, i64 0
  %150 = shufflevector <2 x double> %149, <2 x double> poison, <2 x i32> zeroinitializer
  %151 = fdiv <2 x double> %148, %150
  %152 = load double, ptr %103, align 16, !tbaa !91
  br label %153

153:                                              ; preds = %134, %141
  %154 = phi double [ %152, %141 ], [ %104, %134 ]
  %155 = phi <2 x double> [ %151, %141 ], [ %138, %134 ]
  %156 = extractelement <2 x double> %155, i64 0
  %157 = extractelement <2 x double> %155, i64 1
  %158 = fcmp ogt double %156, %157
  %159 = select i1 %158, double %157, double %156
  %160 = select i1 %158, double %156, double %157
  %161 = call double @llvm.fmuladd.f64(double %159, double %154, double %121)
  %162 = fptrunc double %161 to float
  %163 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %164 = call double @llvm.fmuladd.f64(double %160, double %154, double %121)
  %165 = fptrunc double %164 to float
  %166 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %167 = fcmp ugt float %162, 0.000000e+00
  %168 = fcmp ugt float %165, 0.000000e+00
  %169 = fcmp oeq double %159, %160
  %170 = select i1 %168, i1 true, i1 %169
  %171 = and i1 %167, %170
  br i1 %171, label %264, label %172

172:                                              ; preds = %153
  br i1 %101, label %173, label %186

173:                                              ; preds = %172
  %174 = fneg float %107
  %175 = fpext float %174 to double
  %176 = fsub double %175, %121
  %177 = fdiv double %176, %154
  br i1 %167, label %181, label %178

178:                                              ; preds = %173
  %179 = fcmp olt float %162, %174
  br i1 %179, label %180, label %181

180:                                              ; preds = %178
  br label %181

181:                                              ; preds = %173, %178, %180
  %182 = phi double [ %177, %180 ], [ %159, %178 ], [ %177, %173 ]
  br i1 %170, label %188, label %183

183:                                              ; preds = %181
  %184 = fcmp olt float %165, %174
  br i1 %184, label %185, label %188

185:                                              ; preds = %183
  br label %188

186:                                              ; preds = %172
  %187 = or i1 %167, %170
  br i1 %187, label %264, label %188

188:                                              ; preds = %181, %186, %185, %183
  %189 = phi double [ %182, %185 ], [ %182, %183 ], [ %159, %186 ], [ %182, %181 ]
  %190 = phi double [ %177, %185 ], [ %160, %183 ], [ %160, %186 ], [ %177, %181 ]
  %191 = fcmp olt double %189, 0.000000e+00
  %192 = fcmp olt double %190, 0.000000e+00
  %193 = select i1 %191, i1 %192, i1 false
  br i1 %193, label %264, label %194

194:                                              ; preds = %188
  %195 = select i1 %191, double 0.000000e+00, double %189
  %196 = select i1 %192, double 0.000000e+00, double %190
  %197 = fcmp oeq double %195, %196
  br i1 %197, label %264, label %198

198:                                              ; preds = %194
  %199 = fcmp ogt double %195, %196
  %200 = select i1 %199, double %196, double %195
  %201 = select i1 %199, double %195, double %196
  br i1 %50, label %218, label %202

202:                                              ; preds = %198
  br i1 %101, label %203, label %207

203:                                              ; preds = %202
  %204 = fpext float %99 to double
  %205 = fsub double %204, %121
  %206 = fdiv double %205, %154
  br label %212

207:                                              ; preds = %202
  %208 = fpext float %100 to double
  %209 = fsub double %208, %116
  %210 = load double, ptr %109, align 8, !tbaa !91
  %211 = fdiv double %209, %210
  br label %212

212:                                              ; preds = %207, %203
  %213 = phi double [ %206, %203 ], [ %211, %207 ]
  %214 = fcmp olt double %213, %200
  br i1 %214, label %264, label %215

215:                                              ; preds = %212
  %216 = fcmp olt double %213, %201
  br i1 %216, label %217, label %218

217:                                              ; preds = %215
  br label %218

218:                                              ; preds = %215, %217, %198
  %219 = phi double [ %213, %217 ], [ %201, %215 ], [ %201, %198 ]
  %220 = load <2 x double>, ptr %4, align 16, !tbaa !91
  %221 = insertelement <2 x double> poison, double %200, i64 0
  %222 = shufflevector <2 x double> %221, <2 x double> poison, <2 x i32> zeroinitializer
  %223 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %222, <2 x double> %220, <2 x double> %115)
  %224 = fptrunc <2 x double> %223 to <2 x float>
  store <2 x float> %224, ptr %6, align 8, !tbaa !67
  %225 = call double @llvm.fmuladd.f64(double %200, double %154, double %121)
  %226 = fptrunc double %225 to float
  store float %226, ptr %163, align 8, !tbaa !67
  %227 = insertelement <2 x double> poison, double %219, i64 0
  %228 = shufflevector <2 x double> %227, <2 x double> poison, <2 x i32> zeroinitializer
  %229 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %228, <2 x double> %220, <2 x double> %115)
  %230 = fptrunc <2 x double> %229 to <2 x float>
  store <2 x float> %230, ptr %7, align 8, !tbaa !67
  %231 = call double @llvm.fmuladd.f64(double %219, double %154, double %121)
  %232 = fptrunc double %231 to float
  store float %232, ptr %166, align 8, !tbaa !67
  %233 = call fastcc float @len_v3(ptr noundef nonnull %6) #19
  %234 = fpext float %233 to double
  %235 = call fastcc float @len_v3(ptr noundef nonnull %7) #19
  %236 = fpext float %235 to double
  %237 = call fastcc float @len_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #19
  %238 = fpext float %237 to double
  %239 = fpext float %107 to double
  %240 = fdiv double %234, %239
  %241 = call double @sqrt(double noundef %240) #17
  %242 = fdiv double %236, %239
  %243 = call double @sqrt(double noundef %242) #17
  %244 = fdiv double %238, %239
  %245 = fsub double 1.000000e+00, %241
  %246 = fsub double 1.000000e+00, %243
  %247 = fadd double %245, %246
  %248 = fmul double %244, %247
  %249 = fptrunc double %248 to float
  store float %249, ptr %2, align 4, !tbaa !67
  %250 = fcmp ugt float %249, 0.000000e+00
  br i1 %250, label %251, label %264

251:                                              ; preds = %218
  %252 = fmul float %47, %249
  store float %252, ptr %2, align 4, !tbaa !67
  %253 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 57
  %254 = load ptr, ptr %253, align 8, !tbaa !94
  %255 = icmp eq ptr %254, null
  br i1 %255, label %264, label %256

256:                                              ; preds = %251
  %257 = getelementptr inbounds %struct.ShadBuf, ptr %254, i64 0, i32 1
  %258 = load i16, ptr %257, align 2, !tbaa !95
  %259 = icmp eq i16 %258, 0
  br i1 %259, label %264, label %260

260:                                              ; preds = %256
  %261 = call float @shadow_halo(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #17
  %262 = load float, ptr %2, align 4, !tbaa !67
  %263 = fmul float %261, %262
  store float %263, ptr %2, align 4, !tbaa !67
  br label %264

264:                                              ; preds = %139, %153, %186, %188, %194, %212, %218, %251, %256, %260, %96, %38
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @fresnel_fac(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3) local_unnamed_addr #6 {
  %5 = fcmp oeq float %3, 0.000000e+00
  br i1 %5, label %19, label %6

6:                                                ; preds = %4
  %7 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %1) #19
  %8 = fcmp ogt float %7, 0.000000e+00
  %9 = fneg float %7
  %10 = select i1 %8, float %7, float %9
  %11 = fadd float %10, 1.000000e+00
  %12 = fsub float 1.000000e+00, %2
  %13 = tail call float @powf(float noundef %11, float noundef %3) #17
  %14 = tail call float @llvm.fmuladd.f32(float %12, float %13, float %2)
  %15 = fcmp olt float %14, 0.000000e+00
  br i1 %15, label %19, label %16

16:                                               ; preds = %6
  %17 = fcmp ogt float %14, 1.000000e+00
  %18 = select i1 %17, float 1.000000e+00, float %14
  br label %19

19:                                               ; preds = %16, %6, %4
  %20 = phi float [ 1.000000e+00, %4 ], [ 0.000000e+00, %6 ], [ %18, %16 ]
  ret float %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !97 {
  %3 = load float, ptr %0, align 4, !tbaa !67
  %4 = load float, ptr %1, align 4, !tbaa !67
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !67
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !67
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !67
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !67
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @calc_R_ref(ptr nocapture noundef %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %3 = load float, ptr %2, align 4, !tbaa !67
  %4 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30
  %5 = load float, ptr %4, align 4, !tbaa !67
  %6 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %7 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 1
  %8 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 58
  %9 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 58, i64 1
  %10 = load <2 x float>, ptr %6, align 4, !tbaa !67
  %11 = load <2 x float>, ptr %7, align 4, !tbaa !67
  %12 = extractelement <2 x float> %10, i64 0
  %13 = extractelement <2 x float> %11, i64 0
  %14 = fmul <2 x float> %10, %11
  %15 = extractelement <2 x float> %14, i64 0
  %16 = tail call float @llvm.fmuladd.f32(float %3, float %5, float %15)
  %17 = extractelement <2 x float> %10, i64 1
  %18 = extractelement <2 x float> %11, i64 1
  %19 = tail call float @llvm.fmuladd.f32(float %17, float %18, float %16)
  %20 = fmul float %19, -2.000000e+00
  %21 = tail call float @llvm.fmuladd.f32(float %20, float %3, float %5)
  store float %21, ptr %8, align 4, !tbaa !67
  %22 = insertelement <2 x float> poison, float %20, i64 0
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer
  %24 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %23, <2 x float> %10, <2 x float> %11)
  store <2 x float> %24, ptr %9, align 4, !tbaa !67
  %25 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %26 = load i16, ptr %25, align 8, !tbaa !98
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %137, label %28

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !77
  %31 = getelementptr inbounds %struct.VlakRen, ptr %30, i64 0, i32 7
  %32 = load i8, ptr %31, align 1, !tbaa !99
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %94, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 88
  %37 = load float, ptr %36, align 8, !tbaa !67
  %38 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 90
  %39 = load float, ptr %38, align 8, !tbaa !101
  %40 = fadd float %5, %39
  %41 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 88, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !67
  %43 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 88, i64 2
  %44 = load float, ptr %43, align 8, !tbaa !67
  %45 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 84
  %46 = extractelement <2 x float> %24, i64 0
  %47 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 89
  %48 = load float, ptr %47, align 4, !tbaa !67
  %49 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 89, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !67
  %51 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 91
  %52 = load float, ptr %51, align 4, !tbaa !102
  %53 = fadd float %13, %52
  %54 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 89, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !67
  %56 = insertelement <2 x float> poison, float %3, i64 0
  %57 = shufflevector <2 x float> %56, <2 x float> poison, <2 x i32> zeroinitializer
  %58 = insertelement <2 x float> poison, float %37, i64 0
  %59 = insertelement <2 x float> %58, float %48, i64 1
  %60 = fadd <2 x float> %57, %59
  %61 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %62 = insertelement <2 x float> poison, float %42, i64 0
  %63 = insertelement <2 x float> %62, float %50, i64 1
  %64 = fadd <2 x float> %61, %63
  %65 = insertelement <2 x float> %11, float %53, i64 1
  %66 = fmul <2 x float> %65, %64
  %67 = insertelement <2 x float> poison, float %40, i64 0
  %68 = insertelement <2 x float> %67, float %5, i64 1
  %69 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %60, <2 x float> %68, <2 x float> %66)
  %70 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %71 = insertelement <2 x float> poison, float %44, i64 0
  %72 = insertelement <2 x float> %71, float %55, i64 1
  %73 = fadd <2 x float> %70, %72
  %74 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %75 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %73, <2 x float> %74, <2 x float> %69)
  %76 = fmul <2 x float> %75, <float -2.000000e+00, float -2.000000e+00>
  %77 = shufflevector <2 x float> %76, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %78 = shufflevector <2 x float> %60, <2 x float> %64, <4 x i32> <i32 0, i32 2, i32 poison, i32 1>
  %79 = shufflevector <2 x float> %73, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %80 = shufflevector <4 x float> %78, <4 x float> %79, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %81 = shufflevector <2 x float> %11, <2 x float> %68, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %82 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %77, <4 x float> %80, <4 x float> %81)
  %83 = shufflevector <2 x float> %24, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %84 = insertelement <4 x float> %83, float %21, i64 0
  %85 = shufflevector <4 x float> %84, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %86 = fsub <4 x float> %85, %82
  store <4 x float> %86, ptr %45, align 8, !tbaa !67
  %87 = extractelement <2 x float> %76, i64 1
  %88 = extractelement <2 x float> %64, i64 1
  %89 = tail call float @llvm.fmuladd.f32(float %87, float %88, float %53)
  %90 = fsub float %46, %89
  %91 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 85, i64 1
  store float %90, ptr %91, align 4, !tbaa !67
  %92 = extractelement <2 x float> %73, i64 1
  %93 = tail call float @llvm.fmuladd.f32(float %87, float %92, float %18)
  br label %132

94:                                               ; preds = %28
  %95 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 90
  %96 = load float, ptr %95, align 8, !tbaa !101
  %97 = fadd float %5, %96
  %98 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 84
  %99 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 91
  %100 = load float, ptr %99, align 4, !tbaa !102
  %101 = fadd float %13, %100
  %102 = fmul float %12, %101
  %103 = insertelement <2 x float> poison, float %3, i64 0
  %104 = shufflevector <2 x float> %103, <2 x float> poison, <2 x i32> zeroinitializer
  %105 = insertelement <2 x float> poison, float %97, i64 0
  %106 = insertelement <2 x float> %105, float %5, i64 1
  %107 = insertelement <2 x float> %14, float %102, i64 1
  %108 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %104, <2 x float> %106, <2 x float> %107)
  %109 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %110 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %111 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %109, <2 x float> %110, <2 x float> %108)
  %112 = fmul <2 x float> %111, <float -2.000000e+00, float -2.000000e+00>
  %113 = shufflevector <2 x float> %112, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %114 = insertelement <4 x float> poison, float %3, i64 0
  %115 = shufflevector <2 x float> %10, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %116 = shufflevector <4 x float> %114, <4 x float> %115, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %117 = shufflevector <4 x float> %116, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %118 = shufflevector <2 x float> %105, <2 x float> %11, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %119 = insertelement <4 x float> %118, float %5, i64 3
  %120 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %113, <4 x float> %117, <4 x float> %119)
  %121 = insertelement <4 x float> poison, float %21, i64 0
  %122 = shufflevector <2 x float> %24, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %123 = shufflevector <4 x float> %121, <4 x float> %122, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %124 = shufflevector <4 x float> %123, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %125 = fsub <4 x float> %124, %120
  store <4 x float> %125, ptr %98, align 8, !tbaa !67
  %126 = extractelement <2 x float> %112, i64 1
  %127 = tail call float @llvm.fmuladd.f32(float %126, float %12, float %101)
  %128 = extractelement <2 x float> %24, i64 0
  %129 = fsub float %128, %127
  %130 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 85, i64 1
  store float %129, ptr %130, align 4, !tbaa !67
  %131 = tail call float @llvm.fmuladd.f32(float %126, float %17, float %18)
  br label %132

132:                                              ; preds = %94, %35
  %133 = phi float [ %93, %35 ], [ %131, %94 ]
  %134 = extractelement <2 x float> %24, i64 1
  %135 = fsub float %134, %133
  %136 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 85, i64 2
  store float %135, ptr %136, align 4, !tbaa !67
  br label %137

137:                                              ; preds = %132, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @shade_color(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #5 {
  %3 = alloca [4 x float], align 16
  %4 = load ptr, ptr %0, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %6 = load i32, ptr %5, align 4, !tbaa !103
  %7 = and i32 %6, 2048
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61
  %11 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 32
  %12 = load <2 x float>, ptr %10, align 8, !tbaa !67
  store <2 x float> %12, ptr %11, align 4, !tbaa !67
  %13 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 2
  %14 = load float, ptr %13, align 8, !tbaa !67
  %15 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 34
  store float %14, ptr %15, align 4, !tbaa !104
  %16 = and i32 %6, 536870912
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %49, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 3
  %20 = load float, ptr %19, align 4, !tbaa !67
  %21 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 49
  store float %20, ptr %21, align 8, !tbaa !105
  br label %49

22:                                               ; preds = %2
  %23 = and i32 %6, 128
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %49, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61
  %27 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 3
  %28 = load float, ptr %27, align 4, !tbaa !67
  %29 = fsub float 1.000000e+00, %28
  %30 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 32
  %31 = load float, ptr %26, align 8, !tbaa !67
  %32 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !67
  %34 = load <2 x float>, ptr %30, align 4, !tbaa !67
  %35 = insertelement <2 x float> poison, float %31, i64 0
  %36 = insertelement <2 x float> %35, float %28, i64 1
  %37 = insertelement <2 x float> poison, float %28, i64 0
  %38 = insertelement <2 x float> %37, float %33, i64 1
  %39 = fmul <2 x float> %36, %38
  %40 = insertelement <2 x float> poison, float %29, i64 0
  %41 = shufflevector <2 x float> %40, <2 x float> poison, <2 x i32> zeroinitializer
  %42 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %34, <2 x float> %41, <2 x float> %39)
  store <2 x float> %42, ptr %30, align 4, !tbaa !67
  %43 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 34
  %44 = load float, ptr %43, align 4, !tbaa !104
  %45 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 2
  %46 = load float, ptr %45, align 8, !tbaa !67
  %47 = fmul float %28, %46
  %48 = tail call float @llvm.fmuladd.f32(float %44, float %29, float %47)
  store float %48, ptr %43, align 4, !tbaa !104
  br label %49

49:                                               ; preds = %22, %25, %9, %18
  %50 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 90
  %51 = load i16, ptr %50, align 4, !tbaa !106
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  tail call void @do_material_tex(ptr noundef nonnull %0, ptr noundef nonnull @R) #17
  br label %54

54:                                               ; preds = %53, %49
  %55 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 31
  %56 = load float, ptr %55, align 8, !tbaa !107
  %57 = fcmp une float %56, 0.000000e+00
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30
  %60 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %61 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 32
  %62 = load float, ptr %61, align 4, !tbaa !108
  %63 = tail call float @fresnel_fac(ptr noundef nonnull %59, ptr noundef nonnull %60, float noundef %62, float noundef %56) #19
  %64 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 49
  %65 = load float, ptr %64, align 8, !tbaa !105
  %66 = fmul float %63, %65
  store float %66, ptr %64, align 8, !tbaa !105
  br label %67

67:                                               ; preds = %58, %54
  %68 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 21
  %69 = load i32, ptr %68, align 8, !tbaa !109
  %70 = and i32 %69, 65536
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 49
  store float 1.000000e+00, ptr %73, align 8, !tbaa !105
  br label %74

74:                                               ; preds = %72, %67
  %75 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 32
  %76 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6
  %77 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 33
  %78 = load float, ptr %75, align 4, !tbaa !110
  store float %78, ptr %76, align 4, !tbaa !67
  %79 = load float, ptr %77, align 8, !tbaa !111
  %80 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6, i64 1
  store float %79, ptr %80, align 4, !tbaa !67
  %81 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 34
  %82 = load float, ptr %81, align 4, !tbaa !104
  %83 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6, i64 2
  store float %82, ptr %83, align 4, !tbaa !67
  %84 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 49
  %85 = load float, ptr %84, align 8, !tbaa !105
  %86 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  store float %85, ptr %86, align 4, !tbaa !112
  %87 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 50
  %88 = load i16, ptr %87, align 2, !tbaa !114
  %89 = and i16 %88, 2
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %117, label %91

91:                                               ; preds = %74
  %92 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 4
  %93 = load ptr, ptr %92, align 8, !tbaa !115
  %94 = getelementptr inbounds %struct.ObjectRen, ptr %93, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !116
  %96 = icmp eq ptr %95, null
  br i1 %96, label %117, label %97

97:                                               ; preds = %91
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %98 = getelementptr inbounds %struct.Object, ptr %95, i64 0, i32 98
  call fastcc void @copy_v4_v4(ptr noundef nonnull %3, ptr noundef nonnull %98) #19
  %99 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 3
  %100 = load float, ptr %99, align 4, !tbaa !67
  %101 = fcmp olt float %100, 0.000000e+00
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  %103 = fcmp ogt float %100, 1.000000e+00
  br i1 %103, label %104, label %105

104:                                              ; preds = %102
  br label %105

105:                                              ; preds = %97, %102, %104
  %106 = phi float [ %100, %102 ], [ 1.000000e+00, %104 ], [ 0.000000e+00, %97 ]
  %107 = load <2 x float>, ptr %3, align 16, !tbaa !67
  %108 = insertelement <2 x float> poison, float %78, i64 0
  %109 = insertelement <2 x float> %108, float %79, i64 1
  %110 = fmul <2 x float> %109, %107
  store <2 x float> %110, ptr %76, align 4, !tbaa !67
  %111 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 2
  %112 = load float, ptr %111, align 8, !tbaa !67
  %113 = fmul float %82, %112
  store float %113, ptr %83, align 4, !tbaa !67
  br i1 %71, label %116, label %114

114:                                              ; preds = %105
  %115 = fmul float %85, %106
  store float %115, ptr %86, align 4, !tbaa !112
  br label %116

116:                                              ; preds = %114, %105
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  br label %117

117:                                              ; preds = %116, %91, %74
  %118 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %118, ptr noundef nonnull %76) #19
  ret void
}

; Function Attrs: optsize
declare void @do_material_tex(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !118 {
  %3 = load float, ptr %1, align 4, !tbaa !67
  store float %3, ptr %0, align 4, !tbaa !67
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !67
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !67
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !67
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !67
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !67
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !119 {
  %3 = load float, ptr %1, align 4, !tbaa !67
  store float %3, ptr %0, align 4, !tbaa !67
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !67
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !67
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !67
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !67
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ambient_occlusion(ptr noundef %0) local_unnamed_addr #5 {
  %2 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 64), align 2, !tbaa !120
  %3 = icmp eq i16 %2, 1
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.Material, ptr %5, i64 0, i32 16
  %7 = load float, ptr %6, align 4, !tbaa !121
  %8 = fcmp une float %7, 0.000000e+00
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @sample_occ(ptr noundef nonnull @R, ptr noundef nonnull %0) #17
  br label %27

10:                                               ; preds = %4, %1
  %11 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !89
  %12 = and i32 %11, 65536
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %0, align 8, !tbaa !58
  %16 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 16
  %17 = load float, ptr %16, align 4, !tbaa !121
  %18 = fcmp une float %17, 0.000000e+00
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 100
  %21 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 102
  tail call void @ray_ao(ptr noundef nonnull %0, ptr noundef nonnull %20, ptr noundef nonnull %21) #17
  br label %27

22:                                               ; preds = %14, %10
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 100
  %24 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 100, i64 2
  store float 1.000000e+00, ptr %24, align 8, !tbaa !67
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %23, align 8, !tbaa !67
  %25 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 102
  tail call fastcc void @zero_v3(ptr noundef nonnull %25) #19
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 101
  tail call fastcc void @zero_v3(ptr noundef nonnull %26) #19
  br label %27

27:                                               ; preds = %19, %22, %9
  ret void
}

; Function Attrs: optsize
declare void @sample_occ(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @ray_ao(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #11 !PGOFuncName !122 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !67
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @environment_lighting_apply(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #8 {
  %3 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 59), align 4, !tbaa !123
  %4 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 44
  %5 = load float, ptr %4, align 4, !tbaa !124
  %6 = fmul float %3, %5
  %7 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !89
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
  %19 = load float, ptr %18, align 4, !tbaa !110
  %20 = fmul float %17, %19
  %21 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 50
  %22 = load float, ptr %21, align 4, !tbaa !125
  %23 = fmul float %20, %22
  %24 = load float, ptr %1, align 4, !tbaa !67
  %25 = tail call float @llvm.fmuladd.f32(float %23, float %6, float %24)
  store float %25, ptr %1, align 4, !tbaa !67
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 102, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !67
  %28 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 33
  %29 = load float, ptr %28, align 8, !tbaa !111
  %30 = fmul float %27, %29
  %31 = load float, ptr %21, align 4, !tbaa !125
  %32 = fmul float %30, %31
  %33 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !67
  %35 = tail call float @llvm.fmuladd.f32(float %32, float %6, float %34)
  store float %35, ptr %33, align 4, !tbaa !67
  %36 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 102, i64 2
  %37 = load float, ptr %36, align 8, !tbaa !67
  %38 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 34
  %39 = load float, ptr %38, align 4, !tbaa !104
  %40 = fmul float %37, %39
  %41 = load float, ptr %21, align 4, !tbaa !125
  %42 = fmul float %40, %41
  %43 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !67
  %45 = tail call float @llvm.fmuladd.f32(float %42, float %6, float %44)
  store float %45, ptr %43, align 4, !tbaa !67
  br label %46

46:                                               ; preds = %2, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lamp_get_shadow(ptr noundef %0, ptr noundef %1, float noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #5 {
  %6 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 67
  %7 = load ptr, ptr %6, align 8, !tbaa !126
  %8 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 114
  %9 = load i16, ptr %8, align 2, !tbaa !127
  %10 = sext i16 %9 to i64
  %11 = getelementptr inbounds %struct.LampShadowSample, ptr %7, i64 %10
  %12 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 115
  %13 = load i16, ptr %12, align 4, !tbaa !128
  %14 = sext i16 %13 to i64
  %15 = getelementptr inbounds [16 x %struct.LampShadowSubSample], ptr %11, i64 0, i64 %14
  %16 = icmp eq i32 %4, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %5
  %18 = load i32, ptr %15, align 4, !tbaa !129
  %19 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 107
  %20 = load i32, ptr %19, align 4, !tbaa !131
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %55, label %22

22:                                               ; preds = %17, %5
  %23 = getelementptr inbounds float, ptr %3, i64 3
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3, align 4, !tbaa !67
  %24 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 57
  %25 = load ptr, ptr %24, align 8, !tbaa !94
  %26 = icmp eq ptr %25, null
  br i1 %26, label %41, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 36
  %29 = load i16, ptr %28, align 4, !tbaa !75
  %30 = icmp eq i16 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = tail call float @ISB_getshadow(ptr noundef nonnull %1, ptr noundef nonnull %25) #17
  store float %32, ptr %23, align 4, !tbaa !67
  br label %47

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 29
  %35 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 78
  %36 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 79
  %37 = load ptr, ptr %1, align 8, !tbaa !58
  %38 = getelementptr inbounds %struct.Material, ptr %37, i64 0, i32 71
  %39 = load float, ptr %38, align 8, !tbaa !132
  %40 = tail call float @testshadowbuf(ptr noundef nonnull @R, ptr noundef nonnull %25, ptr noundef nonnull %34, ptr noundef nonnull %35, ptr noundef nonnull %36, float noundef %2, float noundef %39) #17
  store float %40, ptr %23, align 4, !tbaa !67
  br label %47

41:                                               ; preds = %22
  %42 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 7
  %43 = load i32, ptr %42, align 4, !tbaa !74
  %44 = and i32 %43, 8192
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  tail call void @ray_shadow(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull %3) #17
  br label %47

47:                                               ; preds = %41, %46, %31, %33
  %48 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 108
  %49 = load i32, ptr %48, align 8, !tbaa !133
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = getelementptr inbounds [16 x %struct.LampShadowSubSample], ptr %11, i64 0, i64 %14, i32 1
  tail call fastcc void @copy_v4_v4(ptr noundef nonnull %52, ptr noundef nonnull %3) #19
  %53 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 107
  %54 = load i32, ptr %53, align 4, !tbaa !131
  store i32 %54, ptr %15, align 4, !tbaa !129
  br label %57

55:                                               ; preds = %17
  %56 = getelementptr inbounds [16 x %struct.LampShadowSubSample], ptr %11, i64 0, i64 %14, i32 1
  tail call fastcc void @copy_v4_v4(ptr noundef %3, ptr noundef nonnull %56) #19
  br label %57

57:                                               ; preds = %47, %51, %55
  ret void
}

; Function Attrs: optsize
declare float @ISB_getshadow(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare float @testshadowbuf(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @ray_shadow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @lamp_get_visibility(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #5 {
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 6
  %7 = load i16, ptr %6, align 8, !tbaa !72
  switch i16 %7, label %10 [
    i16 1, label %8
    i16 3, label %8
  ]

8:                                                ; preds = %4, %4
  store float 1.000000e+00, ptr %3, align 4, !tbaa !67
  %9 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 20
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %9) #19
  br label %145

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 5
  tail call fastcc void @sub_v3_v3v3(ptr noundef %2, ptr noundef %1, ptr noundef nonnull %11) #19
  %12 = tail call fastcc float @len_v3(ptr noundef %2) #19
  store float %12, ptr %3, align 4, !tbaa !67
  %13 = fdiv float 1.000000e+00, %12
  tail call fastcc void @mul_v3_fl(ptr noundef %2, float noundef %13) #19
  %14 = load i16, ptr %6, align 8, !tbaa !72
  %15 = icmp eq i16 %14, 4
  br i1 %15, label %141, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 27
  %18 = load i16, ptr %17, align 4, !tbaa !134
  switch i16 %18, label %62 [
    i16 3, label %54
    i16 1, label %19
    i16 2, label %25
    i16 4, label %31
  ]

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 4
  %21 = load float, ptr %20, align 8, !tbaa !93
  %22 = load float, ptr %3, align 4, !tbaa !67
  %23 = fadd float %21, %22
  %24 = fdiv float %21, %23
  br label %62

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 4
  %27 = load float, ptr %26, align 8, !tbaa !93
  %28 = load float, ptr %3, align 4, !tbaa !67
  %29 = tail call float @llvm.fmuladd.f32(float %28, float %28, float %27)
  %30 = fdiv float %27, %29
  br label %62

31:                                               ; preds = %16
  %32 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 28
  %33 = load float, ptr %32, align 8, !tbaa !135
  %34 = fcmp ogt float %33, 0.000000e+00
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 4
  %37 = load float, ptr %36, align 8, !tbaa !93
  %38 = load float, ptr %3, align 4, !tbaa !67
  %39 = tail call float @llvm.fmuladd.f32(float %33, float %38, float %37)
  %40 = fdiv float %37, %39
  br label %41

41:                                               ; preds = %35, %31
  %42 = phi float [ %40, %35 ], [ 1.000000e+00, %31 ]
  %43 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 29
  %44 = load float, ptr %43, align 4, !tbaa !136
  %45 = fcmp ogt float %44, 0.000000e+00
  br i1 %45, label %46, label %62

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 23
  %48 = load float, ptr %47, align 4, !tbaa !137
  %49 = load float, ptr %3, align 4, !tbaa !67
  %50 = fmul float %44, %49
  %51 = tail call float @llvm.fmuladd.f32(float %50, float %49, float %48)
  %52 = fdiv float %48, %51
  %53 = fmul float %42, %52
  br label %62

54:                                               ; preds = %16
  %55 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 30
  %56 = load ptr, ptr %55, align 8, !tbaa !138
  %57 = load float, ptr %3, align 4, !tbaa !67
  %58 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 4
  %59 = load float, ptr %58, align 8, !tbaa !93
  %60 = fdiv float %57, %59
  %61 = tail call float @curvemapping_evaluateF(ptr noundef %56, i32 noundef 0, float noundef %60) #17
  br label %62

62:                                               ; preds = %41, %46, %16, %54, %25, %19
  %63 = phi float [ %61, %54 ], [ %53, %46 ], [ %42, %41 ], [ %30, %25 ], [ %24, %19 ], [ 1.000000e+00, %16 ]
  %64 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 7
  %65 = load i32, ptr %64, align 4, !tbaa !74
  %66 = and i32 %65, 64
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 4
  %70 = load float, ptr %69, align 8, !tbaa !93
  %71 = load float, ptr %3, align 4, !tbaa !67
  %72 = fsub float %70, %71
  %73 = fcmp ugt float %72, 0.000000e+00
  %74 = fdiv float %72, %70
  %75 = fmul float %63, %74
  br i1 %73, label %76, label %141

76:                                               ; preds = %68, %62
  %77 = phi float [ %63, %62 ], [ %75, %68 ]
  %78 = fcmp ogt float %77, 0.000000e+00
  br i1 %78, label %79, label %141

79:                                               ; preds = %76
  %80 = load i16, ptr %6, align 8, !tbaa !72
  %81 = icmp eq i16 %80, 2
  br i1 %81, label %82, label %141

82:                                               ; preds = %79
  %83 = and i32 %65, 128
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %104, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 20
  %87 = tail call fastcc float @dot_v3v3(ptr noundef %2, ptr noundef nonnull %86) #19
  %88 = fcmp ogt float %87, 0.000000e+00
  br i1 %88, label %89, label %119

89:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %2) #19
  %90 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 59
  call void @mul_m3_v3(ptr noundef nonnull %90, ptr noundef nonnull %5) #17
  %91 = load float, ptr %5, align 4, !tbaa !67
  %92 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %93 = load float, ptr %92, align 4, !tbaa !67
  %94 = fdiv float %91, %93
  %95 = call float @llvm.fabs.f32(float %94)
  %96 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !67
  %98 = fdiv float %97, %93
  %99 = call float @llvm.fabs.f32(float %98)
  %100 = call fastcc float @max_ff(float noundef %95, float noundef %99) #19
  %101 = call float @llvm.fmuladd.f32(float %100, float %100, float 1.000000e+00)
  %102 = call float @llvm.sqrt.f32(float %101)
  %103 = fdiv float 1.000000e+00, %102
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #18
  br label %119

104:                                              ; preds = %82
  %105 = load float, ptr %2, align 4, !tbaa !67
  %106 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 20
  %107 = load float, ptr %106, align 8, !tbaa !67
  %108 = getelementptr inbounds float, ptr %2, i64 1
  %109 = load float, ptr %108, align 4, !tbaa !67
  %110 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 20, i64 1
  %111 = load float, ptr %110, align 4, !tbaa !67
  %112 = fmul float %109, %111
  %113 = tail call float @llvm.fmuladd.f32(float %105, float %107, float %112)
  %114 = getelementptr inbounds float, ptr %2, i64 2
  %115 = load float, ptr %114, align 4, !tbaa !67
  %116 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 20, i64 2
  %117 = load float, ptr %116, align 8, !tbaa !67
  %118 = tail call float @llvm.fmuladd.f32(float %115, float %117, float %113)
  br label %119

119:                                              ; preds = %85, %89, %104
  %120 = phi float [ %103, %89 ], [ %118, %104 ], [ 0.000000e+00, %85 ]
  %121 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 18
  %122 = load float, ptr %121, align 8, !tbaa !139
  %123 = fcmp ugt float %120, %122
  br i1 %123, label %124, label %141

124:                                              ; preds = %119
  %125 = fsub float %120, %122
  %126 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 19
  %127 = load float, ptr %126, align 4, !tbaa !140
  %128 = fcmp olt float %125, %127
  %129 = fcmp une float %127, 0.000000e+00
  %130 = and i1 %128, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %124
  %132 = fdiv float %125, %127
  %133 = fmul float %132, %132
  %134 = fmul float %133, -2.000000e+00
  %135 = fmul float %132, %134
  %136 = call float @llvm.fmuladd.f32(float %133, float 3.000000e+00, float %135)
  %137 = fmul float %120, %136
  br label %138

138:                                              ; preds = %131, %124
  %139 = phi float [ %137, %131 ], [ %120, %124 ]
  %140 = fmul float %77, %139
  br label %141

141:                                              ; preds = %68, %138, %119, %76, %79, %10
  %142 = phi float [ 1.000000e+00, %10 ], [ %77, %79 ], [ %77, %76 ], [ %140, %138 ], [ 0.000000e+00, %119 ], [ 0.000000e+00, %68 ]
  %143 = fcmp ugt float %142, 0x3F50624DE0000000
  %144 = select i1 %143, float %142, float 0.000000e+00
  br label %145

145:                                              ; preds = %141, %8
  %146 = phi float [ 1.000000e+00, %8 ], [ %144, %141 ]
  ret float %146
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !PGOFuncName !141 {
  %4 = load float, ptr %1, align 4, !tbaa !67
  %5 = load float, ptr %2, align 4, !tbaa !67
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !67
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !67
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !67
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !67
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !67
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !67
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !142 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #19
  %3 = tail call float @sqrtf(float noundef %2) #17
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #10 !PGOFuncName !143 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !67
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !67
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !67
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !67
  ret void
}

; Function Attrs: optsize
declare float @curvemapping_evaluateF(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #12 !PGOFuncName !144 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @shade_lamp_loop(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = alloca [3 x float], align 8
  %4 = alloca [3 x float], align 8
  %5 = alloca [3 x float], align 8
  %6 = alloca [4 x float], align 16
  %7 = load ptr, ptr %0, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 119
  %9 = load i32, ptr %8, align 8, !tbaa !145
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %1, i8 0, i64 212, i1 false)
  %10 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 21
  %11 = load i32, ptr %10, align 8, !tbaa !109
  %12 = and i32 %11, 65536
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 49
  store float 1.000000e+00, ptr %15, align 8, !tbaa !105
  br label %16

16:                                               ; preds = %14, %2
  %17 = getelementptr inbounds %struct.Material, ptr %7, i64 0, i32 51
  %18 = load i32, ptr %17, align 4, !tbaa !103
  %19 = and i32 %18, 1024
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  tail call fastcc void @shade_lamp_loop_only_shadow(ptr noundef nonnull %0, ptr noundef nonnull %1) #19
  br label %695

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 62
  %24 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 62, i64 3
  %25 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 62, i64 1
  %26 = and i32 %9, 67005
  %27 = icmp eq i32 %26, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  br i1 %27, label %168, label %28

28:                                               ; preds = %22
  %29 = and i32 %18, 2048
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61
  %33 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 32
  %34 = load <2 x float>, ptr %32, align 8, !tbaa !67
  store <2 x float> %34, ptr %33, align 4, !tbaa !67
  %35 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 2
  %36 = load float, ptr %35, align 8, !tbaa !67
  %37 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 34
  store float %36, ptr %37, align 4, !tbaa !104
  %38 = and i32 %18, 536870912
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %71, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 3
  %42 = load float, ptr %41, align 4, !tbaa !67
  %43 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 49
  store float %42, ptr %43, align 8, !tbaa !105
  br label %71

44:                                               ; preds = %28
  %45 = and i32 %18, 128
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %71, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61
  %49 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 3
  %50 = load float, ptr %49, align 4, !tbaa !67
  %51 = fsub float 1.000000e+00, %50
  %52 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 32
  %53 = load float, ptr %48, align 8, !tbaa !67
  %54 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !67
  %56 = load <2 x float>, ptr %52, align 4, !tbaa !67
  %57 = insertelement <2 x float> poison, float %53, i64 0
  %58 = insertelement <2 x float> %57, float %50, i64 1
  %59 = insertelement <2 x float> poison, float %50, i64 0
  %60 = insertelement <2 x float> %59, float %55, i64 1
  %61 = fmul <2 x float> %58, %60
  %62 = insertelement <2 x float> poison, float %51, i64 0
  %63 = shufflevector <2 x float> %62, <2 x float> poison, <2 x i32> zeroinitializer
  %64 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %56, <2 x float> %63, <2 x float> %61)
  store <2 x float> %64, ptr %52, align 4, !tbaa !67
  %65 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 34
  %66 = load float, ptr %65, align 4, !tbaa !104
  %67 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 2
  %68 = load float, ptr %67, align 8, !tbaa !67
  %69 = fmul float %50, %68
  %70 = tail call float @llvm.fmuladd.f32(float %66, float %51, float %69)
  store float %70, ptr %65, align 4, !tbaa !104
  br label %71

71:                                               ; preds = %44, %47, %31, %40
  %72 = getelementptr inbounds %struct.Material, ptr %7, i64 0, i32 90
  %73 = load i16, ptr %72, align 4, !tbaa !106
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %71
  tail call void @do_material_tex(ptr noundef nonnull %0, ptr noundef nonnull @R) #17
  %76 = load i32, ptr %10, align 8, !tbaa !109
  %77 = and i32 %76, 65536
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 49
  store float 1.000000e+00, ptr %80, align 8, !tbaa !105
  br label %81

81:                                               ; preds = %75, %79, %71
  %82 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 32
  %83 = load float, ptr %82, align 4, !tbaa !110
  %84 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 49
  %85 = load float, ptr %84, align 8, !tbaa !105
  %86 = fmul float %83, %85
  %87 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 1
  store float %86, ptr %87, align 4, !tbaa !67
  %88 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 33
  %89 = load float, ptr %88, align 8, !tbaa !111
  %90 = load float, ptr %84, align 8, !tbaa !105
  %91 = fmul float %89, %90
  %92 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 1, i64 1
  store float %91, ptr %92, align 4, !tbaa !67
  %93 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 34
  %94 = load float, ptr %93, align 4, !tbaa !104
  %95 = load float, ptr %84, align 8, !tbaa !105
  %96 = fmul float %94, %95
  %97 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 1, i64 2
  store float %96, ptr %97, align 4, !tbaa !67
  %98 = load float, ptr %84, align 8, !tbaa !105
  %99 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 1, i64 3
  store float %98, ptr %99, align 4, !tbaa !67
  %100 = getelementptr inbounds %struct.Material, ptr %7, i64 0, i32 123
  %101 = load i16, ptr %100, align 4, !tbaa !146
  %102 = and i16 %101, 1
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %168, label %104

104:                                              ; preds = %81
  %105 = tail call i32 @sss_pass_done(ptr noundef nonnull @R, ptr noundef nonnull %7) #17
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %168

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.Material, ptr %7, i64 0, i32 120
  %109 = load float, ptr %108, align 8, !tbaa !147
  %110 = fcmp oeq float %109, 0.000000e+00
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  store float 1.000000e+00, ptr %84, align 8, !tbaa !105
  store float 1.000000e+00, ptr %93, align 4, !tbaa !104
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %82, align 4, !tbaa !67
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %87, align 4, !tbaa !67
  br label %168

112:                                              ; preds = %107
  %113 = load float, ptr %82, align 4, !tbaa !110
  %114 = tail call fastcc float @max_ff(float noundef %113, float noundef 0.000000e+00) #19
  %115 = fpext float %114 to double
  %116 = fpext float %109 to double
  %117 = tail call double @pow(double noundef %115, double noundef %116) #17
  %118 = fptrunc double %117 to float
  store float %118, ptr %82, align 4, !tbaa !110
  %119 = load float, ptr %88, align 8, !tbaa !111
  %120 = tail call fastcc float @max_ff(float noundef %119, float noundef 0.000000e+00) #19
  %121 = fpext float %120 to double
  %122 = load float, ptr %108, align 8, !tbaa !147
  %123 = fpext float %122 to double
  %124 = tail call double @pow(double noundef %121, double noundef %123) #17
  %125 = fptrunc double %124 to float
  store float %125, ptr %88, align 8, !tbaa !111
  %126 = load float, ptr %93, align 4, !tbaa !104
  %127 = tail call fastcc float @max_ff(float noundef %126, float noundef 0.000000e+00) #19
  %128 = fpext float %127 to double
  %129 = load float, ptr %108, align 8, !tbaa !147
  %130 = fpext float %129 to double
  %131 = tail call double @pow(double noundef %128, double noundef %130) #17
  %132 = fptrunc double %131 to float
  store float %132, ptr %93, align 4, !tbaa !104
  %133 = load float, ptr %84, align 8, !tbaa !105
  %134 = tail call fastcc float @max_ff(float noundef %133, float noundef 0.000000e+00) #19
  %135 = fpext float %134 to double
  %136 = load float, ptr %108, align 8, !tbaa !147
  %137 = fpext float %136 to double
  %138 = tail call double @pow(double noundef %135, double noundef %137) #17
  %139 = fptrunc double %138 to float
  store float %139, ptr %84, align 8, !tbaa !105
  %140 = load float, ptr %87, align 4, !tbaa !67
  %141 = tail call fastcc float @max_ff(float noundef %140, float noundef 0.000000e+00) #19
  %142 = fpext float %141 to double
  %143 = load float, ptr %108, align 8, !tbaa !147
  %144 = fpext float %143 to double
  %145 = tail call double @pow(double noundef %142, double noundef %144) #17
  %146 = fptrunc double %145 to float
  store float %146, ptr %87, align 4, !tbaa !67
  %147 = load float, ptr %92, align 4, !tbaa !67
  %148 = tail call fastcc float @max_ff(float noundef %147, float noundef 0.000000e+00) #19
  %149 = fpext float %148 to double
  %150 = load float, ptr %108, align 8, !tbaa !147
  %151 = fpext float %150 to double
  %152 = tail call double @pow(double noundef %149, double noundef %151) #17
  %153 = fptrunc double %152 to float
  store float %153, ptr %92, align 4, !tbaa !67
  %154 = load float, ptr %97, align 4, !tbaa !67
  %155 = tail call fastcc float @max_ff(float noundef %154, float noundef 0.000000e+00) #19
  %156 = fpext float %155 to double
  %157 = load float, ptr %108, align 8, !tbaa !147
  %158 = fpext float %157 to double
  %159 = tail call double @pow(double noundef %156, double noundef %158) #17
  %160 = fptrunc double %159 to float
  store float %160, ptr %97, align 4, !tbaa !67
  %161 = load float, ptr %99, align 4, !tbaa !67
  %162 = tail call fastcc float @max_ff(float noundef %161, float noundef 0.000000e+00) #19
  %163 = fpext float %162 to double
  %164 = load float, ptr %108, align 8, !tbaa !147
  %165 = fpext float %164 to double
  %166 = tail call double @pow(double noundef %163, double noundef %165) #17
  %167 = fptrunc double %166 to float
  store float %167, ptr %99, align 4, !tbaa !67
  br label %168

168:                                              ; preds = %81, %104, %112, %111, %22
  %169 = load i32, ptr %17, align 4, !tbaa !103
  %170 = and i32 %169, 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %184, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 32
  %174 = load float, ptr %173, align 4, !tbaa !110
  store float %174, ptr %1, align 4, !tbaa !67
  %175 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 33
  %176 = load float, ptr %175, align 8, !tbaa !111
  %177 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  store float %176, ptr %177, align 4, !tbaa !67
  %178 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 34
  %179 = load float, ptr %178, align 4, !tbaa !104
  %180 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 2
  store float %179, ptr %180, align 4, !tbaa !67
  %181 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 49
  %182 = load float, ptr %181, align 8, !tbaa !105
  %183 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  store float %182, ptr %183, align 4, !tbaa !112
  br label %695

184:                                              ; preds = %168
  %185 = and i32 %169, 144
  %186 = icmp eq i32 %185, 16
  %187 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 32
  %188 = load float, ptr %187, align 4, !tbaa !110
  %189 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 45
  %190 = load float, ptr %189, align 8, !tbaa !148
  br i1 %186, label %191, label %216

191:                                              ; preds = %184
  %192 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61
  %193 = load float, ptr %192, align 8, !tbaa !67
  %194 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 3
  %195 = load float, ptr %194, align 4, !tbaa !67
  %196 = tail call float @llvm.fmuladd.f32(float %193, float %195, float %190)
  %197 = fmul float %188, %196
  %198 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 5
  store float %197, ptr %198, align 4, !tbaa !67
  %199 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 33
  %200 = load float, ptr %199, align 8, !tbaa !111
  %201 = load float, ptr %189, align 8, !tbaa !148
  %202 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 1
  %203 = load float, ptr %202, align 4, !tbaa !67
  %204 = load float, ptr %194, align 4, !tbaa !67
  %205 = tail call float @llvm.fmuladd.f32(float %203, float %204, float %201)
  %206 = fmul float %200, %205
  %207 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 5, i64 1
  store float %206, ptr %207, align 4, !tbaa !67
  %208 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 34
  %209 = load float, ptr %208, align 4, !tbaa !104
  %210 = load float, ptr %189, align 8, !tbaa !148
  %211 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 2
  %212 = load float, ptr %211, align 8, !tbaa !67
  %213 = load float, ptr %194, align 4, !tbaa !67
  %214 = tail call float @llvm.fmuladd.f32(float %212, float %213, float %210)
  %215 = fmul float %209, %214
  br label %228

216:                                              ; preds = %184
  %217 = fmul float %188, %190
  %218 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 5
  store float %217, ptr %218, align 4, !tbaa !67
  %219 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 33
  %220 = load float, ptr %219, align 8, !tbaa !111
  %221 = load float, ptr %189, align 8, !tbaa !148
  %222 = fmul float %220, %221
  %223 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 5, i64 1
  store float %222, ptr %223, align 4, !tbaa !67
  %224 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 34
  %225 = load float, ptr %224, align 4, !tbaa !104
  %226 = load float, ptr %189, align 8, !tbaa !148
  %227 = fmul float %225, %226
  br label %228

228:                                              ; preds = %216, %191
  %229 = phi float [ %215, %191 ], [ %227, %216 ]
  %230 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 5, i64 2
  store float %229, ptr %230, align 4
  %231 = and i32 %9, 1
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %241, label %233

233:                                              ; preds = %228
  %234 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 120
  %235 = load i32, ptr %234, align 4, !tbaa !149
  %236 = and i32 %235, 139328
  %237 = icmp eq i32 %236, 0
  %238 = and i32 %9, 139328
  %239 = icmp eq i32 %238, 0
  %240 = select i1 %237, i1 %239, i1 false
  br i1 %240, label %273, label %244

241:                                              ; preds = %228
  %242 = and i32 %9, 139328
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %273, label %244

244:                                              ; preds = %241, %233
  %245 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 23), align 2, !tbaa !92
  %246 = and i16 %245, 208
  %247 = icmp eq i16 %246, 0
  br i1 %247, label %268, label %248

248:                                              ; preds = %244
  %249 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !89
  %250 = and i32 %249, 2
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %268, label %252

252:                                              ; preds = %248
  %253 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 108
  %254 = load i32, ptr %253, align 8, !tbaa !133
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %252
  %257 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 109
  %258 = load i32, ptr %257, align 4, !tbaa !150
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %261, label %260

260:                                              ; preds = %256, %252
  tail call void @ambient_occlusion(ptr noundef nonnull %0) #19
  br label %261

261:                                              ; preds = %260, %256
  %262 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 10
  %263 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 100
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %262, ptr noundef nonnull %263) #19
  %264 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 11
  %265 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 102
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %264, ptr noundef nonnull %265) #19
  %266 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 12
  %267 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 101
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %266, ptr noundef nonnull %267) #19
  br label %273

268:                                              ; preds = %248, %244
  %269 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 10
  %270 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 10, i64 2
  store float 1.000000e+00, ptr %270, align 4, !tbaa !67
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %269, align 4, !tbaa !67
  %271 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 11
  tail call fastcc void @zero_v3(ptr noundef nonnull %271) #19
  %272 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 12
  tail call fastcc void @zero_v3(ptr noundef nonnull %272) #19
  br label %273

273:                                              ; preds = %233, %261, %268, %241
  %274 = and i32 %9, 57
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %478, label %276

276:                                              ; preds = %273
  %277 = tail call ptr @get_lights(ptr noundef nonnull %0) #19
  %278 = load ptr, ptr %277, align 8, !tbaa !69
  %279 = icmp eq ptr %278, null
  br i1 %279, label %313, label %280

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %282 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 117
  br label %283

283:                                              ; preds = %280, %310
  %284 = phi ptr [ %278, %280 ], [ %311, %310 ]
  %285 = getelementptr inbounds %struct.GroupObject, ptr %284, i64 0, i32 3
  %286 = load ptr, ptr %285, align 8, !tbaa !70
  %287 = icmp eq ptr %286, null
  br i1 %287, label %310, label %288

288:                                              ; preds = %283
  %289 = getelementptr inbounds %struct.LampRen, ptr %286, i64 0, i32 6
  %290 = load i16, ptr %289, align 8, !tbaa !72
  %291 = icmp eq i16 %290, 5
  br i1 %291, label %310, label %292

292:                                              ; preds = %288
  %293 = getelementptr inbounds %struct.LampRen, ptr %286, i64 0, i32 7
  %294 = load i32, ptr %293, align 4, !tbaa !74
  %295 = and i32 %294, 4
  %296 = icmp eq i32 %295, 0
  %297 = getelementptr inbounds %struct.LampRen, ptr %286, i64 0, i32 17
  %298 = load i32, ptr %297, align 4, !tbaa !78
  br i1 %296, label %305, label %299

299:                                              ; preds = %292
  %300 = load ptr, ptr %281, align 8, !tbaa !79
  %301 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %300, i64 0, i32 7
  %302 = load i32, ptr %301, align 8, !tbaa !80
  %303 = and i32 %302, %298
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %310, label %305

305:                                              ; preds = %292, %299
  %306 = load i32, ptr %282, align 8, !tbaa !82
  %307 = and i32 %306, %298
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %310, label %309

309:                                              ; preds = %305
  tail call fastcc void @shade_one_light(ptr noundef nonnull %286, ptr noundef nonnull %0, ptr noundef %1, i32 noundef %9) #19
  br label %310

310:                                              ; preds = %305, %299, %288, %283, %309
  %311 = load ptr, ptr %284, align 8, !tbaa !69
  %312 = icmp eq ptr %311, null
  br i1 %312, label %313, label %283, !llvm.loop !151

313:                                              ; preds = %310, %276
  %314 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8
  %315 = load float, ptr %314, align 4, !tbaa !67
  %316 = fcmp olt float %315, 0.000000e+00
  br i1 %316, label %317, label %318

317:                                              ; preds = %313
  store float 0.000000e+00, ptr %314, align 4, !tbaa !67
  br label %318

318:                                              ; preds = %317, %313
  %319 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8, i64 1
  %320 = load float, ptr %319, align 4, !tbaa !67
  %321 = fcmp olt float %320, 0.000000e+00
  br i1 %321, label %322, label %323

322:                                              ; preds = %318
  store float 0.000000e+00, ptr %319, align 4, !tbaa !67
  br label %323

323:                                              ; preds = %322, %318
  %324 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8, i64 2
  %325 = load float, ptr %324, align 4, !tbaa !67
  %326 = fcmp olt float %325, 0.000000e+00
  br i1 %326, label %327, label %328

327:                                              ; preds = %323
  store float 0.000000e+00, ptr %324, align 4, !tbaa !67
  br label %328

328:                                              ; preds = %327, %323
  %329 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 9
  %330 = load float, ptr %329, align 4, !tbaa !67
  %331 = fcmp olt float %330, 0.000000e+00
  br i1 %331, label %332, label %333

332:                                              ; preds = %328
  store float 0.000000e+00, ptr %329, align 4, !tbaa !67
  br label %333

333:                                              ; preds = %332, %328
  %334 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 9, i64 1
  %335 = load float, ptr %334, align 4, !tbaa !67
  %336 = fcmp olt float %335, 0.000000e+00
  br i1 %336, label %337, label %338

337:                                              ; preds = %333
  store float 0.000000e+00, ptr %334, align 4, !tbaa !67
  br label %338

338:                                              ; preds = %337, %333
  %339 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 9, i64 2
  %340 = load float, ptr %339, align 4, !tbaa !67
  %341 = fcmp olt float %340, 0.000000e+00
  br i1 %341, label %342, label %343

342:                                              ; preds = %338
  store float 0.000000e+00, ptr %339, align 4, !tbaa !67
  br label %343

343:                                              ; preds = %342, %338
  %344 = getelementptr inbounds %struct.Material, ptr %7, i64 0, i32 123
  %345 = load i16, ptr %344, align 4, !tbaa !146
  %346 = and i16 %345, 1
  %347 = icmp eq i16 %346, 0
  br i1 %347, label %405, label %348

348:                                              ; preds = %343
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  %349 = getelementptr inbounds %struct.Material, ptr %7, i64 0, i32 120
  %350 = load float, ptr %349, align 8, !tbaa !147
  %351 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  %352 = call i32 @sample_sss(ptr noundef nonnull @R, ptr noundef nonnull %7, ptr noundef nonnull %351, ptr noundef nonnull %3) #17
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %404, label %354

354:                                              ; preds = %348
  %355 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 1
  %356 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 1, i64 3
  %357 = load float, ptr %356, align 4, !tbaa !67
  %358 = fcmp ogt float %357, 0x3E80000000000000
  %359 = fdiv float 1.000000e+00, %357
  %360 = select i1 %358, float %359, float 1.000000e+00
  %361 = fcmp oeq float %350, 0.000000e+00
  br i1 %361, label %362, label %363

362:                                              ; preds = %354
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %355) #19
  call fastcc void @mul_v3_fl(ptr noundef nonnull %4, float noundef %360) #19
  br label %388

363:                                              ; preds = %354
  %364 = fcmp oeq float %350, 1.000000e+00
  br i1 %364, label %365, label %367

365:                                              ; preds = %363
  %366 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 1.000000e+00, ptr %366, align 8, !tbaa !67
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %4, align 8, !tbaa !67
  call fastcc void @mul_v3_fl(ptr noundef nonnull %4, float noundef %360) #19
  br label %388

367:                                              ; preds = %363
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %355) #19
  call fastcc void @mul_v3_fl(ptr noundef nonnull %4, float noundef %360) #19
  %368 = load float, ptr %4, align 8, !tbaa !67
  %369 = call fastcc float @max_ff(float noundef %368, float noundef 0.000000e+00) #19
  %370 = fpext float %369 to double
  %371 = fsub float 1.000000e+00, %350
  %372 = fpext float %371 to double
  %373 = call double @pow(double noundef %370, double noundef %372) #17
  %374 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %375 = load float, ptr %374, align 4, !tbaa !67
  %376 = call fastcc float @max_ff(float noundef %375, float noundef 0.000000e+00) #19
  %377 = fpext float %376 to double
  %378 = call double @pow(double noundef %377, double noundef %372) #17
  %379 = insertelement <2 x double> poison, double %373, i64 0
  %380 = insertelement <2 x double> %379, double %378, i64 1
  %381 = fptrunc <2 x double> %380 to <2 x float>
  store <2 x float> %381, ptr %4, align 8, !tbaa !67
  %382 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %383 = load float, ptr %382, align 8, !tbaa !67
  %384 = call fastcc float @max_ff(float noundef %383, float noundef 0.000000e+00) #19
  %385 = fpext float %384 to double
  %386 = call double @pow(double noundef %385, double noundef %372) #17
  %387 = fptrunc double %386 to float
  store float %387, ptr %382, align 8, !tbaa !67
  br label %388

388:                                              ; preds = %365, %367, %362
  %389 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6
  %390 = load <2 x float>, ptr %3, align 8, !tbaa !67
  %391 = load <2 x float>, ptr %4, align 8, !tbaa !67
  %392 = fmul <2 x float> %390, %391
  store <2 x float> %392, ptr %389, align 4, !tbaa !67
  %393 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %394 = load float, ptr %393, align 8, !tbaa !67
  %395 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %396 = load float, ptr %395, align 8, !tbaa !67
  %397 = fmul float %394, %396
  %398 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6, i64 2
  store float %397, ptr %398, align 4, !tbaa !67
  %399 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 120
  %400 = load i32, ptr %399, align 4, !tbaa !149
  %401 = and i32 %400, 32
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %404, label %403

403:                                              ; preds = %388
  store <2 x float> %392, ptr %329, align 4, !tbaa !67
  store float %397, ptr %339, align 4, !tbaa !67
  br label %404

404:                                              ; preds = %388, %403, %348
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #18
  br label %405

405:                                              ; preds = %404, %343
  %406 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 120
  %407 = load i32, ptr %406, align 4, !tbaa !149
  %408 = and i32 %407, 32
  %409 = icmp eq i32 %408, 0
  %410 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 7
  %411 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6
  %412 = select i1 %409, ptr %411, ptr %329
  call fastcc void @copy_v3_v3(ptr noundef nonnull %410, ptr noundef nonnull %412) #19
  %413 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %1, ptr noundef nonnull %413) #19
  %414 = and i32 %9, 32
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %468, label %416

416:                                              ; preds = %405
  %417 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6
  %418 = load float, ptr %417, align 4, !tbaa !67
  %419 = fcmp oeq float %418, 0.000000e+00
  br i1 %419, label %420, label %428

420:                                              ; preds = %416
  %421 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6, i64 1
  %422 = load float, ptr %421, align 4, !tbaa !67
  %423 = fcmp oeq float %422, 0.000000e+00
  br i1 %423, label %424, label %428

424:                                              ; preds = %420
  %425 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6, i64 2
  %426 = load float, ptr %425, align 4, !tbaa !67
  %427 = fcmp oeq float %426, 0.000000e+00
  br i1 %427, label %468, label %428

428:                                              ; preds = %424, %420, %416
  %429 = fcmp une float %418, 0.000000e+00
  %430 = load float, ptr %329, align 4, !tbaa !67
  br i1 %429, label %431, label %433

431:                                              ; preds = %428
  %432 = fdiv float %430, %418
  br label %438

433:                                              ; preds = %428
  %434 = fcmp oeq float %430, 0.000000e+00
  br i1 %434, label %435, label %440

435:                                              ; preds = %433
  %436 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 9, i64 3
  %437 = load float, ptr %436, align 4, !tbaa !67
  br label %438

438:                                              ; preds = %431, %435
  %439 = phi float [ %437, %435 ], [ %432, %431 ]
  store float %439, ptr %329, align 4, !tbaa !67
  br label %440

440:                                              ; preds = %438, %433
  %441 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6, i64 1
  %442 = load float, ptr %441, align 4, !tbaa !67
  %443 = fcmp une float %442, 0.000000e+00
  %444 = load float, ptr %334, align 4, !tbaa !67
  br i1 %443, label %445, label %447

445:                                              ; preds = %440
  %446 = fdiv float %444, %442
  br label %452

447:                                              ; preds = %440
  %448 = fcmp oeq float %444, 0.000000e+00
  br i1 %448, label %449, label %454

449:                                              ; preds = %447
  %450 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 9, i64 3
  %451 = load float, ptr %450, align 4, !tbaa !67
  br label %452

452:                                              ; preds = %445, %449
  %453 = phi float [ %451, %449 ], [ %446, %445 ]
  store float %453, ptr %334, align 4, !tbaa !67
  br label %454

454:                                              ; preds = %452, %447
  %455 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6, i64 2
  %456 = load float, ptr %455, align 4, !tbaa !67
  %457 = fcmp une float %456, 0.000000e+00
  %458 = load float, ptr %339, align 4, !tbaa !67
  br i1 %457, label %459, label %461

459:                                              ; preds = %454
  %460 = fdiv float %458, %456
  br label %466

461:                                              ; preds = %454
  %462 = fcmp oeq float %458, 0.000000e+00
  br i1 %462, label %463, label %468

463:                                              ; preds = %461
  %464 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 9, i64 3
  %465 = load float, ptr %464, align 4, !tbaa !67
  br label %466

466:                                              ; preds = %463, %459
  %467 = phi float [ %460, %459 ], [ %465, %463 ]
  store float %467, ptr %339, align 4, !tbaa !67
  br label %468

468:                                              ; preds = %466, %461, %424, %405
  %469 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 16), align 8, !tbaa !152
  %470 = fcmp oeq float %469, 0.000000e+00
  %471 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 17), align 4
  %472 = fcmp oeq float %471, 1.000000e+00
  %473 = select i1 %470, i1 %472, i1 false
  %474 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 75), align 8
  %475 = icmp ne ptr %474, null
  %476 = select i1 %473, i1 true, i1 %475
  br i1 %476, label %478, label %477

477:                                              ; preds = %468
  call fastcc void @wrld_exposure_correct(ptr noundef nonnull %1) #19
  call fastcc void @wrld_exposure_correct(ptr noundef nonnull %314) #19
  br label %478

478:                                              ; preds = %477, %468, %273
  br i1 %232, label %523, label %479

479:                                              ; preds = %478
  %480 = getelementptr inbounds %struct.Material, ptr %7, i64 0, i32 31
  %481 = load float, ptr %480, align 8, !tbaa !107
  %482 = fcmp oeq float %481, 0.000000e+00
  %483 = load i32, ptr %10, align 8, !tbaa !109
  %484 = and i32 %483, 65536
  %485 = icmp eq i32 %484, 0
  %486 = select i1 %482, i1 true, i1 %485
  br i1 %486, label %497, label %487

487:                                              ; preds = %479
  %488 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30
  %489 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %490 = getelementptr inbounds %struct.Material, ptr %7, i64 0, i32 32
  %491 = load float, ptr %490, align 4, !tbaa !108
  %492 = call float @fresnel_fac(ptr noundef nonnull %488, ptr noundef nonnull %489, float noundef %491, float noundef %481) #19
  %493 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 49
  %494 = load float, ptr %493, align 8, !tbaa !105
  %495 = fmul float %492, %494
  store float %495, ptr %493, align 8, !tbaa !105
  %496 = load i32, ptr %10, align 8, !tbaa !109
  br label %497

497:                                              ; preds = %487, %479
  %498 = phi i32 [ %496, %487 ], [ %483, %479 ]
  %499 = and i32 %498, 65536
  %500 = icmp eq i32 %499, 0
  %501 = and i32 %498, 131136
  %502 = icmp eq i32 %501, 0
  %503 = or i1 %500, %502
  br i1 %503, label %523, label %504

504:                                              ; preds = %497
  %505 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 47
  %506 = load float, ptr %505, align 8, !tbaa !153
  %507 = fcmp une float %506, 0.000000e+00
  br i1 %507, label %508, label %523

508:                                              ; preds = %504
  %509 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8
  %510 = load float, ptr %509, align 4, !tbaa !67
  %511 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8, i64 1
  %512 = load float, ptr %511, align 4, !tbaa !67
  %513 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8, i64 2
  %514 = load float, ptr %513, align 4, !tbaa !67
  %515 = call fastcc float @max_fff(float noundef %510, float noundef %512, float noundef %514) #19
  %516 = fmul float %506, %515
  %517 = fcmp ogt float %516, 1.000000e+00
  %518 = select i1 %517, float 1.000000e+00, float %516
  %519 = fsub float 1.000000e+00, %518
  %520 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 49
  %521 = load float, ptr %520, align 8, !tbaa !105
  %522 = call float @llvm.fmuladd.f32(float %519, float %521, float %518)
  store float %522, ptr %520, align 8, !tbaa !105
  br label %523

523:                                              ; preds = %497, %508, %504, %478
  %524 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 49
  %525 = load float, ptr %524, align 8, !tbaa !105
  %526 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  store float %525, ptr %526, align 4, !tbaa !112
  %527 = getelementptr inbounds %struct.Material, ptr %7, i64 0, i32 123
  %528 = load i16, ptr %527, align 4, !tbaa !146
  %529 = and i16 %528, 1
  %530 = icmp eq i16 %529, 0
  br i1 %530, label %534, label %531

531:                                              ; preds = %523
  %532 = call i32 @sss_pass_done(ptr noundef nonnull @R, ptr noundef nonnull %7) #17
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %534, label %589

534:                                              ; preds = %531, %523
  %535 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !89
  %536 = and i32 %535, 2
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %570, label %538

538:                                              ; preds = %534
  %539 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 23), align 2, !tbaa !92
  %540 = and i16 %539, 64
  %541 = icmp eq i16 %540, 0
  br i1 %541, label %549, label %542

542:                                              ; preds = %538
  %543 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 120
  %544 = load i32, ptr %543, align 4, !tbaa !149
  %545 = and i32 %544, 64
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %549, label %547

547:                                              ; preds = %542
  call fastcc void @ambient_occlusion_apply(ptr noundef nonnull %0, ptr noundef nonnull %1) #19
  %548 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 23), align 2, !tbaa !92
  br label %549

549:                                              ; preds = %542, %547, %538
  %550 = phi i16 [ %539, %542 ], [ %548, %547 ], [ %539, %538 ]
  %551 = and i16 %550, 16
  %552 = icmp eq i16 %551, 0
  br i1 %552, label %560, label %553

553:                                              ; preds = %549
  %554 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 120
  %555 = load i32, ptr %554, align 4, !tbaa !149
  %556 = and i32 %555, 131072
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %560, label %558

558:                                              ; preds = %553
  call void @environment_lighting_apply(ptr noundef nonnull %0, ptr noundef nonnull %1) #19
  %559 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 23), align 2, !tbaa !92
  br label %560

560:                                              ; preds = %553, %558, %549
  %561 = phi i16 [ %550, %553 ], [ %559, %558 ], [ %550, %549 ]
  %562 = and i16 %561, 128
  %563 = icmp eq i16 %562, 0
  br i1 %563, label %570, label %564

564:                                              ; preds = %560
  %565 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 120
  %566 = load i32, ptr %565, align 4, !tbaa !149
  %567 = and i32 %566, 8192
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %570, label %569

569:                                              ; preds = %564
  call fastcc void @indirect_lighting_apply(ptr noundef nonnull %0, ptr noundef nonnull %1) #19
  br label %570

570:                                              ; preds = %560, %569, %564, %534
  %571 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 41
  %572 = load float, ptr %571, align 8, !tbaa !154
  %573 = load float, ptr %1, align 4, !tbaa !67
  %574 = fadd float %572, %573
  store float %574, ptr %1, align 4, !tbaa !67
  %575 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 43
  %576 = load float, ptr %575, align 8, !tbaa !155
  %577 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  %578 = load float, ptr %577, align 4, !tbaa !67
  %579 = fadd float %576, %578
  store float %579, ptr %577, align 4, !tbaa !67
  %580 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 42
  %581 = load float, ptr %580, align 4, !tbaa !156
  %582 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 2
  %583 = load float, ptr %582, align 4, !tbaa !67
  %584 = fadd float %581, %583
  store float %584, ptr %582, align 4, !tbaa !67
  %585 = load i32, ptr %17, align 4, !tbaa !103
  %586 = and i32 %585, 1048576
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %589, label %588

588:                                              ; preds = %570
  call fastcc void @ramp_diffuse_result(ptr noundef nonnull %1, ptr noundef nonnull %0) #19
  br label %589

589:                                              ; preds = %570, %588, %531
  %590 = load i32, ptr %17, align 4, !tbaa !103
  %591 = and i32 %590, 2097152
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %595, label %593

593:                                              ; preds = %589
  %594 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8
  call fastcc void @ramp_spec_result(ptr noundef nonnull %594, ptr noundef nonnull %0) #19
  br label %595

595:                                              ; preds = %593, %589
  %596 = load float, ptr %23, align 8, !tbaa !67
  %597 = fcmp une float %596, 0.000000e+00
  br i1 %597, label %598, label %630

598:                                              ; preds = %595
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #18
  %599 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 38
  %600 = load <2 x float>, ptr %599, align 4, !tbaa !67
  %601 = load <2 x float>, ptr %25, align 4, !tbaa !67
  %602 = fneg <2 x float> %600
  %603 = insertelement <2 x float> poison, float %596, i64 0
  %604 = shufflevector <2 x float> %603, <2 x float> poison, <2 x i32> zeroinitializer
  %605 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %602, <2 x float> %604, <2 x float> <float 1.000000e+00, float 1.000000e+00>)
  %606 = load <2 x float>, ptr %1, align 4, !tbaa !67
  %607 = fmul <2 x float> %605, %606
  %608 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %600, <2 x float> %601, <2 x float> %607)
  store <2 x float> %608, ptr %5, align 8, !tbaa !67
  %609 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 40
  %610 = load float, ptr %609, align 4, !tbaa !157
  %611 = load float, ptr %24, align 4, !tbaa !67
  %612 = fneg float %610
  %613 = call float @llvm.fmuladd.f32(float %612, float %596, float 1.000000e+00)
  %614 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 2
  %615 = load float, ptr %614, align 4, !tbaa !67
  %616 = fmul float %613, %615
  %617 = call float @llvm.fmuladd.f32(float %610, float %611, float %616)
  %618 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float %617, ptr %618, align 8, !tbaa !67
  %619 = and i32 %9, 128
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %623, label %621

621:                                              ; preds = %598
  %622 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 13
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %622, ptr noundef nonnull %5, ptr noundef nonnull %1) #19
  br label %623

623:                                              ; preds = %621, %598
  %624 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 120
  %625 = load i32, ptr %624, align 4, !tbaa !149
  %626 = and i32 %625, 128
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %629, label %628

628:                                              ; preds = %623
  call fastcc void @copy_v3_v3(ptr noundef nonnull %1, ptr noundef nonnull %5) #19
  br label %629

629:                                              ; preds = %628, %623
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #18
  br label %630

630:                                              ; preds = %629, %595
  %631 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 120
  %632 = load i32, ptr %631, align 4, !tbaa !149
  %633 = and i32 %632, 65536
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %638, label %635

635:                                              ; preds = %630
  %636 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 5
  call fastcc void @add_v3_v3(ptr noundef nonnull %1, ptr noundef nonnull %636) #19
  %637 = load i32, ptr %631, align 4, !tbaa !149
  br label %638

638:                                              ; preds = %635, %630
  %639 = phi i32 [ %637, %635 ], [ %632, %630 ]
  %640 = and i32 %639, 16
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %644, label %642

642:                                              ; preds = %638
  %643 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8
  call fastcc void @add_v3_v3(ptr noundef nonnull %1, ptr noundef nonnull %643) #19
  br label %644

644:                                              ; preds = %642, %638
  %645 = getelementptr inbounds %struct.Material, ptr %7, i64 0, i32 50
  %646 = load i16, ptr %645, align 2, !tbaa !114
  %647 = and i16 %646, 2
  %648 = icmp eq i16 %647, 0
  br i1 %648, label %692, label %649

649:                                              ; preds = %644
  %650 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 4
  %651 = load ptr, ptr %650, align 8, !tbaa !115
  %652 = getelementptr inbounds %struct.ObjectRen, ptr %651, i64 0, i32 2
  %653 = load ptr, ptr %652, align 8, !tbaa !116
  %654 = icmp eq ptr %653, null
  br i1 %654, label %692, label %655

655:                                              ; preds = %649
  %656 = load i16, ptr %527, align 4, !tbaa !146
  %657 = and i16 %656, 1
  %658 = icmp eq i16 %657, 0
  br i1 %658, label %666, label %659

659:                                              ; preds = %655
  %660 = call i32 @sss_pass_done(ptr noundef nonnull @R, ptr noundef nonnull %7) #17
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %662, label %692

662:                                              ; preds = %659
  %663 = load ptr, ptr %650, align 8, !tbaa !115
  %664 = getelementptr inbounds %struct.ObjectRen, ptr %663, i64 0, i32 2
  %665 = load ptr, ptr %664, align 8, !tbaa !116
  br label %666

666:                                              ; preds = %662, %655
  %667 = phi ptr [ %665, %662 ], [ %653, %655 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  %668 = getelementptr inbounds %struct.Object, ptr %667, i64 0, i32 98
  call fastcc void @copy_v4_v4(ptr noundef nonnull %6, ptr noundef nonnull %668) #19
  %669 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  %670 = load float, ptr %669, align 4, !tbaa !67
  %671 = fcmp olt float %670, 0.000000e+00
  br i1 %671, label %675, label %672

672:                                              ; preds = %666
  %673 = fcmp ogt float %670, 1.000000e+00
  br i1 %673, label %674, label %675

674:                                              ; preds = %672
  br label %675

675:                                              ; preds = %666, %672, %674
  %676 = phi float [ %670, %672 ], [ 1.000000e+00, %674 ], [ 0.000000e+00, %666 ]
  %677 = load <2 x float>, ptr %6, align 16, !tbaa !67
  %678 = load <2 x float>, ptr %1, align 4, !tbaa !67
  %679 = fmul <2 x float> %677, %678
  store <2 x float> %679, ptr %1, align 4, !tbaa !67
  %680 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 2
  %681 = load float, ptr %680, align 8, !tbaa !67
  %682 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 2
  %683 = load float, ptr %682, align 4, !tbaa !67
  %684 = fmul float %681, %683
  store float %684, ptr %682, align 4, !tbaa !67
  %685 = load i32, ptr %10, align 8, !tbaa !109
  %686 = and i32 %685, 65536
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %691, label %688

688:                                              ; preds = %675
  %689 = load float, ptr %526, align 4, !tbaa !112
  %690 = fmul float %676, %689
  store float %690, ptr %526, align 4, !tbaa !112
  br label %691

691:                                              ; preds = %688, %675
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  br label %692

692:                                              ; preds = %659, %691, %649, %644
  %693 = load float, ptr %526, align 4, !tbaa !112
  %694 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 3
  store float %693, ptr %694, align 4, !tbaa !67
  br label %695

695:                                              ; preds = %692, %172, %21
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @shade_lamp_loop_only_shadow(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #5 !PGOFuncName !158 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [4 x float], align 16
  %5 = alloca float, align 4
  %6 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !89
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %145, label %9

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  %10 = tail call ptr @get_lights(ptr noundef %0) #19
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  %12 = icmp eq ptr %11, null
  br i1 %12, label %133, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %15 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 117
  %16 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  %17 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %18 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 108
  %19 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  br label %20

20:                                               ; preds = %13, %102
  %21 = phi ptr [ %11, %13 ], [ %107, %102 ]
  %22 = phi float [ 0.000000e+00, %13 ], [ %106, %102 ]
  %23 = phi float [ 0.000000e+00, %13 ], [ %105, %102 ]
  %24 = phi float [ 0.000000e+00, %13 ], [ %104, %102 ]
  %25 = phi float [ 0.000000e+00, %13 ], [ %103, %102 ]
  %26 = getelementptr inbounds %struct.GroupObject, ptr %21, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !70
  %28 = icmp eq ptr %27, null
  br i1 %28, label %102, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 6
  %31 = load i16, ptr %30, align 8, !tbaa !72
  %32 = icmp eq i16 %31, 5
  br i1 %32, label %102, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 7
  %35 = load i32, ptr %34, align 4, !tbaa !74
  %36 = and i32 %35, 4
  %37 = icmp eq i32 %36, 0
  %38 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 17
  %39 = load i32, ptr %38, align 4, !tbaa !78
  br i1 %37, label %46, label %40

40:                                               ; preds = %33
  %41 = load ptr, ptr %14, align 8, !tbaa !79
  %42 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %41, i64 0, i32 7
  %43 = load i32, ptr %42, align 8, !tbaa !80
  %44 = and i32 %43, %39
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %102, label %46

46:                                               ; preds = %33, %40
  %47 = load i32, ptr %15, align 8, !tbaa !82
  %48 = and i32 %47, %39
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %102, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 57
  %52 = load ptr, ptr %51, align 8, !tbaa !94
  %53 = icmp eq ptr %52, null
  %54 = and i32 %35, 8192
  %55 = icmp eq i32 %54, 0
  %56 = and i1 %55, %53
  br i1 %56, label %102, label %57

57:                                               ; preds = %50
  %58 = call float @lamp_get_visibility(ptr noundef nonnull %27, ptr noundef nonnull %16, ptr noundef nonnull %3, ptr noundef nonnull %5) #19
  %59 = fadd float %25, 1.000000e+00
  %60 = fcmp ugt float %58, 0.000000e+00
  br i1 %60, label %68, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %0, align 8, !tbaa !58
  %63 = getelementptr inbounds %struct.Material, ptr %62, i64 0, i32 126
  %64 = load i16, ptr %63, align 4, !tbaa !159
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %102

66:                                               ; preds = %61
  %67 = fadd float %24, 1.000000e+00
  br label %102

68:                                               ; preds = %57
  %69 = call fastcc float @dot_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %3) #19
  %70 = fcmp ugt float %69, 0.000000e+00
  br i1 %70, label %78, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr %0, align 8, !tbaa !58
  %73 = getelementptr inbounds %struct.Material, ptr %72, i64 0, i32 126
  %74 = load i16, ptr %73, align 4, !tbaa !159
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %102

76:                                               ; preds = %71
  %77 = fadd float %24, 1.000000e+00
  br label %102

78:                                               ; preds = %68
  %79 = load i32, ptr %18, align 8, !tbaa !133
  call void @lamp_get_shadow(ptr noundef nonnull %27, ptr noundef nonnull %0, float noundef %69, ptr noundef nonnull %4, i32 noundef %79) #19
  %80 = load ptr, ptr %0, align 8, !tbaa !58
  %81 = getelementptr inbounds %struct.Material, ptr %80, i64 0, i32 126
  %82 = load i16, ptr %81, align 4, !tbaa !159
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = fsub float 1.000000e+00, %58
  %86 = call fastcc float @rgb_to_grayscale(ptr noundef nonnull %4) #19
  %87 = fmul float %58, %86
  %88 = load float, ptr %19, align 4, !tbaa !67
  %89 = call float @llvm.fmuladd.f32(float %87, float %88, float %85)
  %90 = fadd float %24, %89
  br label %102

91:                                               ; preds = %78
  %92 = call fastcc float @rgb_to_grayscale(ptr noundef nonnull %4) #19
  %93 = load float, ptr %19, align 4, !tbaa !67
  %94 = fmul float %92, %93
  %95 = fmul float %58, %94
  %96 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 15
  %97 = load float, ptr %96, align 4, !tbaa !160
  %98 = call float @llvm.fmuladd.f32(float %95, float %97, float %23)
  %99 = icmp eq i16 %82, 1
  br i1 %99, label %100, label %102

100:                                              ; preds = %91
  %101 = call float @llvm.fmuladd.f32(float %58, float %97, float %22)
  br label %102

102:                                              ; preds = %50, %91, %100, %84, %71, %76, %61, %66, %46, %40, %29, %20
  %103 = phi float [ %25, %20 ], [ %25, %29 ], [ %25, %40 ], [ %25, %46 ], [ %59, %66 ], [ %59, %61 ], [ %59, %76 ], [ %59, %71 ], [ %59, %84 ], [ %59, %100 ], [ %59, %91 ], [ %25, %50 ]
  %104 = phi float [ %24, %20 ], [ %24, %29 ], [ %24, %40 ], [ %24, %46 ], [ %67, %66 ], [ %24, %61 ], [ %77, %76 ], [ %24, %71 ], [ %90, %84 ], [ %24, %100 ], [ %24, %91 ], [ %24, %50 ]
  %105 = phi float [ %23, %20 ], [ %23, %29 ], [ %23, %40 ], [ %23, %46 ], [ %23, %66 ], [ %23, %61 ], [ %23, %76 ], [ %23, %71 ], [ %23, %84 ], [ %98, %100 ], [ %98, %91 ], [ %23, %50 ]
  %106 = phi float [ %22, %20 ], [ %22, %29 ], [ %22, %40 ], [ %22, %46 ], [ %22, %66 ], [ %22, %61 ], [ %22, %76 ], [ %22, %71 ], [ %22, %84 ], [ %101, %100 ], [ %22, %91 ], [ %22, %50 ]
  %107 = load ptr, ptr %21, align 8, !tbaa !69
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %20, !llvm.loop !161

109:                                              ; preds = %102
  %110 = fcmp ogt float %103, 0.000000e+00
  br i1 %110, label %111, label %133

111:                                              ; preds = %109
  %112 = load ptr, ptr %0, align 8, !tbaa !58
  %113 = getelementptr inbounds %struct.Material, ptr %112, i64 0, i32 126
  %114 = load i16, ptr %113, align 4, !tbaa !159
  switch i16 %114, label %123 [
    i16 0, label %115
    i16 1, label %118
  ]

115:                                              ; preds = %111
  %116 = fdiv float %104, %103
  %117 = fsub float 1.000000e+00, %116
  br label %125

118:                                              ; preds = %111
  %119 = fcmp ogt float %106, 0.000000e+00
  br i1 %119, label %120, label %125

120:                                              ; preds = %118
  %121 = fsub float %106, %105
  %122 = fdiv float %121, %106
  br label %125

123:                                              ; preds = %111
  %124 = fsub float 1.000000e+00, %105
  br label %125

125:                                              ; preds = %118, %123, %120, %115
  %126 = phi float [ %117, %115 ], [ %122, %120 ], [ %124, %123 ], [ 0.000000e+00, %118 ]
  %127 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 49
  %128 = load float, ptr %127, align 8, !tbaa !105
  %129 = fmul float %126, %128
  %130 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  store float %129, ptr %130, align 4, !tbaa !112
  %131 = fcmp olt float %129, 0.000000e+00
  br i1 %131, label %132, label %144

132:                                              ; preds = %125
  store float 0.000000e+00, ptr %130, align 4, !tbaa !112
  br label %144

133:                                              ; preds = %9, %109
  %134 = load ptr, ptr %0, align 8, !tbaa !58
  %135 = getelementptr inbounds %struct.Material, ptr %134, i64 0, i32 126
  %136 = load i16, ptr %135, align 4, !tbaa !159
  %137 = icmp eq i16 %136, 2
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 49
  %140 = load float, ptr %139, align 8, !tbaa !105
  %141 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  store float %140, ptr %141, align 4, !tbaa !112
  br label %144

142:                                              ; preds = %133
  %143 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  store float 0.000000e+00, ptr %143, align 4, !tbaa !112
  br label %144

144:                                              ; preds = %138, %142, %125, %132
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #18
  br label %145

145:                                              ; preds = %144, %2
  %146 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 23), align 2, !tbaa !92
  %147 = zext i16 %146 to i32
  %148 = and i32 %147, 80
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %221, label %150

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 44
  %152 = load float, ptr %151, align 4, !tbaa !124
  %153 = fcmp une float %152, 0.000000e+00
  br i1 %153, label %154, label %221

154:                                              ; preds = %150
  %155 = and i32 %147, 64
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %192, label %157

157:                                              ; preds = %154
  %158 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 48), align 8, !tbaa !162
  %159 = fmul float %152, %158
  %160 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 52), align 4, !tbaa !163
  %161 = icmp eq i16 %160, 0
  %162 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 100
  %163 = call fastcc float @rgb_to_grayscale(ptr noundef nonnull %162) #19
  br i1 %161, label %164, label %183

164:                                              ; preds = %157
  %165 = load ptr, ptr %0, align 8, !tbaa !58
  %166 = getelementptr inbounds %struct.Material, ptr %165, i64 0, i32 126
  %167 = load i16, ptr %166, align 4, !tbaa !159
  %168 = icmp eq i16 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %164
  %170 = fsub float 1.000000e+00, %163
  %171 = fmul float %159, %170
  %172 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  %173 = load float, ptr %172, align 4, !tbaa !112
  %174 = fadd float %173, %171
  %175 = fmul float %171, %174
  store float %175, ptr %172, align 4, !tbaa !112
  br label %192

176:                                              ; preds = %164
  %177 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  %178 = load float, ptr %177, align 4, !tbaa !112
  %179 = fneg float %159
  %180 = call float @llvm.fmuladd.f32(float %179, float %163, float %178)
  store float %180, ptr %177, align 4, !tbaa !112
  %181 = fcmp olt float %180, 0.000000e+00
  br i1 %181, label %182, label %192

182:                                              ; preds = %176
  store float 0.000000e+00, ptr %177, align 4, !tbaa !112
  br label %192

183:                                              ; preds = %157
  %184 = fsub float 1.000000e+00, %159
  %185 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  %186 = load float, ptr %185, align 4, !tbaa !112
  %187 = fsub float 1.000000e+00, %186
  %188 = fneg float %187
  %189 = call float @llvm.fmuladd.f32(float %188, float %163, float 1.000000e+00)
  %190 = fmul float %159, %189
  %191 = call float @llvm.fmuladd.f32(float %184, float %186, float %190)
  store float %191, ptr %185, align 4, !tbaa !112
  br label %192

192:                                              ; preds = %183, %176, %182, %169, %154
  %193 = and i16 %146, 16
  %194 = icmp eq i16 %193, 0
  br i1 %194, label %221, label %195

195:                                              ; preds = %192
  %196 = load ptr, ptr %0, align 8, !tbaa !58
  %197 = getelementptr inbounds %struct.Material, ptr %196, i64 0, i32 126
  %198 = load i16, ptr %197, align 4, !tbaa !159
  %199 = icmp eq i16 %198, 0
  %200 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 59), align 4, !tbaa !123
  br i1 %199, label %201, label %211

201:                                              ; preds = %195
  %202 = fmul float %152, %200
  %203 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 102
  %204 = call fastcc float @rgb_to_grayscale(ptr noundef nonnull %203) #19
  %205 = fsub float 1.000000e+00, %204
  %206 = fmul float %202, %205
  %207 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  %208 = load float, ptr %207, align 4, !tbaa !112
  %209 = fadd float %208, %206
  %210 = fmul float %206, %209
  store float %210, ptr %207, align 4, !tbaa !112
  br label %221

211:                                              ; preds = %195
  %212 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 102
  %213 = call fastcc float @rgb_to_grayscale(ptr noundef nonnull %212) #19
  %214 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  %215 = load float, ptr %214, align 4, !tbaa !112
  %216 = fneg float %200
  %217 = fmul float %152, %216
  %218 = call float @llvm.fmuladd.f32(float %217, float %213, float %215)
  store float %218, ptr %214, align 4, !tbaa !112
  %219 = fcmp olt float %218, 0.000000e+00
  br i1 %219, label %220, label %221

220:                                              ; preds = %211
  store float 0.000000e+00, ptr %214, align 4, !tbaa !112
  br label %221

221:                                              ; preds = %192, %211, %220, %201, %150, %145
  ret void
}

; Function Attrs: optsize
declare i32 @sss_pass_done(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @shade_one_light(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #5 !PGOFuncName !164 {
  %5 = alloca [3 x float], align 8
  %6 = alloca float, align 4
  %7 = alloca [3 x float], align 8
  %8 = alloca [4 x float], align 16
  %9 = alloca [3 x float], align 8
  %10 = alloca [3 x float], align 8
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 8
  %15 = load ptr, ptr %1, align 8, !tbaa !58
  %16 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #18
  %18 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 16
  %19 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 30
  %20 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 15
  %21 = load float, ptr %20, align 4, !tbaa !160
  %22 = fcmp oeq float %21, 0.000000e+00
  br i1 %22, label %690, label %23

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 7
  %25 = load i32, ptr %24, align 4, !tbaa !74
  %26 = and i32 %25, 32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 51
  %30 = load i32, ptr %29, align 4, !tbaa !103
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %690, label %33

33:                                               ; preds = %28
  %34 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !89
  %35 = and i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %690, label %37

37:                                               ; preds = %33, %23
  %38 = and i32 %25, 256
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 8
  %42 = load float, ptr %41, align 8, !tbaa !83
  %43 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 9
  %44 = load float, ptr %43, align 4, !tbaa !84
  %45 = fadd float %42, %44
  %46 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 10
  %47 = load float, ptr %46, align 8, !tbaa !85
  %48 = fadd float %45, %47
  %49 = fcmp oeq float %48, 0.000000e+00
  br i1 %49, label %690, label %50

50:                                               ; preds = %40, %37
  %51 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 29
  %52 = call float @lamp_get_visibility(ptr noundef nonnull %0, ptr noundef nonnull %51, ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  %53 = fcmp oeq float %52, 0.000000e+00
  br i1 %53, label %690, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 6
  %56 = load i16, ptr %55, align 8, !tbaa !72
  %57 = icmp ne i16 %56, 2
  %58 = load i32, ptr %24, align 4, !tbaa !74
  %59 = and i32 %58, 512
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %57, i1 true, i1 %60
  br i1 %61, label %126, label %62

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 15
  store i16 1, ptr %63, align 8, !tbaa !98
  %64 = load float, ptr %5, align 8, !tbaa !67
  %65 = load float, ptr %51, align 8, !tbaa !67
  %66 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 5
  %67 = load float, ptr %66, align 4, !tbaa !67
  %68 = fsub float %65, %67
  %69 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 78
  %70 = load float, ptr %69, align 8, !tbaa !67
  %71 = fadd float %68, %70
  %72 = load float, ptr %6, align 4, !tbaa !67
  %73 = fdiv float %71, %72
  %74 = fsub float %64, %73
  %75 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 92
  store float %74, ptr %75, align 8, !tbaa !67
  %76 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !67
  %78 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 29, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !67
  %80 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 5, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !67
  %82 = fsub float %79, %81
  %83 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 78, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !67
  %85 = fadd float %82, %84
  %86 = fdiv float %85, %72
  %87 = fsub float %77, %86
  %88 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 92, i64 1
  store float %87, ptr %88, align 4, !tbaa !67
  %89 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %90 = load float, ptr %89, align 8, !tbaa !67
  %91 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 29, i64 2
  %92 = load float, ptr %91, align 8, !tbaa !67
  %93 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 5, i64 2
  %94 = load float, ptr %93, align 4, !tbaa !67
  %95 = fsub float %92, %94
  %96 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 78, i64 2
  %97 = load float, ptr %96, align 8, !tbaa !67
  %98 = fadd float %95, %97
  %99 = fdiv float %98, %72
  %100 = fsub float %90, %99
  %101 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 92, i64 2
  store float %100, ptr %101, align 8, !tbaa !67
  %102 = load float, ptr %66, align 4, !tbaa !67
  %103 = fsub float %65, %102
  %104 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 79
  %105 = load float, ptr %104, align 4, !tbaa !67
  %106 = fadd float %103, %105
  %107 = fdiv float %106, %72
  %108 = fsub float %64, %107
  %109 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 93
  store float %108, ptr %109, align 4, !tbaa !67
  %110 = load float, ptr %80, align 4, !tbaa !67
  %111 = fsub float %79, %110
  %112 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 79, i64 1
  %113 = load float, ptr %112, align 4, !tbaa !67
  %114 = fadd float %111, %113
  %115 = fdiv float %114, %72
  %116 = fsub float %77, %115
  %117 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 93, i64 1
  store float %116, ptr %117, align 4, !tbaa !67
  %118 = load float, ptr %93, align 4, !tbaa !67
  %119 = fsub float %92, %118
  %120 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 79, i64 2
  %121 = load float, ptr %120, align 4, !tbaa !67
  %122 = fadd float %119, %121
  %123 = fdiv float %122, %72
  %124 = fsub float %90, %123
  %125 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 93, i64 2
  store float %124, ptr %125, align 4, !tbaa !67
  br label %126

126:                                              ; preds = %62, %54
  %127 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 8
  %128 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %129 = load <2 x float>, ptr %127, align 8, !tbaa !67
  store <2 x float> %129, ptr %7, align 8, !tbaa !67
  %130 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 10
  %131 = load float, ptr %130, align 8, !tbaa !85
  %132 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float %131, ptr %132, align 8, !tbaa !67
  %133 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 12
  %134 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %135 = load <2 x float>, ptr %133, align 8, !tbaa !67
  store <2 x float> %135, ptr %9, align 8, !tbaa !67
  %136 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 14
  %137 = load float, ptr %136, align 8, !tbaa !165
  %138 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float %137, ptr %138, align 8, !tbaa !67
  %139 = and i32 %58, 256
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %126
  call void @do_lamp_tex(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %1, ptr noundef nonnull %7, i32 noundef 256) #17
  %142 = load i32, ptr %24, align 4, !tbaa !74
  br label %143

143:                                              ; preds = %141, %126
  %144 = phi i32 [ %142, %141 ], [ %58, %126 ]
  %145 = and i32 %144, 65536
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %143
  call void @do_lamp_tex(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %1, ptr noundef nonnull %9, i32 noundef 65536) #17
  br label %148

148:                                              ; preds = %147, %143
  %149 = getelementptr inbounds %struct.VlakRen, ptr %17, i64 0, i32 7
  %150 = load i8, ptr %149, align 1, !tbaa !99
  %151 = and i8 %150, 64
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %186, label %153

153:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #18
  %154 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 51
  %155 = load i32, ptr %154, align 4, !tbaa !103
  %156 = icmp sgt i32 %155, -1
  br i1 %156, label %167, label %157

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 110
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %158, ptr noundef nonnull %18) #19
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %18, ptr noundef nonnull %11) #19
  %159 = call fastcc float @dot_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %158) #19
  %160 = fsub float 1.000000e+00, %159
  %161 = fcmp olt float %160, 0.000000e+00
  br i1 %161, label %165, label %162

162:                                              ; preds = %157
  %163 = fcmp ogt float %160, 1.000000e+00
  br i1 %163, label %164, label %165

164:                                              ; preds = %162
  br label %165

165:                                              ; preds = %157, %162, %164
  %166 = phi float [ 1.000000e+00, %164 ], [ %160, %162 ], [ 0.000000e+00, %157 ]
  call void @interp_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef nonnull %158, float noundef %166) #17
  br label %168

167:                                              ; preds = %153
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %5, ptr noundef nonnull %18) #19
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %18) #19
  br label %168

168:                                              ; preds = %167, %165
  call fastcc void @normalize_v3(ptr noundef nonnull %10) #19
  %169 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 66
  %170 = load float, ptr %169, align 8, !tbaa !166
  %171 = fcmp ogt float %170, 0.000000e+00
  br i1 %171, label %172, label %180

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 111
  %174 = load float, ptr %173, align 4, !tbaa !167
  %175 = fcmp ogt float %170, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %172
  %177 = fsub float %170, %174
  %178 = fdiv float %177, %170
  %179 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 110
  call void @interp_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef nonnull %179, float noundef %178) #17
  call fastcc void @normalize_v3(ptr noundef nonnull %10) #19
  br label %180

180:                                              ; preds = %172, %176, %168
  %181 = load <2 x float>, ptr %10, align 8, !tbaa !67
  %182 = fneg <2 x float> %181
  store <2 x float> %182, ptr %10, align 8, !tbaa !67
  %183 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %184 = load float, ptr %183, align 8, !tbaa !67
  %185 = fneg float %184
  store float %185, ptr %183, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #18
  br label %198

186:                                              ; preds = %148
  %187 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 51
  %188 = load i32, ptr %187, align 4, !tbaa !103
  %189 = and i32 %188, 67108864
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %198, label %191

191:                                              ; preds = %186
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #18
  %192 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 65
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %5, ptr noundef nonnull %192) #19
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %13, ptr noundef nonnull %192) #19
  call fastcc void @normalize_v3(ptr noundef nonnull %10) #19
  %193 = load <2 x float>, ptr %10, align 8, !tbaa !67
  %194 = fneg <2 x float> %193
  store <2 x float> %194, ptr %10, align 8, !tbaa !67
  %195 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %196 = load float, ptr %195, align 8, !tbaa !67
  %197 = fneg float %196
  store float %197, ptr %195, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #18
  br label %198

198:                                              ; preds = %186, %191, %180
  %199 = phi ptr [ %10, %180 ], [ %10, %191 ], [ %18, %186 ]
  %200 = call fastcc float @dot_v3v3(ptr noundef nonnull %199, ptr noundef nonnull %5) #19
  %201 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !89
  %202 = and i32 %201, 2
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %256, label %204

204:                                              ; preds = %198
  %205 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 51
  %206 = load i32, ptr %205, align 4, !tbaa !103
  %207 = and i32 %206, 2
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %256, label %209

209:                                              ; preds = %204
  %210 = load i16, ptr %55, align 8, !tbaa !72
  %211 = add i16 %210, -3
  %212 = icmp ult i16 %211, 2
  br i1 %212, label %256, label %213

213:                                              ; preds = %209
  %214 = and i32 %206, 4194304
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %237, label %216

216:                                              ; preds = %213
  %217 = load i32, ptr %24, align 4, !tbaa !74
  %218 = and i32 %217, 8192
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %237, label %220

220:                                              ; preds = %216
  %221 = load i8, ptr %149, align 1, !tbaa !99
  %222 = and i8 %221, 1
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %237, label %224

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 4
  %226 = load ptr, ptr %225, align 8, !tbaa !115
  %227 = getelementptr inbounds %struct.ObjectRen, ptr %226, i64 0, i32 2
  %228 = load ptr, ptr %227, align 8, !tbaa !116
  %229 = getelementptr inbounds %struct.Object, ptr %228, i64 0, i32 116
  %230 = load float, ptr %229, align 4, !tbaa !168
  %231 = fcmp ogt float %200, %230
  %232 = fsub float %200, %230
  %233 = fsub float 1.000000e+00, %230
  %234 = fmul float %200, %233
  %235 = fdiv float %232, %234
  %236 = select i1 %231, float %235, float 0.000000e+00
  br label %256

237:                                              ; preds = %220, %216, %213
  %238 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 70
  %239 = load float, ptr %238, align 4, !tbaa !172
  %240 = fcmp une float %239, 0.000000e+00
  br i1 %240, label %241, label %256

241:                                              ; preds = %237
  %242 = load i32, ptr %24, align 4, !tbaa !74
  %243 = and i32 %242, 8192
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %241
  %246 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 57
  %247 = load ptr, ptr %246, align 8, !tbaa !94
  %248 = icmp eq ptr %247, null
  br i1 %248, label %256, label %249

249:                                              ; preds = %245, %241
  %250 = fcmp ogt float %200, %239
  br i1 %250, label %251, label %256

251:                                              ; preds = %249
  %252 = fsub float %200, %239
  %253 = fsub float 1.000000e+00, %239
  %254 = fmul float %200, %253
  %255 = fdiv float %252, %254
  br label %256

256:                                              ; preds = %209, %249, %204, %224, %251, %245, %237, %198
  %257 = phi float [ %236, %224 ], [ %255, %251 ], [ 1.000000e+00, %245 ], [ 1.000000e+00, %237 ], [ 1.000000e+00, %204 ], [ 1.000000e+00, %198 ], [ 1.000000e+00, %209 ], [ 0.000000e+00, %249 ]
  %258 = load i32, ptr %24, align 4, !tbaa !74
  %259 = and i32 %258, 2048
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %291

261:                                              ; preds = %256
  %262 = load i16, ptr %55, align 8, !tbaa !72
  switch i16 %262, label %267 [
    i16 3, label %263
    i16 4, label %265
  ]

263:                                              ; preds = %261
  %264 = call float @llvm.fmuladd.f32(float %200, float 5.000000e-01, float 5.000000e-01)
  br label %291

265:                                              ; preds = %261
  %266 = call fastcc float @area_lamp_energy_multisample(ptr noundef nonnull %0, ptr noundef nonnull %51, ptr noundef nonnull %199) #19
  br label %267

267:                                              ; preds = %261, %265
  %268 = phi float [ %266, %265 ], [ %200, %261 ]
  %269 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 83
  %270 = load i16, ptr %269, align 8, !tbaa !173
  switch i16 %270, label %291 [
    i16 1, label %271
    i16 2, label %275
    i16 3, label %281
    i16 4, label %285
  ]

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 85
  %273 = load float, ptr %272, align 4, !tbaa !174
  %274 = call fastcc float @OrenNayar_Diff(float noundef %268, ptr noundef nonnull %199, ptr noundef nonnull %5, ptr noundef nonnull %19, float noundef %273) #19
  br label %291

275:                                              ; preds = %267
  %276 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 87
  %277 = load float, ptr %276, align 4, !tbaa !67
  %278 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 87, i64 1
  %279 = load float, ptr %278, align 4, !tbaa !67
  %280 = call fastcc float @Toon_Diff(ptr noundef nonnull %199, ptr noundef nonnull %5, float noundef %277, float noundef %279) #19
  br label %291

281:                                              ; preds = %267
  %282 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 89
  %283 = load float, ptr %282, align 8, !tbaa !175
  %284 = call fastcc float @Minnaert_Diff(float noundef %268, ptr noundef nonnull %199, ptr noundef nonnull %19, float noundef %283) #19
  br label %291

285:                                              ; preds = %267
  %286 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 87
  %287 = load float, ptr %286, align 4, !tbaa !67
  %288 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 87, i64 1
  %289 = load float, ptr %288, align 4, !tbaa !67
  %290 = call fastcc float @Fresnel_Diff(ptr noundef nonnull %199, ptr noundef nonnull %5, float noundef %287, float noundef %289) #19
  br label %291

291:                                              ; preds = %267, %256, %263, %275, %285, %281, %271
  %292 = phi float [ %200, %263 ], [ %268, %271 ], [ %268, %275 ], [ %268, %281 ], [ %268, %285 ], [ %200, %256 ], [ %268, %267 ]
  %293 = phi float [ %264, %263 ], [ %274, %271 ], [ %280, %275 ], [ %284, %281 ], [ %290, %285 ], [ 0.000000e+00, %256 ], [ %268, %267 ]
  %294 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 50
  %295 = load i16, ptr %294, align 2, !tbaa !114
  %296 = and i16 %295, 1
  %297 = icmp ne i16 %296, 0
  %298 = fcmp ogt float %293, 0.000000e+00
  %299 = select i1 %297, i1 %298, i1 false
  %300 = fcmp olt float %293, 1.000000e+00
  %301 = select i1 %299, i1 %300, i1 false
  br i1 %301, label %302, label %308

302:                                              ; preds = %291
  %303 = fmul float %293, 3.000000e+00
  %304 = fmul float %293, -2.000000e+00
  %305 = fmul float %293, %304
  %306 = fmul float %293, %305
  %307 = call float @llvm.fmuladd.f32(float %303, float %293, float %306)
  br label %308

308:                                              ; preds = %302, %291
  %309 = phi float [ %307, %302 ], [ %293, %291 ]
  %310 = fmul float %257, %309
  %311 = fcmp ogt float %310, 0.000000e+00
  br i1 %311, label %312, label %317

312:                                              ; preds = %308
  %313 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 50
  %314 = load float, ptr %313, align 4, !tbaa !125
  %315 = fmul float %52, %314
  %316 = fmul float %310, %315
  br label %317

317:                                              ; preds = %312, %308
  %318 = phi float [ %316, %312 ], [ %310, %308 ]
  %319 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 51
  %320 = load i32, ptr %319, align 4, !tbaa !103
  %321 = and i32 %320, 67108864
  %322 = icmp eq i32 %321, 0
  %323 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 65
  %324 = select i1 %322, ptr %18, ptr %323
  %325 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  %326 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 2
  %327 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 1
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %8, align 16, !tbaa !67
  %328 = fcmp ogt float %52, 0.000000e+00
  br i1 %328, label %329, label %690

329:                                              ; preds = %317
  %330 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !89
  %331 = and i32 %330, 2
  %332 = icmp eq i32 %331, 0
  %333 = and i32 %320, 2
  %334 = icmp eq i32 %333, 0
  %335 = select i1 %332, i1 true, i1 %334
  br i1 %335, label %336, label %338

336:                                              ; preds = %329
  %337 = load i32, ptr %24, align 4, !tbaa !74
  br label %415

338:                                              ; preds = %329
  %339 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 57
  %340 = load ptr, ptr %339, align 8, !tbaa !94
  %341 = icmp eq ptr %340, null
  br i1 %341, label %342, label %346

342:                                              ; preds = %338
  %343 = load i32, ptr %24, align 4, !tbaa !74
  %344 = and i32 %343, 8192
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %415, label %346

346:                                              ; preds = %342, %338
  %347 = icmp eq ptr %324, %10
  br i1 %347, label %348, label %350

348:                                              ; preds = %346
  %349 = call fastcc float @dot_v3v3(ptr noundef nonnull %18, ptr noundef nonnull %5) #19
  br label %350

350:                                              ; preds = %346, %348
  %351 = phi float [ %349, %348 ], [ %292, %346 ]
  %352 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 108
  %353 = load i32, ptr %352, align 8, !tbaa !133
  call void @lamp_get_shadow(ptr noundef nonnull %0, ptr noundef nonnull %1, float noundef %351, ptr noundef nonnull %8, i32 noundef %353) #19
  %354 = load i32, ptr %24, align 4, !tbaa !74
  %355 = and i32 %354, 32
  %356 = icmp ne i32 %355, 0
  %357 = fcmp ogt float %318, 0.000000e+00
  %358 = select i1 %356, i1 %357, i1 false
  br i1 %358, label %359, label %411

359:                                              ; preds = %350
  %360 = load float, ptr %20, align 4, !tbaa !160
  %361 = load float, ptr %325, align 4, !tbaa !67
  %362 = fsub float 1.000000e+00, %361
  %363 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 32
  %364 = load float, ptr %363, align 4, !tbaa !110
  %365 = load float, ptr %9, align 8, !tbaa !67
  %366 = fsub float 1.000000e+00, %365
  %367 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 9
  %368 = load float, ptr %367, align 4, !tbaa !67
  %369 = fneg float %318
  %370 = fmul float %360, %369
  %371 = fmul float %370, %362
  %372 = fmul float %364, %371
  %373 = call float @llvm.fmuladd.f32(float %372, float %366, float %368)
  store float %373, ptr %367, align 4, !tbaa !67
  %374 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 33
  %375 = load float, ptr %374, align 8, !tbaa !111
  %376 = load float, ptr %134, align 4, !tbaa !67
  %377 = fsub float 1.000000e+00, %376
  %378 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 9, i64 1
  %379 = load float, ptr %378, align 4, !tbaa !67
  %380 = fmul float %375, %371
  %381 = call float @llvm.fmuladd.f32(float %380, float %377, float %379)
  store float %381, ptr %378, align 4, !tbaa !67
  %382 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 34
  %383 = load float, ptr %382, align 4, !tbaa !104
  %384 = load float, ptr %138, align 8, !tbaa !67
  %385 = fsub float 1.000000e+00, %384
  %386 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 9, i64 2
  %387 = load float, ptr %386, align 4, !tbaa !67
  %388 = fmul float %383, %371
  %389 = call float @llvm.fmuladd.f32(float %388, float %385, float %387)
  store float %389, ptr %386, align 4, !tbaa !67
  %390 = and i32 %354, 4096
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %690

392:                                              ; preds = %359
  %393 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 35
  %394 = load float, ptr %393, align 8, !tbaa !176
  %395 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 8
  %396 = load float, ptr %395, align 4, !tbaa !67
  %397 = fmul float %394, %371
  %398 = call float @llvm.fmuladd.f32(float %397, float %366, float %396)
  store float %398, ptr %395, align 4, !tbaa !67
  %399 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 36
  %400 = load float, ptr %399, align 4, !tbaa !177
  %401 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 8, i64 1
  %402 = load float, ptr %401, align 4, !tbaa !67
  %403 = fmul float %400, %371
  %404 = call float @llvm.fmuladd.f32(float %403, float %377, float %402)
  store float %404, ptr %401, align 4, !tbaa !67
  %405 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 37
  %406 = load float, ptr %405, align 8, !tbaa !178
  %407 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 8, i64 2
  %408 = load float, ptr %407, align 4, !tbaa !67
  %409 = fmul float %406, %371
  %410 = call float @llvm.fmuladd.f32(float %409, float %385, float %408)
  store float %410, ptr %407, align 4, !tbaa !67
  br label %690

411:                                              ; preds = %350
  %412 = load float, ptr %325, align 4, !tbaa !67
  %413 = fmul float %318, %412
  %414 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 9, i64 3
  store float %412, ptr %414, align 4, !tbaa !67
  br label %415

415:                                              ; preds = %336, %411, %342
  %416 = phi i32 [ %354, %411 ], [ %343, %342 ], [ %337, %336 ]
  %417 = phi float [ %413, %411 ], [ %318, %342 ], [ %318, %336 ]
  %418 = and i32 %416, 2048
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %420, label %494

420:                                              ; preds = %415
  %421 = fcmp ogt float %417, 0.000000e+00
  br i1 %421, label %422, label %447

422:                                              ; preds = %420
  %423 = load i32, ptr %319, align 4, !tbaa !103
  %424 = and i32 %423, 524288
  %425 = icmp eq i32 %424, 0
  %426 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 9
  br i1 %425, label %440, label %427

427:                                              ; preds = %422
  %428 = load float, ptr %8, align 16, !tbaa !67
  %429 = fmul float %417, %428
  %430 = load float, ptr %7, align 8, !tbaa !67
  %431 = fmul float %429, %430
  %432 = load float, ptr %327, align 4, !tbaa !67
  %433 = fmul float %417, %432
  %434 = load float, ptr %128, align 4, !tbaa !67
  %435 = fmul float %433, %434
  %436 = load float, ptr %326, align 8, !tbaa !67
  %437 = fmul float %417, %436
  %438 = load float, ptr %132, align 8, !tbaa !67
  %439 = fmul float %437, %438
  call fastcc void @add_to_diffuse(ptr noundef nonnull %426, ptr noundef nonnull %1, float noundef %309, float noundef %431, float noundef %435, float noundef %439) #19
  br label %447

440:                                              ; preds = %422
  %441 = load float, ptr %7, align 8, !tbaa !67
  %442 = fmul float %417, %441
  %443 = load float, ptr %128, align 4, !tbaa !67
  %444 = fmul float %417, %443
  %445 = load float, ptr %132, align 8, !tbaa !67
  %446 = fmul float %417, %445
  call fastcc void @add_to_diffuse(ptr noundef nonnull %426, ptr noundef nonnull %1, float noundef %309, float noundef %442, float noundef %444, float noundef %446) #19
  br label %447

447:                                              ; preds = %427, %440, %420
  %448 = fcmp ogt float %318, %417
  br i1 %448, label %449, label %470

449:                                              ; preds = %447
  %450 = load float, ptr %9, align 8, !tbaa !67
  %451 = fcmp oeq float %450, 0.000000e+00
  %452 = load float, ptr %134, align 4
  %453 = fcmp oeq float %452, 0.000000e+00
  %454 = select i1 %451, i1 %453, i1 false
  %455 = load float, ptr %138, align 8
  %456 = fcmp oeq float %455, 0.000000e+00
  %457 = select i1 %454, i1 %456, i1 false
  br i1 %457, label %470, label %458

458:                                              ; preds = %449
  %459 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 9
  %460 = fsub float %318, %417
  %461 = fmul float %460, %450
  %462 = load float, ptr %7, align 8, !tbaa !67
  %463 = fmul float %461, %462
  %464 = fmul float %460, %452
  %465 = load float, ptr %128, align 4, !tbaa !67
  %466 = fmul float %464, %465
  %467 = fmul float %460, %455
  %468 = load float, ptr %132, align 8, !tbaa !67
  %469 = fmul float %467, %468
  call fastcc void @add_to_diffuse(ptr noundef nonnull %459, ptr noundef nonnull %1, float noundef %309, float noundef %463, float noundef %466, float noundef %469) #19
  br label %470

470:                                              ; preds = %449, %458, %447
  %471 = fcmp ogt float %318, 0.000000e+00
  br i1 %471, label %472, label %494

472:                                              ; preds = %470
  %473 = and i32 %3, 40
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %475, label %483

475:                                              ; preds = %472
  %476 = and i32 %3, 1
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %491, label %478

478:                                              ; preds = %475
  %479 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 120
  %480 = load i32, ptr %479, align 4, !tbaa !149
  %481 = and i32 %480, 32
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %483, label %491

483:                                              ; preds = %478, %472
  %484 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 6
  %485 = load float, ptr %7, align 8, !tbaa !67
  %486 = fmul float %318, %485
  %487 = load float, ptr %128, align 4, !tbaa !67
  %488 = fmul float %318, %487
  %489 = load float, ptr %132, align 8, !tbaa !67
  %490 = fmul float %318, %489
  call fastcc void @add_to_diffuse(ptr noundef nonnull %484, ptr noundef nonnull %1, float noundef %309, float noundef %486, float noundef %488, float noundef %490) #19
  br label %494

491:                                              ; preds = %478, %475
  %492 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 6
  %493 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 9
  call fastcc void @copy_v3_v3(ptr noundef nonnull %492, ptr noundef nonnull %493) #19
  br label %494

494:                                              ; preds = %470, %491, %483, %415
  %495 = load float, ptr %325, align 4, !tbaa !67
  %496 = fmul float %257, %495
  store float %496, ptr %325, align 4, !tbaa !67
  %497 = fcmp ogt float %496, 0.000000e+00
  br i1 %497, label %498, label %690

498:                                              ; preds = %494
  %499 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 51
  %500 = load float, ptr %499, align 8, !tbaa !179
  %501 = fcmp une float %500, 0.000000e+00
  br i1 %501, label %502, label %690

502:                                              ; preds = %498
  %503 = load i32, ptr %24, align 4, !tbaa !74
  %504 = and i32 %503, 4128
  %505 = icmp ne i32 %504, 0
  %506 = and i32 %3, 17
  %507 = icmp eq i32 %506, 0
  %508 = or i1 %507, %505
  br i1 %508, label %690, label %509

509:                                              ; preds = %502
  %510 = load i16, ptr %55, align 8, !tbaa !72
  %511 = icmp eq i16 %510, 3
  br i1 %511, label %512, label %565

512:                                              ; preds = %509
  %513 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %514 = load <2 x float>, ptr %19, align 4, !tbaa !67
  %515 = load <2 x float>, ptr %5, align 8, !tbaa !67
  %516 = fadd <2 x float> %514, %515
  store <2 x float> %516, ptr %5, align 8, !tbaa !67
  %517 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 30, i64 2
  %518 = load float, ptr %517, align 4, !tbaa !67
  %519 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %520 = load float, ptr %519, align 8, !tbaa !67
  %521 = fadd float %518, %520
  store float %521, ptr %519, align 8, !tbaa !67
  call fastcc void @normalize_v3(ptr noundef nonnull %5) #19
  %522 = load float, ptr %324, align 4, !tbaa !67
  %523 = load float, ptr %5, align 8, !tbaa !67
  %524 = getelementptr inbounds float, ptr %324, i64 1
  %525 = load float, ptr %524, align 4, !tbaa !67
  %526 = load float, ptr %513, align 4, !tbaa !67
  %527 = fmul float %525, %526
  %528 = call float @llvm.fmuladd.f32(float %522, float %523, float %527)
  %529 = getelementptr inbounds float, ptr %324, i64 2
  %530 = load float, ptr %529, align 4, !tbaa !67
  %531 = load float, ptr %519, align 8, !tbaa !67
  %532 = call float @llvm.fmuladd.f32(float %530, float %531, float %528)
  %533 = load i16, ptr %55, align 8, !tbaa !72
  %534 = icmp eq i16 %533, 3
  %535 = call float @llvm.fmuladd.f32(float %532, float 5.000000e-01, float 5.000000e-01)
  %536 = select i1 %534, float %535, float %532
  %537 = load float, ptr %325, align 4, !tbaa !67
  %538 = load float, ptr %499, align 8, !tbaa !179
  %539 = fmul float %537, %538
  %540 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 55
  %541 = load i32, ptr %540, align 8, !tbaa !180
  %542 = call fastcc float @spec(float noundef %536, i32 noundef %541) #19
  %543 = fmul float %539, %542
  %544 = load float, ptr %7, align 8, !tbaa !67
  %545 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 35
  %546 = load float, ptr %545, align 8, !tbaa !176
  %547 = fmul float %544, %546
  %548 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 8
  %549 = load float, ptr %548, align 4, !tbaa !67
  %550 = call float @llvm.fmuladd.f32(float %543, float %547, float %549)
  store float %550, ptr %548, align 4, !tbaa !67
  %551 = load float, ptr %128, align 4, !tbaa !67
  %552 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 36
  %553 = load float, ptr %552, align 4, !tbaa !177
  %554 = fmul float %551, %553
  %555 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 8, i64 1
  %556 = load float, ptr %555, align 4, !tbaa !67
  %557 = call float @llvm.fmuladd.f32(float %543, float %554, float %556)
  store float %557, ptr %555, align 4, !tbaa !67
  %558 = load float, ptr %132, align 8, !tbaa !67
  %559 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 37
  %560 = load float, ptr %559, align 8, !tbaa !178
  %561 = fmul float %558, %560
  %562 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 8, i64 2
  %563 = load float, ptr %562, align 4, !tbaa !67
  %564 = call float @llvm.fmuladd.f32(float %543, float %561, float %563)
  store float %564, ptr %562, align 4, !tbaa !67
  br label %690

565:                                              ; preds = %509
  %566 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 84
  %567 = load i16, ptr %566, align 2, !tbaa !181
  switch i16 %567, label %623 [
    i16 1, label %568
    i16 0, label %581
    i16 2, label %594
    i16 4, label %610
  ]

568:                                              ; preds = %565
  %569 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 55
  %570 = load i32, ptr %569, align 8, !tbaa !180
  %571 = load i8, ptr %149, align 1, !tbaa !99
  %572 = and i8 %571, 64
  %573 = icmp eq i8 %572, 0
  br i1 %573, label %574, label %578

574:                                              ; preds = %568
  %575 = load i32, ptr %319, align 4, !tbaa !103
  %576 = lshr i32 %575, 26
  %577 = and i32 %576, 1
  br label %578

578:                                              ; preds = %574, %568
  %579 = phi i32 [ 1, %568 ], [ %577, %574 ]
  %580 = call fastcc float @Phong_Spec(ptr noundef nonnull %324, ptr noundef nonnull %5, ptr noundef nonnull %19, i32 noundef %570, i32 noundef %579) #19
  br label %638

581:                                              ; preds = %565
  %582 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 55
  %583 = load i32, ptr %582, align 8, !tbaa !180
  %584 = load i8, ptr %149, align 1, !tbaa !99
  %585 = and i8 %584, 64
  %586 = icmp eq i8 %585, 0
  br i1 %586, label %587, label %591

587:                                              ; preds = %581
  %588 = load i32, ptr %319, align 4, !tbaa !103
  %589 = lshr i32 %588, 26
  %590 = and i32 %589, 1
  br label %591

591:                                              ; preds = %587, %581
  %592 = phi i32 [ 1, %581 ], [ %590, %587 ]
  %593 = call fastcc float @CookTorr_Spec(ptr noundef nonnull %324, ptr noundef nonnull %5, ptr noundef nonnull %19, i32 noundef %583, i32 noundef %592) #19
  br label %638

594:                                              ; preds = %565
  %595 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 86
  %596 = load float, ptr %595, align 8, !tbaa !182
  %597 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 55
  %598 = load i32, ptr %597, align 8, !tbaa !180
  %599 = sitofp i32 %598 to float
  %600 = load i8, ptr %149, align 1, !tbaa !99
  %601 = and i8 %600, 64
  %602 = icmp eq i8 %601, 0
  br i1 %602, label %603, label %607

603:                                              ; preds = %594
  %604 = load i32, ptr %319, align 4, !tbaa !103
  %605 = lshr i32 %604, 26
  %606 = and i32 %605, 1
  br label %607

607:                                              ; preds = %603, %594
  %608 = phi i32 [ 1, %594 ], [ %606, %603 ]
  %609 = call fastcc float @Blinn_Spec(ptr noundef nonnull %324, ptr noundef nonnull %5, ptr noundef nonnull %19, float noundef %596, float noundef %599, i32 noundef %608) #19
  br label %638

610:                                              ; preds = %565
  %611 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 88
  %612 = load float, ptr %611, align 4, !tbaa !183
  %613 = load i8, ptr %149, align 1, !tbaa !99
  %614 = and i8 %613, 64
  %615 = icmp eq i8 %614, 0
  br i1 %615, label %616, label %620

616:                                              ; preds = %610
  %617 = load i32, ptr %319, align 4, !tbaa !103
  %618 = lshr i32 %617, 26
  %619 = and i32 %618, 1
  br label %620

620:                                              ; preds = %616, %610
  %621 = phi i32 [ 1, %610 ], [ %619, %616 ]
  %622 = call fastcc float @WardIso_Spec(ptr noundef nonnull %324, ptr noundef nonnull %5, ptr noundef nonnull %19, float noundef %612, i32 noundef %621) #19
  br label %638

623:                                              ; preds = %565
  %624 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 87, i64 2
  %625 = load float, ptr %624, align 4, !tbaa !67
  %626 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 87, i64 3
  %627 = load float, ptr %626, align 4, !tbaa !67
  %628 = load i8, ptr %149, align 1, !tbaa !99
  %629 = and i8 %628, 64
  %630 = icmp eq i8 %629, 0
  br i1 %630, label %631, label %635

631:                                              ; preds = %623
  %632 = load i32, ptr %319, align 4, !tbaa !103
  %633 = lshr i32 %632, 26
  %634 = and i32 %633, 1
  br label %635

635:                                              ; preds = %631, %623
  %636 = phi i32 [ 1, %623 ], [ %634, %631 ]
  %637 = call fastcc float @Toon_Spec(ptr noundef nonnull %324, ptr noundef nonnull %5, ptr noundef nonnull %19, float noundef %625, float noundef %627, i32 noundef %636) #19
  br label %638

638:                                              ; preds = %591, %620, %635, %607, %578
  %639 = phi float [ %580, %578 ], [ %593, %591 ], [ %609, %607 ], [ %622, %620 ], [ %637, %635 ]
  %640 = load i16, ptr %55, align 8, !tbaa !72
  %641 = icmp eq i16 %640, 4
  %642 = select i1 %641, float %292, float 1.000000e+00
  %643 = fmul float %639, %642
  %644 = load float, ptr %325, align 4, !tbaa !67
  %645 = load float, ptr %499, align 8, !tbaa !179
  %646 = fmul float %644, %645
  %647 = fmul float %52, %646
  %648 = fmul float %643, %647
  %649 = load i32, ptr %319, align 4, !tbaa !103
  %650 = and i32 %649, 2097152
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %668, label %652

652:                                              ; preds = %638
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #18
  call fastcc void @do_specular_ramp(ptr noundef nonnull %1, float noundef %643, float noundef %648, ptr noundef nonnull %14) #19
  %653 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 8
  %654 = load <2 x float>, ptr %7, align 8, !tbaa !67
  %655 = load <2 x float>, ptr %14, align 8, !tbaa !67
  %656 = fmul <2 x float> %654, %655
  %657 = load <2 x float>, ptr %653, align 4, !tbaa !67
  %658 = insertelement <2 x float> poison, float %648, i64 0
  %659 = shufflevector <2 x float> %658, <2 x float> poison, <2 x i32> zeroinitializer
  %660 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %659, <2 x float> %656, <2 x float> %657)
  store <2 x float> %660, ptr %653, align 4, !tbaa !67
  %661 = load float, ptr %132, align 8, !tbaa !67
  %662 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  %663 = load float, ptr %662, align 8, !tbaa !67
  %664 = fmul float %661, %663
  %665 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 8, i64 2
  %666 = load float, ptr %665, align 4, !tbaa !67
  %667 = call float @llvm.fmuladd.f32(float %648, float %664, float %666)
  store float %667, ptr %665, align 4, !tbaa !67
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #18
  br label %690

668:                                              ; preds = %638
  %669 = load float, ptr %7, align 8, !tbaa !67
  %670 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 35
  %671 = load float, ptr %670, align 8, !tbaa !176
  %672 = fmul float %669, %671
  %673 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 8
  %674 = load float, ptr %673, align 4, !tbaa !67
  %675 = call float @llvm.fmuladd.f32(float %648, float %672, float %674)
  store float %675, ptr %673, align 4, !tbaa !67
  %676 = load float, ptr %128, align 4, !tbaa !67
  %677 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 36
  %678 = load float, ptr %677, align 4, !tbaa !177
  %679 = fmul float %676, %678
  %680 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 8, i64 1
  %681 = load float, ptr %680, align 4, !tbaa !67
  %682 = call float @llvm.fmuladd.f32(float %648, float %679, float %681)
  store float %682, ptr %680, align 4, !tbaa !67
  %683 = load float, ptr %132, align 8, !tbaa !67
  %684 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 37
  %685 = load float, ptr %684, align 8, !tbaa !178
  %686 = fmul float %683, %685
  %687 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 8, i64 2
  %688 = load float, ptr %687, align 4, !tbaa !67
  %689 = call float @llvm.fmuladd.f32(float %648, float %686, float %688)
  store float %689, ptr %687, align 4, !tbaa !67
  br label %690

690:                                              ; preds = %317, %512, %502, %498, %494, %668, %652, %359, %392, %50, %40, %28, %33, %4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #18
  ret void
}

; Function Attrs: optsize
declare i32 @sample_sss(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @wrld_exposure_correct(ptr nocapture noundef %0) unnamed_addr #1 !PGOFuncName !184 {
  %2 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 18), align 8, !tbaa !185
  %3 = load float, ptr %0, align 4, !tbaa !67
  %4 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 19), align 4, !tbaa !186
  %5 = fmul float %3, %4
  %6 = tail call float @expf(float noundef %5) #17
  %7 = fsub float 1.000000e+00, %6
  %8 = fmul float %2, %7
  store float %8, ptr %0, align 4, !tbaa !67
  %9 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 18), align 8, !tbaa !185
  %10 = getelementptr inbounds float, ptr %0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !67
  %12 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 19), align 4, !tbaa !186
  %13 = fmul float %11, %12
  %14 = tail call float @expf(float noundef %13) #17
  %15 = fsub float 1.000000e+00, %14
  %16 = fmul float %9, %15
  store float %16, ptr %10, align 4, !tbaa !67
  %17 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 18), align 8, !tbaa !185
  %18 = getelementptr inbounds float, ptr %0, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !67
  %20 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 19), align 4, !tbaa !186
  %21 = fmul float %19, %20
  %22 = tail call float @expf(float noundef %21) #17
  %23 = fsub float 1.000000e+00, %22
  %24 = fmul float %17, %23
  store float %24, ptr %18, align 4, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_fff(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #12 !PGOFuncName !187 {
  %4 = tail call fastcc float @max_ff(float noundef %0, float noundef %1) #19
  %5 = tail call fastcc float @max_ff(float noundef %4, float noundef %2) #19
  ret float %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ambient_occlusion_apply(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #5 !PGOFuncName !188 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 48), align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  %6 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !89
  %7 = and i32 %6, 65536
  %8 = icmp eq i32 %7, 0
  %9 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 64), align 2
  %10 = icmp ne i16 %9, 1
  %11 = select i1 %8, i1 %10, i1 false
  %12 = fcmp oeq float %5, 0.000000e+00
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %53, label %14

14:                                               ; preds = %2
  %15 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 52), align 4, !tbaa !163
  switch i16 %15, label %53 [
    i16 0, label %16
    i16 3, label %47
  ]

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 100
  %18 = load float, ptr %17, align 8, !tbaa !67
  %19 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 32
  %20 = load float, ptr %19, align 4, !tbaa !110
  %21 = fmul float %18, %20
  %22 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 50
  %23 = load float, ptr %22, align 4, !tbaa !125
  %24 = fmul float %21, %23
  %25 = load float, ptr %1, align 4, !tbaa !67
  %26 = tail call float @llvm.fmuladd.f32(float %24, float %5, float %25)
  store float %26, ptr %1, align 4, !tbaa !67
  %27 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 100, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !67
  %29 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 33
  %30 = load float, ptr %29, align 8, !tbaa !111
  %31 = fmul float %28, %30
  %32 = load float, ptr %22, align 4, !tbaa !125
  %33 = fmul float %31, %32
  %34 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !67
  %36 = tail call float @llvm.fmuladd.f32(float %33, float %5, float %35)
  store float %36, ptr %34, align 4, !tbaa !67
  %37 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 100, i64 2
  %38 = load float, ptr %37, align 8, !tbaa !67
  %39 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 34
  %40 = load float, ptr %39, align 4, !tbaa !104
  %41 = fmul float %38, %40
  %42 = load float, ptr %22, align 4, !tbaa !125
  %43 = fmul float %41, %42
  %44 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !67
  %46 = tail call float @llvm.fmuladd.f32(float %43, float %5, float %45)
  store float %46, ptr %44, align 4, !tbaa !67
  br label %53

47:                                               ; preds = %14
  %48 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 100
  call fastcc void @mul_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %48) #19
  %49 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8
  call fastcc void @mul_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %49, ptr noundef nonnull %48) #19
  %50 = fcmp oeq float %5, 1.000000e+00
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %3) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %49, ptr noundef nonnull %4) #19
  br label %53

52:                                               ; preds = %47
  call void @interp_v3_v3v3(ptr noundef %1, ptr noundef %1, ptr noundef nonnull %3, float noundef %5) #17
  call void @interp_v3_v3v3(ptr noundef nonnull %49, ptr noundef nonnull %49, ptr noundef nonnull %4, float noundef %5) #17
  br label %53

53:                                               ; preds = %16, %51, %52, %14, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @indirect_lighting_apply(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #8 !PGOFuncName !189 {
  %3 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 58), align 8, !tbaa !190
  %4 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !89
  %5 = and i32 %4, 65536
  %6 = icmp eq i32 %5, 0
  %7 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 64), align 2
  %8 = icmp ne i16 %7, 1
  %9 = select i1 %6, i1 %8, i1 false
  %10 = fcmp oeq float %3, 0.000000e+00
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %43, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 101
  %14 = load float, ptr %13, align 4, !tbaa !67
  %15 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 32
  %16 = load float, ptr %15, align 4, !tbaa !110
  %17 = fmul float %14, %16
  %18 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 50
  %19 = load float, ptr %18, align 4, !tbaa !125
  %20 = fmul float %17, %19
  %21 = load float, ptr %1, align 4, !tbaa !67
  %22 = tail call float @llvm.fmuladd.f32(float %20, float %3, float %21)
  store float %22, ptr %1, align 4, !tbaa !67
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 101, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !67
  %25 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 33
  %26 = load float, ptr %25, align 8, !tbaa !111
  %27 = fmul float %24, %26
  %28 = load float, ptr %18, align 4, !tbaa !125
  %29 = fmul float %27, %28
  %30 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !67
  %32 = tail call float @llvm.fmuladd.f32(float %29, float %3, float %31)
  store float %32, ptr %30, align 4, !tbaa !67
  %33 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 101, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !67
  %35 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 34
  %36 = load float, ptr %35, align 4, !tbaa !104
  %37 = fmul float %34, %36
  %38 = load float, ptr %18, align 4, !tbaa !125
  %39 = fmul float %37, %38
  %40 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !67
  %42 = tail call float @llvm.fmuladd.f32(float %39, float %3, float %41)
  store float %42, ptr %40, align 4, !tbaa !67
  br label %43

43:                                               ; preds = %2, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ramp_diffuse_result(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !191 {
  %3 = alloca [4 x float], align 16
  %4 = load ptr, ptr %1, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 92
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 94
  %10 = load i8, ptr %9, align 8, !tbaa !193
  %11 = icmp eq i8 %10, 3
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = tail call fastcc float @rgb_to_grayscale(ptr noundef %0) #19
  %14 = call zeroext i8 @do_colorband(ptr noundef nonnull %6, float noundef %13, ptr noundef nonnull %3) #17
  %15 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 3
  %16 = load float, ptr %15, align 4, !tbaa !67
  %17 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 100
  %18 = load float, ptr %17, align 8, !tbaa !194
  %19 = fmul float %16, %18
  %20 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 96
  %21 = load i8, ptr %20, align 2, !tbaa !195
  %22 = zext i8 %21 to i32
  call void @ramp_blend(i32 noundef %22, ptr noundef %0, float noundef %19, ptr noundef nonnull %3) #17
  br label %23

23:                                               ; preds = %8, %12, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ramp_spec_result(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !196 {
  %3 = alloca [4 x float], align 16
  %4 = load ptr, ptr %1, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 93
  %6 = load ptr, ptr %5, align 8, !tbaa !197
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 95
  %10 = load i8, ptr %9, align 1, !tbaa !198
  %11 = icmp eq i8 %10, 3
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %13 = tail call fastcc float @rgb_to_grayscale(ptr noundef %0) #19
  %14 = call zeroext i8 @do_colorband(ptr noundef nonnull %6, float noundef %13, ptr noundef nonnull %3) #17
  %15 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 3
  %16 = load float, ptr %15, align 4, !tbaa !67
  %17 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 101
  %18 = load float, ptr %17, align 4, !tbaa !199
  %19 = fmul float %16, %18
  %20 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 97
  %21 = load i8, ptr %20, align 1, !tbaa !200
  %22 = zext i8 %21 to i32
  call void @ramp_blend(i32 noundef %22, ptr noundef %0, float noundef %19, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  br label %23

23:                                               ; preds = %12, %8, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !201 {
  %3 = load float, ptr %1, align 4, !tbaa !67
  %4 = load float, ptr %0, align 4, !tbaa !67
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !67
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !67
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !67
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !67
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !67
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !67
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !67
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @RE_lamp_get_data(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr noundef %5) local_unnamed_addr #5 {
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %2, align 4, !tbaa !67
  %7 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  tail call fastcc void @copy_v3_v3(ptr noundef %3, ptr noundef nonnull %7) #19
  store float 1.000000e+00, ptr %4, align 4, !tbaa !67
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %5, align 4, !tbaa !67
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !202
  %10 = icmp eq i16 %9, 10
  br i1 %10, label %11, label %90

11:                                               ; preds = %6
  %12 = getelementptr inbounds float, ptr %2, i64 1
  %13 = getelementptr inbounds float, ptr %2, i64 2
  %14 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !203
  %16 = getelementptr inbounds %struct.Lamp, ptr %15, i64 0, i32 7
  %17 = load float, ptr %16, align 4, !tbaa !204
  %18 = getelementptr inbounds %struct.Lamp, ptr %15, i64 0, i32 15
  %19 = load float, ptr %18, align 4, !tbaa !206
  %20 = fmul float %17, %19
  store float %20, ptr %2, align 4, !tbaa !67
  %21 = getelementptr inbounds %struct.Lamp, ptr %15, i64 0, i32 8
  %22 = load float, ptr %21, align 8, !tbaa !207
  %23 = load float, ptr %18, align 4, !tbaa !206
  %24 = fmul float %22, %23
  store float %24, ptr %12, align 4, !tbaa !67
  %25 = getelementptr inbounds %struct.Lamp, ptr %15, i64 0, i32 9
  %26 = load float, ptr %25, align 4, !tbaa !208
  %27 = load float, ptr %18, align 4, !tbaa !206
  %28 = fmul float %26, %27
  store float %28, ptr %13, align 4, !tbaa !67
  %29 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !34
  %30 = and i32 %29, 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %11, %36
  %33 = phi ptr [ %34, %36 ], [ getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 66), %11 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !69
  %35 = icmp eq ptr %34, null
  br i1 %35, label %90, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.GroupObject, ptr %34, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !209
  %39 = getelementptr inbounds %struct.ID, ptr %38, i64 0, i32 4, i64 2
  %40 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(9) @.str) #20
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %32, !llvm.loop !210

42:                                               ; preds = %36
  %43 = tail call fastcc float @lamp_get_data_internal(ptr noundef %0, ptr noundef nonnull %34, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  br label %90

44:                                               ; preds = %11
  %45 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 121
  %46 = load ptr, ptr %45, align 8, !tbaa !56
  %47 = icmp eq ptr %46, null
  br i1 %47, label %60, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.Group, ptr %46, i64 0, i32 1
  br label %50

50:                                               ; preds = %54, %48
  %51 = phi ptr [ %49, %48 ], [ %52, %54 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !69
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.GroupObject, ptr %52, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !209
  %57 = icmp eq ptr %56, %1
  br i1 %57, label %58, label %50, !llvm.loop !211

58:                                               ; preds = %54
  %59 = tail call fastcc float @lamp_get_data_internal(ptr noundef %0, ptr noundef nonnull %52, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  br label %90

60:                                               ; preds = %50, %44
  %61 = load ptr, ptr %0, align 8, !tbaa !58
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %70, %64, %60
  br label %80

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.Material, ptr %61, i64 0, i32 105
  %66 = load ptr, ptr %65, align 8, !tbaa !59
  %67 = icmp eq ptr %66, null
  br i1 %67, label %63, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.Group, ptr %66, i64 0, i32 1
  br label %70

70:                                               ; preds = %74, %68
  %71 = phi ptr [ %69, %68 ], [ %72, %74 ]
  %72 = load ptr, ptr %71, align 8, !tbaa !69
  %73 = icmp eq ptr %72, null
  br i1 %73, label %63, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.GroupObject, ptr %72, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !209
  %77 = icmp eq ptr %76, %1
  br i1 %77, label %78, label %70, !llvm.loop !212

78:                                               ; preds = %74
  %79 = tail call fastcc float @lamp_get_data_internal(ptr noundef nonnull %0, ptr noundef nonnull %72, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  br label %90

80:                                               ; preds = %63, %84
  %81 = phi ptr [ %82, %84 ], [ getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 66), %63 ]
  %82 = load ptr, ptr %81, align 8, !tbaa !69
  %83 = icmp eq ptr %82, null
  br i1 %83, label %90, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.GroupObject, ptr %82, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !209
  %87 = icmp eq ptr %86, %1
  br i1 %87, label %88, label %80, !llvm.loop !213

88:                                               ; preds = %84
  %89 = tail call fastcc float @lamp_get_data_internal(ptr noundef nonnull %0, ptr noundef nonnull %82, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  br label %90

90:                                               ; preds = %32, %80, %88, %78, %58, %42, %6
  %91 = phi float [ 0.000000e+00, %6 ], [ %89, %88 ], [ %79, %78 ], [ %59, %58 ], [ %43, %42 ], [ 0.000000e+00, %80 ], [ 0.000000e+00, %32 ]
  ret float %91
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @lamp_get_data_internal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr noundef %5) unnamed_addr #5 !PGOFuncName !214 {
  %7 = alloca [4 x float], align 16
  %8 = getelementptr inbounds %struct.GroupObject, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  %10 = icmp eq ptr %9, null
  br i1 %10, label %91, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.LampRen, ptr %9, i64 0, i32 6
  %13 = load i16, ptr %12, align 8, !tbaa !72
  %14 = icmp eq i16 %13, 5
  br i1 %14, label %91, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.LampRen, ptr %9, i64 0, i32 7
  %17 = load i32, ptr %16, align 4, !tbaa !74
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr inbounds %struct.LampRen, ptr %9, i64 0, i32 17
  %21 = load i32, ptr %20, align 4, !tbaa !78
  br i1 %19, label %29, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !79
  %25 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %24, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !80
  %27 = and i32 %26, %21
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %91, label %29

29:                                               ; preds = %15, %22
  %30 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 117
  %31 = load i32, ptr %30, align 8, !tbaa !82
  %32 = and i32 %31, %21
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %91, label %34

34:                                               ; preds = %29
  %35 = and i32 %17, 256
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call void @do_lamp_tex(ptr noundef nonnull %9, ptr noundef %3, ptr noundef nonnull %0, ptr noundef %2, i32 noundef 256) #17
  br label %38

38:                                               ; preds = %37, %34
  %39 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  %40 = tail call float @lamp_get_visibility(ptr noundef nonnull %9, ptr noundef nonnull %39, ptr noundef %3, ptr noundef %4) #19
  %41 = fcmp oeq float %40, 0.000000e+00
  br i1 %41, label %91, label %42

42:                                               ; preds = %38
  %43 = load i16, ptr %12, align 8, !tbaa !72
  switch i16 %43, label %44 [
    i16 3, label %91
    i16 2, label %48
  ]

44:                                               ; preds = %42
  %45 = load i32, ptr %16, align 4, !tbaa !74
  %46 = and i32 %45, 8192
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %91, label %48

48:                                               ; preds = %42, %44
  %49 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !34
  %50 = and i32 %49, 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %91

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %54 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %53, ptr noundef %3) #19
  %55 = fcmp ogt float %54, 0.000000e+00
  br i1 %55, label %56, label %91

56:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #18
  %57 = getelementptr inbounds %struct.LampRen, ptr %9, i64 0, i32 12
  %58 = load float, ptr %57, align 8, !tbaa !215
  store float %58, ptr %5, align 4, !tbaa !67
  %59 = getelementptr inbounds %struct.LampRen, ptr %9, i64 0, i32 13
  %60 = load float, ptr %59, align 4, !tbaa !216
  %61 = getelementptr inbounds float, ptr %5, i64 1
  store float %60, ptr %61, align 4, !tbaa !67
  %62 = getelementptr inbounds %struct.LampRen, ptr %9, i64 0, i32 14
  %63 = load float, ptr %62, align 8, !tbaa !165
  %64 = getelementptr inbounds float, ptr %5, i64 2
  store float %63, ptr %64, align 4, !tbaa !67
  %65 = load i32, ptr %16, align 4, !tbaa !74
  %66 = and i32 %65, 65536
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %56
  tail call void @do_lamp_tex(ptr noundef nonnull %9, ptr noundef %3, ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef 65536) #17
  br label %69

69:                                               ; preds = %68, %56
  %70 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 108
  %71 = load i32, ptr %70, align 8, !tbaa !133
  call void @lamp_get_shadow(ptr noundef nonnull %9, ptr noundef nonnull %0, float noundef %54, ptr noundef nonnull %7, i32 noundef %71) #19
  %72 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  %73 = load float, ptr %72, align 4, !tbaa !67
  %74 = load <2 x float>, ptr %7, align 16, !tbaa !67
  %75 = fneg <2 x float> %74
  %76 = insertelement <2 x float> poison, float %73, i64 0
  %77 = shufflevector <2 x float> %76, <2 x float> poison, <2 x i32> zeroinitializer
  %78 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %75, <2 x float> %77, <2 x float> <float 1.000000e+00, float 1.000000e+00>)
  %79 = load <2 x float>, ptr %5, align 4, !tbaa !67
  %80 = fsub <2 x float> <float 1.000000e+00, float 1.000000e+00>, %79
  %81 = fneg <2 x float> %78
  %82 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %81, <2 x float> %80, <2 x float> <float 1.000000e+00, float 1.000000e+00>)
  store <2 x float> %82, ptr %5, align 4, !tbaa !67
  %83 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  %84 = load float, ptr %83, align 8, !tbaa !67
  %85 = fneg float %84
  %86 = call float @llvm.fmuladd.f32(float %85, float %73, float 1.000000e+00)
  %87 = load float, ptr %64, align 4, !tbaa !67
  %88 = fsub float 1.000000e+00, %87
  %89 = fneg float %86
  %90 = call float @llvm.fmuladd.f32(float %89, float %88, float 1.000000e+00)
  store float %90, ptr %64, align 4, !tbaa !67
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #18
  br label %91

91:                                               ; preds = %52, %69, %38, %44, %48, %42, %6, %11, %22, %29
  %92 = phi float [ 0.000000e+00, %29 ], [ 0.000000e+00, %22 ], [ 0.000000e+00, %11 ], [ 0.000000e+00, %6 ], [ %40, %42 ], [ %40, %48 ], [ %40, %44 ], [ %40, %38 ], [ %40, %69 ], [ %40, %52 ]
  ret float %92
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3db_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !217 {
  %3 = load <2 x float>, ptr %1, align 4, !tbaa !67
  %4 = fpext <2 x float> %3 to <2 x double>
  store <2 x double> %4, ptr %0, align 8, !tbaa !91
  %5 = getelementptr inbounds float, ptr %1, i64 2
  %6 = load float, ptr %5, align 4, !tbaa !67
  %7 = fpext float %6 to double
  %8 = getelementptr inbounds double, ptr %0, i64 2
  store double %7, ptr %8, align 8, !tbaa !91
  ret void
}

; Function Attrs: optsize
declare void @mul_m3_v3_double(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !218 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #19
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #18
  ret float %4
}

; Function Attrs: optsize
declare float @shadow_halo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @rgb_to_grayscale(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !219 {
  %2 = load float, ptr %0, align 4, !tbaa !67
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !67
  %5 = fmul float %4, 0x3FE28F5C20000000
  %6 = tail call float @llvm.fmuladd.f32(float %2, float 0x3FD3333340000000, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !67
  %9 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FBEB851E0000000, float %6)
  ret float %9
}

; Function Attrs: optsize
declare void @do_lamp_tex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !PGOFuncName !220 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !67
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !67
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !67
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !67
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !67
  %15 = load float, ptr %8, align 4, !tbaa !67
  %16 = load float, ptr %2, align 4, !tbaa !67
  %17 = load float, ptr %1, align 4, !tbaa !67
  %18 = load float, ptr %6, align 4, !tbaa !67
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !67
  %23 = load float, ptr %1, align 4, !tbaa !67
  %24 = load float, ptr %10, align 4, !tbaa !67
  %25 = load float, ptr %4, align 4, !tbaa !67
  %26 = load float, ptr %2, align 4, !tbaa !67
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !67
  ret void
}

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !221 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @area_lamp_energy_multisample(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !222 {
  %4 = alloca [3 x float], align 8
  %5 = alloca [4 x [3 x float]], align 16
  %6 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 58
  %7 = load ptr, ptr %6, align 8, !tbaa !223
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #18
  %8 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 49
  %9 = load i16, ptr %8, align 8, !tbaa !224
  %10 = sext i16 %9 to i32
  %11 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 5
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %11) #19
  %12 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 20
  %13 = call fastcc float @dot_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %12) #19
  %14 = fcmp olt float %13, 0.000000e+00
  br i1 %14, label %52, label %15

15:                                               ; preds = %3
  %16 = icmp eq i16 %9, 0
  br i1 %16, label %41, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %19 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 64
  %20 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 65
  %21 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 1
  %22 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 65, i64 1
  %23 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 2
  %24 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 65, i64 2
  %25 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 3
  %26 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 65, i64 3
  br label %27

27:                                               ; preds = %17, %27
  %28 = phi i32 [ %10, %17 ], [ %31, %27 ]
  %29 = phi float [ 0.000000e+00, %17 ], [ %34, %27 ]
  %30 = phi ptr [ %7, %17 ], [ %35, %27 ]
  %31 = add nsw i32 %28, -1
  %32 = load <2 x float>, ptr %30, align 4, !tbaa !67
  store <2 x float> %32, ptr %4, align 8, !tbaa !67
  store float 0.000000e+00, ptr %18, align 8, !tbaa !67
  call void @mul_m3_v3(ptr noundef nonnull %19, ptr noundef nonnull %4) #17
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %20, ptr noundef nonnull %4) #19
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %4) #19
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %23, ptr noundef nonnull %24, ptr noundef nonnull %4) #19
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %25, ptr noundef nonnull %26, ptr noundef nonnull %4) #19
  %33 = call fastcc float @area_lamp_energy(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2) #19
  %34 = fadd float %29, %33
  %35 = getelementptr inbounds float, ptr %30, i64 2
  %36 = icmp eq i32 %31, 0
  br i1 %36, label %37, label %27, !llvm.loop !225

37:                                               ; preds = %27
  %38 = load i16, ptr %8, align 8, !tbaa !224
  %39 = sitofp i16 %38 to float
  %40 = fdiv float %34, %39
  br label %41

41:                                               ; preds = %37, %15
  %42 = phi float [ 0x7FF8000000000000, %15 ], [ %40, %37 ]
  %43 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 66
  %44 = load float, ptr %43, align 4, !tbaa !226
  %45 = fmul float %44, %42
  %46 = fpext float %45 to double
  %47 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 11
  %48 = load float, ptr %47, align 4, !tbaa !227
  %49 = fpext float %48 to double
  %50 = call double @pow(double noundef %46, double noundef %49) #17
  %51 = fptrunc double %50 to float
  br label %52

52:                                               ; preds = %3, %41
  %53 = phi float [ %51, %41 ], [ 0.000000e+00, %3 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  ret float %53
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @OrenNayar_Diff(float noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, float noundef %4) unnamed_addr #6 !PGOFuncName !228 {
  %6 = alloca [3 x float], align 8
  %7 = alloca [3 x float], align 8
  %8 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #18
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load <2 x float>, ptr %3, align 4, !tbaa !67
  %11 = load <2 x float>, ptr %2, align 4, !tbaa !67
  %12 = fadd <2 x float> %10, %11
  store <2 x float> %12, ptr %6, align 8, !tbaa !67
  %13 = getelementptr inbounds float, ptr %3, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !67
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !67
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float %17, ptr %18, align 8, !tbaa !67
  call fastcc void @normalize_v3(ptr noundef nonnull %6) #19
  %19 = load float, ptr %1, align 4, !tbaa !67
  %20 = getelementptr inbounds float, ptr %1, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !67
  %22 = getelementptr inbounds float, ptr %1, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !67
  %24 = load float, ptr %2, align 4, !tbaa !67
  %25 = load float, ptr %9, align 4, !tbaa !67
  %26 = fmul float %21, %25
  %27 = tail call float @llvm.fmuladd.f32(float %19, float %24, float %26)
  %28 = load float, ptr %15, align 4, !tbaa !67
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %28, float %27)
  %30 = fcmp ole float %29, 0.000000e+00
  %31 = fcmp olt float %0, 0.000000e+00
  %32 = or i1 %31, %30
  br i1 %32, label %95, label %33

33:                                               ; preds = %5
  %34 = getelementptr inbounds float, ptr %3, i64 1
  %35 = load float, ptr %13, align 4, !tbaa !67
  %36 = load float, ptr %3, align 4, !tbaa !67
  %37 = load float, ptr %34, align 4, !tbaa !67
  %38 = fmul float %21, %37
  %39 = tail call float @llvm.fmuladd.f32(float %19, float %36, float %38)
  %40 = tail call float @llvm.fmuladd.f32(float %23, float %35, float %39)
  %41 = fcmp ole float %40, 0.000000e+00
  %42 = select i1 %41, float 0.000000e+00, float %40
  %43 = tail call fastcc float @saacos(float noundef %29) #19
  %44 = tail call fastcc float @saacos(float noundef %42) #19
  %45 = fneg float %29
  %46 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %47 = load <2 x float>, ptr %2, align 4, !tbaa !67
  %48 = load <2 x float>, ptr %1, align 4, !tbaa !67
  %49 = insertelement <2 x float> poison, float %45, i64 0
  %50 = shufflevector <2 x float> %49, <2 x float> poison, <2 x i32> zeroinitializer
  %51 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %50, <2 x float> %48, <2 x float> %47)
  store <2 x float> %51, ptr %7, align 8, !tbaa !67
  %52 = load float, ptr %15, align 4, !tbaa !67
  %53 = load float, ptr %22, align 4, !tbaa !67
  %54 = tail call float @llvm.fmuladd.f32(float %45, float %53, float %52)
  %55 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float %54, ptr %55, align 8, !tbaa !67
  call fastcc void @normalize_v3(ptr noundef nonnull %7) #19
  %56 = fneg float %42
  %57 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %58 = load <2 x float>, ptr %3, align 4, !tbaa !67
  %59 = load <2 x float>, ptr %1, align 4, !tbaa !67
  %60 = insertelement <2 x float> poison, float %56, i64 0
  %61 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> zeroinitializer
  %62 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %61, <2 x float> %59, <2 x float> %58)
  store <2 x float> %62, ptr %8, align 8, !tbaa !67
  %63 = load float, ptr %13, align 4, !tbaa !67
  %64 = load float, ptr %22, align 4, !tbaa !67
  %65 = tail call float @llvm.fmuladd.f32(float %56, float %64, float %63)
  %66 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float %65, ptr %66, align 8, !tbaa !67
  call fastcc void @normalize_v3(ptr noundef nonnull %8) #19
  %67 = load float, ptr %7, align 8, !tbaa !67
  %68 = load float, ptr %8, align 8, !tbaa !67
  %69 = load float, ptr %46, align 4, !tbaa !67
  %70 = load float, ptr %57, align 4, !tbaa !67
  %71 = fmul float %69, %70
  %72 = tail call float @llvm.fmuladd.f32(float %67, float %68, float %71)
  %73 = load float, ptr %55, align 8, !tbaa !67
  %74 = load float, ptr %66, align 8, !tbaa !67
  %75 = tail call float @llvm.fmuladd.f32(float %73, float %74, float %72)
  %76 = fcmp olt float %75, 0.000000e+00
  %77 = select i1 %76, float 0.000000e+00, float %75
  %78 = fcmp ogt float %43, %44
  %79 = select i1 %78, float %44, float %43
  %80 = select i1 %78, float %43, float %44
  %81 = fmul float %4, %4
  %82 = tail call float @llvm.fmuladd.f32(float %4, float %4, float 0x3FD51EB860000000)
  %83 = fdiv float %81, %82
  %84 = tail call float @llvm.fmuladd.f32(float %83, float -5.000000e-01, float 1.000000e+00)
  %85 = tail call float @llvm.fmuladd.f32(float %4, float %4, float 0x3FB70A3D80000000)
  %86 = fdiv float %81, %85
  %87 = fmul float %86, 0x3FDCCCCCC0000000
  %88 = fmul float %79, 0x3FEE666660000000
  %89 = fmul float %87, %77
  %90 = tail call float @sinf(float noundef %80) #17
  %91 = fmul float %90, %89
  %92 = tail call float @tanf(float noundef %88) #17
  %93 = tail call float @llvm.fmuladd.f32(float %91, float %92, float %84)
  %94 = fmul float %93, %0
  br label %95

95:                                               ; preds = %5, %33
  %96 = phi float [ %94, %33 ], [ 0.000000e+00, %5 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  ret float %96
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @Toon_Diff(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3) unnamed_addr #6 !PGOFuncName !229 {
  %5 = load float, ptr %0, align 4, !tbaa !67
  %6 = load float, ptr %1, align 4, !tbaa !67
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !67
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !67
  %11 = fmul float %8, %10
  %12 = tail call float @llvm.fmuladd.f32(float %5, float %6, float %11)
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !67
  %15 = getelementptr inbounds float, ptr %1, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !67
  %17 = tail call float @llvm.fmuladd.f32(float %14, float %16, float %12)
  %18 = tail call fastcc float @saacos(float noundef %17) #19
  %19 = fcmp olt float %18, %2
  br i1 %19, label %29, label %20

20:                                               ; preds = %4
  %21 = fadd float %2, %3
  %22 = fcmp oge float %18, %21
  %23 = fcmp oeq float %3, 0.000000e+00
  %24 = or i1 %23, %22
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = fsub float %18, %2
  %27 = fdiv float %26, %3
  %28 = fsub float 1.000000e+00, %27
  br label %29

29:                                               ; preds = %20, %4, %25
  %30 = phi float [ %28, %25 ], [ 1.000000e+00, %4 ], [ 0.000000e+00, %20 ]
  ret float %30
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @Minnaert_Diff(float noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #6 !PGOFuncName !230 {
  %5 = fcmp ugt float %0, 0.000000e+00
  br i1 %5, label %6, label %25

6:                                                ; preds = %4
  %7 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %2) #19
  %8 = fcmp olt float %7, 0.000000e+00
  %9 = select i1 %8, float 0.000000e+00, float %7
  %10 = fcmp ugt float %3, 1.000000e+00
  %11 = fpext float %0 to double
  br i1 %10, label %15, label %12

12:                                               ; preds = %6
  %13 = fmul float %9, %0
  %14 = tail call fastcc float @max_ff(float noundef %13, float noundef 0x3FB99999A0000000) #19
  br label %17

15:                                               ; preds = %6
  %16 = fsub float 0x3FF00418A0000000, %9
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi float [ %16, %15 ], [ %14, %12 ]
  %19 = fpext float %18 to double
  %20 = fadd float %3, -1.000000e+00
  %21 = fpext float %20 to double
  %22 = tail call double @pow(double noundef %19, double noundef %21) #17
  %23 = fmul double %22, %11
  %24 = fptrunc double %23 to float
  br label %25

25:                                               ; preds = %4, %17
  %26 = phi float [ %24, %17 ], [ 0.000000e+00, %4 ]
  ret float %26
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @Fresnel_Diff(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3) unnamed_addr #6 !PGOFuncName !231 {
  %5 = tail call float @fresnel_fac(ptr noundef %1, ptr noundef %0, float noundef %2, float noundef %3) #19
  ret float %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_to_diffuse(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) unnamed_addr #5 !PGOFuncName !232 {
  %7 = alloca [3 x float], align 8
  %8 = alloca [4 x float], align 16
  %9 = load ptr, ptr %1, align 8, !tbaa !58
  %10 = getelementptr inbounds %struct.Material, ptr %9, i64 0, i32 92
  %11 = load ptr, ptr %10, align 8, !tbaa !192
  %12 = icmp eq ptr %11, null
  br i1 %12, label %84, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.Material, ptr %9, i64 0, i32 51
  %15 = load i32, ptr %14, align 4, !tbaa !103
  %16 = and i32 %15, 1048576
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %84, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.Material, ptr %9, i64 0, i32 94
  %20 = load i8, ptr %19, align 8, !tbaa !193
  %21 = icmp eq i8 %20, 3
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 32
  %24 = load float, ptr %23, align 4, !tbaa !110
  %25 = load float, ptr %0, align 4, !tbaa !67
  %26 = tail call float @llvm.fmuladd.f32(float %3, float %24, float %25)
  store float %26, ptr %0, align 4, !tbaa !67
  %27 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 33
  %28 = load float, ptr %27, align 8, !tbaa !111
  %29 = getelementptr inbounds float, ptr %0, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !67
  %31 = tail call float @llvm.fmuladd.f32(float %4, float %28, float %30)
  store float %31, ptr %29, align 4, !tbaa !67
  %32 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 34
  %33 = load float, ptr %32, align 4, !tbaa !104
  %34 = getelementptr inbounds float, ptr %0, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !67
  %36 = tail call float @llvm.fmuladd.f32(float %5, float %33, float %35)
  store float %36, ptr %34, align 4, !tbaa !67
  br label %99

37:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #18
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
  %61 = call zeroext i8 @do_colorband(ptr noundef nonnull %11, float noundef %60, ptr noundef nonnull %8) #17
  %62 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  %63 = load float, ptr %62, align 4, !tbaa !67
  %64 = getelementptr inbounds %struct.Material, ptr %9, i64 0, i32 100
  %65 = load float, ptr %64, align 8, !tbaa !194
  %66 = fmul float %63, %65
  %67 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 32
  %68 = load <2 x float>, ptr %67, align 4, !tbaa !67
  store <2 x float> %68, ptr %7, align 8, !tbaa !67
  %69 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 34
  %70 = load float, ptr %69, align 4, !tbaa !104
  %71 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float %70, ptr %71, align 8, !tbaa !67
  %72 = getelementptr inbounds %struct.Material, ptr %9, i64 0, i32 96
  %73 = load i8, ptr %72, align 2, !tbaa !195
  %74 = zext i8 %73 to i32
  call void @ramp_blend(i32 noundef %74, ptr noundef nonnull %7, float noundef %66, ptr noundef nonnull %8) #17
  %75 = load <2 x float>, ptr %7, align 8, !tbaa !67
  %76 = load <2 x float>, ptr %0, align 4, !tbaa !67
  %77 = insertelement <2 x float> poison, float %3, i64 0
  %78 = insertelement <2 x float> %77, float %4, i64 1
  %79 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %78, <2 x float> %75, <2 x float> %76)
  store <2 x float> %79, ptr %0, align 4, !tbaa !67
  %80 = load float, ptr %71, align 8, !tbaa !67
  %81 = getelementptr inbounds float, ptr %0, i64 2
  %82 = load float, ptr %81, align 4, !tbaa !67
  %83 = call float @llvm.fmuladd.f32(float %5, float %80, float %82)
  store float %83, ptr %81, align 4, !tbaa !67
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  br label %99

84:                                               ; preds = %13, %6
  %85 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 32
  %86 = load float, ptr %85, align 4, !tbaa !110
  %87 = load float, ptr %0, align 4, !tbaa !67
  %88 = tail call float @llvm.fmuladd.f32(float %3, float %86, float %87)
  store float %88, ptr %0, align 4, !tbaa !67
  %89 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 33
  %90 = load float, ptr %89, align 8, !tbaa !111
  %91 = getelementptr inbounds float, ptr %0, i64 1
  %92 = load float, ptr %91, align 4, !tbaa !67
  %93 = tail call float @llvm.fmuladd.f32(float %4, float %90, float %92)
  store float %93, ptr %91, align 4, !tbaa !67
  %94 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 34
  %95 = load float, ptr %94, align 4, !tbaa !104
  %96 = getelementptr inbounds float, ptr %0, i64 2
  %97 = load float, ptr %96, align 4, !tbaa !67
  %98 = tail call float @llvm.fmuladd.f32(float %5, float %95, float %97)
  store float %98, ptr %96, align 4, !tbaa !67
  br label %99

99:                                               ; preds = %22, %59, %84
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @spec(float noundef %0, i32 noundef %1) unnamed_addr #12 !PGOFuncName !233 {
  %3 = fcmp ult float %0, 1.000000e+00
  br i1 %3, label %4, label %52

4:                                                ; preds = %2
  %5 = fcmp ugt float %0, 0.000000e+00
  br i1 %5, label %6, label %52

6:                                                ; preds = %4
  %7 = fmul float %0, %0
  %8 = fcmp olt float %7, 0x3F847AE140000000
  %9 = select i1 %8, float 0x3F847AE140000000, float %7
  %10 = and i32 %1, 1
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, float 1.000000e+00, float %0
  %13 = insertelement <8 x i32> poison, i32 %1, i64 0
  %14 = shufflevector <8 x i32> %13, <8 x i32> poison, <8 x i32> zeroinitializer
  %15 = and <8 x i32> %14, <i32 256, i32 128, i32 64, i32 32, i32 16, i32 8, i32 4, i32 2>
  %16 = fmul float %9, %9
  %17 = fmul float %16, %16
  %18 = fmul float %17, %17
  %19 = fmul float %18, %18
  %20 = fcmp olt float %19, 0x3F50624DE0000000
  %21 = select i1 %20, float 0.000000e+00, float %19
  %22 = fmul float %21, %21
  %23 = fmul float %22, %22
  %24 = fcmp olt float %23, 0x3F50624DE0000000
  %25 = select i1 %24, float 0.000000e+00, float %23
  %26 = icmp eq <8 x i32> %15, zeroinitializer
  %27 = extractelement <8 x i1> %26, i64 7
  %28 = select i1 %27, float 1.000000e+00, float %9
  %29 = fmul float %12, %28
  %30 = extractelement <8 x i1> %26, i64 6
  %31 = select i1 %30, float 1.000000e+00, float %16
  %32 = fmul float %29, %31
  %33 = extractelement <8 x i1> %26, i64 5
  %34 = select i1 %33, float 1.000000e+00, float %17
  %35 = fmul float %32, %34
  %36 = extractelement <8 x i1> %26, i64 4
  %37 = select i1 %36, float 1.000000e+00, float %18
  %38 = fmul float %35, %37
  %39 = extractelement <8 x i1> %26, i64 3
  %40 = select i1 %39, float 1.000000e+00, float %21
  %41 = fmul float %38, %40
  %42 = extractelement <8 x i1> %26, i64 2
  %43 = select i1 %42, float 1.000000e+00, float %22
  %44 = fmul float %41, %43
  %45 = extractelement <8 x i1> %26, i64 1
  %46 = select i1 %45, float 1.000000e+00, float %23
  %47 = fmul float %44, %46
  %48 = fmul float %25, %25
  %49 = extractelement <8 x i1> %26, i64 0
  %50 = select i1 %49, float 1.000000e+00, float %48
  %51 = fmul float %47, %50
  br label %52

52:                                               ; preds = %4, %2, %6
  %53 = phi float [ %51, %6 ], [ 1.000000e+00, %2 ], [ 0.000000e+00, %4 ]
  ret float %53
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @Phong_Spec(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #6 !PGOFuncName !234 {
  %6 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  %7 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %8 = load <2 x float>, ptr %1, align 4, !tbaa !67
  %9 = load <2 x float>, ptr %2, align 4, !tbaa !67
  %10 = fadd <2 x float> %8, %9
  store <2 x float> %10, ptr %6, align 8, !tbaa !67
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !67
  %13 = getelementptr inbounds float, ptr %2, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !67
  %15 = fadd float %12, %14
  %16 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float %15, ptr %16, align 8, !tbaa !67
  call fastcc void @normalize_v3(ptr noundef nonnull %6) #19
  %17 = load float, ptr %6, align 8, !tbaa !67
  %18 = load float, ptr %0, align 4, !tbaa !67
  %19 = load float, ptr %7, align 4, !tbaa !67
  %20 = getelementptr inbounds float, ptr %0, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !67
  %22 = fmul float %19, %21
  %23 = tail call float @llvm.fmuladd.f32(float %17, float %18, float %22)
  %24 = load float, ptr %16, align 8, !tbaa !67
  %25 = getelementptr inbounds float, ptr %0, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !67
  %27 = tail call float @llvm.fmuladd.f32(float %24, float %26, float %23)
  %28 = icmp eq i32 %4, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %5
  %30 = fneg float %27
  %31 = tail call float @llvm.fmuladd.f32(float %30, float %27, float 1.000000e+00)
  %32 = tail call fastcc float @sasqrt(float noundef %31) #19
  br label %33

33:                                               ; preds = %29, %5
  %34 = phi float [ %32, %29 ], [ %27, %5 ]
  %35 = fcmp ogt float %34, 0.000000e+00
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = tail call fastcc float @spec(float noundef %34, i32 noundef %3) #19
  br label %38

38:                                               ; preds = %33, %36
  %39 = phi float [ %37, %36 ], [ 0.000000e+00, %33 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  ret float %39
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @CookTorr_Spec(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #6 !PGOFuncName !235 {
  %6 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  %7 = getelementptr inbounds float, ptr %2, i64 1
  %8 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %9 = load <2 x float>, ptr %2, align 4, !tbaa !67
  %10 = load <2 x float>, ptr %1, align 4, !tbaa !67
  %11 = fadd <2 x float> %9, %10
  store <2 x float> %11, ptr %6, align 8, !tbaa !67
  %12 = getelementptr inbounds float, ptr %2, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !67
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !67
  %16 = fadd float %13, %15
  %17 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float %16, ptr %17, align 8, !tbaa !67
  call fastcc void @normalize_v3(ptr noundef nonnull %6) #19
  %18 = load float, ptr %0, align 4, !tbaa !67
  %19 = load float, ptr %6, align 8, !tbaa !67
  %20 = getelementptr inbounds float, ptr %0, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !67
  %22 = load float, ptr %8, align 4, !tbaa !67
  %23 = fmul float %21, %22
  %24 = tail call float @llvm.fmuladd.f32(float %18, float %19, float %23)
  %25 = getelementptr inbounds float, ptr %0, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !67
  %27 = load float, ptr %17, align 8, !tbaa !67
  %28 = tail call float @llvm.fmuladd.f32(float %26, float %27, float %24)
  %29 = icmp eq i32 %4, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %5
  %31 = fneg float %28
  %32 = tail call float @llvm.fmuladd.f32(float %31, float %28, float 1.000000e+00)
  %33 = tail call fastcc float @sasqrt(float noundef %32) #19
  %34 = load float, ptr %0, align 4, !tbaa !67
  %35 = load float, ptr %20, align 4, !tbaa !67
  %36 = load float, ptr %25, align 4, !tbaa !67
  br label %39

37:                                               ; preds = %5
  %38 = fcmp olt float %28, 0.000000e+00
  br i1 %38, label %62, label %39

39:                                               ; preds = %37, %30
  %40 = phi float [ %36, %30 ], [ %26, %37 ]
  %41 = phi float [ %35, %30 ], [ %21, %37 ]
  %42 = phi float [ %34, %30 ], [ %18, %37 ]
  %43 = phi float [ %33, %30 ], [ %28, %37 ]
  %44 = load float, ptr %2, align 4, !tbaa !67
  %45 = load float, ptr %7, align 4, !tbaa !67
  %46 = fmul float %41, %45
  %47 = tail call float @llvm.fmuladd.f32(float %42, float %44, float %46)
  %48 = load float, ptr %12, align 4, !tbaa !67
  %49 = tail call float @llvm.fmuladd.f32(float %40, float %48, float %47)
  br i1 %29, label %54, label %50

50:                                               ; preds = %39
  %51 = fneg float %49
  %52 = tail call float @llvm.fmuladd.f32(float %51, float %49, float 1.000000e+00)
  %53 = tail call fastcc float @sasqrt(float noundef %52) #19
  br label %57

54:                                               ; preds = %39
  %55 = fcmp olt float %49, 0.000000e+00
  br i1 %55, label %56, label %57

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %54, %56, %50
  %58 = phi float [ %53, %50 ], [ 0.000000e+00, %56 ], [ %49, %54 ]
  %59 = tail call fastcc float @spec(float noundef %43, i32 noundef %3) #19
  %60 = fadd float %58, 0x3FB99999A0000000
  %61 = fdiv float %59, %60
  br label %62

62:                                               ; preds = %37, %57
  %63 = phi float [ %61, %57 ], [ 0.000000e+00, %37 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  ret float %63
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @Blinn_Spec(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4, i32 noundef %5) unnamed_addr #6 !PGOFuncName !236 {
  %7 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  %8 = fcmp olt float %3, 1.000000e+00
  %9 = fcmp oeq float %4, 0.000000e+00
  %10 = or i1 %8, %9
  br i1 %10, label %159, label %11

11:                                               ; preds = %6
  %12 = fcmp olt float %4, 1.000000e+02
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = fdiv float 1.000000e+00, %4
  %15 = tail call float @sqrtf(float noundef %14) #17
  br label %18

16:                                               ; preds = %11
  %17 = fdiv float 1.000000e+01, %4
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi float [ %15, %13 ], [ %17, %16 ]
  %20 = getelementptr inbounds float, ptr %2, i64 1
  %21 = getelementptr inbounds float, ptr %1, i64 1
  %22 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %23 = load <2 x float>, ptr %2, align 4, !tbaa !67
  %24 = load <2 x float>, ptr %1, align 4, !tbaa !67
  %25 = fadd <2 x float> %23, %24
  store <2 x float> %25, ptr %7, align 8, !tbaa !67
  %26 = getelementptr inbounds float, ptr %2, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !67
  %28 = getelementptr inbounds float, ptr %1, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !67
  %30 = fadd float %27, %29
  %31 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float %30, ptr %31, align 8, !tbaa !67
  call fastcc void @normalize_v3(ptr noundef nonnull %7) #19
  %32 = load float, ptr %0, align 4, !tbaa !67
  %33 = load float, ptr %7, align 8, !tbaa !67
  %34 = getelementptr inbounds float, ptr %0, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !67
  %36 = load float, ptr %22, align 4, !tbaa !67
  %37 = fmul float %35, %36
  %38 = tail call float @llvm.fmuladd.f32(float %32, float %33, float %37)
  %39 = getelementptr inbounds float, ptr %0, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !67
  %41 = load float, ptr %31, align 8, !tbaa !67
  %42 = tail call float @llvm.fmuladd.f32(float %40, float %41, float %38)
  %43 = icmp eq i32 %5, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %18
  %45 = fneg float %42
  %46 = tail call float @llvm.fmuladd.f32(float %45, float %42, float 1.000000e+00)
  %47 = tail call fastcc float @sasqrt(float noundef %46) #19
  %48 = load float, ptr %0, align 4, !tbaa !67
  %49 = load float, ptr %34, align 4, !tbaa !67
  %50 = load float, ptr %39, align 4, !tbaa !67
  br label %53

51:                                               ; preds = %18
  %52 = fcmp olt float %42, 0.000000e+00
  br i1 %52, label %159, label %53

53:                                               ; preds = %51, %44
  %54 = phi float [ %50, %44 ], [ %40, %51 ]
  %55 = phi float [ %49, %44 ], [ %35, %51 ]
  %56 = phi float [ %48, %44 ], [ %32, %51 ]
  %57 = phi float [ %47, %44 ], [ %42, %51 ]
  %58 = load float, ptr %2, align 4, !tbaa !67
  %59 = load float, ptr %20, align 4, !tbaa !67
  %60 = fmul float %55, %59
  %61 = tail call float @llvm.fmuladd.f32(float %56, float %58, float %60)
  %62 = load float, ptr %26, align 4, !tbaa !67
  %63 = tail call float @llvm.fmuladd.f32(float %54, float %62, float %61)
  br i1 %43, label %71, label %64

64:                                               ; preds = %53
  %65 = fneg float %63
  %66 = tail call float @llvm.fmuladd.f32(float %65, float %63, float 1.000000e+00)
  %67 = tail call fastcc float @sasqrt(float noundef %66) #19
  %68 = load float, ptr %0, align 4, !tbaa !67
  %69 = load float, ptr %34, align 4, !tbaa !67
  %70 = load float, ptr %39, align 4, !tbaa !67
  br label %71

71:                                               ; preds = %64, %53
  %72 = phi float [ %70, %64 ], [ %54, %53 ]
  %73 = phi float [ %69, %64 ], [ %55, %53 ]
  %74 = phi float [ %68, %64 ], [ %56, %53 ]
  %75 = phi float [ %67, %64 ], [ %63, %53 ]
  %76 = fcmp ole float %75, 0x3F847AE140000000
  %77 = select i1 %76, float 0x3F847AE140000000, float %75
  %78 = load float, ptr %1, align 4, !tbaa !67
  %79 = load float, ptr %21, align 4, !tbaa !67
  %80 = fmul float %73, %79
  %81 = tail call float @llvm.fmuladd.f32(float %74, float %78, float %80)
  %82 = load float, ptr %28, align 4, !tbaa !67
  %83 = tail call float @llvm.fmuladd.f32(float %72, float %82, float %81)
  br i1 %43, label %88, label %84

84:                                               ; preds = %71
  %85 = fneg float %83
  %86 = tail call float @llvm.fmuladd.f32(float %85, float %83, float 1.000000e+00)
  %87 = tail call fastcc float @sasqrt(float noundef %86) #19
  br label %88

88:                                               ; preds = %84, %71
  %89 = phi float [ %87, %84 ], [ %83, %71 ]
  %90 = fcmp ugt float %89, 0x3F847AE140000000
  br i1 %90, label %91, label %159

91:                                               ; preds = %88
  %92 = load float, ptr %2, align 4, !tbaa !67
  %93 = load float, ptr %20, align 4, !tbaa !67
  %94 = fmul float %36, %93
  %95 = tail call float @llvm.fmuladd.f32(float %92, float %33, float %94)
  %96 = load float, ptr %26, align 4, !tbaa !67
  %97 = tail call float @llvm.fmuladd.f32(float %96, float %41, float %95)
  %98 = fcmp ugt float %97, 0.000000e+00
  %99 = select i1 %98, float %97, float 0x3F847AE140000000
  %100 = fmul float %57, 2.000000e+00
  %101 = insertelement <2 x float> poison, float %100, i64 0
  %102 = shufflevector <2 x float> %101, <2 x float> poison, <2 x i32> zeroinitializer
  %103 = insertelement <2 x float> poison, float %77, i64 0
  %104 = insertelement <2 x float> %103, float %89, i64 1
  %105 = fmul <2 x float> %102, %104
  %106 = insertelement <2 x float> poison, float %99, i64 0
  %107 = shufflevector <2 x float> %106, <2 x float> poison, <2 x i32> zeroinitializer
  %108 = fdiv <2 x float> %105, %107
  %109 = fcmp ogt <2 x float> %108, <float 1.000000e+00, float 1.000000e+00>
  %110 = shufflevector <2 x i1> %109, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %111 = and <2 x i1> %109, %110
  %112 = extractelement <2 x i1> %111, i64 0
  br i1 %112, label %124, label %113

113:                                              ; preds = %91
  %114 = extractelement <2 x float> %108, i64 0
  %115 = fcmp olt float %114, 1.000000e+00
  %116 = extractelement <2 x float> %108, i64 1
  %117 = fcmp olt float %114, %116
  %118 = and i1 %115, %117
  br i1 %118, label %124, label %119

119:                                              ; preds = %113
  %120 = fcmp olt float %116, 1.000000e+00
  %121 = fcmp olt float %116, %114
  %122 = and i1 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  br label %124

124:                                              ; preds = %113, %91, %123, %119
  %125 = phi float [ %116, %123 ], [ 0.000000e+00, %119 ], [ 1.000000e+00, %91 ], [ %114, %113 ]
  %126 = fmul float %99, %99
  %127 = tail call float @llvm.fmuladd.f32(float %3, float %3, float %126)
  %128 = fadd float %127, -1.000000e+00
  %129 = tail call float @sqrtf(float noundef %128) #3
  %130 = fsub float %129, %99
  %131 = fadd float %99, %129
  %132 = tail call float @llvm.fmuladd.f32(float %99, float %131, float -1.000000e+00)
  %133 = tail call float @llvm.fmuladd.f32(float %99, float %130, float 1.000000e+00)
  %134 = insertelement <2 x float> poison, float %130, i64 0
  %135 = insertelement <2 x float> %134, float %132, i64 1
  %136 = fmul <2 x float> %135, %135
  %137 = insertelement <2 x float> poison, float %131, i64 0
  %138 = insertelement <2 x float> %137, float %133, i64 1
  %139 = fmul <2 x float> %138, %138
  %140 = fdiv <2 x float> %136, %139
  %141 = extractelement <2 x float> %140, i64 1
  %142 = fadd float %141, 1.000000e+00
  %143 = extractelement <2 x float> %140, i64 0
  %144 = fmul float %143, %142
  %145 = tail call fastcc float @saacos(float noundef %57) #19
  %146 = fmul float %125, %144
  %147 = fpext float %146 to double
  %148 = fneg float %145
  %149 = fmul float %145, %148
  %150 = fmul float %19, 2.000000e+00
  %151 = fmul float %19, %150
  %152 = fdiv float %149, %151
  %153 = fpext float %152 to double
  %154 = tail call double @exp(double noundef %153) #17
  %155 = fmul double %154, %147
  %156 = fptrunc double %155 to float
  %157 = fcmp olt float %156, 0.000000e+00
  %158 = select i1 %157, float 0.000000e+00, float %156
  br label %159

159:                                              ; preds = %88, %51, %6, %124
  %160 = phi float [ %158, %124 ], [ 0.000000e+00, %6 ], [ 0.000000e+00, %51 ], [ 0.000000e+00, %88 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  ret float %160
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @WardIso_Spec(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, i32 noundef %4) unnamed_addr #6 !PGOFuncName !237 {
  %6 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = getelementptr inbounds float, ptr %2, i64 1
  %9 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %10 = load <2 x float>, ptr %1, align 4, !tbaa !67
  %11 = load <2 x float>, ptr %2, align 4, !tbaa !67
  %12 = fadd <2 x float> %10, %11
  store <2 x float> %12, ptr %6, align 8, !tbaa !67
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !67
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !67
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float %17, ptr %18, align 8, !tbaa !67
  call fastcc void @normalize_v3(ptr noundef nonnull %6) #19
  %19 = load float, ptr %0, align 4, !tbaa !67
  %20 = load float, ptr %6, align 8, !tbaa !67
  %21 = getelementptr inbounds float, ptr %0, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !67
  %23 = load float, ptr %9, align 4, !tbaa !67
  %24 = fmul float %22, %23
  %25 = tail call float @llvm.fmuladd.f32(float %19, float %20, float %24)
  %26 = getelementptr inbounds float, ptr %0, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !67
  %28 = load float, ptr %18, align 8, !tbaa !67
  %29 = tail call float @llvm.fmuladd.f32(float %27, float %28, float %25)
  %30 = icmp eq i32 %4, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %5
  %32 = fneg float %29
  %33 = tail call float @llvm.fmuladd.f32(float %32, float %29, float 1.000000e+00)
  %34 = tail call fastcc float @sasqrt(float noundef %33) #19
  %35 = load float, ptr %0, align 4, !tbaa !67
  %36 = load float, ptr %21, align 4, !tbaa !67
  %37 = load float, ptr %26, align 4, !tbaa !67
  br label %38

38:                                               ; preds = %31, %5
  %39 = phi float [ %37, %31 ], [ %27, %5 ]
  %40 = phi float [ %36, %31 ], [ %22, %5 ]
  %41 = phi float [ %35, %31 ], [ %19, %5 ]
  %42 = phi float [ %34, %31 ], [ %29, %5 ]
  %43 = load float, ptr %2, align 4, !tbaa !67
  %44 = load float, ptr %8, align 4, !tbaa !67
  %45 = fmul float %40, %44
  %46 = tail call float @llvm.fmuladd.f32(float %41, float %43, float %45)
  %47 = load float, ptr %15, align 4, !tbaa !67
  %48 = tail call float @llvm.fmuladd.f32(float %39, float %47, float %46)
  br i1 %30, label %56, label %49

49:                                               ; preds = %38
  %50 = fneg float %48
  %51 = tail call float @llvm.fmuladd.f32(float %50, float %48, float 1.000000e+00)
  %52 = tail call fastcc float @sasqrt(float noundef %51) #19
  %53 = load float, ptr %0, align 4, !tbaa !67
  %54 = load float, ptr %21, align 4, !tbaa !67
  %55 = load float, ptr %26, align 4, !tbaa !67
  br label %56

56:                                               ; preds = %49, %38
  %57 = phi float [ %55, %49 ], [ %39, %38 ]
  %58 = phi float [ %54, %49 ], [ %40, %38 ]
  %59 = phi float [ %53, %49 ], [ %41, %38 ]
  %60 = phi float [ %52, %49 ], [ %48, %38 ]
  %61 = load float, ptr %1, align 4, !tbaa !67
  %62 = load float, ptr %7, align 4, !tbaa !67
  %63 = fmul float %58, %62
  %64 = tail call float @llvm.fmuladd.f32(float %59, float %61, float %63)
  %65 = load float, ptr %13, align 4, !tbaa !67
  %66 = tail call float @llvm.fmuladd.f32(float %57, float %65, float %64)
  br i1 %30, label %71, label %67

67:                                               ; preds = %56
  %68 = fneg float %66
  %69 = tail call float @llvm.fmuladd.f32(float %68, float %66, float 1.000000e+00)
  %70 = tail call fastcc float @sasqrt(float noundef %69) #19
  br label %71

71:                                               ; preds = %67, %56
  %72 = phi float [ %70, %67 ], [ %66, %56 ]
  %73 = fcmp ugt float %60, 0.000000e+00
  %74 = select i1 %73, float %60, float 0x3F50624DE0000000
  %75 = fcmp ugt float %42, 0.000000e+00
  %76 = select i1 %75, float %42, float 0x3F50624DE0000000
  %77 = fcmp ugt float %72, 0.000000e+00
  %78 = select i1 %77, float %72, float 0x3F50624DE0000000
  %79 = tail call fastcc float @saacos(float noundef %76) #19
  %80 = tail call float @tanf(float noundef %79) #17
  %81 = fcmp ogt float %3, 0x3F50624DE0000000
  %82 = select i1 %81, float %3, float 0x3F50624DE0000000
  %83 = fmul float %82, 0x402921FB60000000
  %84 = fmul float %82, %83
  %85 = fneg float %80
  %86 = fmul float %80, %85
  %87 = fmul float %82, %82
  %88 = fdiv float %86, %87
  %89 = tail call float @expf(float noundef %88) #17
  %90 = fmul float %74, %78
  %91 = tail call float @sqrtf(float noundef %90) #17
  %92 = insertelement <2 x float> <float 1.000000e+00, float poison>, float %89, i64 1
  %93 = insertelement <2 x float> poison, float %84, i64 0
  %94 = insertelement <2 x float> %93, float %91, i64 1
  %95 = fdiv <2 x float> %92, %94
  %96 = extractelement <2 x float> %95, i64 0
  %97 = fmul float %96, %78
  %98 = extractelement <2 x float> %95, i64 1
  %99 = fmul float %97, %98
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  ret float %99
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @Toon_Spec(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4, i32 noundef %5) unnamed_addr #6 !PGOFuncName !238 {
  %7 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  %8 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %9 = load <2 x float>, ptr %1, align 4, !tbaa !67
  %10 = load <2 x float>, ptr %2, align 4, !tbaa !67
  %11 = fadd <2 x float> %9, %10
  store <2 x float> %11, ptr %7, align 8, !tbaa !67
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !67
  %14 = getelementptr inbounds float, ptr %2, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !67
  %16 = fadd float %13, %15
  %17 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float %16, ptr %17, align 8, !tbaa !67
  call fastcc void @normalize_v3(ptr noundef nonnull %7) #19
  %18 = load float, ptr %7, align 8, !tbaa !67
  %19 = load float, ptr %0, align 4, !tbaa !67
  %20 = load float, ptr %8, align 4, !tbaa !67
  %21 = getelementptr inbounds float, ptr %0, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !67
  %23 = fmul float %20, %22
  %24 = tail call float @llvm.fmuladd.f32(float %18, float %19, float %23)
  %25 = load float, ptr %17, align 8, !tbaa !67
  %26 = getelementptr inbounds float, ptr %0, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !67
  %28 = tail call float @llvm.fmuladd.f32(float %25, float %27, float %24)
  %29 = icmp eq i32 %5, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %6
  %31 = fneg float %28
  %32 = tail call float @llvm.fmuladd.f32(float %31, float %28, float 1.000000e+00)
  %33 = tail call fastcc float @sasqrt(float noundef %32) #19
  br label %34

34:                                               ; preds = %30, %6
  %35 = phi float [ %33, %30 ], [ %28, %6 ]
  %36 = tail call fastcc float @saacos(float noundef %35) #19
  %37 = fcmp olt float %36, %3
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = fadd float %3, %4
  %40 = fcmp oge float %36, %39
  %41 = fcmp oeq float %4, 0.000000e+00
  %42 = or i1 %41, %40
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = fsub float %36, %3
  %45 = fdiv float %44, %4
  %46 = fsub float 1.000000e+00, %45
  br label %47

47:                                               ; preds = %38, %34, %43
  %48 = phi float [ %46, %43 ], [ 1.000000e+00, %34 ], [ 0.000000e+00, %38 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  ret float %48
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_specular_ramp(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, ptr noundef %3) unnamed_addr #5 !PGOFuncName !239 {
  %5 = alloca [4 x float], align 16
  %6 = load ptr, ptr %0, align 8, !tbaa !58
  %7 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 35
  %8 = load float, ptr %7, align 8, !tbaa !176
  store float %8, ptr %3, align 4, !tbaa !67
  %9 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 36
  %10 = load float, ptr %9, align 4, !tbaa !177
  %11 = getelementptr inbounds float, ptr %3, i64 1
  store float %10, ptr %11, align 4, !tbaa !67
  %12 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 37
  %13 = load float, ptr %12, align 8, !tbaa !178
  %14 = getelementptr inbounds float, ptr %3, i64 2
  store float %13, ptr %14, align 4, !tbaa !67
  %15 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 93
  %16 = load ptr, ptr %15, align 8, !tbaa !197
  %17 = icmp eq ptr %16, null
  br i1 %17, label %52, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 95
  %20 = load i8, ptr %19, align 1, !tbaa !198
  %21 = icmp eq i8 %20, 3
  br i1 %21, label %52, label %22

22:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  switch i8 %20, label %40 [
    i8 1, label %41
    i8 0, label %23
    i8 2, label %24
  ]

23:                                               ; preds = %22
  br label %41

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30
  %26 = load float, ptr %25, align 4, !tbaa !67
  %27 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %28 = load float, ptr %27, align 4, !tbaa !67
  %29 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !67
  %31 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !67
  %33 = fmul float %30, %32
  %34 = tail call float @llvm.fmuladd.f32(float %26, float %28, float %33)
  %35 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !67
  %37 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !67
  %39 = tail call float @llvm.fmuladd.f32(float %36, float %38, float %34)
  br label %41

40:                                               ; preds = %22
  br label %41

41:                                               ; preds = %22, %40, %24, %23
  %42 = phi float [ 0.000000e+00, %40 ], [ %39, %24 ], [ %1, %23 ], [ %2, %22 ]
  %43 = call zeroext i8 @do_colorband(ptr noundef nonnull %16, float noundef %42, ptr noundef nonnull %5) #17
  %44 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  %45 = load float, ptr %44, align 4, !tbaa !67
  %46 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 101
  %47 = load float, ptr %46, align 4, !tbaa !199
  %48 = fmul float %45, %47
  %49 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 97
  %50 = load i8, ptr %49, align 1, !tbaa !200
  %51 = zext i8 %50 to i32
  call void @ramp_blend(i32 noundef %51, ptr noundef nonnull %3, float noundef %48, ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  br label %52

52:                                               ; preds = %41, %18, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !240 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #19
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #17
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #19
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #19
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #10 !PGOFuncName !241 {
  %4 = load float, ptr %1, align 4, !tbaa !67
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !67
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !67
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !67
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !67
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !PGOFuncName !242 {
  %4 = load float, ptr %1, align 4, !tbaa !67
  %5 = load float, ptr %2, align 4, !tbaa !67
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !67
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !67
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !67
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !67
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !67
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !67
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @area_lamp_energy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !243 {
  %4 = alloca [4 x [3 x double]], align 16
  %5 = alloca [4 x [3 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #18
  %6 = getelementptr inbounds double, ptr %4, i64 1
  %7 = load <2 x float>, ptr %1, align 4, !tbaa !67
  %8 = load <2 x float>, ptr %0, align 4, !tbaa !67
  %9 = fsub <2 x float> %7, %8
  %10 = fpext <2 x float> %9 to <2 x double>
  store <2 x double> %10, ptr %4, align 16, !tbaa !91
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !67
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = getelementptr inbounds double, ptr %4, i64 2
  %15 = getelementptr inbounds [4 x [3 x double]], ptr %4, i64 0, i64 1
  %16 = load <2 x float>, ptr %13, align 4, !tbaa !67
  %17 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %18 = insertelement <2 x float> %17, float %12, i64 0
  %19 = fsub <2 x float> %18, %16
  %20 = fpext <2 x float> %19 to <2 x double>
  store <2 x double> %20, ptr %14, align 16, !tbaa !91
  %21 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  %22 = getelementptr inbounds [4 x [3 x double]], ptr %4, i64 0, i64 1, i64 1
  %23 = load <2 x float>, ptr %21, align 4, !tbaa !67
  %24 = insertelement <2 x float> %17, float %12, i64 1
  %25 = fsub <2 x float> %24, %23
  %26 = fpext <2 x float> %25 to <2 x double>
  store <2 x double> %26, ptr %22, align 16, !tbaa !91
  %27 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %28 = getelementptr inbounds [4 x [3 x double]], ptr %4, i64 0, i64 2
  %29 = load <2 x float>, ptr %27, align 4, !tbaa !67
  %30 = fsub <2 x float> %7, %29
  %31 = fpext <2 x float> %30 to <2 x double>
  store <2 x double> %31, ptr %28, align 16, !tbaa !91
  %32 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  %33 = getelementptr inbounds [4 x [3 x double]], ptr %4, i64 0, i64 2, i64 2
  %34 = getelementptr inbounds [4 x [3 x double]], ptr %4, i64 0, i64 3
  %35 = load <2 x float>, ptr %32, align 4, !tbaa !67
  %36 = fsub <2 x float> %18, %35
  %37 = fpext <2 x float> %36 to <2 x double>
  store <2 x double> %37, ptr %33, align 16, !tbaa !91
  %38 = getelementptr inbounds [3 x float], ptr %0, i64 3, i64 1
  %39 = getelementptr inbounds [4 x [3 x double]], ptr %4, i64 0, i64 3, i64 1
  %40 = load <2 x float>, ptr %38, align 4, !tbaa !67
  %41 = fsub <2 x float> %24, %40
  %42 = fpext <2 x float> %41 to <2 x double>
  store <2 x double> %42, ptr %39, align 16, !tbaa !91
  call fastcc void @Normalize_d(ptr noundef nonnull %4) #19
  call fastcc void @Normalize_d(ptr noundef nonnull %15) #19
  call fastcc void @Normalize_d(ptr noundef nonnull %28) #19
  call fastcc void @Normalize_d(ptr noundef nonnull %34) #19
  %43 = load double, ptr %15, align 8, !tbaa !91
  %44 = load double, ptr %4, align 16, !tbaa !91
  %45 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 1
  %46 = load <2 x double>, ptr %6, align 8, !tbaa !91
  %47 = load <2 x double>, ptr %22, align 16, !tbaa !91
  %48 = insertelement <2 x double> %46, double %44, i64 0
  %49 = shufflevector <2 x double> %48, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %50 = fneg <2 x double> %49
  %51 = fmul <2 x double> %47, %50
  %52 = shufflevector <2 x double> %47, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %53 = insertelement <2 x double> %52, double %43, i64 1
  %54 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %46, <2 x double> %53, <2 x double> %51)
  store <2 x double> %54, ptr %5, align 16, !tbaa !91
  %55 = extractelement <2 x double> %46, i64 0
  %56 = extractelement <2 x double> %47, i64 0
  %57 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  %58 = load double, ptr %33, align 16, !tbaa !91
  %59 = extractelement <2 x double> %47, i64 1
  %60 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 1
  %61 = shufflevector <2 x double> %46, <2 x double> %47, <2 x i32> <i32 0, i32 3>
  %62 = fneg <2 x double> %61
  %63 = insertelement <2 x double> %52, double %44, i64 0
  %64 = insertelement <2 x double> %47, double %58, i64 1
  %65 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 1, i64 1
  %66 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 1, i64 2
  %67 = load <2 x double>, ptr %28, align 16, !tbaa !91
  %68 = insertelement <2 x double> %67, double %43, i64 0
  %69 = fmul <2 x double> %68, %62
  %70 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %63, <2 x double> %64, <2 x double> %69)
  store <2 x double> %70, ptr %57, align 16, !tbaa !91
  %71 = insertelement <2 x double> %52, double %43, i64 0
  %72 = fneg <2 x double> %71
  %73 = insertelement <2 x double> poison, double %58, i64 0
  %74 = shufflevector <2 x double> %73, <2 x double> %67, <2 x i32> <i32 0, i32 2>
  %75 = fmul <2 x double> %74, %72
  %76 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %53, <2 x double> %67, <2 x double> %75)
  store <2 x double> %76, ptr %65, align 16, !tbaa !91
  %77 = extractelement <2 x double> %67, i64 1
  %78 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 2
  %79 = load double, ptr %34, align 8, !tbaa !91
  %80 = extractelement <2 x double> %67, i64 0
  %81 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 2, i64 1
  %82 = load <2 x double>, ptr %39, align 16, !tbaa !91
  %83 = shufflevector <2 x double> %67, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %84 = insertelement <2 x double> %83, double %58, i64 0
  %85 = fneg <2 x double> %84
  %86 = fmul <2 x double> %82, %85
  %87 = insertelement <2 x double> %83, double %58, i64 1
  %88 = shufflevector <2 x double> %82, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %89 = insertelement <2 x double> %88, double %79, i64 1
  %90 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %87, <2 x double> %89, <2 x double> %86)
  store <2 x double> %90, ptr %78, align 16, !tbaa !91
  %91 = extractelement <2 x double> %82, i64 0
  %92 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 2, i64 2
  %93 = extractelement <2 x double> %82, i64 1
  %94 = extractelement <2 x double> %46, i64 1
  %95 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 3
  %96 = shufflevector <2 x double> %67, <2 x double> %82, <2 x i32> <i32 1, i32 3>
  %97 = fneg <2 x double> %96
  %98 = shufflevector <2 x double> %46, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %99 = insertelement <2 x double> %98, double %79, i64 0
  %100 = fmul <2 x double> %99, %97
  %101 = shufflevector <2 x double> %67, <2 x double> %82, <2 x i32> <i32 0, i32 2>
  %102 = shufflevector <2 x double> %82, <2 x double> %46, <2 x i32> <i32 0, i32 3>
  %103 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %101, <2 x double> %102, <2 x double> %100)
  store <2 x double> %103, ptr %92, align 16, !tbaa !91
  %104 = fneg double %79
  %105 = fmul double %94, %104
  %106 = tail call double @llvm.fmuladd.f64(double %93, double %44, double %105)
  %107 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 3, i64 1
  store double %106, ptr %107, align 16, !tbaa !91
  %108 = fneg double %91
  %109 = fmul double %44, %108
  %110 = tail call double @llvm.fmuladd.f64(double %79, double %55, double %109)
  %111 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 3, i64 2
  store double %110, ptr %111, align 8, !tbaa !91
  call fastcc void @Normalize_d(ptr noundef nonnull %5) #19
  call fastcc void @Normalize_d(ptr noundef nonnull %60) #19
  call fastcc void @Normalize_d(ptr noundef nonnull %78) #19
  call fastcc void @Normalize_d(ptr noundef nonnull %95) #19
  %112 = fmul <2 x double> %46, %47
  %113 = extractelement <2 x double> %112, i64 0
  %114 = tail call double @llvm.fmuladd.f64(double %44, double %43, double %113)
  %115 = tail call double @llvm.fmuladd.f64(double %94, double %59, double %114)
  %116 = fmul double %56, %77
  %117 = tail call double @llvm.fmuladd.f64(double %43, double %80, double %116)
  %118 = tail call double @llvm.fmuladd.f64(double %59, double %58, double %117)
  %119 = fmul double %77, %91
  %120 = tail call double @llvm.fmuladd.f64(double %80, double %79, double %119)
  %121 = tail call double @llvm.fmuladd.f64(double %58, double %93, double %120)
  %122 = fmul <2 x double> %46, %82
  %123 = extractelement <2 x double> %122, i64 0
  %124 = tail call double @llvm.fmuladd.f64(double %79, double %44, double %123)
  %125 = tail call double @llvm.fmuladd.f64(double %93, double %94, double %124)
  %126 = tail call fastcc double @saacos_d(double noundef %115) #19
  %127 = tail call fastcc double @saacos_d(double noundef %118) #19
  %128 = tail call fastcc double @saacos_d(double noundef %121) #19
  %129 = tail call fastcc double @saacos_d(double noundef %125) #19
  %130 = load float, ptr %2, align 4, !tbaa !67
  %131 = fpext float %130 to double
  %132 = load double, ptr %5, align 16, !tbaa !91
  %133 = getelementptr inbounds float, ptr %2, i64 1
  %134 = load float, ptr %133, align 4, !tbaa !67
  %135 = fpext float %134 to double
  %136 = load double, ptr %45, align 8, !tbaa !91
  %137 = fmul double %136, %135
  %138 = tail call double @llvm.fmuladd.f64(double %131, double %132, double %137)
  %139 = getelementptr inbounds float, ptr %2, i64 2
  %140 = load float, ptr %139, align 4, !tbaa !67
  %141 = fpext float %140 to double
  %142 = load double, ptr %57, align 16, !tbaa !91
  %143 = tail call double @llvm.fmuladd.f64(double %141, double %142, double %138)
  %144 = fmul double %126, %143
  %145 = load double, ptr %60, align 8, !tbaa !91
  %146 = load double, ptr %65, align 16, !tbaa !91
  %147 = fmul double %146, %135
  %148 = tail call double @llvm.fmuladd.f64(double %131, double %145, double %147)
  %149 = load double, ptr %66, align 8, !tbaa !91
  %150 = tail call double @llvm.fmuladd.f64(double %141, double %149, double %148)
  %151 = tail call double @llvm.fmuladd.f64(double %127, double %150, double %144)
  %152 = load double, ptr %78, align 16, !tbaa !91
  %153 = load double, ptr %81, align 8, !tbaa !91
  %154 = fmul double %153, %135
  %155 = tail call double @llvm.fmuladd.f64(double %131, double %152, double %154)
  %156 = load double, ptr %92, align 16, !tbaa !91
  %157 = tail call double @llvm.fmuladd.f64(double %141, double %156, double %155)
  %158 = tail call double @llvm.fmuladd.f64(double %128, double %157, double %151)
  %159 = load double, ptr %95, align 8, !tbaa !91
  %160 = load double, ptr %107, align 16, !tbaa !91
  %161 = fmul double %160, %135
  %162 = tail call double @llvm.fmuladd.f64(double %131, double %159, double %161)
  %163 = load double, ptr %111, align 8, !tbaa !91
  %164 = tail call double @llvm.fmuladd.f64(double %141, double %163, double %162)
  %165 = tail call double @llvm.fmuladd.f64(double %129, double %164, double %158)
  %166 = fcmp ole double %165, 0.000000e+00
  %167 = select i1 %166, double 0.000000e+00, double %165
  %168 = fptrunc double %167 to float
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #18
  ret float %168
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @Normalize_d(ptr nocapture noundef %0) unnamed_addr #10 !PGOFuncName !244 {
  %2 = getelementptr inbounds double, ptr %0, i64 2
  %3 = load double, ptr %2, align 8, !tbaa !91
  %4 = load <2 x double>, ptr %0, align 8, !tbaa !91
  %5 = fmul <2 x double> %4, %4
  %6 = extractelement <2 x double> %5, i64 1
  %7 = extractelement <2 x double> %4, i64 0
  %8 = tail call double @llvm.fmuladd.f64(double %7, double %7, double %6)
  %9 = tail call double @llvm.fmuladd.f64(double %3, double %3, double %8)
  %10 = fcmp ogt double %9, 1.000000e-17
  %11 = tail call double @llvm.sqrt.f64(double %9)
  %12 = insertelement <2 x double> poison, double %11, i64 0
  %13 = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %14 = fdiv <2 x double> %4, %13
  %15 = fdiv double %3, %11
  %16 = insertelement <2 x i1> poison, i1 %10, i64 0
  %17 = shufflevector <2 x i1> %16, <2 x i1> poison, <2 x i32> zeroinitializer
  %18 = select <2 x i1> %17, <2 x double> %14, <2 x double> zeroinitializer
  %19 = select i1 %10, double %15, double 0.000000e+00
  store <2 x double> %18, ptr %0, align 8
  store double %19, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc double @saacos_d(double noundef %0) unnamed_addr #15 !PGOFuncName !245 {
  %2 = fcmp ugt double %0, -1.000000e+00
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fcmp ult double %0, 1.000000e+00
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call double @acos(double noundef %0) #17
  br label %7

7:                                                ; preds = %3, %1, %5
  %8 = phi double [ %6, %5 ], [ 0x400921FB54442D18, %1 ], [ 0.000000e+00, %3 ]
  ret double %8
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @acos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @saacos(float noundef %0) unnamed_addr #15 !PGOFuncName !246 {
  %2 = fcmp ugt float %0, -1.000000e+00
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 1.000000e+00
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call float @acosf(float noundef %0) #17
  br label %7

7:                                                ; preds = %3, %1, %5
  %8 = phi float [ %6, %5 ], [ 0x400921FB60000000, %1 ], [ 0.000000e+00, %3 ]
  ret float %8
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @tanf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @do_colorband(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @ramp_blend(i32 noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @sasqrt(float noundef %0) unnamed_addr #15 !PGOFuncName !247 {
  %2 = fcmp ugt float %0, 0.000000e+00
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call float @sqrtf(float noundef %0) #17
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi float [ %4, %3 ], [ 0.000000e+00, %1 ]
  ret float %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @expf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !PGOFuncName !248 {
  %4 = load float, ptr %1, align 4, !tbaa !67
  %5 = load float, ptr %2, align 4, !tbaa !67
  %6 = fmul float %4, %5
  store float %6, ptr %0, align 4, !tbaa !67
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !67
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !67
  %11 = fmul float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !67
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !67
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !67
  %17 = fmul float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !67
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #16

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind optsize }
attributes #18 = { nounwind }
attributes #19 = { optsize }
attributes #20 = { nounwind optsize willreturn memory(read) }

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
!83 = !{!73, !44, i64 48}
!84 = !{!73, !44, i64 52}
!85 = !{!73, !44, i64 56}
!86 = distinct !{!86, !87}
!87 = !{!"llvm.loop.mustprogress"}
!88 = !{!"shadeoutput.c:spothalo"}
!89 = !{!35, !39, i64 1624}
!90 = !{!73, !44, i64 300}
!91 = !{!55, !55, i64 0}
!92 = !{!35, !40, i64 5290}
!93 = !{!73, !44, i64 24}
!94 = !{!73, !36, i64 232}
!95 = !{!96, !40, i64 2}
!96 = !{!"ShadBuf", !40, i64 0, !40, i64 2, !40, i64 4, !37, i64 8, !37, i64 72, !37, i64 136, !36, i64 200, !36, i64 208, !44, i64 216, !44, i64 220, !44, i64 224, !44, i64 228, !44, i64 232, !37, i64 236, !39, i64 248, !39, i64 252, !41, i64 256, !37, i64 272}
!97 = !{!"shadeoutput.c:dot_v3v3"}
!98 = !{!57, !40, i64 96}
!99 = !{!100, !37, i64 57}
!100 = !{!"VlakRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !37, i64 56, !37, i64 57, !37, i64 58, !39, i64 60}
!101 = !{!57, !44, i64 1256}
!102 = !{!57, !44, i64 1260}
!103 = !{!60, !39, i64 396}
!104 = !{!57, !44, i64 236}
!105 = !{!57, !44, i64 296}
!106 = !{!60, !40, i64 588}
!107 = !{!60, !44, i64 336}
!108 = !{!60, !44, i64 340}
!109 = !{!57, !39, i64 160}
!110 = !{!57, !44, i64 228}
!111 = !{!57, !44, i64 232}
!112 = !{!113, !44, i64 32}
!113 = !{!"ShadeResult", !37, i64 0, !37, i64 16, !44, i64 32, !44, i64 36, !44, i64 40, !37, i64 44, !37, i64 56, !37, i64 68, !37, i64 80, !37, i64 92, !37, i64 108, !37, i64 120, !37, i64 132, !37, i64 144, !37, i64 156, !37, i64 168, !37, i64 180, !37, i64 196}
!114 = !{!60, !40, i64 394}
!115 = !{!57, !36, i64 32}
!116 = !{!117, !36, i64 16}
!117 = !{!"ObjectRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !37, i64 56, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !39, i64 168, !39, i64 172, !39, i64 176, !37, i64 180, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272}
!118 = !{!"shadeoutput.c:copy_v4_v4"}
!119 = !{!"shadeoutput.c:copy_v3_v3"}
!120 = !{!35, !40, i64 5418}
!121 = !{!60, !44, i64 180}
!122 = !{!"shadeoutput.c:zero_v3"}
!123 = !{!35, !44, i64 5404}
!124 = !{!57, !44, i64 276}
!125 = !{!57, !44, i64 300}
!126 = !{!73, !36, i64 504}
!127 = !{!57, !40, i64 1434}
!128 = !{!57, !40, i64 1436}
!129 = !{!130, !39, i64 0}
!130 = !{!"LampShadowSubSample", !39, i64 0, !37, i64 4}
!131 = !{!57, !39, i64 1404}
!132 = !{!60, !44, i64 528}
!133 = !{!57, !39, i64 1408}
!134 = !{!73, !40, i64 132}
!135 = !{!73, !44, i64 136}
!136 = !{!73, !44, i64 140}
!137 = !{!73, !44, i64 116}
!138 = !{!73, !36, i64 144}
!139 = !{!73, !44, i64 88}
!140 = !{!73, !44, i64 92}
!141 = !{!"shadeoutput.c:sub_v3_v3v3"}
!142 = !{!"shadeoutput.c:len_v3"}
!143 = !{!"shadeoutput.c:mul_v3_fl"}
!144 = !{!"shadeoutput.c:max_ff"}
!145 = !{!57, !39, i64 1448}
!146 = !{!60, !40, i64 876}
!147 = !{!60, !44, i64 864}
!148 = !{!57, !44, i64 280}
!149 = !{!57, !39, i64 1452}
!150 = !{!57, !39, i64 1412}
!151 = distinct !{!151, !87}
!152 = !{!35, !44, i64 5264}
!153 = !{!57, !44, i64 288}
!154 = !{!57, !44, i64 264}
!155 = !{!57, !44, i64 272}
!156 = !{!57, !44, i64 268}
!157 = !{!57, !44, i64 260}
!158 = !{!"shadeoutput.c:shade_lamp_loop_only_shadow"}
!159 = !{!60, !40, i64 884}
!160 = !{!73, !44, i64 76}
!161 = distinct !{!161, !87}
!162 = !{!35, !44, i64 5368}
!163 = !{!35, !40, i64 5380}
!164 = !{!"shadeoutput.c:shade_one_light"}
!165 = !{!73, !44, i64 72}
!166 = !{!60, !44, i64 448}
!167 = !{!57, !44, i64 1428}
!168 = !{!169, !44, i64 1268}
!169 = !{!"Object", !53, i64 0, !36, i64 120, !36, i64 128, !40, i64 136, !40, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !170, i64 312, !36, i64 360, !41, i64 368, !41, i64 384, !41, i64 400, !41, i64 416, !39, i64 432, !39, i64 436, !36, i64 440, !36, i64 448, !39, i64 456, !39, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !44, i64 616, !44, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !39, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !37, i64 966, !37, i64 967, !39, i64 968, !39, i64 972, !39, i64 976, !39, i64 980, !39, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !37, i64 1042, !37, i64 1043, !40, i64 1044, !37, i64 1046, !37, i64 1047, !44, i64 1048, !44, i64 1052, !41, i64 1056, !41, i64 1072, !41, i64 1088, !41, i64 1104, !44, i64 1120, !40, i64 1124, !40, i64 1126, !37, i64 1128, !39, i64 1144, !39, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !40, i64 1162, !37, i64 1164, !41, i64 1176, !41, i64 1192, !41, i64 1208, !41, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !40, i64 1266, !44, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !171, i64 1304, !171, i64 1312, !39, i64 1320, !39, i64 1324, !41, i64 1328, !41, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !41, i64 1400, !36, i64 1416}
!170 = !{!"bAnimVizSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!171 = !{!"long", !37, i64 0}
!172 = !{!60, !44, i64 524}
!173 = !{!60, !40, i64 552}
!174 = !{!60, !44, i64 556}
!175 = !{!60, !44, i64 584}
!176 = !{!57, !44, i64 240}
!177 = !{!57, !44, i64 244}
!178 = !{!57, !44, i64 248}
!179 = !{!57, !44, i64 304}
!180 = !{!57, !39, i64 320}
!181 = !{!60, !40, i64 554}
!182 = !{!60, !44, i64 560}
!183 = !{!60, !44, i64 580}
!184 = !{!"shadeoutput.c:wrld_exposure_correct"}
!185 = !{!35, !44, i64 5272}
!186 = !{!35, !44, i64 5276}
!187 = !{!"shadeoutput.c:max_fff"}
!188 = !{!"shadeoutput.c:ambient_occlusion_apply"}
!189 = !{!"shadeoutput.c:indirect_lighting_apply"}
!190 = !{!35, !44, i64 5400}
!191 = !{!"shadeoutput.c:ramp_diffuse_result"}
!192 = !{!60, !36, i64 592}
!193 = !{!60, !37, i64 608}
!194 = !{!60, !44, i64 616}
!195 = !{!60, !37, i64 610}
!196 = !{!"shadeoutput.c:ramp_spec_result"}
!197 = !{!60, !36, i64 600}
!198 = !{!60, !37, i64 609}
!199 = !{!60, !44, i64 620}
!200 = !{!60, !37, i64 611}
!201 = !{!"shadeoutput.c:add_v3_v3"}
!202 = !{!169, !40, i64 136}
!203 = !{!169, !36, i64 296}
!204 = !{!205, !44, i64 140}
!205 = !{!"Lamp", !53, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !39, i64 132, !40, i64 136, !40, i64 138, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !36, i64 200, !40, i64 208, !40, i64 210, !44, i64 212, !44, i64 216, !44, i64 220, !44, i64 224, !44, i64 228, !44, i64 232, !44, i64 236, !40, i64 240, !40, i64 242, !40, i64 244, !40, i64 246, !37, i64 248, !37, i64 249, !40, i64 250, !40, i64 252, !40, i64 254, !40, i64 256, !40, i64 258, !44, i64 260, !44, i64 264, !44, i64 268, !44, i64 272, !40, i64 276, !40, i64 278, !40, i64 280, !40, i64 282, !40, i64 284, !40, i64 286, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !44, i64 308, !44, i64 312, !44, i64 316, !44, i64 320, !44, i64 324, !44, i64 328, !44, i64 332, !44, i64 336, !40, i64 340, !37, i64 342, !36, i64 344, !37, i64 352, !40, i64 496, !40, i64 498, !37, i64 500, !36, i64 504, !36, i64 512}
!206 = !{!205, !44, i64 172}
!207 = !{!205, !44, i64 144}
!208 = !{!205, !44, i64 148}
!209 = !{!71, !36, i64 16}
!210 = distinct !{!210, !87}
!211 = distinct !{!211, !87}
!212 = distinct !{!212, !87}
!213 = distinct !{!213, !87}
!214 = !{!"shadeoutput.c:lamp_get_data_internal"}
!215 = !{!73, !44, i64 64}
!216 = !{!73, !44, i64 68}
!217 = !{!"shadeoutput.c:copy_v3db_v3fl"}
!218 = !{!"shadeoutput.c:len_v3v3"}
!219 = !{!"shadeoutput.c:rgb_to_grayscale"}
!220 = !{!"shadeoutput.c:cross_v3_v3v3"}
!221 = !{!"shadeoutput.c:normalize_v3"}
!222 = !{!"shadeoutput.c:area_lamp_energy_multisample"}
!223 = !{!73, !36, i64 240}
!224 = !{!73, !40, i64 200}
!225 = distinct !{!225, !87}
!226 = !{!73, !44, i64 500}
!227 = !{!73, !44, i64 60}
!228 = !{!"shadeoutput.c:OrenNayar_Diff"}
!229 = !{!"shadeoutput.c:Toon_Diff"}
!230 = !{!"shadeoutput.c:Minnaert_Diff"}
!231 = !{!"shadeoutput.c:Fresnel_Diff"}
!232 = !{!"shadeoutput.c:add_to_diffuse"}
!233 = !{!"shadeoutput.c:spec"}
!234 = !{!"shadeoutput.c:Phong_Spec"}
!235 = !{!"shadeoutput.c:CookTorr_Spec"}
!236 = !{!"shadeoutput.c:Blinn_Spec"}
!237 = !{!"shadeoutput.c:WardIso_Spec"}
!238 = !{!"shadeoutput.c:Toon_Spec"}
!239 = !{!"shadeoutput.c:do_specular_ramp"}
!240 = !{!"shadeoutput.c:normalize_v3_v3"}
!241 = !{!"shadeoutput.c:mul_v3_v3fl"}
!242 = !{!"shadeoutput.c:add_v3_v3v3"}
!243 = !{!"shadeoutput.c:area_lamp_energy"}
!244 = !{!"shadeoutput.c:Normalize_d"}
!245 = !{!"shadeoutput.c:saacos_d"}
!246 = !{!"shadeoutput.c:saacos"}
!247 = !{!"shadeoutput.c:sasqrt"}
!248 = !{!"shadeoutput.c:mul_v3_v3v3"}
